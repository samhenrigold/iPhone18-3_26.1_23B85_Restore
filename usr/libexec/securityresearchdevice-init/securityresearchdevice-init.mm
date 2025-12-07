uint64_t sub_100001360()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_1000286A8);
  sub_100001D14(v0, qword_1000286A8);
  return Logger.init(subsystem:category:)();
}

int main(int argc, const char **argv, const char **envp)
{
  swift_task_create();
  swift_task_getMainExecutor();
  swift_job_run();
  result = swift_task_asyncMainDrainQueue();
  __break(1u);
  return result;
}

uint64_t sub_100001440()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000014F8;

  return sub_1000016E4();
}

uint64_t sub_1000014F8()
{
  *(*v1 + 40) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_10000168C;
  }

  else
  {
    v4 = sub_100001654;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_10000168C()
{
  v1 = *(v0 + 40);

  return _swift_errorInMain(v1);
}

uint64_t sub_1000016E4()
{
  type metadata accessor for SecurityResearchDeviceInitCore(0);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v0[12] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[13] = v2;
  v0[14] = v1;

  return _swift_task_switch(sub_1000017B0, v2, v1);
}

uint64_t sub_1000017B0()
{
  v1 = v0[10];
  v0[15] = os_transaction_create();
  SecurityResearchDeviceInitCore.init()(v1);
  sub_100001D4C(v0[10], v0[11]);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_1000019D8;

  return SecurityResearchDeviceInitCore.run()();
}

uint64_t sub_1000019D8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 112);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_100001B9C;
  }

  else
  {
    v5 = sub_100001B14;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100001B14()
{
  v1 = *(v0 + 88);
  swift_unknownObjectRelease();

  sub_100001DB0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100001B9C()
{

  if (qword_1000286A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = type metadata accessor for Logger();
  sub_100001D14(v2, qword_1000286A8);
  _StringGuts.grow(_:)(38);
  v3._object = 0x800000010001D600;
  v3._countAndFlagsBits = 0xD000000000000024;
  String.append(_:)(v3);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0;
  v5._countAndFlagsBits = 0x29286E69616DLL;
  v4._object = 0xE000000000000000;
  v5._object = 0xE600000000000000;
  Logger.errorWithMetadata(_:function:line:)(v4, v5, 28);

  swift_willThrow();
  swift_unknownObjectRelease();
  sub_100001DB0(v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100001D14(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001D4C(uint64_t a1, uint64_t a2)
{
  inited = type metadata accessor for SecurityResearchDeviceInitCore(0);
  (*(*(inited - 8) + 32))(a2, a1, inited);
  return a2;
}

uint64_t sub_100001DB0(uint64_t a1)
{
  inited = type metadata accessor for SecurityResearchDeviceInitCore(0);
  (*(*(inited - 8) + 8))(a1, inited);
  return a1;
}

uint64_t *sub_100001E0C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void SecurityResearchDeviceInitCore.init()(char *a1@<X8>)
{
  v2 = v1;
  v107 = a1;
  v105 = type metadata accessor for URL();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v106 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100028188 != -1)
  {
LABEL_82:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100001D14(v4, qword_100028190);
  v6 = sub_100019930(0x292874696E69, 0xE600000000000000, 45);
  if (!v2)
  {
    v8 = v6;
    v103 = 0;
    v2 = 0xD000000000000011;
    v115 = v6[2];
    v116 = v5;
    if (v115)
    {
      v9 = 0;
      v113 = "SYNCNOW-PROPERTY";
      v114 = (v6 + 4);
      v109 = "txm_research_extended_config=";
      *&v7 = 134218242;
      v108 = v7;
      v112 = v6;
      do
      {
        if (v9 >= v8[2])
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v16 = (v114 + 32 * v9);
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];

        if (sub_100009C2C(0xD00000000000001DLL, (v113 | 0x8000000000000000), v17, v18, v19, v20) & 1) != 0 || (sub_100009C2C(0xD000000000000014, (v109 | 0x8000000000000000), v17, v18, v19, v20))
        {
          v117 = v9;
          v2 = v17 >> 14;
          v21 = v18 >> 14;
          v22 = &_swiftEmptyArrayStorage;
          if (v17 >> 14 == v18 >> 14)
          {
            goto LABEL_42;
          }

          v118 = &_swiftEmptyArrayStorage;
          v23 = v17;
          while (2)
          {
            v122 = v23;
            while (Substring.subscript.getter() != 61 || v27 != 0xE100000000000000)
            {
              v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v28)
              {
                goto LABEL_22;
              }

              v2 = Substring.index(after:)() >> 14;
              if (v2 == v21)
              {
                v23 = v122;
                goto LABEL_29;
              }
            }

LABEL_22:
            if (v122 >> 14 != v2)
            {
              if (v2 < v122 >> 14)
              {
                goto LABEL_79;
              }

              v29 = Substring.subscript.getter();
              v31 = v30;
              v110 = v33;
              v111 = v32;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v122 = v31;
              if (isUniquelyReferenced_nonNull_native)
              {
                v35 = v118;
              }

              else
              {
                v35 = sub_10000946C(0, *(v118 + 2) + 1, 1, v118);
              }

              v37 = *(v35 + 2);
              v36 = *(v35 + 3);
              if (v37 >= v36 >> 1)
              {
                v35 = sub_10000946C((v36 > 1), v37 + 1, 1, v35);
              }

              *(v35 + 2) = v37 + 1;
              v118 = v35;
              v24 = &v35[32 * v37];
              v25 = v122;
              *(v24 + 4) = v29;
              *(v24 + 5) = v25;
              v26 = v110;
              *(v24 + 6) = v111;
              *(v24 + 7) = v26;
            }

            v23 = Substring.index(after:)();
            v2 = v23 >> 14;
            if (v23 >> 14 != v21)
            {
              continue;
            }

            break;
          }

LABEL_29:
          if (v23 >> 14 == v21)
          {

            v22 = v118;
            v2 = *(v118 + 2);
          }

          else
          {
            if (v21 < v23 >> 14)
            {
              goto LABEL_80;
            }

            v122 = Substring.subscript.getter();
            v39 = v38;
            v41 = v40;
            v43 = v42;

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v22 = v118;
            }

            else
            {
              v22 = sub_10000946C(0, *(v118 + 2) + 1, 1, v118);
            }

            v45 = *(v22 + 2);
            v44 = *(v22 + 3);
            v2 = v45 + 1;
            if (v45 >= v44 >> 1)
            {
              v22 = sub_10000946C((v44 > 1), v45 + 1, 1, v22);
            }

            *(v22 + 2) = v2;
            v46 = &v22[32 * v45];
            *(v46 + 4) = v122;
            *(v46 + 5) = v39;
            *(v46 + 6) = v41;
            *(v46 + 7) = v43;
          }

          if (v2 != 2)
          {
LABEL_42:

            v47 = Logger.logObject.getter();
            v48 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v47, v48))
            {
              v10 = swift_slowAlloc();
              v122 = swift_slowAlloc();
              v119[0] = v122;
              *v10 = v108;
              v11 = *(v22 + 2);

              *(v10 + 4) = v11;

              *(v10 + 12) = 2080;
              v12 = static String._fromSubstring(_:)();
              v14 = v13;

              v15 = sub_100009778(v12, v14, v119);

              *(v10 + 14) = v15;
              _os_log_impl(&_mh_execute_header, v47, v48, "Malformed txm_research(_extended)_config != 2: count %ld, boot-arg %s", v10, 0x16u);
              sub_10000B9B0(v122);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            v9 = v117;
            v2 = 0xD000000000000011;
            v8 = v112;
          }

          else
          {

            v8 = v112;
            v9 = v117;
            if (*(v22 + 2) < 2uLL)
            {
              goto LABEL_81;
            }

            if (sub_10000AD68(*(v22 + 8), *(v22 + 9), *(v22 + 10), *(v22 + 11), 48, 0xE100000000000000))
            {

              v77 = Logger.logObject.getter();
              v78 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v77, v78))
              {

                goto LABEL_62;
              }

              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v119[0] = v80;
              *v79 = 136315138;
              if (*(v22 + 2))
              {
                v81 = v80;

                v82 = static String._fromSubstring(_:)();
                v84 = v83;

                v85 = sub_100009778(v82, v84, v119);

                *(v79 + 4) = v85;
                _os_log_impl(&_mh_execute_header, v77, v78, "Detected disabled research configuration for %s in bootargs, exiting", v79, 0xCu);
                sub_10000B9B0(v81);

LABEL_62:

                sub_100009D9C();
                swift_allocError();
                *v86 = xmmword_10001CD30;
                *(v86 + 16) = 2;
                swift_willThrow();
                return;
              }

              __break(1u);
              return;
            }

            v2 = 0xD000000000000011;
          }
        }

        else
        {
        }

        ++v9;
      }

      while (v9 != v115);
    }

    type metadata accessor for NVRAM();
    swift_initStackObject();
    NVRAM.init()();
    v117 = sub_10000BE08(0xD000000000000012, 0x800000010001D6C0);
    v50 = v49;
    v115 = sub_10000BE08(0xD000000000000011, 0x800000010001D6E0);
    v52 = v51;
    v113 = sub_10000BE08(0xD000000000000019, 0x800000010001D700);
    v54 = v53;
    v114 = sub_10000BE08(0xD000000000000017, 0x800000010001D720);
    v122 = v55;
    v118 = sub_10000BE08(0xD000000000000011, 0x800000010001D740);
    v57 = v56;
    sub_10000BE08(0x766F72702D647273, 0xEE006563726F662DLL);
    v59 = v58;
    if (v50 | v52)
    {
      if (v57)
      {
        v112 = v57;
        v60 = Logger.logObject.getter();
        v61 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          *v62 = 0;
          _os_log_impl(&_mh_execute_header, v60, v61, "NVRAM variables for cryptex installation are set", v62, 2u);
        }

        v63 = v106;
        v64 = v103;
        sub_100019AD0(0x292874696E69, 0xE600000000000000, 83);
        v103 = v64;
        if (v64)
        {

          return;
        }

        inited = type metadata accessor for SecurityResearchDeviceInitCore(0);
        v68 = inited[10];
        (*(v104 + 32))(&v107[v68], v63, v105);
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v111 = inited;
          *v71 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Temporary directory created", v71, 2u);
          inited = v111;
        }

        if (v50)
        {

          v72 = v107;
          *v107 = 1;
          *(v72 + 1) = v117;
          *(v72 + 2) = v50;
          *(v72 + 3) = 0;
          *(v72 + 4) = 0;
          (*(v104 + 56))(&v72[inited[7]], 1, 1, v105);
          v73 = Logger.logObject.getter();
          v74 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v73, v74))
          {
            v76 = v118;
            goto LABEL_74;
          }

          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&_mh_execute_header, v73, v74, "Cryptex http download", v75, 2u);
          v76 = v118;
        }

        else
        {
          if (!v52)
          {

            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              *v92 = 0;
              _os_log_impl(&_mh_execute_header, v90, v91, "No valid configuration detected for securityresearchdevice-init", v92, 2u);
            }

            sub_100009D9C();
            swift_allocError();
            *v93 = xmmword_10001CD40;
            *(v93 + 16) = 2;
            swift_willThrow();

            (*(v104 + 8))(&v107[v68], v105);
            return;
          }

          v87 = v107;
          *v107 = 0;
          v88 = v114;
          *(v87 + 1) = v115;
          *(v87 + 2) = v52;
          v89 = v122;
          *(v87 + 3) = v88;
          *(v87 + 4) = v89;
          if (v54)
          {
            URL.init(string:)();
          }

          else
          {
            (*(v104 + 56))(&v87[inited[7]], 1, 1, v105);
          }

          v76 = v118;
          v73 = Logger.logObject.getter();
          v94 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v73, v94))
          {
LABEL_74:

            v96 = v107;
            v97 = &v107[inited[8]];
            v98 = v112;
            *v97 = v76;
            v97[1] = v98;
            v96[inited[9]] = v59 != 0;

            v99 = Logger.logObject.getter();
            v100 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v99, v100))
            {
              v101 = swift_slowAlloc();
              *v101 = 67109120;

              *(v101 + 4) = v59 != 0;

              _os_log_impl(&_mh_execute_header, v99, v100, "Forced provisioning: %{BOOL}d", v101, 8u);
            }

            else
            {

              swift_bridgeObjectRelease_n();
            }

            return;
          }

          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v73, v94, "Cryptex mobile asset download", v95, 2u);
        }

        goto LABEL_74;
      }
    }

    v121._countAndFlagsBits = 0;
    v121._object = 0xE000000000000000;
    v119[0] = 0xD000000000000011;
    v119[1] = 0x800000010001D740;
    v120 = 1;
    _print_unlocked<A, B>(_:_:)();
    v65._countAndFlagsBits = 0x292874696E69;
    v65._object = 0xE600000000000000;
    Logger.errorWithMetadata(_:function:line:)(v121, v65, 77);

    sub_100009D9C();
    swift_allocError();
    *v66 = 0xD000000000000011;
    *(v66 + 8) = 0x800000010001D740;
    *(v66 + 16) = 1;
    swift_willThrow();
  }
}

void sub_100002DA8()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v18 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [objc_allocWithZone(NSFileManager) init];
  v9 = [v8 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  URL.absoluteURL.getter();
  v10 = *(v1 + 8);
  v10(v6, v0);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v10(v4, v0);
  v18 = 0;
  v14 = [v7 URLForDirectory:99 inDomain:1 appropriateForURL:v13 create:1 error:&v18];

  v15 = v18;
  if (v14)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v17 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t SecurityResearchDeviceInitCore.run()()
{
  v1[7] = v0;
  v2 = type metadata accessor for URL();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  type metadata accessor for DownloadedEncryptedAsset(0);
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100003110, 0, 0);
}

uint64_t sub_100003110()
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = type metadata accessor for Logger();
  v0[14] = sub_100001D14(v2, qword_100028190);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100003248;

  return sub_100005388(&unk_10001CD88, v3, 0x29286E7572, 0xE500000000000000, 120);
}

uint64_t sub_100003248(char a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_100004598;
  }

  else
  {
    *(v4 + 33) = a1 & 1;

    v5 = sub_10000337C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000337C(uint64_t a1)
{
  if (*(v1 + 33) == 1)
  {
    v2 = swift_task_alloc();
    *(v1 + 144) = v2;
    *v2 = v1;
    v2[1] = sub_1000034F4;
    v3 = *(v1 + 104);

    return sub_100005F98(v3);
  }

  else
  {
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Cryptex installation not needed.", v7, 2u);
    }

    v8 = *(v1 + 8);

    return v8();
  }
}

