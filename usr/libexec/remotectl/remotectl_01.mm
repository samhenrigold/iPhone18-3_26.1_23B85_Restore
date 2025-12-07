uint64_t sub_1000159B8(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100015A94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t type metadata accessor for TCPPacketTunnel(uint64_t a1)
{
  result = qword_100029490;
  if (!qword_100029490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015B60(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_100015C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008D88(&qword_100028C58, "R?");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015C80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100015CD4(uint64_t a1, unint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100008D88(&qword_100028C58, "R?");
  __chkstk_darwin(v10 - 8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for NWError();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  if (a3)
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "TCP connection closed when reading message", v22, 2u);
    }

    NWConnection.cancel()();
  }

  else
  {
    sub_100015C10(a4, v12);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_100011004(v12, &qword_100028C58, "R?");
      if (a2 >> 60 == 15)
      {
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.fault.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&_mh_execute_header, v23, v24, "No error on connection, but Data was nil when reading header", v25, 2u);
        }
      }

      else
      {
        v35 = *(**(v5 + 16) + 264);
        sub_100015A94(a1, a2);
        v35(a1, a2);

        NWConnection.receive(minimumIncompleteLength:maximumLength:completion:)();

        sub_100009B20(a1, a2);
      }
    }

    else
    {
      (*(v14 + 32))(v19, v12, v13);
      v26 = *(v14 + 16);
      v26(v17, v19, v13);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v36 = v29;
        v37 = swift_slowAlloc();
        *v29 = 138412290;
        sub_100015C80(&unk_100028C60, &type metadata accessor for NWError, &protocol conformance descriptor for NWError);
        swift_allocError();
        v26(v30, v17, v13);
        v31 = _swift_stdlib_bridgeErrorToNSError();
        v32 = *(v14 + 8);
        v32(v17, v13);
        v33 = v36;
        v34 = v37;
        *(v36 + 1) = v31;
        *v34 = v31;
        _os_log_impl(&_mh_execute_header, v27, v28, "TCP connection error %@ when reading message, shutting down...", v33, 0xCu);
        sub_100011004(v34, &qword_100028C90, &qword_10001D990);
      }

      else
      {

        v32 = *(v14 + 8);
        v32(v17, v13);
      }

      NWConnection.cancel()();
      v32(v19, v13);
    }
  }
}

