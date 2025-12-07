uint64_t sub_100064734(char a1)
{
  v4 = *v2;
  *(*v2 + 800) = v1;

  if (v1)
  {

    v5 = sub_100069250;
  }

  else
  {
    *(v4 + 877) = a1 & 1;

    v5 = sub_100064890;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100064890()
{
  v17 = v0;
  sub_100070B00(*(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
  *(v0 + 878) = *(v0 + 877);
  sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 416);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_100070B00(v4, type metadata accessor for CustodianRecord);
    v10 = sub_10021145C(v7, v9, &v16);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Checking if setup finalized from server for custodianID: %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  else
  {

    sub_100070B00(v4, type metadata accessor for CustodianRecord);
  }

  v11 = *(v0 + 472);
  v12 = *(v0 + 176);
  v13 = swift_task_alloc();
  *(v0 + 808) = v13;
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  *(v0 + 816) = v14;
  *v14 = v0;
  v14[1] = sub_100064B38;

  return sub_1000699F4(0xD000000000000015, 0x800000010032D620, &unk_10033F4D0, v13);
}

uint64_t sub_100064B38(char a1)
{
  v4 = *v2;
  *(*v2 + 824) = v1;

  if (v1)
  {

    v5 = sub_1000694B8;
  }

  else
  {
    *(v4 + 879) = a1 & 1;

    v5 = sub_100064C94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100064C94()
{
  v25 = v0;
  sub_100008D3C(*(v0 + 280), &unk_1003D91B0, qword_1003444F0);
  v1 = *(v0 + 879);
  v2 = *(v0 + 878);
  v3 = *(v0 + 752);
  *(v0 + 881) = v2;
  *(v0 + 880) = v1;
  *(v0 + 832) = v3;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109376;
    *(v6 + 4) = v2;
    *(v6 + 8) = 1024;
    *(v6 + 10) = v1;
    _os_log_impl(&_mh_execute_header, v4, v5, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v6, 0xEu);
  }

  v7 = *(v0 + 472);
  v8 = *(v0 + 408);

  sub_100070E78(v7, v8, type metadata accessor for CustodianRecord);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 408);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    sub_100070B00(v12, type metadata accessor for CustodianRecord);
    v18 = sub_10021145C(v15, v17, &v24);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, " Checking if CRK exist at security layer for custodianID: %s", v13, 0xCu);
    sub_10000839C(v14);
  }

  else
  {

    sub_100070B00(v12, type metadata accessor for CustodianRecord);
  }

  v19 = *(v0 + 472);
  v20 = *(v0 + 176);
  v21 = swift_task_alloc();
  *(v0 + 840) = v21;
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  v22 = swift_task_alloc();
  *(v0 + 848) = v22;
  *v22 = v0;
  v22[1] = sub_100064FE4;

  return sub_1000699F4(0x4B432D6B63656863, 0xEF74736978652D52, &unk_10033F4B8, v21);
}

uint64_t sub_100064FE4(char a1)
{
  v3 = *v2;
  *(v3 + 882) = a1;
  *(v3 + 856) = v1;

  if (v1)
  {
    v4 = sub_100066654;
  }

  else
  {

    v4 = sub_100065104;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100065104()
{
  v152 = v0;
  sub_100070E78(*(v0 + 472), *(v0 + 400), type metadata accessor for CustodianRecord);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 882);
    v4 = *(v0 + 400);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v151[0] = v6;
    *v5 = 67109378;
    *(v5 + 4) = v3;
    *(v5 + 8) = 2080;
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = v8;
    sub_100070B00(v4, type metadata accessor for CustodianRecord);
    v10 = sub_10021145C(v7, v9, v151);

    *(v5 + 10) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "is CRK exist at security layer: %{BOOL}d, for custodianID: %s", v5, 0x12u);
    sub_10000839C(v6);
  }

  else
  {
    v11 = *(v0 + 400);

    sub_100070B00(v11, type metadata accessor for CustodianRecord);
  }

  v12 = *(v0 + 882);
  v13 = *(v0 + 472);
  v14 = *(v0 + 392);
  v15 = UUID.uuidString.getter();
  v17 = sub_100070F9C(v15, v16);

  v18 = v12 & ~v17 & 1;
  sub_100070E78(v13, v14, type metadata accessor for CustodianRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 882);
    v22 = *(v0 + 392);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v151[0] = v24;
    *v23 = 134218754;
    *(v23 + 4) = v18;
    *(v23 + 12) = 1024;
    *(v23 + 14) = v21;
    *(v23 + 18) = 1024;
    *(v23 + 20) = v17 & 1;
    *(v23 + 24) = 2080;
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    sub_100070B00(v22, type metadata accessor for CustodianRecord);
    v28 = sub_10021145C(v25, v27, v151);

    *(v23 + 26) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Final preflight status - %ld, after comparing CRK status(isExist: %{BOOL}d and last preflight run status(isFailed: %{BOOL}d), for custodianID: %s", v23, 0x22u);
    sub_10000839C(v24);
  }

  else
  {
    v29 = *(v0 + 392);

    sub_100070B00(v29, type metadata accessor for CustodianRecord);
  }

  v30 = *(v0 + 881);
  v31 = *(v0 + 880);
  v32 = *(v0 + 472);
  v33 = *(v0 + 384);
  sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);
  sub_100070E78(v32, v33, type metadata accessor for CustodianRecord);
  sub_10005E9A0(v33, v30, v31, v18);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v34 = *(v0 + 576);
  v35 = *(v0 + 472);
  v36 = *(v0 + 768) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v37 = *(v0 + 152);
  result = sub_100070B00(v35, type metadata accessor for CustodianRecord);
  if (v36 == v34)
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v151[0] = v42;
      *v41 = 136315138;

      v43 = Array.description.getter();
      v45 = v44;

      v46 = sub_10021145C(v43, v45, v151);

      *(v41 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v39, v40, "Returning trusted contacts after checking with server statuses: %s", v41, 0xCu);
      sub_10000839C(v42);
    }

    else
    {
    }

    v67 = *(v0 + 8);

    return v67(v37);
  }

  else
  {
    v47 = *(v0 + 832);
    v48 = *(v0 + 768) + 1;
    *(v0 + 776) = v37;
    *(v0 + 768) = v48;
    v49 = *(v0 + 560);
    if (v48 >= *(v49 + 16))
    {
      __break(1u);
    }

    else
    {
      v51 = *(v0 + 464);
      v50 = *(v0 + 472);
      v53 = *(v0 + 448);
      v52 = *(v0 + 456);
      sub_100070E78(v49 + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v48, v50, type metadata accessor for CustodianRecord);
      sub_100070E78(v50, v51, type metadata accessor for CustodianRecord);
      sub_100070E78(v50, v52, type metadata accessor for CustodianRecord);
      sub_100070E78(v50, v53, type metadata accessor for CustodianRecord);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = *(v0 + 456);
      v58 = *(v0 + 464);
      v59 = *(v0 + 448);
      if (v56)
      {
        v150 = v47;
        v60 = *(v0 + 368);
        v61 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v151[0] = v149;
        *v61 = 134218498;
        v62 = *(v58 + *(v60 + 36));
        sub_100070B00(v58, type metadata accessor for CustodianRecord);
        *(v61 + 4) = v62;
        *(v61 + 12) = 1024;
        LODWORD(v62) = *(v57 + *(v60 + 36)) == 2;
        sub_100070B00(v57, type metadata accessor for CustodianRecord);
        *(v61 + 14) = v62;
        *(v61 + 18) = 2080;
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_100070B00(v59, type metadata accessor for CustodianRecord);
        v66 = sub_10021145C(v63, v65, v151);
        v47 = v150;

        *(v61 + 20) = v66;
        _os_log_impl(&_mh_execute_header, v54, v55, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v61, 0x1Cu);
        sub_10000839C(v149);
      }

      else
      {
        sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
        sub_100070B00(v58, type metadata accessor for CustodianRecord);

        sub_100070B00(v59, type metadata accessor for CustodianRecord);
      }

      v68 = *(v0 + 472);
      if (*(v68 + *(*(v0 + 368) + 36)) == 2)
      {
        sub_100070E78(v68, *(v0 + 440), type metadata accessor for CustodianRecord);
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        v71 = os_log_type_enabled(v69, v70);
        v72 = *(v0 + 440);
        if (v71)
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v151[0] = v74;
          *v73 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v75 = dispatch thunk of CustomStringConvertible.description.getter();
          v77 = v76;
          sub_100070B00(v72, type metadata accessor for CustodianRecord);
          v78 = sub_10021145C(v75, v77, v151);

          *(v73 + 4) = v78;
          _os_log_impl(&_mh_execute_header, v69, v70, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v73, 0xCu);
          sub_10000839C(v74);
        }

        else
        {

          sub_100070B00(v72, type metadata accessor for CustodianRecord);
        }

        if (*(*(v0 + 752) + 16) && (v94 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v95 & 1) != 0))
        {
          sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v94, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
          v96 = 0;
        }

        else
        {
          v96 = 1;
        }

        v97 = *(v0 + 272);
        v98 = *(v0 + 280);
        v99 = *(v0 + 208);
        v100 = *(v0 + 216);
        (*(v100 + 56))(v98, v96, 1, v99);
        sub_100012D04(v98, v97, &unk_1003D91B0, qword_1003444F0);
        v101 = (*(v100 + 48))(v97, 1, v99);
        v102 = *(v0 + 472);
        v103 = *(v0 + 272);
        if (v101 == 1)
        {
          v104 = *(v0 + 424);
          sub_100008D3C(v103, &unk_1003D91B0, qword_1003444F0);
          sub_100070E78(v102, v104, type metadata accessor for CustodianRecord);
          v105 = Logger.logObject.getter();
          v106 = static os_log_type_t.error.getter();
          v107 = os_log_type_enabled(v105, v106);
          v108 = *(v0 + 424);
          if (v107)
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v151[0] = v110;
            *v109 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v111 = dispatch thunk of CustomStringConvertible.description.getter();
            v113 = v112;
            sub_100070B00(v108, type metadata accessor for CustodianRecord);
            v114 = sub_10021145C(v111, v113, v151);

            *(v109 + 4) = v114;
            _os_log_impl(&_mh_execute_header, v105, v106, "CustodianRecoveryInfoRecord not found for custodianID: %s", v109, 0xCu);
            sub_10000839C(v110);
          }

          else
          {

            sub_100070B00(v108, type metadata accessor for CustodianRecord);
          }

          *(v0 + 878) = 0;
          sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();
          v135 = os_log_type_enabled(v133, v134);
          v136 = *(v0 + 416);
          if (v135)
          {
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v151[0] = v138;
            *v137 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v139 = dispatch thunk of CustomStringConvertible.description.getter();
            v141 = v140;
            sub_100070B00(v136, type metadata accessor for CustodianRecord);
            v142 = sub_10021145C(v139, v141, v151);

            *(v137 + 4) = v142;
            _os_log_impl(&_mh_execute_header, v133, v134, "Checking if setup finalized from server for custodianID: %s", v137, 0xCu);
            sub_10000839C(v138);
          }

          else
          {

            sub_100070B00(v136, type metadata accessor for CustodianRecord);
          }

          v146 = *(v0 + 472);
          v147 = *(v0 + 176);
          v117 = swift_task_alloc();
          *(v0 + 808) = v117;
          *(v117 + 16) = v147;
          *(v117 + 24) = v146;
          v148 = swift_task_alloc();
          *(v0 + 816) = v148;
          *v148 = v0;
          v148[1] = sub_100064B38;
          v119 = &unk_10033F4D0;
          v120 = 0x800000010032D620;
          v121 = 0xD000000000000015;
        }

        else
        {
          v122 = *(v0 + 432);
          sub_100070D64(v103, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
          sub_100070E78(v102, v122, type metadata accessor for CustodianRecord);
          v123 = Logger.logObject.getter();
          v124 = static os_log_type_t.default.getter();
          v125 = os_log_type_enabled(v123, v124);
          v126 = *(v0 + 432);
          if (v125)
          {
            v127 = swift_slowAlloc();
            v128 = swift_slowAlloc();
            v151[0] = v128;
            *v127 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v129 = dispatch thunk of CustomStringConvertible.description.getter();
            v131 = v130;
            sub_100070B00(v126, type metadata accessor for CustodianRecord);
            v132 = sub_10021145C(v129, v131, v151);

            *(v127 + 4) = v132;
            _os_log_impl(&_mh_execute_header, v123, v124, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v127, 0xCu);
            sub_10000839C(v128);
          }

          else
          {

            sub_100070B00(v126, type metadata accessor for CustodianRecord);
          }

          v143 = *(v0 + 224);
          v144 = *(v0 + 176);
          v117 = swift_task_alloc();
          *(v0 + 784) = v117;
          *(v117 + 16) = v144;
          *(v117 + 24) = v143;
          v145 = swift_task_alloc();
          *(v0 + 792) = v145;
          *v145 = v0;
          v145[1] = sub_100064734;
          v119 = &unk_10033F4E0;
          v121 = 0xD000000000000016;
          v120 = 0x800000010032D640;
        }
      }

      else
      {
        *(v0 + 880) = 0;
        *(v0 + 832) = v47;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 67109376;
          *(v81 + 8) = 1024;
          *(v81 + 10) = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v81, 0xEu);
        }

        v82 = *(v0 + 472);
        v83 = *(v0 + 408);

        sub_100070E78(v82, v83, type metadata accessor for CustodianRecord);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.default.getter();
        v86 = os_log_type_enabled(v84, v85);
        v87 = *(v0 + 408);
        if (v86)
        {
          v88 = swift_slowAlloc();
          v89 = swift_slowAlloc();
          v151[0] = v89;
          *v88 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v90 = dispatch thunk of CustomStringConvertible.description.getter();
          v92 = v91;
          sub_100070B00(v87, type metadata accessor for CustodianRecord);
          v93 = sub_10021145C(v90, v92, v151);

          *(v88 + 4) = v93;
          _os_log_impl(&_mh_execute_header, v84, v85, " Checking if CRK exist at security layer for custodianID: %s", v88, 0xCu);
          sub_10000839C(v89);
        }

        else
        {

          sub_100070B00(v87, type metadata accessor for CustodianRecord);
        }

        v115 = *(v0 + 472);
        v116 = *(v0 + 176);
        v117 = swift_task_alloc();
        *(v0 + 840) = v117;
        *(v117 + 16) = v116;
        *(v117 + 24) = v115;
        v118 = swift_task_alloc();
        *(v0 + 848) = v118;
        *v118 = v0;
        v118[1] = sub_100064FE4;
        v119 = &unk_10033F4B8;
        v120 = 0xEF74736978652D52;
        v121 = 0x4B432D6B63656863;
      }

      return sub_1000699F4(v121, v120, v119, v117);
    }
  }

  return result;
}

uint64_t sub_100066654()
{
  v1 = *(v0 + 472);

  sub_100070B00(v1, type metadata accessor for CustodianRecord);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100066898()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100066A98()
{
  v166 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 868);
  v3 = *(v0 + 488);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  v6 = *(v0 + 264);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v162 = *(v9 + 56);
  v162(v5, 1, 1, v8);
  v1(v6, v3 + v2, v7);
  sub_100012D04(v5, v4, &unk_1003D91B0, qword_1003444F0);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {
    v11 = *(v0 + 264);
    sub_100008D3C(*(v0 + 328), &unk_1003D91B0, qword_1003444F0);
    v12 = sub_10031AF8C(v11);
    if (v13)
    {
      v14 = v12;
      v15 = *(v0 + 592);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 168) = v15;
      if (isUniquelyReferenced_nonNull_native)
      {
        v17 = (v0 + 592);
      }

      else
      {
LABEL_56:
        v17 = (v0 + 168);
        sub_1002D0004();
      }

      v18 = *v17;
      v19 = *(v0 + 320);
      v20 = *(v0 + 216);
      (*(*(v0 + 248) + 8))(*(v18 + 48) + *(*(v0 + 248) + 72) * v14, *(v0 + 240));
      sub_100070D64(*(v18 + 56) + *(v20 + 72) * v14, v19, type metadata accessor for CustodianRecoveryInfoRecord);
      sub_1001C3F38(v14, v18);
      v21 = 0;
      v22 = v18;
    }

    else
    {
      v22 = *(v0 + 608);
      v18 = *(v0 + 592);
      v21 = 1;
    }

    v29 = *(v0 + 488);
    v30 = *(v0 + 320);
    v31 = *(v0 + 264);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    v162(v30, v21, 1, *(v0 + 208));
    sub_100008D3C(v30, &unk_1003D91B0, qword_1003444F0);
    (*(v33 + 8))(v31, v32);
    sub_100070B00(v29, type metadata accessor for CustodianRecord);
  }

  else
  {
    v18 = *(v0 + 592);
    v23 = *(v0 + 488);
    v24 = *(v0 + 264);
    v25 = *(v0 + 240);
    v26 = *(v0 + 248);
    v27 = *(v0 + 232);
    sub_100070D64(*(v0 + 328), v27, type metadata accessor for CustodianRecoveryInfoRecord);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v165 = v18;
    sub_1002CF140(v27, v24, v28);
    (*(v26 + 8))(v24, v25);
    sub_100070B00(v23, type metadata accessor for CustodianRecord);
    v22 = v18;
  }

  v34 = *(v0 + 876);
  v14 = *(v0 + 360);
  v35 = *(v0 + 336);
  v36 = (v10(v35, 1, *(v0 + 208)) != 1) & v34;
  sub_100008D3C(v35, &unk_1003D91B0, qword_1003444F0);
  v37 = type metadata accessor for FetchRecoveryRecordsRequest;
  v38 = v14;
  while (1)
  {
    sub_100070B00(v38, v37);
    *(v0 + 624) = v22;
    *(v0 + 616) = v18;
    v39 = *(v0 + 600) + 1;
    if (v39 == *(v0 + 576))
    {
      break;
    }

    *(v0 + 608) = v22;
    *(v0 + 600) = v39;
    *(v0 + 876) = v36;
    *(v0 + 592) = v18;
    v14 = *(v0 + 488);
    v40 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v39, v14, type metadata accessor for CustodianRecord);
    v38 = *(v0 + 488);
    if (*(v14 + *(v40 + 36)) == 2)
    {
      v68 = *(v0 + 360);
      v69 = *(v0 + 344);
      v70 = *(v0 + 240);
      v71 = *(v0 + 248);
      v72 = *(v0 + 176);
      v73 = *(*(v0 + 368) + 20);
      *(v0 + 868) = v73;
      v74 = *(v71 + 16);
      *(v0 + 632) = v74;
      *(v0 + 640) = (v71 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v74(v68, v38 + v73, v70);
      *(v68 + v69[5]) = 0;
      v75 = v68 + v69[6];
      *v75 = 0;
      *(v75 + 8) = 1;
      *(v68 + v69[7]) = 1;
      v76 = (v68 + v69[8]);
      *v76 = 0;
      v76[1] = 0;
      v77 = (v68 + v69[9]);
      *v77 = 0;
      v77[1] = 0;
      v78 = swift_task_alloc();
      *(v0 + 648) = v78;
      *(v78 + 16) = v72;
      *(v78 + 24) = v68;
      v79 = swift_task_alloc();
      *(v0 + 656) = v79;
      *v79 = v0;
      v79[1] = sub_100060884;
      v80 = *(v0 + 336);

      return sub_10006A3C0(v80, 0xD000000000000019, 0x800000010032D600, &unk_10033F4F0, v78);
    }

    v37 = type metadata accessor for CustodianRecord;
  }

  if (v36)
  {
    *(v0 + 752) = v22;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v41 = *(v0 + 560);
    if (!*(v41 + 16))
    {
      __break(1u);
      goto LABEL_56;
    }

    v43 = *(v0 + 464);
    v42 = *(v0 + 472);
    v45 = *(v0 + 448);
    v44 = *(v0 + 456);
    sub_100070E78(v41 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v42, type metadata accessor for CustodianRecord);
    sub_100070E78(v42, v43, type metadata accessor for CustodianRecord);
    sub_100070E78(v42, v44, type metadata accessor for CustodianRecord);
    sub_100070E78(v42, v45, type metadata accessor for CustodianRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 456);
    v50 = *(v0 + 464);
    v51 = *(v0 + 448);
    if (v48)
    {
      v52 = *(v0 + 368);
      v53 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v165 = v164;
      *v53 = 134218498;
      v163 = v47;
      v54 = *(v50 + *(v52 + 36));
      sub_100070B00(v50, type metadata accessor for CustodianRecord);
      *(v53 + 4) = v54;
      *(v53 + 12) = 1024;
      LODWORD(v54) = *(v49 + *(v52 + 36)) == 2;
      sub_100070B00(v49, type metadata accessor for CustodianRecord);
      *(v53 + 14) = v54;
      *(v53 + 18) = 2080;
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      sub_100070B00(v51, type metadata accessor for CustodianRecord);
      v58 = sub_10021145C(v55, v57, &v165);

      *(v53 + 20) = v58;
      _os_log_impl(&_mh_execute_header, v46, v163, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v53, 0x1Cu);
      sub_10000839C(v164);
    }

    else
    {
      sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
      sub_100070B00(v50, type metadata accessor for CustodianRecord);

      sub_100070B00(v51, type metadata accessor for CustodianRecord);
    }

    v81 = *(v0 + 472);
    if (*(v81 + *(*(v0 + 368) + 36)) == 2)
    {
      sub_100070E78(v81, *(v0 + 440), type metadata accessor for CustodianRecord);
      v82 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      v84 = os_log_type_enabled(v82, v83);
      v85 = *(v0 + 440);
      if (v84)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v165 = v87;
        *v86 = 136315138;
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        sub_100070B00(v85, type metadata accessor for CustodianRecord);
        v91 = sub_10021145C(v88, v90, &v165);

        *(v86 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v82, v83, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v86, 0xCu);
        sub_10000839C(v87);
      }

      else
      {

        sub_100070B00(v85, type metadata accessor for CustodianRecord);
      }

      if (*(*(v0 + 752) + 16) && (v107 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v108 & 1) != 0))
      {
        sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v107, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
        v109 = 0;
      }

      else
      {
        v109 = 1;
      }

      v110 = *(v0 + 272);
      v111 = *(v0 + 280);
      v112 = *(v0 + 208);
      v113 = *(v0 + 216);
      (*(v113 + 56))(v111, v109, 1, v112);
      sub_100012D04(v111, v110, &unk_1003D91B0, qword_1003444F0);
      v114 = (*(v113 + 48))(v110, 1, v112);
      v115 = *(v0 + 472);
      v116 = *(v0 + 272);
      if (v114 == 1)
      {
        v117 = *(v0 + 424);
        sub_100008D3C(v116, &unk_1003D91B0, qword_1003444F0);
        sub_100070E78(v115, v117, type metadata accessor for CustodianRecord);
        v118 = Logger.logObject.getter();
        v119 = static os_log_type_t.error.getter();
        v120 = os_log_type_enabled(v118, v119);
        v121 = *(v0 + 424);
        if (v120)
        {
          v122 = swift_slowAlloc();
          v123 = swift_slowAlloc();
          v165 = v123;
          *v122 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v124 = dispatch thunk of CustomStringConvertible.description.getter();
          v126 = v125;
          sub_100070B00(v121, type metadata accessor for CustodianRecord);
          v127 = sub_10021145C(v124, v126, &v165);

          *(v122 + 4) = v127;
          _os_log_impl(&_mh_execute_header, v118, v119, "CustodianRecoveryInfoRecord not found for custodianID: %s", v122, 0xCu);
          sub_10000839C(v123);
        }

        else
        {

          sub_100070B00(v121, type metadata accessor for CustodianRecord);
        }

        *(v0 + 878) = 0;
        sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.default.getter();
        v148 = os_log_type_enabled(v146, v147);
        v149 = *(v0 + 416);
        if (v148)
        {
          v150 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          v165 = v151;
          *v150 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v152 = dispatch thunk of CustomStringConvertible.description.getter();
          v154 = v153;
          sub_100070B00(v149, type metadata accessor for CustodianRecord);
          v155 = sub_10021145C(v152, v154, &v165);

          *(v150 + 4) = v155;
          _os_log_impl(&_mh_execute_header, v146, v147, "Checking if setup finalized from server for custodianID: %s", v150, 0xCu);
          sub_10000839C(v151);
        }

        else
        {

          sub_100070B00(v149, type metadata accessor for CustodianRecord);
        }

        v159 = *(v0 + 472);
        v160 = *(v0 + 176);
        v130 = swift_task_alloc();
        *(v0 + 808) = v130;
        *(v130 + 16) = v160;
        *(v130 + 24) = v159;
        v161 = swift_task_alloc();
        *(v0 + 816) = v161;
        *v161 = v0;
        v161[1] = sub_100064B38;
        v132 = &unk_10033F4D0;
        v133 = 0x800000010032D620;
        v134 = 0xD000000000000015;
      }

      else
      {
        v135 = *(v0 + 432);
        sub_100070D64(v116, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
        sub_100070E78(v115, v135, type metadata accessor for CustodianRecord);
        v136 = Logger.logObject.getter();
        v137 = static os_log_type_t.default.getter();
        v138 = os_log_type_enabled(v136, v137);
        v139 = *(v0 + 432);
        if (v138)
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v165 = v141;
          *v140 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v142 = dispatch thunk of CustomStringConvertible.description.getter();
          v144 = v143;
          sub_100070B00(v139, type metadata accessor for CustodianRecord);
          v145 = sub_10021145C(v142, v144, &v165);

          *(v140 + 4) = v145;
          _os_log_impl(&_mh_execute_header, v136, v137, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v140, 0xCu);
          sub_10000839C(v141);
        }

        else
        {

          sub_100070B00(v139, type metadata accessor for CustodianRecord);
        }

        v156 = *(v0 + 224);
        v157 = *(v0 + 176);
        v130 = swift_task_alloc();
        *(v0 + 784) = v130;
        *(v130 + 16) = v157;
        *(v130 + 24) = v156;
        v158 = swift_task_alloc();
        *(v0 + 792) = v158;
        *v158 = v0;
        v158[1] = sub_100064734;
        v132 = &unk_10033F4E0;
        v134 = 0xD000000000000016;
        v133 = 0x800000010032D640;
      }
    }

    else
    {
      *(v0 + 880) = 0;
      *(v0 + 832) = v22;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        *v94 = 67109376;
        *(v94 + 8) = 1024;
        *(v94 + 10) = 0;
        _os_log_impl(&_mh_execute_header, v92, v93, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v94, 0xEu);
      }

      v95 = *(v0 + 472);
      v96 = *(v0 + 408);

      sub_100070E78(v95, v96, type metadata accessor for CustodianRecord);
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      v99 = os_log_type_enabled(v97, v98);
      v100 = *(v0 + 408);
      if (v99)
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v165 = v102;
        *v101 = 136315138;
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        sub_100070B00(v100, type metadata accessor for CustodianRecord);
        v106 = sub_10021145C(v103, v105, &v165);

        *(v101 + 4) = v106;
        _os_log_impl(&_mh_execute_header, v97, v98, " Checking if CRK exist at security layer for custodianID: %s", v101, 0xCu);
        sub_10000839C(v102);
      }

      else
      {

        sub_100070B00(v100, type metadata accessor for CustodianRecord);
      }

      v128 = *(v0 + 472);
      v129 = *(v0 + 176);
      v130 = swift_task_alloc();
      *(v0 + 840) = v130;
      *(v130 + 16) = v129;
      *(v130 + 24) = v128;
      v131 = swift_task_alloc();
      *(v0 + 848) = v131;
      *v131 = v0;
      v131[1] = sub_100064FE4;
      v132 = &unk_10033F4B8;
      v133 = 0xEF74736978652D52;
      v134 = 0x4B432D6B63656863;
    }

    return sub_1000699F4(v134, v133, v132, v130);
  }

  else
  {
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "One or more CustodianRecoveryInfoRecord not found in local disk, so fetching sharedDB records from cloud", v61, 2u);
    }

    v63 = *(v0 + 192);
    v62 = *(v0 + 200);
    v65 = *(v0 + 176);
    v64 = *(v0 + 184);

    (*(v63 + 16))(v62, v65 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__storageController, v64);
    Dependency.wrappedValue.getter();
    (*(v63 + 8))(v62, v64);
    sub_1000080F8((v0 + 96), *(v0 + 120));
    v66 = swift_task_alloc();
    *(v0 + 664) = v66;
    *v66 = v0;
    v66[1] = sub_100061DFC;

    return sub_10030D2B0();
  }
}

