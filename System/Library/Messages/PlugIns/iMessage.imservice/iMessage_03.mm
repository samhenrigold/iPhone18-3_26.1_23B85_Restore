unint64_t sub_97AB0()
{
  result = qword_123EA0;
  if (!qword_123EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_123EA0);
  }

  return result;
}

uint64_t *sub_97AFC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_97B60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_123E58, &unk_CE860);
    v3 = sub_BDCF4();
    v4 = a1 + 32;

    while (1)
    {
      sub_97DF4(v4, v13, &qword_123EC0, &qword_CE450);
      result = sub_97008(v13);
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
      result = sub_94D98(&v15, (v3[7] + 32 * result));
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

uint64_t sub_97C9C(void *a1)
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

uint64_t sub_97D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_97DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_94950(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t *sub_97E5C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_97EC0()
{
  v0 = sub_BD7B4();
  sub_97E5C(v0, qword_1244F8);
  sub_96A28(v0, qword_1244F8);
  sub_BD784();
  return sub_BD7A4();
}

Swift::Int sub_97F60()
{
  v1 = *v0;
  sub_BDDC4();
  sub_BDDD4(v1);
  return sub_BDDE4();
}

Swift::Int sub_97FD4(uint64_t a1)
{
  v2 = *v1;
  sub_BDDC4();
  sub_BDDD4(v2);
  return sub_BDDE4();
}

uint64_t sub_98018@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_A7DA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void MessageServiceSession.setTranscriptBackground(_:andSendToChatIdentifier:chatStyle:transferID:isRefresh:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7)
{
  v32 = a4;
  v33 = a7;
  v34 = a5;
  v31 = a2;
  v11 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v30 - v14;
  v16 = sub_94950(&qword_123ED8, &qword_CEE50);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v19 = [objc_opt_self() sharedFeatureFlags];
  v20 = [v19 isTranscriptBackgroundsEnabled];

  if (v20)
  {
    sub_BD9D4();
    v21 = sub_BD9F4();
    (*(*(v21 - 8) + 56))(v18, 0, 1, v21);
    sub_97DF4(a1, v15, &qword_123ED0, &unk_CE4D0);
    sub_BD9B4();

    v22 = v7;
    v23 = sub_BD9A4();
    v24 = (*(v12 + 80) + 40) & ~*(v12 + 80);
    v25 = (v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    v26[2] = v23;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v22;
    sub_ACF94(v15, v26 + v24, &qword_123ED0, &unk_CE4D0);
    v27 = v26 + v25;
    *v27 = v31;
    *(v27 + 1) = a3;
    v28 = v33;
    v27[16] = v32;
    v27[17] = v28 & 1;
    v29 = (v26 + ((v25 + 25) & 0xFFFFFFFFFFFFFFF8));
    *v29 = v34;
    v29[1] = a6;
    sub_9B0BC(0, 0, v18, &unk_CE4E8, v26);
  }
}

uint64_t sub_98304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v8[2] = sub_BD9B4();
  v8[3] = sub_BD9A4();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_98410;
  if (v17)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  return sub_985AC(a5, a6, a7, v9, v14, v18, v19);
}

uint64_t sub_98410()
{

  v1 = sub_BD994();

  return _swift_task_switch(sub_9854C, v1, v0);
}

uint64_t sub_9854C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_985AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 648) = v7;
  *(v8 + 640) = a7;
  *(v8 + 632) = a6;
  *(v8 + 434) = a5;
  *(v8 + 433) = a4;
  *(v8 + 624) = a3;
  *(v8 + 616) = a2;
  *(v8 + 608) = a1;
  *(v8 + 656) = sub_94950(&qword_123F98, &qword_CE890);
  *(v8 + 664) = swift_task_alloc();
  v9 = type metadata accessor for BackgroundUploadContext(0);
  *(v8 + 672) = v9;
  v10 = *(v9 - 8);
  *(v8 + 680) = v10;
  *(v8 + 688) = *(v10 + 64);
  *(v8 + 696) = swift_task_alloc();
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  *(v8 + 720) = sub_94950(&qword_123FA0, &qword_CE898);
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  v11 = sub_BD544();
  *(v8 + 768) = v11;
  v12 = *(v11 - 8);
  *(v8 + 776) = v12;
  *(v8 + 784) = *(v12 + 64);
  *(v8 + 792) = swift_task_alloc();
  *(v8 + 800) = swift_task_alloc();
  *(v8 + 808) = swift_task_alloc();
  *(v8 + 816) = swift_task_alloc();
  *(v8 + 824) = swift_task_alloc();
  *(v8 + 832) = swift_task_alloc();
  *(v8 + 840) = swift_task_alloc();
  sub_94950(&qword_123ED0, &unk_CE4D0);
  *(v8 + 848) = swift_task_alloc();
  *(v8 + 856) = swift_task_alloc();
  *(v8 + 864) = swift_task_alloc();
  *(v8 + 872) = swift_task_alloc();
  *(v8 + 880) = swift_task_alloc();
  *(v8 + 888) = swift_task_alloc();
  sub_BD9B4();
  *(v8 + 896) = sub_BD9A4();
  v13 = sub_BD994();
  *(v8 + 904) = v13;
  *(v8 + 912) = v14;

  return _swift_task_switch(sub_988DC, v13, v14);
}

uint64_t sub_988DC()
{
  v142 = v0;
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 888);
  v2 = *(v0 + 624);
  v3 = *(v0 + 608);
  v4 = sub_BD7B4();
  *(v0 + 920) = sub_96A28(v4, qword_1244F8);
  sub_97DF4(v3, v1, &qword_123ED0, &unk_CE4D0);

  v5 = sub_BD794();
  v6 = sub_BDA84();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 888);
  if (v7)
  {
    v9 = *(v0 + 880);
    v10 = *(v0 + 776);
    v134 = *(v0 + 768);
    v11 = *(v0 + 624);
    v12 = *(v0 + 616);
    v13 = swift_slowAlloc();
    v141[0] = swift_slowAlloc();
    *v13 = 136315394;
    if (v11)
    {
      v14 = v2;
    }

    else
    {
      v12 = 0x3E6C696E3CLL;
      v14 = 0xE500000000000000;
    }

    v15 = sub_96A60(v12, v14, v141);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    sub_97DF4(v8, v9, &qword_123ED0, &unk_CE4D0);
    v16 = (*(v10 + 48))(v9, 1, v134);
    v17 = *(v0 + 880);
    if (v16 == 1)
    {
      sub_75B0(*(v0 + 880), &qword_123ED0, &unk_CE4D0);
      v18 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    else
    {
      v31 = *(v0 + 776);
      v32 = *(v0 + 768);
      v19 = sub_BD514(1);
      v18 = v33;
      (*(v31 + 8))(v17, v32);
    }

    sub_75B0(*(v0 + 888), &qword_123ED0, &unk_CE4D0);
    v34 = sub_96A60(v19, v18, v141);

    *(v13 + 14) = v34;
    _os_log_impl(&dword_0, v5, v6, "Received request to change background for chat %s to %s.", v13, 0x16u);
    swift_arrayDestroy();

    if (!*(v0 + 624))
    {
      goto LABEL_14;
    }
  }

  else
  {

    sub_75B0(v8, &qword_123ED0, &unk_CE4D0);
    if (!*(v0 + 624))
    {
LABEL_14:

      v35 = sub_BD794();
      v36 = sub_BDA84();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v35, v36, "Bailing early, no identifier provided.", v37, 2u);
      }

      goto LABEL_61;
    }
  }

  v20 = *(v0 + 648);
  v21 = *(v0 + 433);
  v22 = sub_BD884();
  v23 = [v20 chatForChatIdentifier:v22 style:v21 updatingAccount:1];
  *(v0 + 928) = v23;

  *(v0 + 592) = 0;
  v24 = _LastAddressedURIForChat(v23, v20, (v0 + 592));
  v25 = *(v0 + 592);
  *(v0 + 936) = v25;
  if (v24)
  {
    v26 = v24;
    v27 = sub_BD8B4();
    v29 = v28;
    v30 = v25;
  }

  else
  {
    v38 = v25;
    v27 = 0;
    v29 = 0;
  }

  *(v0 + 952) = v29;
  *(v0 + 944) = v27;

  v39 = v23;
  v40 = v23;

  v41 = sub_BD794();
  v42 = sub_BDA84();

  v137 = v27;
  v138 = v39;
  if (os_log_type_enabled(v41, v42))
  {
    v135 = v25;
    v43 = v29;
    v44 = *(v0 + 616);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v141[0] = swift_slowAlloc();
    *v45 = 136315650;
    *(v45 + 4) = sub_96A60(v44, v2, v141);
    *(v45 + 12) = 2080;
    if (v43)
    {
      v47 = v27;
    }

    else
    {
      v47 = 0x3E6C696E3CLL;
    }

    if (v43)
    {
      v48 = v43;
    }

    else
    {
      v48 = 0xE500000000000000;
    }

    v49 = sub_96A60(v47, v48, v141);

    *(v45 + 14) = v49;
    v29 = v43;
    v25 = v135;
    *(v45 + 22) = 2112;
    *(v45 + 24) = v40;
    *v46 = v138;
    v50 = v40;
    _os_log_impl(&dword_0, v41, v42, "Found chat for identifier %s, callerURI: %s. Chat: %@", v45, 0x20u);
    sub_75B0(v46, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();
  }

  if (!v25 || !v40 || !v29)
  {

    v59 = v40;
    v60 = sub_BD794();
    v61 = sub_BDA84();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v141[0] = v64;
      *v62 = 138412802;
      *(v62 + 4) = v59;
      *(v62 + 12) = 2112;
      *(v62 + 14) = v25;
      *v63 = v138;
      v63[1] = v25;
      *(v62 + 22) = 2080;
      if (v29)
      {
        v65 = v137;
      }

      else
      {
        v65 = 0;
      }

      if (!v29)
      {
        v29 = 0xE000000000000000;
      }

      v66 = v59;
      v67 = v25;
      v68 = sub_96A60(v65, v29, v141);

      *(v62 + 24) = v68;
      _os_log_impl(&dword_0, v60, v61, "Failed to set transcript background for chat %@. Missing either chat, idsAccount: %@, or callerURI: %s", v62, 0x20u);
      sub_94950(&qword_123E98, &unk_CEE80);
      swift_arrayDestroy();

      sub_97C9C(v64);
    }

    else
    {
    }

    goto LABEL_61;
  }

  v139 = v29;
  v51 = *(v0 + 434);
  v52 = v40;
  v53 = v25;
  if (v51)
  {
    goto LABEL_52;
  }

  v54 = [v52 transcriptBackgroundPath];
  v136 = v53;
  if (v54)
  {
    v55 = v54;
    v56 = sub_BD8B4();
    v58 = v57;
  }

  else
  {
    v56 = 0;
    v58 = 0;
  }

  v133 = v52;
  v69 = *(v0 + 872);
  v70 = *(v0 + 776);
  v71 = *(v0 + 768);
  sub_97DF4(*(v0 + 608), v69, &qword_123ED0, &unk_CE4D0);
  v72 = *(v70 + 48);
  v73 = v72(v69, 1, v71);
  v74 = *(v0 + 872);
  if (v73 == 1)
  {
    sub_75B0(*(v0 + 872), &qword_123ED0, &unk_CE4D0);
    v53 = v136;
    if (!v58)
    {
      goto LABEL_68;
    }

    goto LABEL_51;
  }

  v132 = v56;
  v75 = v72;
  v76 = *(v0 + 776);
  v77 = *(v0 + 768);
  v78 = sub_BD514(1);
  v80 = v79;
  (*(v76 + 8))(v74, v77);
  if (!v58)
  {
    v53 = v136;
    v72 = v75;
    if (!v80)
    {
      goto LABEL_68;
    }

LABEL_51:

    v52 = v133;
    goto LABEL_52;
  }

  v53 = v136;
  if (!v80)
  {
    goto LABEL_51;
  }

  v72 = v75;
  if (v132 == v78 && v58 == v80)
  {

LABEL_68:
    v52 = v133;
    goto LABEL_69;
  }

  v131 = sub_BDD24();

  v52 = v133;
  if ((v131 & 1) == 0)
  {
LABEL_52:
    v81 = [v52 transcriptBackgroundVersion];
    v82 = [v81 unsignedLongLongValue];

    if (!v51)
    {
      v83 = [objc_opt_self() __im_dateWithCurrentServerTime];
      if (!v83)
      {
        goto LABEL_79;
      }

      v84 = v83;
      v82 = [v83 __im_nanosecondTimeInterval];

      if (v82 < 0)
      {
        __break(1u);
      }
    }

    *(v0 + 960) = v82;
    v85 = *(v0 + 848);
    v86 = *(v0 + 776);
    v87 = *(v0 + 768);
    sub_97DF4(*(v0 + 608), v85, &qword_123ED0, &unk_CE4D0);
    v88 = *(v86 + 48);
    *(v0 + 968) = v88;
    *(v0 + 976) = (v86 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v88(v85, 1, v87) == 1)
    {
      v89 = *(v0 + 848);

      sub_75B0(v89, &qword_123ED0, &unk_CE4D0);
      v90 = sub_BD794();
      v91 = sub_BDA84();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_0, v90, v91, "No background URL specified, removing the background from the chat.", v92, 2u);
      }

      v93 = *(v0 + 434);

      sub_94950(&qword_123EE8, &qword_CE508);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_CE480;
      *(inited + 32) = sub_BD8B4();
      *(inited + 72) = &type metadata for UInt64;
      *(inited + 40) = v95;
      *(inited + 48) = v82;
      *(inited + 80) = sub_BD8B4();
      *(inited + 88) = v96;
      *(inited + 120) = &type metadata for Int;
      *(inited + 96) = 1;
      *(inited + 128) = sub_BD8B4();
      *(inited + 136) = v97;
      *(inited + 168) = &type metadata for Bool;
      *(inited + 144) = 1;
      v98 = sub_97980(inited);
      swift_setDeallocating();
      sub_94950(&qword_123EC8, &unk_CE510);
      swift_arrayDestroy();
      sub_9BBD0(v98, v52, v137, v139);

      if (v93 != 1)
      {
        sub_9BFE0(v52, 0, 0, v82);
      }

      goto LABEL_61;
    }

    v101 = *(v0 + 848);
    v102 = *(v0 + 840);
    v103 = *(v0 + 776);
    v104 = *(v0 + 768);
    v105 = *(v103 + 32);
    *(v0 + 984) = v105;
    *(v0 + 992) = (v103 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v105(v102, v101, v104);
    sub_BD4E4(v106);
    v108 = v107;
    v109 = [v107 im_associatedWatchBackgroundURL];

    sub_BD504();
    v83 = [objc_opt_self() sharedInstance];
    *(v0 + 1000) = v83;
    if (v83)
    {
      v111 = v83;
      v112 = *(v0 + 752);
      sub_BD4E4(v110);
      v114 = v113;
      *(v0 + 1008) = v113;
      *(v0 + 16) = v0;
      *(v0 + 56) = v112;
      *(v0 + 24) = sub_999CC;
      v115 = swift_continuation_init();
      *(v0 + 496) = sub_94950(&qword_123FA8, &qword_CE8A0);
      *(v0 + 440) = _NSConcreteStackBlock;
      *(v0 + 448) = 1107296256;
      *(v0 + 456) = sub_9CC80;
      *(v0 + 464) = &unk_1151B8;
      *(v0 + 472) = v115;
      [v111 generateReadOnlyPosterConfig:v114 completionBlock:v0 + 440];
      v83 = (v0 + 16);

      return _swift_continuation_await(v83);
    }

    __break(1u);
LABEL_79:
    __break(1u);
    return _swift_continuation_await(v83);
  }

LABEL_69:

  sub_97DF4(*(v0 + 608), *(v0 + 864), &qword_123ED0, &unk_CE4D0);
  v116 = sub_BD794();
  v117 = sub_BDA84();
  v118 = os_log_type_enabled(v116, v117);
  v119 = *(v0 + 864);
  if (v118)
  {
    v120 = *(v0 + 856);
    v121 = *(v0 + 768);
    v122 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v141[0] = v140;
    *v122 = 136315138;
    sub_97DF4(v119, v120, &qword_123ED0, &unk_CE4D0);
    v123 = v72(v120, 1, v121);
    v124 = *(v0 + 856);
    if (v123 == 1)
    {
      v125 = 0x3E6C696E3CLL;
      sub_75B0(*(v0 + 856), &qword_123ED0, &unk_CE4D0);
      v126 = 0xE500000000000000;
    }

    else
    {
      v127 = *(v0 + 776);
      v128 = *(v0 + 768);
      v125 = sub_BD514(1);
      v126 = v129;
      (*(v127 + 8))(v124, v128);
    }

    sub_75B0(*(v0 + 864), &qword_123ED0, &unk_CE4D0);
    v130 = sub_96A60(v125, v126, v141);

    *(v122 + 4) = v130;
    _os_log_impl(&dword_0, v116, v117, "New background path is the same as the existing one. Bailing early. Path: %s", v122, 0xCu);
    sub_97C9C(v140);
  }

  else
  {

    sub_75B0(v119, &qword_123ED0, &unk_CE4D0);
  }

LABEL_61:

  v99 = *(v0 + 8);

  return v99();
}