uint64_t sub_1000034F4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100003AD0;
  }

  else
  {
    v2 = sub_100003608;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100003608(uint64_t a1)
{
  v30 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex downloaded", v4, 2u);
  }

  v5 = *(v1 + 152);
  v6 = *(v1 + 96);

  sub_10001335C(v6);
  if (v5)
  {
    swift_errorRetain();
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v9 = 138412802;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_100009778(0x29286E7572, 0xE500000000000000, &v29);
      *(v9 + 22) = 2048;
      *(v9 + 24) = 133;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error: %@, in %s, line: %ld", v9, 0x20u);
      sub_10000BAB8(v10, &qword_100028220, &qword_10001CDA0);

      sub_10000B9B0(v11);
    }

    v13 = *(v1 + 104);
    swift_willThrow();
    goto LABEL_9;
  }

  v14 = *(v1 + 88);
  v15 = *(v1 + 64);
  v16 = *(v1 + 72);
  sub_10000AF24(*(v1 + 96), v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v17 = *(v1 + 96);
    v13 = *(v1 + 104);
    sub_10000BAB8(*(v1 + 88), &qword_100028218, &qword_10001D1D0);
    *(v1 + 40) = 0;
    *(v1 + 48) = 0xE000000000000000;
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = 2;
    _print_unlocked<A, B>(_:_:)();
    v18._countAndFlagsBits = 0x29286E7572;
    v18._object = 0xE500000000000000;
    Logger.errorWithMetadata(_:function:line:)(*(v1 + 40), v18, 139);

    sub_100009D9C();
    swift_allocError();
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 2;
    swift_willThrow();
    sub_10000BAB8(v17, &qword_100028218, &qword_10001D1D0);
LABEL_9:
    sub_10000AEC8(v13);

    v20 = *(v1 + 8);

    return v20();
  }

  (*(*(v1 + 72) + 32))(*(v1 + 80), *(v1 + 88), *(v1 + 64));
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Extracted local encrypted asset URL", v24, 2u);
  }

  v25 = *(v1 + 80);
  v26 = *(v1 + 56);

  v27 = swift_task_alloc();
  *(v1 + 160) = v27;
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  v28 = swift_task_alloc();
  *(v1 + 168) = v28;
  *v28 = v1;
  v28[1] = sub_100003CB0;

  return sub_100005790(&unk_10001CDB0, v27, 0x29286E7572, 0xE500000000000000, 144);
}

uint64_t sub_100003AD0()
{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 138412802;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100009778(0x29286E7572, 0xE500000000000000, &v9);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 128;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v3, 0x20u);
    sub_10000BAB8(v4, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v5);
  }

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100003CB0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v5 = sub_100004628;
  }

  else
  {
    v5 = sub_100003DF0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100003DF0(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex decrypted", v4, 2u);
  }

  v5 = swift_task_alloc();
  v1[25] = v5;
  *v5 = v1;
  v5[1] = sub_100003F34;
  v6 = v1[22];
  v7 = v1[23];
  v8 = v1[14];

  return sub_10001A1D0(sub_10001A1D0, 0x29286E7572, 0xE500000000000000, 150, v8, v6, v7);
}

uint64_t sub_100003F34()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1000046F0;
  }

  else
  {
    v2 = sub_100004068;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004068(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex personalized and installed", v4, 2u);
  }

  v5 = swift_task_alloc();
  *(v1 + 216) = v5;
  *v5 = v1;
  v5[1] = sub_100004170;

  return sub_100013974();
}

uint64_t sub_100004170()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1000047B8;
  }

  else
  {
    v2 = sub_100004284;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100004284()
{
  v24 = v0;
  v1 = v0[28];
  sub_100007134();
  if (v1)
  {
    swift_errorRetain();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v23 = v6;
      *v4 = 138412802;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v4 + 4) = v7;
      *v5 = v7;
      *(v4 + 12) = 2080;
      *(v4 + 14) = sub_100009778(0x29286E7572, 0xE500000000000000, &v23);
      *(v4 + 22) = 2048;
      *(v4 + 24) = 161;
      _os_log_impl(&_mh_execute_header, v2, v3, "Error: %@, in %s, line: %ld", v4, 0x20u);
      sub_10000BAB8(v5, &qword_100028220, &qword_10001CDA0);

      sub_10000B9B0(v6);
    }

    v9 = v0[12];
    v8 = v0[13];
    v11 = v0[9];
    v10 = v0[10];
    v12 = v0[8];
    swift_willThrow();
    sub_10000BAB8(v9, &qword_100028218, &qword_10001D1D0);
    (*(v11 + 8))(v10, v12);
    sub_10000AEC8(v8);

    v13 = v0[1];
  }

  else
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Cleanup performed", v16, 2u);
    }

    v18 = v0[12];
    v17 = v0[13];
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];

    sub_10000BAB8(v18, &qword_100028218, &qword_10001D1D0);
    (*(v20 + 8))(v19, v21);
    sub_10000AEC8(v17);

    v13 = v0[1];
  }

  return v13();
}

uint64_t sub_100004598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100004628()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_10000BAB8(v0[12], &qword_100028218, &qword_10001D1D0);
  (*(v3 + 8))(v2, v4);
  sub_10000AEC8(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000046F0()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  sub_10000BAB8(v0[12], &qword_100028218, &qword_10001D1D0);
  (*(v3 + 8))(v2, v4);
  sub_10000AEC8(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000047B8()
{
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to delete downloaded asset: %@", v3, 0xCu);
    sub_10000BAB8(v4, &qword_100028220, &qword_10001CDA0);
  }

  else
  {
  }

  sub_100007134();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Cleanup performed", v8, 2u);
  }

  v10 = v0[12];
  v9 = v0[13];
  v12 = v0[9];
  v11 = v0[10];
  v13 = v0[8];

  sub_10000BAB8(v10, &qword_100028218, &qword_10001D1D0);
  (*(v12 + 8))(v11, v13);
  sub_10000AEC8(v9);

  v14 = v0[1];

  return v14();
}

uint64_t sub_100004BC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004C58;

  return sub_100004DCC();
}

uint64_t sub_100004C58(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1 & 1;

    return _swift_task_switch(sub_100004DA8, 0, 0);
  }
}

uint64_t sub_100004DEC()
{
  v1 = objc_opt_self();
  v0[3] = v1;
  v2 = [v1 defaultManager];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 fileExistsAtPath:v3];

  if (v4)
  {
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100001D14(v5, qword_100028190);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v12 = 0;
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "SecurityResearchDeviceInit was already run, exiting";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v6, v7, v9, v8, 2u);
    v12 = v4 ^ 1;

LABEL_16:

    goto LABEL_17;
  }

  v10 = v0[2];
  if (*(v10 + *(type metadata accessor for SecurityResearchDeviceInitCore(0) + 36)) == 1)
  {
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100001D14(v11, qword_100028190);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      v12 = 1;
      goto LABEL_16;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Provisioning forced by NVRAM configuration";
    goto LABEL_11;
  }

  v13 = [v1 defaultManager];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    v12 = 0;
LABEL_17:
    v16 = v0[1];

    return v16(v12);
  }

  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100001D14(v18, qword_100028190);
  v20 = swift_task_alloc();
  v0[4] = v20;
  *v20 = v0;
  v20[1] = sub_100005194;

  return sub_10001A708(sub_10001A708, 0xD00000000000001BLL, 0x800000010001D830, 204, v19);
}

uint64_t sub_100005194()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_10000536C;
  }

  else
  {
    v2 = sub_1000052A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000052A8()
{
  v1 = [*(v0 + 24) defaultManager];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 fileExistsAtPath:v2];

  v4 = *(v0 + 8);

  return v4(v3 ^ 1);
}

uint64_t sub_100005388(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a5;
  v6[5] = v5;
  v6[2] = a3;
  v6[3] = a4;
  v9 = (a1 + *a1);
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_100005488;

  return v9(v6 + 8);
}

uint64_t sub_100005488()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1000055B8;
  }

  else
  {
    v2 = sub_10000559C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000055B8()
{
  v13 = v0;
  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10(0);
}

uint64_t sub_100005790(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v9 = (a1 + *a1);
  v7 = swift_task_alloc();
  v6[8] = v7;
  *v7 = v6;
  v7[1] = sub_100005890;

  return v9(v6 + 2);
}

uint64_t sub_100005890()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1000059C0;
  }

  else
  {
    v2 = sub_1000059A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000059C0()
{
  v13 = v0;
  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[4];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100005B94(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a3;
  v6[4] = a4;
  v9 = (a1 + *a1);
  v7 = swift_task_alloc();
  v6[7] = v7;
  *v7 = v6;
  v7[1] = sub_100005C94;

  return v9(v6 + 2);
}

uint64_t sub_100005C94()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_100005DC4;
  }

  else
  {
    v2 = sub_100005DA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100005DC4()
{
  v13 = v0;
  swift_errorRetain();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 138412802;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_100009778(v5, v3, &v12);
    *(v6 + 22) = 2048;
    *(v6 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v6, 0x20u);
    sub_10000BAB8(v7, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v8);
  }

  swift_willThrow();
  v10 = v0[1];

  return v10();
}

uint64_t sub_100005F98(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  v2[9] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100006090, 0, 0);
}

uint64_t sub_100006090()
{
  v1 = *(v0 + 64);
  if (*v1 == 1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v6 = *(v1 + 8);
    v5 = *(v1 + 16);
    URL.init(string:)();
    if ((*(v3 + 48))(v4, 1, v2) == 1)
    {
      sub_10000BAB8(*(v0 + 72), &qword_100028218, &qword_10001D1D0);
      if (qword_100028188 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_100001D14(v7, qword_100028190);
      *(v0 + 40) = 0;
      *(v0 + 48) = 0xE000000000000000;
      *(v0 + 16) = v6;
      *(v0 + 24) = v5;
      *(v0 + 32) = 0;
      _print_unlocked<A, B>(_:_:)();
      v8._object = 0x800000010001D7C0;
      v8._countAndFlagsBits = 0xD000000000000011;
      Logger.errorWithMetadata(_:function:line:)(*(v0 + 40), v8, 215);

      sub_100009D9C();
      swift_allocError();
      *v9 = v6;
      *(v9 + 8) = v5;
      *(v9 + 16) = 0;
      swift_willThrow();

      v10 = *(v0 + 8);

      return v10();
    }

    else
    {
      (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
      if (qword_100028188 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      *(v0 + 104) = sub_100001D14(v21, qword_100028190);
      v22 = swift_task_alloc();
      *(v0 + 112) = v22;
      *v22 = v0;
      v22[1] = sub_100006448;
      v23 = *(v0 + 96);
      v24 = *(v0 + 56);

      return sub_10001421C(v24, v23);
    }
  }

  else
  {
    sub_1000077F4();
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 64);
    v13 = type metadata accessor for Logger();
    *(v0 + 128) = sub_100001D14(v13, qword_100028190);
    v15 = v12[1];
    v14 = v12[2];
    v16 = v12[3];
    v17 = v12[4];
    v18 = *(type metadata accessor for SecurityResearchDeviceInitCore(0) + 28);
    v19 = swift_task_alloc();
    *(v0 + 136) = v19;
    *v19 = v0;
    v19[1] = sub_1000067DC;
    v20 = *(v0 + 56);

    return sub_100014E8C(v20, v15, v14, v16, v17, v12 + v18);
  }
}

uint64_t sub_100006448()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1000065E4;
  }

  else
  {
    v2 = sub_10000655C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000655C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000065E4()
{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 138412802;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100009778(0xD000000000000011, 0x800000010001D7C0, &v12);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 218;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v3, 0x20u);
    sub_10000BAB8(v4, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v5);
  }

  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  swift_willThrow();
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000067DC()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100006928, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100006928()
{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 138412802;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100009778(0xD000000000000011, 0x800000010001D7C0, &v9);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 223;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v3, 0x20u);
    sub_10000BAB8(v4, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v5);
  }

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100006B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_100006BA0;

  return sub_100006D20(a3);
}

uint64_t sub_100006BA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return _swift_task_switch(sub_100006CFC, 0, 0);
  }
}

uint64_t sub_100006CFC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 40);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_100006D20(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_100006DE0, 0, 0);
}

uint64_t sub_100006DE0()
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_100001D14(v2, qword_100028190);
  inited = type metadata accessor for SecurityResearchDeviceInitCore(0);
  *(v0 + 16) = sub_100007C24(*(v1 + *(inited + 32)), *(v1 + *(inited + 32) + 8));
  *(v0 + 24) = v4;
  P256.KeyAgreement.PrivateKey.init<A>(rawRepresentation:)();
  v5 = *(v0 + 64);
  v6 = swift_task_alloc();
  *(v6 + 16) = *(v0 + 32);
  *(v6 + 32) = v5;
  v7 = sub_10000F2C0(sub_10000B5E4, v6, 0xD00000000000001DLL, 0x800000010001D780, 239);
  v9 = *(v0 + 56);
  v8 = *(v0 + 64);
  v10 = *(v0 + 48);
  v11 = v7;
  v13 = v12;

  (*(v9 + 8))(v8, v10);

  v14 = *(v0 + 8);

  return v14(v11, v13);
}

void sub_100007134()
{
  v2 = v1;
  v3 = v0;
  v4 = [objc_opt_self() defaultManager];
  v5 = String._bridgeToObjectiveC()();
  [v4 createFileAtPath:v5 contents:0 attributes:0];

  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100001D14(v6, qword_100028190);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Breadcrumb created", v9, 2u);
  }

  if (*(v3 + *(type metadata accessor for SecurityResearchDeviceInitCore(0) + 36)) == 1)
  {
    type metadata accessor for NVRAM();
    swift_initStackObject();
    NVRAM.init()();
    sub_10000C480(0x766F72702D647273, 0xEE006563726F662DLL);
    if (v1)
    {
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v30 = v14;
        *v12 = 138412802;
        swift_errorRetain();
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        *(v12 + 12) = 2080;
        *(v12 + 14) = sub_100009778(0x2870756E61656C63, 0xE900000000000029, &v30);
        *(v12 + 22) = 2048;
        *(v12 + 24) = 309;
        _os_log_impl(&_mh_execute_header, v10, v11, "Error: %@, in %s, line: %ld", v12, 0x20u);
        sub_10000BAB8(v13, &qword_100028220, &qword_10001CDA0);

        sub_10000B9B0(v14);
      }

      swift_willThrow();

      return;
    }

    sub_10000C718();
    v2 = 0;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      log = v16;
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_100009778(0x766F72702D647273, 0xEE006563726F662DLL, &v30);
      _os_log_impl(&_mh_execute_header, log, v17, "Removed %s key from NVRAM", v18, 0xCu);
      sub_10000B9B0(v19);
    }

    else
    {
    }
  }

  sub_100008EE0();
  if (v2)
  {
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v22 = 138412802;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v25;
      *v23 = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_100009778(0x2870756E61656C63, 0xE900000000000029, &v30);
      *(v22 + 22) = 2048;
      *(v22 + 24) = 318;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error: %@, in %s, line: %ld", v22, 0x20u);
      sub_10000BAB8(v23, &qword_100028220, &qword_10001CDA0);

      sub_10000B9B0(v24);
    }

    swift_willThrow();
  }

  else
  {
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "Temporary directory removed", v28, 2u);
    }
  }
}