uint64_t sub_100067EC8()
{
  v164 = v0;
  v1 = *(v0 + 720);
  v2 = *(v0 + 872);
  v3 = *(v0 + 480);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 256);
  v7 = *(v0 + 240);
  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  (*(v0 + 704))(v5, 1, 1, v8);
  v1(v6, v3 + v2, v7);
  sub_100012D04(v5, v4, &unk_1003D91B0, qword_1003444F0);
  if ((*(v9 + 48))(v4, 1, v8) != 1)
  {
    v21 = *(v0 + 680);
    v22 = *(v0 + 480);
    v23 = *(v0 + 304);
    v25 = *(v0 + 248);
    v24 = *(v0 + 256);
    v27 = *(v0 + 232);
    v26 = *(v0 + 240);
    sub_100070D64(*(v0 + 296), v27, type metadata accessor for CustodianRecoveryInfoRecord);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v163 = v21;
    sub_1002CF140(v27, v24, isUniquelyReferenced_nonNull_native);
    (*(v25 + 8))(v24, v26);
    sub_100008D3C(v23, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v22, type metadata accessor for CustodianRecord);
    v17 = v21;
    v13 = v21;
    goto LABEL_9;
  }

  v10 = *(v0 + 256);
  sub_100008D3C(*(v0 + 296), &unk_1003D91B0, qword_1003444F0);
  v11 = sub_10031AF8C(v10);
  if ((v12 & 1) == 0)
  {
    v13 = *(v0 + 696);
    v17 = *(v0 + 680);
    v20 = 1;
    goto LABEL_8;
  }

  v13 = v11;
  v14 = *(v0 + 680);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 160) = v14;
  if (!v15)
  {
    goto LABEL_50;
  }

  v16 = (v0 + 680);
  while (1)
  {
    v17 = *v16;
    v18 = *(v0 + 288);
    v19 = *(v0 + 216);
    (*(*(v0 + 248) + 8))(*(v17 + 48) + *(*(v0 + 248) + 72) * v13, *(v0 + 240));
    sub_100070D64(*(v17 + 56) + *(v19 + 72) * v13, v18, type metadata accessor for CustodianRecoveryInfoRecord);
    sub_1001C3F38(v13, v17);
    v20 = 0;
    v13 = v17;
LABEL_8:
    v161 = *(v0 + 480);
    v29 = *(v0 + 304);
    v30 = *(v0 + 288);
    v31 = *(v0 + 248);
    v32 = *(v0 + 256);
    v33 = *(v0 + 240);
    (*(v0 + 704))(v30, v20, 1, *(v0 + 208));
    sub_100008D3C(v30, &unk_1003D91B0, qword_1003444F0);
    (*(v31 + 8))(v32, v33);
    sub_100008D3C(v29, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v161, type metadata accessor for CustodianRecord);
LABEL_9:
    sub_100070B00(*(v0 + 352), type metadata accessor for FetchRecoveryRecordsRequest);
    v34 = *(v0 + 688) + 1;
    if (v34 != *(v0 + 576))
    {
      break;
    }

LABEL_13:
    *(v0 + 752) = v13;
    type metadata accessor for CustodianDefaults();
    *(v0 + 760) = swift_initStackObject();
    *(v0 + 152) = _swiftEmptyArrayStorage;
    *(v0 + 776) = _swiftEmptyArrayStorage;
    *(v0 + 768) = 0;
    v44 = *(v0 + 560);
    if (*(v44 + 16))
    {
      v46 = *(v0 + 464);
      v45 = *(v0 + 472);
      v48 = *(v0 + 448);
      v47 = *(v0 + 456);
      sub_100070E78(v44 + ((*(v0 + 864) + 32) & ~*(v0 + 864)), v45, type metadata accessor for CustodianRecord);
      sub_100070E78(v45, v46, type metadata accessor for CustodianRecord);
      sub_100070E78(v45, v47, type metadata accessor for CustodianRecord);
      sub_100070E78(v45, v48, type metadata accessor for CustodianRecord);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      v51 = os_log_type_enabled(v49, v50);
      v52 = *(v0 + 456);
      v53 = *(v0 + 464);
      v54 = *(v0 + 448);
      if (v51)
      {
        v55 = *(v0 + 368);
        v56 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v163 = v162;
        *v56 = 134218498;
        v160 = v50;
        v57 = *(v53 + *(v55 + 36));
        sub_100070B00(v53, type metadata accessor for CustodianRecord);
        *(v56 + 4) = v57;
        *(v56 + 12) = 1024;
        LODWORD(v57) = *(v52 + *(v55 + 36)) == 2;
        sub_100070B00(v52, type metadata accessor for CustodianRecord);
        *(v56 + 14) = v57;
        *(v56 + 18) = 2080;
        sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v58 = dispatch thunk of CustomStringConvertible.description.getter();
        v60 = v59;
        sub_100070B00(v54, type metadata accessor for CustodianRecord);
        v61 = sub_10021145C(v58, v60, &v163);

        *(v56 + 20) = v61;
        _os_log_impl(&_mh_execute_header, v49, v160, "CustodianRecord status: %ld, isAccepted: %{BOOL}d, for custodianID: %s", v56, 0x1Cu);
        sub_10000839C(v162);
      }

      else
      {
        sub_100070B00(*(v0 + 456), type metadata accessor for CustodianRecord);
        sub_100070B00(v53, type metadata accessor for CustodianRecord);

        sub_100070B00(v54, type metadata accessor for CustodianRecord);
      }

      v79 = *(v0 + 472);
      if (*(v79 + *(*(v0 + 368) + 36)) == 2)
      {
        sub_100070E78(v79, *(v0 + 440), type metadata accessor for CustodianRecord);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.default.getter();
        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 440);
        if (v82)
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          v163 = v85;
          *v84 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v86 = dispatch thunk of CustomStringConvertible.description.getter();
          v88 = v87;
          sub_100070B00(v83, type metadata accessor for CustodianRecord);
          v89 = sub_10021145C(v86, v88, &v163);

          *(v84 + 4) = v89;
          _os_log_impl(&_mh_execute_header, v80, v81, "Checking if CustodianRecoveryInfoRecord exist for custodianID: %s", v84, 0xCu);
          sub_10000839C(v85);
        }

        else
        {

          sub_100070B00(v83, type metadata accessor for CustodianRecord);
        }

        if (*(*(v0 + 752) + 16) && (v105 = sub_10031AF8C(*(v0 + 472) + *(*(v0 + 368) + 20)), (v106 & 1) != 0))
        {
          sub_100070E78(*(*(v0 + 752) + 56) + *(*(v0 + 216) + 72) * v105, *(v0 + 280), type metadata accessor for CustodianRecoveryInfoRecord);
          v107 = 0;
        }

        else
        {
          v107 = 1;
        }

        v108 = *(v0 + 272);
        v109 = *(v0 + 280);
        v110 = *(v0 + 208);
        v111 = *(v0 + 216);
        (*(v111 + 56))(v109, v107, 1, v110);
        sub_100012D04(v109, v108, &unk_1003D91B0, qword_1003444F0);
        v112 = (*(v111 + 48))(v108, 1, v110);
        v113 = *(v0 + 472);
        v114 = *(v0 + 272);
        if (v112 == 1)
        {
          v115 = *(v0 + 424);
          sub_100008D3C(v114, &unk_1003D91B0, qword_1003444F0);
          sub_100070E78(v113, v115, type metadata accessor for CustodianRecord);
          v116 = Logger.logObject.getter();
          v117 = static os_log_type_t.error.getter();
          v118 = os_log_type_enabled(v116, v117);
          v119 = *(v0 + 424);
          if (v118)
          {
            v120 = swift_slowAlloc();
            v121 = swift_slowAlloc();
            v163 = v121;
            *v120 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v122 = dispatch thunk of CustomStringConvertible.description.getter();
            v124 = v123;
            sub_100070B00(v119, type metadata accessor for CustodianRecord);
            v125 = sub_10021145C(v122, v124, &v163);

            *(v120 + 4) = v125;
            _os_log_impl(&_mh_execute_header, v116, v117, "CustodianRecoveryInfoRecord not found for custodianID: %s", v120, 0xCu);
            sub_10000839C(v121);
          }

          else
          {

            sub_100070B00(v119, type metadata accessor for CustodianRecord);
          }

          *(v0 + 878) = 0;
          sub_100070E78(*(v0 + 472), *(v0 + 416), type metadata accessor for CustodianRecord);
          v144 = Logger.logObject.getter();
          v145 = static os_log_type_t.default.getter();
          v146 = os_log_type_enabled(v144, v145);
          v147 = *(v0 + 416);
          if (v146)
          {
            v148 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v163 = v149;
            *v148 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v150 = dispatch thunk of CustomStringConvertible.description.getter();
            v152 = v151;
            sub_100070B00(v147, type metadata accessor for CustodianRecord);
            v153 = sub_10021145C(v150, v152, &v163);

            *(v148 + 4) = v153;
            _os_log_impl(&_mh_execute_header, v144, v145, "Checking if setup finalized from server for custodianID: %s", v148, 0xCu);
            sub_10000839C(v149);
          }

          else
          {

            sub_100070B00(v147, type metadata accessor for CustodianRecord);
          }

          v157 = *(v0 + 472);
          v158 = *(v0 + 176);
          v128 = swift_task_alloc();
          *(v0 + 808) = v128;
          *(v128 + 16) = v158;
          *(v128 + 24) = v157;
          v159 = swift_task_alloc();
          *(v0 + 816) = v159;
          *v159 = v0;
          v159[1] = sub_100064B38;
          v130 = &unk_10033F4D0;
          v131 = 0x800000010032D620;
          v132 = 0xD000000000000015;
        }

        else
        {
          v133 = *(v0 + 432);
          sub_100070D64(v114, *(v0 + 224), type metadata accessor for CustodianRecoveryInfoRecord);
          sub_100070E78(v113, v133, type metadata accessor for CustodianRecord);
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.default.getter();
          v136 = os_log_type_enabled(v134, v135);
          v137 = *(v0 + 432);
          if (v136)
          {
            v138 = swift_slowAlloc();
            v139 = swift_slowAlloc();
            v163 = v139;
            *v138 = 136315138;
            sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v140 = dispatch thunk of CustomStringConvertible.description.getter();
            v142 = v141;
            sub_100070B00(v137, type metadata accessor for CustodianRecord);
            v143 = sub_10021145C(v140, v142, &v163);

            *(v138 + 4) = v143;
            _os_log_impl(&_mh_execute_header, v134, v135, "Found CustodianRecoveryInfoRecord, check if CKShare accepted - custodianID: %s", v138, 0xCu);
            sub_10000839C(v139);
          }

          else
          {

            sub_100070B00(v137, type metadata accessor for CustodianRecord);
          }

          v154 = *(v0 + 224);
          v155 = *(v0 + 176);
          v128 = swift_task_alloc();
          *(v0 + 784) = v128;
          *(v128 + 16) = v155;
          *(v128 + 24) = v154;
          v156 = swift_task_alloc();
          *(v0 + 792) = v156;
          *v156 = v0;
          v156[1] = sub_100064734;
          v130 = &unk_10033F4E0;
          v132 = 0xD000000000000016;
          v131 = 0x800000010032D640;
        }
      }

      else
      {
        *(v0 + 880) = 0;
        *(v0 + 832) = v13;
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 67109376;
          *(v92 + 8) = 1024;
          *(v92 + 10) = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "is CKShare accepted and shared: %{BOOL}d, is setup finalized at server: %{BOOL}d.", v92, 0xEu);
        }

        v93 = *(v0 + 472);
        v94 = *(v0 + 408);

        sub_100070E78(v93, v94, type metadata accessor for CustodianRecord);
        v95 = Logger.logObject.getter();
        v96 = static os_log_type_t.default.getter();
        v97 = os_log_type_enabled(v95, v96);
        v98 = *(v0 + 408);
        if (v97)
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          v163 = v100;
          *v99 = 136315138;
          sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v101 = dispatch thunk of CustomStringConvertible.description.getter();
          v103 = v102;
          sub_100070B00(v98, type metadata accessor for CustodianRecord);
          v104 = sub_10021145C(v101, v103, &v163);

          *(v99 + 4) = v104;
          _os_log_impl(&_mh_execute_header, v95, v96, " Checking if CRK exist at security layer for custodianID: %s", v99, 0xCu);
          sub_10000839C(v100);
        }

        else
        {

          sub_100070B00(v98, type metadata accessor for CustodianRecord);
        }

        v126 = *(v0 + 472);
        v127 = *(v0 + 176);
        v128 = swift_task_alloc();
        *(v0 + 840) = v128;
        *(v128 + 16) = v127;
        *(v128 + 24) = v126;
        v129 = swift_task_alloc();
        *(v0 + 848) = v129;
        *v129 = v0;
        v129[1] = sub_100064FE4;
        v130 = &unk_10033F4B8;
        v131 = 0xEF74736978652D52;
        v132 = 0x4B432D6B63656863;
      }

      return sub_1000699F4(v132, v131, v130, v128);
    }

    __break(1u);
LABEL_50:
    v16 = (v0 + 160);
    sub_1002D0004();
  }

  while (1)
  {
    *(v0 + 696) = v13;
    *(v0 + 688) = v34;
    *(v0 + 680) = v17;
    v35 = *(v0 + 480);
    v36 = *(v0 + 368);
    sub_100070E78(*(v0 + 560) + ((*(v0 + 864) + 32) & ~*(v0 + 864)) + *(v0 + 584) * v34, v35, type metadata accessor for CustodianRecord);
    v37 = *(v36 + 20);
    *(v0 + 872) = v37;
    if (!*(v13 + 16))
    {
      break;
    }

    v38 = sub_10031AF8C(v35 + v37);
    if ((v39 & 1) == 0)
    {
      break;
    }

    v40 = *(v0 + 480);
    v41 = *(v0 + 312);
    v42 = *(v0 + 208);
    v43 = *(v0 + 216);
    sub_100070E78(*(v13 + 56) + *(v43 + 72) * v38, v41, type metadata accessor for CustodianRecoveryInfoRecord);
    (*(v43 + 56))(v41, 0, 1, v42);
    sub_100070B00(v40, type metadata accessor for CustodianRecord);
    sub_100008D3C(v41, &unk_1003D91B0, qword_1003444F0);
    v34 = *(v0 + 688) + 1;
    if (v34 == *(v0 + 576))
    {
      goto LABEL_13;
    }
  }

  v63 = *(v0 + 344);
  v62 = *(v0 + 352);
  v64 = *(v0 + 312);
  v65 = *(v0 + 240);
  v66 = *(v0 + 248);
  v67 = *(v0 + 208);
  v68 = *(v0 + 216);
  v69 = *(v0 + 176);
  v70 = *(v68 + 56);
  *(v0 + 704) = v70;
  *(v0 + 712) = (v68 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v70(v64, 1, 1, v67);
  sub_100008D3C(v64, &unk_1003D91B0, qword_1003444F0);
  v71 = *(v66 + 16);
  *(v0 + 720) = v71;
  *(v0 + 728) = (v66 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v71(v62, v35 + v37, v65);
  *(v62 + v63[5]) = 0;
  v72 = v62 + v63[6];
  *v72 = 0;
  *(v72 + 8) = 1;
  *(v62 + v63[7]) = 1;
  v73 = (v62 + v63[8]);
  *v73 = 0;
  v73[1] = 0;
  v74 = (v62 + v63[9]);
  *v74 = 0;
  v74[1] = 0;
  v75 = swift_task_alloc();
  *(v0 + 736) = v75;
  *(v75 + 16) = v69;
  *(v75 + 24) = v62;
  v76 = swift_task_alloc();
  *(v0 + 744) = v76;
  *v76 = v0;
  v76[1] = sub_100063264;
  v77 = *(v0 + 304);

  return sub_10006A3C0(v77, 0xD000000000000019, 0x800000010032D600, &unk_10033F4A0, v75);
}

uint64_t sub_100069250()
{
  v1 = v0[59];
  v2 = v0[28];
  sub_100008D3C(v0[35], &unk_1003D91B0, qword_1003444F0);
  sub_100070B00(v2, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_100070B00(v1, type metadata accessor for CustodianRecord);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000694B8()
{
  v1 = v0[59];
  sub_100008D3C(v0[35], &unk_1003D91B0, qword_1003444F0);
  sub_100070B00(v1, type metadata accessor for CustodianRecord);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100069700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000697D0, 0, 0);
}

uint64_t sub_1000697D0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1000698E0;
  v5 = v0[9];
  v6 = v0[7];

  return sub_100021548(v6, v5, 0, 0);
}

uint64_t sub_1000698E0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_100070F8C;
  }

  else
  {
    v2 = sub_100070F98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000699F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Date();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_100069B00, 0, 0);
}

uint64_t sub_100069B00()
{
  v12 = v0;
  Date.init()();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[15] = sub_100008D04(v1, qword_1003FAA40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "⏳ Begin: %s...", v6, 0xCu);
    sub_10000839C(v7);
  }

  v10 = (v0[4] + *v0[4]);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_100069D2C;

  return v10(v0 + 18);
}

uint64_t sub_100069D2C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10006A110;
  }

  else
  {
    v2 = sub_100069E40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100069E40()
{
  v34 = v0;
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  Date.init()();
  v7 = *(v6 + 16);
  v7(v3, v2, v5);
  v7(v4, v1, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v31 = *(v0 + 104);
    v32 = *(v0 + 112);
    v11 = *(v0 + 88);
    v10 = *(v0 + 96);
    v12 = *(v0 + 48);
    v13 = *(v0 + 56);
    v14 = *(v0 + 16);
    v30 = *(v0 + 24);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_10021145C(v14, v30, &v33);
    *(v15 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v11, v12);
    v19(v10, v12);
    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "⏰ Completed: %s after %f seconds", v15, 0x16u);
    sub_10000839C(v16);

    v19(v31, v12);
    v19(v32, v12);
  }

  else
  {
    v21 = *(v0 + 104);
    v20 = *(v0 + 112);
    v23 = *(v0 + 88);
    v22 = *(v0 + 96);
    v24 = *(v0 + 48);
    v25 = *(v0 + 56);

    v26 = *(v25 + 8);
    v26(v23, v24);
    v26(v22, v24);
    v26(v21, v24);
    v26(v20, v24);
  }

  v27 = *(v0 + 144);

  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t sub_10006A110()
{
  v31 = v0;
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  Date.init()();
  v7 = *(v5 + 16);
  v7(v3, v2, v6);
  v7(v4, v1, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[8];
    v10 = v0[9];
    v12 = v0[7];
    v29 = v0[6];
    v13 = v0[2];
    v14 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_10021145C(v13, v14, &v30);
    *(v15 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v18 = v17;
    v19 = *(v12 + 8);
    v19(v11, v29);
    v19(v10, v29);
    *(v15 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v8, v9, "⏰ Error: %s after %f seconds", v15, 0x16u);
    sub_10000839C(v16);
  }

  else
  {
    v21 = v0[8];
    v20 = v0[9];
    v22 = v0[6];
    v23 = v0[7];

    v19 = *(v23 + 8);
    v19(v21, v22);
    v19(v20, v22);
  }

  v24 = v0[14];
  v25 = v0[10];
  v26 = v0[6];
  swift_willThrow();
  v19(v25, v26);
  v19(v24, v26);

  v27 = v0[1];

  return v27(0);
}

uint64_t sub_10006A3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006A4D0, 0, 0);
}

uint64_t sub_10006A4D0()
{
  v13 = v0;
  Date.init()();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_100008D04(v1, qword_1003FAA40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(v5, v4, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "⏳ Begin: %s...", v6, 0xCu);
    sub_10000839C(v7);
  }

  v11 = (v0[5] + *v0[5]);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_10006A6FC;
  v9 = v0[2];

  return v11(v9);
}