uint64_t sub_999CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1016) = v2;
  if (v2)
  {

    v3 = *(v1 + 912);
    v4 = *(v1 + 904);
    v5 = sub_9AC20;
  }

  else
  {
    v3 = *(v1 + 912);
    v4 = *(v1 + 904);
    v5 = sub_99B20;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_99B20()
{
  v163 = v0;
  v1 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 760);
  v4 = *(v0 + 752);
  v5 = *(v0 + 744);
  v6 = *(v0 + 720);

  sub_ACF94(v4, v5, &qword_123FA0, &qword_CE898);
  v7 = *(v6 + 48);
  *v3 = *v5;
  sub_ACF94(&v5[v7], &v3[v7], &qword_123ED0, &unk_CE4D0);

  sub_97DF4(v3, v5, &qword_123FA0, &qword_CE898);
  LODWORD(v3) = *v5;
  sub_75B0(&v5[*(v6 + 48)], &qword_123ED0, &unk_CE4D0);
  if (v3 == 1)
  {
    v8 = *(v0 + 968);
    v9 = *(v0 + 768);
    v10 = *(v0 + 736);
    sub_97DF4(*(v0 + 760), v10, &qword_123FA0, &qword_CE898);
    v11 = *(v6 + 48);
    if (v8(v10 + v11, 1, v9) == 1)
    {

      sub_75B0(v10 + v11, &qword_123ED0, &unk_CE4D0);
      goto LABEL_5;
    }

    v130 = *(v0 + 984);
    v150 = *(v0 + 960);
    v138 = *(v0 + 944);
    v141 = *(v0 + 952);
    v143 = *(v0 + 936);
    v128 = *(v0 + 928);
    v132 = *(v0 + 832);
    v30 = *(v0 + 824);
    v31 = *(v0 + 776);
    v32 = *(v0 + 768);
    v126 = *(v0 + 760);
    v33 = *(v0 + 712);
    v34 = *(v0 + 672);
    v154 = *(v0 + 648);
    v158 = *(v0 + 704);
    loga = *(v0 + 632);
    aBlocka = *(v0 + 640);
    v35 = *(v0 + 434);

    LOBYTE(v35) = v35 == 2;
    sub_75B0(v126, &qword_123FA0, &qword_CE898);
    v130(v30, v10 + v11, v32);
    v36 = *(v31 + 16);
    v36(v33, v30, v32);
    v146 = v34[5];
    v131 = v36;
    v36(v33 + v146, v132, v32);
    v37 = v33;
    *(v33 + v34[6]) = v128;
    v38 = (v33 + v34[7]);
    *v38 = v138;
    v38[1] = v141;
    *(v33 + v34[8]) = v143;
    *(v33 + v34[9]) = v35;
    v39 = (v33 + v34[10]);
    *v39 = loga;
    v39[1] = aBlocka;
    *(v33 + v34[11]) = v150;
    v40 = swift_allocObject();
    *(v40 + 16) = loga;
    *(v40 + 24) = aBlocka;
    log = v35;
    *(v40 + 32) = v35;
    *(v40 + 40) = v154;
    *(v40 + 48) = v128;
    *(v40 + 56) = v138;
    *(v40 + 64) = v141;
    v144 = v40;
    *(v40 + 72) = v150;
    v41 = v128;
    sub_AD408(v33, v158);
    swift_bridgeObjectRetain_n();
    v42 = v41;
    swift_bridgeObjectRetain_n();
    v43 = v154;
    v44 = v42;
    v45 = v43;
    v46 = sub_BD794();
    v47 = sub_BDA84();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 704);
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v162[0] = v51;
      *v50 = 136315138;
      v52 = (v49 + v34[10]);
      v53 = *v52;
      v54 = v52[1];

      sub_AD46C(v49);
      v55 = sub_96A60(v53, v54, v162);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_0, v46, v47, "Preparing to upload group background with transferID: %s", v50, 0xCu);
      sub_97C9C(v51);
    }

    else
    {

      sub_AD46C(v49);
    }

    sub_B4F04(*(v0 + 712), v37 + v146, *(v0 + 664));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v56 = **(v0 + 664);
      sub_AD4C8(v56);
      v57 = sub_BD794();
      v58 = sub_BDA84();
      sub_AD4D8(v56);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        *v59 = 138412290;
        sub_AD4E8();
        swift_allocError();
        *v61 = v56;
        sub_AD4C8(v56);
        v62 = _swift_stdlib_bridgeErrorToNSError();
        *(v59 + 4) = v62;
        *v60 = v62;
        _os_log_impl(&dword_0, v57, v58, "Refusing to upload background with error: %@, bailing early.", v59, 0xCu);
        sub_75B0(v60, &qword_123E98, &unk_CEE80);
      }

      v63 = *(v0 + 928);

      sub_AD4E8();
      swift_allocError();
      *v64 = v56;
      swift_errorRetain();
      v65 = v63;
      sub_AD4C8(v56);
      swift_errorRetain();
      v66 = sub_BD794();
      v67 = sub_BDA64();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 928);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412546;
        *(v69 + 4) = v68;
        *v70 = v68;
        *(v69 + 12) = 2112;
        v71 = v68;
        swift_errorRetain();
        v72 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 14) = v72;
        v70[1] = v72;
        _os_log_impl(&dword_0, v66, v67, "Failed to upload background for chat %@. Error: %@", v69, 0x16u);
        sub_94950(&qword_123E98, &unk_CEE80);
        swift_arrayDestroy();
      }

      else
      {
      }

      v89 = *(v0 + 928);
      v90 = *(v0 + 648);
      v91 = *(v0 + 434);

      sub_AD4D8(v56);

      if (v91 == 1)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      (*(v0 + 984))(*(v0 + 816), *(v0 + 664), *(v0 + 768));
      v73 = objc_opt_self();

      v161 = [v73 sharedInstance];
      if (!v161)
      {
        v115 = *(v0 + 928);
        v116 = *(v0 + 648);

        __break(1u);
        return result;
      }

      v124 = *(v0 + 984);
      v155 = *(v0 + 928);
      v74 = *(v0 + 816);
      v75 = *(v0 + 808);
      v76 = *(v0 + 776);
      v139 = v76;
      v77 = *(v0 + 768);
      v78 = *(v0 + 696);
      v117 = v78;
      v118 = *(v0 + 712);
      v121 = *(v0 + 784);
      v122 = *(v0 + 688);
      v123 = *(v0 + 648);
      v119 = *(v0 + 640);
      v120 = *(v0 + 680);
      v79 = *(v0 + 632);
      v151 = *(v0 + 434);
      v147 = v74;
      sub_BD514(1);
      v142 = sub_BD884();

      v129 = IDSServiceNameiMessage;
      v125 = v77;
      v127 = sub_BD884();
      v131(v75, v74, v77);
      sub_AD408(v118, v78);
      v80 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v81 = (v121 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = (v81 + 23) & 0xFFFFFFFFFFFFFFF8;
      v83 = (*(v120 + 80) + v82 + 8) & ~*(v120 + 80);
      v84 = swift_allocObject();
      v124(v84 + v80, v75, v77);
      v85 = (v84 + v81);
      *v85 = v79;
      v85[1] = v119;
      *(v84 + v82) = v123;
      sub_AD5A4(v117, v84 + v83);
      v86 = (v84 + ((v122 + v83 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v86 = sub_ACFFC;
      v86[1] = v144;
      *(v0 + 536) = sub_AD608;
      *(v0 + 544) = v84;
      *(v0 + 504) = _NSConcreteStackBlock;
      *(v0 + 512) = 1107296256;
      *(v0 + 520) = sub_9EA54;
      *(v0 + 528) = &unk_115230;
      v87 = _Block_copy((v0 + 504));
      v88 = v123;

      [v161 sendFilePath:v142 topic:v129 transferID:v127 encryptFile:1 progressBlock:0 completionBlock:v87];
      _Block_release(v87);

      (*(v139 + 8))(v147, v125);

      if (v151 == 1)
      {
        goto LABEL_21;
      }
    }

    v92 = sub_BD554();
    v94 = v93;
    v95 = sub_BD554();
    v152 = *(v0 + 928);
    v156 = *(v0 + 960);
    v96 = *(v0 + 640);
    v97 = *(v0 + 632);
    v159 = *(v0 + 434);
    v98 = v95;
    v100 = v99;
    v101 = sub_BD514(0);
    v148 = v102;
    sub_94950(&qword_123FB8, &qword_CE8A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_CE490;
    *(v0 + 576) = sub_BD8B4();
    *(v0 + 584) = v104;
    sub_BDBC4();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v97;
    *(inited + 80) = v96;

    v105 = sub_97B60(inited);
    swift_setDeallocating();
    sub_75B0(inited + 32, &qword_123EC0, &qword_CE450);
    *(v0 + 360) = v152;
    *(v0 + 368) = v101;
    *(v0 + 376) = v148;
    *(v0 + 384) = v97;
    *(v0 + 392) = v96;
    *(v0 + 400) = v156;
    *(v0 + 416) = 0;
    *(v0 + 424) = 0;
    *(v0 + 408) = v105;
    *(v0 + 432) = log;

    sub_AD53C(v92, v94);
    sub_AD53C(v98, v100);
    sub_AD590(v92, v94);
    sub_AD590(v98, v100);
    sub_9D51C((v0 + 360), v159, v92, v94, v98, v100);
    sub_ABCAC(v92, v94);
    sub_ABCAC(v98, v100);
    sub_AC360(v0 + 360);
    sub_ABCAC(v92, v94);
    sub_ABCAC(v98, v100);
    sub_AB36C(v98, v100);
    sub_AB36C(v92, v94);
LABEL_22:
    v106 = *(v0 + 936);
    v107 = *(v0 + 840);
    v108 = *(v0 + 832);
    v109 = *(v0 + 824);
    v110 = *(v0 + 776);
    v111 = *(v0 + 768);
    sub_AD46C(*(v0 + 712));
    v112 = *(v110 + 8);
    v112(v109, v111);
    v112(v108, v111);
    v112(v107, v111);

    goto LABEL_23;
  }

LABEL_5:
  v12 = *(v0 + 760);
  v13 = *(v0 + 728);
  (*(*(v0 + 776) + 16))(*(v0 + 800), *(v0 + 840), *(v0 + 768));
  sub_97DF4(v12, v13, &qword_123FA0, &qword_CE898);
  v14 = sub_BD794();
  v15 = sub_BDA64();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 936);
  v18 = *(v0 + 840);
  v160 = *(v0 + 832);
  v19 = *(v0 + 800);
  v20 = *(v0 + 776);
  v21 = *(v0 + 768);
  v153 = *(v0 + 928);
  v157 = *(v0 + 760);
  if (v16)
  {
    v22 = *(v0 + 744);
    v137 = *(v0 + 728);
    v149 = *(v0 + 840);
    v23 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    v162[0] = v145;
    *v23 = 136315394;
    sub_AC3A8(&qword_123F88, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v140 = v17;
    v24 = sub_BDD14();
    aBlock = v15;
    v26 = v25;
    v27 = *(v20 + 8);
    v27(v19, v21);
    v28 = sub_96A60(v24, v26, v162);

    *(v23 + 4) = v28;
    *(v23 + 12) = 1024;
    sub_97DF4(v137, v22, &qword_123FA0, &qword_CE898);
    LODWORD(v26) = *v22;
    sub_75B0(&v22[*(v6 + 48)], &qword_123ED0, &unk_CE4D0);
    sub_75B0(v137, &qword_123FA0, &qword_CE898);
    *(v23 + 14) = v26;
    _os_log_impl(&dword_0, v14, aBlock, "Could not generate a readOnly poster for file %s. Response success: %{BOOL}d Bailing", v23, 0x12u);
    sub_97C9C(v145);

    sub_75B0(v157, &qword_123FA0, &qword_CE898);
    v27(v160, v21);
    v27(v149, v21);
  }

  else
  {
    sub_75B0(*(v0 + 728), &qword_123FA0, &qword_CE898);

    v29 = *(v20 + 8);
    v29(v19, v21);
    sub_75B0(v157, &qword_123FA0, &qword_CE898);
    v29(v160, v21);
    v29(v18, v21);
  }

LABEL_23:

  v113 = *(v0 + 8);

  return v113();
}

uint64_t sub_9AC20()
{
  v36 = v0;
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[105];
  v4 = v0[99];
  v5 = v0[97];
  v6 = v0[96];

  swift_willThrow();

  (*(v5 + 16))(v4, v3, v6);
  swift_errorRetain();
  v7 = sub_BD794();
  v8 = sub_BDA64();

  if (os_log_type_enabled(v7, v8))
  {
    v31 = v0[117];
    v32 = v0[116];
    v33 = v0[104];
    v34 = v0[105];
    v9 = v0[99];
    v10 = v0[97];
    v11 = v0[96];
    v12 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v12 = 136315394;
    sub_AC3A8(&qword_123F88, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v13 = sub_BDD14();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_96A60(v13, v15, v35);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    swift_getErrorValue();
    v18 = sub_BDD74();
    v20 = sub_96A60(v18, v19, v35);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_0, v7, v8, "Could not generate a readOnly poster for file %s. Got error: %s Bailing", v12, 0x16u);
    swift_arrayDestroy();

    v16(v33, v11);
    v16(v34, v11);
  }

  else
  {
    v21 = v0[117];
    v22 = v0[116];
    v23 = v0[105];
    v24 = v0[104];
    v25 = v0[99];
    v26 = v0[97];
    v27 = v0[96];

    v28 = *(v26 + 8);
    v28(v25, v27);
    v28(v24, v27);
    v28(v23, v27);
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_9B0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_94950(&qword_123ED8, &qword_CEE50);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_97DF4(a3, v25 - v10, &qword_123ED8, &qword_CEE50);
  v12 = sub_BD9F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_75B0(v11, &qword_123ED8, &qword_CEE50);
  }

  else
  {
    sub_BD9E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_BD994();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_BD8D4() + 32;
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

      sub_75B0(a3, &qword_123ED8, &qword_CEE50);

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

  sub_75B0(a3, &qword_123ED8, &qword_CEE50);
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

void MessageServiceSession.retryTranscriptBackgroundUpload(_:chatIdentifier:style:transferID:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v29 = a4;
  v28 = a2;
  v10 = sub_94950(&qword_123ED0, &unk_CE4D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = &v27 - v13;
  v15 = sub_94950(&qword_123ED8, &qword_CEE50);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = [objc_opt_self() sharedFeatureFlags];
  v19 = [v18 isTranscriptBackgroundsEnabled];

  if (v19)
  {
    sub_BD9D4();
    v20 = sub_BD9F4();
    (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
    sub_97DF4(a1, v14, &qword_123ED0, &unk_CE4D0);
    sub_BD9B4();

    v21 = v6;
    v22 = sub_BD9A4();
    v23 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = &protocol witness table for MainActor;
    v24[4] = v21;
    sub_ACF94(v14, v24 + v23, &qword_123ED0, &unk_CE4D0);
    v25 = v24 + ((v23 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v25 = v28;
    *(v25 + 1) = a3;
    v25[16] = v29;
    v26 = (v24 + ((v23 + v12 + 31) & 0xFFFFFFFFFFFFFFF8));
    *v26 = v30;
    v26[1] = a6;
    sub_9B0BC(0, 0, v17, &unk_CE4F8, v24);
  }
}

uint64_t sub_9B804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8[2] = sub_BD9B4();
  v8[3] = sub_BD9A4();
  v13 = swift_task_alloc();
  v8[4] = v13;
  *v13 = v8;
  v13[1] = sub_9B8FC;

  return sub_985AC(a5, a6, a7, a8, 1, v16, v17);
}

uint64_t sub_9B8FC()
{

  v1 = sub_BD994();

  return _swift_task_switch(sub_AE050, v1, v0);
}

void sub_9BBD0(unint64_t a1, uint32_t *a2, uint64_t a3, unint64_t a4)
{
  p_align = a2;
  v8 = [(uint32_t *)a2 participants];
  if (!v8)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_7610(0, &qword_123F68, IMDHandle_ptr);
  v10 = sub_BD954();

  v33 = _swiftEmptyArrayStorage;
  if (v10 >> 62)
  {
LABEL_17:
    v11 = sub_BDCC4();
    if (v11)
    {
LABEL_4:
      v28 = a1;
      v29 = p_align;
      v30 = a3;
      v31 = a4;
      a1 = 0;
      a4 = v10 & 0xFFFFFFFFFFFFFF8;
      p_align = &stru_11EFE8.align;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v12 = sub_BDC34();
        }

        else
        {
          if (a1 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v12 = *(v10 + 8 * a1 + 32);
        }

        v13 = v12;
        a3 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        if (![v12 ID])
        {
          break;
        }

        sub_BD934();
        if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v33 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_BD974();
        }

        sub_BD984();
        ++a1;
        if (a3 == v11)
        {
          a3 = v30;
          a4 = v31;
          a1 = v28;
          p_align = v29;
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {
    v11 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }
  }

LABEL_18:

  sub_7610(0, &qword_123F48, NSString_ptr);
  isa = sub_BD944().super.isa;
  v15 = [(objc_class *)isa _URIsFromIDs];

  if (v15 && (v16 = sub_BD954(), v15, v17 = sub_9EC40(v16), , v17))
  {

    v19 = sub_A82A4(v17, v18);

    sub_9ED4C(a1, v19, p_align, a3, a4, 1);
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v20 = sub_BD7B4();
    sub_96A28(v20, qword_1244F8);

    oslog = sub_BD794();
    v21 = sub_BDA84();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33 = v23;
      *v22 = 136315138;
      v24 = sub_BD964();
      v26 = v25;

      v27 = sub_96A60(v24, v26, &v33);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_0, oslog, v21, "Could not get participantURIs for %s", v22, 0xCu);
      sub_97C9C(v23);
    }

    else
    {
    }
  }
}

void sub_9BFE0(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v102 = a4;
  v103 = a3;
  v101 = a2;
  v7 = sub_BD544();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v11 = sub_BD7B4();
  v12 = sub_96A28(v11, qword_1244F8);
  v13 = a1;
  v14 = sub_BD794();
  v15 = sub_BDA84();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_0, v14, v15, "Asked to remove background for %@.", v16, 0xCu);
    sub_75B0(v17, &qword_123E98, &unk_CEE80);
  }

  v19 = [v13 transcriptBackgroundPath];
  if (!v19)
  {
    v104 = sub_BD794();
    v47 = sub_BDA84();
    if (os_log_type_enabled(v104, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_0, v104, v47, "No background to remove, bailing.", v48, 2u);
    }

    v49 = v104;

    return;
  }

  v20 = v19;
  v104 = v12;
  v100 = v5;
  v21 = objc_opt_self();
  v22 = v20;
  v23 = [v21 defaultManager];
  v105 = 0;
  v24 = [v23 removeItemAtPath:v22 error:&v105];

  v25 = v105;
  if (!v24)
  {
    v50 = v25;

    goto LABEL_19;
  }

  v26 = [v21 defaultManager];
  v27 = [objc_allocWithZone(NSURL) initFileURLWithPath:v22];

  v28 = [v27 im_associatedWatchBackgroundURL];
  sub_BD504();

  sub_BD4E4(v29);
  v31 = v30;
  (*(v8 + 8))(v10, v7);
  v105 = 0;
  LODWORD(v27) = [v26 removeItemAtURL:v31 error:&v105];

  v32 = v105;
  if (!v27)
  {
    v50 = v105;
LABEL_19:
    sub_BD4A4();

    swift_willThrow();
    v51 = v13;
    swift_errorRetain();
    v52 = sub_BD794();
    v53 = sub_BDA64();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412546;
      *(v54 + 4) = v51;
      *v55 = v51;
      *(v54 + 12) = 2112;
      v56 = v51;
      swift_errorRetain();
      v57 = _swift_stdlib_bridgeErrorToNSError();
      *(v54 + 14) = v57;
      v55[1] = v57;
      _os_log_impl(&dword_0, v52, v53, "Failed to remove background for %@: %@", v54, 0x16u);
      sub_94950(&qword_123E98, &unk_CEE80);
      swift_arrayDestroy();
    }

    else
    {
    }

    return;
  }

  sub_94950(&qword_123EE8, &qword_CE508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE490;
  *(inited + 32) = sub_BD8B4();
  *(inited + 40) = v34;
  v35 = objc_allocWithZone(NSNumber);
  v36 = v32;
  v37 = [v35 initWithUnsignedLongLong:v102];
  *(inited + 72) = sub_7610(0, &qword_123EA0, NSNumber_ptr);
  *(inited + 48) = v37;
  sub_97980(inited);
  swift_setDeallocating();
  sub_75B0(inited + 32, &qword_123EC8, &unk_CE510);
  isa = sub_BD834().super.isa;

  [v13 updateTranscriptBackgroundProperties:isa];

  v39 = &selRef_setScheduleType_;
  v40 = [v13 style];
  v41 = [v13 chatIdentifier];
  if (v41)
  {
    v42 = v41;
    v43 = v100;
    v44 = [v100 broadcasterForChatListeners];
    v45 = [v43 account];
    v46 = [v45 accountID];

    if (!v46)
    {
      sub_BD8B4();
      v46 = sub_BD884();
    }

    [v44 transcriptBackgroundUpdatedForChatIdentifier:v42 style:v40 account:v46 userInfo:0];
    swift_unknownObjectRelease();

    v39 = &selRef_setScheduleType_;
  }

  else
  {
    v58 = v13;
    v59 = sub_BD794();
    v60 = sub_BDA64();
    v61 = os_log_type_enabled(v59, v60);
    v43 = v100;
    if (v61)
    {
      LODWORD(v102) = v60;
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v105 = v99;
      *v62 = 16777986;
      *(v62 + 4) = [v58 style];

      *(v62 + 5) = 2080;
      v64 = [v58 chatIdentifier];
      if (v64)
      {
        v65 = v64;
        v66 = sub_BD8B4();
        v68 = v67;
      }

      else
      {
        v66 = 0x3E6C696E3CLL;
        v68 = 0xE500000000000000;
      }

      v69 = sub_96A60(v66, v68, &v105);

      *(v62 + 7) = v69;
      *(v62 + 15) = 2112;
      *(v62 + 17) = v58;
      *v63 = v58;
      v70 = v58;
      _os_log_impl(&dword_0, v59, v102, "No valid IMChatStyle or chatIdentifier found on chat when removing background. Style: %hhu. Chat identifier: %s, chat: %@", v62, 0x19u);
      sub_75B0(v63, &qword_123E98, &unk_CEE80);

      sub_97C9C(v99);

      v39 = &selRef_setScheduleType_;
    }

    else
    {
    }
  }

  v71 = [objc_opt_self() contextWithAssetChangeType:1 isHidden:0 hasSensitiveContent:0];
  if (v103)
  {
    v72 = sub_BD884();
  }

  else
  {
    v72 = 0;
  }

  v73 = [v43 generateAndStoreAssetChangeStatusItemForChat:v13 sender:v72 fileTransferGuid:0 assetStatusChange:v71];

  if (v73)
  {
    v74 = [v13 chatIdentifier];
    if (v74)
    {
      v75 = v74;
      v76 = v43;
      v77 = [v13 v39[113]];
      v78 = [v76 broadcasterForChatListeners];
      v79 = [v76 account];
      v80 = [v79 accountID];

      if (!v80)
      {
        sub_BD8B4();
        v80 = sub_BD884();
      }

      v81 = [v13 groupID];
      if (v81)
      {
        v82 = v81;
        sub_BD8B4();
      }

      v92 = sub_BD884();

      v93 = [v13 personCentricID];
      if (v93)
      {
        v94 = v93;
        sub_BD8B4();
      }

      v95 = sub_BD884();

      [v78 account:v80 chat:v75 style:v77 chatProperties:0 groupID:v92 chatPersonCentricID:v95 messageReceived:v73];
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = v13;
      v84 = sub_BD794();
      v85 = sub_BDA64();
      if (!os_log_type_enabled(v84, v85))
      {

        return;
      }

      v86 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = v104;
      *v86 = 16777986;
      *(v86 + 4) = [v83 v39[113]];

      *(v86 + 5) = 2080;
      v87 = [v83 chatIdentifier];
      if (v87)
      {
        v88 = v87;
        v89 = sub_BD8B4();
        v91 = v90;
      }

      else
      {
        v89 = 0x3E6C696E3CLL;
        v91 = 0xE500000000000000;
      }

      v96 = sub_96A60(v89, v91, &v105);

      *(v86 + 7) = v96;
      *(v86 + 15) = 2112;
      *(v86 + 17) = v83;
      v97 = v103;
      *v103 = v13;
      v98 = v83;
      _os_log_impl(&dword_0, v84, v85, "No valid chatIdentifier or chatStyle found on chat when removing background. ChatStyle: %hhu, Chat identifier: %s, chat: %@", v86, 0x19u);
      sub_75B0(v97, &qword_123E98, &unk_CEE80);

      sub_97C9C(v104);
    }
  }
}

uint64_t sub_9CC80(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v8 = sub_94950(&qword_123ED0, &unk_CE4D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_94950(&qword_123FA0, &qword_CE898);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v14 = *sub_ADC6C((a1 + 32), *(a1 + 56));
  if (a4)
  {
    sub_94950(&qword_123E68, &qword_CE400);
    v15 = swift_allocError();
    *v16 = a4;
    v17 = a4;

    return _swift_continuation_throwingResumeWithError(v14, v15);
  }

  else
  {
    *v13 = a2;
    if (a3)
    {
      sub_BD504();
      v18 = sub_BD544();
      (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    }

    else
    {
      v19 = sub_BD544();
      (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
    }

    sub_ACF94(v10, &v13[*(v11 + 48)], &qword_123ED0, &unk_CE4D0);
    sub_ACF94(v13, *(*(v14 + 64) + 40), &qword_123FA0, &qword_CE898);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_9CEC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_94D98(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_97558(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_75B0(a1, &qword_123E88, qword_CE420);
    sub_9704C(a2, a3, v9);

    return sub_75B0(v9, &qword_123E88, qword_CE420);
  }

  return result;
}

void sub_9CF94(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_94950(&qword_123E58, &unk_CE860);
    v2 = sub_BDCF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_97D3C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_94D98(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_94D98(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_94D98(v31, v32);
    v16 = sub_BDBA4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
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
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_94D98(v32, (v2[7] + 32 * v9));
    ++v2[2];
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

void sub_9D25C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_94950(&qword_123E58, &unk_CE860);
    v2 = sub_BDCF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_94D98(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_94D98(v29, v30);
    v14 = sub_BDBA4(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v10 = v2[6] + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_94D98(v30, (v2[7] + 32 * v9));
    ++v2[2];
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

uint64_t sub_9D51C(void *a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v126 = a6;
  v122 = a5;
  v125 = a4;
  v121 = a3;
  v128 = a2;
  v7 = sub_BD544();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v120 = v119 - v13;
  v14 = __chkstk_darwin(v12);
  v133 = v119 - v15;
  v16 = __chkstk_darwin(v14);
  v129 = v119 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v119 - v19;
  __chkstk_darwin(v18);
  v22 = v119 - v21;
  v23 = IMTranscriptBackgroundDirectory();
  sub_BD504();

  v131 = objc_opt_self();
  v24 = [v131 defaultManager];
  sub_BD524();
  v25 = sub_BD884();

  LOBYTE(v23) = [v24 fileExistsAtPath:v25];

  v134 = v20;
  if (v23)
  {
LABEL_4:
    v123 = *a1;
    v139 = *(a1 + 3);
    v137 = 47;
    v138 = 0xE100000000000000;
    v135 = 95;
    v136 = 0xE100000000000000;
    sub_ABD60();
    sub_BDB14();
    sub_BD4F4();

    v32 = a1[2];
    if (v32)
    {
      v33 = a1[1];
      if (v33 == sub_BD514(1) && v32 == v34)
      {
      }

      else
      {
        v53 = sub_BDD24();

        if ((v53 & 1) == 0)
        {
          v54 = [v131 defaultManager];
          v55 = sub_BD884();
          *&v139 = 0;
          v56 = [v54 removeItemAtPath:v55 error:&v139];

          if (v56)
          {
            v57 = v139;
          }

          else
          {
            v59 = v8;
            v60 = v139;
            sub_BD4A4();

            v8 = v59;
            swift_willThrow();
          }
        }

        v20 = v134;
      }
    }

    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v61 = sub_BD7B4();
    v62 = sub_96A28(v61, qword_1244F8);
    v63 = v129;
    (*(v8 + 16))(v129, v20, v7);
    v119[1] = v62;
    v64 = sub_BD794();
    v65 = sub_BDA84();
    v66 = os_log_type_enabled(v64, v65);
    v132 = a1;
    v124 = v7;
    v130 = v8;
    if (v66)
    {
      v67 = v63;
      v68 = swift_slowAlloc();
      v69 = v22;
      v70 = swift_slowAlloc();
      *&v139 = v70;
      *v68 = 136315138;
      v71 = sub_BD514(1);
      v72 = v7;
      v74 = v73;
      v129 = *(v8 + 8);
      (v129)(v67, v72);
      v75 = sub_96A60(v71, v74, &v139);

      *(v68 + 4) = v75;
      _os_log_impl(&dword_0, v64, v65, "Writing poster to %s", v68, 0xCu);
      sub_97C9C(v70);
      v22 = v69;
      a1 = v132;
    }

    else
    {

      v129 = *(v8 + 8);
      (v129)(v63, v7);
    }

    v76 = v133;
    v77 = v123;
    v78 = v134;
    v123 = v125 & 0xF000000000000000;
    if (v125 >> 60 != 15 && (v125 & 0xF000000000000000) != 0xB000000000000000)
    {
      sub_BD5A4();
    }

    v79 = [v77 transcriptBackgroundPath];
    if (v79)
    {
      v80 = v79;
      v81 = sub_BD8B4();
      v83 = v82;
      if (v81 == sub_BD514(1) && v83 == v84)
      {

LABEL_32:
        v86 = v124;
        a1 = v132;
        v87 = &v141;
        v78 = v134;
        goto LABEL_40;
      }

      v85 = sub_BDD24();

      if (v85)
      {

        goto LABEL_32;
      }

      v88 = sub_BD794();
      v89 = sub_BDA84();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v139 = v91;
        *v90 = 136315138;
        v92 = sub_96A60(v81, v83, &v139);

        *(v90 + 4) = v92;
        _os_log_impl(&dword_0, v88, v89, "Removing old poster path: %s", v90, 0xCu);
        sub_97C9C(v91);
        v76 = v133;
      }

      else
      {
      }

      v93 = [v131 defaultManager];
      *&v139 = 0;
      v94 = [v93 removeItemAtPath:v80 error:&v139];

      a1 = v132;
      v78 = v134;
      if (v94)
      {
        v95 = v139;
      }

      else
      {
        v96 = v139;
        sub_BD4A4();

        swift_willThrow();
      }
    }

    v87 = &v140;
    v86 = v124;
LABEL_40:
    sub_BD4E4(v87);
    v98 = v97;
    v99 = [v97 im_associatedWatchBackgroundURL];

    sub_BD504();
    if (v123 != 0xB000000000000000 && v126 >> 60 != 15)
    {
      sub_BD5A4();
    }

    v100 = [v77 transcriptBackgroundPath];
    if (!v100)
    {
      goto LABEL_49;
    }

    v101 = v100;
    v102 = [objc_allocWithZone(NSURL) initFileURLWithPath:v100];

    v103 = [v102 im_associatedWatchBackgroundURL];
    v104 = v120;
    sub_BD504();

    sub_AC3A8(&qword_123F90, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    if ((sub_BD874() & 1) == 0)
    {
      v105 = [v131 defaultManager];
      sub_BD4E4(v106);
      v108 = v107;
      *&v139 = 0;
      v109 = [v105 removeItemAtURL:v107 error:&v139];

      if (v109)
      {
        v110 = v139;
        (v129)(v104, v86);
LABEL_49:
        v112 = swift_allocObject();
        *(v112 + 16) = v77;
        v113 = *a1;
        *(v112 + 40) = *(a1 + 1);
        v114 = *(a1 + 3);
        *(v112 + 56) = *(a1 + 2);
        *(v112 + 72) = v114;
        *(v112 + 81) = *(a1 + 57);
        *(v112 + 24) = v113;
        v115 = v127;
        *(v112 + 104) = v127;
        *(v112 + 112) = v128;
        v116 = v77;
        sub_AC214(a1, &v139);
        v117 = v115;
        sub_B62FC(v78, v76, sub_AC3F0, v112);

        v118 = v129;
        (v129)(v76, v86);
        (v118)(v78, v86);
        return (v118)(v22, v86);
      }

      v111 = v139;
      sub_BD4A4();

      swift_willThrow();
    }

    (v129)(v104, v86);
    goto LABEL_49;
  }

  v26 = [v131 defaultManager];
  sub_BD4E4(v27);
  v29 = v28;
  *&v139 = 0;
  v30 = [v26 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v139];

  if (v30)
  {
    v31 = v139;
    v20 = v134;
    goto LABEL_4;
  }

  v35 = v8;
  v36 = v139;
  sub_BD4A4();

  swift_willThrow();
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v37 = sub_BD7B4();
  sub_96A28(v37, qword_1244F8);
  (*(v35 + 16))(v11, v22, v7);
  swift_errorRetain();
  v38 = sub_BD794();
  v39 = sub_BDA64();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v134 = v22;
    v41 = v40;
    v42 = swift_slowAlloc();
    v132 = v42;
    v133 = swift_slowAlloc();
    *&v139 = v133;
    *v41 = 138412802;
    swift_errorRetain();
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 4) = v43;
    *v42 = v43;
    *(v41 + 12) = 2080;
    swift_getErrorValue();
    v44 = sub_BDD74();
    v46 = sub_96A60(v44, v45, &v139);

    *(v41 + 14) = v46;
    *(v41 + 22) = 2080;
    sub_AC3A8(&qword_123F88, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v47 = sub_BDD14();
    v49 = v48;
    v50 = *(v35 + 8);
    v50(v11, v7);
    v51 = sub_96A60(v47, v49, &v139);

    *(v41 + 24) = v51;
    _os_log_impl(&dword_0, v38, v39, "Failed to persist transcript background with error: %@. Description: %s. Dir path: %s", v41, 0x20u);
    sub_75B0(v132, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();

    return (v50)(v134, v7);
  }

  else
  {

    v58 = *(v35 + 8);
    v58(v11, v7);
    return (v58)(v22, v7);
  }
}

void sub_9E62C(void *a1, char a2)
{
  if ([a1 style] == 45 && (a2 & 1) == 0)
  {
    v5 = sub_BD8B4();
    v7 = v6;
    v38 = 0u;
    v39 = 0u;
    v8 = v5;
    v9 = v7;
LABEL_6:
    sub_9CEC4(&v38, v8, v9);
    return;
  }

  if ([a1 style] == 43)
  {
    v10 = sub_BD8B4();
    v12 = v11;
    v13 = [v2 groupIDForChat:a1];
    v14 = sub_BD8B4();
    v16 = v15;

    *(&v39 + 1) = &type metadata for String;
    *&v38 = v14;
    *(&v38 + 1) = v16;
    v8 = v10;
    v9 = v12;
    goto LABEL_6;
  }

  v17 = [a1 participants];
  if (!v17)
  {
    goto LABEL_36;
  }

  v18 = v17;
  sub_7610(0, &qword_123F68, IMDHandle_ptr);
  v19 = sub_BD954();

  *&v38 = _swiftEmptyArrayStorage;
  if (v19 >> 62)
  {
LABEL_23:
    v20 = sub_BDCC4();
    if (v20)
    {
LABEL_10:
      v21 = 0;
      while (1)
      {
        if ((v19 & 0xC000000000000001) != 0)
        {
          v22 = sub_BDC34();
        }

        else
        {
          if (v21 >= *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_22;
          }

          v22 = *(v19 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (![v22 ID])
        {
          break;
        }

        sub_BD934();
        if (*(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v38 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_BD974();
        }

        sub_BD984();
        ++v21;
        if (v24 == v20)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }
  }

  else
  {
    v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_10;
    }
  }

LABEL_24:

  sub_7610(0, &qword_123F48, NSString_ptr);
  isa = sub_BD944().super.isa;
  v26 = [(objc_class *)isa _URIsFromIDs];

  if (v26)
  {

    v27 = sub_BD954();

    if (*(v27 + 16))
    {
      sub_97D3C(v27 + 32, &v38);
    }

    else
    {

      v38 = 0u;
      v39 = 0u;
    }

    v28 = sub_BD8B4();
    v30 = v29;
    sub_97DF4(&v38, &v36, &qword_123E88, qword_CE420);
    if (*(&v37 + 1))
    {
      if (swift_dynamicCast())
      {
        v31 = [v35 _stripFZIDPrefix];

        if (v31)
        {
          v32 = sub_BD8B4();
          v34 = v33;

          *(&v37 + 1) = &type metadata for String;
          *&v36 = v32;
          *(&v36 + 1) = v34;
LABEL_34:
          sub_9CEC4(&v36, v28, v30);
          sub_75B0(&v38, &qword_123E88, qword_CE420);
          return;
        }
      }
    }

    else
    {
      sub_75B0(&v36, &qword_123E88, qword_CE420);
    }

    v36 = 0u;
    v37 = 0u;
    goto LABEL_34;
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_9EA54(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v15 = a9;
  v37 = *(a1 + 32);
  if (a2)
  {
    v34 = sub_BD8B4();
    v17 = v16;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_6:
    v33 = 0;
    v35 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v34 = 0;
  v17 = 0;
  if (!a5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v33 = sub_BD8B4();
  v35 = v18;
  if (a6)
  {
LABEL_4:
    v32 = sub_BD8B4();
    a6 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v32 = 0;
LABEL_8:

  v20 = a4;
  if (a7)
  {
    v21 = a7;
    a7 = sub_BD594();
    v23 = v22;

    if (a8)
    {
      goto LABEL_10;
    }

LABEL_13:
    v24 = 0;
    if (a9)
    {
      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v23 = 0xF000000000000000;
  if (!a8)
  {
    goto LABEL_13;
  }

LABEL_10:
  v24 = sub_BD8B4();
  a8 = v25;
  if (a9)
  {
LABEL_11:
    v26 = a6;
    v27 = v17;
    v28 = a9;
    v15 = sub_BD594();
    v30 = v29;

    v17 = v27;
    a6 = v26;
    goto LABEL_15;
  }

LABEL_14:
  v30 = 0xF000000000000000;
LABEL_15:
  v37(v34, v17, a3, v20, v33, v35, v32, a6, a7, v23, v24, a8, v15, v30, a10);
  sub_ABCAC(v15, v30);

  sub_ABCAC(a7, v23);
}

void *sub_9EC40(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_BDC74();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_97D3C(i, v5);
    sub_7610(0, &qword_123F48, NSString_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_BDC54();
    sub_BDC84();
    sub_BDC94();
    sub_BDC64();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

void sub_9ED4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  *&aBlock = 0;

  if (!aBlock)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v20 = sub_BD7B4();
    sub_96A28(v20, qword_1244F8);
    v21 = sub_BD794();
    v22 = sub_BDA84();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "No IDS account or callerURI, not responding to background request.", v23, 2u);
    }

    goto LABEL_19;
  }

  v118 = a6;
  v122 = aBlock;

  sub_9E62C(a3, 0);
  v124 = a5;
  if ([v7 isReplicating])
  {
    v14 = sub_BD8B4();
    v16 = v15;
    v17 = [v7 service];
    v18 = [v17 replicationSourceID];

    v129 = &type metadata for Int;
    *&aBlock = v18;
    sub_94D98(&aBlock, v126);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_97558(v126, v14, v16, isUniquelyReferenced_nonNull_native);
  }

  sub_9CF94(v24);

  isa = sub_BD834().super.isa;

  v26 = JWEncodeDictionary();

  if (!v26)
  {
    __break(1u);
    goto LABEL_32;
  }

  v27 = [v26 _FTCopyGzippedData];

  if (!v27)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v55 = sub_BD7B4();
    sub_96A28(v55, qword_1244F8);
    v56 = sub_BD794();
    v57 = sub_BDA64();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      *&aBlock = v59;
      *v58 = 136315138;

      v60 = sub_BD854();
      v62 = v61;

      v63 = sub_96A60(v60, v62, &aBlock);

      *(v58 + 4) = v63;
      _os_log_impl(&dword_0, v56, v57, "No encoded dictionary created. Bailing. recipientTransferDict: %s", v58, 0xCu);
      sub_97C9C(v59);
    }

    v21 = v122;
LABEL_19:

    return;
  }

  v110 = a1;
  v111 = a3;
  v120 = v7;
  v28 = sub_BD594();
  v30 = v29;

  v31 = sub_BD574().super.isa;
  sub_AB36C(v28, v30);
  sub_94950(&qword_123F30, &qword_CE830);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE4A0;
  *(inited + 32) = sub_BD8B4();
  *(inited + 40) = v33;
  sub_7610(0, &qword_123EA0, NSNumber_ptr);
  *(inited + 48) = sub_BDAD4(1);
  *(inited + 56) = sub_BD8B4();
  *(inited + 64) = v34;
  *(inited + 72) = sub_BDAD4(1);
  *(inited + 80) = sub_BD8B4();
  *(inited + 88) = v35;
  *(inited + 96) = [objc_allocWithZone(NSNumber) initWithInteger:138];
  *(inited + 104) = sub_BD8B4();
  *(inited + 112) = v36;
  *&aBlock = sub_BD8B4();
  *(&aBlock + 1) = v37;

  v38 = sub_BDD44();
  v39 = [objc_opt_self() setWithObject:v38];

  swift_unknownObjectRelease();
  *(inited + 120) = v39;
  *(inited + 128) = sub_BD8B4();
  *(inited + 136) = v40;
  *(inited + 144) = v31;
  v112 = v31;
  v41 = sub_A83E4(inited);
  swift_setDeallocating();
  sub_94950(&qword_123F38, &qword_CE838);
  swift_arrayDestroy();
  v42 = qword_1244F0;

  if (v42 != -1)
  {
    swift_once();
  }

  v116 = v41;
  v43 = sub_BD7B4();
  sub_96A28(v43, qword_1244F8);
  v44 = a2;

  v45 = sub_BD794();
  v46 = sub_BDA84();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v47 = 136315650;

    v48 = sub_BD854();
    v50 = v49;

    v51 = sub_96A60(v48, v50, &aBlock);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    sub_7610(0, &qword_123F48, NSString_ptr);
    sub_AB6B0();
    v52 = sub_BDA24();
    v54 = sub_96A60(v52, v53, &aBlock);

    *(v47 + 14) = v54;
    *(v47 + 22) = 2080;
    *(v47 + 24) = sub_96A60(a4, v124, &aBlock);
    _os_log_impl(&dword_0, v45, v46, "About to send dictionary: %s toURIS: %s, from: %s", v47, 0x20u);
    swift_arrayDestroy();
  }

  v114 = [v120 deliveryController];
  sub_97B60(_swiftEmptyArrayStorage);
  v113 = sub_BD834().super.isa;

  v64 = sub_BD884();
  v65 = v122;
  sub_9FDA8(v44);
  v66 = sub_BDA04().super.isa;

  sub_9D25C(v116);

  v67 = sub_BD834().super.isa;

  v68 = swift_allocObject();
  *(v68 + 16) = v44;
  v130 = sub_AB3C0;
  v131 = v68;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v128 = sub_A0124;
  v129 = &unk_114F60;
  v69 = _Block_copy(&aBlock);

  [v114 sendMessageDictionary:v113 encryptDictionary:1 fromID:v64 fromAccount:v65 toURIs:v66 toGroup:0 priority:300 options:v67 willSendBlock:0 completionBlock:v69];
  _Block_release(v69);

  if ((v118 & 1) == 0)
  {

LABEL_29:
    return;
  }

  v70 = sub_BD884();
  *&v126[0] = v110;

  v71 = v120;
  sub_9E62C(v111, 1);

  sub_9CF94(v72);

  v73 = sub_BD834().super.isa;

  v74 = JWEncodeDictionary();

  if (!v74)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v75 = [v74 _FTCopyGzippedData];

  if (!v75)
  {

    v95 = sub_BD794();
    v96 = sub_BDA64();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&aBlock = v98;
      *v97 = 136315138;

      v99 = sub_BD854();
      v101 = v100;

      v102 = sub_96A60(v99, v101, &aBlock);

      *(v97 + 4) = v102;
      _os_log_impl(&dword_0, v95, v96, "No peer encoded dictionary created. Bailing. peerTransferDict: %s", v97, 0xCu);
      sub_97C9C(v98);
    }

    goto LABEL_29;
  }

  v123 = v65;
  v76 = sub_BD594();
  v78 = v77;

  v79 = sub_BD574().super.isa;
  sub_AB36C(v76, v78);
  v80 = sub_BD8B4();
  v82 = v81;
  v83 = v79;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  *&aBlock = v116;
  v119 = v83;
  sub_A7910(v83, v80, v82, v84);

  v117 = aBlock;

  v85 = v70;
  v86 = sub_BD794();
  v87 = sub_BDA84();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&aBlock = swift_slowAlloc();
    *v88 = 136315650;

    v90 = sub_BD854();
    v92 = v91;

    v93 = sub_96A60(v90, v92, &aBlock);

    *(v88 + 4) = v93;
    *(v88 + 12) = 2112;
    *(v88 + 14) = v85;
    *v89 = v85;
    *(v88 + 22) = 2080;
    v94 = v85;
    *(v88 + 24) = sub_96A60(a4, v124, &aBlock);
    _os_log_impl(&dword_0, v86, v87, "About to send dictionary to peer devices: %s toURIS: %@, from: %s", v88, 0x20u);
    sub_75B0(v89, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();

    v71 = v120;
  }

  v121 = [v71 deliveryController];
  sub_97B60(_swiftEmptyArrayStorage);
  v115 = sub_BD834().super.isa;

  v125 = sub_BD884();
  sub_94950(&qword_123F40, &unk_CE840);
  v103 = swift_initStackObject();
  *(v103 + 16) = xmmword_CE490;
  *&aBlock = v85;
  sub_7610(0, &qword_123F48, NSString_ptr);
  sub_AB6B0();
  v104 = v85;
  sub_BDBC4();
  sub_A84E8(v103);
  swift_setDeallocating();
  sub_97CE8(v103 + 32);
  v105 = sub_BDA04().super.isa;

  sub_9D25C(v117);

  v106 = sub_BD834().super.isa;

  v107 = swift_allocObject();
  *(v107 + 16) = v104;
  v130 = sub_AB718;
  v131 = v107;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v128 = sub_A0124;
  v129 = &unk_114FB0;
  v108 = _Block_copy(&aBlock);
  v109 = v104;

  [v121 sendMessageDictionary:v115 encryptDictionary:1 fromID:v125 fromAccount:v123 toURIs:v105 toGroup:0 priority:300 options:v106 willSendBlock:0 completionBlock:v108];

  _Block_release(v108);
}

void sub_9FDA8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_BDB74())
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = &_swiftEmptySetSingleton;
    if (v2)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v1 + 56);

    v6 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_94950(&qword_123F58, &qword_CE850);
  v3 = sub_BDC04();
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:

  sub_BDB64();
  sub_7610(0, &qword_123F48, NSString_ptr);
  sub_AB6B0();
  sub_BDA44();
  v1 = v30;
  v4 = v31;
  v5 = v32;
  v6 = v33;
  v7 = v34;
LABEL_11:
  v11 = (v3 + 7);
  while (v1 < 0)
  {
    v15 = sub_BDB94();
    if (!v15)
    {
LABEL_34:
      sub_75A8(v1);

      return;
    }

    *&v27 = v15;
    sub_7610(0, &qword_123F48, NSString_ptr);
    swift_dynamicCast();
LABEL_25:
    sub_7610(0, &qword_123F48, NSString_ptr);
    swift_dynamicCast();
    v19 = sub_BDBA4(v3[5]);
    v20 = -1 << *(v3 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*&v11[8 * (v21 >> 6)]) != 0)
    {
      v12 = __clz(__rbit64((-1 << v21) & ~*&v11[8 * (v21 >> 6)])) | v21 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = 0;
      v24 = (63 - v20) >> 6;
      do
      {
        if (++v22 == v24 && (v23 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v25 = v22 == v24;
        if (v22 == v24)
        {
          v22 = 0;
        }

        v23 |= v25;
        v26 = *&v11[8 * v22];
      }

      while (v26 == -1);
      v12 = __clz(__rbit64(~v26)) + (v22 << 6);
    }

    *&v11[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
    v13 = v3[6] + 40 * v12;
    *(v13 + 32) = v29;
    *v13 = v27;
    *(v13 + 16) = v28;
    ++v3[2];
  }

  if (v7)
  {
    v14 = v6;
LABEL_24:
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = *(*(v1 + 48) + ((v14 << 9) | (8 * v17)));
    goto LABEL_25;
  }

  v16 = v6;
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v14 >= ((v5 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v7 = *(v4 + 8 * v14);
    ++v16;
    if (v7)
    {
      v6 = v14;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_A0124(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 32);
  if (a3)
  {
    v11 = sub_BD954();
  }

  else
  {
    v11 = 0;
  }

  v12 = a2;
  v10(a2, v11, a4, a5, a6);
}

void MessageServiceSession.receiveIncomingBlastdoorBackgroundCommand(_:for:sender:senderContext:)(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v10 = a1;
  sub_A88DC(v22, a1);
  v24[5] = v22[5];
  v24[6] = v22[6];
  v25[0] = v23[0];
  *(v25 + 9) = *(v23 + 9);
  v24[2] = v22[2];
  v24[3] = v22[3];
  v24[4] = v22[4];
  v24[0] = v22[0];
  v24[1] = v22[1];
  if (sub_A9758(v24) == 1)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v11 = sub_BD7B4();
    sub_96A28(v11, qword_1244F8);
    v12 = v10;

    v13 = sub_BD794();
    v14 = sub_BDA64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v15 = 136315394;
      if (a1)
      {
        v16 = [v12 debugDescription];
        v17 = sub_BD8B4();
        v19 = v18;
      }

      else
      {
        v19 = 0xE500000000000000;
        v17 = 0x3E6C696E3CLL;
      }

      v20 = sub_96A60(v17, v19, &v21);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_96A60(a3, a4, &v21);
      _os_log_impl(&dword_0, v13, v14, "Failed to parse background command for %s. Sender: %s", v15, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    sub_A0458(v22, a2, a3, a4, a5);
    sub_75B0(v22, &qword_123EE0, &qword_CE500);
  }
}

void sub_A0458(__int128 *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v11 = sub_BD7C4();
  v290 = *(v11 - 8);
  v291 = v11;
  __chkstk_darwin(v11);
  v288 = v267 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = sub_BD7F4();
  v287 = *(v289 - 8);
  __chkstk_darwin(v289);
  v286 = v267 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_BD814();
  v15 = *(v14 - 8);
  v293 = v14;
  v294 = v15;
  v16 = __chkstk_darwin(v14);
  v285 = v267 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v292 = v267 - v18;
  v19 = sub_BD624();
  isa = v19[-1].isa;
  v300 = v19;
  __chkstk_darwin(v19);
  v298 = v267 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_BD544();
  v296 = *(v21 - 8);
  v297 = v21;
  v22 = __chkstk_darwin(v21);
  v24 = v267 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v295 = v267 - v25;
  v26 = [objc_opt_self() sharedFeatureFlags];
  v27 = [v26 isTranscriptBackgroundsEnabled];

  if (!v27)
  {
    return;
  }

  if (![a5 isTrustedSender])
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v40 = sub_BD7B4();
    sub_96A28(v40, qword_1244F8);
    v300 = sub_BD794();
    v41 = sub_BDA84();
    if (os_log_type_enabled(v300, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_0, v300, v41, "Refusing to receive transcript background. Sender context indicates untrusted sender.", v42, 2u);
    }

    v43 = v300;

    return;
  }

  v28 = v24;
  v279 = a3;
  v283 = v5;
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v277 = a5;
  v29 = sub_BD7B4();
  v30 = sub_96A28(v29, qword_1244F8);

  v31 = a2;
  sub_97DF4(a1, &v336, &qword_123EE0, &qword_CE500);
  v282 = v30;
  v32 = sub_BD794();
  LODWORD(v30) = sub_BDA84();

  v284 = v31;

  sub_75B0(a1, &qword_123EE0, &qword_CE500);
  LODWORD(v278) = v30;
  v33 = os_log_type_enabled(v32, v30);
  v280 = a4;
  v281 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *&v328 = swift_slowAlloc();
    *v34 = 136315650;
    v276 = v28;
    if (a2)
    {
      v35 = [v284 chatIdentifier];
      if (v35)
      {
        v36 = v35;
        v37 = sub_BD8B4();
        v39 = v38;
      }

      else
      {
        v39 = 0xE500000000000000;
        v37 = 0x3E6C696E3CLL;
      }
    }

    else
    {
      v37 = 0x3E6C696E3CLL;
      v39 = 0xE500000000000000;
    }

    v45 = sub_96A60(v37, v39, &v328);

    *(v34 + 4) = v45;
    *(v34 + 12) = 2080;
    if (v280)
    {
      v46 = v279;
    }

    else
    {
      v46 = 0x3E6C696E3CLL;
    }

    if (v280)
    {
      v47 = v280;
    }

    else
    {
      v47 = 0xE500000000000000;
    }

    v48 = sub_96A60(v46, v47, &v328);

    *(v34 + 14) = v48;
    *(v34 + 22) = 2080;
    v49 = a1[7];
    v342 = a1[6];
    v343[0] = v49;
    *(v343 + 9) = *(a1 + 121);
    v50 = a1[3];
    v338 = a1[2];
    v339 = v50;
    v51 = a1[5];
    v340 = a1[4];
    v341 = v51;
    v52 = a1[1];
    v336 = *a1;
    v337 = v52;
    sub_94950(&qword_123EE0, &qword_CE500);
    v53 = sub_BDB04();
    v55 = sub_96A60(v53, v54, &v328);

    *(v34 + 24) = v55;
    _os_log_impl(&dword_0, v32, v278, "Received incoming transcript background for chatID: %s from: %s. Incoming command: %s", v34, 0x20u);
    swift_arrayDestroy();

    v44 = v276;
  }

  else
  {

    v44 = v28;
  }

  v56 = a1[7];
  v316 = a1[6];
  v317[0] = v56;
  *(v317 + 9) = *(a1 + 121);
  v57 = a1[3];
  v312 = a1[2];
  v313 = v57;
  v58 = a1[5];
  v314 = a1[4];
  v315 = v58;
  v59 = a1[1];
  v310 = *a1;
  v311 = v59;
  if (sub_A9758(&v310) == 1 || (v324 = v316, v325[0] = v317[0], *(v325 + 9) = *(v317 + 9), v320 = v312, v321 = v313, v322 = v314, v323 = v315, v318 = v310, v319 = v311, !v281))
  {
    v63 = v284;
    sub_97DF4(a1, &v336, &qword_123EE0, &qword_CE500);
    v64 = sub_BD794();
    v65 = sub_BDA84();
    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *&v328 = swift_slowAlloc();
      *v66 = 136315394;
      v67 = a1[7];
      v342 = a1[6];
      v343[0] = v67;
      *(v343 + 9) = *(a1 + 121);
      v68 = a1[3];
      v338 = a1[2];
      v339 = v68;
      v69 = a1[5];
      v340 = a1[4];
      v341 = v69;
      v70 = a1[1];
      v336 = *a1;
      v337 = v70;
      sub_94950(&qword_123EE0, &qword_CE500);
      v71 = sub_BDB04();
      v73 = sub_96A60(v71, v72, &v328);

      *(v66 + 4) = v73;
      *(v66 + 12) = 2080;
      if (v281)
      {
        v74 = [v63 description];
        v75 = sub_BD8B4();
        v77 = v76;
      }

      else
      {
        v75 = 0x3E6C696E3CLL;
        v77 = 0xE500000000000000;
      }

      v103 = sub_96A60(v75, v77, &v328);

      *(v66 + 14) = v103;
      _os_log_impl(&dword_0, v64, v65, "Refusing to receive transcript background. Missing either backgroundCommand: %s or chat: %s", v66, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_38;
  }

  v326[6] = v316;
  v327[0] = v317[0];
  *(v327 + 9) = *(v317 + 9);
  v326[2] = v312;
  v326[3] = v313;
  v326[4] = v314;
  v326[5] = v315;
  v326[0] = v310;
  v326[1] = v311;
  v60 = sub_A9770(v326);
  v61 = sub_2748(v326);
  if (v60 == 2)
  {
    v62 = v284;
    sub_97DF4(a1, &v336, &qword_123EE0, &qword_CE500);
    sub_A2750(v62, v279, v280);

    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    return;
  }

  v78 = *(v61 + 96);
  v79 = *(v61 + 112);
  v80 = *(v61 + 136);
  v81 = *(v61 + 104);
  v83 = *(v61 + 80);
  v82 = *(v61 + 88);
  v85 = *(v61 + 64);
  v84 = *(v61 + 72);
  v87 = *(v61 + 48);
  v86 = *(v61 + 56);
  v89 = *(v61 + 32);
  v88 = *(v61 + 40);
  v91 = *(v61 + 16);
  v90 = *(v61 + 24);
  v92 = *(v61 + 8);
  v94 = *(v61 + 120);
  *&v302 = *v61;
  v93 = v302;
  *(&v302 + 1) = v92;
  v271 = v85;
  v272 = v92;
  v278 = v91;
  *&v303 = v91;
  *(&v303 + 1) = v90;
  v267[2] = v90;
  v267[3] = v88;
  v274 = v87;
  v275 = v89;
  *&v304 = v89;
  *(&v304 + 1) = v88;
  *&v305 = v87;
  *(&v305 + 1) = v86;
  v268 = v82;
  v269 = v86;
  *&v306 = v85;
  *(&v306 + 1) = v84;
  v267[4] = v84;
  v276 = v83;
  *&v307 = v83;
  *(&v307 + 1) = v82;
  v270 = v78;
  LOBYTE(v308) = v78 & 1;
  *(&v308 + 1) = v81;
  LOBYTE(v309[0]) = v79 & 1;
  *(v309 + 8) = v94;
  BYTE8(v309[1]) = v80 & 1;
  v338 = v304;
  v339 = v305;
  v336 = v302;
  v337 = v303;
  *(v343 + 9) = *(v309 + 9);
  v342 = v308;
  v343[0] = v309[0];
  v340 = v306;
  v341 = v307;
  sub_97DF4(a1, &v328, &qword_123EE0, &qword_CE500);
  v95 = v284;
  sub_97DF4(a1, &v328, &qword_123EE0, &qword_CE500);
  v96 = [v95 transcriptBackgroundVersion];
  v97 = [v96 unsignedLongLongValue];

  v284 = v93;
  if (v93 < v97)
  {
    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    v64 = v95;
    sub_ABB78(&v302, &v328);
    v98 = sub_BD794();
    v99 = sub_BDA84();

    if (!os_log_type_enabled(v98, v99))
    {
      sub_ABBB0(&v302);
      sub_ABBB0(&v302);

      return;
    }

    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    *v100 = 134218242;
    sub_ABBB0(&v302);
    *(v100 + 4) = v284;
    sub_ABBB0(&v302);
    *(v100 + 12) = 2112;
    v102 = [v64 transcriptBackgroundVersion];
    *(v100 + 14) = v102;
    *v101 = v102;
    _os_log_impl(&dword_0, v98, v99, "Incoming background version: %llu is lower than current chat background version: %@.", v100, 0x16u);
    sub_75B0(v101, &qword_123E98, &unk_CEE80);

    goto LABEL_38;
  }

  v104 = [v95 transcriptBackgroundProperties];
  v273 = v95;
  v105 = v278;
  if (v104)
  {
    v106 = v104;
    v107 = sub_BD844();

    v108 = sub_BD8B4();
    v110 = v109;
    v111 = *(v107 + 16);
    v267[1] = v107;
    if (v111)
    {
      v112 = v108;

      v113 = sub_94048(v112, v110);
      v115 = v114;

      if (v115)
      {
        sub_97D3C(*(v107 + 56) + 32 * v113, &v328);
        v116 = swift_dynamicCast();
        if (v116)
        {
          v117 = v301[0];
        }

        else
        {
          v117 = 0;
        }

        if (v116)
        {
          v118 = v301[1];
        }

        else
        {
          v118 = 0;
        }
      }

      else
      {
        v117 = 0;
        v118 = 0;
      }

      v95 = v273;
    }

    else
    {

      v117 = 0;
      v118 = 0;
    }

    if (v105)
    {
      if (v118)
      {
        if (v272 == v117 && v105 == v118)
        {
        }

        else
        {
          v119 = sub_BDD24();

          if ((v119 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        goto LABEL_62;
      }
    }

    else if (!v118)
    {
LABEL_62:
      v120 = [v95 transcriptBackgroundPath];
      if (!v120)
      {
        goto LABEL_77;
      }

      v121 = v120;
      v122 = sub_BD8B4();
      v124 = v123;
      v125 = [objc_opt_self() defaultManager];
      v126 = [v125 fileExistsAtPath:v121];

      if (v126)
      {
        v127 = sub_BD794();
        v128 = sub_BDA84();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_0, v127, v128, "We already have this transfer ID and asset, skipping.", v129, 2u);
        }

        v334 = v324;
        v335[0] = v325[0];
        *(v335 + 9) = *(v325 + 9);
        v330 = v320;
        v331 = v321;
        v332 = v322;
        v333 = v323;
        v328 = v318;
        v329 = v319;
        if (sub_A9770(&v328) == 1)
        {
          sub_2748(&v328);
          v130 = v273;
          v131 = [v273 style];
          v132 = [v130 chatIdentifier];
          if (v132)
          {
            v133 = v132;

            v134 = sub_BD794();
            v135 = sub_BDA84();

            v136 = os_log_type_enabled(v134, v135);
            LODWORD(v300) = v131;
            if (v136)
            {
              v137 = v122;
              v138 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              v301[0] = v139;
              *v138 = 136315138;
              *(v138 + 4) = sub_96A60(v137, v124, v301);
              _os_log_impl(&dword_0, v134, v135, "Asked to refresh, but we already have the correct background asset. Ping the client with the current properties. Asset path: %s", v138, 0xCu);
              sub_97C9C(v139);
            }

            v140 = v283;
            v141 = [v283 broadcasterForChatListeners];
            v142 = v273;
            v143 = [v273 guid];
            if (v143)
            {
              v144 = v143;
              v145 = [v142 properties];
              if (v145)
              {
                v146 = v145;

                sub_75B0(a1, &qword_123EE0, &qword_CE500);

                sub_ABBB0(&v302);
                sub_BD844();

                v147 = sub_BD834().super.isa;

                [v141 chat:v144 propertiesUpdated:v147];
                swift_unknownObjectRelease();

                v148 = [v140 broadcasterForChatListeners];
                v149 = [v140 account];
                v150 = [v149 accountID];

                if (!v150)
                {
                  sub_BD8B4();
                  v150 = sub_BD884();
                }

                [v148 transcriptBackgroundUpdatedForChatIdentifier:v133 style:v300 account:v150 userInfo:0];
                swift_unknownObjectRelease();

                goto LABEL_106;
              }
            }

            else
            {

              __break(1u);
            }

            __break(1u);
LABEL_140:
            __break(1u);
            return;
          }
        }

        else
        {
        }

        sub_ABBB0(&v302);
        sub_75B0(a1, &qword_123EE0, &qword_CE500);
        return;
      }
    }

LABEL_77:
  }

  if (v80)
  {
    sub_ABBB0(&v302);
    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    v151 = sub_BD794();
    v152 = sub_BDA84();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_0, v151, v152, "Got explicit request to remove background. Removing.", v153, 2u);
    }

    v154 = v279;
    if (v280)
    {
      v155 = sub_BD884();
      v156 = [v155 _stripFZIDPrefix];

      if (v156)
      {
        v154 = sub_BD8B4();
        v158 = v157;

LABEL_97:
        v176 = v273;
        sub_9BFE0(v273, v154, v158, v284);

        return;
      }

      v154 = 0;
    }

    v158 = 0;
    goto LABEL_97;
  }

  v159 = IMSafeTemporaryDirectory();
  sub_BD504();

  v160 = v295;
  sub_BD4F4();
  v161 = *(v296 + 8);
  v162 = v44;
  v163 = v297;
  v161(v162, v297);
  sub_BD514(1);
  v161(v160, v163);
  v164 = [objc_opt_self() defaultManager];
  v165 = v298;
  sub_BD614();
  sub_BD604();
  (isa)[1](v165, v300);
  v166 = sub_BD884();

  v167 = sub_BD884();
  v168 = [v164 createUniqueDirectoryWithName:v166 atPath:v167 ofType:0];

  isa = v168;
  if (v168)
  {
    v169 = v168;
    v170 = sub_BD884();
    v171 = [v169 stringByAppendingPathComponent:v170];

    v172 = sub_BD8B4();
    v300 = v173;
  }

  else
  {
    v172 = 0;
    v300 = 0;
  }

  v174 = v278;
  v175 = v283;
  if (!v278)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);
LABEL_104:

    sub_ABB78(&v302, &v328);
    v177 = sub_BD794();
    v178 = sub_BDA64();
    sub_ABBB0(&v302);
    if (!os_log_type_enabled(v177, v178))
    {

      sub_ABBB0(&v302);
      return;
    }

    v179 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    *&v328 = v180;
    *v179 = 136315138;
    sub_A3284();
    sub_ABBB0(&v302);
    v181 = sub_BD854();
    v183 = v182;

    v184 = sub_96A60(v181, v183, &v328);

    *(v179 + 4) = v184;
    _os_log_impl(&dword_0, v177, v178, "Missing a necessary parameter in incoming background command: %s", v179, 0xCu);
    sub_97C9C(v180);

LABEL_106:
    return;
  }

  if (!v275)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);
    goto LABEL_103;
  }

  if (!v274)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    goto LABEL_103;
  }

  if (!v271)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    goto LABEL_103;
  }

  if (!v276)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    goto LABEL_103;
  }

  if (v270)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

LABEL_103:

    goto LABEL_104;
  }

  v298 = v172;
  v185 = [v175 transcriptBackgroundTransfersCurrentlyDownloading];
  v186 = v272;
  v187 = sub_BD884();
  v188 = v174;
  v189 = [v185 containsObject:v187];

  if (v189)
  {

    sub_75B0(a1, &qword_123EE0, &qword_CE500);

    v64 = v273;
    sub_ABB78(&v302, &v328);
    v190 = sub_BD794();
    v191 = sub_BDA84();
    sub_ABBB0(&v302);

    if (os_log_type_enabled(v190, v191))
    {
      v192 = 0x3E6C696E3CLL;
      v193 = swift_slowAlloc();
      *&v328 = swift_slowAlloc();
      *v193 = 136315650;
      v194 = [v64 displayName];
      if (v194)
      {
        v195 = v194;
        v196 = sub_BD8B4();
        v198 = v197;
      }

      else
      {
        v198 = 0xE500000000000000;
        v196 = 0x3E6C696E3CLL;
      }

      v258 = sub_96A60(v196, v198, &v328);

      *(v193 + 4) = v258;
      *(v193 + 12) = 2080;
      v259 = v278;

      sub_ABBB0(&v302);
      v260 = sub_96A60(v272, v259, &v328);

      *(v193 + 14) = v260;
      *(v193 + 22) = 2080;
      v261 = [v64 guid];
      if (v261)
      {
        v262 = v261;
        v192 = sub_BD8B4();
        v264 = v263;
      }

      else
      {
        v264 = 0xE500000000000000;
      }

      v265 = sub_96A60(v192, v264, &v328);

      *(v193 + 24) = v265;
      _os_log_impl(&dword_0, v190, v191, "Not downloading background for chat displayname: %s, already attempting a download for transfer ID: %s. Chat: %s", v193, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      sub_ABBB0(&v302);
    }

LABEL_38:

    return;
  }

  v199 = [v175 transcriptBackgroundTransfersCurrentlyDownloading];
  v200 = sub_BD884();
  [v199 addObject:v200];

  sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
  v201 = v175;
  v296 = sub_BDAA4();
  v202 = v285;
  sub_BD804();
  sub_BD824();
  v203 = v294[1];
  ++v294;
  v297 = v203;
  v203(v202, v293);
  v204 = swift_allocObject();
  v204[2] = v201;
  v204[3] = v186;
  v204[4] = v188;
  *&v330 = sub_ABBE0;
  *(&v330 + 1) = v204;
  *&v328 = _NSConcreteStackBlock;
  *(&v328 + 1) = 1107296256;
  *&v329 = sub_AE028;
  *(&v329 + 1) = &unk_115050;
  v205 = _Block_copy(&v328);

  v295 = v201;
  v206 = v286;
  sub_BD7E4();
  v301[0] = _swiftEmptyArrayStorage;
  sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_94950(&qword_123F08, &qword_CE530);
  sub_A9D9C();
  v207 = v288;
  v208 = v291;
  sub_BDB34();
  v209 = v292;
  v210 = v296;
  sub_BDA94();
  _Block_release(v205);

  (*(v290 + 8))(v207, v208);
  (*(v287 + 8))(v206, v289);
  v297(v209, v293);

  v211 = v273;

  v212 = v188;
  v213 = v271;

  v214 = sub_BD794();
  v215 = sub_BDA84();
  v297 = v211;

  if (os_log_type_enabled(v214, v215))
  {
    v216 = swift_slowAlloc();
    v294 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    *&v328 = v296;
    *v216 = 136315906;
    v217 = v272;
    *(v216 + 4) = sub_96A60(v272, v212, &v328);
    *(v216 + 12) = 2080;
    *(v216 + 14) = sub_96A60(v269, v213, &v328);
    *(v216 + 22) = 2080;
    if (v300)
    {
      v218 = v298;
    }

    else
    {
      v218 = 0x3E6C696E3CLL;
    }

    if (v300)
    {
      v219 = v300;
    }

    else
    {
      v219 = 0xE500000000000000;
    }

    v220 = sub_96A60(v218, v219, &v328);

    *(v216 + 24) = v220;
    *(v216 + 32) = 2112;
    v221 = v297;
    *(v216 + 34) = v297;
    v222 = v294;
    *v294 = v281;
    v223 = v221;
    _os_log_impl(&dword_0, v214, v215, "Preparing to fetch background asset for transferID: %s. Request URL: %s. To path: %s Chat: %@", v216, 0x2Au);
    sub_75B0(v222, &qword_123E98, &unk_CEE80);

    swift_arrayDestroy();
  }

  else
  {

    v217 = v272;
  }

  v224 = [objc_opt_self() sharedInstance];
  if (!v224)
  {
    goto LABEL_140;
  }

  v225 = v224;

  v296 = sub_BD884();
  v294 = IDSServiceNameiMessage;
  if (v300)
  {
    v298 = sub_BD884();
  }

  else
  {
    v298 = 0;
  }

  v300 = sub_BD884();

  v293 = sub_BD884();

  v226 = sub_BD564();
  v228 = v227;

  v229 = 0;
  if (v228 >> 60 != 15)
  {
    v229 = sub_BD574().super.isa;
    sub_ABCAC(v226, v228);
  }

  v230 = v229;
  v231 = sub_BD564();
  v233 = v232;

  v234 = 0;
  if (v233 >> 60 != 15)
  {
    v234 = sub_BD574().super.isa;
    sub_ABCAC(v231, v233);
  }

  v292 = v234;
  v235 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v236 = swift_allocObject();
  *(v236 + 16) = v235;
  *(v236 + 24) = v217;
  v237 = v297;
  *(v236 + 32) = v278;
  *(v236 + 40) = v237;
  v238 = v343[0];
  *(v236 + 144) = v342;
  *(v236 + 160) = v238;
  *(v236 + 169) = *(v343 + 9);
  v239 = v339;
  *(v236 + 80) = v338;
  *(v236 + 96) = v239;
  v240 = v341;
  *(v236 + 112) = v340;
  *(v236 + 128) = v240;
  v241 = v337;
  *(v236 + 48) = v336;
  *(v236 + 64) = v241;
  v242 = v325[0];
  *(v236 + 288) = v324;
  *(v236 + 304) = v242;
  *(v236 + 313) = *(v325 + 9);
  v243 = v321;
  *(v236 + 224) = v320;
  *(v236 + 240) = v243;
  v244 = v323;
  *(v236 + 256) = v322;
  *(v236 + 272) = v244;
  v245 = v319;
  *(v236 + 192) = v318;
  *(v236 + 208) = v245;
  v246 = v280;
  *(v236 + 336) = v279;
  *(v236 + 344) = v246;
  v247 = v277;
  *(v236 + 352) = v277;
  *&v330 = sub_ABC60;
  *(&v330 + 1) = v236;
  *&v328 = _NSConcreteStackBlock;
  *(&v328 + 1) = 1107296256;
  *&v329 = sub_A4590;
  *(&v329 + 1) = &unk_1150A0;
  v248 = _Block_copy(&v328);
  v249 = v237;

  v250 = v247;

  v266 = v234;
  v251 = v225;
  v252 = v225;
  v253 = v296;
  v254 = v293;
  v255 = v294;
  v256 = v298;
  v257 = v300;
  [v252 receiveFileTransfer:v296 topic:v294 path:v298 requestURLString:v300 ownerID:v293 signature:v230 decryptionKey:v266 fileSize:v268 progressBlock:0 completionBlock:v248];

  _Block_release(v248);
}

void sub_A2750(void *a1, uint64_t a2, unint64_t a3)
{
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v6 = sub_BD7B4();
  sub_96A28(v6, qword_1244F8);

  v7 = a1;
  v8 = sub_BD794();
  v9 = sub_BDA84();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v101[0] = v12;
    *v10 = 136315394;
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      a2 = 0x3E6C696E3CLL;
      v13 = 0xE500000000000000;
    }

    v14 = sub_96A60(a2, v13, v101);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2112;
    *(v10 + 14) = v7;
    *v11 = v7;
    v15 = v7;
    _os_log_impl(&dword_0, v8, v9, "Asked by %s to send background info for chat %@", v10, 0x16u);
    sub_75B0(v11, &qword_123E98, &unk_CEE80);

    sub_97C9C(v12);
  }

  v16 = [v7 transcriptBackgroundProperties];
  if (v16)
  {
    v17 = v16;
    v18 = sub_BD844();

    if (a3)
    {
      v19 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_48;
      }

      v21 = sub_94048(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_49;
      }

      sub_97D3C(*(v18 + 56) + 32 * v21, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_49;
      }

      v24 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_47;
      }

      v26 = sub_94048(v24, v25);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        goto LABEL_48;
      }

      sub_97D3C(*(v18 + 56) + 32 * v26, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_48;
      }

      v29 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_46;
      }

      v31 = sub_94048(v29, v30);
      v33 = v32;

      if ((v33 & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_97D3C(*(v18 + 56) + 32 * v31, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_47;
      }

      v34 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_54;
      }

      v36 = sub_94048(v34, v35);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
LABEL_46:

LABEL_47:

LABEL_48:

LABEL_49:

        v75 = sub_BD794();
        v76 = sub_BDA84();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v101[0] = v78;
          *v77 = 136315138;
          v79 = sub_BD854();
          v81 = v80;

          v82 = sub_96A60(v79, v81, v101);

          *(v77 + 4) = v82;
          _os_log_impl(&dword_0, v75, v76, "Unable to respond to a background request because we don't have all the required properties. Current properties: %s", v77, 0xCu);
          sub_97C9C(v78);
        }

        else
        {
        }

LABEL_52:

        return;
      }

      sub_97D3C(*(v18 + 56) + 32 * v36, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_48;
      }

      v39 = sub_BD8B4();
      if (!*(v18 + 16))
      {
        goto LABEL_60;
      }

      v41 = sub_94048(v39, v40);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
LABEL_54:

        goto LABEL_46;
      }

      sub_97D3C(*(v18 + 56) + 32 * v41, v101);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_48;
      }

      v44 = sub_BD8B4();
      if (*(v18 + 16))
      {
        v46 = sub_94048(v44, v45);
        v48 = v47;

        if ((v48 & 1) == 0)
        {
          goto LABEL_60;
        }

        sub_97D3C(*(v18 + 56) + 32 * v46, v101);
        sub_7610(0, &qword_123EA0, NSNumber_ptr);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_62;
        }

        v86 = [v92[0] integerValue];

        v49 = sub_BD8B4();
        if (*(v18 + 16))
        {
          v51 = sub_94048(v49, v50);
          v53 = v52;

          if (v53)
          {
            sub_97D3C(*(v18 + 56) + 32 * v51, v101);
            if (swift_dynamicCast())
            {
              v87 = [v92[0] integerValue];

              v54 = sub_BD8B4();
              if (*(v18 + 16))
              {
                v56 = sub_94048(v54, v55);
                v58 = v57;

                if (v58)
                {
                  sub_97D3C(*(v18 + 56) + 32 * v56, v100);
                  if (swift_dynamicCast())
                  {

                    v59 = [v99 unsignedLongLongValue];

                    v91 = sub_97980(_swiftEmptyArrayStorage);
                    v93 = *v92;
                    v94 = *v92;
                    v95 = *v92;
                    v96 = *v92;
                    *&v97 = v86;
                    *(&v97 + 1) = v87;
                    *&v98 = v59;
                    *(&v98 + 1) = 4;
                    v101[0] = *v92;
                    v101[1] = *v92;
                    v101[5] = v97;
                    v101[6] = v98;
                    v101[3] = *v92;
                    v101[4] = *v92;
                    v101[2] = *v92;
                    sub_A8648(v101);
                    sub_ACE58(v92);
                    v90 = 0;
                    v60 = _LastAddressedURIForChat(v7, oslog, &v90);
                    v61 = v90;
                    if (v60)
                    {
                      v62 = v60;
                      v63 = sub_BD8B4();
                      v65 = v64;
                      v66 = v61;

                      v67 = v91;
                      sub_94950(&qword_123F28, &qword_CE828);
                      inited = swift_initStackObject();
                      *(inited + 16) = xmmword_CE4B0;
                      *(inited + 32) = sub_BD884();
                      sub_A977C(inited, v69);
                      v71 = v70;
                      swift_setDeallocating();
                      swift_arrayDestroy();
                      sub_9ED4C(v67, v71, v7, v63, v65, 0);

                      return;
                    }

                    v83 = v90;

                    v75 = sub_BD794();
                    v84 = sub_BDA84();
                    if (os_log_type_enabled(v75, v84))
                    {
                      v85 = swift_slowAlloc();
                      *v85 = 0;
                      _os_log_impl(&dword_0, v75, v84, "No IDS account or callerURI, not responding to background request.", v85, 2u);
                    }

                    goto LABEL_52;
                  }

                  goto LABEL_62;
                }

                goto LABEL_60;
              }

              goto LABEL_59;
            }

LABEL_62:

            goto LABEL_48;
          }

LABEL_60:

          goto LABEL_54;
        }
      }

LABEL_59:

      goto LABEL_60;
    }

    osloga = sub_BD794();
    v72 = sub_BDA84();
    if (os_log_type_enabled(osloga, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = "No sender, not responding to background request.";
      goto LABEL_40;
    }
  }

  else
  {
    osloga = sub_BD794();
    v72 = sub_BDA84();
    if (os_log_type_enabled(osloga, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      v74 = "We have no background properties, not responding to background request.";
LABEL_40:
      _os_log_impl(&dword_0, osloga, v72, v74, v73, 2u);
    }
  }
}

unint64_t sub_A3284()
{
  sub_94950(&qword_123EE8, &qword_CE508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE4C0;
  *(inited + 32) = sub_BD8B4();
  v2 = *v0;
  *(inited + 72) = &type metadata for UInt64;
  *(inited + 40) = v3;
  *(inited + 48) = v2;
  *(inited + 80) = sub_BD8B4();
  *(inited + 88) = v4;
  v5 = v0[1];
  v6 = v0[2];
  *(inited + 120) = &type metadata for String;
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *(inited + 96) = v5;
  *(inited + 104) = v7;
  *(inited + 128) = sub_BD8B4();
  *(inited + 136) = v8;
  v9 = v0[3];
  v10 = v0[4];
  *(inited + 168) = &type metadata for String;
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  *(inited + 144) = v9;
  *(inited + 152) = v11;
  *(inited + 176) = sub_BD8B4();
  *(inited + 184) = v12;
  v13 = v0[5];
  v14 = v0[6];
  *(inited + 216) = &type metadata for String;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xE000000000000000;
  }

  *(inited + 192) = v13;
  *(inited + 200) = v15;
  *(inited + 224) = sub_BD8B4();
  *(inited + 232) = v16;
  v17 = v0[7];
  v18 = v0[8];
  *(inited + 264) = &type metadata for String;
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  *(inited + 240) = v17;
  *(inited + 248) = v19;
  *(inited + 272) = sub_BD8B4();
  *(inited + 280) = v20;
  v21 = v0[9];
  v22 = v0[10];
  *(inited + 312) = &type metadata for String;
  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  *(inited + 288) = v21;
  *(inited + 296) = v23;
  *(inited + 320) = sub_BD8B4();
  *(inited + 328) = v24;
  if (v0[12])
  {
    *(inited + 360) = &type metadata for String;
    *(inited + 336) = 0;
    *(inited + 344) = 0xE000000000000000;
  }

  else
  {
    v25 = v0[11];
    v37 = &type metadata for UInt;
    *&v36 = v25;
    sub_94D98(&v36, (inited + 336));
  }

  *(inited + 368) = sub_BD8B4();
  *(inited + 376) = v26;
  if (v0[14])
  {
    *(inited + 408) = &type metadata for String;
    *(inited + 384) = 0;
    *(inited + 392) = 0xE000000000000000;
  }

  else
  {
    v27 = v0[13];
    v37 = &type metadata for UInt;
    *&v36 = v27;
    sub_94D98(&v36, (inited + 384));
  }

  *(inited + 416) = sub_BD8B4();
  *(inited + 424) = v28;
  v29 = *(v0 + 136);
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = v29;
  *(inited + 464) = sub_BD8B4();
  *(inited + 472) = v30;
  v31 = v0[15];
  v32 = v0[16];
  *(inited + 504) = &type metadata for String;
  if (!v32)
  {
    v31 = 0;
  }

  v33 = 0xE000000000000000;
  if (v32)
  {
    v33 = v32;
  }

  *(inited + 480) = v31;
  *(inited + 488) = v33;

  v34 = sub_97980(inited);
  swift_setDeallocating();
  sub_94950(&qword_123EC8, &unk_CE510);
  swift_arrayDestroy();
  return v34;
}

void sub_A355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, _OWORD *a13, __int128 *a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v135 = a8;
  v136 = a4;
  v125 = a7;
  v132 = a6;
  LODWORD(v133) = a5;
  v127 = a1;
  v128 = a3;
  v137 = a2;
  v134 = a13;
  v129 = a10;
  v17 = a14[6];
  v18 = a14[7];
  v19 = a14[4];
  v158[5] = a14[5];
  v158[6] = v17;
  v159[0] = v18;
  *(v159 + 9) = *(a14 + 121);
  v20 = a14[3];
  v158[2] = a14[2];
  v158[3] = v20;
  v158[4] = v19;
  v22 = *a14;
  v21 = a14[1];
  v123 = a14;
  v158[0] = v22;
  v158[1] = v21;
  v23 = sub_BD544();
  v121 = *(v23 - 8);
  v122 = v23;
  v24 = __chkstk_darwin(v23);
  v120 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v124 = &v119 - v27;
  __chkstk_darwin(v26);
  v126 = &v119 - v28;
  v29 = sub_BD7C4();
  v131 = *(v29 - 8);
  __chkstk_darwin(v29);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_BD7F4();
  v32 = *(v130 - 8);
  __chkstk_darwin(v130);
  v34 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
  v35 = sub_BDAA4();
  v36 = swift_allocObject();
  v37 = v129;
  v36[2] = a9;
  v36[3] = v37;
  v36[4] = a11;
  *&v149 = sub_ABCC0;
  *(&v149 + 1) = v36;
  *&v147 = _NSConcreteStackBlock;
  *(&v147 + 1) = 1107296256;
  *&v148 = sub_AE028;
  *(&v148 + 1) = &unk_1150F0;
  v38 = _Block_copy(&v147);
  v129 = a9;

  sub_BD7E4();
  *&v147 = _swiftEmptyArrayStorage;
  sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_94950(&qword_123F08, &qword_CE530);
  sub_A9D9C();
  sub_BDB34();
  sub_BDAB4();
  _Block_release(v38);

  v39 = v31;
  v40 = v136;
  (*(v131 + 8))(v39, v29);
  (*(v32 + 8))(v34, v130);
  v41 = v137;
  if (v137 && (v133 & 1) != 0 && v40 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v135 = Strong;
    v133 = a17;

    v43 = v123;
    v44 = sub_A4348();
    sub_9CF94(v44);
    v46 = v45;

    v47 = v43[7];
    v153 = v43[6];
    v154[0] = v47;
    *(v154 + 9) = *(v43 + 121);
    v48 = v43[3];
    v149 = v43[2];
    v150 = v48;
    v49 = v43[5];
    v151 = v43[4];
    v152 = v49;
    v50 = v43[1];
    v147 = *v43;
    v148 = v50;
    if (sub_A9770(&v147) == 1)
    {
      sub_2748(&v147);
      v51 = 1;
    }

    else
    {
      v51 = sub_A9770(v158) == 3;
    }

    v73 = *v134;
    *&v155 = a12;
    *(&v155 + 1) = v128;
    *&v156[0] = v40;
    *(&v156[0] + 1) = v127;
    *&v156[1] = v41;
    *(&v156[1] + 1) = v73;
    *&v157[0] = v46;
    *(&v157[0] + 1) = a15;
    *&v157[1] = a16;
    BYTE8(v157[1]) = v51;

    v74 = a12;
    v75 = IMTranscriptBackgroundDirectory();
    sub_BD504();

    v76 = objc_opt_self();
    v77 = [v76 defaultManager];
    sub_BD524();
    v78 = sub_BD884();

    LOBYTE(v75) = [v77 fileExistsAtPath:v78];

    if ((v75 & 1) == 0)
    {
      v79 = [v76 defaultManager];
      sub_BD4E4(v80);
      v82 = v81;
      *&v142 = 0;
      v83 = [v79 createDirectoryAtURL:v81 withIntermediateDirectories:1 attributes:0 error:&v142];

      if (v83)
      {
        v84 = v142;
      }

      else
      {
        v85 = v142;
        sub_BD4A4();

        swift_willThrow();
        if (qword_1244F0 != -1)
        {
          swift_once();
        }

        v86 = sub_BD7B4();
        sub_96A28(v86, qword_1244F8);
        swift_errorRetain();
        v87 = sub_BD794();
        v88 = sub_BDA84();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v142 = v90;
          *v89 = 136315138;
          swift_getErrorValue();
          v91 = sub_BDD74();
          v93 = sub_96A60(v91, v92, &v142);

          *(v89 + 4) = v93;
          v43 = v123;
          _os_log_impl(&dword_0, v87, v88, "Got error creating background directory: %s", v89, 0xCu);
          sub_97C9C(v90);
        }

        else
        {
        }
      }
    }

    v142 = *(v156 + 8);
    v140 = 47;
    v141 = 0xE100000000000000;
    v138 = 95;
    v139 = 0xE100000000000000;
    sub_ABD60();
    sub_BDB14();
    sub_BD4F4();

    v131 = sub_BD514(1);
    v94 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v95 = swift_allocObject();
    v96 = v134;
    v97 = v134[7];
    *(v95 + 112) = v134[6];
    *(v95 + 128) = v97;
    *(v95 + 137) = *(v96 + 121);
    v98 = v96[3];
    *(v95 + 48) = v96[2];
    *(v95 + 64) = v98;
    v99 = v96[5];
    *(v95 + 80) = v96[4];
    *(v95 + 96) = v99;
    v100 = v96[1];
    *(v95 + 16) = *v96;
    *(v95 + 32) = v100;
    *(v95 + 160) = v132;
    *(v95 + 168) = v94;
    v137 = v94;
    v101 = v157[0];
    *(v95 + 208) = v156[1];
    *(v95 + 224) = v101;
    *(v95 + 233) = *(v157 + 9);
    v102 = v156[0];
    *(v95 + 176) = v155;
    *(v95 + 192) = v102;
    v103 = v43[7];
    *(v95 + 352) = v43[6];
    *(v95 + 368) = v103;
    *(v95 + 377) = *(v43 + 121);
    v104 = v43[3];
    *(v95 + 288) = v43[2];
    *(v95 + 304) = v104;
    v105 = v43[5];
    *(v95 + 320) = v43[4];
    *(v95 + 336) = v105;
    v106 = v43[1];
    *(v95 + 256) = *v43;
    *(v95 + 272) = v106;
    sub_ABB78(v96, &v142);
    swift_errorRetain();

    sub_AC214(&v155, &v142);
    sub_AC24C(v43, &v142);
    v107 = v120;
    sub_BD4D4();
    sub_BD4E4(v108);
    v110 = v109;
    v111 = v122;
    v112 = *(v121 + 8);
    v112(v107, v122);
    sub_BD4D4();

    sub_BD4E4(v113);
    v115 = v114;
    v112(v107, v111);
    v116 = swift_allocObject();
    *(v116 + 16) = sub_ABDB4;
    *(v116 + 24) = v95;
    v145 = sub_AC284;
    v146 = v116;
    *&v142 = _NSConcreteStackBlock;
    *(&v142 + 1) = 1107296256;
    v143 = sub_A46B0;
    v144 = &unk_115168;
    v117 = _Block_copy(&v142);

    v118 = v135;
    [v135 generateTranscriptBackground:v110 destinationURL:v115 senderContext:v133 resultBlock:v117];
    _Block_release(v117);

    sub_AC360(&v155);
    v112(v124, v111);
    v112(v126, v111);
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v52 = sub_BD7B4();
    sub_96A28(v52, qword_1244F8);

    v53 = v134;
    sub_ABB78(v134, &v147);
    v54 = v132;
    swift_errorRetain();

    v55 = sub_BD794();
    v56 = sub_BDA64();
    sub_ABBB0(v53);

    if (os_log_type_enabled(v55, v56))
    {
      v57 = 0x3E6C696E3CLL;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v147 = v131;
      *v58 = 136316418;
      if (*(v53 + 2))
      {
        v57 = *(v53 + 1);
        v60 = *(v53 + 2);
      }

      else
      {
        v60 = 0xE500000000000000;
      }

      v61 = sub_96A60(v57, v60, &v147);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2112;
      if (v54)
      {
        swift_errorRetain();
        v62 = _swift_stdlib_bridgeErrorToNSError();
        v63 = v62;
      }

      else
      {
        v62 = 0;
        v63 = 0;
      }

      *(v58 + 14) = v62;
      *v59 = v63;
      *(v58 + 22) = 2080;
      if (v135)
      {
        v64 = v125;
      }

      else
      {
        v64 = 0;
      }

      if (v135)
      {
        v65 = v135;
      }

      else
      {
        v65 = 0xE000000000000000;
      }

      v66 = sub_96A60(v64, v65, &v147);

      *(v58 + 24) = v66;
      *(v58 + 32) = 1024;
      *(v58 + 34) = v133 & 1;
      *(v58 + 38) = 2080;
      if (v137)
      {
        v67 = v127;
      }

      else
      {
        v67 = 0x3E6C696E3CLL;
      }

      if (v137)
      {
        v68 = v137;
      }

      else
      {
        v68 = 0xE500000000000000;
      }

      v69 = sub_96A60(v67, v68, &v147);

      *(v58 + 40) = v69;
      *(v58 + 48) = 2080;
      if (v136)
      {
        v70 = v128;
      }

      else
      {
        v70 = 0x3E6C696E3CLL;
      }

      if (v136)
      {
        v71 = v136;
      }

      else
      {
        v71 = 0xE500000000000000;
      }

      v72 = sub_96A60(v70, v71, &v147);

      *(v58 + 50) = v72;
      _os_log_impl(&dword_0, v55, v56, "Failed to download background with transferID: %s. Error: %@, MMCS error info: %s. Success: %{BOOL}d, outTransferID: %s, path: %s", v58, 0x3Au);
      sub_75B0(v59, &qword_123E98, &unk_CEE80);

      swift_arrayDestroy();
    }
  }
}

uint64_t sub_A4304(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

unint64_t sub_A4348()
{
  v1 = v0[7];
  v37[6] = v0[6];
  v38[0] = v1;
  *(v38 + 9) = *(v0 + 121);
  v2 = v0[3];
  v37[2] = v0[2];
  v37[3] = v2;
  v3 = v0[5];
  v37[4] = v0[4];
  v37[5] = v3;
  v4 = v0[1];
  v37[0] = *v0;
  v37[1] = v4;
  sub_94950(&qword_123EE8, &qword_CE508);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_CE490;
  *(v5 + 32) = sub_BD8B4();
  *(v5 + 40) = v6;
  v7 = sub_A9770(v37);
  *(v5 + 72) = &type metadata for Int;
  *(v5 + 48) = v7 + 1;
  v8 = sub_97980(v5);
  swift_setDeallocating();
  sub_75B0(v5 + 32, &qword_123EC8, &unk_CE510);
  swift_deallocClassInstance();
  v9 = v0[7];
  v29[6] = v0[6];
  v30[0] = v9;
  *(v30 + 9) = *(v0 + 121);
  v10 = v0[3];
  v29[2] = v0[2];
  v29[3] = v10;
  v11 = v0[5];
  v29[4] = v0[4];
  v29[5] = v11;
  v12 = v0[1];
  v29[0] = *v0;
  v29[1] = v12;
  v13 = sub_A9770(v29);
  v14 = sub_2748(v29);
  if (v13 == 2)
  {
    v15 = sub_A67FC(*v14, *(v14 + 8));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v31[0] = v8;
    sub_A9A6C(v15, sub_A7BFC, 0, isUniquelyReferenced_nonNull_native, v31);

    return *&v31[0];
  }

  else
  {
    v18 = *(v14 + 112);
    v19 = *(v14 + 136);
    v20 = *(v14 + 104);
    v28 = *(v14 + 96) & 1;
    v27 = v18 & 1;
    v21 = *(v14 + 16);
    v31[0] = *v14;
    v31[1] = v21;
    v22 = *(v14 + 48);
    v31[2] = *(v14 + 32);
    v31[3] = v22;
    v23 = *(v14 + 80);
    v31[4] = *(v14 + 64);
    v31[5] = v23;
    v32 = v28;
    v33 = v20;
    v34 = v18 & 1;
    v35 = *(v14 + 120);
    v36 = v19 & 1;
    v24 = sub_A3284();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v8;
    sub_A9A6C(v24, sub_A7BFC, 0, v25, &v26);

    return v26;
  }
}

uint64_t sub_A4590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = a3;
  v19 = *(a1 + 32);
  if (a2)
  {
    v10 = sub_BD8B4();
    v12 = v11;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v10 = 0;
  v12 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_BD8B4();
  v9 = v14;
  if (a6)
  {
LABEL_4:
    v15 = sub_BD8B4();
    a6 = v16;
    goto LABEL_8;
  }

LABEL_7:
  v15 = 0;
LABEL_8:

  v17 = a5;
  v19(v10, v12, v13, v9, a4, a5, v15, a6);
}

void sub_A46B0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_A4728()
{
  v1 = [v0 style];
  if (v1 == 35 || v1 == 45)
  {
    result = [v0 guid];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = sub_BD8B4();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v6;
    }

    return 0;
  }

  if (v1 != 43)
  {
    return 0;
  }

  result = [v0 groupID];
  if (result)
  {
    v3 = result;
    v4 = sub_BD8B4();

    return v4;
  }

  return result;
}

void MessageServiceSession.requestTranscriptBackground(_:toIdentifier:fromIdentifier:messageIsFromStorage:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a1 && a3 && a5)
  {
    v13 = a1;
    v14 = sub_BD884();
    oslog = sub_BD884();
    [v6 _requestTranscriptBackground:v13 toIdentifier:v14 fromIdentifier:oslog messageIsFromStorage:a6 & 1];
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v15 = sub_BD7B4();
    sub_96A28(v15, qword_1244F8);

    v16 = a1;

    oslog = sub_BD794();
    v17 = sub_BDA84();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v18 = 138412802;
      *(v18 + 4) = v16;
      *v19 = a1;
      *(v18 + 12) = 2080;
      if (a3)
      {
        v20 = a3;
      }

      else
      {
        a2 = 0x3E6C696E3CLL;
        v20 = 0xE500000000000000;
      }

      v21 = v16;

      v22 = sub_96A60(a2, v20, &v26);

      *(v18 + 14) = v22;
      *(v18 + 22) = 2080;
      if (a5)
      {
        v23 = a5;
      }

      else
      {
        a4 = 0x3E6C696E3CLL;
        v23 = 0xE500000000000000;
      }

      v24 = sub_96A60(a4, v23, &v26);

      *(v18 + 24) = v24;
      _os_log_impl(&dword_0, oslog, v17, "Not requesting background for chat or identifier(s) are nil. chat: %@, toIdentifier: %s, fromIdentifier: %s.", v18, 0x20u);
      sub_75B0(v19, &qword_123E98, &unk_CEE80);

      swift_arrayDestroy();
    }
  }
}