void sub_1000077F4()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100001D14(v4, qword_100028190);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "waiting for first unlock", v7, 2u);
  }

  if ((sub_10000866C() & 1) == 0)
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v9 = swift_allocObject();
    *(v9 + 16) = -1;
    sub_10000BA0C();
    (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
    v10 = static OS_dispatch_queue.global(qos:)();
    (*(v1 + 8))(v3, v0);
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v9;
    aBlock[4] = sub_10000BA98;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008E8C;
    aBlock[3] = &unk_100024CC8;
    v12 = _Block_copy(aBlock);
    v13 = v8;

    swift_beginAccess();
    LODWORD(v8) = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v9 + 16), v10, v12);
    swift_endAccess();
    _Block_release(v12);

    if (v8 || *(v9 + 16) == -1)
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "failed to register for lock status notification";
LABEL_12:
        _os_log_impl(&_mh_execute_header, v14, v15, v17, v16, 2u);
      }
    }

    else
    {
      if (sub_10000866C())
      {

        goto LABEL_8;
      }

      OS_dispatch_group.wait()();
      if (sub_10000866C())
      {

        goto LABEL_14;
      }

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        v17 = "device appears before first unlock even after notification";
        goto LABEL_12;
      }
    }

LABEL_14:
    goto LABEL_8;
  }

LABEL_8:
  sub_100008C90();
}

uint64_t sub_100007C24(unint64_t *a1, unint64_t a2)
{
  v5 = v2;
  if (String.count.getter())
  {
    if (qword_1000281A8 != -1)
    {
LABEL_154:
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100001D14(v15, qword_1000281B0);
    v84 = 0;
    v85 = 0xE000000000000000;

    _print_unlocked<A, B>(_:_:)();
    v13 = a2;
    v16 = v84;
    v17 = 0x800000010001D7A0;
    v18 = v85;
    v19 = 0xD000000000000010;
    v20 = 344;
    goto LABEL_133;
  }

  v8 = String.count.getter();
  v10 = v8;
  if (v8 >= 1)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v14 = __OFADD__(v12, 2);
      v12 += 2;
      if (v14)
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      ++v11;
      if (v12 >= v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    v69 = v9;
    sub_100009E3C((v11 > 1), v9, 1);
    v9 = v69;
    v21 = v83;
    while (1)
    {
      v21[2] = v9;
      v79 = &v21[2 * v3];
      *(v79 + 4) = a2;
      *(v79 + 5) = a1;
      v80 = v5 >= v10 ? 1 : v13;
      v4 += 2;
      a2 = v86;
      a1 = v82;
      if (v80)
      {
        break;
      }

LABEL_139:
      v70 = v21;
      v5 = v4 + 2;
      LOBYTE(v13) = __OFADD__(v4, 2);
      String.index(_:offsetBy:)();
      v71 = String.subscript.getter();
      v73 = v72;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_150;
      }

      v74 = v71;
      String.index(_:offsetBy:)();
      v75 = String.subscript.getter();
      v77 = v76;
      v84 = v74;
      v85 = v73;

      v78._countAndFlagsBits = v75;
      v78._object = v77;
      String.append(_:)(v78);

      a2 = v84;
      a1 = v85;
      v21 = v70;
      v83 = v70;
      v3 = v70[2];
      v11 = v70[3];
      v9 = v3 + 1;
      if (v3 >= v11 >> 1)
      {
        goto LABEL_138;
      }
    }

LABEL_23:
    if (v9)
    {
      goto LABEL_24;
    }

    goto LABEL_123;
  }

  v13 = 0;
LABEL_12:
  v83 = &_swiftEmptyArrayStorage;
  sub_100009E3C(0, v13 & ~(v13 >> 63), 0);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_156;
  }

  v21 = &_swiftEmptyArrayStorage;
  v86 = a2;
  v82 = a1;
  if (v13)
  {
    v22 = 0;
    v81 = v10;
    while (v22 < v10)
    {
      v4 = v22 + 2;
      if (__OFADD__(v22, 2))
      {
        v23 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22 + 2;
      }

      v5 = v21;
      String.index(_:offsetBy:)();
      v24 = String.subscript.getter();
      v26 = v25;
      String.index(_:offsetBy:)();
      v27 = String.subscript.getter();
      v29 = v28;
      v84 = v24;
      v85 = v26;

      v30._countAndFlagsBits = v27;
      v30._object = v29;
      String.append(_:)(v30);

      v21 = v5;
      v31 = v24;
      v83 = v5;
      v3 = *(v5 + 16);
      v32 = *(v5 + 24);
      v9 = v3 + 1;
      if (v3 >= v32 >> 1)
      {
        sub_100009E3C((v32 > 1), v3 + 1, 1);
        v9 = v3 + 1;
        v21 = v5;
      }

      v21[2] = v9;
      v11 = &v21[2 * v3];
      *(v11 + 32) = v31;
      *(v11 + 40) = v26;
      v22 = v23;
      --v13;
      a2 = v86;
      v10 = v81;
      a1 = v82;
      if (!v13)
      {
        if (v23 < v81)
        {
          goto LABEL_139;
        }

        goto LABEL_23;
      }
    }

    goto LABEL_136;
  }

  if (v10 > 0)
  {
    v4 = 0;
    goto LABEL_139;
  }

  v9 = *(&_swiftEmptyArrayStorage + 2);
  if (v9)
  {
LABEL_24:
    a2 = 0;
    a1 = v21 + 4;
    v10 = &v84 + 1;
    v3 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v11 = v21[2];
      if (a2 >= v11)
      {
        goto LABEL_137;
      }

      v33 = &a1[2 * a2];
      v34 = *v33;
      v4 = v33[1];
      ++a2;
      v35 = HIBYTE(v4) & 0xF;
      v36 = v34 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v37 = HIBYTE(v4) & 0xF;
      }

      else
      {
        v37 = v34 & 0xFFFFFFFFFFFFLL;
      }

      if (!v37)
      {
        goto LABEL_110;
      }

      if ((v4 & 0x1000000000000000) == 0)
      {
        break;
      }

      v5 = v9;
      v13 = v21;

      LOWORD(v40) = sub_100009FFC(v34, v4, 16);

      v21 = v13;
      v9 = v5;
      if ((v40 & 0x100) == 0)
      {
LABEL_113:
        v58 = v21;
        v13 = v9;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_100009578(0, *(v3 + 16) + 1, 1, v3);
        }

        v5 = *(v3 + 16);
        v59 = *(v3 + 24);
        v4 = v5 + 1;
        if (v5 >= v59 >> 1)
        {
          v61 = sub_100009578((v59 > 1), v5 + 1, 1, v3);
          v21 = v58;
          v9 = v13;
          v3 = v61;
        }

        else
        {
          v9 = v13;
          v21 = v58;
        }

        *(v3 + 16) = v4;
        *(v3 + v5 + 32) = v40;
      }

LABEL_110:
      if (a2 == v9)
      {
        goto LABEL_124;
      }
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v84 = v34;
      v85 = (v4 & 0xFFFFFFFFFFFFFFLL);
      if (v34 == 43)
      {
        if (!v35)
        {
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (--v35)
        {
          LOBYTE(v40) = 0;
          v50 = &v84 + 1;
          while (1)
          {
            v51 = *v50;
            v52 = v51 - 48;
            if ((v51 - 48) >= 0xA)
            {
              if ((v51 - 65) < 6)
              {
                v52 = v51 - 55;
              }

              else
              {
                if ((v51 - 97) > 5)
                {
                  goto LABEL_108;
                }

                v52 = v51 - 87;
              }
            }

            if (v40 > 0xFu)
            {
              break;
            }

            LOBYTE(v40) = v52 + 16 * v40;
            ++v50;
            if (!--v35)
            {
              goto LABEL_109;
            }
          }
        }
      }

      else if (v34 == 45)
      {
        if (!v35)
        {
          goto LABEL_152;
        }

        if (--v35)
        {
          LOBYTE(v40) = 0;
          v44 = &v84 + 1;
          while (1)
          {
            v45 = *v44;
            v46 = v45 - 48;
            if ((v45 - 48) >= 0xA)
            {
              if ((v45 - 65) < 6)
              {
                v46 = v45 - 55;
              }

              else
              {
                if ((v45 - 97) > 5)
                {
                  goto LABEL_108;
                }

                v46 = v45 - 87;
              }
            }

            if (v40 > 0xFu)
            {
              break;
            }

            v40 = 16 * (v40 & 0xF) - v46;
            if ((v40 & 0xFFFFFF00) != 0)
            {
              break;
            }

            ++v44;
            if (!--v35)
            {
              goto LABEL_109;
            }
          }
        }
      }

      else if (v35)
      {
        LOBYTE(v40) = 0;
        v55 = &v84;
        while (1)
        {
          v56 = *v55;
          v57 = v56 - 48;
          if ((v56 - 48) >= 0xA)
          {
            if ((v56 - 65) < 6)
            {
              v57 = v56 - 55;
            }

            else
            {
              if ((v56 - 97) > 5)
              {
                goto LABEL_108;
              }

              v57 = v56 - 87;
            }
          }

          if (v40 > 0xFu)
          {
            break;
          }

          LOBYTE(v40) = v57 + 16 * v40;
          v55 = (v55 + 1);
          if (!--v35)
          {
            goto LABEL_109;
          }
        }
      }

      goto LABEL_108;
    }

    if ((v34 & 0x1000000000000000) != 0)
    {
      v38 = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v5 = v9;
      v60 = v21;
      v38 = _StringObject.sharedUTF8.getter();
      v21 = v60;
      v9 = v5;
    }

    v39 = *v38;
    if (v39 == 43)
    {
      if (v36 < 1)
      {
        goto LABEL_153;
      }

      v35 = v36 - 1;
      if (v36 == 1)
      {
        goto LABEL_108;
      }

      if (v38)
      {
        LOBYTE(v40) = 0;
        v47 = v38 + 1;
        while (1)
        {
          v48 = *v47;
          v49 = v48 - 48;
          if ((v48 - 48) >= 0xA)
          {
            if ((v48 - 65) < 6)
            {
              v49 = v48 - 55;
            }

            else
            {
              if ((v48 - 97) > 5)
              {
                goto LABEL_108;
              }

              v49 = v48 - 87;
            }
          }

          if (v40 > 0xFu)
          {
            goto LABEL_108;
          }

          LOBYTE(v40) = v49 + 16 * v40;
          ++v47;
          if (!--v35)
          {
            goto LABEL_109;
          }
        }
      }
    }

    else if (v39 == 45)
    {
      if (v36 < 1)
      {
        goto LABEL_151;
      }

      v35 = v36 - 1;
      if (v36 == 1)
      {
        goto LABEL_108;
      }

      if (v38)
      {
        LOBYTE(v40) = 0;
        v41 = v38 + 1;
        while (1)
        {
          v42 = *v41;
          v43 = v42 - 48;
          if ((v42 - 48) >= 0xA)
          {
            if ((v42 - 65) < 6)
            {
              v43 = v42 - 55;
            }

            else
            {
              if ((v42 - 97) > 5)
              {
                goto LABEL_108;
              }

              v43 = v42 - 87;
            }
          }

          if (v40 > 0xFu)
          {
            goto LABEL_108;
          }

          v40 = 16 * (v40 & 0xF) - v43;
          if ((v40 & 0xFFFFFF00) != 0)
          {
            goto LABEL_108;
          }

          ++v41;
          if (!--v35)
          {
            goto LABEL_109;
          }
        }
      }
    }

    else
    {
      if (!v36)
      {
LABEL_108:
        LOBYTE(v40) = 0;
        LOBYTE(v35) = 1;
LABEL_109:
        LOBYTE(v83) = v35;
        if ((v35 & 1) == 0)
        {
          goto LABEL_113;
        }

        goto LABEL_110;
      }

      if (v38)
      {
        LOBYTE(v40) = 0;
        while (1)
        {
          v53 = *v38;
          v54 = v53 - 48;
          if ((v53 - 48) >= 0xA)
          {
            if ((v53 - 65) < 6)
            {
              v54 = v53 - 55;
            }

            else
            {
              if ((v53 - 97) > 5)
              {
                goto LABEL_108;
              }

              v54 = v53 - 87;
            }
          }

          if (v40 > 0xFu)
          {
            goto LABEL_108;
          }

          LOBYTE(v40) = v54 + 16 * v40;
          ++v38;
          if (!--v36)
          {
            LOBYTE(v35) = 0;
            goto LABEL_109;
          }
        }
      }
    }

    LOBYTE(v40) = 0;
    LOBYTE(v35) = 0;
    goto LABEL_109;
  }

LABEL_123:
  v3 = &_swiftEmptyArrayStorage;
LABEL_124:

  v5 = *(v3 + 16);
  v13 = v86;
  a1 = v82;
  if (!v5 || String.count.getter() / v5 != 2)
  {

    if (qword_1000281A8 == -1)
    {
LABEL_132:
      v66 = type metadata accessor for Logger();
      sub_100001D14(v66, qword_1000281B0);
      v84 = 0;
      v85 = 0xE000000000000000;

      _print_unlocked<A, B>(_:_:)();
      v16 = v84;
      v17 = 0x800000010001D7A0;
      v18 = v85;
      v19 = 0xD000000000000010;
      v20 = 356;
LABEL_133:
      Logger.errorWithMetadata(_:function:line:)(*&v16, *&v19, v20);

      sub_10000B86C();
      swift_allocError();
      *v67 = a1;
      v67[1] = v13;
      swift_willThrow();
      return v5;
    }

LABEL_156:
    swift_once();
    goto LABEL_132;
  }

  if (qword_1000281A8 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100001D14(v62, qword_1000281B0);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "String to hexadecimal data convertion completed", v65, 2u);
  }

  v5 = sub_10000B7BC(v3);

  return v5;
}