uint64_t sub_10006A6FC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_100070F94;
  }

  else
  {
    v2 = sub_100070F90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006A810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for Date();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006A920, 0, 0);
}

uint64_t sub_10006A920()
{
  v13 = v0;
  Date.init()();
  if (qword_1003D7F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[16] = sub_100008D04(v1, qword_1003FAA40);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[3];
    v4 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10021145C(v5, v4, &v12);
    _os_log_impl(&_mh_execute_header, v2, v3, "⏳ Begin: %s...", v6, 0xCu);
    sub_10000839C(v7);
  }

  v11 = (v0[5] + *v0[5]);
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_10006AB4C;
  v9 = v0[2];

  return v11(v9);
}

uint64_t sub_10006AB4C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10006AF10;
  }

  else
  {
    v2 = sub_10006AC60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006AC60()
{
  v30 = v0;
  v1 = v0[15];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[7];
  v6 = v0[8];
  Date.init()();
  v7 = *(v6 + 16);
  v7(v3, v2, v5);
  v7(v4, v1, v5);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[14];
  v11 = v0[15];
  v14 = v0[12];
  v13 = v0[13];
  v15 = v0[7];
  v16 = v0[8];
  if (v10)
  {
    v17 = v0[3];
    v26 = v0[4];
    v28 = v0[14];
    v18 = swift_slowAlloc();
    v27 = v11;
    v19 = swift_slowAlloc();
    v29 = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_10021145C(v17, v26, &v29);
    *(v18 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v21 = v20;
    v22 = *(v16 + 8);
    v22(v14, v15);
    v22(v13, v15);
    *(v18 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "⏰ Completed: %s after %f seconds", v18, 0x16u);
    sub_10000839C(v19);

    v22(v28, v15);
    v23 = v27;
  }

  else
  {

    v22 = *(v16 + 8);
    v22(v14, v15);
    v22(v13, v15);
    v22(v12, v15);
    v23 = v11;
  }

  v22(v23, v15);

  v24 = v0[1];

  return v24();
}

uint64_t sub_10006AF10()
{
  v29 = v0;
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  Date.init()();
  v7 = *(v5 + 16);
  v7(v3, v2, v6);
  v7(v4, v1, v6);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[7];
  v14 = v0[8];
  if (v10)
  {
    v15 = v0[3];
    v16 = v0[4];
    v27 = v9;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_10021145C(v15, v16, &v28);
    *(v17 + 12) = 2048;
    Date.timeIntervalSince(_:)();
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v12, v13);
    v21(v11, v13);
    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v27, "⏰ Error: %s after %f seconds", v17, 0x16u);
    sub_10000839C(v18);
  }

  else
  {

    v21 = *(v14 + 8);
    v21(v12, v13);
    v21(v11, v13);
  }

  v22 = v0[15];
  v23 = v0[11];
  v24 = v0[7];
  swift_willThrow();
  v21(v23, v24);
  v21(v22, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_10006B1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006B284, 0, 0);
}

uint64_t sub_10006B284()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10006B394;
  v5 = v0[9];
  v6 = v0[7];

  return sub_100021548(v6, v5, 0, 0);
}

uint64_t sub_10006B394()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_10006B518;
  }

  else
  {
    v2 = sub_10006B4A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006B4A8()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006B518()
{
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006B588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006B658, 0, 0);
}

uint64_t sub_10006B658()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__cloudShare, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10006B760;
  v5 = v0[9];

  return sub_1001AD9EC(v5);
}

uint64_t sub_10006B760(char a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_100070F8C;
  }

  else
  {
    *(v4 + 120) = a1 & 1;
    v5 = sub_10006B88C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006B88C()
{
  **(v0 + 56) = *(v0 + 120);
  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006B908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_10006B9D8, 0, 0);
}

uint64_t sub_10006B9D8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  v5 = *(type metadata accessor for CustodianRecord(0) + 20);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_10006BB08;

  return sub_100080620(v4 + v5, 0);
}

uint64_t sub_10006BB08(char a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_100070F8C;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_10006BC30;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10006BC30()
{
  if (*(v0 + 120) && *(v0 + 120) == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v2 = *(v0 + 56);

  *v2 = v1 & 1;
  sub_10000839C((v0 + 16));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10006BD24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for UUID();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_100005814(&qword_1003DA570, qword_10033F508);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10006BE50, 0, 0);
}

uint64_t sub_10006BE50()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__securityController, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  sub_1000080F8(v0 + 2, v0[5]);
  sub_1000A8E58(v4);
  v5 = type metadata accessor for DaemonSecurityController(0);
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10006C000;
  v7 = v0[12];

  return (sub_10001A9FC)(v7, v5, &off_1003A49D8);
}

uint64_t sub_10006C000(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  (*(v5 + 8))(v4, v6);
  if (v1)
  {
    v7 = sub_10006C2C8;
  }

  else
  {
    v7 = sub_10006C178;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10006C178()
{
  sub_10000839C((v0 + 16));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 144);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRK exists on OT? %{BOOL}d", v5, 8u);
  }

  **(v0 + 56) = *(v0 + 144);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006C2C8()
{
  sub_10000839C((v0 + 16));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 67109378;
    *(v4 + 8) = 2112;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 10) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "CRK exists on OT? %{BOOL}d error: %@", v4, 0x12u);
    sub_100008D3C(v5, &unk_1003D9140, &qword_10033E640);
  }

  else
  {
  }

  **(v0 + 56) = 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10006C4A0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_100005814(&unk_1003D91B0, qword_1003444F0);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v3 = type metadata accessor for CustodianshipInfoRecord(0);
  v2[23] = v3;
  v2[24] = *(v3 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v5 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v2[35] = v5;
  v2[36] = *(v5 - 8);
  v2[37] = swift_task_alloc();

  return _swift_task_switch(sub_10006C6B0, 0, 0);
}

uint64_t sub_10006C6B0()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[38] = sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching contact list whoCanBeHelpedByMe", v4, 2u);
  }

  v6 = v0[36];
  v5 = v0[37];
  v7 = v0[35];
  v8 = v0[20];

  (*(v6 + 16))(v5, v8 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v7);
  Dependency.wrappedValue.getter();
  (*(v6 + 8))(v5, v7);
  v0[15] = *sub_1000080F8(v0 + 2, v0[5]);
  v9 = swift_task_alloc();
  v0[39] = v9;
  *(v9 + 16) = v0 + 15;
  v10 = swift_task_alloc();
  v0[40] = v10;
  v11 = sub_100005814(&unk_1003E4DD0, &qword_10033F468);
  *v10 = v0;
  v10[1] = sub_10006C8E8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000018, 0x800000010032D5E0, sub_1000709F4, v9, v11);
}

uint64_t sub_10006C8E8()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_10006D960;
  }

  else
  {

    v2 = sub_10006CA04;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006CA04()
{
  v114 = v0;
  v1 = *(v0 + 128);
  sub_10000839C((v0 + 16));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetched contact list whoCanBeHelpedByMe: %ld", v4, 0xCu);
  }

  v108 = v1;
  v5 = *(v0 + 152);

  v6 = [v5 includedStatuses];
  v7 = _swiftEmptyArrayStorage;
  v113[0] = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_100070AA8(&unk_1003DA540, &type metadata accessor for NSFastEnumerationIterator, &protocol conformance descriptor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  while (*(v0 + 80))
  {
    sub_100070AF0((v0 + 56), (v0 + 88));
    sub_100016034(0, &qword_1003D8D68, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) != 0 && *(v0 + 144))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v113[0];
    }

    dispatch thunk of IteratorProtocol.next()();
  }

  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v10 = *(v0 + 256);

  (*(v8 + 8))(v9, v10);
  if (v7 >> 62)
  {
    goto LABEL_89;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v107 = v0;
    v12 = _swiftEmptyArrayStorage;
    if (i)
    {
      v13 = 0;
      v0 = v7 & 0xC000000000000001;
      v14 = v7 & 0xFFFFFFFFFFFFFF8;
      v15 = v7;
      while (1)
      {
        if (v0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *(v14 + 16))
          {
            goto LABEL_87;
          }

          v16 = *(v7 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v19 = [v16 integerValue];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100306104(0, *(v12 + 2) + 1, 1, v12);
        }

        v21 = *(v12 + 2);
        v20 = *(v12 + 3);
        if (v21 >= v20 >> 1)
        {
          v12 = sub_100306104((v20 > 1), v21 + 1, 1, v12);
        }

        *(v12 + 2) = v21 + 1;
        *&v12[8 * v21 + 32] = v19;
        ++v13;
        v7 = v15;
        if (v18 == i)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

LABEL_26:

    v22 = sub_1002E2014(v12);

    if (!*(v22 + 16))
    {
      v0 = v107;

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      v42 = v108;
      if (os_log_type_enabled(v40, v41))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v40, v41, "No filters applied to the contact list whoCanBeHelpedByMe", v43, 2u);
        goto LABEL_48;
      }

LABEL_49:

      goto LABEL_51;
    }

    v7 = v108;
    v23 = *(v108 + 16);

    v111 = v23;
    v0 = v107;
    if (!v23)
    {
      break;
    }

    v24 = 0;
    v25 = v107[24];
    v109 = v107[23];
    v26 = v22 + 56;
    v27 = _swiftEmptyArrayStorage;
    while (v24 < *(v7 + 16))
    {
      v28 = v107[31];
      v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v30 = *(v25 + 72);
      sub_100070E78(v7 + v29 + v30 * v24, v28, type metadata accessor for CustodianshipInfoRecord);
      if (*(v22 + 16) && (v31 = *(v28 + *(v109 + 28)), v32 = static Hasher._hash(seed:_:)(), v33 = -1 << *(v22 + 32), v34 = v32 & ~v33, ((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
      {
        v35 = ~v33;
        while (*(*(v22 + 48) + 8 * v34) != v31)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v26 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        sub_100070D64(v107[31], v107[30], type metadata accessor for CustodianshipInfoRecord);
        v113[0] = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1002E0244(0, v27[2] + 1, 1);
          v27 = v113[0];
        }

        v37 = v27[2];
        v36 = v27[3];
        v38 = v27;
        if (v37 >= v36 >> 1)
        {
          sub_1002E0244((v36 > 1), v37 + 1, 1);
          v38 = v113[0];
        }

        v39 = v107[30];
        *(v38 + 16) = v37 + 1;
        sub_100070D64(v39, v38 + v29 + v37 * v30, type metadata accessor for CustodianshipInfoRecord);
        v7 = v108;
        v27 = v38;
      }

      else
      {
LABEL_29:
        sub_100070B00(v107[31], type metadata accessor for CustodianshipInfoRecord);
      }

      if (++v24 == v111)
      {
        goto LABEL_46;
      }
    }

LABEL_88:
    __break(1u);
LABEL_89:
    ;
  }

  v27 = _swiftEmptyArrayStorage;
LABEL_46:
  swift_bridgeObjectRelease_n();

  v40 = Logger.logObject.getter();
  v44 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v44))
  {
    v42 = v27;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v113[0] = v46;
    *v45 = 136315394;
    type metadata accessor for Status(0);
    sub_100070AA8(&qword_1003D8440, type metadata accessor for Status, &unk_10033D870);
    v47 = Set.description.getter();
    v49 = v48;

    v50 = sub_10021145C(v47, v49, v113);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2048;
    v51 = v42[2];

    *(v45 + 14) = v51;

    _os_log_impl(&_mh_execute_header, v40, v44, "Contact list whoCanBeHelpedByMe after applying filters: %s, count %ld", v45, 0x16u);
    sub_10000839C(v46);

LABEL_48:

    goto LABEL_49;
  }

  v42 = v27;
LABEL_51:
  *(v0 + 336) = v42;
  *(v0 + 136) = _swiftEmptyArrayStorage;
  v52 = v42[2];
  *(v0 + 344) = v52;
  if (v52)
  {
    v53 = *(v0 + 192);
    v54 = *(v53 + 80);
    *(v0 + 392) = v54;
    v55 = (v54 + 32) & ~v54;
    *(v0 + 352) = *(v53 + 72);
    *(v0 + 360) = 0;
    v57 = *(v0 + 224);
    v56 = *(v0 + 232);
    v58 = *(v0 + 216);
    v59 = *(v0 + 152);

    sub_100070E78(v42 + v55, v56, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v56, v57, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v56, v58, type metadata accessor for CustodianshipInfoRecord);
    v60 = v59;
    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 224);
      v110 = *(v0 + 184);
      v112 = *(v0 + 216);
      v64 = *(v0 + 152);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v113[0] = v66;
      *v65 = 136315650;
      type metadata accessor for UUID();
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v67 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v68;
      sub_100070B00(v63, type metadata accessor for CustodianshipInfoRecord);
      v70 = sub_10021145C(v67, v69, v113);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2048;
      v71 = *(v112 + *(v110 + 28));
      sub_100070B00(v112, type metadata accessor for CustodianshipInfoRecord);
      *(v65 + 14) = v71;
      *(v65 + 22) = 2048;
      v72 = [v64 cachePolicy];

      *(v65 + 24) = v72;
      _os_log_impl(&_mh_execute_header, v61, v62, "Checking if CustodianRecoveryInfoRecord exist for the contact whoCanBeHelpedByMe, custodianID %s, with status: %ld, cachePolicy: %lu", v65, 0x20u);
      sub_10000839C(v66);
    }

    else
    {
      v84 = *(v0 + 216);
      v83 = *(v0 + 224);
      v85 = *(v0 + 152);

      sub_100070B00(v84, type metadata accessor for CustodianshipInfoRecord);
      sub_100070B00(v83, type metadata accessor for CustodianshipInfoRecord);
    }

    v86 = *(v0 + 232);
    v87 = *(v0 + 160);
    v88 = swift_task_alloc();
    *(v0 + 368) = v88;
    *(v88 + 16) = v86;
    *(v88 + 24) = v87;
    v89 = swift_task_alloc();
    *(v0 + 376) = v89;
    *v89 = v0;
    v89[1] = sub_10006DA64;
    v90 = *(v0 + 176);

    return sub_10006A810(v90, 0xD000000000000019, 0x800000010032D600, &unk_10033F480, v88);
  }

  v73 = *(v0 + 328);
  if ([*(v0 + 152) shouldLookUpContactInAddressBook])
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Request contains address book lookup for contact list whoCanBeHelpedByMe", v76, 2u);
    }

    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_92;
    }

    v77 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (2)
    {

      if (!v77)
      {
LABEL_72:

        break;
      }

      if (_swiftEmptyArrayStorage >> 62)
      {
        v78 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_63:
        v79 = v78;
        v80 = sub_10006F874(v78, *(v0 + 152));
        if (v73)
        {
          swift_bridgeObjectRelease_n();

          v81 = *(v0 + 8);

          return v81();
        }

        v91 = v80;
        [v79 setLocalContactRepresentation:v80];

        if (v77 == 1)
        {
          goto LABEL_72;
        }

        v101 = &_swiftEmptyArrayStorage[5];
        v102 = 1;
        while (1)
        {
          if (_swiftEmptyArrayStorage >> 62)
          {
            v103 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v102 >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_90;
            }

            v103 = *v101;
          }

          v104 = v103;
          v105 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            break;
          }

          v73 = 0;
          v106 = sub_10006F874(v103, *(v0 + 152));
          [v104 setLocalContactRepresentation:v106];

          ++v102;
          ++v101;
          if (v105 == v77)
          {
            goto LABEL_72;
          }
        }
      }

      else
      {
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v78 = _swiftEmptyArrayStorage[4];
          goto LABEL_63;
        }

LABEL_90:
        __break(1u);
      }

      __break(1u);
LABEL_92:
      v77 = _CocoaArrayWrapper.endIndex.getter();
      continue;
    }
  }

  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v113[0] = v95;
    *v94 = 136315138;
    sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);

    v96 = Array.description.getter();
    v98 = v97;

    v99 = sub_10021145C(v96, v98, v113);

    *(v94 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v92, v93, "Final contact list whoCanBeHelpedByMe to be returned: %s", v94, 0xCu);
    sub_10000839C(v95);
  }

  v100 = *(v0 + 8);

  return v100(_swiftEmptyArrayStorage);
}

uint64_t sub_10006D960()
{

  sub_10000839C((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10006DA64()
{
  *(*v1 + 384) = v0;

  if (v0)
  {

    v2 = sub_10006E7B0;
  }

  else
  {

    v2 = sub_10006DBAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006DBAC()
{
  v95 = v0;
  v1 = *(v0 + 176);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 384);
  sub_100070E78(*(v0 + 232), *(v0 + 208), type metadata accessor for CustodianshipInfoRecord);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  if (v8)
  {
    v10 = v4 != 1;
    v90 = v3;
    v11 = swift_slowAlloc();
    v91 = v5;
    v12 = v4;
    v13 = swift_slowAlloc();
    v94[0] = v13;
    *v11 = 67109378;
    *(v11 + 4) = v10;
    *(v11 + 8) = 2080;
    type metadata accessor for UUID();
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    sub_100070B00(v9, type metadata accessor for CustodianshipInfoRecord);
    v17 = sub_10021145C(v14, v16, v94);

    *(v11 + 10) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Has CustodianRecoveryInfoRecord for contact whoCanBeHelpedByMe: %{BOOL}d, custodianID %s", v11, 0x12u);
    sub_10000839C(v13);
    v4 = v12;
    v5 = v91;

    v3 = v90;
  }

  else
  {

    sub_100070B00(v9, type metadata accessor for CustodianshipInfoRecord);
  }

  v18 = *(v0 + 168);
  v19 = *(v0 + 176);
  sub_100070E78(*(v0 + 232), *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
  sub_100012D04(v19, v18, &unk_1003D91B0, qword_1003444F0);
  v20 = v3(v18, 1, v2);
  v21 = *(v0 + 168);
  if (v20 == 1)
  {
    sub_100008D3C(*(v0 + 168), &unk_1003D91B0, qword_1003444F0);
    v22 = 0;
  }

  else
  {
    v22 = *(v21 + *(v2 + 48) + 8);

    sub_100070B00(v21, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v23 = *(v0 + 200);
  v24 = *(v0 + 184);
  v25.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v26 = *(v23 + *(v24 + 28));
  v27 = String._bridgeToObjectiveC()();
  if (v22)
  {
    v28 = String._bridgeToObjectiveC()();
  }

  else
  {
    v28 = 0;
  }

  v29 = *(v0 + 200);
  BYTE1(v89) = 1;
  LOBYTE(v89) = v4 != 1;
  [objc_allocWithZone(AATrustedContact) initWithID:v25.super.isa status:v26 handle:v27 firstName:0 lastName:0 displayName:0 isAcceptedAndShared:v89 isIdMSConfirmed:1 preflightStatus:0 otCustodianID:v28 keyCreatedOnBuild:0 repairDate:0 repairCount:?];

  sub_100070B00(v29, type metadata accessor for CustodianshipInfoRecord);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v30 = *(v0 + 344);
  v31 = *(v0 + 232);
  v32 = *(v0 + 176);
  v33 = *(v0 + 360) + 1;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v34 = *(v0 + 136);
  sub_100008D3C(v32, &unk_1003D91B0, qword_1003444F0);
  sub_100070B00(v31, type metadata accessor for CustodianshipInfoRecord);
  if (v33 == v30)
  {

    if ([*(v0 + 152) shouldLookUpContactInAddressBook])
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Request contains address book lookup for contact list whoCanBeHelpedByMe", v37, 2u);
      }

      if (v34 >> 62)
      {
        goto LABEL_50;
      }

      for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
      {

        if (!i)
        {
LABEL_33:

          break;
        }

        v39 = v34 & 0xFFFFFFFFFFFFFF8;
        v40 = v34 & 0xC000000000000001;
        if ((v34 & 0xC000000000000001) != 0)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          v41 = *(v34 + 32);
        }

        v42 = v41;
        v43 = sub_10006F874(v41, *(v0 + 152));
        if (v5)
        {
          swift_bridgeObjectRelease_n();

          v44 = *(v0 + 8);

          return v44();
        }

        v72 = v43;
        [v42 setLocalContactRepresentation:v43];

        if (i == 1)
        {
          goto LABEL_33;
        }

        v82 = 5;
        while (1)
        {
          v83 = v82 - 4;
          if (v40)
          {
            v84 = v34;
            v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v83 >= *(v39 + 16))
            {
              goto LABEL_48;
            }

            v84 = v34;
            v85 = *(v34 + 8 * v82);
          }

          v86 = v85;
          v34 = v82 - 3;
          if (__OFADD__(v83, 1))
          {
            break;
          }

          v5 = 0;
          v87 = sub_10006F874(v85, *(v0 + 152));
          [v86 setLocalContactRepresentation:v87];

          ++v82;
          v88 = v34 == i;
          v34 = v84;
          if (v88)
          {
            goto LABEL_33;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        ;
      }
    }

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v94[0] = v76;
      *v75 = 136315138;
      sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);

      v77 = Array.description.getter();
      v79 = v78;

      v80 = sub_10021145C(v77, v79, v94);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "Final contact list whoCanBeHelpedByMe to be returned: %s", v75, 0xCu);
      sub_10000839C(v76);
    }

    v81 = *(v0 + 8);

    return v81(v34);
  }

  else
  {
    v46 = *(v0 + 352);
    v47 = *(v0 + 360) + 1;
    *(v0 + 360) = v47;
    v49 = *(v0 + 224);
    v48 = *(v0 + 232);
    v50 = *(v0 + 216);
    v51 = *(v0 + 152);
    sub_100070E78(*(v0 + 336) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + v46 * v47, v48, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v48, v49, type metadata accessor for CustodianshipInfoRecord);
    sub_100070E78(v48, v50, type metadata accessor for CustodianshipInfoRecord);
    v52 = v51;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();
    v55 = os_log_type_enabled(v53, v54);
    v56 = *(v0 + 216);
    v57 = *(v0 + 224);
    if (v55)
    {
      v92 = *(v0 + 184);
      v58 = *(v0 + 152);
      v59 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94[0] = v93;
      *v59 = 136315650;
      type metadata accessor for UUID();
      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      sub_100070B00(v57, type metadata accessor for CustodianshipInfoRecord);
      v63 = sub_10021145C(v60, v62, v94);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2048;
      v64 = *(v56 + *(v92 + 28));
      sub_100070B00(v56, type metadata accessor for CustodianshipInfoRecord);
      *(v59 + 14) = v64;
      *(v59 + 22) = 2048;
      v65 = [v58 cachePolicy];

      *(v59 + 24) = v65;
      _os_log_impl(&_mh_execute_header, v53, v54, "Checking if CustodianRecoveryInfoRecord exist for the contact whoCanBeHelpedByMe, custodianID %s, with status: %ld, cachePolicy: %lu", v59, 0x20u);
      sub_10000839C(v93);
    }

    else
    {
      v66 = *(v0 + 152);

      sub_100070B00(v56, type metadata accessor for CustodianshipInfoRecord);
      sub_100070B00(v57, type metadata accessor for CustodianshipInfoRecord);
    }

    v67 = *(v0 + 232);
    v68 = *(v0 + 160);
    v69 = swift_task_alloc();
    *(v0 + 368) = v69;
    *(v69 + 16) = v67;
    *(v69 + 24) = v68;
    v70 = swift_task_alloc();
    *(v0 + 376) = v70;
    *v70 = v0;
    v70[1] = sub_10006DA64;
    v71 = *(v0 + 176);

    return sub_10006A810(v71, 0xD000000000000019, 0x800000010032D600, &unk_10033F480, v69);
  }
}

uint64_t sub_10006E7B0()
{
  v80 = v0;
  v1 = *(v0 + 176);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 1, 1, v2);
  sub_100070E78(*(v0 + 232), *(v0 + 208), type metadata accessor for CustodianshipInfoRecord);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 208);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v79[0] = v9;
    *v8 = 67109378;
    *(v8 + 8) = 2080;
    type metadata accessor for UUID();
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    sub_100070B00(v7, type metadata accessor for CustodianshipInfoRecord);
    v13 = sub_10021145C(v10, v12, v79);

    *(v8 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "Has CustodianRecoveryInfoRecord for contact whoCanBeHelpedByMe: %{BOOL}d, custodianID %s", v8, 0x12u);
    sub_10000839C(v9);
  }

  else
  {

    sub_100070B00(v7, type metadata accessor for CustodianshipInfoRecord);
  }

  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  sub_100070E78(*(v0 + 232), *(v0 + 200), type metadata accessor for CustodianshipInfoRecord);
  sub_100012D04(v14, v15, &unk_1003D91B0, qword_1003444F0);
  v16 = (*(v3 + 48))(v15, 1, v2);
  v17 = *(v0 + 168);
  if (v16 == 1)
  {
    sub_100008D3C(*(v0 + 168), &unk_1003D91B0, qword_1003444F0);
    v18 = 0;
  }

  else
  {
    v18 = *(v17 + *(v2 + 48) + 8);

    sub_100070B00(v17, type metadata accessor for CustodianRecoveryInfoRecord);
  }

  v19 = *(v0 + 200);
  v20 = *(v0 + 184);
  v21.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  v22 = *(v19 + *(v20 + 28));
  v23 = String._bridgeToObjectiveC()();
  if (v18)
  {
    v24 = String._bridgeToObjectiveC()();
  }

  else
  {
    v24 = 0;
  }

  v25 = *(v0 + 200);
  LOWORD(v76) = 256;
  [objc_allocWithZone(AATrustedContact) initWithID:v21.super.isa status:v22 handle:v23 firstName:0 lastName:0 displayName:0 isAcceptedAndShared:v76 isIdMSConfirmed:1 preflightStatus:0 otCustodianID:v24 keyCreatedOnBuild:0 repairDate:0 repairCount:?];

  sub_100070B00(v25, type metadata accessor for CustodianshipInfoRecord);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v26 = *(v0 + 344);
    v27 = *(v0 + 232);
    v28 = *(v0 + 176);
    v29 = *(v0 + 360) + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v30 = *(v0 + 136);
    sub_100008D3C(v28, &unk_1003D91B0, qword_1003444F0);
    sub_100070B00(v27, type metadata accessor for CustodianshipInfoRecord);
    if (v29 != v26)
    {
      break;
    }

    if (([*(v0 + 152) shouldLookUpContactInAddressBook] & 1) == 0)
    {
      goto LABEL_33;
    }

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Request contains address book lookup for contact list whoCanBeHelpedByMe", v33, 2u);
    }

    if (v30 >> 62)
    {
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v34)
    {
LABEL_32:

LABEL_33:
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v79[0] = v70;
        *v69 = 136315138;
        sub_100016034(0, &qword_1003DA1F8, AATrustedContact_ptr);

        v71 = Array.description.getter();
        v73 = v72;

        v74 = sub_10021145C(v71, v73, v79);

        *(v69 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v67, v68, "Final contact list whoCanBeHelpedByMe to be returned: %s", v69, 0xCu);
        sub_10000839C(v70);
      }

      v75 = *(v0 + 8);

      return v75(v30);
    }

    v35 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v35 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v36 = *(v30 + 8 * v35 + 32);
      }

      v37 = v36;
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v39 = sub_10006F874(v36, *(v0 + 152));
      [v37 setLocalContactRepresentation:v39];

      ++v35;
      if (v38 == v34)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v40 = *(v0 + 352);
  v41 = *(v0 + 360) + 1;
  *(v0 + 360) = v41;
  v43 = *(v0 + 224);
  v42 = *(v0 + 232);
  v44 = *(v0 + 216);
  v45 = *(v0 + 152);
  sub_100070E78(*(v0 + 336) + ((*(v0 + 392) + 32) & ~*(v0 + 392)) + v40 * v41, v42, type metadata accessor for CustodianshipInfoRecord);
  sub_100070E78(v42, v43, type metadata accessor for CustodianshipInfoRecord);
  sub_100070E78(v42, v44, type metadata accessor for CustodianshipInfoRecord);
  v46 = v45;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 216);
  v51 = *(v0 + 224);
  if (v49)
  {
    v77 = *(v0 + 184);
    v52 = *(v0 + 152);
    v53 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v79[0] = v78;
    *v53 = 136315650;
    type metadata accessor for UUID();
    sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v56 = v55;
    sub_100070B00(v51, type metadata accessor for CustodianshipInfoRecord);
    v57 = sub_10021145C(v54, v56, v79);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2048;
    v58 = *(v50 + *(v77 + 28));
    sub_100070B00(v50, type metadata accessor for CustodianshipInfoRecord);
    *(v53 + 14) = v58;
    *(v53 + 22) = 2048;
    v59 = [v52 cachePolicy];

    *(v53 + 24) = v59;
    _os_log_impl(&_mh_execute_header, v47, v48, "Checking if CustodianRecoveryInfoRecord exist for the contact whoCanBeHelpedByMe, custodianID %s, with status: %ld, cachePolicy: %lu", v53, 0x20u);
    sub_10000839C(v78);
  }

  else
  {
    v60 = *(v0 + 152);

    sub_100070B00(v50, type metadata accessor for CustodianshipInfoRecord);
    sub_100070B00(v51, type metadata accessor for CustodianshipInfoRecord);
  }

  v61 = *(v0 + 232);
  v62 = *(v0 + 160);
  v63 = swift_task_alloc();
  *(v0 + 368) = v63;
  *(v63 + 16) = v61;
  *(v63 + 24) = v62;
  v64 = swift_task_alloc();
  *(v0 + 376) = v64;
  *v64 = v0;
  v64[1] = sub_10006DA64;
  v65 = *(v0 + 176);

  return sub_10006A810(v65, 0xD000000000000019, 0x800000010032D600, &unk_10033F480, v63);
}