void **sub_1000161D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v154 = a3;
  v155 = a5;
  v150 = a1;
  v151 = a4;
  v153 = a2;
  v5 = type metadata accessor for NWEndpoint.Host();
  __chkstk_darwin(v5 - 8);
  v140 = &v122[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for IPv6Address();
  v147 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v143 = &v122[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v133 = &v122[-v11];
  v12 = __chkstk_darwin(v10);
  v139 = &v122[-v13];
  v14 = __chkstk_darwin(v12);
  v138 = &v122[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v122[-v17];
  __chkstk_darwin(v16);
  v20 = &v122[-v19];
  v21 = type metadata accessor for NWEndpoint.Port();
  isa = v21[-1].isa;
  v23 = __chkstk_darwin(v21);
  v129 = &v122[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v136 = &v122[-v26];
  __chkstk_darwin(v25);
  v28 = &v122[-v27];
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v128 = &v122[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = __chkstk_darwin(v31);
  v130 = &v122[-v34];
  __chkstk_darwin(v33);
  v36 = &v122[-v35];
  v37 = sub_10000DB58();
  v148 = v30;
  v38 = v30;
  v39 = v147;
  v40 = *(v38 + 16);
  v132 = v37;
  v149 = v29;
  v134 = v38 + 16;
  v131 = v40;
  v40(v36);
  v41 = *(isa + 2);
  v152 = v21;
  v144 = v41;
  v145 = isa + 16;
  v41(v28, v154, v21);
  v42 = *(v39 + 16);
  v42(v20, v151, v7);
  v135 = v18;
  v142 = v7;
  v146 = v42;
  v42(v18, v155, v7);
  v43 = v153;

  v44 = v43;
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.info.getter();

  v47 = os_log_type_enabled(v45, v46);
  v127 = isa;
  v137 = v39 + 16;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = v39;
    v123 = v46;
    v50 = v48;
    v124 = swift_slowAlloc();
    v156 = v124;
    *v50 = 136315906;
    *(v50 + 4) = sub_1000091D0(v150, v44, &v156);
    *(v50 + 12) = 2080;
    v51 = NWEndpoint.Port.debugDescription.getter();
    v53 = v52;
    v125 = *(isa + 1);
    v125(v28, v152);
    v54 = sub_1000091D0(v51, v53, &v156);

    *(v50 + 14) = v54;
    *(v50 + 22) = 2080;
    v55 = IPv6Address.debugDescription.getter();
    v57 = v56;
    v58 = *(v49 + 8);
    v59 = v142;
    v58(v20, v142);
    v60 = sub_1000091D0(v55, v57, &v156);

    *(v50 + 24) = v60;
    *(v50 + 32) = 2080;
    v61 = v135;
    v62 = IPv6Address.debugDescription.getter();
    v64 = v63;
    v126 = v58;
    v58(v61, v59);
    v65 = sub_1000091D0(v62, v64, &v156);

    *(v50 + 34) = v65;
    _os_log_impl(&_mh_execute_header, v45, v123, "SSH tunnel callback started. Connecting to %s:%s and creating a utun from %s -> %s", v50, 0x2Au);
    swift_arrayDestroy();

    v135 = *(v148 + 8);
    (v135)(v36, v149);
    v66 = v59;
    v67 = v152;
  }

  else
  {

    v68 = *(v39 + 8);
    v69 = v142;
    v68(v135, v142);
    v126 = v68;
    v68(v20, v69);
    v67 = v152;
    v125 = *(isa + 1);
    v125(v28, v152);
    v135 = *(v148 + 8);
    (v135)(v36, v149);
    v66 = v69;
  }

  type metadata accessor for TCPPacketTunnelClient(0);

  v70 = v140;
  NWEndpoint.Host.init(_:)();
  v71 = v136;
  v144(v136, v154, v67);
  v72 = v138;
  v73 = v151;
  v74 = v146;
  v146(v138, v151, v66);
  v75 = v139;
  v74(v139, v155, v66);
  v76 = sub_100012AD4();
  v77 = v141;
  result = sub_100012ADC(v70, v71, v72, v75, v76);
  v79 = v143;
  if (!v77)
  {
    v80 = result;
    v81 = v73;
    v82 = v152;
    v83 = ((*result)[22])();
    v84 = (*(*v80[2] + 176))(v83);
    v86 = 1853191285;
    if (v85)
    {
      v86 = v84;
    }

    v141 = v86;
    if (v85)
    {
      v87 = v85;
    }

    else
    {
      v87 = 0xE400000000000000;
    }

    v131(v130, v132, v149);
    v144(v129, v154, v82);
    v88 = v146;
    v146(v133, v81, v66);
    v88(v79, v155, v66);
    v89 = v153;

    v90 = v89;
    v91 = v87;
    v92 = v79;
    v93 = Logger.logObject.getter();
    LODWORD(v88) = static os_log_type_t.info.getter();

    LODWORD(v155) = v88;
    if (os_log_type_enabled(v93, v88))
    {
      v94 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v156 = v154;
      *v94 = 136316162;
      *(v94 + 4) = sub_1000091D0(v150, v90, &v156);
      *(v94 + 12) = 2080;
      v95 = v129;
      v96 = NWEndpoint.Port.debugDescription.getter();
      v98 = v97;
      v125(v95, v152);
      v99 = sub_1000091D0(v96, v98, &v156);

      *(v94 + 14) = v99;
      *(v94 + 22) = 2080;
      *(v94 + 24) = sub_1000091D0(v141, v91, &v156);
      *(v94 + 32) = 2080;
      v100 = v133;
      v101 = IPv6Address.debugDescription.getter();
      v103 = v102;
      v152 = v93;
      v153 = v91;
      v104 = v142;
      v105 = v126;
      v126(v100, v142);
      v106 = sub_1000091D0(v101, v103, &v156);

      *(v94 + 34) = v106;
      *(v94 + 42) = 2080;
      v107 = v143;
      v108 = IPv6Address.debugDescription.getter();
      v110 = v109;
      v105(v107, v104);
      v91 = v153;
      v111 = sub_1000091D0(v108, v110, &v156);

      *(v94 + 44) = v111;
      v112 = v152;
      _os_log_impl(&_mh_execute_header, v152, v155, "SSH tunnel connected to %s:%s on %s from %s -> %s.", v94, 0x34u);
      swift_arrayDestroy();
    }

    else
    {

      v113 = v126;
      v126(v92, v66);
      v113(v133, v66);
      v125(v129, v152);
    }

    v114 = v135;
    v115 = (v135)(v130, v149);
    ((*v80)[20])(v115);
    v116 = v128;
    v131(v128, v132, v149);

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v156 = v120;
      *v119 = 136315138;
      v121 = sub_1000091D0(v141, v91, &v156);

      *(v119 + 4) = v121;
      _os_log_impl(&_mh_execute_header, v117, v118, "SSH tunnel exited. %s is now closed.", v119, 0xCu);
      sub_100009D1C(v120);
    }

    else
    {
    }

    return v114(v116, v149);
  }

  return result;
}

uint64_t NWListener.State.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NWListener.State();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for NWListener.State.waiting(_:))
  {
    v7 = 0x676E6974696177;
  }

  else if (v6 == enum case for NWListener.State.failed(_:))
  {
    v7 = 0x64656C696166;
  }

  else
  {
    if (v6 == enum case for NWListener.State.setup(_:))
    {
      return 0x7075746573;
    }

    if (v6 == enum case for NWListener.State.ready(_:))
    {
      return 0x7964616572;
    }

    if (v6 == enum case for NWListener.State.cancelled(_:))
    {
      return 0x656C6C65636E6163;
    }

    v7 = 0x6E776F6E6B6E75;
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

unint64_t sub_1000170B0(unint64_t a1)
{
  v1 = a1 >> 62;
  if ((a1 >> 62) > 1)
  {
    if (v1 != 2)
    {
      _StringGuts.grow(_:)(28);

      v7 = 0xD00000000000001ALL;
      v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v5);

      return v7;
    }

    v7 = 0;
    _StringGuts.grow(_:)(35);
    v2 = "ifconfig exited with code ";
    v3 = 0xD000000000000021;
  }

  else
  {
    v7 = 0;
    if (v1)
    {
      _StringGuts.grow(_:)(34);
      v2 = "t to UtunSocket: ";
      v3 = 0xD000000000000020;
    }

    else
    {
      _StringGuts.grow(_:)(29);
      v2 = "ure UtunSocket: ";
      v3 = 0xD00000000000001BLL;
    }
  }

  v4 = v2 | 0x8000000000000000;
  String.append(_:)(*&v3);
  sub_100008D88(&unk_100028C70, &qword_10001D9E0);
  _print_unlocked<A, B>(_:_:)();
  return v7;
}

ssize_t FileDescriptor._recv(into:)(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = 0;
  }

  result = recv(a3, a1, v4, 0);
  if (result < 0)
  {
    return errno.getter();
  }

  return result;
}