void (*sub_100008604@<X0>(void (*a1)(uint64_t, uint64_t, unint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t, unint64_t)@<X8>))(uint64_t, uint64_t, unint64_t)
{
  inited = type metadata accessor for SecurityResearchDeviceInitCore(0);
  result = sub_10000CF48(a1, a2 + *(inited + 40), a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v11;
  }

  return result;
}

uint64_t sub_10000866C()
{
  v0 = type metadata accessor for AKSIdentity.State.State();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000ADE0(&qword_100028310, &qword_10001CEC0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v34 - v7;
  v9 = type metadata accessor for AKSIdentity.State();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v34 - v14;
  v16 = type metadata accessor for AKSHandle();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for AKSIdentity();
  v40 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static AKSHandle.session.getter();
  AKSIdentity.init(_:)();
  v39 = v19;
  AKSIdentity.getIdentityState()();
  v35 = v9;
  v36 = v17;
  v34 = v10;
  (*(v10 + 32))(v15, v13, v9);
  AKSIdentity.State.state.getter();
  v21 = v37;
  v20 = v38;
  v22 = *(v37 + 48);
  LODWORD(v13) = v22(v8, 1, v38);
  sub_10000BAB8(v8, &qword_100028310, &qword_10001CEC0);
  if (v13 == 1)
  {
    if (qword_100028188 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100001D14(v23, qword_100028190);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v35;
    v27 = v36;
    v29 = v34;
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "AKSIdentity.State.state appears nil, device appears to have never been unlocked", v30, 2u);
    }

    (*(v29 + 8))(v15, v28);
    (*(v40 + 8))(v39, v27);
    v31 = 0;
    return v31 & 1;
  }

  AKSIdentity.State.state.getter();
  result = v22(v6, 1, v20);
  if (result != 1)
  {
    static AKSIdentity.State.State.beenUnlocked.getter();
    sub_10000BB18();
    v31 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v33 = *(v21 + 8);
    v33(v2, v20);
    (*(v34 + 8))(v15, v35);
    (*(v40 + 8))(v39, v36);
    v33(v6, v20);
    return v31 & 1;
  }

  __break(1u);
  return result;
}

void sub_100008C90()
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100001D14(v0, qword_100028190);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "returning after validating device has been through first unlock", v2, 2u);
  }
}

uint64_t sub_100008D78(uint64_t a1, NSObject *a2, uint64_t a3)
{
  if (qword_100028188 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100001D14(v5, qword_100028190);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "received lock status notification", v8, 2u);
  }

  dispatch_group_leave(a2);
  swift_beginAccess();
  return notify_cancel(*(a3 + 16));
}

uint64_t sub_100008E8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_100008EE0()
{
  v0 = [objc_opt_self() defaultManager];
  inited = type metadata accessor for SecurityResearchDeviceInitCore(0);
  URL._bridgeToObjectiveC()(*(inited + 40));
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

uint64_t sub_100009004(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100001E0C(v5, a2);
  sub_100001D14(v5, a2);
  return Logger.init(subsystem:category:)();
}

void *sub_10000909C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_1000090AC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return &_swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10000946C(0, 1, 1, &_swiftEmptyArrayStorage);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_10000946C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_10000946C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10000946C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10000946C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000946C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_100028320, &qword_10001CED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100009578(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_100028300, &qword_10001CEB8);
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

char *sub_10000966C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_1000282E0, &qword_10001CEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_100009778(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100009844(v11, 0, 0, 1, a1, a2);
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
    sub_10000BB70(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000B9B0(v11);
  return v7;
}

unint64_t sub_100009844(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100009950(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

char *sub_100009950(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000999C(a1, a2);
  sub_100009ACC(&off_100024B70);
  return v3;
}

char *sub_10000999C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100009BB8(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100009BB8(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

char *sub_100009ACC(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_100009578(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v7 + 32], v6 + 32, v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100009BB8(uint64_t a1, uint64_t a2)
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

  sub_10000ADE0(&qword_100028300, &qword_10001CEB8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100009C2C(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 ^ a4;

  if (v7 >= 0x4000)
  {
    while (1)
    {
      v11 = Substring.subscript.getter();
      v13 = v12;
      v14 = Substring.index(after:)();
      v15 = String.Iterator.next()();
      if (!v15.value._object)
      {
        break;
      }

      if (v11 == v15.value._countAndFlagsBits && v15.value._object == v13)
      {
      }

      else
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v10 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v14 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    object = String.Iterator.next()().value._object;

    if (object)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

unint64_t sub_100009D9C()
{
  result = qword_100028210;
  if (!qword_100028210)
  {
    result = swift_getWitnessTable(byte_10001CE58, &type metadata for SecurityResearchDeviceInitCore.Error, v0, v1);
    atomic_store(result, &qword_100028210);
  }

  return result;
}

uint64_t type metadata accessor for SecurityResearchDeviceInitCore(uint64_t a1)
{
  result = qword_100028280;
  if (!qword_100028280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100009E3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100009E5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100009E5C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE0(&qword_1000282E0, &qword_10001CEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

_BYTE *sub_100009F68@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000B604(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_10000B6BC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10000B738(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

unsigned __int8 *sub_100009FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000A5D0(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOBYTE(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFF00) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 >> 8))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOBYTE(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 >> 8))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOBYTE(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFF00) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFFFF00) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 8));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOBYTE(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
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

          v61 = v39 * a3;
          if ((v61 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 >> 8))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOBYTE(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
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

          v46 = v39 * a3;
          if ((v46 & 0xFF00) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFFFF00) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOBYTE(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFF00) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 >> 8))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000A5D0(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = sub_10000A650(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10000A650(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_100009BB8(v9, 0), v12 = sub_10000A7A8(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t sub_10000A7A8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10000A9C8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
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
          result = _StringObject.sharedUTF8.getter();
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

    result = sub_10000A9C8(v12, a6, a7);
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

    result = String.UTF8View._foreignIndex(after:)();
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

unint64_t sub_10000A9C8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_10000AA44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return static String._fromUTF8Repairing(_:)(a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return static String._fromUTF8Repairing(_:)(a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return static String._fromUTF8Repairing(_:)(a1, a2);
}

void *sub_10000AA90()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 0;
  if (sysctlbyname("kern.bootargs", 0, &v23, 0, 0))
  {
    sub_10000ADE0(&qword_100028320, &qword_10001CED0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_10001CD50;
    v5 = Substring.init(_:)();
    result = v4;
    *(v4 + 32) = v5;
    *(v4 + 40) = v7;
    *(v4 + 48) = v8;
    *(v4 + 56) = v9;
  }

  else
  {
    v10 = v23;
    if ((v23 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    if (v23)
    {
      v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v11[2] = v10;
      bzero(v11 + 4, v10);
    }

    else
    {
      v11 = &_swiftEmptyArrayStorage;
    }

    if (sysctlbyname("kern.bootargs", v11 + 4, &v23, 0, 0))
    {

      sub_100009D9C();
      swift_allocError();
      *v13 = xmmword_10001CD60;
      *(v13 + 16) = 2;
      return swift_willThrow();
    }

    else
    {
      v14 = sub_10000AA44(v11, v12);
      v16 = v15;

      v21 = v14;
      v22 = v16;
      static CharacterSet.whitespacesAndNewlines.getter();
      sub_10000BBCC();
      v17 = StringProtocol.trimmingCharacters(in:)();
      v19 = v18;
      (*(v1 + 8))(v3, v0);

      v21 = 32;
      v22 = 0xE100000000000000;
      __chkstk_darwin(v20);
      *(&v21 - 2) = &v21;
      return sub_1000090AC(0x7FFFFFFFFFFFFFFFLL, 1, sub_10000BC20, (&v21 - 4), v17, v19, &v21);
    }
  }

  return result;
}

uint64_t sub_10000AD68(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t sub_10000ADE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000AE28(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BDCC;

  return sub_100004BC4(a1);
}

uint64_t sub_10000AEC8(uint64_t a1)
{
  v2 = type metadata accessor for DownloadedEncryptedAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AF94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000B040;

  return sub_100006B00(a1, v5, v4);
}

uint64_t sub_10000B040()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000B148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10000B28C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for URL();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10000B3BC(uint64_t a1)
{
  sub_10000BCC8(319, &qword_100028290, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_10000B4A0(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000B4A0(uint64_t a1)
{
  if (!qword_100028298)
  {
    type metadata accessor for URL();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100028298);
    }
  }
}

uint64_t sub_10000B4F8(uint64_t a1)
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

__n128 sub_10000B514(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000B528(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000B570(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000B5B8(uint64_t result, unsigned int a2)
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

uint64_t sub_10000B604(_BYTE *__src, _BYTE *a2)
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

uint64_t sub_10000B6BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10000B738(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_10000B7BC(uint64_t a1)
{
  v9 = sub_10000ADE0(&qword_1000282F0, &qword_10001CEB0);
  v10 = sub_10000B8C0();
  v8[0] = a1;
  v2 = sub_10000B96C(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100009F68(v3, &v3[v4], &v7);
  v5 = v7;
  sub_10000B9B0(v8);
  return v5;
}

unint64_t sub_10000B86C()
{
  result = qword_1000282E8;
  if (!qword_1000282E8)
  {
    result = swift_getWitnessTable(byte_10001CFE8, &_s5ErrorON, v0, v1);
    atomic_store(result, &qword_1000282E8);
  }

  return result;
}

unint64_t sub_10000B8C0()
{
  result = qword_1000282F8;
  if (!qword_1000282F8)
  {
    v3 = sub_10000B924(&qword_1000282F0, &qword_10001CEB0);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v0, v1);
    atomic_store(result, &qword_1000282F8);
  }

  return result;
}

uint64_t sub_10000B924(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void *sub_10000B96C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000B9B0(void *a1)
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

unint64_t sub_10000BA0C()
{
  result = qword_100028308;
  if (!qword_100028308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028308);
  }

  return result;
}

uint64_t sub_10000BA58()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000BAA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000BAB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000ADE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_10000BB18()
{
  result = qword_100028318;
  if (!qword_100028318)
  {
    v3 = type metadata accessor for AKSIdentity.State.State();
    result = swift_getWitnessTable(&protocol conformance descriptor for AKSIdentity.State.State, v3, v0, v1);
    atomic_store(result, &qword_100028318);
  }

  return result;
}

uint64_t sub_10000BB70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000BBCC()
{
  result = qword_100028328;
  if (!qword_100028328)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_100028328);
  }

  return result;
}

uint64_t sub_10000BC20(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void sub_10000BCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_10000BD18(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000BD24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000BD6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t NVRAM.__allocating_init()()
{
  v0 = swift_allocObject();
  NVRAM.init()();
  return v0;
}

uint64_t sub_10000BE08(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v5 - 8);
  v6 = *(v2 + 16);
  v7 = String._bridgeToObjectiveC()();
  CFProperty = IORegistryEntryCreateCFProperty(v6, v7, kCFAllocatorDefault, 0);

  if (!CFProperty)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100001D14(v23, qword_100028340);

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v41 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_100009778(a1, a2, &v41);
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to get value for key %s", v26, 0xCu);
      sub_10000B9B0(v27);
    }

    return 0;
  }

  v43 = CFProperty;
  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v10 = v41;
    v9 = v42;
    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    v13 = v12;
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100001D14(v14, qword_100028340);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v39 = a1;
      v17 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v17 = 136315394;
      if (v13)
      {
        v18 = v11;
      }

      else
      {
        v18 = 0;
      }

      v40 = v9;
      if (v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v20 = sub_100009778(v18, v19, &v41);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_100009778(v39, a2, &v41);
      _os_log_impl(&_mh_execute_header, v15, v16, "Found NVRAM value %s for key %s", v17, 0x16u);
      swift_arrayDestroy();

      swift_unknownObjectRelease();
      v22 = v40;
      v21 = v10;
    }

    else
    {
      swift_unknownObjectRelease();
      v21 = v41;
      v22 = v42;
    }

    sub_10000CD7C(v21, v22);

    return v11;
  }

  v43 = CFProperty;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100001D14(v33, qword_100028340);

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v41 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_100009778(a1, a2, &v41);
      _os_log_impl(&_mh_execute_header, v34, v35, "Unable to convert value for key %s into Data or String", v36, 0xCu);
      sub_10000B9B0(v37);
    }

    swift_unknownObjectRelease();
    return 0;
  }

  v11 = v41;
  v28 = v42;
  if (qword_1000281C8 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_100001D14(v29, qword_100028340);

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v32 = 136315394;
    *(v32 + 4) = sub_100009778(v11, v28, &v41);
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_100009778(a1, a2, &v41);
    _os_log_impl(&_mh_execute_header, v30, v31, "Found NVRAM value %s for key %s", v32, 0x16u);
    swift_arrayDestroy();
  }

  swift_unknownObjectRelease();
  return v11;
}

void sub_10000C480(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = IORegistryEntrySetCFProperty(v5, v6, v7);

  if (v8)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100001D14(v9, qword_100028340);
    v18[0] = a1;
    v18[1] = a2;
    v19 = 0;
    v20 = 0;

    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0;
    v11._countAndFlagsBits = 0x662865766F6D6572;
    v11._object = 0xEF293A79654B726FLL;
    v10._object = 0xE000000000000000;
    Logger.errorWithMetadata(_:function:line:)(v10, v11, 74);

    sub_10000CD28();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 20) = 0;
    swift_willThrow();
  }

  else
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100001D14(v13, qword_100028340);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_100009778(a1, a2, v18);
      _os_log_impl(&_mh_execute_header, v14, v15, "Removed NVRAM value for key %s", v16, 0xCu);
      sub_10000B9B0(v17);
    }
  }
}

void sub_10000C718()
{
  v1 = *(v0 + 16);
  v2 = String._bridgeToObjectiveC()();
  v3 = IORegistryEntrySetCFProperty(v1, @"IONVRAM-FORCESYNCNOW-PROPERTY", v2);

  if (v3)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100001D14(v4, qword_100028340);
    _print_unlocked<A, B>(_:_:)();
    v5._countAndFlagsBits = 0;
    v6._object = 0x800000010001D900;
    v5._object = 0xE000000000000000;
    v6._countAndFlagsBits = 0xD000000000000014;
    Logger.errorWithMetadata(_:function:line:)(v5, v6, 65);

    sub_10000CD28();
    swift_allocError();
    *v7 = xmmword_10001CD60;
    *(v7 + 16) = 0;
    *(v7 + 20) = 2;
    swift_willThrow();
  }

  else
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100001D14(v8, qword_100028340);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "NVRAM synchronized", v11, 2u);
    }
  }
}

uint64_t sub_10000C920()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028340);
  sub_100001D14(v0, qword_100028340);
  return Logger.init(subsystem:category:)();
}

uint64_t NVRAM.init()()
{
  v1 = v0;
  v2 = IORegistryEntryFromPath(kIOMainPortDefault, "IODeviceTree:/options");
  *(v0 + 16) = v2;
  if (v2)
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100001D14(v3, qword_100028340);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "NVRAM initialization successful", v6, 2u);
    }

    return v1;
  }

  else
  {
    if (qword_1000281C8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100001D14(v8, qword_100028340);
    _print_unlocked<A, B>(_:_:)();

    v9._countAndFlagsBits = 0x292874696E69;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v9._object = 0xE600000000000000;
    Logger.errorWithMetadata(_:function:line:)(v10, v9, 24);

    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t NVRAM.__deallocating_deinit()
{
  IOObjectRelease(*(v0 + 16));

  return _swift_deallocClassInstance(v0, 20, 7);
}

uint64_t sub_10000CC3C(uint64_t a1)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 20) & 3;
  }
}

__n128 sub_10000CC58(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_10000CC6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000CCB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t sub_10000CCFC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 20) = a2;
  return result;
}

unint64_t sub_10000CD28()
{
  result = qword_1000283F8;
  if (!qword_1000283F8)
  {
    result = swift_getWitnessTable("1y", &type metadata for NVRAM.Error, v0, v1);
    atomic_store(result, &qword_1000283F8);
  }

  return result;
}

uint64_t sub_10000CD7C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10000CDD0()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028400);
  sub_100001D14(v0, qword_100028400);
  return Logger.init(subsystem:category:)();
}

id sub_10000CE4C()
{
  v0 = [objc_opt_self() defaultManager];
  v1 = String._bridgeToObjectiveC()();
  v5 = 0;
  v2 = [v0 createDirectoryAtPath:v1 withIntermediateDirectories:0 attributes:0 error:&v5];

  if (v2)
  {
    return v5;
  }

  v4 = v5;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void (*sub_10000CF48(void (*a1)(uint64_t, uint64_t, unint64_t), uint64_t a2, uint64_t a3))(uint64_t, uint64_t, unint64_t)
{
  v127 = a2;
  v123 = a3;
  v129 = type metadata accessor for AEAHandler.Error(0);
  __chkstk_darwin(v129);
  v128 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ArchiveFlags();
  v120 = *(v5 - 8);
  v121 = v5;
  v6 = __chkstk_darwin(v5);
  v119 = &v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v122 = &v113 - v8;
  v131 = type metadata accessor for URL();
  v9 = *(v131 - 8);
  __chkstk_darwin(v131);
  v11 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000ADE0(&qword_100028418, &unk_10001D120);
  __chkstk_darwin(v12 - 8);
  v14 = &v113 - v13;
  v15 = type metadata accessor for FilePath();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v125 = (&v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v135 = (&v113 - v19);
  if (qword_1000281D0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  v130 = sub_100001D14(v20, qword_100028400);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "AEA decryption with %ld threads", v23, 0xCu);
  }

  v24 = v9;
  v27 = *(v9 + 16);
  v26 = v9 + 16;
  v25 = v27;
  v28 = v131;
  v27(v11, a1, v131);
  FilePath.init(_:)();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000BAB8(v14, &qword_100028418, &unk_10001D120);
    v134._countAndFlagsBits = 0;
    v134._object = 0xE000000000000000;
    v29 = v128;
    v25(v128, a1, v28);
    swift_storeEnumTagMultiPayload();
    _print_unlocked<A, B>(_:_:)();
    sub_10000E5C4(v29);
    v30._object = 0x800000010001D940;
    v30._countAndFlagsBits = 0xD000000000000036;
    Logger.errorWithMetadata(_:function:line:)(v134, v30, 110);

    sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error, byte_10001D15C);
    swift_allocError();
    v25(v31, a1, v28);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return a1;
  }

  v116 = v26;
  v117 = v25;
  (*(v16 + 32))(v135, v14, v15);
  v32 = v28;
  v33 = URL.path.getter();
  v134._countAndFlagsBits = 47;
  v134._object = 0xE100000000000000;
  v132 = v33;
  v133 = v34;
  v132 = String.init<A>(_:)();
  v133 = v35;
  String.append<A>(contentsOf:)();
  v124 = v16;
  v118 = v15;
  v36 = v132;
  v37 = v133;
  URL.deletingPathExtension()();
  v38 = URL.lastPathComponent.getter();
  v40 = v39;
  v41 = v11;
  v42 = v32;
  (*(v24 + 8))(v41, v32);
  v134._countAndFlagsBits = v38;
  v134._object = v40;
  v132 = v36;
  v133 = v37;
  v132 = String.init<A>(_:)();
  v133 = v43;
  String.append<A>(contentsOf:)();

  a1 = v132;
  v44 = v133;
  v45 = [objc_opt_self() defaultManager];
  v46 = String._bridgeToObjectiveC()();
  LOBYTE(v37) = [v45 fileExistsAtPath:v46];

  if (v37)
  {

    v134._countAndFlagsBits = 0;
    v134._object = 0xE000000000000000;
    v48 = v127;
    v47 = v128;
    a1 = v117;
    v117(v128, v127, v42);
    swift_storeEnumTagMultiPayload();
    _print_unlocked<A, B>(_:_:)();
    sub_10000E5C4(v47);
    v49._object = 0x800000010001D940;
    v49._countAndFlagsBits = 0xD000000000000036;
    Logger.errorWithMetadata(_:function:line:)(v134, v49, 118);

    sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error, byte_10001D15C);
    swift_allocError();
    a1(v50, v48, v42);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v124 + 8))(v135, v118);
    return a1;
  }

  v51 = v126;
  sub_10000CE4C();
  if (!v51)
  {
    v131 = "IONVRAM-DELETE-PROPERTY";

    v59 = v125;
    FilePath.init(_:)();
    type metadata accessor for ArchiveByteStream();
    v60 = v135;
    v61 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
    v62 = v44;
    if (!v61)
    {

      v134._countAndFlagsBits = 0;
      v134._object = 0xE000000000000000;
      v67 = v128;
      a1 = v129;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v67);
      v68._object = (v131 | 0x8000000000000000);
      v68._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v134, v68, 136);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error, byte_10001D15C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v69 = *(v124 + 8);
      v70 = v118;
      v69(v59, v118);
      v71 = v60;