uint64_t sub_10006F33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10006F43C, 0, 0);
}

uint64_t sub_10006F43C()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[8];
  v8 = *(type metadata accessor for CustodianshipInfoRecord(0) + 20);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 16))(v1, v7 + v8, v9);
  *(v1 + v2[5]) = 0;
  v10 = v1 + v2[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(v1 + v2[7]) = 1;
  v11 = (v1 + v2[8]);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + v2[9]);
  *v12 = 0;
  v12[1] = 0;
  (*(v4 + 16))(v3, v6 + OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController, v5);
  Dependency.wrappedValue.getter();
  (*(v4 + 8))(v3, v5);
  sub_1000080F8(v0 + 2, v0[5]);
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_10006F5E4;
  v14 = v0[14];
  v15 = v0[7];

  return sub_100021548(v15, v14, 0, 0);
}

uint64_t sub_10006F5E4()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_10006F7DC;
  }

  else
  {
    v2 = sub_10006F6F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006F6F8()
{
  v1 = v0[7];
  sub_100070B00(v0[14], type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_10000839C(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10006F7DC()
{
  sub_100070B00(v0[14], type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10000839C(v0 + 2);

  v1 = v0[1];

  return v1();
}

id sub_10006F874(void *a1, void *a2)
{
  v93 = a2;
  v95 = type metadata accessor for UUID();
  v98 = *(v95 - 8);
  __chkstk_darwin(v95);
  v94 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CharacterSet();
  v97 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v90 - v9;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100008D04(v11, qword_1003FAA88);
  v13 = a1;
  v92 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v91 = v6;
    v17 = v16;
    v18 = v4;
    v19 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v13;
    *v19 = v13;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, "Finding local contact from address book to associate for %@", v17, 0xCu);
    sub_100008D3C(v19, &unk_1003D9140, &qword_10033E640);
    v4 = v18;

    v6 = v91;
  }

  (*(v8 + 16))(v10, &v96[OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__contactManager], v7);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v10, v7);
  v21 = v99;
  v22 = [v13 handle];
  if (!v22)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = String._bridgeToObjectiveC()();
  }

  v23 = [v21 contactForHandle:v22];

  swift_unknownObjectRelease();
  v96 = v23;
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v96;
  v25 = [v24 givenName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v99 = v26;
  v100 = v28;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_1000709A0();
  v29 = StringProtocol.trimmingCharacters(in:)();
  v31 = v30;
  v32 = v97[1];
  ++v97;
  v32(v6, v4);

  v33 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v33 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    goto LABEL_17;
  }

  v34 = [v24 familyName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v99 = v35;
  v100 = v37;
  static CharacterSet.whitespacesAndNewlines.getter();
  v38 = StringProtocol.trimmingCharacters(in:)();
  v40 = v39;
  v32(v6, v4);

  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
LABEL_17:

LABEL_18:
    v45 = [v13 handle];
    v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v47;

    v49 = [v13 firstName];
    if (v49)
    {
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v54 = [v13 lastName];
    if (v54)
    {
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v59 = objc_allocWithZone(AALocalContactInfo);
    v44 = sub_1000708D0(v46, v48, v51, v53, v56, v58);
    goto LABEL_25;
  }

  v42 = [v13 handle];
  if (!v42)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = String._bridgeToObjectiveC()();
  }

  v43 = [objc_allocWithZone(AALocalContactInfo) initWithHandle:v42 contact:v24];

  v44 = v43;
LABEL_25:
  v60 = v98;
  v61 = v44;
  v62 = [v13 custodianID];
  v63 = v94;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  isa = UUID._bridgeToObjectiveC()().super.isa;
  v67 = *(v60 + 8);
  v65 = v60 + 8;
  v66 = v67;
  v67(v63, v95);
  [v61 setCustodianID:isa];

  [v61 setTrustedContactStatus:{objc_msgSend(v13, "status")}];
  [v61 setIsAcceptedAndShared:{objc_msgSend(v13, "isAcceptedAndShared")}];
  [v61 setIsIdMSConfirmed:{objc_msgSend(v13, "isIdMSConfirmed")}];
  [v61 setPreflightStatus:{objc_msgSend(v13, "preflightStatus")}];

  v68 = [v93 contactType];
  if (!v68)
  {
    v69 = 1;
    goto LABEL_29;
  }

  if (v68 == 1)
  {
    v69 = 2;
LABEL_29:
    v70 = v61;
    [v70 setContactType:v69];
    v71 = v13;
    v72 = v70;
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v92 = v66;
      v76 = v75;
      v77 = swift_slowAlloc();
      v98 = v65;
      v93 = v77;
      v97 = swift_slowAlloc();
      v99 = v97;
      *v76 = 136315394;
      v78 = [v71 custodianID];
      v79 = v94;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100070AA8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v80 = v95;
      v81 = dispatch thunk of CustomStringConvertible.description.getter();
      v83 = v82;
      v92(v79, v80);
      v84 = sub_10021145C(v81, v83, &v99);

      *(v76 + 4) = v84;
      *(v76 + 12) = 2112;
      *(v76 + 14) = v72;
      v85 = v93;
      *v93 = v72;
      _os_log_impl(&_mh_execute_header, v73, v74, "Local contact representation for %s is %@", v76, 0x16u);
      sub_100008D3C(v85, &unk_1003D9140, &qword_10033E640);

      sub_10000839C(v97);
    }

    else
    {
    }

    return v61;
  }

  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    *v88 = 0;
    _os_log_impl(&_mh_execute_header, v86, v87, "Unknown contactType is requested in the fetch trusted contact request", v88, 2u);
  }

  type metadata accessor for AACustodianError(0);
  v101 = -7000;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100070AA8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();

  return v61;
}

uint64_t sub_1000702D0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__accountStore;
  v2 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__custodianStorageController;
  v4 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__storageController;
  v6 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__idmsHandler;
  v8 = sub_100005814(&qword_1003E5730, &qword_10033F490);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__securityController;
  v10 = sub_100005814(&qword_1003DA570, qword_10033F508);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__cloudStorage;
  v12 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  (*(*(v12 - 8) + 8))(v0 + v11, v12);
  v13 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__cloudShare;
  v14 = sub_100005814(&unk_1003DA560, &unk_10033F4F8);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtC13appleaccountd22DaemonCustodianFetcher__contactManager;
  v16 = sub_100005814(&unk_1003D97D0, &qword_10033FBB0);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonCustodianFetcher(uint64_t a1)
{
  result = qword_1003DA288;
  if (!qword_1003DA288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000705E0(uint64_t a1)
{
  sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, &unk_1003DB250, &qword_1003D9A30, &unk_10033F040);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, &unk_1003DB260, &unk_1003D9860, &qword_10033F440);
          if (v5 <= 0x3F)
          {
            sub_10000DAB8(319, &unk_1003DB230, &unk_1003D9830, &qword_10033E970);
            if (v6 <= 0x3F)
            {
              sub_10000DAB8(319, &qword_1003E5660, &unk_1003D98D0, &unk_10033F050);
              if (v7 <= 0x3F)
              {
                sub_10000DAB8(319, qword_1003E9730, &unk_1003D9820, &unk_10033EFD0);
                if (v8 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

id sub_1000708D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v10 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = String._bridgeToObjectiveC()();

LABEL_6:
  v12 = [v6 initWithHandle:v9 firstName:v10 lastName:v11];

  return v12;
}

unint64_t sub_1000709A0()
{
  result = qword_1003DA520;
  if (!qword_1003DA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DA520);
  }

  return result;
}

uint64_t sub_1000709FC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006F33C(a1, v5, v4);
}

uint64_t sub_100070AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_100070AF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100070B00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100070B60(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006B1B4(a1, v5, v4);
}

uint64_t sub_100070C0C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000082A8;

  return sub_10006BD24(a1, v5, v4);
}

uint64_t sub_100070CB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006B908(a1, v5, v4);
}

uint64_t sub_100070D64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100070DCC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_10006B588(a1, v5, v4);
}

uint64_t sub_100070E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100070EE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000EF88;

  return sub_100069700(a1, v5, v4);
}

uint64_t sub_100070F9C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1003D7DC0 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  sub_100005814(&qword_1003DA618, &qword_10033F568);
  OS_dispatch_queue.sync<A>(execute:)();
  if (!*(v10 + 16))
  {
    v5 = 0;
LABEL_8:

    v8 = 2;
    return v5 & (v8 ^ 1) & (v8 != 2);
  }

  sub_1003084DC(v3, a2);
  v5 = v4;

  if (!*(v10 + 16))
  {
    goto LABEL_8;
  }

  v6 = sub_1003084DC(v3, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

  v8 = *(*(v10 + 56) + v6);

  return v5 & (v8 ^ 1) & (v8 != 2);
}

uint64_t sub_100071120()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  sub_100071C74();
  static DispatchQoS.unspecified.getter();
  v7[1] = _swiftEmptyArrayStorage;
  sub_100071CC0();
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_100071D18();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v0);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  qword_1003DA578 = result;
  return result;
}

uint64_t sub_100071328(uint64_t a1)
{
  if (qword_1003D7DC0 != -1)
  {
    a1 = swift_once();
  }

  __chkstk_darwin(a1);
  sub_100005814(&qword_1003DA618, &qword_10033F568);
  OS_dispatch_queue.sync<A>(execute:)();
  return v2;
}

void sub_100071420(unint64_t *a1@<X8>)
{
  v2 = sub_100308DB4(_swiftEmptyArrayStorage);
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100008D04(v3, qword_1003FAAD0);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Preflight results are being fetched from UserDefaults", v6, 2u);
  }

  v7 = [objc_opt_self() getCustodianInfo];
  if (v7)
  {
    v8 = v7;
    v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = sub_100308EB0(_swiftEmptyArrayStorage);
  }

  AnyHashable.init<A>(_:)();
  if (*(v9 + 16) && (v10 = sub_10031B060(v21), (v11 & 1) != 0))
  {
    sub_10000DB1C(*(v9 + 56) + 32 * v10, v22);
    sub_1000526B0(v21);

    sub_100005814(&qword_1003DA618, &qword_10033F568);
    if (swift_dynamicCast())
    {

      v2 = 0xD000000000000010;

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v21[0] = v15;
        *v14 = 136315138;
        v16 = Dictionary.description.getter();
        v18 = sub_10021145C(v16, v17, v21);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Preflight results fetched from UserDefaults %s", v14, 0xCu);
        sub_10000839C(v15);

LABEL_16:

        goto LABEL_17;
      }

      goto LABEL_17;
    }
  }

  else
  {

    sub_1000526B0(v21);
  }

  v12 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v12, v19, "Preflight results not found in UserDefaults", v20, 2u);
    goto LABEL_16;
  }

LABEL_17:

  *a1 = v2;
}

uint64_t sub_1000717B0(uint64_t a1)
{
  v3 = *v1;
  if (qword_1003D7DC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1003DA578;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100071DB4;
  *(v6 + 24) = v5;
  v10[4] = sub_100071DCC;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10030F718;
  v10[3] = &unk_1003A63C8;
  v7 = _Block_copy(v10);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100071960(uint64_t a1)
{
  if (qword_1003D7F50 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100008D04(v2, qword_1003FAAD0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136315138;
    v7 = Dictionary.description.getter();
    v9 = sub_10021145C(v7, v8, v19);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Preflight results are being set in UserDefaults: %s", v5, 0xCu);
    sub_10000839C(v6);
  }

  v10 = objc_opt_self();
  v11 = [v10 getCustodianInfo];
  if (v11)
  {
    v12 = v11;
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v13 = sub_100308EB0(_swiftEmptyArrayStorage);
  }

  *(&v17 + 1) = 0x800000010032D690;
  AnyHashable.init<A>(_:)();
  v18 = sub_100005814(&qword_1003DA618, &qword_10033F568);
  *&v17 = a1;
  sub_100070AF0(&v17, v16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1002CF328(v16, v19, isUniquelyReferenced_nonNull_native);
  sub_1000526B0(v19);
  if (*(v13 + 16))
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 setCustodianInfo:isa];
  }

  else
  {
  }
}

unint64_t sub_100071C74()
{
  result = qword_1003DC2B0;
  if (!qword_1003DC2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003DC2B0);
  }

  return result;
}

unint64_t sub_100071CC0()
{
  result = qword_1003DAB90;
  if (!qword_1003DAB90)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DAB90);
  }

  return result;
}

unint64_t sub_100071D18()
{
  result = qword_1003DABA0;
  if (!qword_1003DABA0)
  {
    sub_100008CBC(&unk_1003E6290, &qword_10033F570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DABA0);
  }

  return result;
}

uint64_t sub_100071D7C()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_100071DD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100071E04()
{
  type metadata accessor for CustodianHealthCheck(0);
  sub_100005814(&unk_1003DA870, &unk_10033F5E0);
  result = String.init<A>(describing:)();
  qword_1003DA620 = result;
  *algn_1003DA628 = v1;
  return result;
}

uint64_t sub_100071E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a3;
  v52 = a4;
  v57 = a2;
  v6 = *v4;
  v49 = a1;
  v50 = v6;
  v56 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v54 = *(v56 - 8);
  __chkstk_darwin(v56);
  v53 = &v45 - v7;
  v8 = type metadata accessor for URL();
  v55 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v45 - v12;
  v14 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v18 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v45 - v20;
  (*(v19 + 16))(&v45 - v20, v5 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__accountStore, v18);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v21, v18);
  v22 = [*(*sub_1000080F8(v59 v60) + 16)];
  if (v22 && (v23 = v22, v24 = [v22 aa_altDSID], v23, v24))
  {
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v26;
  }

  else
  {
    v25 = 0;
    v48 = 0;
  }

  sub_10000839C(v59);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAAB8);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v46 = v25;
    v47 = v8;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v59[0] = v31;
    *v30 = 136315138;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v30 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v59);
    _os_log_impl(&_mh_execute_header, v28, v29, "%s - started.", v30, 0xCu);
    sub_10000839C(v31);

    v8 = v47;
    v25 = v46;
  }

  else
  {
  }

  (*(v15 + 16))(v17, v5 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage, v14);
  Dependency.wrappedValue.getter();
  (*(v15 + 8))(v17, v14);
  v32 = sub_1000080F8(v59, v60);
  v33 = swift_allocObject();
  v34 = v49;
  v33[2] = v5;
  v33[3] = v34;
  v33[4] = v57;
  v33[5] = v25;
  v35 = v51;
  v36 = v52;
  v33[6] = v48;
  v33[7] = v35;
  v37 = v50;
  v33[8] = v36;
  v33[9] = v37;
  v38 = sub_1000080F8((*v32 + 16), *(*v32 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v39 = *(v55 + 8);
  v39(v11, v8);
  v40 = v53;
  v41 = v54;
  v42 = *v38 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage;
  v43 = v56;
  (*(v54 + 16))(v53, v42, v56);
  Dependency.wrappedValue.getter();
  (*(v41 + 8))(v40, v43);
  sub_1000080F8(v58, v58[3]);
  sub_1000328BC(v13, sub_10007CD08, v33);

  v39(v13, v8);
  sub_10000839C(v58);
  return sub_10000839C(v59);
}

uint64_t sub_1000724D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  if ((a2 & 1) == 0)
  {
    return sub_1000726EC(a1, a4, a5, a6, a7, a8, a9);
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAAB8);
  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  sub_1000399DC(a1, 1);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v14 = 136315394;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v14 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v19);
    *(v14 + 12) = 2112;
    v17 = _convertErrorToNSError(_:)();
    *(v14 + 14) = v17;
    *v15 = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s - error fetching my custodianship records: %@", v14, 0x16u);
    sub_100008D3C(v15, &unk_1003D9140, &qword_10033E640);

    sub_10000839C(v16);
  }

  return a8(a1);
}

uint64_t sub_1000726EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v41 = a6;
  v42 = a7;
  v49 = a5;
  v13 = *v7;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  v47 = *(v14 - 8);
  v48 = v14;
  __chkstk_darwin(v14);
  v46 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v44 = *(v16 - 8);
  v45 = v16;
  __chkstk_darwin(v16);
  v43 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS.QoSClass();
  v39 = *(v18 - 8);
  v40 = v18;
  __chkstk_darwin(v18);
  v38 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = dispatch_group_create();
  type metadata accessor for PartialErrorHandler();
  swift_allocObject();
  v20 = sub_10031FD1C();
  v21 = *(a1 + 16);
  if (v21)
  {
    v22 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
    v23 = a1 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v24 = *(v22 + 72);
    do
    {
      sub_1000745F8(v23, v50, v8, a2, a3, a4, v49, v20, v13);
      v23 += v24;
      --v21;
    }

    while (v21);
  }

  sub_100071C74();
  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 104))(v38, enum case for DispatchQoS.QoSClass.background(_:), v40);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v25 + 8))(v26, v27);
  v29 = swift_allocObject();
  v30 = v41;
  v31 = v42;
  v29[2] = v20;
  v29[3] = v30;
  v29[4] = v31;
  aBlock[4] = sub_10007CD80;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A66E0;
  v32 = _Block_copy(aBlock);

  v33 = v43;
  static DispatchQoS.unspecified.getter();
  v51 = _swiftEmptyArrayStorage;
  sub_10007CC70(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000383E4();
  v34 = v46;
  v35 = v48;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = v50;
  OS_dispatch_group.notify(qos:flags:queue:execute:)();

  _Block_release(v32);

  (*(v47 + 8))(v34, v35);
  (*(v44 + 8))(v33, v45);
}

uint64_t sub_100072B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a5;
  v54 = a7;
  v55 = a3;
  v50 = a2;
  v51 = *v7;
  v52 = a6;
  v10 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v48 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v49 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v16;
  __chkstk_darwin(v15);
  v18 = &v42 - v17;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAAB8);
  v20 = *(v14 + 16);
  v57 = a1;
  v46 = v20;
  v20(v18, a1, v13);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v44 = v10;
    v45 = a4;
    v23 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58[0] = v43;
    *v23 = 136315394;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v23 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v58);
    *(v23 + 12) = 2080;
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v13;
    v27 = v26;
    (*(v14 + 8))(v18, v25);
    v28 = sub_10021145C(v24, v27, v58);
    v13 = v25;

    *(v23 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s - starting individual custodian health check for %s", v23, 0x16u);
    swift_arrayDestroy();

    v10 = v44;
    a4 = v45;
  }

  else
  {

    (*(v14 + 8))(v18, v13);
  }

  v29 = v48;
  v30 = v56;
  (v48[2])(v12, v56 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage, v10);
  Dependency.wrappedValue.getter();
  (v29[1])(v12, v10);
  v48 = sub_1000080F8(v58, v58[3]);
  v31 = v49;
  v32 = v57;
  v46(v49, v57, v13);
  v33 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v34 = (v47 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v13;
  v37 = v35;
  v38 = v50;
  *(v35 + 2) = v30;
  *(v35 + 3) = v38;
  v39 = v54;
  *(v35 + 4) = v55;
  *(v35 + 5) = a4;
  v40 = v52;
  *(v35 + 6) = v53;
  *(v35 + 7) = v40;
  *(v35 + 8) = v39;
  (*(v14 + 32))(&v35[v33], v31, v36);
  *(v37 + v34) = v51;

  sub_1000259E4(v32, sub_10007BA0C, v37);

  return sub_10000839C(v58);
}