void sub_1000172AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v25 = a1;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100008D88(&unk_100028E60, &unk_10001DA10);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(NSTask) init];
  (*(v13 + 56))(v11, 1, 1, v12);
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  URL.init(filePath:directoryHint:relativeTo:)();
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  (*(v13 + 8))(v15, v12);
  [v16 setExecutableURL:v19];

  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10001D9F0;
  *(v20 + 32) = v25;
  *(v20 + 40) = a2;
  *(v20 + 48) = 0x3674656E69;
  *(v20 + 56) = 0xE500000000000000;

  *(v20 + 64) = IPv6Address.debugDescription.getter();
  *(v20 + 72) = v21;
  *(v20 + 80) = IPv6Address.debugDescription.getter();
  *(v20 + 88) = v22;
  *(v20 + 96) = 0x656C786966657270;
  *(v20 + 104) = 0xE90000000000006ELL;
  *(v20 + 112) = 3682865;
  *(v20 + 120) = 0xE300000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setArguments:isa];

  v28 = v16;
  sub_100009F4C(5, 1u, sub_10001A8F4);
}

void sub_100017618(uint64_t a1, uint64_t a2)
{
  v21[0] = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008D88(&unk_100028E60, &unk_10001DA10);
  __chkstk_darwin(v7 - 8);
  v9 = v21 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(NSTask) init];
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v4 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v3);
  URL.init(filePath:directoryHint:relativeTo:)();
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  [v14 setExecutableURL:v17];

  sub_100008D88(&qword_100028A70, &qword_10001D9E8);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10001D5D0;
  *(v18 + 32) = v21[0];
  *(v18 + 40) = a2;
  *(v18 + 48) = 7697517;
  *(v18 + 56) = 0xE300000000000000;
  v21[7] = 9000;

  *(v18 + 64) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v18 + 72) = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setArguments:isa];

  v21[4] = v14;
  sub_100009F4C(5, 1u, sub_10001AA00);
}

uint64_t sub_10001795C(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      if (*a1 != *a2 || v3 != v4)
      {
        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return 1;
    }

    return 0;
  }

  return !v4;
}

uint64_t sub_1000179A0()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x656E6E6F63736964;
  }

  v2 = *v0;
  String.append(_:)(*(&v1 - 1));
  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x657463656E6E6F63;
}

void sub_100017A28()
{

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v12 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    v4 = *(v0 + 136);
    if (v4)
    {
      v5 = *(v0 + 128);

      v6._countAndFlagsBits = v5;
      v6._object = v4;
      String.append(_:)(v6);
      v7._countAndFlagsBits = 41;
      v7._object = 0xE100000000000000;
      String.append(_:)(v7);

      v8 = 0x657463656E6E6F63;
      v9 = 0xEA00000000002864;
    }

    else
    {
      v9 = 0xEC00000064657463;
      v8 = 0x656E6E6F63736964;
    }

    v10 = sub_1000091D0(v8, v9, &v12);

    *(v2 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Changed to state %s", v2, 0xCu);
    sub_100009D1C(v3);
  }

  else
  {
  }
}

uint64_t sub_100017BF8()
{
  swift_beginAccess();
  v1 = *(v0 + 128);

  return v1;
}