LABEL_17:
      v72 = v70;
LABEL_18:
      v69(v71, v72);
      return a1;
    }

    v63 = v61;
    v127 = v62;
    type metadata accessor for ArchiveEncryptionContext();
    swift_allocObject();

    v64 = ArchiveEncryptionContext.init(from:)();
    v65 = v124;
    if (!v64)
    {

      v134._countAndFlagsBits = 0;
      v134._object = 0xE000000000000000;
      v73 = v128;
      a1 = v129;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v73);
      v74._object = (v131 | 0x8000000000000000);
      v74._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v134, v74, 142);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error, byte_10001D15C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v75 = *(v65 + 8);
      v76 = v118;
      v75(v125, v118);
      v75(v60, v76);
      return a1;
    }

    v66 = v64;
    v126 = v63;
    dispatch thunk of ArchiveEncryptionContext.setRecipientPrivateKey(_:)();
    v114 = 0;
    v134._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_10000E620(&qword_100028428, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
    v78 = sub_10000ADE0(&qword_100028430, &qword_10001D130);
    v79 = sub_10000E668();
    v80 = v122;
    v123 = v78;
    v117 = v79;
    v81 = v121;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v82 = static ArchiveByteStream.decryptionStream(readingFrom:encryptionContext:flags:threadCount:)();
    v83 = *(v120 + 8);
    (v83)(v80, v81);
    if (v82)
    {
      v115 = v66;
      v84 = v82;
      v85 = type metadata accessor for ArchiveStream();
      v134._countAndFlagsBits = _swiftEmptyArrayStorage;
      v86 = v84;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v116 = v85;
      v87 = static ArchiveStream.decodeStream(readingFrom:selectUsing:flags:threadCount:)();
      v88 = v122;
      v89 = v87;
      (v83)(v122, v81);
      v120 = v89;
      if (v89)
      {
        v113 = v86;
        v134._countAndFlagsBits = _swiftEmptyArrayStorage;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v90 = v125;
        v91 = static ArchiveStream.extractStream(extractingTo:selectUsing:flags:threadCount:)();
        (v83)(v88, v81);
        if (v91)
        {
          v129 = v83;
          v134._countAndFlagsBits = _swiftEmptyArrayStorage;

          v92 = v119;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v93 = v114;
          static ArchiveStream.process(readingFrom:writingTo:selectUsing:flags:threadCount:)();
          if (!v93)
          {
            (v129)(v92, v81);

            dispatch thunk of ArchiveByteStream.close()();
            v109 = v124;
            v110 = v118;
            v111 = v135;
            dispatch thunk of ArchiveByteStream.close()();
            dispatch thunk of ArchiveStream.close()();
            dispatch thunk of ArchiveStream.close()();

            v112 = *(v109 + 8);
            v112(v125, v110);
            v112(v111, v110);
            return a1;
          }

          (v129)(v92, v81);
          swift_errorRetain();
          v94 = Logger.logObject.getter();
          v95 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v98 = swift_slowAlloc();
            v134._countAndFlagsBits = v98;
            *v96 = 138412802;
            swift_errorRetain();
            v99 = _swift_stdlib_bridgeErrorToNSError();
            *(v96 + 4) = v99;
            *v97 = v99;
            *(v96 + 12) = 2080;
            *(v96 + 14) = sub_100009778(0xD000000000000036, v131 | 0x8000000000000000, &v134._countAndFlagsBits);
            *(v96 + 22) = 2048;
            *(v96 + 24) = 188;
            _os_log_impl(&_mh_execute_header, v94, v95, "Error: %@, in %s, line: %ld", v96, 0x20u);
            sub_10000BAB8(v97, &qword_100028220, &qword_10001CDA0);

            sub_10000B9B0(v98);
          }

          v100 = v124;
          v101 = v118;
          a1 = v135;
          swift_willThrow();

          dispatch thunk of ArchiveByteStream.close()();
          dispatch thunk of ArchiveByteStream.close()();
          dispatch thunk of ArchiveStream.close()();
          dispatch thunk of ArchiveStream.close()();

          v69 = *(v100 + 8);
          v69(v125, v101);
          v71 = a1;
          v72 = v101;
          goto LABEL_18;
        }

        v134._countAndFlagsBits = 0;
        v134._object = 0xE000000000000000;
        a1 = v90;
        v107 = v128;
        swift_storeEnumTagMultiPayload();
        _print_unlocked<A, B>(_:_:)();
        sub_10000E5C4(v107);
        v108._object = (v131 | 0x8000000000000000);
        v108._countAndFlagsBits = 0xD000000000000036;
        Logger.errorWithMetadata(_:function:line:)(v134, v108, 175);

        sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error, byte_10001D15C);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        v69 = *(v124 + 8);
        v106 = a1;
        goto LABEL_31;
      }

      v134._countAndFlagsBits = 0;
      v134._object = 0xE000000000000000;
      a1 = v86;
      v104 = v128;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v104);
      v105._object = (v131 | 0x8000000000000000);
      v105._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v134, v105, 166);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error, byte_10001D15C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {

      v134._countAndFlagsBits = 0;
      v134._object = 0xE000000000000000;
      v102 = v128;
      a1 = v129;
      swift_storeEnumTagMultiPayload();
      _print_unlocked<A, B>(_:_:)();
      sub_10000E5C4(v102);
      v103._object = (v131 | 0x8000000000000000);
      v103._countAndFlagsBits = 0xD000000000000036;
      Logger.errorWithMetadata(_:function:line:)(v134, v103, 158);

      sub_10000E620(&qword_100028420, type metadata accessor for AEAHandler.Error, byte_10001D15C);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v106 = v125;
    v69 = *(v124 + 8);
LABEL_31:
    v70 = v118;
    v69(v106, v118);
    v71 = v135;
    goto LABEL_17;
  }

  swift_errorRetain();
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    a1 = swift_slowAlloc();
    v134._countAndFlagsBits = a1;
    *v54 = 138412802;
    swift_errorRetain();
    v56 = _swift_stdlib_bridgeErrorToNSError();
    *(v54 + 4) = v56;
    *v55 = v56;
    *(v54 + 12) = 2080;
    *(v54 + 14) = sub_100009778(0xD000000000000036, 0x800000010001D940, &v134._countAndFlagsBits);
    *(v54 + 22) = 2048;
    *(v54 + 24) = 121;
    _os_log_impl(&_mh_execute_header, v52, v53, "Error: %@, in %s, line: %ld", v54, 0x20u);
    sub_10000BAB8(v55, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(a1);
  }

  v57 = v118;
  v58 = v135;
  swift_willThrow();

  (*(v124 + 8))(v58, v57);

  return a1;
}

uint64_t type metadata accessor for AEAHandler.Error(uint64_t a1)
{
  result = qword_1000284B0;
  if (!qword_1000284B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000E5C4(uint64_t a1)
{
  v2 = type metadata accessor for AEAHandler.Error(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000E620(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_10000E668()
{
  result = qword_100028438;
  if (!qword_100028438)
  {
    v3 = sub_10000B924(&qword_100028430, &qword_10001D130);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_100028438);
  }

  return result;
}

uint64_t sub_10000E71C(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000E780()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_1000284E8);
  sub_100001D14(v0, qword_1000284E8);
  return Logger.init(subsystem:category:)();
}

unsigned __int8 *sub_10000E7F4()
{
  type metadata accessor for NVRAM();
  swift_initStackObject();
  NVRAM.init()();
  v0 = sub_10000BE08(0xD000000000000014, 0x800000010001D980);
  v2 = v1;

  if (!v2)
  {
    v30[0] = 0x7FFFFFFFFFFFFFFFLL;
    result = dispatch thunk of CustomStringConvertible.description.getter();
    v0 = result;
    v2 = v4;
  }

  v5 = HIBYTE(v2) & 0xF;
  v6 = v0 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v7 = v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_65;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    v31 = 0;
    v9 = sub_10000EB74(v0, v2, 10);
    v29 = v28;

    if ((v29 & 1) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((v0 & 0x1000000000000000) != 0)
    {
      result = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_63;
              }

              v18 = 10 * v9;
              if ((v9 * 10) >> 64 != (10 * v9) >> 63)
              {
                goto LABEL_63;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_63;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_55;
        }

        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_63;
            }

            v23 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_63;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_63;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_55;
            }
          }
        }

        goto LABEL_55;
      }