uint64_t sub_1000730B8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8, uint64_t a9)
{
  v44 = a5;
  v45 = a6;
  v47 = a2;
  v46 = type metadata accessor for UUID();
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&unk_1003DA0E0, &unk_10033F1D0);
  __chkstk_darwin(v18);
  v20 = (&v43 - v19);
  sub_100012D04(a1, &v43 - v19, &unk_1003DA0E0, &unk_10033F1D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = a7;
    v45 = a8;
    v21 = *v20;
    v22 = objc_allocWithZone(type metadata accessor for CustodianshipHealthCheckAnalyticsEvent(0));
    *&v22[qword_1003E3F40] = _swiftEmptyArrayStorage;
    v22[qword_1003E3F48] = 0;
    v23 = &v22[qword_1003E3F50];
    *v23 = 0;
    v23[1] = 0;
    sub_100005814(&unk_1003DA880, &unk_10033F5F0);
    Dependency.init(dependencyId:config:)();
    sub_100309C2C(_swiftEmptyArrayStorage);
    v24 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
    _convertErrorToNSError(_:)();
    v25 = qword_1003E3F40;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v24 + v25) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v24 + v25) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10024BFE4(0);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_100008D04(v26, qword_1003FAAB8);
    v28 = v48;
    v27 = v49;
    v29 = v46;
    (*(v49 + 16))(v48, a9, v46);
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v32 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v32 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v50);
      *(v32 + 12) = 2080;
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = v48;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v29;
      v38 = v37;
      (*(v49 + 8))(v34, v36);
      v39 = sub_10021145C(v35, v38, v50);

      *(v32 + 14) = v39;
      *(v32 + 22) = 2112;
      v40 = _convertErrorToNSError(_:)();
      *(v32 + 24) = v40;
      *v33 = v40;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s - error fetching custodianship record for %s: %@", v32, 0x20u);
      sub_100008D3C(v33, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      (*(v27 + 8))(v28, v29);
    }

    v42 = v47;
    swift_errorRetain();
    v42(v21);
  }

  else
  {
    sub_10007C488(v20, v17, type metadata accessor for CustodianshipInfoRecord);
    sub_1000736A4(v17, a3, a4, v44, v45, a7, a8);
    return sub_10007C424(v17, type metadata accessor for CustodianshipInfoRecord);
  }
}

void sub_1000736A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v108 = a7;
  v103 = a1;
  v104 = a6;
  v97 = *v7;
  v12 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v100 = *(v12 - 8);
  v101 = v12;
  __chkstk_darwin(v12);
  v99 = &v85 - v13;
  v14 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v14 - 8);
  v98 = &v85 - v15;
  v105 = type metadata accessor for CustodianshipInfoRecord(0);
  v92 = *(v105 - 1);
  v16 = *(v92 + 64);
  v17 = __chkstk_darwin(v105);
  v96 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v95 = &v85 - v19;
  __chkstk_darwin(v18);
  v91 = &v85 - v20;
  v88 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v85 - v21;
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v89 = *(RecoveryRecordsRequest - 1);
  v23 = __chkstk_darwin(RecoveryRecordsRequest);
  v93 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v24;
  __chkstk_darwin(v23);
  v26 = &v85 - v25;
  v27 = objc_allocWithZone(type metadata accessor for CustodianshipHealthCheckAnalyticsEvent(0));
  *&v27[qword_1003E3F40] = _swiftEmptyArrayStorage;
  v27[qword_1003E3F48] = 0;
  v28 = &v27[qword_1003E3F50];
  *v28 = 0;
  v28[1] = 0;
  sub_100005814(&unk_1003DA880, &unk_10033F5F0);
  Dependency.init(dependencyId:config:)();
  sub_100309C2C(_swiftEmptyArrayStorage);
  v29 = a5;
  v30 = AAFTimedAnalyticsEvent.init(eventName:initialData:)();
  v31 = kAAAnalyticsEventCustodianHealthCheckCustodian;
  v106 = v30;
  v94 = a4;
  if (a5)
  {
    v32 = a2;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v33 = v31;
    v34 = String._bridgeToObjectiveC()();
    v35 = v29;
  }

  else
  {
    v35 = 0;
    v32 = a2;
    swift_bridgeObjectRetain_n();
    v36 = v31;
    v34 = 0;
  }

  v37 = objc_opt_self();
  v38 = String._bridgeToObjectiveC()();

  v39 = [v37 analyticsEventWithName:v31 altDSID:v34 flowID:v38];

  v40 = v103;
  v41 = *(v103 + v105[7]) & 0xFFFFFFFFFFFFFFFELL;
  v102 = v39;
  if (v41 == 2)
  {
    v42 = v105[5];
    v43 = type metadata accessor for UUID();
    (*(*(v43 - 8) + 16))(v26, v40 + v42, v43);
    v26[RecoveryRecordsRequest[5]] = 1;
    v44 = &v26[RecoveryRecordsRequest[6]];
    *v44 = 0;
    v44[8] = 1;
    v26[RecoveryRecordsRequest[7]] = 1;
    v45 = &v26[RecoveryRecordsRequest[8]];
    *v45 = v94;
    v45[1] = v35;
    v46 = &v26[RecoveryRecordsRequest[9]];
    *v46 = v32;
    v46[1] = a3;
    v47 = v39;
    v48 = v87;
    v49 = v107;
    v50 = v86;
    v51 = v88;
    (*(v87 + 16))(v86, v107 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage, v88);
    Dependency.wrappedValue.getter();
    (*(v48 + 8))(v50, v51);
    v52 = sub_1000080F8(v109, v109[3]);
    v53 = v91;
    sub_10007C3BC(v40, v91, type metadata accessor for CustodianshipInfoRecord);
    v54 = (*(v92 + 80) + 56) & ~*(v92 + 80);
    v55 = swift_allocObject();
    v56 = v106;
    *(v55 + 2) = v49;
    *(v55 + 3) = v56;
    v57 = v104;
    *(v55 + 4) = v47;
    *(v55 + 5) = v57;
    *(v55 + 6) = v108;
    sub_10007C488(v53, v55 + v54, type metadata accessor for CustodianshipInfoRecord);
    *(v55 + ((v16 + v54 + 7) & 0xFFFFFFFFFFFFFFF8)) = v97;
    v58 = *v52;
    v59 = type metadata accessor for TaskPriority();
    v60 = v98;
    (*(*(v59 - 8) + 56))(v98, 1, 1, v59);
    v61 = v93;
    sub_10007C3BC(v26, v93, type metadata accessor for FetchRecoveryRecordsRequest);
    v62 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v63 = (v90 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = 0;
    *(v64 + 24) = 0;
    sub_10007C488(v61, v64 + v62, type metadata accessor for FetchRecoveryRecordsRequest);
    *(v64 + v63) = v58;
    v65 = (v64 + ((v63 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v65 = sub_10007C048;
    v65[1] = v55;
    v66 = v102;

    v67 = v106;

    sub_1000BCD5C(0, 0, v60, &unk_10033F610, v64);

    sub_10007C424(v26, type metadata accessor for FetchRecoveryRecordsRequest);
    sub_10000839C(v109);
  }

  else
  {

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_100008D04(v68, qword_1003FAAB8);
    v69 = v95;
    sub_10007C3BC(v40, v95, type metadata accessor for CustodianshipInfoRecord);
    v70 = v96;
    sub_10007C3BC(v40, v96, type metadata accessor for CustodianshipInfoRecord);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v109[0] = swift_slowAlloc();
      *v73 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v73 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v109);
      *(v73 + 12) = 2080;
      v74 = v105;
      v75 = (v69 + v105[6]);
      v76 = *v75;
      v77 = v75[1];

      sub_10007C424(v69, type metadata accessor for CustodianshipInfoRecord);
      v78 = sub_10021145C(v76, v77, v109);

      *(v73 + 14) = v78;
      *(v73 + 22) = 2048;
      v79 = *(v70 + v74[7]);
      sub_10007C424(v70, type metadata accessor for CustodianshipInfoRecord);
      *(v73 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v71, v72, "%s - Custodian Owner %s\nwith status %ld did not require a health check.", v73, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_10007C424(v70, type metadata accessor for CustodianshipInfoRecord);

      sub_10007C424(v69, type metadata accessor for CustodianshipInfoRecord);
    }

    v80 = v102;
    v81 = v106;
    sub_10024BFE4(0);
    if (v80)
    {
      [v80 updateTaskResultWithError:0];
    }

    v82 = v99;
    v83 = v100;
    v84 = v101;
    (*(v100 + 16))(v99, v107 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter, v101);
    Dependency.wrappedValue.getter();
    (*(v83 + 8))(v82, v84);
    swift_getObjectType();
    sub_100246FA8(v80);
    swift_unknownObjectRelease();
    v104(0);
  }
}

uint64_t sub_1000741AC()
{
  v1 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__custodianStorage;
  v2 = sub_100005814(&unk_1003DA530, &qword_10033F460);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController;
  v4 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider;
  v6 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__accountStore;
  v8 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v10 - 8) + 8))(v0 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianHealthCheck(uint64_t a1)
{
  result = qword_1003DA680;
  if (!qword_1003DA680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000743D8(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DA690, &unk_1003D9840, &unk_10033EFE0);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &unk_1003DA6A0, &unk_1003DA2B0, &unk_10033F430);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, &unk_1003DA6B0, &unk_1003E55D0, &unk_100340CC0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
        if (v4 <= 0x3F)
        {
          sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1000745F8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38 = a8;
  v43 = a3;
  v44 = a7;
  v41 = a5;
  v42 = a6;
  v40 = a4;
  v12 = type metadata accessor for CustodianshipInfoRecord(0);
  v36 = *(v12 - 8);
  v13 = *(v36 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v34 - v16;
  v37 = a2;
  dispatch_group_enter(a2);
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v35 = a9;
  v18 = type metadata accessor for Logger();
  sub_100008D04(v18, qword_1003FAAB8);
  v39 = a1;
  sub_10007C3BC(a1, v17, type metadata accessor for CustodianshipInfoRecord);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v34[1] = v9;
    v21 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *v21 = 136315394;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v21 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v45);
    *(v21 + 12) = 2080;
    type metadata accessor for UUID();
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    sub_10007C424(v17, type metadata accessor for CustodianshipInfoRecord);
    v25 = sub_10021145C(v22, v24, &v45);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s - performing health check for %s.", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10007C424(v17, type metadata accessor for CustodianshipInfoRecord);
  }

  v26 = v39;
  sub_10007C3BC(v39, v15, type metadata accessor for CustodianshipInfoRecord);
  v27 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v28 = (v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_10007C488(v15, v30 + v27, type metadata accessor for CustodianshipInfoRecord);
  v31 = v37;
  *(v30 + v28) = v38;
  *(v30 + v29) = v31;
  *(v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8)) = v35;

  v32 = v31;
  sub_1000736A4(v26, v40, v41, v42, v44, sub_10007CF00, v30);
}

void sub_100074A04(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v8 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v29 = a4;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100008D04(v11, qword_1003FAAB8);
    sub_10007C3BC(a2, v10, type metadata accessor for CustodianshipInfoRecord);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v28 = a3;
      v14 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v14 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v14 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v30);
      *(v14 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v15 = dispatch thunk of CustomStringConvertible.description.getter();
      v17 = v16;
      sub_10007C424(v10, type metadata accessor for CustodianshipInfoRecord);
      v18 = sub_10021145C(v15, v17, &v30);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "%s - error performing health check for %s.", v14, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v10, type metadata accessor for CustodianshipInfoRecord);
    }

    v19 = (a2 + *(v8 + 24));
    v20 = v19[1];
    v30 = *v19;
    v31 = v20;

    v21._countAndFlagsBits = 58;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v22);

    v23 = v30;
    v24 = v31;
    v25 = swift_allocObject();
    v26 = v29;
    *(v25 + 16) = v29;
    v27 = v26;
    sub_10031F174(v23, v24, a1, sub_10007CFEC, v25);
  }

  else
  {

    dispatch_group_leave(a4);
  }
}

uint64_t sub_100074DC4(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v51 = a5;
  v52 = a6;
  v53 = a3;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v49 = *(v10 - 8);
  v50 = v10;
  __chkstk_darwin(v10);
  v48 = &v45 - v11;
  v12 = type metadata accessor for CustodianshipInfoRecord(0);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CustodianRecoveryRecords(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100005814(&unk_1003D9210, &qword_10033ECA8);
  __chkstk_darwin(v18);
  v20 = (&v45 - v19);
  sub_100012D04(a1, &v45 - v19, &unk_1003D9210, &qword_10033ECA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = a2;
    v46 = a4;
    v21 = *v20;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    sub_10007C3BC(v47, v14, type metadata accessor for CustodianshipInfoRecord);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v54[0] = swift_slowAlloc();
      *v25 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v25 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v54);
      *(v25 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      sub_10007C424(v14, type metadata accessor for CustodianshipInfoRecord);
      v30 = sub_10021145C(v27, v29, v54);

      *(v25 + 14) = v30;
      *(v25 + 22) = 2112;
      v31 = _convertErrorToNSError(_:)();
      *(v25 + 24) = v31;
      *v26 = v31;
      _os_log_impl(&_mh_execute_header, v23, v24, "   %s - error fetching health check record for    %s: %@", v25, 0x20u);
      sub_100008D3C(v26, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v14, type metadata accessor for CustodianshipInfoRecord);
    }

    _convertErrorToNSError(_:)();
    v36 = qword_1003E3F40;
    v37 = v53;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v38 = v51;
    v39 = v45;
    if (*((*&v37[v36] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v37[v36] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10024BFE4(0);
    v40 = v46;
    if (v46)
    {
      v41 = _convertErrorToNSError(_:)();
      [v40 updateTaskResultWithError:v41];
    }

    v42 = v48;
    v43 = v49;
    v44 = v50;
    (*(v49 + 16))(v48, v39 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter, v50);
    Dependency.wrappedValue.getter();
    (*(v43 + 8))(v42, v44);
    swift_getObjectType();
    sub_100246FA8(v40);
    swift_unknownObjectRelease();
    swift_errorRetain();
    v38(v21);
  }

  else
  {
    sub_10007C488(v20, v17, type metadata accessor for CustodianRecoveryRecords);
    v32 = swift_allocObject();
    v32[2] = a4;
    v32[3] = a2;
    v33 = v52;
    v32[4] = v51;
    v32[5] = v33;
    v34 = a4;

    sub_1000755D8(v17, v53, sub_10007C3A8, v32);

    return sub_10007C424(v17, type metadata accessor for CustodianRecoveryRecords);
  }
}

uint64_t sub_10007544C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  if (a2)
  {
    if (a1)
    {
      v12 = _convertErrorToNSError(_:)();
    }

    else
    {
      v12 = 0;
    }

    [a2 updateTaskResultWithError:v12];
  }

  (*(v9 + 16))(v11, a3 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__analyticsReporter, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v11, v8);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  return a4(a1);
}

uint64_t sub_1000755D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v110 = a3;
  v111 = a4;
  v104 = *v4;
  v7 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v101 = *(v7 - 8);
  v102 = v7;
  __chkstk_darwin(v7);
  v98 = &v89 - v8;
  v106 = type metadata accessor for CustodianHealthRecord(0);
  v99 = *(v106 - 8);
  v9 = __chkstk_darwin(v106);
  v103 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v10;
  __chkstk_darwin(v9);
  v97 = &v89 - v11;
  v12 = type metadata accessor for Date();
  v108 = *(v12 - 8);
  v109 = v12;
  v13 = __chkstk_darwin(v12);
  v96 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = v14;
  __chkstk_darwin(v13);
  v107 = &v89 - v15;
  v94 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v89 - v16;
  v17 = type metadata accessor for CustodianRecoveryRecords(0);
  v18 = __chkstk_darwin(v17);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v89 - v21;
  v23 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  __chkstk_darwin(v23 - 8);
  v25 = &v89 - v24;
  v26 = a1 + *(v17 + 20);
  v27 = type metadata accessor for CustodianRecoveryInfoRecord(0);
  sub_100012D04(v26 + *(v27 + 44), v25, &qword_1003D8B60, &unk_10033F210);
  v28 = type metadata accessor for UUID();
  v29 = *(*(v28 - 8) + 48);
  v105 = v28;
  LOBYTE(v26) = v29(v25, 1) != 1;
  v30 = v25;
  v31 = a1;
  sub_100008D3C(v30, &qword_1003D8B60, &unk_10033F210);
  v112 = a2;
  *(a2 + qword_1003E3F48) = v26;
  v32 = *(v17 + 24);
  if (sub_100076344(v31 + v32))
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAAB8);
    sub_10007C3BC(v31, v22, type metadata accessor for CustodianRecoveryRecords);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v113[0] = swift_slowAlloc();
      *v36 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v113);
      *(v36 + 12) = 2080;
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      sub_10007C424(v22, type metadata accessor for CustodianRecoveryRecords);
      v40 = sub_10021145C(v37, v39, v113);

      *(v36 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "%s - custodian %s is due for a health check.", v36, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v22, type metadata accessor for CustodianRecoveryRecords);
    }

    return sub_10007686C(v31, v112, v110, v111);
  }

  else
  {
    v41 = v4;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v91 = type metadata accessor for Logger();
    sub_100008D04(v91, qword_1003FAAB8);
    sub_10007C3BC(v31, v20, type metadata accessor for CustodianRecoveryRecords);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v90 = v32;
      v44 = v31;
      v45 = swift_slowAlloc();
      v113[0] = swift_slowAlloc();
      *v45 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v45 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v113);
      *(v45 + 12) = 2080;
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v46 = dispatch thunk of CustomStringConvertible.description.getter();
      v48 = v47;
      sub_10007C424(v20, type metadata accessor for CustodianRecoveryRecords);
      v49 = sub_10021145C(v46, v48, v113);

      *(v45 + 14) = v49;
      _os_log_impl(&_mh_execute_header, v42, v43, " %s - custodian %s has  had a recent health check, ending check early.", v45, 0x16u);
      swift_arrayDestroy();

      v32 = v90;
    }

    else
    {
      v44 = v31;

      sub_10007C424(v20, type metadata accessor for CustodianRecoveryRecords);
    }

    v51 = v93;
    v52 = *(v93 + 16);
    v90 = v41;
    v53 = v92;
    v54 = v94;
    v52(v92, v41 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v94);
    Dependency.wrappedValue.getter();
    (*(v51 + 8))(v53, v54);
    v55 = sub_1000080F8(v113, v114);
    v56 = sub_10007D020(*v55);
    sub_10000839C(v113);
    v57 = v107;
    Date.init()();
    v58 = v108;
    v59 = v109;
    v60 = v96;
    (*(v108 + 16))(v96, v57, v109);
    v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v62 = (v95 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    (*(v58 + 32))(v63 + v61, v60, v59);
    *(v63 + v62) = xmmword_10033F590;
    v96 = v63;
    *(v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
    v64 = v97;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v91, qword_1003FAA88);
    sub_10007C3BC(v44 + v32, v64, type metadata accessor for CustodianHealthRecord);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v113[0] = v68;
      *v67 = 136315138;
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v69 = dispatch thunk of CustomStringConvertible.description.getter();
      v70 = v32;
      v72 = v71;
      sub_10007C424(v64, type metadata accessor for CustodianHealthRecord);
      v73 = sub_10021145C(v69, v72, v113);
      v32 = v70;

      *(v67 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v65, v66, "Updating custodian health record %s.", v67, 0xCu);
      sub_10000839C(v68);
    }

    else
    {

      sub_10007C424(v64, type metadata accessor for CustodianHealthRecord);
    }

    v75 = v101;
    v74 = v102;
    v76 = v98;
    (*(v101 + 16))(v98, v90 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v102);
    Dependency.wrappedValue.getter();
    (*(v75 + 8))(v76, v74);
    sub_1000080F8(v113, v114);
    v77 = v103;
    sub_10007C3BC(v44 + v32, v103, type metadata accessor for CustodianHealthRecord);
    v78 = (*(v99 + 80) + 16) & ~*(v99 + 80);
    v79 = (v100 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = v32;
    v81 = (v79 + 23) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    sub_10007C488(v77, v82 + v78, type metadata accessor for CustodianHealthRecord);
    v83 = (v82 + v79);
    v84 = v111;
    *v83 = v110;
    v83[1] = v84;
    v85 = v82 + v81;
    v86 = v112;
    *v85 = v112;
    *(v85 + 8) = 1;
    *(v82 + ((v81 + 17) & 0xFFFFFFFFFFFFFFF8)) = v104;
    v87 = v96;

    v88 = v86;
    sub_100079834(v44 + v80, sub_10007C3B8, v87, 0, sub_10007C4F0, v82);

    (*(v108 + 8))(v107, v109);
    return sub_10000839C(v113);
  }
}

uint64_t sub_100076344(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - v12;
  if ([objc_opt_self() isNeverSkipCustodianCheckEnabled])
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAAB8);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Preference set to never skip health check", v17, 2u);
    }

    v18 = 1;
  }

  else
  {
    sub_10028B6C8();
    v19 = type metadata accessor for CustodianHealthRecord(0);
    v20 = v19;
    v21 = *(v19 + 40);
    v46 = a1;
    v22 = a1 + v21;
    if ((*(v22 + 8) & 1) == 0)
    {
      v44 = v19;
      v45 = v1;
      v23 = *v22;
      v24 = *(v11 + 16);
      v42 = OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider;
      v43 = v24;
      v24(v13, v1 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v10);
      Dependency.wrappedValue.getter();
      v40 = *(v11 + 8);
      v40(v13, v10);
      v25 = sub_1000080F8(v47, v48);
      v26 = sub_10007D020(*v25);
      sub_10000839C(v47);
      v41 = v23;
      v27 = v26 < v23;
      v20 = v44;
      if (v27)
      {
        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        sub_100008D04(v28, qword_1003FAAB8);

        v29 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v29, v39))
        {
          v30 = swift_slowAlloc();
          v38 = v30;
          *v30 = 134218240;
          *(v30 + 4) = v41;
          *(v30 + 12) = 2048;
          v43(v13, v45 + v42, v10);
          v31 = v29;
          Dependency.wrappedValue.getter();
          v40(v13, v10);
          v32 = sub_1000080F8(v47, v48);
          v33 = sub_10007D020(*v32);
          sub_10000839C(v47);
          v34 = v38;
          *(v38 + 14) = v33;

          _os_log_impl(&_mh_execute_header, v31, v39, " Last HealthCheck v%ld which is greater than current  known v%ld. Taking extended time  for eligibility.", v34, 0x16u);
        }

        else
        {
        }

        sub_10028B98C();
      }
    }

    (*(v4 + 16))(v7, v46 + *(v20 + 24), v3);
    Date.init(timeInterval:since:)();
    Date.init()();
    sub_10007CC70(&qword_1003DA8D8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v35 = dispatch thunk of static Comparable.< infix(_:_:)();
    v36 = *(v4 + 8);
    v36(v7, v3);
    v36(v9, v3);
    v18 = v35 ^ 1;
  }

  return v18 & 1;
}