void sub_100017C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;

  sub_100017A28();
}

void (*sub_100017C9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100017CF0;
}

void sub_100017CF0(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_100017A28();
  }
}

uint64_t sub_100017D24()
{
  result = (*(*v0 + 152))();
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100017D64(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_100017DCC(a1, a2, a3);
  return v6;
}

uint64_t sub_100017DCC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a1;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer);
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v13 = __DataStorage.init(length:)();
  *v12 = 0xFFFF00000000;
  v12[1] = v13 | 0x4000000000000000;
  sub_10000D644();

  Logger.init(subsystem:category:)();
  v57 = v8;
  v58 = v7;
  v14 = *(v8 + 32);
  v55 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_logger;
  v14(v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_logger, v10, v7);
  v15 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelSourceAddress;
  v16 = type metadata accessor for IPv6Address();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v56 = v15;
  v18(v3 + v15, a2, v16);
  v54 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress;
  v18(v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress, a3, v16);
  v19 = socket(32, 2, 2);
  if (v19 < 0)
  {
    v34 = errno.getter();
    sub_100009B88();
    v35 = swift_allocError();
    *v36 = v34;
    sub_1000186B0();
    swift_allocError();
    *v37 = v35;
    swift_willThrow();

    v38 = *(v17 + 8);
    v38(a3, v16);
    v39 = a2;
LABEL_9:
    v38(v39, v16);
    (*(v57 + 8))(v4 + v55, v58);
    sub_100018704(*v11, v11[1]);
    v38(v4 + v56, v16);
    v38(v4 + v54, v16);
    sub_100009B34(*(v4 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer), *(v4 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer + 8));
    type metadata accessor for UtunSocket(0);
    swift_deallocPartialClassInstance();
    return v4;
  }

  v20 = v19;
  v52 = a3;
  v53 = a2;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v21 = sub_100018380(0x60uLL, 0xD00000000000001ALL, 0x80000001000200C0, "Could not open UtunSocket: ");
  sub_10001843C(v21, v22, v23, v24, &v60 + 4);

  sub_10000D278();
  if ((ioctl(_:_:_:)() & 0x80000000) != 0)
  {
    v40 = errno.getter();
    sub_100009B88();
    v41 = swift_allocError();
    *v42 = v40;
    v43 = v41 | 0x4000000000000000;
    sub_1000186B0();
    swift_allocError();
    *v44 = v43;
    swift_willThrow();

LABEL_8:
    v38 = *(v17 + 8);
    v38(v52, v16);
    v39 = v53;
    goto LABEL_9;
  }

  v25 = fcntl(_:_:)(v20, 3);
  v26 = fcntl(_:_:_:)(v20, 4, v25 | 4);
  v27 = v59;
  if (v26 < 0)
  {
    v45 = errno.getter();
    sub_100009B88();
    v46 = swift_allocError();
    *v47 = v45;
    v48 = v46 | 0x4000000000000000;
    sub_1000186B0();
    swift_allocError();
    *v49 = v48;
    swift_willThrow();

    goto LABEL_8;
  }

  v28 = v62;
  *(v4 + 68) = v63;
  v29 = v65;
  *(v4 + 84) = v64;
  *(v4 + 100) = v29;
  v30 = v61;
  *(v4 + 20) = v60;
  *(v4 + 36) = v30;
  *(v4 + 116) = v66;
  *(v4 + 52) = v28;
  *(v4 + 16) = v20;
  sub_100018664();
  v31 = v27;
  v32 = static OS_dispatch_source.makeReadSource(fileDescriptor:queue:)();

  v33 = *(v17 + 8);
  v33(v52, v16);
  v33(v53, v16);
  *(v4 + 128) = 0;
  *(v4 + 136) = 0;
  *(v4 + 120) = v32;
  return v4;
}

unint64_t sub_100018380@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    a4 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      a4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    a2 = (a4 << 16) | 7;
    if ((a3 & 0x1000000000000000) == 0)
    {
      if (a4 >= a1)
      {
        a2 = (a1 << 16) | 4;
      }

      return sub_10001A2F0(0xFuLL, a2, v5, v4);
    }
  }

  v7 = (a4 << 16) | 0xB;
  if ((v5 & 0x800000000000000) != 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  v9 = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
  v11 = v10;
  a2 = v8;
  if ((v11 & 1) == 0)
  {
    a2 = v9;
  }

  return sub_10001A2F0(0xFuLL, a2, v5, v4);
}