LABEL_63:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_64:
      v31 = v5;
      v27 = v5;

      if ((v27 & 1) == 0)
      {
LABEL_66:
        qword_100028500 = v9;
        return result;
      }

LABEL_65:
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_66;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = result + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_63;
            }

            v12 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              goto LABEL_63;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_63;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v5) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v30[0] = v0;
  v30[1] = v2 & 0xFFFFFFFFFFFFFFLL;
  if (v0 != 43)
  {
    if (v0 != 45)
    {
      if (v5)
      {
        v9 = 0;
        v24 = v30;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v5)
    {
      if (--v5)
      {
        v9 = 0;
        v13 = v30 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_72;
  }

  if (v5)
  {
    if (--v5)
    {
      v9 = 0;
      v19 = v30 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_64;
        }
      }
    }

    goto LABEL_63;
  }

LABEL_74:
  __break(1u);
  return result;
}

unsigned __int8 *sub_10000EB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000A5D0(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
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

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10000F100(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  a1(&v17);
  if (!v5)
  {
    return v17;
  }

  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(a3, a4, &v16);
    *(v11 + 22) = 2048;
    *(v11 + 24) = a5;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10000BAB8(v12, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v13);
  }

  return swift_willThrow();
}

uint64_t sub_10000F2C0(void (*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  a1(&v16);
  if (!v5)
  {
    return v16;
  }

  swift_errorRetain();

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 138412802;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_100009778(a3, a4, &v17);
    *(v11 + 22) = 2048;
    *(v11 + 24) = a5;
    _os_log_impl(&_mh_execute_header, v9, v10, "Error: %@, in %s, line: %ld", v11, 0x20u);
    sub_10000BAB8(v12, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v13);
  }

  return swift_willThrow();
}

uint64_t sub_10000F480(uint64_t a1)
{
  v1[12] = a1;
  v2 = type metadata accessor for CryptexNonce();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for CryptexIdentity();
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_10000F59C, 0, 0);
}

uint64_t sub_10000F59C()
{
  type metadata accessor for CryptexLocalDevice();
  v0[19] = CryptexLocalDevice.__allocating_init()();
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = sub_100001D14(v1, qword_100028508);
  v5 = (&async function pointer to dispatch thunk of CryptexLocalDevice.readIdentity() + async function pointer to dispatch thunk of CryptexLocalDevice.readIdentity());

  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_10000F6B4;
  v3 = v0[18];

  return v5(v3);
}

uint64_t sub_10000F6B4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10000F974;
  }

  else
  {
    v2 = sub_10000F7C8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000F7C8()
{
  v1 = v0[22];
  v2 = v0[12];

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v0[23] = sub_10000F100(sub_100011910, v3, 0xD000000000000020, 0x800000010001D9A0, 72);
  if (v1)
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[16];

    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {

    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_10000FB5C;
    v10 = v0[19];
    v11 = v0[15];

    return sub_1000110EC(v11, v10);
  }
}

uint64_t sub_10000F974()
{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 138412802;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100009778(0xD000000000000020, 0x800000010001D9A0, &v9);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 69;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v3, 0x20u);
    sub_10000BAB8(v4, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v5);
  }

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10000FB5C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10001006C;
  }

  else
  {
    v2 = sub_10000FC70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000FC70()
{
  v31 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 96);

  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_10000F100(sub_10001192C, v3, 0xD000000000000020, 0x800000010001D9A0, 80);
  if (v1)
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 128);
    v7 = *(v0 + 136);
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    (*(v7 + 8))(v5, v6);
LABEL_10:

    v25 = *(v0 + 8);

    return v25();
  }

  v8 = v4;

  v9 = v8[2];
  if (v9 != 1)
  {
    v21 = *(v0 + 136);
    v29 = *(v0 + 144);
    v28 = *(v0 + 128);
    v22 = *(v0 + 112);
    v26 = *(v0 + 104);
    v27 = *(v0 + 120);

    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    *(v0 + 16) = v9;
    *(v0 + 24) = 0;
    *(v0 + 32) = 3;
    _print_unlocked<A, B>(_:_:)();
    v23._object = 0x800000010001D9A0;
    v23._countAndFlagsBits = 0xD000000000000020;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 64), v23, 85);

    sub_10001195C();
    swift_allocError();
    *v24 = v9;
    *(v24 + 8) = 0;
    *(v24 + 16) = 3;
    swift_willThrow();

    (*(v22 + 8))(v27, v26);
    (*(v21 + 8))(v29, v28);
    goto LABEL_10;
  }

  v11 = v8[4];
  v10 = v8[5];
  *(v0 + 208) = v10;
  swift_bridgeObjectRetain_n();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100009778(v11, v10, &v30);
    _os_log_impl(&_mh_execute_header, v12, v13, "Using variant: %s", v14, 0xCu);
    sub_10000B9B0(v15);
  }

  v16 = *(v0 + 184);
  v17 = *(v0 + 144);
  v18 = swift_task_alloc();
  *(v0 + 216) = v18;
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v11;
  v18[5] = v10;
  v19 = swift_task_alloc();
  *(v0 + 224) = v19;
  *v19 = v0;
  v19[1] = sub_10001027C;

  return sub_100005B94(dword_10001D1C0, v18, 0xD000000000000020, 0x800000010001D9A0, 91);
}

uint64_t sub_10001006C()
{
  v13 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 138412802;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100009778(0xD000000000000020, 0x800000010001D9A0, &v12);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 76;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v3, 0x20u);
    sub_10000BAB8(v4, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v5);
  }

  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[17];
  swift_willThrow();

  (*(v9 + 8))(v7, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10001027C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 232) = a1;
  *(v3 + 240) = v1;

  if (v1)
  {
    v4 = sub_100010AA0;
  }

  else
  {
    v4 = sub_1000103D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1000103D4()
{
  v1 = *(v0 + 232);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    *v2 = v0;
    v2[1] = sub_1000105EC;
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);

    return sub_100011BA0(v1, v3, v4);
  }

  else
  {
    v6 = *(v0 + 136);
    v14 = *(v0 + 144);
    v13 = *(v0 + 128);
    v12 = *(v0 + 120);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    *(v0 + 48) = 0;
    *(v0 + 40) = 0;
    *(v0 + 56) = 4;
    _print_unlocked<A, B>(_:_:)();
    v9._object = 0x800000010001D9A0;
    v9._countAndFlagsBits = 0xD000000000000020;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 80), v9, 96);

    sub_10001195C();
    swift_allocError();
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 4;
    swift_willThrow();

    (*(v7 + 8))(v12, v8);
    (*(v6 + 8))(v14, v13);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1000105EC()
{

  return _swift_task_switch(sub_1000106E8, 0, 0);
}

uint64_t sub_1000106E8(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex personalized", v4, 2u);
  }

  v5 = v1[29];

  v6 = swift_task_alloc();
  v1[32] = v6;
  *v6 = v1;
  v6[1] = sub_100010834;
  v7 = v1[20];

  return sub_10001A900(sub_10001A900, 0xD000000000000020, 0x800000010001D9A0, 103, v7, v5);
}

uint64_t sub_100010834()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_100010B78;
  }

  else
  {
    v2 = sub_100010948;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100010948(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Cryptex installed successfully", v4, 2u);
  }

  v5 = v1[18];
  v6 = v1[16];
  v7 = v1[17];
  v9 = v1[14];
  v8 = v1[15];
  v10 = v1[13];

  (*(v9 + 8))(v8, v10);
  (*(v7 + 8))(v5, v6);

  v11 = v1[1];

  return v11();
}

uint64_t sub_100010AA0()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100010B78()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100010C5C()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028508);
  sub_100001D14(v0, qword_100028508);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100010CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  __chkstk_darwin(v5 - 8);
  v26 = v23 - v6;
  v7 = type metadata accessor for URL.DirectoryHint();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FilePath();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = String.init(validating:)();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = type metadata accessor for URL();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    URL.init(filePath:directoryHint:relativeTo:)();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = type metadata accessor for URL();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

uint64_t sub_100010FF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for FilePath();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CryptexBundle();
  (*(v6 + 16))(v8, a1, v5);
  result = CryptexBundle.__allocating_init(path:)();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000110EC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for CryptexNonceSpec();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_10000ADE0(&qword_100028538, &qword_10001D1E8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  NonceOptions = type metadata accessor for CryptexReadNonceOptions();
  v2[10] = NonceOptions;
  v2[11] = *(NonceOptions - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_100011258, 0, 0);
}

uint64_t sub_100011258()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[4];
  v4 = v0[5];
  *v1 = 9;
  (*(v4 + 104))(v1, enum case for CryptexNonceSpec.cryptex1(_:), v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  CryptexReadNonceOptions.init()();
  sub_100013110(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[8];
    sub_10000BAB8(v0[9], &qword_100028538, &qword_10001D1E8);
    sub_10000BAB8(v5, &qword_100028538, &qword_10001D1E8);
  }

  else
  {
    v6 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    (*(v10 + 32))(v7, v0[8], v9);
    (*(v10 + 16))(v8, v7, v9);
    CryptexReadNonceOptions.nonceSpec.setter();
    sub_10000BAB8(v6, &qword_100028538, &qword_10001D1E8);
    (*(v10 + 8))(v7, v9);
  }

  v15 = (&async function pointer to dispatch thunk of CryptexLocalDevice.readNonce(options:) + async function pointer to dispatch thunk of CryptexLocalDevice.readNonce(options:));
  v11 = swift_task_alloc();
  v0[13] = v11;
  *v11 = v0;
  v11[1] = sub_100011468;
  v12 = v0[12];
  v13 = v0[2];

  return v15(v13, v12);
}

uint64_t sub_100011468()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(v5 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10001163C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10001163C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000116D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (&async function pointer to dispatch thunk of CryptexBundle.getCryptex(matching:variant:) + async function pointer to dispatch thunk of CryptexBundle.getCryptex(matching:variant:));
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1000117A0;

  return v11(a3, a4, a5);
}

uint64_t sub_1000117A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_1000118EC, 0, 0);
  }
}

uint64_t sub_10001192C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000122CC(*(v1 + 16));
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001195C()
{
  result = qword_100028520;
  if (!qword_100028520)
  {
    result = swift_getWitnessTable("Qw", &type metadata for SecurityResearchDeviceCryptex.Error, v0, v1);
    atomic_store(result, &qword_100028520);
  }

  return result;
}

uint64_t sub_1000119B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000B040;

  return sub_1000116D0(a1, v4, v5, v7, v6);
}

unint64_t sub_100011A70(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100011AE8(a1, a2, v4);
}

unint64_t sub_100011AE8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100011BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for Cryptex.PersonalizeOptions();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[13] = v5;
  *v5 = v3;
  v5[1] = sub_100011CA8;

  return sub_100018C28(1);
}

uint64_t sub_100011CA8()
{

  return _swift_task_switch(sub_100011DA4, 0, 0);
}

uint64_t sub_100011DA4()
{
  Cryptex.PersonalizeOptions.init()();
  v6 = (&async function pointer to dispatch thunk of Cryptex.personalize(for:nonce:options:) + async function pointer to dispatch thunk of Cryptex.personalize(for:nonce:options:));
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_100011E5C;
  v2 = v0[12];
  v4 = v0[8];
  v3 = v0[9];

  return v6(v4, v3, v2);
}