void MessageServiceSession.requestTranscriptBackgroundIfNecessary(_:incomingVersion:toIdentifier:fromIdentifier:messageIsFromStorage:)(NSObject *a1, NSObject *a2, uint64_t a3, uint64_t a4, NSObject *a5, unint64_t a6, int a7)
{
  v103 = a7;
  v108 = a5;
  v109 = a2;
  v11 = sub_94950(&qword_123EF0, &unk_CE520);
  __chkstk_darwin(v11 - 8);
  v104 = &v94 - v12;
  v13 = sub_BD5F4();
  v105 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v101 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v102 = &v94 - v16;
  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v17 = sub_BD7B4();
  v18 = sub_96A28(v17, qword_1244F8);
  v19 = a1;

  v20 = sub_BD794();
  v21 = sub_BDA84();

  if (os_log_type_enabled(v20, v21))
  {
    v107 = v19;
    v96 = v18;
    v97 = v13;
    v22 = 0x3E6C696E3CLL;
    v23 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *&v112[0] = v95;
    *v23 = 134218754;
    *(v23 + 4) = v109;
    *(v23 + 12) = 2080;
    v24 = a4 == 0;
    v25 = a4;
    v26 = a1;
    v98 = a3;
    if (v24)
    {
      v27 = 0x3E6C696E3CLL;
    }

    else
    {
      v27 = a3;
    }

    v28 = 0xE500000000000000;
    if (v24)
    {
      v29 = 0xE500000000000000;
    }

    else
    {
      v29 = v25;
    }

    v99 = v25;

    v30 = sub_96A60(v27, v29, v112);

    *(v23 + 14) = v30;
    *(v23 + 22) = 2080;
    if (a6)
    {
      v31 = v108;
    }

    else
    {
      v31 = 0x3E6C696E3CLL;
    }

    if (a6)
    {
      v32 = a6;
    }

    else
    {
      v32 = 0xE500000000000000;
    }

    v100 = a6;

    v33 = sub_96A60(v31, v32, v112);
    a1 = v26;

    *(v23 + 24) = v33;
    *(v23 + 32) = 2080;
    if (v26)
    {
      v34 = [v107 description];
      v22 = sub_BD8B4();
      v28 = v35;
    }

    v36 = sub_96A60(v22, v28, v112);

    *(v23 + 34) = v36;
    _os_log_impl(&dword_0, v20, v21, "Asked to request background for chat if needed. incomingVersion: %llu, toIdentifier: %s, fromIdentifier: %s, chat: %s", v23, 0x2Au);
    swift_arrayDestroy();

    a6 = v100;
    a4 = v99;
    a3 = v98;
    v13 = v97;
    v19 = v107;
    if (!a1)
    {
LABEL_31:

      v51 = v19;
      v109 = sub_BD794();
      v52 = sub_BDA84();

      if (os_log_type_enabled(v109, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *&v112[0] = swift_slowAlloc();
        *v53 = 138412802;
        *(v53 + 4) = v51;
        *v54 = a1;
        *(v53 + 12) = 2080;
        if (a4)
        {
          v55 = a4;
        }

        else
        {
          a3 = 0x3E6C696E3CLL;
          v55 = 0xE500000000000000;
        }

        v56 = v51;
        v57 = sub_96A60(a3, v55, v112);

        *(v53 + 14) = v57;
        *(v53 + 22) = 2080;
        if (a6)
        {
          v58 = v108;
        }

        else
        {
          v58 = 0x3E6C696E3CLL;
        }

        if (!a6)
        {
          a6 = 0xE500000000000000;
        }

        v59 = sub_96A60(v58, a6, v112);

        *(v53 + 24) = v59;
        _os_log_impl(&dword_0, v109, v52, "Not requesting background for chat or identifier(s) are nil. chat: %@, toIdentifier: %s, fromIdentifier: %s.", v53, 0x20u);
        sub_75B0(v54, &qword_123E98, &unk_CEE80);

        swift_arrayDestroy();

        return;
      }

      goto LABEL_46;
    }
  }

  else
  {

    if (!a1)
    {
      goto LABEL_31;
    }
  }

  if (!a4 || !a6)
  {
    goto LABEL_31;
  }

  v37 = v19;
  v107 = [v37 transcriptBackgroundVersion];
  v38 = [v107 unsignedLongLongValue];
  if (v38 < v109)
  {
    v39 = [v37 guid];
    if (!v39)
    {
      goto LABEL_43;
    }

    v40 = v39;
    v41 = sub_BD8B4();
    v43 = v42;

    v44 = HIBYTE(v43) & 0xF;
    if ((v43 & 0x2000000000000000) == 0)
    {
      v44 = v41 & 0xFFFFFFFFFFFFLL;
    }

    if (v44)
    {
      v45 = sub_A4728();
      if (v46)
      {
        v47 = v45;
        v48 = v46;
        v49 = [v106 transcriptBackgroundMostRecentRequestDates];
        *&v110 = v47;
        *(&v110 + 1) = v48;
        v50 = [v49 __swift_objectForKeyedSubscript:sub_BDD44()];
        swift_unknownObjectRelease();

        if (v50)
        {
          sub_BDB24();
          swift_unknownObjectRelease();
        }

        else
        {
          v110 = 0u;
          v111 = 0u;
        }

        v74 = v104;
        v73 = v105;
        v112[0] = v110;
        v112[1] = v111;
        if (*(&v111 + 1))
        {
          v75 = swift_dynamicCast();
          (*(v73 + 56))(v74, v75 ^ 1u, 1, v13);
          if ((*(v73 + 48))(v74, 1, v13) != 1)
          {
            v76 = v102;
            (*(v73 + 32))(v102, v74, v13);
            v77 = v101;
            sub_BD5D4();
            sub_BD5B4();
            v79 = v78;
            v80 = v105 + 8;
            v81 = v77;
            v82 = *(v105 + 8);
            (v82)(v81, v13);
            if (v79 < sub_A8158())
            {
              v109 = v82;
              v105 = v80;
              v83 = v37;
              v84 = sub_BD794();
              v85 = sub_BDA84();

              if (os_log_type_enabled(v84, v85))
              {
                v86 = swift_slowAlloc();
                v87 = swift_slowAlloc();
                *v86 = 138412290;
                *(v86 + 4) = v83;
                *v87 = a1;
                v88 = v83;
                _os_log_impl(&dword_0, v84, v85, "Not requesting background for chat %@", v86, 0xCu);
                sub_75B0(v87, &qword_123E98, &unk_CEE80);

                v89 = v107;
              }

              else
              {
                v89 = v84;
                v84 = v107;
              }

              v93 = v102;

              (v109)(v93, v13);
              return;
            }

            (v82)(v76, v13);
LABEL_62:
            v90 = v37;
            v91 = sub_BD884();
            v92 = sub_BD884();
            [v106 requestTranscriptBackground:v90 toIdentifier:v91 fromIdentifier:v92 messageIsFromStorage:v103 & 1];

            return;
          }
        }

        else
        {
          sub_75B0(v112, &qword_123E88, qword_CE420);
          (*(v73 + 56))(v74, 1, 1, v13);
        }

        sub_75B0(v74, &qword_123EF0, &unk_CE520);
        goto LABEL_62;
      }

      v66 = v37;
      v67 = sub_BD794();
      v68 = sub_BDA84();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v66;
        *v70 = a1;
        v109 = v66;
        v71 = "Not requesting background for chat because its requestDateID is nil. Chat: %@";
        goto LABEL_45;
      }
    }

    else
    {
LABEL_43:
      v66 = v37;
      v67 = sub_BD794();
      v68 = sub_BDA84();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v66;
        *v70 = a1;
        v109 = v66;
        v71 = "Not requesting background for chat because its GUID is nil. Chat: %@";
LABEL_45:
        _os_log_impl(&dword_0, v67, v68, v71, v69, 0xCu);
        sub_75B0(v70, &qword_123E98, &unk_CEE80);

        goto LABEL_46;
      }
    }

    v72 = v107;
    goto LABEL_51;
  }

  v60 = v37;
  v61 = v107;
  v108 = sub_BD794();
  v62 = sub_BDA84();

  if (!os_log_type_enabled(v108, v62))
  {

    v72 = v108;
    goto LABEL_51;
  }

  v63 = swift_slowAlloc();
  v64 = swift_slowAlloc();
  *v63 = 138412802;
  *(v63 + 4) = v61;
  *(v63 + 12) = 2048;
  *(v63 + 14) = v109;
  *(v63 + 22) = 2112;
  *(v63 + 24) = v60;
  *v64 = v61;
  v64[1] = a1;
  v109 = v60;
  v65 = v61;
  _os_log_impl(&dword_0, v108, v62, "Not requesting background for chat because it has a newer version: %@. Incoming version: (%llu) Chat: %@.", v63, 0x20u);
  sub_94950(&qword_123E98, &unk_CEE80);
  swift_arrayDestroy();