unint64_t sub_10001843C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v26[0] = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  if (!a5)
  {
    return result;
  }

  v9 = result;
  __chkstk_darwin(result);
  v21[2] = v26;
  v21[3] = v10;
  v21[4] = v11;
  v21[5] = v10;
  result = sub_10001A014(sub_10001A9E0, v21, v9, a2, a3, a4);
  if ((result & 1) == 0)
  {
    return result;
  }

  v12 = a2 >> 14;
  v13 = v9 >> 14;
  if (v9 >> 14 == v12)
  {
    return result;
  }

  v14 = 0;
  v15 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v15) = 1;
  }

  v16 = 4 << v15;
  v22 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v23 = a4 & 0xFFFFFFFFFFFFFFLL;
  v17 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v24 = v17;
  while (1)
  {
    v18 = v9 & 0xC;
    result = v9;
    if (v18 == v16)
    {
      result = sub_1000119D8(v9, a3, a4);
    }

    if (result >> 14 < v13 || result >> 14 >= v12)
    {
      break;
    }

    if ((a4 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v20 = result;
      if (v18 != v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v19 = result >> 16;
      if ((a4 & 0x2000000000000000) != 0)
      {
        v25[0] = a3;
        v25[1] = v23;
        v20 = *(v25 + v19);
        if (v18 != v16)
        {
          goto LABEL_21;
        }
      }

      else
      {
        result = v22;
        if ((a3 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v20 = *(result + v19);
        if (v18 != v16)
        {
LABEL_21:
          if ((a4 & 0x1000000000000000) == 0)
          {
            goto LABEL_22;
          }

          goto LABEL_25;
        }
      }
    }

    result = sub_1000119D8(v9, a3, a4);
    v9 = result;
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_22:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_27;
    }

LABEL_25:
    if (v24 <= v9 >> 16)
    {
      goto LABEL_32;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v9 = result;
LABEL_27:
    if (__OFADD__(v14, 1))
    {
      goto LABEL_31;
    }

    *(a5 + v14++) = v20;
    if (v12 == v9 >> 14)
    {
      return result;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_100018664()
{
  result = qword_100028C80;
  if (!qword_100028C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028C80);
  }

  return result;
}

unint64_t sub_1000186B0()
{
  result = qword_100028C88;
  if (!qword_100028C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100028C88);
  }

  return result;
}

uint64_t sub_100018704(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for UtunSocket(uint64_t a1)
{
  result = qword_100029750;
  if (!qword_100029750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19[0] = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v19[0] - 8);
  __chkstk_darwin(v19[0]);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
  v14 = *(v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
  v15 = *(v3 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion + 8);
  *v13 = a1;
  v13[1] = a2;

  sub_100018704(v14, v15);
  memset(v21, 0, sizeof(v21));
  swift_getObjectType();
  aBlock[4] = sub_100018A28;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100008C74;
  aBlock[3] = &unk_100025758;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100008CD0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v16);
  (*(v6 + 8))(v8, v19[0]);
  (*(v10 + 8))(v12, v9);

  BYTE1(v21[0]) = 32;
  WORD1(v21[0]) = 2;
  DWORD1(v21[0]) = *(v3 + 20);
  v22 = 1;
  v19[4] = &v22;
  v19[5] = v21;
  v19[6] = v3;
  v17 = v19[1];
  result = sub_100009F4C(255, 0, sub_100018A44);
  if (!v17)
  {
    return aBlock[0];
  }

  return result;
}

uint64_t sub_100018A2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100018A44(unint64_t *a1@<X8>)
{
  v4 = v2;
  v7 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  *(v6 + 8) = *v7;
  v9 = *(v6 + 16);
  v28 = *v6;
  v29 = v9;
  if ((connect(v8[4], &v28, 0x20u) & 0x80000000) == 0)
  {
    *&v28.sa_len = 1853191285;
    *&v28.sa_data[6] = 0xE400000000000000;
    if (!*v7)
    {
      __break(1u);
      goto LABEL_16;
    }

    v30 = *v7 - 1;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11 = *&v28.sa_len;
    v3 = *&v28.sa_data[6];

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v27 = a1;
      v14 = swift_slowAlloc();
      *&v28.sa_len = swift_slowAlloc();
      *v14 = 136315650;
      *(v14 + 4) = sub_1000091D0(v11, v3, &v28);
      *(v14 + 12) = 2080;
      v15 = IPv6Address.debugDescription.getter();
      v17 = sub_1000091D0(v15, v16, &v28);

      *(v14 + 14) = v17;
      *(v14 + 22) = 2080;
      v18 = IPv6Address.debugDescription.getter();
      v20 = sub_1000091D0(v18, v19, &v28);

      *(v14 + 24) = v20;
      v4 = v2;
      _os_log_impl(&_mh_execute_header, v12, v13, "Setting %s IP to %s and tunnel destination to %s", v14, 0x20u);
      swift_arrayDestroy();

      a1 = v27;
    }

    sub_1000172AC(v11, v3, v8 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelSourceAddress, v8 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress);
    if (!v4)
    {
      goto LABEL_10;
    }

    v21 = *v7 + 1;
    if (*v7 != -1)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  v22 = errno.getter();
  sub_100009B88();
  v23 = swift_allocError();
  *v24 = v22;
  v11 = v23 | 0x8000000000000000;
  sub_1000186B0();
  v4 = swift_allocError();
  *v25 = v11;
  swift_willThrow();
  v21 = *v7 + 1;
  if (*v7 != -1)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_10:
  sub_100017618(v11, v3);
  if (!v4)
  {
    goto LABEL_13;
  }

  v21 = *v7 + 1;
  if (*v7 != -1)
  {
LABEL_14:
    *v7 = v21;
    return;
  }

  __break(1u);
LABEL_13:
  v26 = *(*v8 + 160);

  v26(v11, v3);
  swift_getObjectType();
  OS_dispatch_source.activate()();
  *a1 = v11;
  a1[1] = v3;
  v21 = *v7 + 1;
  if (*v7 != -1)
  {
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

void sub_100018DD4()
{
  v1 = v0;
  swift_getObjectType();
  v2 = OS_dispatch_source.data.getter();
  if (v2 < 0)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = (v0 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer);
  swift_beginAccess();

  v25 = Data._Representation.subscript.getter();
  v26 = v5;
  v6 = sub_10001A498(&v25, v1);

  v7 = v25;
  v8 = v26;
  sub_10001979C(v25, v26, v4, 0, v3);
  sub_100009B34(v7, v8);
  swift_endAccess();
  if (v6 <= 0)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Received 0 bytes from utun, closing connection...", v18, 2u);
    }

    (*(*v1 + 272))();
  }

  else
  {
    if (v3 == v6)
    {
      v9 = v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion;
      v10 = *(v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion);
      if (!v10)
      {
        return;
      }

      v11 = *(v9 + 8);
      v13 = *v4;
      v12 = v4[1];
      v14 = v12 >> 62;
      if ((v12 >> 62) > 1)
      {
        if (v14 == 2)
        {
          v15 = *(v13 + 16);
LABEL_16:
          sub_100015A94(v13, v12);
          if (v3 < v15)
          {
            __break(1u);
          }
        }
      }

      else if (v14)
      {
        v15 = v13;
        goto LABEL_16;
      }

      v22 = Data._Representation.subscript.getter();
      v24 = v23;
      sub_100009B34(v13, v12);
      v10(v22, v24);
      sub_100018704(v10, v11);
      sub_100009B34(v22, v24);
      return;
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      *(v21 + 4) = v3;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v19, v20, "Expected to read %ld bytes but read %ld instead.", v21, 0x16u);
    }
  }
}

uint64_t sub_10001955C()
{
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  v1 = FileDescriptor._close()();
  if ((v1 & 0x100000000) == 0)
  {
    return (*(*v0 + 160))(0, 0);
  }

  v3 = v1;
  sub_100009B88();
  swift_willThrowTypedImpl();
  result = swift_allocError();
  *v4 = v3;
  return result;
}

uint64_t sub_100019620()
{
  v1 = v0;
  result = swift_beginAccess();
  if (*(v0 + 136))
  {
    __break(1u);
  }

  else
  {
    swift_getObjectType();
    result = OS_dispatch_source.isCancelled.getter();
    if (result)
    {
      swift_unknownObjectRelease();

      v3 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_logger;
      v4 = type metadata accessor for Logger();
      (*(*(v4 - 8) + 8))(v1 + v3, v4);
      sub_100018704(*(v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion), *(v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_messageReceivedCompletion + 8));
      v5 = OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelSourceAddress;
      v6 = type metadata accessor for IPv6Address();
      v7 = *(*(v6 - 8) + 8);
      v7(v1 + v5, v6);
      v7(v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_tunnelDestinationAddress, v6);
      sub_100009B34(*(v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer), *(v1 + OBJC_IVAR____TtC15SSHPacketTunnel10UtunSocket_readBuffer + 8));
      return swift_deallocClassInstance();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001979C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v5 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v6, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v7, v6))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v8 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v8, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_100019974(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = FileDescriptor._write(_:retryOnInterrupt:)();
      if ((v7 & 1) == 0)
      {
      }

      goto LABEL_10;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_8;
  }

  if (v5 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
LABEL_8:

    sub_100019F24(v9, v10, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v6 = FileDescriptor._write(_:retryOnInterrupt:)();
  if (v11)
  {
LABEL_10:
    v12 = v6;
    sub_100009B88();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v13 = v12;
  }
}

uint64_t sub_100019B64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 8))
  {
    return (*a1 + 13);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100019BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100019C40(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IPv6Address();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 sub_100019D40(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100019D4C(uint64_t a1, unsigned int a2)
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

uint64_t sub_100019D9C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100019DF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100019E0C(void *result, int a2)
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

__n128 sub_100019E40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100019E6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 100))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019E8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 100) = v3;
  return result;
}

void type metadata accessor for ctl_info()
{
  if (!qword_100028E50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100028E50);
    }
  }
}

uint64_t sub_100019F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  v7 = FileDescriptor._write(_:retryOnInterrupt:)();
  if (v8)
  {
    v9 = v7;
    sub_100009B88();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v10 = v9;
  }
}