uint64_t sub_10007686C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v99 = a4;
  v95 = *v4;
  v9 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v91 = *(v9 - 8);
  v92 = v9;
  __chkstk_darwin(v9);
  v88 = &v78 - v10;
  v86 = type metadata accessor for CustodianHealthRecord(0);
  v89 = *(v86 - 8);
  v11 = __chkstk_darwin(v86);
  v93 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v12;
  __chkstk_darwin(v11);
  v87 = &v78 - v13;
  v14 = type metadata accessor for Date();
  v97 = *(v14 - 8);
  v98 = v14;
  v15 = *(v97 + 64);
  v16 = __chkstk_darwin(v14);
  v85 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v78 - v17;
  v84 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v19 = &v78 - v18;
  v20 = type metadata accessor for CustodianRecoveryRecords(0);
  v21 = __chkstk_darwin(v20);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1 + *(v21 + 20);
  v25 = v24 + *(type metadata accessor for CustodianRecoveryInfoRecord(0) + 32);
  v26 = *(v25 + 8);
  if (v26 >> 60 == 15)
  {
    v82 = a3;
    v94 = v5;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100008D04(v80, qword_1003FAAB8);
    v27 = a1;
    sub_10007C3BC(a1, v23, type metadata accessor for CustodianRecoveryRecords);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v99;
    v32 = v82;
    v81 = a2;
    if (v30)
    {
      v79 = v27;
      v33 = swift_slowAlloc();
      v100[0] = swift_slowAlloc();
      *v33 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v100);
      *(v33 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_10007C424(v23, type metadata accessor for CustodianRecoveryRecords);
      v37 = sub_10021145C(v34, v36, v100);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v28, v29, "%s - custodian %s has no recovery key, update timestamp.", v33, 0x16u);
      swift_arrayDestroy();

      v27 = v79;
      v31 = v99;
      v32 = v82;
    }

    else
    {

      sub_10007C424(v23, type metadata accessor for CustodianRecoveryRecords);
    }

    v82 = *(v20 + 24);
    v40 = swift_allocObject();
    *(v40 + 16) = v32;
    *(v40 + 24) = v31;
    v99 = v40;
    v41 = v83;
    v42 = v84;
    (*(v83 + 16))(v19, v94 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v84);

    Dependency.wrappedValue.getter();
    (*(v41 + 8))(v19, v42);
    v43 = sub_1000080F8(v100, v101);
    v44 = sub_10007D020(*v43);
    sub_10000839C(v100);
    v45 = v96;
    Date.init()();
    v47 = v97;
    v46 = v98;
    v48 = v85;
    (*(v97 + 16))(v85, v45, v98);
    v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
    v50 = (v15 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    (*(v47 + 32))(v51 + v49, v48, v46);
    *(v51 + v50) = xmmword_10033F590;
    v85 = v51;
    *(v51 + ((v50 + 23) & 0xFFFFFFFFFFFFFFF8)) = v44;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    sub_100008D04(v80, qword_1003FAA88);
    v52 = v82;
    v53 = v87;
    sub_10007C3BC(v27 + v82, v87, type metadata accessor for CustodianHealthRecord);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v100[0] = v57;
      *v56 = 136315138;
      type metadata accessor for UUID();
      v58 = v27;
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v59 = dispatch thunk of CustomStringConvertible.description.getter();
      v61 = v60;
      sub_10007C424(v53, type metadata accessor for CustodianHealthRecord);
      v62 = sub_10021145C(v59, v61, v100);
      v27 = v58;

      *(v56 + 4) = v62;
      _os_log_impl(&_mh_execute_header, v54, v55, "Updating custodian health record %s.", v56, 0xCu);
      sub_10000839C(v57);
    }

    else
    {

      sub_10007C424(v53, type metadata accessor for CustodianHealthRecord);
    }

    v64 = v91;
    v63 = v92;
    v65 = v88;
    (*(v91 + 16))(v88, v94 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v92);
    Dependency.wrappedValue.getter();
    (*(v64 + 8))(v65, v63);
    sub_1000080F8(v100, v101);
    v66 = v93;
    sub_10007C3BC(v27 + v52, v93, type metadata accessor for CustodianHealthRecord);
    v67 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v68 = (v90 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = v27;
    v70 = (v68 + 23) & 0xFFFFFFFFFFFFFFF8;
    v71 = swift_allocObject();
    sub_10007C488(v66, v71 + v67, type metadata accessor for CustodianHealthRecord);
    v72 = (v71 + v68);
    v73 = v99;
    *v72 = sub_10007C52C;
    v72[1] = v73;
    v74 = v71 + v70;
    v75 = v81;
    *v74 = v81;
    *(v74 + 8) = 768;
    *(v71 + ((v70 + 17) & 0xFFFFFFFFFFFFFFF8)) = v95;
    v76 = v85;

    v77 = v75;
    sub_100079834(v69 + v52, sub_10007D01C, v76, 0, sub_10007D018, v71);

    (*(v97 + 8))(v96, v98);
    return sub_10000839C(v100);
  }

  else
  {
    v38 = *v25;
    sub_100015D6C(*v25, *(v25 + 8));
    sub_10007736C(a1, v38, v26, a2, a3, v99);

    return sub_100015D58(v38, v26);
  }
}

uint64_t sub_10007736C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v179 = a6;
  v177 = a5;
  v180 = a4;
  v163 = a1;
  v178 = *v6;
  v173 = sub_100005814(&unk_1003DA550, &qword_10033F620);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v156 - v9;
  v183 = type metadata accessor for CustodianHealthRecord(0);
  v174 = *(v183 - 8);
  v10 = __chkstk_darwin(v183);
  v160 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v176 = &v156 - v13;
  v175 = v14;
  __chkstk_darwin(v12);
  v159 = &v156 - v15;
  v16 = type metadata accessor for Date();
  v186 = *(v16 - 8);
  v187 = v16;
  v17 = __chkstk_darwin(v16);
  v181 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v168 = &v156 - v20;
  v167 = v21;
  __chkstk_darwin(v19);
  v161 = &v156 - v22;
  v166 = sub_100005814(&unk_1003DA890, &unk_10033F628);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v156 - v23;
  v182 = type metadata accessor for CustodianRecoveryRecords(0);
  v24 = __chkstk_darwin(v182);
  v162 = &v156 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v158 = &v156 - v26;
  v27 = type metadata accessor for SHA256Digest();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v156 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SHA256();
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v35 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v184 = &v156 - v36;
  SHA256.init()();
  sub_10007CC70(&unk_1003DA8A0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  dispatch thunk of HashFunction.init()();
  sub_100015D6C(a2, a3);
  sub_10018F16C(a2, a3, v35);
  sub_100012324(a2, a3);
  dispatch thunk of HashFunction.finalize()();
  v37 = *(v32 + 8);
  v38 = v35;
  v39 = v163;
  v37(v38, v31);
  v194 = v27;
  v195 = sub_10007CC70(&qword_1003D8D70, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
  v40 = sub_10000DBEC(&v193);
  (*(v28 + 16))(v40, v30, v27);
  sub_1000080F8(&v193, v194);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v28 + 8))(v30, v27);
  v41 = v188;
  sub_10000839C(&v193);
  v37(v184, v31);
  v42 = *(v183 + 28);
  v184 = (v39 + *(v182 + 24));
  v43 = &v184[v42];
  v44 = *v43;
  v45 = v43[1];
  v169 = *(&v41 + 1);
  v170 = v41;
  if (v45 >> 60 == 15)
  {
    if (*(&v41 + 1) >> 60 == 15)
    {
      sub_100015D6C(v41, *(&v41 + 1));
      sub_100052704(v44, v45);
      sub_100015D58(v44, v45);
LABEL_22:
      v63 = v158;
      if (qword_1003D7F48 != -1)
      {
        swift_once();
      }

      v181 = type metadata accessor for Logger();
      sub_100008D04(v181, qword_1003FAAB8);
      sub_10007C3BC(v39, v63, type metadata accessor for CustodianRecoveryRecords);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v193 = swift_slowAlloc();
        *v66 = 136315394;
        if (qword_1003D7DC8 != -1)
        {
          swift_once();
        }

        *(v66 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v193);
        *(v66 + 12) = 2080;
        type metadata accessor for UUID();
        sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        sub_10007C424(v63, type metadata accessor for CustodianRecoveryRecords);
        v70 = sub_10021145C(v67, v69, &v193);

        *(v66 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v64, v65, "%s - custodian %s recovery key checksum is valid.", v66, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        sub_10007C424(v63, type metadata accessor for CustodianRecoveryRecords);
      }

      v71 = v165;
      v72 = v164;
      v73 = v166;
      (*(v165 + 16))(v164, v185 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v166);
      Dependency.wrappedValue.getter();
      (*(v71 + 8))(v72, v73);
      v74 = sub_1000080F8(&v193, v194);
      v75 = sub_10007D020(*v74);
      sub_10000839C(&v193);
      v76 = v161;
      Date.init()();
      v78 = v186;
      v77 = v187;
      v79 = v168;
      (*(v186 + 16))(v168, v76, v187);
      v80 = (*(v78 + 80) + 16) & ~*(v78 + 80);
      v81 = (v167 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
      v82 = swift_allocObject();
      (*(v78 + 32))(v82 + v80, v79, v77);
      *(v82 + v81) = xmmword_10033F590;
      *(v82 + ((v81 + 23) & 0xFFFFFFFFFFFFFFF8)) = v75;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      sub_100008D04(v181, qword_1003FAA88);
      v83 = v159;
      sub_10007C3BC(v184, v159, type metadata accessor for CustodianHealthRecord);
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v193 = v87;
        *v86 = 136315138;
        type metadata accessor for UUID();
        sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v88 = dispatch thunk of CustomStringConvertible.description.getter();
        v90 = v89;
        sub_10007C424(v83, type metadata accessor for CustodianHealthRecord);
        v91 = sub_10021145C(v88, v90, &v193);

        *(v86 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v84, v85, "Updating custodian health record %s.", v86, 0xCu);
        sub_10000839C(v87);
      }

      else
      {

        sub_10007C424(v83, type metadata accessor for CustodianHealthRecord);
      }

      v92 = v172;
      v93 = v171;
      v94 = v173;
      (*(v172 + 16))(v171, v185 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v173);
      Dependency.wrappedValue.getter();
      (*(v92 + 8))(v93, v94);
      sub_1000080F8(&v193, v194);
      v95 = v184;
      v96 = v176;
      sub_10007C3BC(v184, v176, type metadata accessor for CustodianHealthRecord);
      v97 = (*(v174 + 80) + 16) & ~*(v174 + 80);
      v98 = (v175 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
      v99 = (v98 + 23) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      sub_10007C488(v96, v100 + v97, type metadata accessor for CustodianHealthRecord);
      v101 = (v100 + v98);
      v102 = v179;
      *v101 = v177;
      v101[1] = v102;
      v103 = v100 + v99;
      v104 = v180;
      *v103 = v180;
      *(v103 + 8) = 257;
      *(v100 + ((v99 + 17) & 0xFFFFFFFFFFFFFFF8)) = v178;

      v105 = v104;
      sub_100079834(v95, sub_10007D01C, v82, 0, sub_10007D018, v100);

      sub_100012324(v170, v169);
      (*(v186 + 8))(v161, v187);
      return sub_10000839C(&v193);
    }

    goto LABEL_5;
  }

  if (*(&v41 + 1) >> 60 == 15)
  {
LABEL_5:
    sub_100015D6C(v41, *(&v41 + 1));
    sub_100015D6C(v41, *(&v41 + 1));
    sub_100052704(v44, v45);
    sub_100015D58(v44, v45);
    sub_100015D58(v41, *(&v41 + 1));
    goto LABEL_6;
  }

  sub_100015D6C(v41, *(&v41 + 1));
  sub_100015D6C(v41, *(&v41 + 1));
  sub_100015D6C(v41, *(&v41 + 1));
  sub_100052704(v44, v45);
  v62 = sub_10018F69C(v44, v45, v41, *(&v41 + 1));
  sub_100015D58(v41, *(&v41 + 1));
  sub_100012324(v41, *(&v41 + 1));
  sub_100015D58(v44, v45);
  if (v62)
  {
    sub_100012324(v41, *(&v41 + 1));
    goto LABEL_22;
  }

LABEL_6:
  v159 = 0;
  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v161 = type metadata accessor for Logger();
  v46 = sub_100008D04(v161, qword_1003FAAB8);
  v47 = v162;
  sub_10007C3BC(v39, v162, type metadata accessor for CustodianRecoveryRecords);
  sub_100015D6C(v41, *(&v41 + 1));
  sub_100052704(v44, v45);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  sub_100015D58(v44, v45);
  sub_100012324(v41, *(&v41 + 1));
  LODWORD(v163) = v49;
  if (os_log_type_enabled(v48, v49))
  {
    v157 = v48;
    v158 = v46;
    v50 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    v192 = v156;
    *v50 = 136315906;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v50 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v192);
    *(v50 + 12) = 2080;
    type metadata accessor for UUID();
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v51 = v162;
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    sub_10007C424(v51, type metadata accessor for CustodianRecoveryRecords);
    v55 = sub_10021145C(v52, v54, &v192);

    *(v50 + 14) = v55;
    *(v50 + 22) = 2080;
    if (v45 >> 60 == 15)
    {
      v56 = 0;
    }

    else
    {
      v56 = v44;
    }

    if (v45 >> 60 == 15)
    {
      v57 = 0xC000000000000000;
    }

    else
    {
      v57 = v45;
    }

    sub_100052704(v44, v45);
    v58 = sub_10007BD50(v56, v57);
    if (v59)
    {
      v60 = v58;
      v61 = v59;
      sub_100012324(v56, v57);
      goto LABEL_41;
    }

    *&v191 = v56;
    *(&v191 + 1) = v57;
    sub_100015D6C(v56, v57);
    sub_100005814(&qword_1003DA8B0, &qword_10033F638);
    if (swift_dynamicCast())
    {
      sub_10003E950(&v188, &v193);
      sub_1000080F8(&v193, v194);
      if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
      {
        sub_100012324(v56, v57);
        sub_1000080F8(&v193, v194);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        v61 = *(&v188 + 1);
        v60 = v188;
        sub_10000839C(&v193);
        goto LABEL_41;
      }

      sub_10000839C(&v193);
    }

    else
    {
      v190 = 0;
      v188 = 0u;
      v189 = 0u;
      sub_100008D3C(&v188, &qword_1003DA8B8, qword_10033F640);
    }

    v60 = sub_10007BB2C(v56, v57);
    v61 = v106;
    sub_100012324(v56, v57);
LABEL_41:
    v107 = sub_10021145C(v60, v61, &v192);

    *(v50 + 24) = v107;
    *(v50 + 32) = 2080;
    sub_100015D6C(v41, *(&v41 + 1));
    v108 = sub_10007BD50(v41, *(&v41 + 1));
    if (!v109)
    {
      v191 = v41;
      sub_100015D6C(v41, *(&v41 + 1));
      sub_100005814(&qword_1003DA8B0, &qword_10033F638);
      if (swift_dynamicCast())
      {
        sub_10003E950(&v188, &v193);
        sub_1000080F8(&v193, v194);
        if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
        {
          sub_100012324(v41, *(&v41 + 1));
          sub_1000080F8(&v193, v194);
          dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
          v110 = *(&v188 + 1);
          v111 = v188;
          sub_10000839C(&v193);
LABEL_49:
          v112 = sub_10021145C(v111, v110, &v192);

          *(v50 + 34) = v112;
          v113 = v157;
          _os_log_impl(&_mh_execute_header, v157, v163, "%s - checksum has changed for %s. Old Hash: %s New Hash: %s", v50, 0x2Au);
          swift_arrayDestroy();

          goto LABEL_50;
        }

        sub_10000839C(&v193);
      }

      else
      {
        v190 = 0;
        v188 = 0u;
        v189 = 0u;
        sub_100008D3C(&v188, &qword_1003DA8B8, qword_10033F640);
      }

      v108 = sub_10007BB2C(v41, *(&v41 + 1));
    }

    v111 = v108;
    v110 = v109;
    sub_100012324(v41, *(&v41 + 1));
    goto LABEL_49;
  }

  sub_10007C424(v47, type metadata accessor for CustodianRecoveryRecords);
LABEL_50:
  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v193 = v117;
    *v116 = 136315138;
    if (qword_1003D7DC8 != -1)
    {
      swift_once();
    }

    *(v116 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, &v193);
    _os_log_impl(&_mh_execute_header, v114, v115, "%s - updating health record with new checksum", v116, 0xCu);
    sub_10000839C(v117);
  }

  v118 = v165;
  v119 = v164;
  v120 = v166;
  (*(v165 + 16))(v164, v185 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__versionProvider, v166);
  Dependency.wrappedValue.getter();
  (*(v118 + 8))(v119, v120);
  v121 = sub_1000080F8(&v193, v194);
  v122 = sub_10007D020(*v121);
  sub_10000839C(&v193);
  v123 = v181;
  Date.init()();
  v125 = v186;
  v124 = v187;
  v126 = v168;
  (*(v186 + 16))(v168, v123, v187);
  v127 = (*(v125 + 80) + 16) & ~*(v125 + 80);
  v128 = (v167 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
  v129 = swift_allocObject();
  (*(v125 + 32))(v129 + v127, v126, v124);
  *(v129 + v128) = v41;
  *(v129 + ((v128 + 23) & 0xFFFFFFFFFFFFFFF8)) = v122;
  sub_100015D6C(v41, *(&v41 + 1));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  sub_100008D04(v161, qword_1003FAA88);
  v130 = v160;
  sub_10007C3BC(v184, v160, type metadata accessor for CustodianHealthRecord);
  v131 = Logger.logObject.getter();
  v132 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v131, v132))
  {
    v133 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    v193 = v134;
    *v133 = 136315138;
    type metadata accessor for UUID();
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v135 = dispatch thunk of CustomStringConvertible.description.getter();
    v137 = v136;
    sub_10007C424(v130, type metadata accessor for CustodianHealthRecord);
    v138 = sub_10021145C(v135, v137, &v193);

    *(v133 + 4) = v138;
    _os_log_impl(&_mh_execute_header, v131, v132, "Updating custodian health record %s.", v133, 0xCu);
    sub_10000839C(v134);
  }

  else
  {

    sub_10007C424(v130, type metadata accessor for CustodianHealthRecord);
  }

  v139 = v172;
  v140 = v171;
  v141 = v173;
  (*(v172 + 16))(v171, v185 + OBJC_IVAR____TtC13appleaccountd20CustodianHealthCheck__storageController, v173);
  Dependency.wrappedValue.getter();
  (*(v139 + 8))(v140, v141);
  sub_1000080F8(&v193, v194);
  v142 = v184;
  v143 = v176;
  sub_10007C3BC(v184, v176, type metadata accessor for CustodianHealthRecord);
  v144 = (*(v174 + 80) + 16) & ~*(v174 + 80);
  v145 = (v175 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
  v146 = (v145 + 23) & 0xFFFFFFFFFFFFFFF8;
  v147 = swift_allocObject();
  sub_10007C488(v143, v147 + v144, type metadata accessor for CustodianHealthRecord);
  v148 = (v147 + v145);
  v149 = v179;
  *v148 = v177;
  v148[1] = v149;
  v150 = v147 + v146;
  v151 = v180;
  *v150 = v180;
  *(v150 + 8) = 513;
  *(v147 + ((v146 + 17) & 0xFFFFFFFFFFFFFFF8)) = v178;

  v152 = v151;

  sub_100079834(v142, sub_10007D01C, v129, 0, sub_10007D018, v147);

  v153 = v170;
  v154 = v169;
  sub_100012324(v170, v169);

  sub_100012324(v153, v154);
  (*(v186 + 8))(v181, v187);
  return sub_10000839C(&v193);
}

void sub_100078DF4(uint64_t a1, void (*a2)())
{
  type metadata accessor for AACustodianError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10007CC70(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
  _BridgedStoredNSError.init(_:userInfo:)();
  a2();
}

uint64_t sub_100078EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a3;
  v32 = a5;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianHealthRecord(0);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10007C3BC(a1, v16, type metadata accessor for CustodianHealthRecord);
  (*(v11 + 16))(v13, a2, v10);
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 16);
  v18(a6, v16, v17);
  v18(a6 + v14[5], &v16[v14[5]], v17);
  v19 = v14[8];
  v20 = *&v16[v19];
  v21 = *&v16[v19 + 8];
  v22 = (a6 + v19);
  *v22 = v20;
  v22[1] = v21;
  (*(v11 + 32))(a6 + v14[6], v13, v10);
  *(a6 + v14[9]) = v16[v14[9]];
  v23 = v14[7];
  if (a4 >> 60 == 15)
  {
    v24 = *&v16[v23];
    v25 = *&v16[v23 + 8];
    v26 = (a6 + v23);
    *v26 = v24;
    v26[1] = v25;
    sub_100052704(v24, v25);
    v27 = v31;
  }

  else
  {
    v28 = (a6 + v23);
    v27 = v31;
    *v28 = v31;
    v28[1] = a4;
  }

  sub_100015D6C(v20, v21);
  sub_100052704(v27, a4);
  result = sub_10007C424(v16, type metadata accessor for CustodianHealthRecord);
  v30 = a6 + v14[10];
  *v30 = v32;
  *(v30 + 8) = 0;
  return result;
}

uint64_t sub_100079128(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, int a6, unsigned int a7)
{
  v40[0] = a6;
  v40[1] = a7;
  v41 = a4;
  v42 = a3;
  v10 = type metadata accessor for CustodianHealthRecord(0);
  v11 = __chkstk_darwin(v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v40 - v14;
  v16 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  __chkstk_darwin(v16);
  v18 = (v40 - v17);
  sub_100012D04(a1, v40 - v17, &qword_1003D91E8, &qword_100346AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v18;
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAB8);
    sub_10007C3BC(a2, v13, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v23 = 136315650;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v23 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v43);
      *(v23 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      sub_10007C424(v13, type metadata accessor for CustodianHealthRecord);
      v28 = sub_10021145C(v25, v27, v43);

      *(v23 + 14) = v28;
      *(v23 + 22) = 2112;
      v29 = _convertErrorToNSError(_:)();
      *(v23 + 24) = v29;
      *v24 = v29;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s - error updating custodian health record %s: %@", v23, 0x20u);
      sub_100008D3C(v24, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v13, type metadata accessor for CustodianHealthRecord);
    }

    _convertErrorToNSError(_:)();
    v38 = qword_1003E3F40;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a5 + v38) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + v38) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_10024BFE4(0);
    swift_errorRetain();
    v42(v19);
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    sub_10007C3BC(a2, v15, type metadata accessor for CustodianHealthRecord);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v43[0] = swift_slowAlloc();
      *v33 = 136315394;
      if (qword_1003D7DC8 != -1)
      {
        swift_once();
      }

      *(v33 + 4) = sub_10021145C(qword_1003DA620, *algn_1003DA628, v43);
      *(v33 + 12) = 2080;
      type metadata accessor for UUID();
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      sub_10007C424(v15, type metadata accessor for CustodianHealthRecord);
      v37 = sub_10021145C(v34, v36, v43);

      *(v33 + 14) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "%s - custodian health record %s was updated.", v33, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10007C424(v15, type metadata accessor for CustodianHealthRecord);
    }

    [objc_opt_self() postRecoveryContactChangedNotification];
    v42(0);
    sub_10024BFE4(v40[0] & 1);
    return sub_100008D3C(v18, &qword_1003D91E8, &qword_100346AC0);
  }
}