LABEL_46:
  v72 = v109;
LABEL_51:
}

void MessageServiceSession.refetchChatBackgroundIfNeeded(forChatIdentifier:chatStyle:)(uint64_t a1, unint64_t a2, int a3)
{
  v6 = sub_BD7C4();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_BD7F4();
  v9 = *(v53 - 8);
  __chkstk_darwin(v53);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD7D4();
  v51 = *(v12 - 8);
  v52 = v12;
  __chkstk_darwin(v12);
  v50 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() sharedFeatureFlags];
  v15 = [v14 isTranscriptBackgroundsEnabled];

  if (v15)
  {
    LODWORD(v49) = a3;
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v16 = sub_BD7B4();
    v17 = sub_96A28(v16, qword_1244F8);

    v47 = v17;
    v18 = sub_BD794();
    v19 = sub_BDA84();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v48 = a1;
      v22 = v21;
      aBlock[0] = v21;
      *v20 = 136315138;
      v46 = v6;
      if (a2)
      {
        v23 = v48;
      }

      else
      {
        v23 = 0x3E6C696E3CLL;
      }

      v24 = v11;
      if (a2)
      {
        v25 = a2;
      }

      else
      {
        v25 = 0xE500000000000000;
      }

      v26 = sub_96A60(v23, v25, aBlock);
      v11 = v24;

      *(v20 + 4) = v26;
      v6 = v46;
      _os_log_impl(&dword_0, v18, v19, "Asked to refetch chat background for %s", v20, 0xCu);
      sub_97C9C(v22);
      a1 = v48;
    }

    v27 = v49;
    if (a2)
    {
      v28 = a2;
      v29 = sub_BD884();
      v30 = [v55 chatForChatIdentifier:v29 style:v27 updatingAccount:0];

      if (v30)
      {
        sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
        v32 = v50;
        v31 = v51;
        v33 = v52;
        (*(v51 + 104))(v50, enum case for DispatchQoS.QoSClass.background(_:), v52);
        v49 = sub_BDAC4();
        (*(v31 + 8))(v32, v33);
        v34 = v11;
        v35 = v9;
        v36 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;
        *(v37 + 24) = v30;
        aBlock[4] = sub_A9D7C;
        aBlock[5] = v37;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_AE028;
        aBlock[3] = &unk_114C80;
        v38 = _Block_copy(aBlock);

        v39 = v30;
        sub_BD7E4();
        v56 = _swiftEmptyArrayStorage;
        sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_94950(&qword_123F08, &qword_CE530);
        sub_A9D9C();
        sub_BDB34();
        v40 = v49;
        sub_BDAB4();
        _Block_release(v38);

        (*(v54 + 8))(v8, v6);
        (*(v35 + 8))(v34, v53);
      }

      else
      {

        v55 = sub_BD794();
        v41 = sub_BDA84();

        if (os_log_type_enabled(v55, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_96A60(a1, v28, aBlock);
          _os_log_impl(&dword_0, v55, v41, "Could not find chat for identifier: %s", v42, 0xCu);
          sub_97C9C(v43);
        }

        else
        {
          v44 = v55;
        }
      }
    }
  }
}