void *sub_10001A014(uint64_t (*a1)(int64_t, uint64_t), uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a6 & 0x1000000000000000) != 0)
  {
    return ((a6 & 0x1000000000000000) >> 60);
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a6) & 0xF;
    v15[0] = a5;
    v15[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    v9 = v15;
  }

  else if ((a5 & 0x1000000000000000) != 0)
  {
    v9 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v10 = a5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = a4;
    v12 = a3;
    v13 = a5;
    v9 = _StringObject.sharedUTF8.getter();
    a3 = v12;
    a5 = v13;
    a4 = v14;
  }

  result = sub_10001A0C4(v9, v10, a3, a4, a5, a6, a1);
  if (!v6)
  {
    return ((a6 & 0x1000000000000000) >> 60);
  }

  return result;
}

unint64_t sub_10001A0C4(unint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t (*a7)(int64_t, uint64_t))
{
  v9 = result;
  v10 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = a3 & 0xC;
  v13 = a3;
  if (v12 == 4 << v10)
  {
    v26 = a3;
    v15 = a6;
    v16 = a4;
    result = sub_1000119D8(a3, a5, a6);
    a3 = v26;
    a4 = v16;
    a6 = v15;
    v13 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v14 = v13 >> 16;
      if (v12 != v11)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v27 = a3;
  v28 = a4;
  v17 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a6) & 0xF;
  }

  if (v17 < v13 >> 16)
  {
    goto LABEL_31;
  }

  v18 = a6;
  result = String.UTF8View._foreignDistance(from:to:)();
  a6 = v18;
  v14 = result;
  a4 = v28;
  a3 = v27;
  if (v12 == v11)
  {
LABEL_14:
    v19 = a6;
    v20 = a4;
    result = sub_1000119D8(a3, a5, a6);
    a4 = v20;
    a6 = v19;
    a3 = result;
  }