uint64_t sub_100011E5C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1000120F8;
  }

  else
  {
    v5 = sub_100011FCC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100011FCC()
{
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100001D14(v1, qword_100028508);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v2, v3, "Personalize succeeded on iteration: %ld", v4, 0xCu);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1000120F8()
{
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100001D14(v1, qword_100028508);
  _StringGuts.grow(_:)(62);
  v2._countAndFlagsBits = 0xD000000000000021;
  v2._object = 0x800000010001D9D0;
  String.append(_:)(v2);
  *(v0 + 40) = 1;
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x7265206874697720;
  v4._object = 0xEC00000020726F72;
  String.append(_:)(v4);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5._countAndFlagsBits = 0x697972746572202CLL;
  v5._object = 0xED00002E2E2E676ELL;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 0;
  v7._object = 0x800000010001DA00;
  v6._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD00000000000001FLL;
  Logger.errorWithMetadata(_:function:line:)(v6, v7, 59);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000122CC(uint64_t a1)
{
  v111 = a1;
  v107 = type metadata accessor for URL.DirectoryHint();
  v1 = *(v107 - 8);
  __chkstk_darwin(v107);
  v3 = &v96 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v96 - v5;
  v7 = type metadata accessor for URL();
  v112 = *(v7 - 8);
  __chkstk_darwin(v7);
  v106 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FilePath();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v104 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = &v96 - v14;
  __chkstk_darwin(v13);
  v17 = &v96 - v16;
  v109 = v10;
  v18 = *(v10 + 16);
  v102 = v10 + 16;
  (v18)(v15, v111, v9);
  FilePath.appending(_:)();
  v108 = v17;
  v19 = v17;
  v20 = v7;
  v110 = v9;
  v21 = v9;
  v22 = v112;
  v103 = v18;
  (v18)(v15, v19, v21);
  (*(v1 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v107);
  sub_100010CDC(v15, v3, v6);
  if ((*(v22 + 48))(v6, 1, v7) == 1)
  {
    sub_10000BAB8(v6, &qword_100028218, &qword_10001D1D0);
    if (qword_1000281E8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100001D14(v23, qword_100028508);
    v114._countAndFlagsBits = 0;
    v114._object = 0xE000000000000000;
    v24 = v108;
    v116[0] = FilePath.string.getter();
    v116[1] = v25;
    v117 = 0;
    _print_unlocked<A, B>(_:_:)();

    v26._countAndFlagsBits = 0x73746E6169726176;
    v26._object = 0xEF293A6D6F726628;
    Logger.errorWithMetadata(_:function:line:)(v114, v26, 21);

    v27 = FilePath.string.getter();
    v29 = v28;
    sub_10001195C();
    swift_allocError();
    *v30 = v27;
    *(v30 + 8) = v29;
    *(v30 + 16) = 0;
    swift_willThrow();
    (*(v109 + 8))(v24, v110);
    return v18;
  }

  v31 = v106;
  (*(v22 + 32))(v106, v6, v7);
  if (qword_1000281E8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_100001D14(v32, qword_100028508);
  v34 = v105;
  v35 = Data.init(contentsOf:options:)();
  if (v34)
  {
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v31;
      v41 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v116[0] = v18;
      *v39 = 138412802;
      swift_errorRetain();
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v42;
      *v41 = v42;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_100009778(0x73746E6169726176, 0xEF293A6D6F726628, v116);
      *(v39 + 22) = 2048;
      *(v39 + 24) = 24;
      _os_log_impl(&_mh_execute_header, v37, v38, "Error: %@, in %s, line: %ld", v39, 0x20u);
      sub_10000BAB8(v41, &qword_100028220, &qword_10001CDA0);
      v31 = v40;

      sub_10000B9B0(v18);
    }

    v43 = v110;
    swift_willThrow();
    (*(v109 + 8))(v108, v43);
    (*(v22 + 8))(v31, v7);
    return v18;
  }

  v44 = v35;
  v45 = v36;
  v18 = 0x73746E6169726176;
  sub_1000130BC(v35, v36);
  sub_100019C60(0x73746E6169726176, 0xEF293A6D6F726628, 27, v33, v44, v45);
  v107 = v44;
  sub_10000BB70(v116, &v114);
  v47 = sub_10000ADE0(&qword_100028528, &qword_10001D1D8);
  if (!swift_dynamicCast())
  {
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    v64 = v22;
    v65 = v108;
    v114._countAndFlagsBits = FilePath.string.getter();
    v114._object = v66;
    v67 = v45;
    v115 = 1;
    _print_unlocked<A, B>(_:_:)();

    v68._countAndFlagsBits = 0x73746E6169726176;
    v68._object = 0xEF293A6D6F726628;
    Logger.errorWithMetadata(_:function:line:)(v113, v68, 31);

    v69 = FilePath.string.getter();
    v71 = v70;
    sub_10001195C();
    swift_allocError();
    *v72 = v69;
    *(v72 + 8) = v71;
    *(v72 + 16) = 1;
    swift_willThrow();
    sub_10000CD7C(v107, v67);
    sub_10000B9B0(v116);
    (*(v109 + 8))(v65, v110);
LABEL_35:
    (*(v64 + 8))(v106, v7);
    return v18;
  }

  v101 = v47;
  countAndFlagsBits = v113._countAndFlagsBits;
  v49 = *(v113._countAndFlagsBits + 16);
  v105 = v45;
  if (!v49 || (v50 = sub_100011A70(0x656449646C697542, 0xEF7365697469746ELL), (v51 & 1) == 0))
  {

LABEL_34:
    v113._countAndFlagsBits = 0;
    v113._object = 0xE000000000000000;
    v73 = v108;
    v114._countAndFlagsBits = FilePath.string.getter();
    v114._object = v74;
    v115 = 2;
    v18 = &type metadata for SecurityResearchDeviceCryptex.Error;
    _print_unlocked<A, B>(_:_:)();

    v75._countAndFlagsBits = 0x73746E6169726176;
    v75._object = 0xEF293A6D6F726628;
    Logger.errorWithMetadata(_:function:line:)(v113, v75, 35);

    v76 = FilePath.string.getter();
    v78 = v77;
    sub_10001195C();
    swift_allocError();
    *v79 = v76;
    *(v79 + 8) = v78;
    *(v79 + 16) = 2;
    swift_willThrow();
    sub_10000CD7C(v107, v105);
    sub_10000B9B0(v116);
    (*(v109 + 8))(v73, v110);
    v64 = v112;
    goto LABEL_35;
  }

  sub_10000BB70(*(countAndFlagsBits + 56) + 32 * v50, &v114);

  sub_10000ADE0(&qword_100028530, &qword_10001D1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_34;
  }

  v100 = v33;
  v52 = *(v113._countAndFlagsBits + 16);
  v99 = v113._countAndFlagsBits;
  if (v52)
  {
    v53 = v113._countAndFlagsBits + 32;
    v18 = &_swiftEmptyArrayStorage;
    while (1)
    {
      v54 = *v53;
      if (*(*v53 + 16))
      {

        v55 = sub_100011A70(1868983881, 0xE400000000000000);
        if (v56)
        {
          sub_10000BB70(*(v54 + 56) + 32 * v55, &v113);

          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_20;
          }

          v57 = v118;
          if (*(v118 + 16))
          {
            v58 = sub_100011A70(0x746E6169726156, 0xE700000000000000);
            if (v59)
            {
              sub_10000BB70(*(v57 + 56) + 32 * v58, &v114);

              if (swift_dynamicCast())
              {
                v98 = v113._countAndFlagsBits;
                object = v113._object;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v18 = sub_10000966C(0, *(v18 + 16) + 1, 1, v18);
                }

                v61 = *(v18 + 16);
                v60 = *(v18 + 24);
                if (v61 >= v60 >> 1)
                {
                  v18 = sub_10000966C((v60 > 1), v61 + 1, 1, v18);
                }

                *(v18 + 16) = v61 + 1;
                v62 = v18 + 16 * v61;
                v63 = object;
                *(v62 + 32) = v98;
                *(v62 + 40) = v63;
                v45 = v105;
              }

              goto LABEL_20;
            }
          }
        }
      }

LABEL_20:
      v53 += 8;
      if (!--v52)
      {
        goto LABEL_38;
      }
    }
  }

  v18 = &_swiftEmptyArrayStorage;
LABEL_38:

  v80 = v104;
  v81 = v110;
  v103(v104, v111, v110);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v111 = v7;
    v85 = v84;
    v103 = swift_slowAlloc();
    v114._countAndFlagsBits = v103;
    *v85 = 136315394;
    LODWORD(v102) = v83;
    v86 = FilePath.string.getter();
    v87 = v80;
    v89 = v88;
    v109 = *(v109 + 8);
    (v109)(v87, v81);
    v90 = sub_100009778(v86, v89, &v114._countAndFlagsBits);

    *(v85 + 4) = v90;
    *(v85 + 12) = 2080;

    v91 = Array.description.getter();
    v93 = v92;

    v94 = sub_100009778(v91, v93, &v114._countAndFlagsBits);

    *(v85 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v82, v102, "Found variants for %s: %s", v85, 0x16u);
    swift_arrayDestroy();

    v20 = v111;

    sub_10000CD7C(v107, v105);

    sub_10000B9B0(v116);
    (v109)(v108, v81);
    v22 = v112;
  }

  else
  {
    sub_10000CD7C(v107, v45);

    v95 = *(v109 + 8);
    v95(v80, v81);
    sub_10000B9B0(v116);
    v95(v108, v81);
  }

  (*(v22 + 8))(v106, v20);
  return v18;
}

uint64_t sub_1000130BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100013110(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE0(&qword_100028538, &qword_10001D1E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100013180(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_10001319C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000131E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100013228(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for DownloadedEncryptedAsset(uint64_t a1)
{
  result = qword_100028600;
  if (!qword_100028600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001329C(uint64_t a1)
{
  result = sub_100013310();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100013310()
{
  result = qword_100028610;
  if (!qword_100028610)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100028610);
  }

  return result;
}

void sub_10001335C(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v55 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v59 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DownloadedEncryptedAsset(0);
  __chkstk_darwin(v11);
  v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000141B8(v1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(a1, v13, v8);
LABEL_3:
    (*(v9 + 56))(a1, 0, 1, v8);
    return;
  }

  v52 = v6;
  v53 = v5;
  v54 = v9;
  v14 = *v13;
  if (qword_1000281F8 != -1)
  {
LABEL_30:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_100001D14(v15, qword_100028558);
  v17 = v14;
  v18 = sub_10001B2D0(0x7465737341746567, 0xEE00292868746150, 72, v16, v17);

  if (v3)
  {
    goto LABEL_28;
  }

  v49 = v16;
  v50 = v8;
  v51 = v17;
  v45 = a1;
  v46 = 0;
  a1 = *(v18 + 16);
  if (a1)
  {
    v8 = 0;
    v3 = v18 + 40;
    v47 = (a1 - 1);
    countAndFlagsBits = &_swiftEmptyArrayStorage;
    v48 = v18 + 40;
    do
    {
      v20 = (v3 + 16 * v8);
      v14 = v8;
      while (1)
      {
        if (v14 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v22 = *(v20 - 1);
        v21 = *v20;
        v8 = (v14 + 1);

        v23._countAndFlagsBits = 1634033966;
        v23._object = 0xE400000000000000;
        if (String.hasSuffix(_:)(v23))
        {
          break;
        }

        v24._countAndFlagsBits = 1717662254;
        v24._object = 0xE400000000000000;
        if (String.hasSuffix(_:)(v24))
        {
          break;
        }

        v20 += 2;
        ++v14;
        if (a1 == v8)
        {
          goto LABEL_21;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58._countAndFlagsBits = countAndFlagsBits;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100009E3C(0, countAndFlagsBits[2] + 1, 1);
        countAndFlagsBits = v58._countAndFlagsBits;
      }

      v27 = countAndFlagsBits[2];
      v26 = countAndFlagsBits[3];
      v28 = v27 + 1;
      if (v27 >= v26 >> 1)
      {
        sub_100009E3C((v26 > 1), v27 + 1, 1);
        v28 = v27 + 1;
        countAndFlagsBits = v58._countAndFlagsBits;
      }

      countAndFlagsBits[2] = v28;
      v29 = &countAndFlagsBits[2 * v27];
      v29[4] = v22;
      v29[5] = v21;
      v3 = v48;
    }

    while (v47 != v14);
  }

  else
  {
    countAndFlagsBits = &_swiftEmptyArrayStorage;
  }

LABEL_21:
  v30 = countAndFlagsBits[2];
  v8 = v50;
  if (v30 != 1)
  {

    v58._countAndFlagsBits = 0;
    v58._object = 0xE000000000000000;
    v56 = v30;
    v57 = 1;
    _print_unlocked<A, B>(_:_:)();
    v42._countAndFlagsBits = 0x7465737341746567;
    v42._object = 0xEE00292868746150;
    Logger.errorWithMetadata(_:function:line:)(v58, v42, 77);

    sub_100018BD4();
    swift_allocError();
    *v43 = v30;
    *(v43 + 8) = 1;
    swift_willThrow();
    v17 = v51;
LABEL_28:

    return;
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Extracted asset path from downloaded MobileAsset", v33, 2u);
  }

  v34 = [v51 getLocalUrl];
  a1 = v45;
  if (v34)
  {
    v35 = v34;

    v36 = v59;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    if (countAndFlagsBits[2])
    {
      v37 = countAndFlagsBits[4];
      v38 = countAndFlagsBits[5];

      v58._countAndFlagsBits = v37;
      v58._object = v38;
      v40 = v52;
      v39 = v53;
      v41 = v55;
      (*(v52 + 104))(v55, enum case for URL.DirectoryHint.inferFromPath(_:), v53);
      sub_10000BBCC();
      URL.appending<A>(path:directoryHint:)();

      (*(v40 + 8))(v41, v39);

      v9 = v54;
      (*(v54 + 8))(v36, v8);
      goto LABEL_3;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100013974()
{
  v1[6] = v0;
  v2 = type metadata accessor for URL();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for Logger();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = type metadata accessor for DownloadedEncryptedAsset(0);
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_100013AC0, 0, 0);
}

void sub_100013AC0()
{
  v44 = v0;
  sub_1000141B8(v0[6], v0[14]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[14];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[8] + 32))(v0[9], v2, v0[7]);
    if (qword_1000281F8 != -1)
    {
      swift_once();
    }

    sub_100001D14(v0[10], qword_100028558);
    sub_100015E48();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Deleted HTTP download successfully", v15, 2u);
    }

    v17 = v0[8];
    v16 = v0[9];
    v18 = v0[7];

    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v3 = *v2;
    if ([*v2 purgeSync])
    {
      if (qword_1000281F8 != -1)
      {
        swift_once();
      }

      v5 = v0[11];
      v4 = v0[12];
      v6 = v0[10];
      v7 = sub_100001D14(v6, qword_100028558);
      (*(v5 + 16))(v4, v7, v6);
      _StringGuts.grow(_:)(44);

      v43._countAndFlagsBits = 0xD00000000000001CLL;
      v43._object = 0x800000010001DA60;
      v8 = [v3 assetId];
      if (v8)
      {
        v9 = v8;
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;
      }

      else
      {
        v10 = 0;
        v12 = 0;
      }

      v0[2] = v10;
      v0[3] = v12;
      sub_10000ADE0(&qword_100028640, &qword_10001D330);
      v29._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v29);

      v30._countAndFlagsBits = 0x7265206874697720;
      v30._object = 0xEC00000020726F72;
      String.append(_:)(v30);
      v31 = MAStringForMAPurgeResult();
      if (v31)
      {
        v32 = v31;
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v37 = v0[11];
      v36 = v0[12];
      v38 = v0[10];
      v0[4] = v33;
      v0[5] = v35;
      v39._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v39);

      v40._countAndFlagsBits = 0x73416574656C6564;
      v40._object = 0xED00002928746573;
      Logger.errorWithMetadata(_:function:line:)(v43, v40, 56);

      (*(v37 + 8))(v36, v38);
      sub_100018BD4();
      swift_allocError();
      *v41 = 0;
      *(v41 + 8) = 2;
      swift_willThrow();

      v42 = v0[1];
      goto LABEL_25;
    }

    if (qword_1000281F8 != -1)
    {
      swift_once();
    }

    sub_100001D14(v0[10], qword_100028558);
    v19 = v3;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v43._countAndFlagsBits = v23;
      *v22 = 136315138;
      v24 = [v19 assetId];

      if (!v24)
      {
        __break(1u);
        return;
      }

      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = sub_100009778(v25, v27, &v43._countAndFlagsBits);

      *(v22 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v20, v21, "Deleted MobileAsset %s successfully", v22, 0xCu);
      sub_10000B9B0(v23);
    }

    else
    {
    }
  }

  v42 = v0[1];
LABEL_25:

  v42();
}

uint64_t sub_1000141B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadedEncryptedAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001421C(uint64_t a1, uint64_t a2)
{
  v2[19] = a1;
  v2[20] = a2;
  v3 = type metadata accessor for ContinuousClock.Instant();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v4 = type metadata accessor for ContinuousClock();
  v2[25] = v4;
  v2[26] = *(v4 - 8);
  v2[27] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[28] = v5;
  v2[29] = *(v5 - 8);
  v2[30] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_1000143FC, 0, 0);
}

uint64_t sub_1000143FC()
{
  (*(v0[29] + 16))(v0[30], v0[20], v0[28]);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = sub_1000144E0;

  return sub_100018C28(1);
}

uint64_t sub_1000144E0()
{

  return _swift_task_switch(sub_1000145DC, 0, 0);
}

uint64_t sub_1000145DC()
{
  if (qword_1000281E0 != -1)
  {
    swift_once();
  }

  v0[35] = qword_100028500;
  v0[36] = 1;
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1000146B8;
  v2 = v0[33];
  v3 = v0[19];

  return sub_1000161D4(v3, 1, v2);
}

uint64_t sub_1000146B8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_100014884;
  }

  else
  {
    v2 = sub_1000147CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000147CC()
{
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100014884()
{
  if (*(v0 + 288) < *(v0 + 280) && (sub_100016BBC(*(v0 + 304)) & 1) != 0)
  {
    v2 = *(v0 + 176);
    v1 = *(v0 + 184);
    v3 = *(v0 + 168);
    exp2(*(v0 + 288));
    v4 = static Duration.seconds(_:)();
    v6 = v5;
    static Clock<>.continuous.getter();
    *(v0 + 112) = v4;
    *(v0 + 120) = v6;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 1;
    v7 = sub_100019560(&qword_100028668, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100019560(&qword_100028670, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v8 = *(v2 + 8);
    *(v0 + 312) = v8;
    *(v0 + 320) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v8(v1, v3);
    v9 = swift_task_alloc();
    *(v0 + 328) = v9;
    *v9 = v0;
    v9[1] = sub_100014B9C;
    v11 = *(v0 + 192);
    v10 = *(v0 + 200);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 88, v10, v7);
  }

  else
  {
    if (qword_1000281D8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100001D14(v12, qword_1000284E8);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v13._countAndFlagsBits = 0;
    v14._object = 0x800000010001DA80;
    v13._object = 0xE000000000000000;
    v14._countAndFlagsBits = 0xD000000000000033;
    Logger.errorWithMetadata(_:function:line:)(v13, v14, 69);

    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }
}

uint64_t sub_100014B9C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    (*(v2 + 312))(*(v2 + 192), *(v2 + 168));
    v3 = sub_100014DA4;
  }

  else
  {
    v5 = *(v2 + 208);
    v4 = *(v2 + 216);
    v6 = *(v2 + 200);
    (*(v2 + 312))(*(v2 + 192), *(v2 + 168));
    (*(v5 + 8))(v4, v6);
    v3 = sub_100014CF4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100014CF4()
{
  v1 = v0[36];

  v2 = v1 + 1;
  v0[36] = v2;
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_1000146B8;
  v4 = v0[33];
  v5 = v0[19];

  return sub_1000161D4(v5, v2, v4);
}

uint64_t sub_100014DA4()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  _StringGuts.grow(_:)(32);
  v1._object = 0x800000010001DAF0;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v1);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100014E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v7 = type metadata accessor for ContinuousClock.Instant();
  v6[31] = v7;
  v6[32] = *(v7 - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v8 = type metadata accessor for ContinuousClock();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  sub_10000ADE0(&qword_100028218, &qword_10001D1D0);
  v6[38] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[39] = v9;
  v6[40] = *(v9 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_10001505C, 0, 0);
}

uint64_t sub_10001505C()
{
  v36 = v0;
  if (v0[29])
  {
    v1 = String._bridgeToObjectiveC()();
    v2 = String._bridgeToObjectiveC()();
    MASetPallasAudienceForType();
  }

  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  sub_10000AF24(v0[30], v5);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_10000BAB8(v0[38], &qword_100028218, &qword_10001D1D0);
  }

  else
  {
    (*(v0[40] + 32))(v0[42], v0[38], v0[39]);
    if (qword_100028200 != -1)
    {
      swift_once();
    }

    v6 = v0[41];
    v7 = v0[42];
    v8 = v0[39];
    v9 = v0[40];
    v10 = type metadata accessor for Logger();
    sub_100001D14(v10, qword_100028570);
    (*(v9 + 16))(v6, v7, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[40];
    v14 = v0[41];
    v16 = v0[39];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = v34;
      *v17 = 136315138;
      v18 = URL.path(percentEncoded:)(1);
      v19 = *(v15 + 8);
      v19(v14, v16);
      v20 = sub_100009778(v18._countAndFlagsBits, v18._object, &v35);

      *(v17 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Pallas URL override set: %s", v17, 0xCu);
      sub_10000B9B0(v34);
      v21 = v19;
    }

    else
    {

      v21 = *(v15 + 8);
      v21(v14, v16);
    }

    v23 = v0[42];
    v24 = v0[39];
    URL._bridgeToObjectiveC()(v22);
    v26 = v25;
    v27 = String._bridgeToObjectiveC()();
    MASetPallasUrlForType();

    v21(v23, v24);
  }

  v28 = [objc_allocWithZone(MADownloadOptions) init];
  v0[43] = v28;
  [v28 setAllowsCellularAccess:1];
  [v28 setTimeoutIntervalForResource:1200];
  [v28 setAllowsExpensiveAccess:1];
  [v28 setDiscretionary:0];
  v0[21] = 0;
  if (qword_1000281E0 != -1)
  {
    swift_once();
  }

  v0[44] = qword_100028500;
  v0[45] = 1;
  v29 = swift_task_alloc();
  v0[46] = v29;
  *v29 = v0;
  v29[1] = sub_10001544C;
  v30 = v0[43];
  v31 = v0[26];
  v32 = v0[27];

  return sub_100016E70(v29, 1, v31, v32, v30, (v0 + 21));
}

uint64_t sub_10001544C()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1000157A8;
  }

  else
  {
    v2 = sub_100015560;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100015560()
{
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 344);
    v3 = *(v0 + 200);
    v4 = v1;

    *v3 = v4;
    type metadata accessor for DownloadedEncryptedAsset(0);
    swift_storeEnumTagMultiPayload();

    v5 = *(v0 + 8);
  }

  else
  {
    if (qword_100028200 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 344);
    v7 = type metadata accessor for Logger();
    sub_100001D14(v7, qword_100028570);
    *(v0 + 152) = 0;
    *(v0 + 160) = 0xE000000000000000;
    *(v0 + 112) = xmmword_10001D2F0;
    *(v0 + 128) = 7;
    _print_unlocked<A, B>(_:_:)();
    v8._object = 0x800000010001DB50;
    v8._countAndFlagsBits = 0xD000000000000051;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 152), v8, 252);

    sub_1000195E4();
    swift_allocError();
    *v9 = xmmword_10001D2F0;
    *(v9 + 16) = 7;
    swift_willThrow();

    v5 = *(v0 + 8);
  }

  return v5();
}

uint64_t sub_1000157A8()
{
  v1 = *(v0 + 360);
  if (v1 >= *(v0 + 352))
  {
    if (qword_1000281D8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100001D14(v13, qword_1000284E8);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v14._countAndFlagsBits = 0;
    v15._object = 0x800000010001DA80;
    v14._object = 0xE000000000000000;
    v15._countAndFlagsBits = 0xD000000000000033;
    Logger.errorWithMetadata(_:function:line:)(v14, v15, 69);

    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v3 = *(v0 + 256);
    v2 = *(v0 + 264);
    v4 = *(v0 + 248);
    exp2(v1);
    v5 = static Duration.seconds(_:)();
    v7 = v6;
    static Clock<>.continuous.getter();
    *(v0 + 136) = v5;
    *(v0 + 144) = v7;
    *(v0 + 96) = 0;
    *(v0 + 88) = 0;
    *(v0 + 104) = 1;
    v8 = sub_100019560(&qword_100028668, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
    dispatch thunk of Clock.now.getter();
    sub_100019560(&qword_100028670, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
    dispatch thunk of InstantProtocol.advanced(by:)();
    v9 = *(v3 + 8);
    *(v0 + 384) = v9;
    *(v0 + 392) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v2, v4);
    v10 = swift_task_alloc();
    *(v0 + 400) = v10;
    *v10 = v0;
    v10[1] = sub_100015AAC;
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);

    return dispatch thunk of Clock.sleep(until:tolerance:)(v12, v0 + 88, v11, v8);
  }
}

uint64_t sub_100015AAC()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    (*(v2 + 384))(*(v2 + 272), *(v2 + 248));
    v3 = sub_100015CB4;
  }

  else
  {
    v5 = *(v2 + 288);
    v4 = *(v2 + 296);
    v6 = *(v2 + 280);
    (*(v2 + 384))(*(v2 + 272), *(v2 + 248));
    (*(v5 + 8))(v4, v6);
    v3 = sub_100015C04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100015C04()
{
  v1 = v0[45];

  v2 = v1 + 1;
  v0[45] = v2;
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_10001544C;
  v4 = v0[43];
  v5 = v0[26];
  v6 = v0[27];

  return sub_100016E70(v3, v2, v5, v6, v4, (v0 + 21));
}

uint64_t sub_100015CB4()
{
  (*(v0[36] + 8))(v0[37], v0[35]);
  _StringGuts.grow(_:)(32);
  v1._object = 0x800000010001DAF0;
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v1);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t sub_100015DC8()
{
  v0 = type metadata accessor for Logger();
  sub_100001E0C(v0, qword_100028558);
  sub_100001D14(v0, qword_100028558);
  return Logger.init(subsystem:category:)();
}

id sub_100015E48()
{
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v7 = 0;
  v4 = [v0 removeItemAtURL:v2 error:&v7];

  if (v4)
  {
    return v7;
  }

  v6 = v7;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void sub_100015F30(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultManager];
  v9 = [a1 getLocalUrl];
  if (!v9)
  {
    __break(1u);
  }

  v10 = v9;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  URL.path(percentEncoded:)(1);
  (*(v5 + 8))(v7, v4);
  v11 = String._bridgeToObjectiveC()();

  v17 = 0;
  v12 = [v8 contentsOfDirectoryAtPath:v11 error:&v17];

  v13 = v17;
  if (v12)
  {
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v13;

    *a2 = v14;
  }

  else
  {
    v16 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100016150()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  [v0 setWaitsForConnectivity:1];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  qword_100028588 = v1;
}

uint64_t sub_1000161D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_10000ADE0(&qword_100028680, &qword_10001D360);
  v3[15] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000162D0, 0, 0);
}

uint64_t sub_1000162D0()
{
  if (qword_100028200 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[19] = sub_100001D14(v1, qword_100028570);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[13];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "HTTP download attempt iteration: %ld", v5, 0xCu);
  }

  if (qword_100028208 != -1)
  {
    swift_once();
  }

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_100016474;
  v8 = v0[14];
  v7 = v0[15];

  return NSURLSession.download(for:delegate:)(v7, v8, 0);
}

uint64_t sub_100016474(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_1000169E4;
  }

  else
  {
    v4 = sub_100016588;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100016588()
{
  v1 = *(v0 + 168);
  v2 = *(*(v0 + 136) + 32);
  v2(*(v0 + 144), *(v0 + 120), *(v0 + 128));
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "HTTP download successful", v6, 2u);
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 128);
    v20 = *(v0 + 136);

    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    *(v0 + 16) = xmmword_10001CD60;
    *(v0 + 32) = 7;
    _print_unlocked<A, B>(_:_:)();
    v21._object = 0x800000010001DB30;
    v21._countAndFlagsBits = 0xD000000000000012;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 64), v21, 126);

    sub_1000195E4();
    swift_allocError();
    *v22 = xmmword_10001CD60;
    *(v22 + 16) = 7;
    swift_willThrow();

    (*(v20 + 8))(v18, v19);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "HTTP download has response", v11, 2u);
  }

  if ([v8 statusCode] - 300 < 0xFFFFFFFFFFFFFF9CLL)
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 136);
    v32 = *(v0 + 128);
    v33 = *(v0 + 144);
    *(v0 + 80) = 0;
    *(v0 + 88) = 0xE000000000000000;
    *(v0 + 40) = [v8 statusCode];
    *(v0 + 48) = 0;
    *(v0 + 56) = 1;
    _print_unlocked<A, B>(_:_:)();
    v14._object = 0x800000010001DB30;
    v14._countAndFlagsBits = 0xD000000000000012;
    Logger.errorWithMetadata(_:function:line:)(*(v0 + 80), v14, 132);

    v15 = [v8 statusCode];
    sub_1000195E4();
    swift_allocError();
    *v16 = v15;
    *(v16 + 8) = 0;
    *(v16 + 16) = 1;
    swift_willThrow();

    (*(v13 + 8))(v33, v32);