void sub_A6048(uint64_t a1, void *a2)
{
  v3 = sub_BD7C4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD7F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [a2 transcriptBackgroundPath];
    if (v13)
    {
      v14 = v13;
      v48 = v4;
      v15 = [objc_allocWithZone(NSURL) initWithString:v13];

      if (v15)
      {
        if ([v15 checkResourceIsReachableAndReturnError:0])
        {

          return;
        }

        v16 = [a2 transcriptBackgroundProperties];
        if (v16)
        {
          v47 = v15;
          v17 = v16;
          v18 = sub_BD844();

          sub_9CF94(v18);
          sub_AA724(v19, v66);
          if (sub_AB97C(v66) != 1)
          {
            v56 = v66[6];
            v57[0] = v67[0];
            *(v57 + 9) = *(v67 + 9);
            v52 = v66[2];
            v53 = v66[3];
            v54 = v66[4];
            v55 = v66[5];
            v50 = v66[0];
            v51 = v66[1];

            v64 = v56;
            v65[0] = v57[0];
            *(v65 + 9) = *(v57 + 9);
            v60 = v52;
            v61 = v53;
            v62 = v54;
            v63 = v55;
            v58 = v50;
            v59 = v51;
            sub_AB9A0(&v58);
            v74 = v64;
            v75[0] = v65[0];
            *(v75 + 9) = *(v65 + 9);
            v70 = v60;
            v71 = v61;
            v72 = v62;
            v73 = v63;
            v68 = v58;
            v69 = v59;
            sub_7610(0, &qword_123EF8, OS_dispatch_queue_ptr);
            v46 = sub_BDAA4();
            v36 = swift_allocObject();
            v37 = v72;
            *(v36 + 104) = v73;
            v38 = v75[0];
            *(v36 + 120) = v74;
            *(v36 + 136) = v38;
            *(v36 + 145) = *(v75 + 9);
            v39 = v68;
            *(v36 + 40) = v69;
            v40 = v71;
            *(v36 + 56) = v70;
            *(v36 + 72) = v40;
            *(v36 + 88) = v37;
            *(v36 + 16) = v12;
            *(v36 + 24) = v39;
            *(v36 + 168) = a2;
            v49[4] = sub_ABA5C;
            v49[5] = v36;
            v49[0] = _NSConcreteStackBlock;
            v49[1] = 1107296256;
            v49[2] = sub_AE028;
            v49[3] = &unk_115000;
            v41 = _Block_copy(v49);
            v42 = v12;
            v43 = a2;

            sub_BD7E4();
            v49[0] = _swiftEmptyArrayStorage;
            sub_AC3A8(&qword_123F00, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_94950(&qword_123F08, &qword_CE530);
            sub_A9D9C();
            sub_BDB34();
            v44 = v46;
            sub_BDAB4();
            _Block_release(v41);

            (*(v48 + 8))(v6, v3);
            (*(v8 + 8))(v10, v7);
            return;
          }

          if (qword_1244F0 != -1)
          {
            swift_once();
          }

          v20 = sub_BD7B4();
          sub_96A28(v20, qword_1244F8);

          v21 = sub_BD794();
          v22 = sub_BDA64();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            *&v68 = v24;
            *v23 = 136315138;
            v25 = sub_BD854();
            v27 = v26;

            v28 = sub_96A60(v25, v27, &v68);

            *(v23 + 4) = v28;
            _os_log_impl(&dword_0, v21, v22, "Could not get background refresh info for chat properties %s", v23, 0xCu);
            sub_97C9C(v24);
          }

          else
          {
          }
        }

        else
        {
          if (qword_1244F0 != -1)
          {
            swift_once();
          }

          v29 = sub_BD7B4();
          sub_96A28(v29, qword_1244F8);
          v30 = a2;
          v31 = sub_BD794();
          v32 = sub_BDA64();

          if (os_log_type_enabled(v31, v32))
          {
            v33 = swift_slowAlloc();
            v34 = swift_slowAlloc();
            *v33 = 138412290;
            *(v33 + 4) = v30;
            *v34 = v30;
            v35 = v30;
            _os_log_impl(&dword_0, v31, v32, "We have a background path but no background properties for chat %@. This should not be possible.", v33, 0xCu);
            sub_75B0(v34, &qword_123E98, &unk_CEE80);
          }
        }
      }
    }
  }
}