LABEL_6:
  if ((a4 & 0xC) == v11)
  {
    v21 = a3;
    v22 = a6;
    result = sub_1000119D8(a4, a5, a6);
    a3 = v21;
    a6 = v22;
    a4 = result;
    if ((v22 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a4 >> 16) - (a3 >> 16);
    goto LABEL_21;
  }

  v23 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v23 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 < a3 >> 16)
  {
    goto LABEL_29;
  }

  if (v23 < a4 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v24 = result;
  if ((v14 + result) < v14)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9)
  {
    v25 = v14 + v9;
  }

  else
  {
    v25 = 0;
  }

  return a7(v25, v24);
}

unint64_t sub_10001A2F0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2 & 0xC) == 4 << v4)
  {
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10 = sub_1000119D8(a2, a3, a4);
    a3 = v8;
    a4 = v9;
    a2 = v10;
    result = v7;
  }

  if ((result & 0xC) == v5)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    result = sub_1000119D8(result, a3, a4);
    a3 = v12;
    a4 = v13;
    a2 = v11;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2 >> 14 > 4 * v6 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

ssize_t sub_10001A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
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

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = recv(*(a4 + 16), (v8 + v9), v13, 0);
  if (result < 0)
  {
    v14 = result;
    v15 = errno.getter();
    sub_100009B88();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
    return v14;
  }

  return result;
}