LABEL_9:

    v23 = *(v0 + 8);
    goto LABEL_13;
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "HTTP download has correct status code", v26, 2u);
  }

  v27 = *(v0 + 168);
  v28 = *(v0 + 144);
  v29 = *(v0 + 128);
  v30 = *(v0 + 96);

  v2(v30, v28, v29);
  type metadata accessor for DownloadedEncryptedAsset(0);
  swift_storeEnumTagMultiPayload();

  v23 = *(v0 + 8);
LABEL_13:

  return v23();
}

uint64_t sub_1000169E4()
{
  v10 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v3 = 138412802;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_100009778(0xD000000000000012, 0x800000010001DB30, &v9);
    *(v3 + 22) = 2048;
    *(v3 + 24) = 120;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error: %@, in %s, line: %ld", v3, 0x20u);
    sub_10000BAB8(v4, &qword_100028220, &qword_10001CDA0);

    sub_10000B9B0(v5);
  }

  swift_willThrow();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100016BBC(uint64_t a1)
{
  if (qword_100028200 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100001D14(v1, qword_100028570);
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  v2._countAndFlagsBits = 0x2074736575716552;
  v2._object = 0xE900000000000028;
  String.append(_:)(v2);
  type metadata accessor for URL();
  sub_100019560(&qword_100028678, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._object = 0x800000010001DB10;
  v4._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v4);
  swift_getErrorValue();
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v5._countAndFlagsBits = 0;
  v6._object = 0x800000010001DB30;
  v5._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000012;
  Logger.errorWithMetadata(_:function:line:)(v5, v6, 139);

  swift_errorRetain();
  sub_10000ADE0(&qword_100028660, &qword_10001D348);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v9._countAndFlagsBits = 0;
    v10._object = 0x800000010001DB30;
    v9._object = 0xE000000000000000;
    v10._countAndFlagsBits = 0xD000000000000012;
    Logger.errorWithMetadata(_:function:line:)(v9, v10, 141);

LABEL_12:
    v8 = 0;
    return v8 & 1;
  }

  if (!v13)
  {
    sub_1000195A8(0, 0xE000000000000000, 0);
    v8 = 1;
    return v8 & 1;
  }

  if (v13 == 7)
  {
    if (v12 < 3)
    {
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_11;
  }

  if (v13 != 1)
  {
LABEL_11:
    sub_1000195A8(0, 0xE000000000000000, v13);
    goto LABEL_12;
  }

  v7 = vdupq_n_s64(0);
  v8 = vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100024BB8, v7), vceqq_s64(unk_100024BC8, v7))));
  sub_1000195A8(0, 0xE000000000000000, 1u);
  return v8 & 1;
}