unint64_t sub_A67FC(uint64_t a1, unint64_t a2)
{
  sub_94950(&qword_123EE8, &qword_CE508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_CE490;
  *(inited + 32) = sub_BD8B4();
  *(inited + 72) = &type metadata for String;
  if (a2)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0xE000000000000000;
  if (a2)
  {
    v7 = a2;
  }

  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 56) = v7;

  v8 = sub_97980(inited);
  swift_setDeallocating();
  sub_75B0(inited + 32, &qword_123EC8, &unk_CE510);
  return v8;
}

uint64_t sub_A68D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_A69C8;

  return v6(a1);
}

uint64_t sub_A69C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_A6AC0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_BDB84();

    if (v9)
    {

      sub_7610(0, &qword_123F48, NSString_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_BDB74();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_A6CF8(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_A6EE8(v20 + 1);
    }

    v18 = v8;
    sub_A7110(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_7610(0, &qword_123F48, NSString_ptr);
  v11 = sub_BDAE4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_A7194(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_BDAF4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_A6CF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_94950(&qword_123F70, &qword_CE870);
    v2 = sub_BDBF4();
    v15 = v2;
    sub_BDB64();
    if (sub_BDB94())
    {
      sub_7610(0, &qword_123F48, NSString_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_A6EE8(v9 + 1);
        }

        v2 = v15;
        result = sub_BDAE4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_BDB94());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_A6EE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_94950(&qword_123F70, &qword_CE870);
  result = sub_BDBE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_BDAE4(*(v5 + 40));
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_A7110(uint64_t a1, void *a2)
{
  sub_BDAE4(a2[5]);
  result = sub_BDB54();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_A7194(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_A6EE8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_A7304();
      goto LABEL_12;
    }

    sub_A7454(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_BDAE4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_7610(0, &qword_123F48, NSString_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_BDAF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_BDD54();
  __break(1u);
}

id sub_A7304()
{
  v1 = v0;
  sub_94950(&qword_123F70, &qword_CE870);
  v2 = *v0;
  v3 = sub_BDBD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_A7454(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_94950(&qword_123F70, &qword_CE870);
  result = sub_BDBE4();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_BDAE4(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v25;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_A7668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_94950(&qword_123F60, &qword_CE858);
  v34 = v4;
  result = sub_BDCE4();
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

        swift_unknownObjectRetain();
      }

      sub_BDDC4();
      sub_BD8E4();
      result = sub_BDDE4();
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

void sub_A7910(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_94048(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_A7668(v16, a4 & 1);
      v11 = sub_94048(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_BDD64();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_A7A8C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    swift_unknownObjectRelease();
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_A7A8C()
{
  v1 = v0;
  sub_94950(&qword_123F60, &qword_CE858);
  v2 = *v0;
  v3 = sub_BDCD4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

double sub_A7BFC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_97D3C((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

void sub_A7C48(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_97D3C(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_94D98(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_75B0(v20, &qword_123F78, &qword_CE878);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_A7DA8(uint64_t result)
{
  if ((result - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    return 0;
  }

  return result;
}

uint64_t sub_A7DBC()
{
  v2 = *(sub_94950(&qword_123ED0, &unk_CE4D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_A7F18;

  return sub_98304(v9, v10, v11, v4, v0 + v3, v6, v7, v8);
}

uint64_t sub_A7F18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_A800C()
{
  v2 = *(sub_94950(&qword_123ED0, &unk_CE4D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = v0 + ((v3 + *(v2 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_AE02C;

  return sub_9B804(v9, v10, v11, v4, v0 + v3, v6, v7, v8);
}

double sub_A8158()
{
  v0 = IMFeatureFlagDomain;
  v1 = sub_BD884();
  v2 = IMGetDomainIntForKey();

  if (v2 < 1)
  {
    return 300.0;
  }

  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v3 = sub_BD7B4();
  sub_96A28(v3, qword_1244F8);
  v4 = sub_BD794();
  v5 = sub_BDA84();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v2;
    _os_log_impl(&dword_0, v4, v5, "Got a custom background request rate limit of %ld seconds", v6, 0xCu);
  }

  return v2;
}

uint64_t sub_A82A4(unint64_t a1, __n128 a2)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_7610(0, &qword_123F48, NSString_ptr);
    sub_AB6B0();
    result = sub_BDA34();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v5)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = sub_BDC34();
      }

      else
      {
        if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_A6AC0(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    sub_BDCC4();
  }

  v6 = result;
  v5 = sub_BDCC4();
  result = v6;
  if (v5)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_A83E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_123F60, &qword_CE858);
    v3 = sub_BDCF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_94048(v5, v6);
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

Swift::Int sub_A84E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_94950(&qword_123F58, &qword_CE850);
    v3 = sub_BDC04();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      sub_97D98(v6 + 40 * v4, v19);
      result = sub_BDBA4(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        sub_97D98(*(v3 + 48) + 40 * i, v18);
        v11 = sub_BDBB4();
        result = sub_97CE8(v18);
        if (v11)
        {
          sub_97CE8(v19);
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

uint64_t sub_A8648(void **a1)
{
  v2 = sub_BD8B4();
  v4 = v3;
  v6 = *a1;
  v5 = a1[1];
  v45 = &type metadata for String;
  v43 = v6;
  v44 = v5;

  sub_9CEC4(&v43, v2, v4);
  v7 = sub_BD8B4();
  v9 = v8;
  v11 = a1[2];
  v10 = a1[3];
  v45 = &type metadata for String;
  v43 = v11;
  v44 = v10;

  sub_9CEC4(&v43, v7, v9);
  v12 = sub_BD8B4();
  v14 = v13;
  v16 = a1[4];
  v15 = a1[5];
  v45 = &type metadata for String;
  v43 = v16;
  v44 = v15;

  sub_9CEC4(&v43, v12, v14);
  v17 = sub_BD8B4();
  v19 = v18;
  v21 = a1[6];
  v20 = a1[7];
  v45 = &type metadata for String;
  v43 = v21;
  v44 = v20;

  sub_9CEC4(&v43, v17, v19);
  v22 = sub_BD8B4();
  v24 = v23;
  v26 = a1[8];
  v25 = a1[9];
  v45 = &type metadata for String;
  v43 = v26;
  v44 = v25;

  sub_9CEC4(&v43, v22, v24);
  v27 = sub_BD8B4();
  v29 = v28;
  v30 = [objc_allocWithZone(NSNumber) initWithInteger:a1[10]];
  v31 = sub_7610(0, &qword_123EA0, NSNumber_ptr);
  v45 = v31;
  v43 = v30;
  sub_9CEC4(&v43, v27, v29);
  v32 = sub_BD8B4();
  v34 = v33;
  v35 = [objc_allocWithZone(NSNumber) initWithInteger:a1[11]];
  v45 = v31;
  v43 = v35;
  sub_9CEC4(&v43, v32, v34);
  v36 = sub_BD8B4();
  v37 = a1[12];
  v45 = &type metadata for UInt64;
  v43 = v37;
  sub_9CEC4(&v43, v36, v38);
  v39 = sub_BD8B4();
  v40 = a1[13];
  v45 = &type metadata for Int;
  v43 = v40;
  return sub_9CEC4(&v43, v39, v41);
}

__n128 sub_A88DC@<Q0>(uint64_t *__return_ptr a1@<X8>, id a2@<X0>)
{
  if (!a2 || (v4 = [a2 type]) == 0)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v17 = sub_BD7B4();
    sub_96A28(v17, qword_1244F8);
    v18 = sub_BD794();
    v19 = sub_BDA64();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Got blastdoorCommand with no type.", v20, 2u);
    }

    goto LABEL_15;
  }

  v5 = v4;
  v6 = [v4 type];
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 == &dword_0 + 1)
      {
        v7 = [v5 refresh];
        if (v7)
        {
          v8 = v7;
          v9 = [v7 backgroundVersion];

          v10 = [v5 refresh];
          if (v10)
          {
            v11 = v10;
            v197 = [v10 posterWasRemoved];

            v12 = [v5 refresh];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 transferId];

              v15 = sub_BD8B4();
              v191 = v16;
              v194 = v15;
            }

            else
            {
              v191 = 0;
              v194 = 0;
            }

            v59 = [v5 refresh];
            if (v59)
            {
              v60 = v59;
              v61 = [v59 ownerId];

              v62 = sub_BD8B4();
              v185 = v63;
              v188 = v62;
            }

            else
            {
              v185 = 0;
              v188 = 0;
            }

            v69 = [v5 refresh];
            if (v69)
            {
              v70 = v69;
              v71 = [v69 signature];

              v72 = sub_BD8B4();
              v179 = v73;
              v182 = v72;
            }

            else
            {
              v179 = 0;
              v182 = 0;
            }

            v79 = [v5 refresh];
            if (v79)
            {
              v80 = v79;
              v81 = [v79 requestURL];

              v82 = sub_BD8B4();
              v173 = v83;
              v176 = v82;
            }

            else
            {
              v173 = 0;
              v176 = 0;
            }

            v89 = [v5 refresh];
            if (v89)
            {
              v90 = v89;
              v91 = [v89 encryptionKey];

              v92 = sub_BD8B4();
              v167 = v93;
              v170 = v92;
            }

            else
            {
              v167 = 0;
              v170 = 0;
            }

            v200 = v9;
            v99 = [v5 refresh];
            if (v99)
            {
              v100 = v99;
              v101 = [v99 fileSize];

              v102 = v101 >> 63;
              v164 = v101 & ~(v101 >> 63);
            }

            else
            {
              v164 = 0;
              LOBYTE(v102) = 1;
            }

            v107 = [v5 refresh];
            if (v107)
            {
              v108 = v107;
              v109 = [v107 posterDataVersion];

              v110 = v109 >> 63;
              v111 = v109 & ~(v109 >> 63);
            }

            else
            {
              v111 = 0;
              LOBYTE(v110) = 1;
            }

            v117 = [v5 refresh];
            if (v117 && (v118 = v117, v119 = [v117 chatId], v118, v119))
            {
              v120 = sub_BD8B4();
              v122 = v121;
            }

            else
            {

              v120 = 0;
              v122 = 0;
            }

            LOBYTE(v219) = v102;
            LOBYTE(v211) = v110;
            *&v203 = v200;
            *(&v203 + 1) = v194;
            v204.n128_u64[0] = v191;
            v204.n128_u64[1] = v188;
            *&v205 = v185;
            *(&v205 + 1) = v182;
            *&v206 = v179;
            *(&v206 + 1) = v176;
            *&v207 = v173;
            *(&v207 + 1) = v170;
            *&v208 = v167;
            *(&v208 + 1) = v164;
            LOBYTE(v209) = v102;
            *(&v209 + 1) = v111;
            v210[0] = v110;
            *&v210[8] = v120;
            *&v210[16] = v122;
            v210[24] = v197;
            sub_AB9A0(&v203);
LABEL_120:
            v217 = v209;
            v218[0] = *v210;
            *(v218 + 9) = *&v210[9];
            v213 = v205;
            v214 = v206;
            v215 = v207;
            v216 = v208;
            v211 = v203;
            v212 = v204;
            MessageServiceSession.UpdateType.rawValue.getter();
            v225 = v217;
            v226[0] = v218[0];
            v58 = *(v218 + 9);
LABEL_121:
            *(v226 + 9) = v58;
            v221 = v213;
            v222 = v214;
            v223 = v215;
            v224 = v216;
            v219 = v211;
            v220 = v212;
            goto LABEL_17;
          }
        }

        if (qword_1244F0 != -1)
        {
          swift_once();
        }

        v51 = sub_BD7B4();
        sub_96A28(v51, qword_1244F8);
        v52 = sub_BD794();
        v53 = sub_BDA64();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_45;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "Got refresh blastdoorCommand with no backgroundVersion or posterWasRemoved flag.";
        goto LABEL_44;
      }

      goto LABEL_24;
    }

    v35 = [v5 update];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 backgroundVersion];

      v38 = [v5 update];
      if (v38)
      {
        v39 = v38;
        v199 = [v38 posterWasRemoved];

        v40 = [v5 update];
        if (v40)
        {
          v41 = v40;
          v42 = [v40 transferId];

          v43 = sub_BD8B4();
          v193 = v44;
          v196 = v43;
        }

        else
        {
          v193 = 0;
          v196 = 0;
        }

        v129 = [v5 update];
        if (v129)
        {
          v130 = v129;
          v131 = [v129 ownerId];

          v132 = sub_BD8B4();
          v187 = v133;
          v190 = v132;
        }

        else
        {
          v187 = 0;
          v190 = 0;
        }

        v134 = [v5 update];
        if (v134)
        {
          v135 = v134;
          v136 = [v134 signature];

          v137 = sub_BD8B4();
          v181 = v138;
          v184 = v137;
        }

        else
        {
          v181 = 0;
          v184 = 0;
        }

        v139 = [v5 update];
        if (v139)
        {
          v140 = v139;
          v141 = [v139 requestURL];

          v142 = sub_BD8B4();
          v175 = v143;
          v178 = v142;
        }

        else
        {
          v175 = 0;
          v178 = 0;
        }

        v144 = [v5 update];
        if (v144)
        {
          v145 = v144;
          v146 = [v144 encryptionKey];

          v147 = sub_BD8B4();
          v169 = v148;
          v172 = v147;
        }

        else
        {
          v169 = 0;
          v172 = 0;
        }

        v202 = v37;
        v149 = [v5 update];
        if (v149)
        {
          v150 = v149;
          v151 = [v149 fileSize];

          v152 = v151 >> 63;
          v166 = v151 & ~(v151 >> 63);
        }

        else
        {
          v166 = 0;
          LOBYTE(v152) = 1;
        }

        v153 = [v5 update];
        if (v153)
        {
          v154 = v153;
          v155 = [v153 posterDataVersion];

          v156 = v155 >> 63;
          v157 = v155 & ~(v155 >> 63);
        }

        else
        {
          v157 = 0;
          LOBYTE(v156) = 1;
        }

        v158 = [v5 update];
        if (v158 && (v159 = v158, v160 = [v158 chatId], v159, v160))
        {
          v161 = sub_BD8B4();
          v163 = v162;
        }

        else
        {

          v161 = 0;
          v163 = 0;
        }

        LOBYTE(v219) = v152;
        LOBYTE(v211) = v156;
        *&v203 = v202;
        *(&v203 + 1) = v196;
        v204.n128_u64[0] = v193;
        v204.n128_u64[1] = v190;
        *&v205 = v187;
        *(&v205 + 1) = v184;
        *&v206 = v181;
        *(&v206 + 1) = v178;
        *&v207 = v175;
        *(&v207 + 1) = v172;
        *&v208 = v169;
        *(&v208 + 1) = v166;
        LOBYTE(v209) = v152;
        *(&v209 + 1) = v157;
        v210[0] = v156;
        *&v210[8] = v161;
        *&v210[16] = v163;
        v210[24] = v199;
        sub_ACF08(&v203);
        goto LABEL_120;
      }
    }

    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v57 = sub_BD7B4();
    sub_96A28(v57, qword_1244F8);
    v52 = sub_BD794();
    v53 = sub_BDA64();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_45;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Got update blastdoorCommand with no backgroundVersion or posterWasRemoved flag.";
LABEL_44:
    _os_log_impl(&dword_0, v52, v53, v55, v54, 2u);

LABEL_45:

    goto LABEL_16;
  }

  if (v6 == &dword_0 + 2)
  {
    v45 = [v5 request];
    if (v45 && (v46 = v45, v47 = [v45 chatId], v46, v47))
    {
      v48 = sub_BD8B4();
      v50 = v49;
    }

    else
    {

      v48 = 0;
      v50 = 0;
    }

    *&v203 = v48;
    *(&v203 + 1) = v50;
    sub_ACEDC(&v203);
    v217 = v209;
    v218[0] = *v210;
    *(v218 + 9) = *&v210[9];
    v213 = v205;
    v214 = v206;
    v215 = v207;
    v216 = v208;
    v211 = v203;
    v212 = v204;
    MessageServiceSession.UpdateType.rawValue.getter();
    v225 = v217;
    v226[0] = v218[0];
    v58 = *(v218 + 9);
    goto LABEL_121;
  }

  if (v6 == &dword_0 + 3)
  {
    v25 = [v5 requestResponse];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 backgroundVersion];

      v28 = [v5 requestResponse];
      if (v28)
      {
        v29 = v28;
        v198 = [v28 posterWasRemoved];

        v30 = [v5 requestResponse];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 transferId];

          v33 = sub_BD8B4();
          v192 = v34;
          v195 = v33;
        }

        else
        {
          v192 = 0;
          v195 = 0;
        }

        v64 = [v5 requestResponse];
        if (v64)
        {
          v65 = v64;
          v66 = [v64 ownerId];

          v67 = sub_BD8B4();
          v186 = v68;
          v189 = v67;
        }

        else
        {
          v186 = 0;
          v189 = 0;
        }

        v74 = [v5 requestResponse];
        if (v74)
        {
          v75 = v74;
          v76 = [v74 signature];

          v77 = sub_BD8B4();
          v180 = v78;
          v183 = v77;
        }

        else
        {
          v180 = 0;
          v183 = 0;
        }

        v84 = [v5 requestResponse];
        if (v84)
        {
          v85 = v84;
          v86 = [v84 requestURL];

          v87 = sub_BD8B4();
          v174 = v88;
          v177 = v87;
        }

        else
        {
          v174 = 0;
          v177 = 0;
        }

        v94 = [v5 requestResponse];
        if (v94)
        {
          v95 = v94;
          v96 = [v94 encryptionKey];

          v97 = sub_BD8B4();
          v168 = v98;
          v171 = v97;
        }

        else
        {
          v168 = 0;
          v171 = 0;
        }

        v201 = v27;
        v103 = [v5 requestResponse];
        if (v103)
        {
          v104 = v103;
          v105 = [v103 fileSize];

          v106 = v105 >> 63;
          v165 = v105 & ~(v105 >> 63);
        }

        else
        {
          v165 = 0;
          LOBYTE(v106) = 1;
        }

        v112 = [v5 requestResponse];
        if (v112)
        {
          v113 = v112;
          v114 = [v112 posterDataVersion];

          v115 = v114 >> 63;
          v116 = v114 & ~(v114 >> 63);
        }

        else
        {
          v116 = 0;
          LOBYTE(v115) = 1;
        }

        v123 = [v5 requestResponse];
        if (v123 && (v124 = v123, v125 = [v123 chatId], v124, v125))
        {
          v126 = sub_BD8B4();
          v128 = v127;
        }

        else
        {

          v126 = 0;
          v128 = 0;
        }

        LOBYTE(v219) = v106;
        LOBYTE(v211) = v115;
        *&v203 = v201;
        *(&v203 + 1) = v195;
        v204.n128_u64[0] = v192;
        v204.n128_u64[1] = v189;
        *&v205 = v186;
        *(&v205 + 1) = v183;
        *&v206 = v180;
        *(&v206 + 1) = v177;
        *&v207 = v174;
        *(&v207 + 1) = v171;
        *&v208 = v168;
        *(&v208 + 1) = v165;
        LOBYTE(v209) = v106;
        *(&v209 + 1) = v116;
        v210[0] = v115;
        *&v210[8] = v126;
        *&v210[16] = v128;
        v210[24] = v198;
        sub_ACEB0(&v203);
        goto LABEL_120;
      }
    }

    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v56 = sub_BD7B4();
    sub_96A28(v56, qword_1244F8);
    v52 = sub_BD794();
    v53 = sub_BDA64();
    if (!os_log_type_enabled(v52, v53))
    {
      goto LABEL_45;
    }

    v54 = swift_slowAlloc();
    *v54 = 0;
    v55 = "Got request response blastdoorCommand with no backgroundVersion or posterWasRemoved flag.";
    goto LABEL_44;
  }

LABEL_24:

LABEL_15:
  v5 = a2;
LABEL_16:

  sub_ACE88(&v219);
LABEL_17:
  v21 = v226[0];
  *(a1 + 6) = v225;
  *(a1 + 7) = v21;
  *(a1 + 121) = *(v226 + 9);
  v22 = v222;
  *(a1 + 2) = v221;
  *(a1 + 3) = v22;
  v23 = v224;
  *(a1 + 4) = v223;
  *(a1 + 5) = v23;
  result = v220;
  *a1 = v219;
  *(a1 + 1) = result;
  return result;
}

uint64_t sub_A9758(uint64_t a1)
{
  if ((*(a1 + 96) >> 1) > 0x80000000)
  {
    return -(*(a1 + 96) >> 1);
  }

  else
  {
    return 0;
  }
}

void sub_A977C(unint64_t a1, __n128 a2)
{
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_BDCC4())
    {
LABEL_3:
      sub_94950(&qword_123F70, &qword_CE870);
      v4 = sub_BDC04();
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v3)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = sub_BDCC4();
      if (!v6)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v4 = &_swiftEmptySetSingleton;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = *(v5 + 16);
  if (!v6)
  {
    return;
  }

LABEL_9:
  v7 = (v4 + 7);
  v39 = v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    while (1)
    {
      v9 = sub_BDC34();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        break;
      }

      v11 = v9;
      v12 = sub_BDAE4(v4[5]);
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *&v7[8 * (v14 >> 6)];
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_7610(0, &qword_123F48, NSString_ptr);
        while (1)
        {
          v19 = *(v4[6] + 8 * v14);
          v20 = sub_BDAF4();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *&v7[8 * (v14 >> 6)];
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v6 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v6 = v39;
        if (v8 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v7[8 * v15] = v17 | v16;
        *(v4[6] + 8 * v14) = v11;
        v21 = v4[2];
        v10 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v10)
        {
          goto LABEL_33;
        }

        v4[2] = v22;
        if (v8 == v6)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = a1 + 32;
    v38 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v23 != v38)
    {
      v24 = v4[5];
      v25 = *(v37 + 8 * v23);
      v26 = sub_BDAE4(v24);
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *&v7[8 * (v28 >> 6)];
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_7610(0, &qword_123F48, NSString_ptr);
        do
        {
          v33 = *(v4[6] + 8 * v28);
          v34 = sub_BDAF4();

          if (v34)
          {

            v6 = v39;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *&v7[8 * (v28 >> 6)];
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v6 = v39;
      }

      *&v7[8 * v29] = v31 | v30;
      *(v4[6] + 8 * v28) = v25;
      v35 = v4[2];
      v10 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v10)
      {
        goto LABEL_35;
      }

      v4[2] = v36;
LABEL_23:
      if (++v23 == v6)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_A9A6C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_A7C48(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_94D98(v44, v42);
  v14 = *a5;
  result = sub_94048(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_970F0(v20, a4 & 1);
    result = sub_94048(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_BDD64();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_977DC();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_97C9C(v25);
    sub_94D98(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_94D98(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_A7C48(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_94D98(v44, v42);
        v32 = *a5;
        result = sub_94048(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_970F0(v36, 1);
          result = sub_94048(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_97C9C(v31);
          sub_94D98(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_94D98(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_A7C48(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_75A8(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_A9D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_A9D9C()
{
  result = qword_123F10;
  if (!qword_123F10)
  {
    sub_A9E00(&qword_123F08, &qword_CE530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F10);
  }

  return result;
}

uint64_t sub_A9E00(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_A9E48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v66 = a4;
  v65 = a3;
  v64 = a2;
  v9 = sub_94950(&qword_123EF0, &unk_CE520);
  __chkstk_darwin(v9 - 8);
  v11 = &v61 - v10;
  v12 = sub_BD5F4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = sub_A4728();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
    v62 = a5;
    v63 = a1;
    v67 = v6;
    v23 = [v6 transcriptBackgroundMostRecentRequestDates];
    v61 = v21;
    *&v68 = v21;
    *(&v68 + 1) = v22;

    v24 = [v23 __swift_objectForKeyedSubscript:sub_BDD44()];
    swift_unknownObjectRelease();

    if (v24)
    {
      sub_BDB24();
      swift_unknownObjectRelease();
    }

    else
    {
      v69 = 0u;
      v68 = 0u;
    }

    v70[0] = v68;
    v70[1] = v69;
    v32 = v67;
    if (*(&v69 + 1))
    {
      v33 = swift_dynamicCast();
      (*(v13 + 56))(v11, v33 ^ 1u, 1, v12);
      v34 = (*(v13 + 48))(v11, 1, v12);
      v35 = v62;
      if (v34 != 1)
      {
        (*(v13 + 32))(v18, v11, v12);
        sub_BD5D4();
        sub_BD5B4();
        v37 = v36;
        v38 = *(v13 + 8);
        v38(v16, v12);
        if (v37 < sub_A8158())
        {

          if (qword_1244F0 != -1)
          {
            swift_once();
          }

          v39 = sub_BD7B4();
          sub_96A28(v39, qword_1244F8);
          v40 = v63;
          v41 = sub_BD794();
          v42 = sub_BDA84();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v43 = 138412290;
            *(v43 + 4) = v40;
            *v44 = v40;
            v45 = v40;
            _os_log_impl(&dword_0, v41, v42, "Not requesting background for chat %@", v43, 0xCu);
            sub_75B0(v44, &qword_123E98, &unk_CEE80);
          }

          v38(v18, v12);
          return;
        }

        v38(v18, v12);
        goto LABEL_22;
      }
    }

    else
    {
      sub_75B0(v70, &qword_123E88, qword_CE420);
      (*(v13 + 56))(v11, 1, 1, v12);
      v35 = v62;
    }

    sub_75B0(v11, &qword_123EF0, &unk_CE520);
LABEL_22:
    sub_94950(&qword_123EE8, &qword_CE508);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_CE490;
    *(inited + 32) = sub_BD8B4();
    *(inited + 72) = &type metadata for Int;
    *(inited + 40) = v47;
    *(inited + 48) = 3;
    v48 = sub_97980(inited);
    swift_setDeallocating();
    sub_75B0(inited + 32, &qword_123EC8, &unk_CE510);
    v49 = [v32 transcriptBackgroundMostRecentRequestDates];
    sub_BD5D4();
    isa = sub_BD5C4().super.isa;
    (*(v13 + 8))(v16, v12);
    *&v70[0] = v61;
    *(&v70[0] + 1) = v22;
    [v49 __swift_setObject:isa forKeyedSubscript:sub_BDD44()];

    swift_unknownObjectRelease();
    v51 = v64;
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v52 = sub_BD7B4();
    sub_96A28(v52, qword_1244F8);
    v53 = v65;

    v54 = sub_BD794();
    v55 = sub_BDA84();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *&v70[0] = v57;
      *v56 = 136315138;
      *(v56 + 4) = sub_96A60(v51, v53, v70);
      _os_log_impl(&dword_0, v54, v55, "About to send background request to %s.", v56, 0xCu);
      sub_97C9C(v57);
    }

    sub_94950(&qword_123F28, &qword_CE828);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_CE4B0;
    *(v58 + 32) = sub_BD884();
    v60 = sub_A82A4(v58, v59);
    swift_setDeallocating();
    swift_arrayDestroy();
    sub_9ED4C(v48, v60, v63, v66, v35, 0);

    return;
  }

  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v25 = sub_BD7B4();
  sub_96A28(v25, qword_1244F8);
  v26 = a1;
  v67 = sub_BD794();
  v27 = sub_BDA84();

  if (os_log_type_enabled(v67, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    *(v28 + 4) = v26;
    *v29 = v26;
    v30 = v26;
    _os_log_impl(&dword_0, v67, v27, "Not requesting background for chat because its requestDateID is nil. Chat: %@", v28, 0xCu);
    sub_75B0(v29, &qword_123E98, &unk_CEE80);
  }

  v31 = v67;
}

__n128 sub_AA724@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = sub_BD8B4();
  v80 = v4;
  sub_BDBC4();
  if (*(a1 + 16) && (v5 = sub_97008(&v82), (v6 & 1) != 0))
  {
    sub_97D3C(*(a1 + 56) + 32 * v5, &v71);
    sub_97CE8(&v82);
    sub_7610(0, &qword_123EA0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v7 = v79;
      v70 = [v79 unsignedLongLongValue];

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v8;
      sub_BDBC4();
      if (*(a1 + 16) && (v9 = sub_97008(&v82), (v10 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v9, &v71);
        sub_97CE8(&v82);
        v11 = swift_dynamicCast();
        if (v11)
        {
          v12 = v79;
        }

        else
        {
          v12 = 0;
        }

        if (v11)
        {
          v13 = v80;
        }

        else
        {
          v13 = 0;
        }

        v68 = v13;
        v69 = v12;
      }

      else
      {
        sub_97CE8(&v82);
        v68 = 0;
        v69 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v27;
      sub_BDBC4();
      if (*(a1 + 16) && (v28 = sub_97008(&v82), (v29 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v28, &v71);
        sub_97CE8(&v82);
        v30 = swift_dynamicCast();
        if (v30)
        {
          v31 = v79;
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v80;
        }

        else
        {
          v32 = 0;
        }

        v66 = v32;
        v67 = v31;
      }

      else
      {
        sub_97CE8(&v82);
        v66 = 0;
        v67 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v33;
      sub_BDBC4();
      if (*(a1 + 16) && (v34 = sub_97008(&v82), (v35 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v34, &v71);
        sub_97CE8(&v82);
        v36 = swift_dynamicCast();
        if (v36)
        {
          v37 = v79;
        }

        else
        {
          v37 = 0;
        }

        if (v36)
        {
          v38 = v80;
        }

        else
        {
          v38 = 0;
        }

        v64 = v38;
        v65 = v37;
      }

      else
      {
        sub_97CE8(&v82);
        v64 = 0;
        v65 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v39;
      sub_BDBC4();
      if (*(a1 + 16) && (v40 = sub_97008(&v82), (v41 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v40, &v71);
        sub_97CE8(&v82);
        v42 = swift_dynamicCast();
        v43 = v79;
        if (!v42)
        {
          v43 = 0;
        }

        v63 = v43;
        if (v42)
        {
          v44 = v80;
        }

        else
        {
          v44 = 0;
        }
      }

      else
      {
        sub_97CE8(&v82);
        v63 = 0;
        v44 = 0;
      }

      *&v71 = sub_BD8B4();
      *(&v71 + 1) = v45;
      sub_BDBC4();
      if (*(a1 + 16) && (v46 = sub_97008(&v82), (v47 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v46, &v71);
        sub_97CE8(&v82);
        v48 = swift_dynamicCast();
        if (v48)
        {
          v49 = v79;
        }

        else
        {
          v49 = 0;
        }

        if (v48)
        {
          v50 = v80;
        }

        else
        {
          v50 = 0;
        }
      }

      else
      {
        sub_97CE8(&v82);
        v49 = 0;
        v50 = 0;
      }

      v79 = sub_BD8B4();
      v80 = v51;
      sub_BDBC4();
      if (*(a1 + 16) && (v52 = sub_97008(&v82), (v53 & 1) != 0))
      {
        sub_97D3C(*(a1 + 56) + 32 * v52, &v71);
        sub_97CE8(&v82);
        if (swift_dynamicCast())
        {
          v54 = v79;
          v55 = [v79 unsignedIntegerValue];

          v56 = 0;
LABEL_65:
          v81 = v56;
          v79 = sub_BD8B4();
          v80 = v57;
          sub_BDBC4();
          if (*(a1 + 16) && (v58 = sub_97008(&v82), (v59 & 1) != 0))
          {
            sub_97D3C(*(a1 + 56) + 32 * v58, &v71);
            sub_97CE8(&v82);

            if (swift_dynamicCast())
            {
              v60 = v79;
              v61 = [v79 unsignedIntegerValue];

              v62 = 0;
LABEL_71:
              LOBYTE(v79) = v62;
              *&v71 = v70;
              *(&v71 + 1) = v69;
              v72.n128_u64[0] = v68;
              v72.n128_u64[1] = v67;
              *&v73 = v66;
              *(&v73 + 1) = v65;
              *&v74 = v64;
              *(&v74 + 1) = v63;
              *&v75 = v44;
              *(&v75 + 1) = v49;
              *&v76 = v50;
              *(&v76 + 1) = v55;
              LOBYTE(v77) = v81;
              *(&v77 + 1) = v61;
              LOBYTE(v78[0]) = v62;
              memset(v78 + 8, 0, 17);
              MessageServiceSession.UpdateType.rawValue.getter();
              v88 = v77;
              v89[0] = v78[0];
              *(v89 + 9) = *(v78 + 9);
              v84 = v73;
              v85 = v74;
              v86 = v75;
              v87 = v76;
              v82 = v71;
              v83 = v72;
              goto LABEL_20;
            }
          }

          else
          {

            sub_97CE8(&v82);
          }

          v61 = 0;
          v62 = 1;
          goto LABEL_71;
        }
      }

      else
      {
        sub_97CE8(&v82);
      }

      v55 = 0;
      v56 = 1;
      goto LABEL_65;
    }
  }

  else
  {
    sub_97CE8(&v82);
  }

  if (qword_1244F0 != -1)
  {
    swift_once();
  }

  v14 = sub_BD7B4();
  sub_96A28(v14, qword_1244F8);

  v15 = sub_BD794();
  v16 = sub_BDA64();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v82 = v18;
    *v17 = 136315138;
    v19 = sub_BD854();
    v21 = v20;

    v22 = sub_96A60(v19, v21, &v82);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_0, v15, v16, "Found no background version in chat properties %s.", v17, 0xCu);
    sub_97C9C(v18);
  }

  else
  {
  }

  sub_AB948(&v82);
LABEL_20:
  v23 = v89[0];
  *(a2 + 96) = v88;
  *(a2 + 112) = v23;
  *(a2 + 121) = *(v89 + 9);
  v24 = v85;
  *(a2 + 32) = v84;
  *(a2 + 48) = v24;
  v25 = v87;
  *(a2 + 64) = v86;
  *(a2 + 80) = v25;
  result = v83;
  *a2 = v82;
  *(a2 + 16) = result;
  return result;
}

unint64_t sub_AAEE4()
{
  result = qword_123F18;
  if (!qword_123F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F18);
  }

  return result;
}

__n128 sub_AAF48(uint64_t a1, __int128 *a2)
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

uint64_t sub_AAF6C(uint64_t a1, int a2)
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

uint64_t sub_AAFB4(uint64_t result, int a2, int a3)
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

__n128 sub_AB02C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_AB060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96) >> 1;
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

double sub_AB0B0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 136) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 137) = 1;
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
      result = 0.0;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 96) = 2 * -a2;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      *(a1 + 136) = 0;
      return result;
    }

    *(a1 + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_AB134(uint64_t result, char a2)
{
  v2 = *(result + 112) & 1;
  v3 = *(result + 136) & 1 | (a2 << 6);
  *(result + 96) &= 1uLL;
  *(result + 112) = v2;
  *(result + 136) = v3;
  return result;
}

uint64_t sub_AB170(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 137))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_AB1CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_AB254(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_AB260(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_AB2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

void type metadata accessor for IMChatStyle()
{
  if (!qword_123F20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_123F20);
    }
  }
}

uint64_t sub_AB36C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_AB3C0(uint64_t a1, uint64_t a2, char a3, int a4)
{
  if (a3)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v4 = sub_BD7B4();
    sub_96A28(v4, qword_1244F8);

    oslog = sub_BD794();
    v5 = sub_BDA84();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      sub_7610(0, &qword_123F48, NSString_ptr);
      sub_AB6B0();
      v8 = sub_BDA24();
      v10 = sub_96A60(v8, v9, &v20);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_0, oslog, v5, "Successfully sent background to participants: %s.", v6, 0xCu);
      sub_97C9C(v7);

LABEL_10:

      return;
    }
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v12 = sub_BD7B4();
    sub_96A28(v12, qword_1244F8);

    oslog = sub_BD794();
    v13 = sub_BDA84();

    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136315394;
      sub_7610(0, &qword_123F48, NSString_ptr);
      sub_AB6B0();
      v16 = sub_BDA24();
      v18 = sub_96A60(v16, v17, &v20);

      *(v14 + 4) = v18;
      *(v14 + 12) = 1024;
      *(v14 + 14) = a4;
      _os_log_impl(&dword_0, oslog, v13, "Error while sending background to participants: %s. Error: %u", v14, 0x12u);
      sub_97C9C(v15);

      goto LABEL_10;
    }
  }
}

unint64_t sub_AB6B0()
{
  result = qword_123F50;
  if (!qword_123F50)
  {
    sub_7610(255, &qword_123F48, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123F50);
  }

  return result;
}

void sub_AB718(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5 = *(v4 + 16);
  if (a3)
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v6 = sub_BD7B4();
    sub_96A28(v6, qword_1244F8);
    v7 = v5;
    oslog = sub_BD794();
    v8 = sub_BDA84();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v7;
      *v10 = v7;
      v11 = v7;
      v12 = "Successfully sent background to peer devices: %@.";
      v13 = v8;
      v14 = oslog;
      v15 = v9;
      v16 = 12;
LABEL_10:
      _os_log_impl(&dword_0, v14, v13, v12, v15, v16);
      sub_75B0(v10, &qword_123E98, &unk_CEE80);
    }
  }

  else
  {
    if (qword_1244F0 != -1)
    {
      swift_once();
    }

    v18 = sub_BD7B4();
    sub_96A28(v18, qword_1244F8);
    v19 = v5;
    oslog = sub_BD794();
    v20 = sub_BDA84();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v19;
      *v10 = v19;
      *(v21 + 12) = 1024;
      *(v21 + 14) = a4;
      v22 = v19;
      v12 = "Error while sending background to peer devices: %@. Error: %u";
      v13 = v20;
      v14 = oslog;
      v15 = v21;
      v16 = 18;
      goto LABEL_10;
    }
  }
}