ssize_t sub_10001A498(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      swift_retain_n();
      sub_100009B34(v7, v6);
      *&v29 = v7;
      WORD4(v29) = v6;
      BYTE10(v29) = BYTE2(v6);
      BYTE11(v29) = BYTE3(v6);
      BYTE12(v29) = BYTE4(v6);
      BYTE13(v29) = BYTE5(v6);
      BYTE14(v29) = BYTE6(v6);
      v9 = recv(*(a2 + 16), &v29, BYTE6(v6), 0);
      if (v9 < 0)
      {
        v22 = errno.getter();
        sub_100009B88();
        swift_allocError();
        *v23 = v22;
        swift_willThrow();
        v24 = v29;
        v25 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);

        *a1 = v24;
        a1[1] = v25;
      }

      else
      {
        v10 = v29;
        v11 = DWORD2(v29) | ((WORD6(v29) | (BYTE14(v29) << 16)) << 32);
        v12 = v9;

        result = v12;
        *a1 = v10;
        a1[1] = v11;
      }

      return result;
    }

    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    sub_100015A94(v7, v6);
    sub_100009B34(v7, v6);
    *a1 = xmmword_10001DAE0;
    sub_100009B34(0, 0xC000000000000000);
    v19 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v19 < v7)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_25:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v27 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v18 = v27;
      v3 = v2;
    }

    if (v19 >= v7)
    {

      v28 = sub_10001A3C4(v7, v7 >> 32, v18, a2);

      *a1 = v7;
      a1[1] = v18 | 0x4000000000000000;
      if (!v3)
      {
        return v28;
      }

      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v8 == 2)
  {
    swift_retain_n();
    sub_100015A94(v7, v6);
    sub_100009B34(v7, v6);
    *&v29 = v7;
    *(&v29 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10001DAE0;
    sub_100009B34(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = *(&v29 + 1);
    v15 = *(v29 + 16);
    v16 = *(v29 + 24);

    v17 = sub_10001A3C4(v15, v16, *(&v29 + 1), a2);
    if (v3)
    {
    }

    else
    {
      v26 = v17;

      result = v26;
    }

    *a1 = v29;
    a1[1] = v14 | 0x8000000000000000;
  }

  else
  {
    *(&v29 + 7) = 0;
    *&v29 = 0;
    result = recv(*(a2 + 16), &v29, 0, 0);
    if (result < 0)
    {
      v20 = errno.getter();
      sub_100009B88();
      swift_allocError();
      *v21 = v20;
      return swift_willThrow();
    }
  }

  return result;
}

id sub_10001A90C()
{
  v1 = *(v0 + 16);
  v7 = 0;
  if ([v1 launchAndReturnError:&v7])
  {
    v2 = v7;
    [v1 waitUntilExit];
    result = [v1 terminationStatus];
    if (!result)
    {
      return result;
    }

    v4 = [v1 terminationStatus] | 0xC000000000000000;
    sub_1000186B0();
    swift_allocError();
    *v5 = v4;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();
  }

  return swift_willThrow();
}

void *sub_10001A9E0(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

void sub_10001AB18(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  if (sub_100006ACC())
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  v3 = __error();
  strerror(*v3);
  sub_100006A98();
  v9 = sub_100006A04(v2, v4, v5, v6, &_mh_execute_header, v7, v8, "error printing buffer: %s");
  sub_100006AB4(v9);
  __break(1u);
}

void sub_10001AC30(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (sub_100006A80())
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = sub_1000069BC(v7, v2, v3, v4, &_mh_execute_header, v5, v6, "inet_pton(): invalid return: %d");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001AD8C(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = *__error();
  v7[0] = 67109120;
  v7[1] = v5;
  v6 = 8;
  _os_log_send_and_compose_impl(v4, a1, a2, 80, &_mh_execute_header, &_os_log_default, 16, "assertion failure: close(fd) -> %{errno}d", v7, v6);
  _os_crash_msg();
  __break(1u);
}

void sub_10001AE74(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  sub_100006ACC();
  sub_100006AE4();
  v8 = sub_100006A04(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: local_services != ((void*)0) && xpc_get_type(local_services) == (&_xpc_type_dictionary) -> %llu");
  sub_100006AB4(v8);
  __break(1u);
}

void sub_10001AEE0(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  sub_100006ACC();
  sub_100006AE4();
  v8 = sub_100006A04(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: services != ((void*)0) && xpc_get_type(services) == (&_xpc_type_array) -> %llu");
  sub_100006AB4(v8);
  __break(1u);
}

void sub_10001B000(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_init(&filact) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B06C(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_addinherit_np(&filact, fds_to_inherit[i]) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B0D8(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_adddup2(&filact, null_fd, 0) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B144(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_adddup2(&filact, null_fd, 1) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B1B0(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_adddup2(&filact, null_fd, 2) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B21C(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_init(&spawnattr) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B288(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setflags(&spawnattr, 0x0002) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B2F4(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setflags(&spawnattr, 0x4000) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B380(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_adddup2(&filact, sock, passfd) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B3EC(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_adddup2(&filact, sock, 0) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B458(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawn_file_actions_adddup2(&filact, sock, 1) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B4C4(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setflags(&spawnattr, 0x0004 | 0x0008) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B530(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setsigdefault(&spawnattr, &all_signals) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B59C(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  v8 = sub_1000069BC(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: posix_spawnattr_setsigmask(&spawnattr, &no_signals) -> %llu");
  sub_100006A68(v8);
  __break(1u);
}

void sub_10001B608(uint64_t a1, int a2, os_log_t log)
{
  v3 = *(a1 + 64);
  v4 = 136446466;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Could not spawn child process: %{darwin.errno}d", &v4, 0x12u);
}

void sub_10001B694(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  if (sub_100006ACC())
  {
    v2 = 3;
  }

  else
  {
    v2 = 2;
  }

  __error();
  v8 = sub_100006A04(v2, v3, v4, v5, &_mh_execute_header, v6, v7, "assertion failure: close(fd) -> %{errno}d");
  sub_100006AB4(v8);
  __break(1u);
  __DataStorage.init(bytes:length:copy:deallocator:offset:)();
}