uint64_t sub_100079834(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a3;
  v60 = a2;
  v61 = a6;
  v58 = a5;
  v59 = a4;
  v7 = sub_100005814(&unk_1003DA210, qword_10033EE50);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for CustodianHealthRecord(0);
  v53 = *(v57 - 8);
  v14 = *(v53 + 64);
  v15 = __chkstk_darwin(v57);
  v54 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v64 = &v51 - v17;
  __chkstk_darwin(v16);
  v19 = &v51 - v18;
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100008D04(v20, qword_1003FAAE8);
  sub_10007C3BC(a1, v19, type metadata accessor for CustodianHealthRecord);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v51 = v9;
    v24 = v23;
    v25 = swift_slowAlloc();
    v52 = a1;
    v65[0] = v25;
    *v24 = 136315394;
    (*(v11 + 16))(v13, v19, v10);
    sub_10007C424(v19, type metadata accessor for CustodianHealthRecord);
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v27;
    (*(v11 + 8))(v13, v10);
    v29 = sub_10021145C(v26, v28, v65);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, v65);
    _os_log_impl(&_mh_execute_header, v21, v22, "Storage Controller: Saving record with modification to shared DB, recordID: %s, type: %s", v24, 0x16u);
    swift_arrayDestroy();
    a1 = v52;

    v9 = v51;
  }

  else
  {
    sub_10007C424(v19, type metadata accessor for CustodianHealthRecord);
  }

  v31 = v55;
  v30 = v56;
  (*(v55 + 16))(v9, v63 + OBJC_IVAR____TtC13appleaccountd17StorageController__cloudStorage, v56);
  Dependency.wrappedValue.getter();
  (*(v31 + 8))(v9, v30);
  v56 = sub_1000080F8(v65, v65[3]);
  v32 = v62;
  v33 = v60;
  v60(a1);
  v34 = v54;
  sub_10007C3BC(a1, v54, type metadata accessor for CustodianHealthRecord);
  v35 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v36 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  sub_10007C488(v34, v39 + v35, type metadata accessor for CustodianHealthRecord);
  *(v39 + v36) = v63;
  v40 = (v39 + v37);
  v41 = v61;
  *v40 = v58;
  v40[1] = v41;
  *(v39 + v38) = v59;
  v42 = (v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v42 = v33;
  v42[1] = v32;
  v43 = qword_1003D7EB0;

  if (v43 != -1)
  {
    swift_once();
  }

  if (*(v64 + *(v57 + 36)) == 1)
  {
    if (qword_1003D7EC0 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9D0;
  }

  else
  {
    if (qword_1003D7EB8 != -1)
    {
      swift_once();
    }

    v44 = &qword_1003FA9C0;
  }

  v45 = *v44;
  v46 = v44[1];

  v47 = sub_1002E2BC4(v45, v46);

  v48 = [v47 sharedCloudDatabase];

  v49 = v64;
  sub_100175070(v64, v48, sub_10007C91C, v39);

  sub_10007C424(v49, type metadata accessor for CustodianHealthRecord);
  return sub_10000839C(v65);
}

uint64_t sub_100079F20(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v149 = a8;
  v148 = a7;
  v158 = a6;
  v159 = a3;
  v161 = a4;
  v162 = a5;
  v163 = a2;
  v160 = a1;
  v147 = type metadata accessor for DispatchWorkItemFlags();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v144 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for DispatchQoS();
  v143 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v141 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v139 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v140 = &v128 - v13;
  v138 = type metadata accessor for DispatchQoS.QoSClass();
  v137 = *(v138 - 8);
  __chkstk_darwin(v138);
  v136 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100005814(&qword_1003D91A8, &unk_10033EC40);
  __chkstk_darwin(v15 - 8);
  v134 = &v128 - v16;
  v154 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v153 = *(v154 - 8);
  __chkstk_darwin(v154);
  v18 = &v128 - v17;
  v157 = type metadata accessor for UUID();
  v156 = *(v157 - 1);
  __chkstk_darwin(v157);
  v155 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for CustodianHealthRecord(0);
  v150 = *(v133 - 8);
  v20 = *(v150 + 64);
  v21 = __chkstk_darwin(v133);
  v130 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v135 = &v128 - v23;
  v24 = __chkstk_darwin(v22);
  v131 = &v128 - v25;
  v26 = __chkstk_darwin(v24);
  v132 = &v128 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v128 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v128 - v32;
  __chkstk_darwin(v31);
  v35 = &v128 - v34;
  v36 = sub_100005814(&qword_1003D91E8, &qword_100346AC0);
  v37 = __chkstk_darwin(v36);
  v152 = (&v128 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37);
  v40 = (&v128 - v39);
  sub_100012D04(v160, &v128 - v39, &qword_1003D91E8, &qword_100346AC0);
  v151 = v36;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v129 = v10;
    v160 = *v40;
    if (qword_1003D7F58 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    v42 = sub_100008D04(v41, qword_1003FAAE8);
    sub_10007C3BC(v163, v30, type metadata accessor for CustodianHealthRecord);
    swift_errorRetain();
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      aBlock[0] = v153;
      *v45 = 136315650;
      v46 = v156;
      v47 = *(v156 + 16);
      v154 = v42;
      v48 = v155;
      v49 = v157;
      v47(v155, v30, v157);
      sub_10007C424(v30, type metadata accessor for CustodianHealthRecord);
      sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v46 + 8))(v48, v49);
      v53 = sub_10021145C(v50, v52, aBlock);

      *(v45 + 4) = v53;
      *(v45 + 12) = 2080;
      *(v45 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
      *(v45 + 22) = 2112;
      swift_errorRetain();
      v54 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 24) = v54;
      v55 = v128;
      *v128 = v54;
      _os_log_impl(&_mh_execute_header, v43, v44, "Storage Controller: Failed to save record with modification to ShareDB, recordID: %s, type: %s, error: %@", v45, 0x20u);
      sub_100008D3C(v55, &unk_1003D9140, &qword_10033E640);

      swift_arrayDestroy();
    }

    else
    {
      sub_10007C424(v30, type metadata accessor for CustodianHealthRecord);
    }

    if (v158 <= 2 && (swift_getErrorValue(), (v67 = sub_1002DE99C(v170)) != 0))
    {
      v68 = v67;
      type metadata accessor for CKError(0);
      v169 = 14;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10007CC70(&qword_1003DA8D0, type metadata accessor for CKError, &unk_10033DE84);
      _BridgedStoredNSError.init(_:userInfo:)();
      v69 = aBlock[0];
      v169 = aBlock[0];
      _BridgedStoredNSError.code.getter();

      v70 = sub_1002DF114(v168, v68);
      if (v70)
      {

        v71 = sub_1002DEE74(v68);
        v72 = v129;
        if (v71)
        {
          v73 = v133;
          v74 = *(v163 + *(v133 + 36));
          v75 = v71;
          v76 = v134;
          sub_1000EC0A4(v75, v74, v134);
          (*(v150 + 56))(v76, 0, 1, v73);
          v101 = v76;
          v102 = v132;
          sub_10007C488(v101, v132, type metadata accessor for CustodianHealthRecord);
          v103 = v131;
          sub_10007C3BC(v102, v131, type metadata accessor for CustodianHealthRecord);
          v104 = Logger.logObject.getter();
          v105 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v163 = swift_slowAlloc();
            aBlock[0] = v163;
            *v106 = 136315394;
            v107 = v156;
            v108 = v68;
            v109 = v155;
            v110 = v157;
            (*(v156 + 16))(v155, v103, v157);
            sub_10007C424(v103, type metadata accessor for CustodianHealthRecord);
            sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v111 = dispatch thunk of CustomStringConvertible.description.getter();
            v113 = v112;
            v114 = v109;
            v68 = v108;
            (*(v107 + 8))(v114, v110);
            v115 = sub_10021145C(v111, v113, aBlock);

            *(v106 + 4) = v115;
            *(v106 + 12) = 2080;
            *(v106 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
            _os_log_impl(&_mh_execute_header, v104, v105, "Storage Controller: Trying to resave record with modification to shared DB after conflict resolution serverRecordID: %s, type: %s", v106, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
            sub_10007C424(v103, type metadata accessor for CustodianHealthRecord);
          }

          v116 = v132;
          sub_100079834(v132, v148, v149, v158 + 1, v161, v162);

          return sub_10007C424(v116, type metadata accessor for CustodianHealthRecord);
        }
      }

      else
      {
        v72 = v129;
      }

      if (sub_1002DF0EC(v68) || sub_1002DF0F4(v68) || sub_1002DF0FC(v68) || sub_1002DF104(v68) || sub_1002DF10C(v68))
      {
        sub_1002DEFEC(v68);
        sub_100071C74();
        v77 = v137;
        v78 = v136;
        v79 = v138;
        (*(v137 + 104))(v136, enum case for DispatchQoS.QoSClass.default(_:), v138);
        v156 = static OS_dispatch_queue.global(qos:)();
        (*(v77 + 8))(v78, v79);
        v80 = v139;
        static DispatchTime.now()();
        v81 = v140;
        + infix(_:_:)();
        v155 = v68;
        v157 = *(v141 + 8);
        (v157)(v80, v72);
        v82 = v135;
        sub_10007C3BC(v163, v135, type metadata accessor for CustodianHealthRecord);
        v83 = (*(v150 + 80) + 16) & ~*(v150 + 80);
        v84 = (v20 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
        v85 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
        v86 = (v85 + 23) & 0xFFFFFFFFFFFFFFF8;
        v87 = swift_allocObject();
        sub_10007C488(v82, v87 + v83, type metadata accessor for CustodianHealthRecord);
        *(v87 + v84) = v159;
        v88 = (v87 + v85);
        v89 = v149;
        *v88 = v148;
        v88[1] = v89;
        *(v87 + v86) = v158;
        v90 = (v87 + ((v86 + 15) & 0xFFFFFFFFFFFFFFF8));
        v91 = v162;
        *v90 = v161;
        v90[1] = v91;
        v166 = sub_10007CBA0;
        v167 = v87;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100031EF0;
        v165 = &unk_1003A6668;
        v92 = _Block_copy(aBlock);

        v93 = v142;
        static DispatchQoS.unspecified.getter();
        v169 = _swiftEmptyArrayStorage;
        sub_10007CC70(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100005814(&unk_1003DABE0, &unk_10033EC20);
        sub_1000383E4();
        v94 = v144;
        v95 = v147;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v96 = v156;
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

        _Block_release(v92);

        (*(v146 + 8))(v94, v95);
        (*(v143 + 8))(v93, v145);
        (v157)(v81, v129);
      }

      v117 = v130;
      sub_10007C3BC(v163, v130, type metadata accessor for CustodianHealthRecord);
      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v120 = 136315394;
        v121 = v156;
        v122 = v155;
        v123 = v157;
        (*(v156 + 16))(v155, v117, v157);
        sub_10007C424(v117, type metadata accessor for CustodianHealthRecord);
        sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v124 = dispatch thunk of CustomStringConvertible.description.getter();
        v126 = v125;
        (*(v121 + 8))(v122, v123);
        v127 = sub_10021145C(v124, v126, aBlock);

        *(v120 + 4) = v127;
        *(v120 + 12) = 2080;
        *(v120 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
        _os_log_impl(&_mh_execute_header, v118, v119, "Storage Controller: No resolution so return error recordID: %s, type: %s", v120, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
        sub_10007C424(v117, type metadata accessor for CustodianHealthRecord);
      }

      v98 = v152;
      *v152 = v160;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v161(v98);
    }

    else
    {
      v98 = v152;
      *v152 = v160;
      swift_storeEnumTagMultiPayload();
      swift_errorRetain();
      v161(v98);
    }

    return sub_100008D3C(v98, &qword_1003D91E8, &qword_100346AC0);
  }

  sub_10007C488(v40, v35, type metadata accessor for CustodianHealthRecord);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_100008D04(v56, qword_1003FAAE8);
  sub_10007C3BC(v163, v33, type metadata accessor for CustodianHealthRecord);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v163 = swift_slowAlloc();
    aBlock[0] = v163;
    *v59 = 136315394;
    v60 = v156;
    v61 = v155;
    v62 = v157;
    (*(v156 + 16))(v155, v33, v157);
    sub_10007C424(v33, type metadata accessor for CustodianHealthRecord);
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v65 = v64;
    (*(v60 + 8))(v61, v62);
    v66 = sub_10021145C(v63, v65, aBlock);

    *(v59 + 4) = v66;
    *(v59 + 12) = 2080;
    *(v59 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, aBlock);
    _os_log_impl(&_mh_execute_header, v57, v58, "Storage Controller: Successfully saved record with modification to shared DB, recordID: %s, type: %s", v59, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    sub_10007C424(v33, type metadata accessor for CustodianHealthRecord);
  }

  v99 = v153;
  v100 = v154;
  (*(v153 + 16))(v18, v159 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v154);
  Dependency.wrappedValue.getter();
  (*(v99 + 8))(v18, v100);
  sub_1000080F8(aBlock, v165);
  sub_10017E73C(v35, 0, 2, v161, v162);
  sub_10007C424(v35, type metadata accessor for CustodianHealthRecord);
  return sub_10000839C(aBlock);
}

void sub_10007B5B4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a2;
  v33 = a5;
  v30 = a3;
  v31 = a4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianHealthRecord(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100008D04(v17, qword_1003FAAE8);
  sub_10007C3BC(a1, v16, type metadata accessor for CustodianHealthRecord);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = a7;
    v21 = v20;
    v22 = swift_slowAlloc();
    v28 = a6;
    v34 = v22;
    *v21 = 136315394;
    (*(v11 + 16))(v13, v16, v10);
    sub_10007C424(v16, type metadata accessor for CustodianHealthRecord);
    sub_10007CC70(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v13, v10);
    v26 = sub_10021145C(v23, v25, &v34);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_10021145C(0xD000000000000015, 0x800000010032CDD0, &v34);
    _os_log_impl(&_mh_execute_header, v18, v19, "Storage Controller: Trying to resave record with modification to shared DB after a delay following a recoverable/transient error, recordID: %s, type: %s", v21, 0x16u);
    swift_arrayDestroy();
    a6 = v28;

    a7 = v29;
  }

  else
  {
    sub_10007C424(v16, type metadata accessor for CustodianHealthRecord);
  }

  if (__OFADD__(v33, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100079834(a1, v30, v31, v33 + 1, a6, a7);
  }
}

uint64_t sub_10007B924()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

void *sub_10007BAB8(uint64_t a1, uint64_t a2)
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

  sub_100005814(&unk_1003DA8C0, &qword_10033EA30);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_10007BB2C(uint64_t a1, unint64_t a2)
{
  sub_100015D6C(a1, a2);
  sub_10007BBD4(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_10007BB98@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void *sub_10007BBD4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_100012324(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_10007BAB8(v10, 0);
      v14 = Data._copyContents(initializing:)();
      sub_100012324(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10007BD50(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_10007BEFC()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 56) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, v3 + 8);
}

uint64_t sub_10007C048(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_100074DC4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10007C0F0()
{
  v1 = *(type metadata accessor for FetchRecoveryRecordsRequest(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return _swift_deallocObject(v0, v3 + 16);
}

uint64_t sub_10007C21C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FetchRecoveryRecordsRequest(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000082A8;

  return sub_10001F330(a1, v10, v11, v1 + v6, v9, v12, v13);
}

uint64_t sub_10007C360()
{

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10007C3BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C424(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007C488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10007C4F4()
{

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10007C534()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);
  v5 = *(v0 + v4 + 8);
  if (v5 >> 60 != 15)
  {
    sub_100012324(*(v0 + v4), v5);
  }

  return _swift_deallocObject(v0, ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10007C5EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Date() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v2 + v8);

  return sub_100078EB0(a1, v2 + v6, v10, v11, v12, a2);
}

uint64_t sub_10007C6A8()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v2, v5);
  v6(v0 + v2 + v1[5], v5);
  v7 = v1[6];
  v8 = type metadata accessor for Date();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);
  v9 = (v0 + v2 + v1[7]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100012324(*v9, v10);
  }

  v11 = (((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_100012324(*(v4 + v1[8]), *(v4 + v1[8] + 8));

  return _swift_deallocObject(v0, ((v11 + 17) & 0xFFFFFFFFFFFFFFF8) + 8);
}

uint64_t sub_10007C850(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianHealthRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v6 + 9);

  return sub_100079128(a1, v1 + v4, v8, v9, v10, v11, v12);
}

uint64_t sub_10007C91C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianHealthRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v5);
  v9 = *(v1 + v7);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);

  return sub_100079F20(a1, v1 + v4, v8, v10, v11, v9, v13, v14);
}

uint64_t sub_10007C9E4()
{
  v1 = type metadata accessor for CustodianHealthRecord(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v2, v4);
  v5(v0 + v2 + v1[5], v4);
  v6 = v1[6];
  v7 = type metadata accessor for Date();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = (v0 + v2 + v1[7]);
  v9 = v8[1];
  if (v9 >> 60 != 15)
  {
    sub_100012324(*v8, v9);
  }

  sub_100012324(*(v0 + v2 + v1[8]), *(v0 + v2 + v1[8] + 8));

  return _swift_deallocObject(v0, ((((((((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
}

void sub_10007CBA0()
{
  v1 = *(type metadata accessor for CustodianHealthRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v4 + 8);
  v9 = *(v0 + v5);
  v10 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_10007B5B4(v0 + v2, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_10007CC58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007CC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10007CCB8()
{

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_10007CD40()
{

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10007CDAC()
{
  v1 = (type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v4, v5);
  v6(v4 + v1[7], v5);

  sub_100012324(*(v4 + v1[10]), *(v4 + v1[10] + 8));

  return _swift_deallocObject(v0, ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
}

void sub_10007CF00(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianshipInfoRecord(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_100074A04(a1, v1 + v4, v6, v7);
}

uint64_t sub_10007CFB4()
{

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10007D020(uint64_t a1)
{
  v2 = [objc_opt_self() customHealthCheckVersion];
  if (v2)
  {
    v3 = v2;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v5, v6, "Returning custom version - %ld.", v7, 0xCu);
    }

    return v3;
  }

  return a1;
}

uint64_t sub_10007D140(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x6465766F72707061;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64657469766E69;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6465766F72707061;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64657469766E69;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10007D244()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10007D2E8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_10007D378(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10007D418@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100081554(*a1);
  *a2 = result;
  return result;
}

void sub_10007D448(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465766F72707061;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64657469766E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10007D4A8(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100005814(&qword_1003DABC0, &unk_100342840);
    return CheckedContinuation.resume(returning:)();
  }
}

void *sub_10007D51C()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v10 - 8);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v4);
  v5 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v5 - 8);
  v0[2] = 0;
  v0[3] = [objc_allocWithZone(NSOperationQueue) init];
  v6 = sub_100016034(0, &qword_1003DC2B0, OS_dispatch_queue_ptr);
  v9[0] = "fetchUserInfoOperation";
  v9[1] = v6;
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  v0[4] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  sub_100005814(&unk_1003D98B0, &unk_10033F790);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA950, &unk_1003436B0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&unk_1003DA2A0, &unk_10033BDA0);
  Dependency.init(dependencyId:config:)();
  sub_100005814(&qword_1003D9AE0, &qword_10033E8A0);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation) = 0;
  v7 = swift_slowAlloc();
  v0[5] = v7;
  *v7 = 0;
  return v0;
}

uint64_t sub_10007D890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v12 = *(v19 - 8);
  __chkstk_darwin(v19);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v4 + 32);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = sub_100083B20;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6A10;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v19);
}

void sub_10007DB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 2) = a1;
  *(v8 + 3) = a2;
  *(v8 + 4) = a3;
  *(v8 + 5) = a4;
  v9 = type metadata accessor for AsyncOperation();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v11 = &v10[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v11 = sub_100083B6C;
  v11[1] = v8;
  v14.receiver = v10;
  v14.super_class = v9;

  v12 = objc_msgSendSuper2(&v14, "init");
  v13 = v12;
  if (*(a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation))
  {
    [v12 addDependency:{v14.receiver, v14.super_class}];
  }

  [*(a1 + 24) addOperation:{v13, v14.receiver, v14.super_class}];
}

uint64_t sub_10007DC68(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v9 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-1] - v11;
  os_unfair_lock_lock(*(a3 + 40));
  v13 = *(a3 + 16);
  v14 = *(a3 + 40);

  os_unfair_lock_unlock(v14);
  if (v13)
  {
    v15 = *(v13 + 16);

    if (v15)
    {
      v16 = v15 - a6;
      if (!__OFSUB__(v15, a6))
      {
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  (*(v10 + 16))(v12, a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v9);
  Dependency.wrappedValue.getter();
  (*(v10 + 8))(v12, v9);
  sub_1000080F8(v24, v24[3]);
  v17 = sub_10015B7D0();
  if (v17)
  {
    v18 = v17;
    sub_10000839C(v24);
    v19 = sub_1000815A0(v18);

    if (!v19)
    {
      goto LABEL_12;
    }

    v21 = v19[2];

    v16 = v21 - a6;
    if (!__OFSUB__(v21, a6))
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  result = sub_10000839C(v24);
LABEL_12:
  if (a6 != 0x8000000000000000)
  {
    v16 = -a6;
LABEL_14:
    v22 = a4(v16);
    return v23(v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_10007DE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v14 = *(v21 - 8);
  __chkstk_darwin(v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v5 + 32);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  aBlock[4] = sub_100083A90;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A6998;
  v18 = _Block_copy(aBlock);

  sub_100083AA0(a3, a4);
  static DispatchQoS.unspecified.getter();
  v22 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);
}

void sub_10007E148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = kAAAnalyticsEventFetchUserInfo;
  (*(v11 + 16))(&v31 - v12, a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v10);
  v15 = v14;
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  v16 = [*(*sub_1000080F8(v33 v33[3]) + 16)];
  if (v16 && (v17 = v16, v18 = [v16 aa_altDSID], v17, v18))
  {
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);

  v22 = sub_100245D38(v15, v19, v21, a2, a3);
  sub_10000839C(v33);
  v23 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation;
  if (!*(a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation))
  {
    v24 = swift_allocObject();
    *(v24 + 2) = a1;
    *(v24 + 3) = v22;
    *(v24 + 4) = a4;
    *(v24 + 5) = a5;
    v25 = type metadata accessor for AsyncOperation();
    v26 = objc_allocWithZone(v25);
    v26[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
    v27 = &v26[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
    *v27 = sub_100083B00;
    v27[1] = v24;
    v28 = v22;

    sub_100083AA0(a4, a5);
    v32.receiver = v26;
    v32.super_class = v25;
    v29 = objc_msgSendSuper2(&v32, "init");
    v30 = *(a1 + v23);
    *(a1 + v23) = v29;
    v22 = v29;

    [*(a1 + 24) addOperation:v22];
  }
}

uint64_t sub_10007E40C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v12 = a4;

  sub_100083AA0(a5, a6);

  sub_100081964(a3, a4, a3, a5, a6, a1, a2);

  sub_100083B0C(a5, a6);
}

uint64_t sub_10007E4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v25 = a2;
  v26 = a3;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(v5 + 32);
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v5;
  (*(v12 + 32))(v17 + v15, v14, v11);
  v18 = (v17 + v16);
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  v20 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  v21 = v28;
  *v20 = v27;
  v20[1] = v21;
  aBlock[4] = sub_1000833EC;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003A68A8;
  v22 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1000836B8(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v33 + 8))(v8, v23);
  (*(v30 + 8))(v10, v32);
}

void sub_10007E8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a3;
  v26 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, a2, v10);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(v11 + 32))(v16 + v14, v13, v10);
  v17 = (v16 + v15);
  v18 = v26;
  *v17 = v25;
  v17[1] = a4;
  v19 = (v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v19 = v18;
  v19[1] = a6;
  v20 = type metadata accessor for AsyncOperation();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_state] = 0;
  v22 = &v21[OBJC_IVAR____TtC13appleaccountd14AsyncOperation_workBlock];
  *v22 = sub_1000835F4;
  v22[1] = v16;
  v27.receiver = v21;
  v27.super_class = v20;

  v23 = objc_msgSendSuper2(&v27, "init");
  v24 = v23;
  if (*(a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation))
  {
    [v23 addDependency:?];
  }

  [*(a1 + 24) addOperation:{v24, v25, v26}];
}

uint64_t sub_10007EABC(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void *), uint64_t a8)
{

  sub_100082AF8(a4, a5, a6, a3, a7, a8, a1, a2);
}

uint64_t sub_10007EB60(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DABB8, &unk_10033F880);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_10007ED2C(sub_1000814C8, v7);
}

uint64_t sub_10007ECA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100005814(&qword_1003DABB8, &unk_10033F880);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100005814(&qword_1003DABB8, &unk_10033F880);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10007ED2C(void (*a1)(unint64_t, void *), uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005814(&qword_1003DABC8, &unk_10033F890);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  (*(v11 + 16))(&v30 - v12, v3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  v14 = [*(*sub_1000080F8(v33 v34) + 16)];
  if (v14 && (v15 = v14, v16 = [v14 aa_altDSID], v15, v16))
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    sub_10000839C(v33);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAAB8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = v19;
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Starting Fetch User Information in confirmation handler", v23, 2u);
      v19 = v31;
    }

    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__authController, v6);
    Dependency.wrappedValue.getter();
    (*(v7 + 8))(v9, v6);
    v24 = *sub_1000080F8(v33, v34);

    sub_100314E78(v17, v19, v24, v3, a1, a2);

    sub_10000839C(v33);
  }

  else
  {
    sub_10000839C(v33);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "altDSID missing", v28, 2u);
    }

    type metadata accessor for AAError(0);
    v32 = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    v29 = v33[0];
    a1(0, v33[0]);
  }
}

uint64_t sub_10007F200(void *a1, void *a2, uint64_t a3, void (*a4)(unint64_t, void *))
{
  if (a2)
  {
    v5 = a2;
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAAB8);
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Fetching User Information finished with error: %@", v9, 0xCu);
      sub_100083380(v10);
    }

LABEL_7:
    swift_willThrow();
    swift_errorRetain();
    a4(0, v5);
  }

  if (!a1)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAAB8);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetching User Information returned nil", v25, 2u);
    }

    type metadata accessor for AAError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    v5 = v42;
    goto LABEL_7;
  }

  v13 = qword_1003D7F48;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Fetching User Information finished successfully.", v18, 2u);
  }

  v19 = [v14 custodianInfos];
  if (v19)
  {
    v20 = v19;
    sub_100005814(&unk_1003DABD0, &qword_10033E720);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v21 = _swiftEmptyArrayStorage;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42 = v40;
    *v28 = 136315138;
    sub_100005814(&unk_1003DABD0, &qword_10033E720);
    v29 = Array.description.getter();
    v31 = sub_10021145C(v29, v30, &v42);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Fetched custodianInfos: %s", v28, 0xCu);
    sub_10000839C(v40);
  }

  v32 = sub_1000815A0(v21);

  if (!v32)
  {
    v32 = sub_100308FEC(_swiftEmptyArrayStorage);
  }

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315138;
    v37 = Dictionary.description.getter();
    v39 = sub_10021145C(v37, v38, &v42);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Extracted idMSStatuses: %s", v35, 0xCu);
    sub_10000839C(v36);
  }

  os_unfair_lock_lock(*(a3 + 40));
  *(a3 + 16) = v32;

  os_unfair_lock_unlock(*(a3 + 40));
  a4(v32, 0);
}

uint64_t sub_10007F874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v53 = a6;
  v54 = a5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v50 - v18;
  if (a2)
  {
    v51 = a3;
    v20 = v15;
    v21 = v11;
    v22 = a4;
    v23 = v10;
    if (a1)
    {
      v24 = _convertErrorToNSError(_:)();
    }

    else
    {
      a1 = 0;
      v24 = 0;
    }

    [a2 updateTaskResultWithError:v24];

    v10 = v23;
    a4 = v22;
    v11 = v21;
    v15 = v20;
    a3 = v51;
  }

  (*(v17 + 16))(v19, a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v16);
  Dependency.wrappedValue.getter();
  (*(v17 + 8))(v19, v16);
  swift_getObjectType();
  sub_100246FA8(a2);
  swift_unknownObjectRelease();
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAAB8);
    (*(v11 + 16))(v15, a4, v10);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v55 = v30;
      *v28 = 136315394;
      v31 = UUID.uuidString.getter();
      v32 = v10;
      v34 = v33;
      (*(v11 + 8))(v15, v32);
      v35 = sub_10021145C(v31, v34, &v55);

      *(v28 + 4) = v35;
      *(v28 + 12) = 2112;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v36;
      *v29 = v36;
      _os_log_impl(&_mh_execute_header, v26, v27, "Custodian %s Setup finalization finished with error: %@", v28, 0x16u);
      sub_100083380(v29);

      sub_10000839C(v30);
    }

    else
    {

      (*(v11 + 8))(v15, v10);
    }
  }

  else
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100008D04(v37, qword_1003FAAB8);
    v38 = v52;
    (*(v11 + 16))(v52, a4, v10);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v10;
      v43 = swift_slowAlloc();
      v55 = v43;
      *v41 = 136315138;
      v44 = UUID.uuidString.getter();
      v45 = v38;
      v47 = v46;
      (*(v11 + 8))(v45, v42);
      v48 = sub_10021145C(v44, v47, &v55);

      *(v41 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v39, v40, "Custodian %s Setup finalization finished Successfully", v41, 0xCu);
      sub_10000839C(v43);
    }

    else
    {

      (*(v11 + 8))(v38, v10);
    }
  }

  return v54(a1);
}

uint64_t sub_10007FE20(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  if (*(v9 + 16))
  {
    result = sub_1003084DC(0x6169646F74737563, 0xED0000646975556ELL);
    if (v10)
    {
      sub_10000DB1C(*(v9 + 56) + 32 * result, v24);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = v23[1];
        if (*(v9 + 16) && (v12 = v23[0], v13 = sub_1003084DC(0x737574617473, 0xE600000000000000), (v14 & 1) != 0) && (sub_10000DB1C(*(v9 + 56) + 32 * v13, v24), (swift_dynamicCast() & 1) != 0))
        {
          v15 = String.lowercased()();
          v25 = v12;

          v24[0] = v15;
          static CharacterSet.whitespacesAndNewlines.getter();
          sub_1000709A0();
          v16 = StringProtocol.trimmingCharacters(in:)();
          v18 = v17;
          (*(v5 + 8))(v8, v4);

          v19._countAndFlagsBits = v16;
          v19._object = v18;
          v20 = _findStringSwitchCase(cases:string:)(&off_1003A3770, v19);

          if (v20 >= 3)
          {
            v21 = 2;
          }

          else
          {
            v21 = v20;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24[0]._countAndFlagsBits = *a1;
          sub_1002CF488(v21, v25, v11, isUniquelyReferenced_nonNull_native);

          *a1 = v24[0]._countAndFlagsBits;
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_100080090()
{

  v1 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__setupFinalizationHandler;
  v2 = sub_100005814(&qword_1003DABF8, &qword_10033F8A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__authController;
  v4 = sub_100005814(&qword_1003DABC8, &unk_10033F890);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore;
  v6 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter;
  v8 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonCustodianIdMSConfirmationHandler(uint64_t a1)
{
  result = qword_1003DA928;
  if (!qword_1003DA928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000802A8(uint64_t a1)
{
  sub_10000DAB8(319, &unk_1003DA938, &unk_1003D98B0, &unk_10033F790);
  if (v1 <= 0x3F)
  {
    sub_10000DAB8(319, &qword_1003DA948, &unk_1003DA950, &unk_1003436B0);
    if (v2 <= 0x3F)
    {
      sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
      if (v3 <= 0x3F)
      {
        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for CustodianIdMSStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CustodianIdMSStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000805CC()
{
  result = qword_1003DAB80;
  if (!qword_1003DAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DAB80);
  }

  return result;
}

uint64_t sub_100080620(uint64_t a1, char a2)
{
  *(v3 + 88) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 40) = v4;
  *(v3 + 48) = *(v4 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_1000806F0, 0, 0);
}

uint64_t sub_1000806F0()
{
  v57 = v0;
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 32);
    os_unfair_lock_lock(*(v1 + 40));
    v2 = *(v1 + 16);
    v3 = *(v1 + 40);

    os_unfair_lock_unlock(v3);
    if (v2)
    {
      v4 = UUID.uuidString.getter();
      if (*(v2 + 16))
      {
        v6 = sub_1003084DC(v4, v5);
        v8 = v7;

        if (v8)
        {
          v9 = 0x6465766F72707061;
          v10 = *(*(v2 + 56) + v6);

          if (v10 == 1)
          {

            v11 = 1;
          }

          else
          {
            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v11 = v33 & 1;
          }

          if (qword_1003D7F48 != -1)
          {
            swift_once();
          }

          v34 = *(v0 + 64);
          v35 = *(v0 + 40);
          v36 = *(v0 + 48);
          v37 = *(v0 + 24);
          v38 = type metadata accessor for Logger();
          sub_100008D04(v38, qword_1003FAAB8);
          (*(v36 + 16))(v34, v37, v35);
          v39 = Logger.logObject.getter();
          v40 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            v42 = swift_slowAlloc();
            *v41 = 67109634;
            *(v41 + 4) = v11;
            *(v41 + 8) = 2080;
            v56 = v42;
            if (v10)
            {
              if (v10 == 1)
              {
                v43 = 0xE800000000000000;
              }

              else
              {
                v43 = 0xE700000000000000;
                v9 = 0x6E776F6E6B6E75;
              }
            }

            else
            {
              v43 = 0xE700000000000000;
              v9 = 0x64657469766E69;
            }

            v47 = *(v0 + 64);
            v49 = *(v0 + 40);
            v48 = *(v0 + 48);
            v50 = sub_10021145C(v9, v43, &v56);

            *(v41 + 10) = v50;
            *(v41 + 18) = 2080;
            sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v51 = dispatch thunk of CustomStringConvertible.description.getter();
            v53 = v52;
            (*(v48 + 8))(v47, v49);
            v54 = sub_10021145C(v51, v53, &v56);

            *(v41 + 20) = v54;
            _os_log_impl(&_mh_execute_header, v39, v40, "Custodian is approved on IdMS: %{BOOL}d, status: %s, custodianID: %s", v41, 0x1Cu);
            swift_arrayDestroy();
          }

          else
          {
            v44 = *(v0 + 64);
            v45 = *(v0 + 40);
            v46 = *(v0 + 48);

            (*(v46 + 8))(v44, v45);
          }

LABEL_18:

          v32 = *(v0 + 8);

          return v32(v10);
        }
      }

      else
      {
      }
    }

    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 48);
    v15 = *(v0 + 56);
    v17 = *(v0 + 40);
    v18 = *(v0 + 24);
    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAAB8);
    (*(v16 + 16))(v15, v18, v17);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    v22 = os_log_type_enabled(v20, v21);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);
    v25 = *(v0 + 40);
    if (v22)
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v56 = v27;
      *v26 = 136315138;
      sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      (*(v24 + 8))(v23, v25);
      v31 = sub_10021145C(v28, v30, &v56);

      *(v26 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v20, v21, "Custodian %s not found on IdMS", v26, 0xCu);
      sub_10000839C(v27);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
    }

    v10 = 2;
    goto LABEL_18;
  }

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  v13 = sub_100005814(&unk_1003DABA8, &qword_10033F878);
  *v12 = v0;
  v12[1] = sub_100080D4C;
  v14 = *(v0 + 32);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000036, 0x800000010032D8A0, sub_10008142C, v14, v13);
}

uint64_t sub_100080D4C()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1000813C0;
  }

  else
  {
    v2 = sub_100080E60;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100080E60(uint64_t a1)
{
  v53 = v1;
  v2 = v1[2];
  if (v2)
  {
    v3 = UUID.uuidString.getter();
    if (*(v2 + 16))
    {
      v5 = sub_1003084DC(v3, v4);
      v7 = v6;

      if (v7)
      {
        v8 = 0x6465766F72707061;
        v9 = *(*(v2 + 56) + v5);

        if (v9 == 1)
        {

          v10 = 1;
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v10 = v30 & 1;
        }

        if (qword_1003D7F48 != -1)
        {
          swift_once();
        }

        v31 = v1[8];
        v32 = v1[5];
        v33 = v1[6];
        v34 = v1[3];
        v35 = type metadata accessor for Logger();
        sub_100008D04(v35, qword_1003FAAB8);
        (*(v33 + 16))(v31, v34, v32);
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *v38 = 67109634;
          *(v38 + 4) = v10;
          *(v38 + 8) = 2080;
          v52 = v39;
          if (v9)
          {
            if (v9 == 1)
            {
              v40 = 0xE800000000000000;
            }

            else
            {
              v40 = 0xE700000000000000;
              v8 = 0x6E776F6E6B6E75;
            }
          }

          else
          {
            v40 = 0xE700000000000000;
            v8 = 0x64657469766E69;
          }

          v44 = v1[8];
          v46 = v1[5];
          v45 = v1[6];
          v47 = sub_10021145C(v8, v40, &v52);

          *(v38 + 10) = v47;
          *(v38 + 18) = 2080;
          sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          v50 = v49;
          (*(v45 + 8))(v44, v46);
          v51 = sub_10021145C(v48, v50, &v52);

          *(v38 + 20) = v51;
          _os_log_impl(&_mh_execute_header, v36, v37, "Custodian is approved on IdMS: %{BOOL}d, status: %s, custodianID: %s", v38, 0x1Cu);
          swift_arrayDestroy();
        }

        else
        {
          v41 = v1[8];
          v42 = v1[5];
          v43 = v1[6];

          (*(v43 + 8))(v41, v42);
        }

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v12 = v1[6];
  v11 = v1[7];
  v13 = v1[5];
  v14 = v1[3];
  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAAB8);
  (*(v12 + 16))(v11, v14, v13);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  v18 = os_log_type_enabled(v16, v17);
  v20 = v1[6];
  v19 = v1[7];
  v21 = v1[5];
  if (v18)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v52 = v23;
    *v22 = 136315138;
    sub_1000836B8(&qword_1003D9150, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v25;
    (*(v20 + 8))(v19, v21);
    v27 = sub_10021145C(v24, v26, &v52);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Custodian %s not found on IdMS", v22, 0xCu);
    sub_10000839C(v23);
  }

  else
  {

    (*(v20 + 8))(v19, v21);
  }

  v9 = 2;
LABEL_14:

  v28 = v1[1];

  return v28(v9);
}

uint64_t sub_1000813C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100081434()
{
  v1 = sub_100005814(&qword_1003DABB8, &unk_10033F880);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_1000814C8(uint64_t a1, uint64_t a2)
{
  sub_100005814(&qword_1003DABB8, &unk_10033F880);

  return sub_10007ECA8(a1, a2);
}

unint64_t sub_100081554(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3770, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void *sub_1000815A0(uint64_t a1)
{
  v1 = &_swiftEmptyDictionarySingleton;
  v14 = &_swiftEmptyDictionarySingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v13 = *v3;

      sub_10007FE20(&v14, &v13);

      ++v3;
      --v2;
    }

    while (v2);
    v1 = v14;
  }

  if (qword_1003D7F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100008D04(v4, qword_1003FAAB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = Dictionary.description.getter();
    v11 = sub_10021145C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Extracted Custodian statuses: %s", v7, 0xCu);
    sub_10000839C(v8);
  }

  if (!v1[2])
  {

    return 0;
  }

  return v1;
}

void sub_100081798(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t))
{
  v17 = a1;
  v10 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  if (a2)
  {
    if (v17)
    {
      v14 = _convertErrorToNSError(_:)();
    }

    else
    {
      v14 = 0;
    }

    [a2 updateTaskResultWithError:{v14, v17}];
  }

  (*(v11 + 16))(v13, a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v10);
  Dependency.wrappedValue.getter();
  (*(v11 + 8))(v13, v10);
  swift_getObjectType();
  sub_100246FA8(a2);
  v15 = swift_unknownObjectRelease();
  if (a4)
  {
    v15 = a4(v17);
  }

  a6(v15);
  v16 = *(a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation);
  *(a3 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation) = 0;
}

uint64_t sub_100081964(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v67 = a6;
  v13 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v64 = *(v13 - 8);
  v65 = v13;
  __chkstk_darwin(v13);
  v63 = &v59 - v14;
  v15 = sub_100005814(&qword_1003DABC8, &unk_10033F890);
  v60 = *(v15 - 8);
  v61 = v15;
  __chkstk_darwin(v15);
  v17 = &v59 - v16;
  v18 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v59 - v20;
  v22 = *(v19 + 16);
  v62 = a1;
  v22(&v59 - v20, a1 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v18);
  v66 = a2;
  v23 = a2;
  v68 = a3;

  v70 = a7;

  v69 = a5;
  sub_100083AA0(a4, a5);
  Dependency.wrappedValue.getter();
  (*(v19 + 8))(v21, v18);
  v24 = [*(*sub_1000080F8(v72 v73) + 16)];
  if (v24 && (v25 = v24, v26 = [v24 aa_altDSID], v25, v26))
  {
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    sub_10000839C(v72);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100008D04(v30, qword_1003FAAB8);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    v33 = a4;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Starting Fetch User Information in confirmation handler", v34, 2u);
    }

    v36 = v60;
    v35 = v61;
    v37 = v62;
    (*(v60 + 16))(v17, v62 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__authController, v61);
    Dependency.wrappedValue.getter();
    (*(v36 + 8))(v17, v35);
    v38 = *sub_1000080F8(v72, v73);

    v39 = v68;

    v40 = v70;

    v41 = v23;
    v42 = v69;
    sub_100083AA0(v33, v69);

    sub_1003147DC(v27, v29, v38, v37, v66, v39, v33, v42, v67, v40);

    sub_100083B0C(v33, v42);

    sub_10000839C(v72);

    sub_100083B0C(v33, v42);
  }

  else
  {
    sub_10000839C(v72);
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_100008D04(v43, qword_1003FAAB8);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v68;
    if (v46)
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "altDSID missing", v48, 2u);
    }

    type metadata accessor for AAError(0);
    v71 = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8370, type metadata accessor for AAError, &unk_10033DD74);
    _BridgedStoredNSError.init(_:userInfo:)();
    v49 = v72[0];
    v50 = v66;
    if (v66)
    {
      v51 = _convertErrorToNSError(_:)();
      [v23 updateTaskResultWithError:v51];
    }

    v52 = v63;
    v53 = v64;
    v54 = v65;
    (*(v64 + 16))(v63, v47 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v65);
    Dependency.wrappedValue.getter();
    (*(v53 + 8))(v52, v54);
    swift_getObjectType();
    sub_100246FA8(v50);
    v55 = swift_unknownObjectRelease();
    v56 = v69;
    if (a4)
    {
      v55 = a4(v49);
    }

    v67(v55);
    v57 = *(v47 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation);
    *(v47 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler_fetchUserInfoOperation) = 0;

    sub_100083B0C(a4, v56);
  }
}

void sub_100082064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *), uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  v99 = a2;
  v100 = a3;
  v103 = a1;
  v83 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v81 - v13;
  v14 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v14 - 8);
  v95 = &v81 - v15;
  v93 = sub_100005814(&qword_1003DABF8, &qword_10033F8A8);
  v91 = *(v93 - 8);
  __chkstk_darwin(v93);
  v89 = &v81 - v16;
  v94 = type metadata accessor for UUID();
  v102 = *(v94 - 8);
  v17 = __chkstk_darwin(v94);
  v92 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = v18;
  __chkstk_darwin(v17);
  v88 = &v81 - v19;
  v20 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v81 - v22;
  v24 = swift_allocObject();
  v85 = a5;
  *(v24 + 2) = a5;
  *(v24 + 3) = a6;
  v87 = a7;
  *(v24 + 4) = a7;
  *(v24 + 5) = a8;
  v101 = v24;
  v25 = *(v21 + 16);
  v97 = OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore;
  v98 = v25;
  v25(v23, a4 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__accountStore, v20);
  v84 = a6;

  v86 = a8;

  Dependency.wrappedValue.getter();
  v96 = *(v21 + 8);
  v96(v23, v20);
  v26 = [*(*sub_1000080F8(v105 v106) + 16)];
  v27 = a4;
  if (v26 && (v28 = v26, v29 = [v26 aa_altDSID], v28, v29))
  {
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  sub_10000839C(v105);
  sub_100016034(0, &qword_1003D8B40, AAFAnalyticsEvent_ptr);
  v33 = kAAAnalyticsEventCustodianHealthCheckOwnerFinalizeSetupWithServer;
  v34 = v100;

  v35 = v33;
  v36 = sub_100245D38(v35, v30, v32, v99, v34);
  v37 = v27;
  os_unfair_lock_lock(*(v27 + 40));
  *(v27 + 16) = 0;

  os_unfair_lock_unlock(*(v27 + 40));
  v98(v23, v27 + v97, v20);
  Dependency.wrappedValue.getter();
  v96(v23, v20);
  v38 = [*(*sub_1000080F8(v105 v106) + 16)];
  sub_10000839C(v105);
  if (v38)
  {
    if (qword_1003D7F48 != -1)
    {
      swift_once();
    }

    v99 = v38;
    v100 = v36;
    v39 = type metadata accessor for Logger();
    sub_100008D04(v39, qword_1003FAAB8);
    v40 = v102;
    v41 = v88;
    v42 = v94;
    v43 = v102 + 16;
    v98 = *(v102 + 16);
    v98(v88, v103, v94);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v37;
      v48 = swift_slowAlloc();
      v105[0] = v48;
      *v46 = 136315138;
      v49 = UUID.uuidString.getter();
      v51 = v50;
      (*(v102 + 8))(v41, v42);
      v52 = sub_10021145C(v49, v51, v105);

      *(v46 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v44, v45, "Custodian %s Calling setup finalization", v46, 0xCu);
      sub_10000839C(v48);
      v37 = v47;

      v40 = v102;
    }

    else
    {

      (*(v40 + 8))(v41, v42);
    }

    v62 = v92;
    v97 = v43;
    v63 = v98;
    v98(v92, v103, v42);
    type metadata accessor for FinalizeCustodianSetupMessage(0);
    v64 = v42;
    v65 = swift_allocObject();
    *(v65 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 0;
    v66 = v65 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_flow;
    *v66 = 0;
    *(v66 + 8) = 1;
    *(v65 + 16) = 3;
    v67 = *(v40 + 32);
    v67(v65 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_custodianID, v62, v64);
    *(v65 + OBJC_IVAR____TtC13appleaccountd29FinalizeCustodianSetupMessage_skipHealthCheckOnSuccess) = 1;
    v68 = v91;
    v69 = v89;
    v70 = v93;
    (*(v91 + 16))(v89, v37 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__setupFinalizationHandler, v93);
    Dependency.wrappedValue.getter();
    (*(v68 + 8))(v69, v70);
    v71 = sub_1000080F8(v105, v106);
    v63(v62, v103, v64);
    v72 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v73 = (v90 + v72 + 7) & 0xFFFFFFFFFFFFFFF8;
    v74 = swift_allocObject();
    *(v74 + 16) = v100;
    *(v74 + 24) = v37;
    v67(v74 + v72, v62, v64);
    v75 = (v74 + v73);
    v76 = v101;
    *v75 = sub_100083740;
    v75[1] = v76;
    v77 = *v71;
    v78 = type metadata accessor for TaskPriority();
    v79 = v95;
    (*(*(v78 - 8) + 56))(v95, 1, 1, v78);
    v80 = swift_allocObject();
    v80[2] = 0;
    v80[3] = 0;
    v80[4] = v77;
    v80[5] = v65;
    v80[6] = v99;
    v80[7] = sub_100083868;
    v80[8] = v74;

    sub_1000BCD5C(0, 0, v79, &unk_10033F8B0, v80);

    sub_10000839C(v105);
  }

  else
  {
    type metadata accessor for AACustodianError(0);
    v104 = -7051;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_1000836B8(&qword_1003D8140, type metadata accessor for AACustodianError, &unk_10033DF94);
    _BridgedStoredNSError.init(_:userInfo:)();
    v53 = v105[0];
    if (v36)
    {
      v54 = v36;
      v55 = v53;
      v56 = _convertErrorToNSError(_:)();

      [v54 updateTaskResultWithError:v56];
    }

    v57 = v82;
    v58 = v81;
    v59 = v83;
    (*(v82 + 16))(v81, v37 + OBJC_IVAR____TtC13appleaccountd38DaemonCustodianIdMSConfirmationHandler__analyticsReporter, v83);
    Dependency.wrappedValue.getter();
    (*(v57 + 8))(v58, v59);
    swift_getObjectType();
    sub_100246FA8(v36);
    swift_unknownObjectRelease();
    v60 = v53;
    v61 = v85(v53);
    v87(v61);
  }
}