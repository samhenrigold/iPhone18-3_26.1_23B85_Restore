uint64_t sub_1000A9794()
{
  sub_1000657D4();
  v1[18] = v2;
  v1[19] = v0;
  v3 = type metadata accessor for ODIBindingsDict();
  v1[20] = v3;
  v1[21] = *(v3 - 8);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v4 = type metadata accessor for AssessmentConfig.Sources();
  v1[27] = v4;
  v1[28] = *(v4 - 8);
  v1[29] = swift_task_alloc();
  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000A98D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = *(v20 + 144);
  if (*(v21 + 16))
  {
    v22 = *(v21 + 32);
    *(v20 + 620) = v22;
    v23 = 1 << v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(v21 + 64);
    *(v20 + 592) = enum case for AssessmentConfig.Sources.accountsiCloud(_:);
    *(v20 + 596) = enum case for AssessmentConfig.Sources.accountsiTunes(_:);
    *(v20 + 600) = enum case for AssessmentConfig.Sources.CoreTelephony(_:);
    *(v20 + 604) = enum case for AssessmentConfig.Sources.MeCard(_:);
    v26 = ACAccountTypeIdentifierAppleAccount;
    *(v20 + 240) = ACAccountTypeIdentifieriTunesStore;
    *(v20 + 248) = v26;

    v35 = 0;
    v36 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      *(v20 + 256) = v36;
      if (!v25)
      {
        break;
      }

      v37 = *(v20 + 144);
LABEL_12:
      *(v20 + 264) = v25;
      *(v20 + 272) = v35;
      v39 = __clz(__rbit64(v25)) | (v35 << 6);
      v40 = (*(v37 + 48) + 16 * v39);
      v41 = *v40;
      *(v20 + 280) = *v40;
      *(v20 + 288) = v40[1];
      v42 = *(*(v37 + 56) + 8 * v39);
      *(v20 + 296) = v42;
      swift_bridgeObjectRetain_n();

      v43 = Logger.logObject.getter();
      v44 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = sub_100053F78();
        sub_100053F60();
        *v45 = 136315138;

        v46 = sub_100052F7C(v41);

        *(v45 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v43, v44, "handleFetchBindings guessing for key %s", v45, 0xCu);
        v47 = sub_100098088();
        sub_1000488AC(v47);
        sub_1000AF7D8();
      }

      *(v20 + 120) = 0;
      *(v20 + 128) = 0xE000000000000000;
      v48 = *(v42 + 16);
      *(v20 + 304) = v48;
      if (v48)
      {
        v49 = 0;
        v162 = 0;
        v158 = 0;
        v50 = 0;
        v51 = 0xE000000000000000;
        v52 = _swiftEmptyArrayStorage;
        v53 = 0xE000000000000000;
        v163 = 0xE000000000000000;
        v164 = 0xE000000000000000;
        v54 = 0xE000000000000000;
        v160 = 0xE000000000000000;
        v161 = 0xE000000000000000;
        v159 = 0xE000000000000000;
        while (1)
        {
          *(v20 + 320) = v49;
          *(v20 + 328) = v52;
          sub_1000AF6D4();
          if (v56)
          {
            goto LABEL_93;
          }

          v57 = sub_1000AF664(v55);
          if (v58)
          {
            sub_1000AFAC8(v57);
            sub_1000AF814();
            v59 = 0;
            v60 = v158;
            while (1)
            {
              *(v20 + 424) = v160;
              *(v20 + 432) = v159;
              *(v20 + 408) = v164;
              *(v20 + 416) = v161;
              *(v20 + 392) = v54;
              *(v20 + 400) = v50;
              *(v20 + 376) = v60;
              *(v20 + 384) = v163;
              *(v20 + 360) = v162;
              *(v20 + 368) = v53;
              sub_1000AF6AC(v59);
              if (v56)
              {
                goto LABEL_92;
              }

              v63 = *(v20 + 592);
              v65 = *(v20 + 224);
              v64 = *(v20 + 232);
              v66 = *(v20 + 216);
              (*(v65 + 16))(v64, v62 + ((*(v20 + 608) + 32) & ~*(v20 + 608)) + *(v65 + 72) * v61, v66);
              if ((*(v65 + 88))(v64, v66) == v63)
              {
                sub_1000AFD94();
                sub_1000AFD7C();
                v124 = sub_1000AF6FC((v20 + 56));
                sub_1000AF944(v124, v125);
                v126 = swift_task_alloc();
                v127 = sub_1000AFC50(v126);
                *v127 = v128;
                sub_1000AF504();
                goto LABEL_74;
              }

              sub_1000AFCB4();
              if (v67)
              {
                break;
              }

              sub_1000AFCA8();
              if (v67)
              {
                v141 = type metadata accessor for ODIDeviceInfo();
                sub_1000AFC84(v141);
                v142 = swift_task_alloc();
                v143 = sub_1000AFC44(v142);
                *v143 = v144;
                sub_1000AF490(v143);
                sub_1000AFA24();

                return static ODIDeviceInfo.shared.getter(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
              }

              sub_1000AFC9C();
              if (v67)
              {
                v68 = sub_1000AFD1C();
                if (v69)
                {
                  v70 = v68;
                  v66 = v69;
                  *(v20 + 120) = v68;
                  *(v20 + 128) = v69;

                  v71 = Logger.logObject.getter();
                  v72 = static os_log_type_t.debug.getter();
                  if (sub_100077680(v72))
                  {
                    v73 = sub_100053F78();
                    v165 = sub_100053F60();
                    *v73 = 136315138;

                    v74 = sub_100052F7C(v70);

                    *(v73 + 4) = v74;
                    _os_log_impl(&_mh_execute_header, v71, v72, "fetchBindings found value from Me Card = %s", v73, 0xCu);
                    sub_100044850(v165);
                    sub_1000488AC(v165);
                    sub_1000488AC(v73);
                  }

                  v162 = v70;
                  v163 = v66;
                  v53 = v66;
                  v60 = v70;
                  v54 = v66;
                  v50 = v70;
                  v164 = v66;
                  v160 = v66;
                  v161 = v66;
                  v159 = v66;
                }
              }

              else
              {
                v75 = Logger.logObject.getter();
                v76 = static os_log_type_t.debug.getter();
                if (sub_1000773E0(v76))
                {
                  v78 = sub_1000541D8();
                  *v78 = 0;
                  _os_log_impl(&_mh_execute_header, v75, v66, "fetchBindings no value found", v78, 2u);
                  sub_1000AF748();
                }

                v79 = *(v20 + 224);
                v66 = *(v20 + 232);
                v80 = *(v20 + 216);

                (*(v79 + 8))(v66, v80);
              }

              v81 = HIBYTE(v54) & 0xF;
              if ((v54 & 0x2000000000000000) == 0)
              {
                v81 = v50 & 0xFFFFFFFFFFFFLL;
              }

              if (v81)
              {
                sub_1000AFDAC();
                v82 = Logger.logObject.getter();
                v83 = static os_log_type_t.debug.getter();
                if (sub_1000773E0(v83))
                {
                  v84 = sub_1000541D8();
                  *v84 = 0;
                  _os_log_impl(&_mh_execute_header, v82, v66, "fetchBindings value found, skipping to next key", v84, 2u);
                  sub_1000AF748();
                }

                goto LABEL_42;
              }

              sub_1000AF980();
              if (v67)
              {

LABEL_42:
                v51 = v54;
                goto LABEL_43;
              }
            }

            sub_1000AFD64();
            sub_1000AFD4C();
            v131 = sub_1000AF6FC((v20 + 16));
            sub_1000AF934(v131, v132);
            v133 = swift_task_alloc();
            v134 = sub_1000AFC38(v133);
            *v134 = v135;
            sub_1000AF4E8();
LABEL_74:
            *(v129 + 8) = v130;
            sub_1000AF64C();
            sub_1000AFA24();

            return dispatch thunk of ODIAccountManagerProtocol.getAccount(with:)(v136, v137, v138, v139);
          }

          v60 = v158;
LABEL_43:
          v158 = v60;

          v86 = *(sub_1000A960C(v85, (v20 + 120)) + 16);

          if (v86)
          {
            v87 = Logger.logObject.getter();
            v88 = static os_log_type_t.debug.getter();
            if (sub_100077680(v88))
            {
              sub_100053F78();
              v166 = sub_1000AF7BC();
              *v51 = 136315138;

              v89 = sub_100052F7C(v162);

              *(v51 + 4) = v89;
              _os_log_impl(&_mh_execute_header, v87, v88, "fetchBindings similar value already present, skipping %s", v51, 0xCu);
              sub_100044850(v166);
              sub_1000488AC(v166);
              sub_1000AF748();

              v52 = *(v20 + 328);
              v51 = v53;
            }

            else
            {

              v52 = *(v20 + 328);
            }
          }

          else
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v52 = *(v20 + 328);
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100062EB0();
              v52 = v94;
            }

            v92 = v52[2];
            v91 = v52[3];
            if (v92 >= v91 >> 1)
            {
              sub_1000AF8B8(v91);
              sub_100062EB0();
              v52 = v95;
            }

            v52[2] = v92 + 1;
            v93 = &v52[2 * v92];
            v53 = v163;
            v93[4] = v158;
            v93[5] = v163;
            v51 = v163;
            v162 = v158;
          }

          sub_1000AF6C0();
          if (v67)
          {

            goto LABEL_56;
          }
        }
      }

      v52 = _swiftEmptyArrayStorage;
LABEL_56:
      v96 = *(v20 + 280);
      v97 = *(v20 + 288);
      v98 = *(v20 + 256);
      v99 = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 136) = v98;
      v27 = sub_1000BFB60(v96, v97);
      v100 = *(v98 + 16);
      v101 = (v28 & 1) == 0;
      v102 = v100 + v101;
      if (__OFADD__(v100, v101))
      {
        goto LABEL_94;
      }

      v103 = v27;
      v104 = v28;
      sub_1000443DC(&qword_1006CBEB8);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v99, v102))
      {
        v105 = sub_1000AFD34();
        if ((v104 & 1) != (v28 & 1))
        {
          sub_1000AFA24();

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v103 = v105;
      }

      v36 = *(v20 + 136);
      v27 = *(v20 + 288);
      if (v104)
      {
        *(v36[7] + 8 * v103) = v52;
      }

      else
      {
        v106 = *(v20 + 280);
        v36[(v103 >> 6) + 8] |= 1 << v103;
        v107 = (v36[6] + 16 * v103);
        *v107 = v106;
        v107[1] = v27;
        *(v36[7] + 8 * v103) = v52;
        v108 = v36[2];
        v109 = __OFADD__(v108, 1);
        v110 = v108 + 1;
        if (v109)
        {
          goto LABEL_95;
        }

        v36[2] = v110;
      }

      v35 = *(v20 + 272);
      v25 = (*(v20 + 264) - 1) & *(v20 + 264);
    }

    while (1)
    {
      v38 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v38 >= (((1 << *(v20 + 620)) + 63) >> 6))
      {

        v116 = sub_1000AE054(v36, v114, v115)[2];
        if (v116)
        {
          v117 = *(v20 + 168);
          sub_1000BDF44(0, v116, 0);
          v118 = 32;
          do
          {

            sub_1000A3784(v119);
            ODIBindingsDict.init(contents:)();

            v121 = _swiftEmptyArrayStorage[2];
            v120 = _swiftEmptyArrayStorage[3];
            if (v121 >= v120 >> 1)
            {
              sub_1000BDF44(v120 > 1, v121 + 1, 1);
            }

            v122 = *(v20 + 200);
            v123 = *(v20 + 160);
            _swiftEmptyArrayStorage[2] = v121 + 1;
            (*(v117 + 32))(_swiftEmptyArrayStorage + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v121, v122, v123);
            v118 += 8;
            --v116;
          }

          while (v116);
        }

        sub_1000AF870();
        if (!v145)
        {

          sub_1000AF7F4();

          sub_10006EBEC();
          sub_1000AFA24();

          __asm { BRAA            X2, X16 }
        }

        v146 = sub_1000AFAAC();
        sub_1000AF4B4(v146);
        *(v20 + 560) = _swiftEmptyArrayStorage;
        v147 = sub_1000AF560();
        v148(v147);
        sub_1000AFA80();
        v149 = swift_task_alloc();
        v150 = sub_1000AFB7C(v149);
        *v150 = v151;
        sub_1000AF470(v150);
        goto LABEL_82;
      }

      v37 = *(v20 + 144);
      v25 = *(v37 + 8 * v38 + 64);
      ++v35;
      if (v25)
      {
        v35 = v38;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    return static ODIDeviceInfo.shared.getter(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v111 = *(v20 + 152);
    ODIBindingsDict.init(dictionaryLiteral:)();
    v112 = type metadata accessor for BindingsGuesser(0);
    sub_100044728((v111 + *(v112 + 24)), *(v111 + *(v112 + 24) + 24));
    v113 = swift_task_alloc();
    *(v20 + 584) = v113;
    *v113 = v20;
    v113[1] = sub_1000AC4B8;
LABEL_82:
    sub_1000AFA24();

    return BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(v152);
  }
}

uint64_t sub_1000AA428()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 456) = v5;

  v7 = sub_100065864();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000AAD8C()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_10007CAE0();
  *v2 = v1;
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;
  *(v6 + 480) = v5;

  v7 = sub_100065864();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000AB6F0()
{
  sub_1000657D4();
  v2 = v1;
  sub_1000657F8();
  sub_10007CAE0();
  *v4 = v3;
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v7 + 504) = v2;

  sub_1000AEE44();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000AB808, v9, v8);
}

uint64_t sub_1000AB808()
{
  sub_1000657D4();
  *(v0 + 512) = dispatch thunk of ODIDeviceInfo.getCTPhoneNumber(useDefaultVoiceNumber:)();

  v1 = sub_100065864();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000AC12C()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000AC210()
{
  v1 = *(v0 + 544);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 160);
  sub_1000AE490(*(v0 + 208), v2);
  v5 = sub_1000AFC90();
  v32 = v6;
  v6(v5);
  v1(v3, v2, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 560);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100062E68(0, *(v8 + 16) + 1, 1, *(v0 + 560));
    v8 = v29;
  }

  v10 = *(v8 + 16);
  v9 = *(v8 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_100062E68(v9 > 1, v10 + 1, 1, v8);
    v8 = v30;
  }

  v11 = *(v0 + 536);
  v31 = *(v0 + 528);
  v12 = *(v0 + 184);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  v15 = *(v0 + 552) + 1;
  v16 = (*(v0 + 616) + 32) & ~*(v0 + 616);
  v32(*(v0 + 192), v13);
  *(v8 + 16) = v10 + 1;
  (*(v14 + 32))(v8 + v16 + v11 * v10, v12, v13);
  if (v15 == v31)
  {

    sub_10006EBEC();

    return v17(v8);
  }

  else
  {
    v19 = *(v0 + 552) + 1;
    *(v0 + 560) = v8;
    *(v0 + 552) = v19;
    v20 = *(v0 + 544);
    v21 = *(v0 + 208);
    v22 = *(v0 + 160);
    v23 = (*(v0 + 152) + *(v0 + 612));
    v24 = *(v0 + 520) + ((*(v0 + 616) + 32) & ~*(v0 + 616)) + *(v0 + 536) * v19;
    *(v0 + 568) = (*(v0 + 168) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v21, v24, v22);
    sub_100044728(v23, v23[3]);
    v25 = swift_task_alloc();
    v26 = sub_1000AFB7C(v25);
    *v26 = v27;
    sub_1000AF470(v26);
    v28 = sub_1000AF6E8();

    return BindingsHelpers.getStaticBindings(bindings:excludeAppleID:)(v28);
  }
}

uint64_t sub_1000AC4B8()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000AC59C()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  sub_1000443DC(&qword_1006CA6B0);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1005CB870;
  (*(v2 + 32))(v5 + v4, v1, v3);

  sub_10006EBEC();

  return v6(v5);
}

id sub_1000AC69C(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = a3;
  v5 = type metadata accessor for BindingsKeys();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v58 = a2;
  v54 = a2;
  v11 = *(v6 + 104);
  v11(v10, enum case for BindingsKeys.firstName(_:), v5);
  v12 = BindingsKeys.rawValue.getter();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v10, v5);
  v55 = v12;
  v56 = v14;
  sub_10005915C();
  v16 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v16 || (v57 = a1, v58 = v54, v11(v10, enum case for BindingsKeys.documentFirstName(_:), v5), v17 = BindingsKeys.rawValue.getter(), v19 = v18, v15(v10, v5), v55 = v17, v56 = v19, v20 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , !v20))
  {
    v42 = &selRef_aa_firstName;
LABEL_12:
    v43 = v53;
    return sub_100058D4C(v43, v42);
  }

  v57 = a1;
  v58 = v54;
  v11(v10, enum case for BindingsKeys.lastName(_:), v5);
  v21 = BindingsKeys.rawValue.getter();
  v23 = v22;
  v15(v10, v5);
  v55 = v21;
  v56 = v23;
  v24 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v24 || (v57 = a1, v58 = v54, v11(v10, enum case for BindingsKeys.documentLastName(_:), v5), v25 = BindingsKeys.rawValue.getter(), v27 = v26, v15(v10, v5), v55 = v25, v56 = v27, v28 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , !v28))
  {
    v42 = &selRef_aa_lastName;
    goto LABEL_12;
  }

  v57 = a1;
  v58 = v54;
  v11(v10, enum case for BindingsKeys.email(_:), v5);
  v29 = BindingsKeys.rawValue.getter();
  v31 = v30;
  v15(v10, v5);
  v55 = v29;
  v56 = v31;
  v32 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v32 || (v57 = a1, v58 = v54, v11(v10, enum case for BindingsKeys.documentEmail(_:), v5), v33 = BindingsKeys.rawValue.getter(), v35 = v34, v15(v10, v5), v55 = v33, v56 = v35, v36 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , !v36))
  {
    v44 = v53;
    result = [v53 accountType];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v45 = sub_1000AF1B0(result);
    v47 = v46;
    v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v47)
    {
      if (v45 == v48 && v47 == v49)
      {

LABEL_26:
        v42 = &selRef_appleID;
        goto LABEL_27;
      }

      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v51)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    v42 = &selRef_aa_primaryEmail;
LABEL_27:
    v43 = v44;
    return sub_100058D4C(v43, v42);
  }

  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v57 = v40;
    *v39 = 136446210;
    *(v39 + 4) = sub_100052F7C(a1);
    _os_log_impl(&_mh_execute_header, v37, v38, "Unhandled bindingsKey %{public}s for Accounts", v39, 0xCu);
    sub_100044850(v40);
  }

  return 0;
}

uint64_t sub_1000ACC28(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for BindingsKeys();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DIPContactsManager();
  swift_allocObject();
  v12 = sub_1000BC07C();
  v161[3] = v11;
  v161[4] = &off_100694BB8;
  v161[0] = v12;
  sub_100044728(v161, v11);
  v13 = sub_1000BBC94();
  if (!v13)
  {
    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v109, v110, "No MeContact available", v111, 2u);
    }

    goto LABEL_31;
  }

  v154 = v2;
  v155 = v13;
  v159 = a1;
  v160 = a2;
  v156 = *(v6 + 104);
  v156(v10, enum case for BindingsKeys.firstName(_:), v5);
  v14 = BindingsKeys.rawValue.getter();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v10, v5);
  v157 = v14;
  v158 = v16;
  sub_10005915C();
  v18 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v18 || (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentFirstName(_:), v5), v19 = BindingsKeys.rawValue.getter(), v21 = v20, v17(v10, v5), v157 = v19, v158 = v21, v22 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , !v22))
  {
    v107 = v155;
    v108 = [v155 givenName];
LABEL_33:
    v113 = v108;
    v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    goto LABEL_34;
  }

  v159 = a1;
  v160 = a2;
  v156(v10, enum case for BindingsKeys.lastName(_:), v5);
  v23 = BindingsKeys.rawValue.getter();
  v25 = v24;
  v17(v10, v5);
  v157 = v23;
  v158 = v25;
  v26 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (!v26 || (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentLastName(_:), v5), v27 = BindingsKeys.rawValue.getter(), v29 = v28, v17(v10, v5), v157 = v27, v158 = v29, v30 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , !v30))
  {
    v107 = v155;
    v108 = [v155 familyName];
    goto LABEL_33;
  }

  v159 = a1;
  v160 = a2;
  v156(v10, enum case for BindingsKeys.email(_:), v5);
  v31 = BindingsKeys.rawValue.getter();
  v33 = v32;
  v17(v10, v5);
  v157 = v31;
  v158 = v33;
  v34 = StringProtocol.caseInsensitiveCompare<A>(_:)();

  if (v34)
  {
    v159 = a1;
    v160 = a2;
    v156(v10, enum case for BindingsKeys.documentEmail(_:), v5);
    v35 = BindingsKeys.rawValue.getter();
    v37 = v36;
    v17(v10, v5);
    v157 = v35;
    v158 = v37;
    v38 = StringProtocol.caseInsensitiveCompare<A>(_:)();

    if (v38)
    {
      v159 = a1;
      v160 = a2;
      v156(v10, enum case for BindingsKeys.phoneNumber(_:), v5);
      v39 = BindingsKeys.rawValue.getter();
      v41 = v40;
      v17(v10, v5);
      v157 = v39;
      v158 = v41;
      v42 = StringProtocol.caseInsensitiveCompare<A>(_:)();

      if (v42 && (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentPhoneNumber(_:), v5), v43 = BindingsKeys.rawValue.getter(), v45 = v44, v17(v10, v5), v157 = v43, v158 = v45, v46 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v46))
      {
        v159 = a1;
        v160 = a2;
        v156(v10, enum case for BindingsKeys.street(_:), v5);
        v47 = BindingsKeys.rawValue.getter();
        v49 = v48;
        v17(v10, v5);
        v157 = v47;
        v158 = v49;
        v50 = StringProtocol.caseInsensitiveCompare<A>(_:)();

        if (v50 && (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentStreet(_:), v5), v51 = BindingsKeys.rawValue.getter(), v53 = v52, v17(v10, v5), v157 = v51, v158 = v53, v54 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v54) && (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.street1(_:), v5), v55 = BindingsKeys.rawValue.getter(), v57 = v56, v17(v10, v5), v157 = v55, v158 = v57, v58 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v58) && (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentStreet1(_:), v5), v59 = BindingsKeys.rawValue.getter(), v61 = v60, v17(v10, v5), v157 = v59, v158 = v61, v62 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v62))
        {
          v159 = a1;
          v160 = a2;
          v156(v10, enum case for BindingsKeys.city(_:), v5);
          v63 = BindingsKeys.rawValue.getter();
          v65 = v64;
          v17(v10, v5);
          v157 = v63;
          v158 = v65;
          v66 = StringProtocol.caseInsensitiveCompare<A>(_:)();

          if (v66 && (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentCity(_:), v5), v67 = BindingsKeys.rawValue.getter(), v69 = v68, v17(v10, v5), v157 = v67, v158 = v69, v70 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v70))
          {
            v159 = a1;
            v160 = a2;
            v156(v10, enum case for BindingsKeys.state(_:), v5);
            v71 = BindingsKeys.rawValue.getter();
            v73 = v72;
            v17(v10, v5);
            v157 = v71;
            v158 = v73;
            v74 = StringProtocol.caseInsensitiveCompare<A>(_:)();

            if (v74 && (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentState(_:), v5), v75 = BindingsKeys.rawValue.getter(), v77 = v76, v17(v10, v5), v157 = v75, v158 = v77, v78 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v78))
            {
              v159 = a1;
              v160 = a2;
              v156(v10, enum case for BindingsKeys.postalCode(_:), v5);
              v79 = BindingsKeys.rawValue.getter();
              v81 = v80;
              v17(v10, v5);
              v157 = v79;
              v158 = v81;
              v82 = StringProtocol.caseInsensitiveCompare<A>(_:)();

              if (v82)
              {
                v159 = a1;
                v160 = a2;
                v156(v10, enum case for BindingsKeys.documentPostalCode(_:), v5);
                v83 = BindingsKeys.rawValue.getter();
                v85 = v84;
                v17(v10, v5);
                v157 = v83;
                v158 = v85;
                v86 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                if (v86)
                {
                  v159 = a1;
                  v160 = a2;
                  v156(v10, enum case for BindingsKeys.country(_:), v5);
                  v87 = BindingsKeys.rawValue.getter();
                  v89 = v88;
                  v17(v10, v5);
                  v157 = v87;
                  v158 = v89;
                  v90 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                  if (v90 && (v159 = a1, v160 = a2, v156(v10, enum case for BindingsKeys.documentCountry(_:), v5), v91 = BindingsKeys.rawValue.getter(), v93 = v92, v17(v10, v5), v157 = v91, v158 = v93, v94 = StringProtocol.caseInsensitiveCompare<A>(_:)(), , v94))
                  {
                    v159 = a1;
                    v160 = a2;
                    v156(v10, enum case for BindingsKeys.isoCountryCode(_:), v5);
                    v95 = BindingsKeys.rawValue.getter();
                    v97 = v96;
                    v17(v10, v5);
                    v157 = v95;
                    v158 = v97;
                    v98 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                    if (v98)
                    {
                      v159 = a1;
                      v160 = a2;
                      v156(v10, enum case for BindingsKeys.documentIsoCountryCode(_:), v5);
                      v99 = BindingsKeys.rawValue.getter();
                      v101 = v100;
                      v17(v10, v5);
                      v157 = v99;
                      v158 = v101;
                      v102 = StringProtocol.caseInsensitiveCompare<A>(_:)();

                      if (v102)
                      {

                        v103 = Logger.logObject.getter();
                        v104 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v103, v104))
                        {
                          v105 = swift_slowAlloc();
                          v106 = swift_slowAlloc();
                          v159 = v106;
                          *v105 = 136446210;
                          *(v105 + 4) = sub_100052F7C(a1);
                          _os_log_impl(&_mh_execute_header, v103, v104, "Unhandled bindingsKey %{public}s for Me Card", v105, 0xCu);
                          sub_100044850(v106);
                        }

                        goto LABEL_31;
                      }
                    }

                    v149 = [v155 postalAddresses];
                    sub_1000443DC(&qword_1006CBED0);
                    v150 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (sub_1000591F0(v150))
                    {
                      sub_100059210();
                      if ((v150 & 0xC000000000000001) != 0)
                      {
                        v151 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v151 = *(v150 + 32);
                      }

                      v152 = v151;

                      v147 = [v152 value];

                      v148 = [v147 ISOCountryCode];
LABEL_72:
                      v153 = v148;

                      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                      goto LABEL_34;
                    }
                  }

                  else
                  {
                    v143 = [v155 postalAddresses];
                    sub_1000443DC(&qword_1006CBED0);
                    v144 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

                    if (sub_1000591F0(v144))
                    {
                      sub_100059210();
                      if ((v144 & 0xC000000000000001) != 0)
                      {
                        v145 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v145 = *(v144 + 32);
                      }

                      v146 = v145;

                      v147 = [v146 value];

                      v148 = [v147 country];
                      goto LABEL_72;
                    }
                  }

                  goto LABEL_63;
                }
              }

              v115 = v155;
              v139 = [v155 postalAddresses];
              sub_1000443DC(&qword_1006CBED0);
              v140 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (sub_1000591F0(v140))
              {
                sub_100059210();
                if ((v140 & 0xC000000000000001) != 0)
                {
                  v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v141 = *(v140 + 32);
                }

                v142 = v141;

                v125 = [v142 value];

                v126 = [v125 postalCode];
LABEL_48:
                v120 = v126;

LABEL_49:
                v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();

                goto LABEL_34;
              }
            }

            else
            {
              v115 = v155;
              v135 = [v155 postalAddresses];
              sub_1000443DC(&qword_1006CBED0);
              v136 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (sub_1000591F0(v136))
              {
                sub_100059210();
                if ((v136 & 0xC000000000000001) != 0)
                {
                  v137 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                }

                else
                {
                  v137 = *(v136 + 32);
                }

                v138 = v137;

                v125 = [v138 value];

                v126 = [v125 state];
                goto LABEL_48;
              }
            }
          }

          else
          {
            v115 = v155;
            v131 = [v155 postalAddresses];
            sub_1000443DC(&qword_1006CBED0);
            v132 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            if (sub_1000591F0(v132))
            {
              sub_100059210();
              if ((v132 & 0xC000000000000001) != 0)
              {
                v133 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v133 = *(v132 + 32);
              }

              v134 = v133;

              v125 = [v134 value];

              v126 = [v125 city];
              goto LABEL_48;
            }
          }
        }

        else
        {
          v115 = v155;
          v127 = [v155 postalAddresses];
          sub_1000443DC(&qword_1006CBED0);
          v128 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (sub_1000591F0(v128))
          {
            sub_100059210();
            if ((v128 & 0xC000000000000001) != 0)
            {
              v129 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v129 = *(v128 + 32);
            }

            v130 = v129;

            v125 = [v130 value];

            v126 = [v125 street];
            goto LABEL_48;
          }
        }
      }

      else
      {
        v115 = v155;
        v121 = [v155 phoneNumbers];
        sub_1000443DC(&qword_1006CBED0);
        v122 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (sub_1000591F0(v122))
        {
          sub_100059210();
          if ((v122 & 0xC000000000000001) != 0)
          {
            v123 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v123 = *(v122 + 32);
          }

          v124 = v123;

          v125 = [v124 value];

          v126 = [v125 stringValue];
          goto LABEL_48;
        }
      }

LABEL_62:

LABEL_63:

      goto LABEL_31;
    }
  }

  v115 = v155;
  v116 = [v155 emailAddresses];
  sub_1000443DC(&qword_1006CBED0);
  v117 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!sub_1000591F0(v117))
  {
    goto LABEL_62;
  }

  sub_100059210();
  if ((v117 & 0xC000000000000001) != 0)
  {
    v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v118 = *(v117 + 32);
  }

  v119 = v118;

  v120 = [v119 value];

  if (v120)
  {
    goto LABEL_49;
  }

LABEL_31:
  v112 = 0;
LABEL_34:
  sub_100044850(v161);
  return v112;
}

void *sub_1000AE054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000AEEE8(a1, a2, a3);
  sub_100062D4C(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v4;
  v7 = v4[2];
  v6 = v4[3];
  v8 = (v7 + 1);
  if (v7 >= v6 >> 1)
  {
LABEL_43:
    v48 = sub_1000AF8B8(v6);
    sub_100062D4C(v48, v49, v50, v5);
    v5 = v51;
  }

  v9 = 0;
  v5[2] = v8;
  v5[v7 + 4] = _swiftEmptyDictionarySingleton;
  v7 = (v3 + 8);
  v10 = 1 << *(v3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v3[8];
  v8 = ((v10 + 63) >> 6);
  v53 = v3 + 8;
  v54 = v3;
  v52 = v8;
  if (!v12)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v13 = __clz(__rbit64(v12)) | (v9 << 6);
    v14 = *(v3[7] + 8 * v13);
    v59 = *(v14 + 16);
    if (v59)
    {
      v55 = v12;
      v56 = v9;
      v15 = (v3[6] + 16 * v13);
      v16 = v15[1];
      v63 = v5[2];
      v64 = *v15;
      v58 = v14 + 32;
      v61 = v5 + 4;

      v17 = 0;
      v18 = _swiftEmptyArrayStorage;
      v57 = v14;
      while (1)
      {
        v6 = *(v14 + 16);
        if (v17 >= v6)
        {
          break;
        }

        if (v63)
        {
          v60 = v17;
          v19 = (v58 + 16 * v17);
          v20 = v19[1];
          v62 = *v19;

          v7 = 0;
          while (1)
          {
            v6 = v5[2];
            if (v7 >= v6)
            {
              __break(1u);
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
              goto LABEL_41;
            }

            v21 = v5;
            v8 = v61[v7];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v65 = v8;
            v23 = sub_1000BFB60(v64, v16);
            v6 = v8[2];
            v25 = (v24 & 1) == 0;
            v5 = (v6 + v25);
            if (__OFADD__(v6, v25))
            {
              goto LABEL_39;
            }

            v26 = v23;
            v3 = v24;
            sub_1000443DC(&qword_1006CBEC8);
            v8 = &v65;
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v5))
            {
              v8 = v65;
              v27 = sub_1000BFB60(v64, v16);
              if ((v3 & 1) != (v28 & 1))
              {
                result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return result;
              }

              v26 = v27;
            }

            v5 = v65;
            if (v3)
            {
              v29 = (v65[7] + 16 * v26);
              *v29 = v62;
              v29[1] = v20;
            }

            else
            {
              v65[(v26 >> 6) + 8] |= 1 << v26;
              v30 = (v5[6] + 16 * v26);
              *v30 = v64;
              v30[1] = v16;
              v31 = (v5[7] + 16 * v26);
              *v31 = v62;
              v31[1] = v20;
              v32 = v5[2];
              v33 = __OFADD__(v32, 1);
              v6 = v32 + 1;
              if (v33)
              {
                goto LABEL_40;
              }

              v5[2] = v6;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v35 = sub_1000AF634();
              sub_100062D4C(v35, v36, v37, v38);
              v18 = v39;
            }

            v3 = v18[2];
            v34 = v18[3];
            v8 = (v3 + 1);
            if (v3 >= v34 >> 1)
            {
              v40 = sub_1000AF8B8(v34);
              sub_100062D4C(v40, v41, v42, v18);
              v18 = v43;
            }

            ++v7;
            v18[2] = v8;
            v18[v3 + 4] = v5;
            v5 = v21;
            if (v63 == v7)
            {

              v14 = v57;
              v17 = v60;
              break;
            }
          }
        }

        if (++v17 == v59)
        {

          v7 = v53;
          v3 = v54;
          v12 = v55;
          v9 = v56;
          v8 = v52;
          goto LABEL_32;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_32:
    v12 &= v12 - 1;

    v5 = v18;
  }

  while (v12);
  while (1)
  {
LABEL_5:
    v6 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_42;
    }

    if (v6 >= v8)
    {
      break;
    }

    v12 = *(v7 + 8 * v6);
    ++v9;
    if (v12)
    {
      v9 = v6;
      goto LABEL_9;
    }
  }

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();
  if (sub_1000773E0(v45))
  {
    v46 = sub_100053F78();
    *v46 = 134349056;
    *(v46 + 4) = v5[2];

    _os_log_impl(&_mh_execute_header, v44, v3, "Created %{public}ld permutations", v46, 0xCu);
    sub_1000488AC(v46);
  }

  else
  {
  }

  return v5;
}

uint64_t sub_1000AE490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a1;
  v95 = a2;
  v3 = type metadata accessor for BindingsKeys();
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_100047544();
  v99 = v9;
  sub_1000474F8();
  __chkstk_darwin(v10, v11, v12);
  v98 = &v88 - v13;
  sub_1000474F8();
  __chkstk_darwin(v14, v15, v16);
  v97 = &v88 - v17;
  sub_1000474F8();
  __chkstk_darwin(v18, v19, v20);
  v104 = &v88 - v21;
  sub_1000474F8();
  __chkstk_darwin(v22, v23, v24);
  v26 = &v88 - v25;
  type metadata accessor for ODIBindingsDict();
  sub_10004EAE0();
  v93 = v28;
  v94 = v27;
  __chkstk_darwin(v27, v29, v30);
  sub_100047544();
  v92 = v31;
  sub_1000474F8();
  __chkstk_darwin(v32, v33, v34);
  v100 = &v88 - v35;
  v103 = sub_1000443DC(&qword_1006CA620);
  inited = swift_initStackObject();
  v91 = xmmword_1005CE0C0;
  *(inited + 16) = xmmword_1005CE0C0;
  v37 = *(v5 + 104);
  v102 = v26;
  (v37)(v26, enum case for BindingsKeys.street1(_:), v3);
  v38 = v37;
  v39 = v26;
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  v40 = *(v5 + 8);
  v41 = sub_1000AFC90();
  v40(v41);
  v42 = v5 + 8;
  *(inited + 32) = v39;
  *(inited + 40) = v2;
  v43 = v104;
  v44 = sub_1000AFAA0();
  v38(v44);
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  (v40)(v43, v3);
  *(inited + 48) = v43;
  *(inited + 56) = v2;
  v45 = v97;
  v46 = sub_1000AFAA0();
  v38(v46);
  v47 = v45;
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  (v40)(v45, v3);
  v48 = v42;
  *(inited + 64) = v47;
  *(inited + 72) = v2;
  v49 = v98;
  (v38)(v98, enum case for BindingsKeys.state(_:), v3);
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  v50 = sub_1000AFC90();
  v40(v50);
  v96 = v48;
  *(inited + 80) = v49;
  *(inited + 88) = v2;
  v51 = v99;
  (v38)(v99, enum case for BindingsKeys.postalCode(_:), v3);
  BindingsKeys.rawValue.getter();
  sub_1000AFB88();
  v52 = sub_1000AFC90();
  v40(v52);
  *(inited + 96) = v51;
  *(inited + 104) = v2;
  v53 = swift_initStackObject();
  v90 = xmmword_1005CC370;
  *(v53 + 16) = xmmword_1005CC370;
  v54 = v102;
  (v38)(v102, enum case for BindingsKeys.addressLat(_:), v3);
  v55 = BindingsKeys.rawValue.getter();
  v57 = v56;
  (v40)(v54, v3);
  *(v53 + 32) = v55;
  *(v53 + 40) = v57;
  v58 = v104;
  v59 = sub_1000AFAA0();
  v38(v59);
  BindingsKeys.rawValue.getter();
  v60 = sub_1000AF698();
  v40(v60);
  *(v53 + 48) = v58;
  *(v53 + 56) = v57;
  sub_1000AEB58(v101, inited, v53);
  swift_setDeallocating();
  sub_1000CEE7C();
  swift_setDeallocating();
  sub_1000CEE7C();
  v61 = swift_initStackObject();
  *(v61 + 16) = v91;
  v62 = v102;
  (v38)(v102, enum case for BindingsKeys.documentStreet1(_:), v3);
  BindingsKeys.rawValue.getter();
  v63 = sub_1000AFC5C();
  v40(v63);
  *(v61 + 32) = v62;
  *(v61 + 40) = v57;
  v64 = v104;
  (v38)(v104, enum case for BindingsKeys.documentStreet2(_:), v3);
  BindingsKeys.rawValue.getter();
  v65 = sub_1000AFC5C();
  v40(v65);
  *(v61 + 48) = v64;
  *(v61 + 56) = v57;
  v66 = v97;
  v67 = sub_1000AFAA0();
  v38(v67);
  BindingsKeys.rawValue.getter();
  v68 = sub_1000AF698();
  v40(v68);
  *(v61 + 64) = v66;
  *(v61 + 72) = v57;
  v69 = v98;
  v70 = sub_1000AFAA0();
  v38(v70);
  BindingsKeys.rawValue.getter();
  v71 = sub_1000AF698();
  v40(v71);
  *(v61 + 80) = v69;
  *(v61 + 88) = v57;
  v72 = v99;
  v73 = sub_1000AFAA0();
  v38(v73);
  v89 = v38;
  BindingsKeys.rawValue.getter();
  v74 = sub_1000AF698();
  v40(v74);
  *(v61 + 96) = v72;
  *(v61 + 104) = v57;
  v75 = swift_initStackObject();
  *(v75 + 16) = v90;
  v76 = v102;
  (v38)(v102, enum case for BindingsKeys.documentAddressLat(_:), v3);
  BindingsKeys.rawValue.getter();
  v77 = sub_1000AFC70();
  v40(v77);
  *(v75 + 32) = v76;
  *(v75 + 40) = v72;
  v78 = v104;
  (v89)(v104, enum case for BindingsKeys.documentAddressLon(_:), v3);
  BindingsKeys.rawValue.getter();
  v79 = sub_1000AFC70();
  v40(v79);
  *(v75 + 48) = v78;
  *(v75 + 56) = v72;
  v80 = v92;
  v81 = v101;
  sub_1000AEB58(v101, v61, v75);
  swift_setDeallocating();
  sub_1000CEE7C();
  swift_setDeallocating();
  sub_1000CEE7C();
  v82 = v93;
  v83 = v81;
  v84 = v94;
  (*(v93 + 16))(v95, v83, v94);
  v85 = v100;
  ODIBindingsDict.merge(with:)();
  ODIBindingsDict.merge(with:)();
  v86 = *(v82 + 8);
  v86(v80, v84);
  return (v86)(v85, v84);
}

uint64_t sub_1000AEB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ODIBindingsDict.keys.getter();
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v12 = 0;
  do
  {
    if (!v7)
    {
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v8)
        {

          return ODIBindingsDict.init(dictionaryLiteral:)();
        }

        v7 = *(v4 + 8 * v13);
        ++v12;
        if (v7)
        {
          v12 = v13;
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

LABEL_9:
    v7 &= v7 - 1;
    __chkstk_darwin(v9, v10, v11);

    v14 = sub_100098534();
  }

  while (!v14);

  v15 = *(a3 + 16);
  v16 = (a3 + 40);
  if (!v15)
  {
LABEL_20:
    sub_1000A3784(_swiftEmptyDictionarySingleton);

    return ODIBindingsDict.init(contents:)();
  }

  while (1)
  {
    v18 = *(v16 - 1);
    v17 = *v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_1000BFB60(v18, v17);
    v22 = _swiftEmptyDictionarySingleton[2];
    v23 = (v21 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      break;
    }

    v25 = v20;
    v26 = v21;
    sub_1000443DC(&qword_1006CBEC8);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v24))
    {
      v27 = sub_1000BFB60(v18, v17);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_25;
      }

      v25 = v27;
    }

    if (v26)
    {
      v29 = (_swiftEmptyDictionarySingleton[7] + 16 * v25);
      *v29 = 0;
      v29[1] = 0xE000000000000000;
    }

    else
    {
      _swiftEmptyDictionarySingleton[(v25 >> 6) + 8] |= 1 << v25;
      v30 = (_swiftEmptyDictionarySingleton[6] + 16 * v25);
      *v30 = v18;
      v30[1] = v17;
      v31 = (_swiftEmptyDictionarySingleton[7] + 16 * v25);
      *v31 = 0;
      v31[1] = 0xE000000000000000;
      v32 = _swiftEmptyDictionarySingleton[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_24;
      }

      _swiftEmptyDictionarySingleton[2] = v34;
    }

    v16 += 2;
    if (!--v15)
    {
      goto LABEL_20;
    }
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000AEE44()
{
  result = qword_1006CBEC0;
  if (!qword_1006CBEC0)
  {
    type metadata accessor for ODIDeviceInfo();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBEC0);
  }

  return result;
}

uint64_t type metadata accessor for BindingsGuesser(uint64_t a1)
{
  result = qword_1006CBF30;
  if (!qword_1006CBF30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t *sub_1000AEEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      v4 = sub_1000AF138(v10, v6, v4);

      return v4;
    }
  }

  __chkstk_darwin(a1, a2, a3);
  v7 = (&v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_10009F228(0, v6, v7);
  v8 = sub_1000AF04C(v7, v6, v4);
  if (!v3)
  {
    return v8;
  }

  swift_willThrow();
  return v4;
}

unint64_t *sub_1000AF04C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(*(a3 + 56) + 8 * v11) + 16))
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1000D2558(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1000D2558(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1000AF138(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1000AF04C(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1000AF1B0(void *a1)
{
  v2 = [a1 identifier];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_1000AF244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_100046EA4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 24);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000AF308(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1000485F8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000AF3B4(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = sub_10007EDD0(319, &qword_1006CBF40, &protocol descriptor for BindingSourceFactory);
    if (v3 <= 0x3F)
    {
      result = sub_10007EDD0(319, &unk_1006CBF48, &protocol descriptor for StaticBindingsProvider);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000AF4B4(uint64_t result)
{
  *(v2 + 612) = *(result + 24);
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  *(v2 + 616) = *(v3 + 64);
  *(v2 + 536) = *(v3 + 56);
  *(v2 + 544) = v4;
  return result;
}

uint64_t sub_1000AF520(uint64_t result)
{
  v5 = *(v2 + 280);
  *(v1 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  v6 = (*(v1 + 48) + 16 * v3);
  *v6 = v5;
  v6[1] = result;
  *(*(v1 + 56) + 8 * v3) = v4;
  return result;
}

uint64_t sub_1000AF560()
{
  v1[69] = 0;
  result = v1[26];
  v1[71] = v0 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

uint64_t sub_1000AF5B8@<X0>(uint64_t a1@<X8>)
{
  v3[33] = v2;
  v3[34] = a1;
  v5 = __clz(__rbit64(v2)) | (a1 << 6);
  v6 = (*(v1 + 48) + 16 * v5);
  v3[35] = *v6;
  v3[36] = v6[1];
  v3[37] = *(*(v1 + 56) + 8 * v5);

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1000AF664@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8 * a1 + 32);
  *(v2 + 336) = result;
  *(v2 + 344) = *(result + 16);
  return result;
}

void sub_1000AF67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v18 + 16) = v16;
  v19 = v18 + 16 * v15;
  *(v19 + 32) = v17;
  *(v19 + 40) = a15;
}

uint64_t sub_1000AF6FC(void *a1)
{
  sub_100044728(a1, v1);

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_1000AF748()
{
}

void sub_1000AF794()
{

  sub_1000BDF44(0, v0, 0);
}

uint64_t sub_1000AF7BC()
{

  return swift_slowAlloc();
}

uint64_t sub_1000AF7D8()
{
}

uint64_t sub_1000AF7F4()
{
}

uint64_t sub_1000AF814()
{

  return swift_beginAccess();
}

void sub_1000AF894(unint64_t a1@<X8>)
{

  sub_1000BDF44(a1 > 1, v1, 1);
}

unint64_t sub_1000AF8CC()
{
  *(v1 + 136) = v3;

  return sub_1000BFB60(v2, v0);
}

BOOL sub_1000AF8F0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000AF920()
{
  v1[15] = 0;
  v1[16] = 0xE000000000000000;
  v1[38] = *(v0 + 16);
}

void sub_1000AF964(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

unint64_t sub_1000AF990()
{

  return sub_100052F7C(v0);
}

uint64_t sub_1000AF9AC(uint64_t result, uint64_t a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2;
  return result;
}

void sub_1000AF9E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_1000AFA04()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

void sub_1000AFA40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_1000AFA60(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_1000AFAAC()
{

  return type metadata accessor for BindingsGuesser(0);
}

double sub_1000AFAC8(uint64_t a1)
{
  *(v1 + 608) = *(*(v1 + 224) + 80);

  return result;
}

uint64_t sub_1000AFB94(uint64_t a1)
{
  *(*(v1 + 56) + 8 * v2) = v3;
}

uint64_t sub_1000AFBB0()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

double sub_1000AFBCC(float a1)
{
  *v1 = a1;

  return result;
}

unint64_t sub_1000AFBE4()
{

  return sub_100052F7C(v0);
}

unint64_t sub_1000AFC00()
{

  return sub_100052F7C(v0);
}

double sub_1000AFC1C()
{

  return result;
}

void sub_1000AFCFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000AFD1C()
{
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  return sub_1000ACC28(v2, v3);
}

unint64_t sub_1000AFD34()
{
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  return sub_1000BFB60(v2, v3);
}

void *sub_1000AFD4C()
{

  return static ODIAccountManager.shared.getter();
}

uint64_t sub_1000AFD64()
{

  return type metadata accessor for ODIAccountManager();
}

void *sub_1000AFD7C()
{

  return static ODIAccountManager.shared.getter();
}

uint64_t sub_1000AFD94()
{

  return type metadata accessor for ODIAccountManager();
}

uint64_t sub_1000AFDAC()
{
}

uint64_t sub_1000AFDC4(void *a1)
{
  sub_100044728(a1, a1[3]);
  sub_1000B0220();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    sub_100044850(a1);
  }

  else
  {
    sub_100044728(v5, v5[3]);
    sub_1000B0220();
    v1 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100044850(v5);
    sub_100044850(a1);
  }

  return v1;
}

uint64_t sub_1000AFE68@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000AFDC4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000AFEE4@<X0>(uint64_t *a1@<X8>)
{
  result = variable initialization expression of ASBiometricKitHelper.currentDevice();
  *a1 = result;
  return result;
}

uint64_t sub_1000AFF18@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10006557C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000AFF48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100065550(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000AFF78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10006559C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000AFFB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100065574(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000AFFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100065568(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000B0030@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100065584(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1000B0098@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005E034();
  *a1 = result;
  return result;
}

unint64_t sub_1000B00C4()
{
  result = qword_1006CBF80;
  if (!qword_1006CBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF80);
  }

  return result;
}

unint64_t sub_1000B011C()
{
  result = qword_1006CBF88;
  if (!qword_1006CBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF88);
  }

  return result;
}

unint64_t sub_1000B0174()
{
  result = qword_1006CBF90;
  if (!qword_1006CBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF90);
  }

  return result;
}

unint64_t sub_1000B01CC()
{
  result = qword_1006CBF98;
  if (!qword_1006CBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CBF98);
  }

  return result;
}

uint64_t sub_1000B0234@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000443DC(&qword_1006C9C48);
  v5 = sub_100077674(v4);
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = String._bridgeToObjectiveC()();
  v12 = [a1 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    URL.init(string:)();

    v15 = type metadata accessor for URL();
    v16 = sub_1000BBAE0();
    if (sub_100046EA4(v16, v17, v15) == 1)
    {
      sub_100053BE8(v10, &qword_1006C9C48);
      if (qword_1006C9788 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_100097D98(v18, qword_1006CA118);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      if (sub_100077680(v20))
      {
        sub_100053F78();
        v28 = sub_1000BBA6C();
        *v14 = 136315138;
        *(v14 + 4) = sub_100052F7C(0xD000000000000014);
        _os_log_impl(&_mh_execute_header, v19, v20, "Invalid URL in defaults for key: %s", v14, 0xCu);
        sub_100044850(v28);
        sub_100077500();
        sub_10007756C();
      }

      if (qword_1006C9748 != -1)
      {
        sub_1000BBA0C(&qword_1006C9748);
      }

      sub_100046E6C(v15, qword_1006DF790);
      sub_100053F48();
      return (*(v21 + 16))(a2);
    }

    else
    {
      sub_100053F48();
      v26 = sub_100047504();
      return v27(v26);
    }
  }

  else
  {
    if (qword_1006C9748 != -1)
    {
      sub_1000BBA0C(&qword_1006C9748);
    }

    v23 = type metadata accessor for URL();
    sub_100046E6C(v23, qword_1006DF790);
    sub_100053F48();
    v25 = *(v24 + 16);

    return v25(a2);
  }
}

BOOL sub_1000B0540(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t *ASDConfigurationManager.shared.unsafeMutableAddressor()
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4(&qword_1006C9818);
  }

  return &static ASDConfigurationManager.shared;
}

uint64_t sub_1000B05E4@<X0>(_OWORD *a1@<X8>)
{
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = [objc_opt_self() standardUserDefaults];
  sub_10004F04C(v2, v11);

  v3 = v11[0];
  v4 = v11[1];
  sub_1000BA6C4();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_1000448B0(v3, v4);

  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  *a1 = v12;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
  return result;
}

uint64_t sub_1000B078C()
{
  sub_1000BBAEC();
  v4 = sub_1000443DC(&qword_1006C9E20);
  v5 = sub_100077674(v4);
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  sub_1000BBB50(v8);
  v9 = type metadata accessor for TaskPriority();
  v10 = sub_1000BBAE0();
  v12 = sub_100046EA4(v10, v11, v9);

  if (v12 == 1)
  {
    sub_100053BE8(v1, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100053F48();
    (*(v13 + 8))(v1, v9);
  }

  v14 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (v2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v26[0] = 0;
        v26[1] = 0;
        v20 = v26;
        v26[2] = v15;
        v26[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v25[0] = 7;
      v25[1] = v20;
      v25[2] = v18;
      v23 = sub_1000BBA50(v19, v25, &type metadata for () + 8);

      sub_100053BE8(v3, &qword_1006C9E20);

      return v23;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  v21 = sub_100053BE8(v3, &qword_1006C9E20);
  if (v17 | v15)
  {
    v27[0] = 0;
    v27[1] = 0;
    v22 = v27;
    v27[2] = v15;
    v27[3] = v17;
  }

  else
  {
    v22 = 0;
  }

  return sub_1000BBA50(v21, v22, &type metadata for () + 8);
}

uint64_t sub_1000B09A8()
{
  sub_1000BBAEC();
  v4 = sub_1000443DC(&qword_1006C9E20);
  v5 = sub_100077674(v4);
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  sub_1000BBB50(v8);
  v9 = type metadata accessor for TaskPriority();
  v10 = sub_1000BBAE0();
  v12 = sub_100046EA4(v10, v11, v9);

  if (v12 == 1)
  {
    sub_100053BE8(v1, &qword_1006C9E20);
  }

  else
  {
    TaskPriority.rawValue.getter();
    sub_100053F48();
    (*(v13 + 8))(v1, v9);
  }

  v14 = *(v0 + 16);
  swift_unknownObjectRetain();

  if (!v14)
  {
    v15 = 0;
    v17 = 0;
    if (v2)
    {
      goto LABEL_6;
    }

LABEL_10:
    sub_100053BE8(v3, &qword_1006C9E20);
    v22 = sub_1000443DC(qword_1006CC1A8);
    if (v17 | v15)
    {
      v27[0] = 0;
      v27[1] = 0;
      v23 = v27;
      v27[2] = v15;
      v27[3] = v17;
    }

    else
    {
      v23 = 0;
    }

    return sub_1000BBA50(v22, v23, v22);
  }

  swift_getObjectType();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v17 = v16;
  swift_unknownObjectRelease();
  if (!v2)
  {
    goto LABEL_10;
  }

LABEL_6:
  v18 = String.utf8CString.getter() + 32;

  v19 = sub_1000443DC(qword_1006CC1A8);
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v26[0] = 0;
    v26[1] = 0;
    v20 = v26;
    v26[2] = v15;
    v26[3] = v17;
  }

  v25[0] = 7;
  v25[1] = v20;
  v25[2] = v18;
  v21 = sub_1000BBA50(v19, v25, v19);

  sub_100053BE8(v3, &qword_1006C9E20);

  return v21;
}

NSString sub_1000B0BC4()
{
  result = String._bridgeToObjectiveC()();
  qword_1006DF840 = result;
  return result;
}

uint64_t sub_1000B0BFC()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CBFA0);
  sub_100046E6C(v0, qword_1006CBFA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000B0C84(uint64_t a1, uint64_t a2)
{
  if (a1 == 6583137 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000B0D0C(void *a1)
{
  v2 = v1;
  v4 = sub_1000443DC(&qword_1006CC2C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100044728(a1, a1[3]);
  sub_1000BB1C0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(__dst, v2, sizeof(__dst));
  sub_1000BB268(v2, v11);
  sub_1000BB2A0();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  memcpy(v11, __dst, sizeof(v11));
  sub_100053BE8(v11, &qword_1006CAC08);
  return (*(v5 + 8))(v9, v4);
}

void *sub_1000B0E94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000443DC(&qword_1006CC2A8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7, v8);
  v10 = &__dst[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100044728(a1, a1[3]);
  sub_1000BB1C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100044850(a1);
  }

  sub_1000BB214();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v10, v5);
  memcpy(__dst, __src, sizeof(__dst));
  sub_100044850(a1);
  return memcpy(a2, __dst, 0x60uLL);
}

uint64_t sub_1000B103C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C62617369447369 && a2 == 0xEA00000000006465)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000B10D8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000443DC(&qword_1006CC290);
  sub_10004EAE0();
  v4 = v3;
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = sub_10007B3BC();
  sub_10004EBE8(v11, v12);
  sub_1000BB064();
  sub_1000BBB10(&type metadata for ASDConfig.ASPushNotificationsConfiguration.CodingKeys);
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v10, v2);
}

uint64_t sub_1000B11DC(void *a1)
{
  v4 = sub_1000443DC(&qword_1006CC260);
  sub_10004EAE0();
  v6 = v5;
  __chkstk_darwin(v7, v8, v9);
  sub_10004EAF4();
  v12 = v11 - v10;
  sub_10004EBE8(a1, a1[3]);
  sub_1000BB064();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v1 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v12, v4);
  }

  sub_100044850(a1);
  return v1 & 1;
}

uint64_t sub_1000B1314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7246657461647075 && a2 == 0xEF79636E65757165;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001005A5500 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001005A3770 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000025 && 0x80000001005A5520 == a2)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1000B14D4(char a1)
{
  result = 0x5255656372756F73;
  switch(a1)
  {
    case 1:
      result = 0x7246657461647075;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000025;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000B15AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10004EC00();
  v25 = v24;
  v26 = sub_1000443DC(&qword_1006CC298);
  sub_10004EAE0();
  v28 = v27;
  __chkstk_darwin(v29, v30, v31);
  sub_10004EAF4();
  v34 = v33 - v32;
  sub_10004EBE8(v25, v25[3]);
  sub_1000BB0B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000BB9C4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v23)
  {
    sub_1000BB9C4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v28 + 8))(v34, v26);
  sub_10004EC18();
}

void sub_1000B1760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10004EC00();
  v28 = v27;
  sub_1000443DC(&qword_1006CC270);
  sub_10004EAE0();
  __chkstk_darwin(v29, v30, v31);
  sub_10004EAF4();
  sub_10004EBE8(v28, v28[3]);
  sub_1000BB0B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v26)
  {
    sub_1000BB9D4();
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1000BB9D4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = sub_1000BBAC0();
    v33(v32);
  }

  sub_100044850(v28);
  sub_10004EC18();
}

uint64_t sub_1000B196C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x43786F62646E6173 && a2 == 0xEE006C656E6E6168;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001005A5550 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1936680295 && a2 == 0xE400000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6F6973756C637865 && a2 == 0xED000065646F4D6ELL)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1000B1B2C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x43786F62646E6173;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 1936680295;
      break;
    case 4:
      result = 0x6F6973756C637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B1BF4()
{
  v1 = sub_1000443DC(&qword_1006CC2A0);
  sub_10004EAE0();
  v3 = v2;
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v9 = v8 - v7;
  v10 = sub_10007B3BC();
  sub_10004EBE8(v10, v11);
  sub_1000BB10C();
  sub_1000BBB10(&type metadata for ASDConfig.ServiceAreaConfig.CodingKeys);
  sub_1000BB9C4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_1000BB9C4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000BB9C4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000443DC(&qword_1006CA018);
    sub_1000BB160(&qword_1006CA030);
    sub_10004EC80();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10004EC80();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v3 + 8))(v9, v1);
}

void sub_1000B1DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10004EC00();
  v25 = v24;
  v27 = v26;
  sub_1000443DC(&qword_1006CC280);
  sub_10004EAE0();
  __chkstk_darwin(v28, v29, v30);
  sub_10004EAF4();
  sub_10004EBE8(v25, v25[3]);
  sub_1000BB10C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_100044850(v25);
  }

  else
  {
    sub_1000BBAD0();
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v45 = v32;
    sub_1000BBAD0();
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v34;
    v42 = v33;
    LOBYTE(v49[0]) = 2;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43 = v35;
    sub_1000443DC(&qword_1006CA018);
    sub_1000BB160(&qword_1006CA020);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v40 = v49[0];
    sub_1000BBAD0();
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = sub_1000BB97C();
    v38(v37);
    *&v46 = v31;
    *(&v46 + 1) = v45;
    *&v47 = v42;
    *(&v47 + 1) = v44;
    *v48 = v41;
    *&v48[8] = v43;
    *&v48[16] = v49[0];
    v48[24] = v36;
    sub_10007C91C(&v46, v49);
    sub_100044850(v25);
    v49[0] = v31;
    v49[1] = v45;
    v49[2] = v42;
    v49[3] = v44;
    v49[4] = v41;
    v49[5] = v43;
    v49[6] = v40;
    v50 = v36;
    sub_10007C978(v49);
    v39 = v47;
    *v27 = v46;
    v27[1] = v39;
    v27[2] = *v48;
    *(v27 + 41) = *&v48[9];
  }

  sub_10004EC18();
}

uint64_t sub_1000B214C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B0C84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000B2178(uint64_t a1)
{
  v2 = sub_1000BB1C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B21B4(uint64_t a1)
{
  v2 = sub_1000BB1C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000B21F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000B0E94(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x60uLL);
  }

  return result;
}

uint64_t sub_1000B2294@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B103C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000B22C0(uint64_t a1)
{
  v2 = sub_1000BB064();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B22FC(uint64_t a1)
{
  v2 = sub_1000BB064();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2338@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B11DC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1000B238C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B1314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B23B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B14CC();
  *a1 = result;
  return result;
}

uint64_t sub_1000B23DC(uint64_t a1)
{
  v2 = sub_1000BB0B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2418(uint64_t a1)
{
  v2 = sub_1000BB0B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B24F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B196C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B251C(uint64_t a1)
{
  v2 = sub_1000BB10C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2558(uint64_t a1)
{
  v2 = sub_1000BB10C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000B2594@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_1000B1DCC(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14), v15, v17, v18, v20, v21, v22, v23, v24, vars0, vars8);
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v16;
    a9[2] = *v19;
    result = *&v19[9];
    *(a9 + 41) = *&v19[9];
  }

  return result;
}

uint64_t sub_1000B25F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001005A5410 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001ELL && 0x80000001005A5430 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000020 && 0x80000001005A5450 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001005A5480 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x80000001005A54A0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4D32566568636163 && a2 == 0xED00006567417861;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000011 && 0x80000001005A54C0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000010 && 0x80000001005A54E0 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x4165636976726573 && a2 == 0xEC00000073616572)
                {

                  return 8;
                }

                else
                {
                  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000B28C8(char a1)
{
  result = 0x4D32566568636163;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001ELL;
      break;
    case 2:
      result = 0xD000000000000020;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      return result;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x4165636976726573;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1000B2A24()
{
  v1 = sub_1000443DC(&qword_1006CC0D0);
  sub_10004EAE0();
  v3 = v2;
  __chkstk_darwin(v4, v5, v6);
  sub_10004EAF4();
  v9 = v8 - v7;
  v10 = sub_10007B3BC();
  sub_10004EBE8(v10, v11);
  sub_1000B98F0();
  sub_1000BBB10(&type metadata for ASDConfig.CodingKeys);
  sub_1000A59D0();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v0)
  {
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000443DC(&qword_1006CA2B8);
    sub_1000BBB04();
    sub_1000B9B78(v12);
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000B9BF4();
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1000B9C48();
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000443DC(&qword_1006CC0A0);
    sub_1000BBB04();
    sub_1000B9B78(v13);
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1000443DC(&qword_1006CC0B8);
    sub_1000BA718(&unk_1006CC0F8);
    sub_1000BB9FC();
    sub_1000A59D0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v3 + 8))(v9, v1);
}

void sub_1000B2D58()
{
  sub_10004EC00();
  v2 = v1;
  v4 = v3;
  sub_1000443DC(&qword_1006CC080);
  sub_10004EAE0();
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v8 = sub_100081220();
  sub_10004EBE8(v8, v9);
  sub_1000B98F0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100044850(v2);
  }

  else
  {
    sub_1000BB98C();
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v51 = v11 & 1;
    sub_1000BB98C();
    v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v50 = v13 & 1;
    LOBYTE(v33) = 2;
    sub_1000BB98C();
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v12;
    v49 = BYTE4(v14) & 1;
    v30 = v14;
    sub_1000443DC(&qword_1006CA2B8);
    sub_1000BBB94(3);
    sub_1000BBB04();
    sub_1000B99EC(v15);
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v16 = v33;
    sub_1000BBB94(4);
    sub_1000B9944();
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v29 = v33;
    v28 = v34;
    LOBYTE(v33) = 5;
    sub_1000BB98C();
    v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v17 & 1;
    sub_1000BBB94(6);
    sub_1000B9998();
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v10;
    sub_1000443DC(&qword_1006CC0A0);
    sub_1000BBB94(7);
    sub_1000BBB04();
    sub_1000B99EC(v18);
    sub_1000BBB88();
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v33;
    sub_1000443DC(&qword_1006CC0B8);
    sub_1000BA718(&unk_1006CC0C0);
    sub_10004EBDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = sub_1000BB9B4();
    v21(v20);
    v22 = v47;
    v32[0] = v26;
    LOBYTE(v32[1]) = v51;
    v32[2] = v31;
    v25 = v50;
    LOBYTE(v32[3]) = v50;
    HIDWORD(v32[3]) = v30;
    v24 = v49;
    LOBYTE(v32[4]) = v49;
    v32[5] = v16;
    v32[6] = v29;
    v32[7] = v34;
    v32[8] = v27;
    v23 = v48;
    LOBYTE(v32[9]) = v48;
    BYTE1(v32[9]) = 5;
    v32[10] = v33;
    v32[11] = v47;
    sub_1000B9B10(v32, &v33);
    sub_100044850(v2);
    v33 = v26;
    LOBYTE(v34) = v51;
    v35 = v31;
    v36 = v25;
    v37 = v30;
    v38 = v24;
    v39 = v16;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v23;
    v44 = 5;
    v45 = v19;
    v46 = v22;
    sub_1000B9B48(&v33);
    memcpy(v4, v32, 0x60uLL);
  }

  sub_10004EC18();
}

uint64_t sub_1000B32D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B25F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B32FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000B28C0();
  *a1 = result;
  return result;
}

uint64_t sub_1000B3324(uint64_t a1)
{
  v2 = sub_1000B98F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3360(uint64_t a1)
{
  v2 = sub_1000B98F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000B339C(void *a1@<X8>)
{
  sub_1000B2D58();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

uint64_t sub_1000B3400()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1._object = 0x80000001005A53B0;
  v1._countAndFlagsBits = 0xD00000000000001ALL;
  object = NSUserDefaults.internalString(forKey:)(v1).value._object;

  if (!object || (v14._countAndFlagsBits = sub_100047504(), v3 = sub_1000B35B4(v14), v3 == 2))
  {
    v4 = os_variant_allows_internal_security_policies() == 0;
    goto LABEL_4;
  }

  v7 = v3;
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944(&qword_1006C9810);
  }

  v8 = type metadata accessor for Logger();
  sub_100097D98(v8, qword_1006CBFA0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v9, v10))
  {

    v4 = (v7 & 1) == 0;
LABEL_4:
    if (v4)
    {
      return 49;
    }

    else
    {
      return 51;
    }
  }

  v11 = sub_100053F78();
  v12 = sub_100053F60();
  *v11 = 136315138;
  if (v7)
  {
    v5 = 51;
  }

  else
  {
    v5 = 49;
  }

  v13 = sub_100052F7C(v5);

  *(v11 + 4) = v13;
  _os_log_impl(&_mh_execute_header, v9, v10, "Forcing assessment bucket %s due to user settings", v11, 0xCu);
  sub_100044850(v12);
  sub_10007756C();
  sub_1000488AC(v11);

  return v5;
}

uint64_t sub_1000B35B4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100691508, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

Class ASDConfigurationManager.configDictionaryForCoreODI.getter()
{
  sub_1000B36A0();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return isa;
}

uint64_t sub_1000B36A0()
{
  sub_1000443DC(&qword_1006CC170);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  strcpy(v31, "daemonVersion");
  HIWORD(v31[1]) = -4864;
  AnyHashable.init<A>(_:)();
  v1 = [objc_opt_self() daemonVersion];
  *(inited + 96) = sub_1000591B0(0, &qword_1006CB560, NSString_ptr);
  *(inited + 72) = v1;
  v2 = Dictionary.init(dictionaryLiteral:)();
  v27 = v2;
  v3 = sub_1000B3DD0();
  *&v29 = 0x49444F65726F63;
  *(&v29 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_10005527C(v3, &v29, v31);
  sub_100076E50(v31);
  if (v30)
  {
    sub_1000534C8(&v29, &v32);
    v4 = objc_opt_self();
    sub_100044728(&v32, v33);
    v5 = _bridgeAnythingToObjectiveC<A>(_:)();
    v31[0] = 0;
    v6 = [v4 dataWithJSONObject:v5 options:0 error:v31];
    swift_unknownObjectRelease();
    v7 = v31[0];
    if (v6)
    {
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      *&v29 = 0x49444F65726F63;
      *(&v29 + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      v30 = &type metadata for Data;
      *&v29 = v8;
      *(&v29 + 1) = v10;
      sub_1000534C8(&v29, v28);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_10006B410(v28, v31, isUniquelyReferenced_nonNull_native);
      v27 = v2;
      sub_100076E50(v31);
    }

    else
    {
      v15 = v7;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006C9810 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100046E6C(v16, qword_1006CBFA0);
      swift_errorRetain();
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31[0] = v20;
        *v19 = 136315138;
        swift_getErrorValue();
        v21 = Error.localizedDescription.getter();
        v22 = sub_100052F7C(v21);

        *(v19 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v17, v18, "Error encoding coreODIConfig data: %s", v19, 0xCu);
        sub_100044850(v20);
      }

      *&v29 = 0x49444F65726F63;
      *(&v29 + 1) = 0xE700000000000000;
      AnyHashable.init<A>(_:)();
      v23 = sub_100044B48(32123, 0xE200000000000000);
      v30 = &type metadata for Data;
      *&v29 = v23;
      *(&v29 + 1) = v24;
      sub_1000534C8(&v29, v28);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      sub_10006B410(v28, v31, v25);
      sub_100076E50(v31);
    }

    sub_100044850(&v32);
  }

  else
  {
    sub_100053BE8(&v29, &qword_1006CA130);
    *&v32 = 0x49444F65726F63;
    *(&v32 + 1) = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v12 = sub_100044B48(32123, 0xE200000000000000);
    v33 = &type metadata for Data;
    *&v32 = v12;
    *(&v32 + 1) = v13;
    sub_1000534C8(&v32, &v29);
    v14 = swift_isUniquelyReferenced_nonNull_native();
    *&v28[0] = v2;
    sub_10006B410(&v29, v31, v14);
    v27 = v2;
    sub_100076E50(v31);
  }

  sub_1000B3E68(&v27, v3);

  return v27;
}

uint64_t ASDConfigurationManager.cacheV2MaxAge.getter()
{
  result = sub_1000B05E4(v1);
  if (v2 != 1)
  {
    return sub_100053BE8(v1, &qword_1006CAC08);
  }

  return result;
}

uint64_t ASDConfigurationManager.payloadWorkflowTTLs.getter()
{
  sub_1000B05E4(v5);
  if (v6 == 1 || (v8 = v7, sub_1000BA340(&v8, &v4, &qword_1006CAC18), sub_100053BE8(v5, &qword_1006CAC08), !v8))
  {
    sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
    return Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v0 = sub_100065A4C();
    sub_10004904C(v0);
    v2 = v1;
  }

  return v2;
}

uint64_t sub_1000B3DD0()
{
  swift_getObjectType();
  v0 = [objc_opt_self() standardUserDefaults];
  sub_10004F04C(v0, &v5);

  v1 = v5;
  v2 = v6;
  v3 = sub_1000B4E28(v5, v6);
  sub_1000448B0(v1, v2);
  return v3;
}

void sub_1000B3E68(uint64_t a1, uint64_t a2)
{
  *&v25 = 0x7365727574616566;
  *(&v25 + 1) = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  sub_10005527C(a2, &v25, &v28);
  sub_100076E50(&v28);
  if (v26)
  {
    sub_1000534C8(&v25, &v30);
    v3 = objc_opt_self();
    sub_100044728(&v30, v31);
    v4 = _bridgeAnythingToObjectiveC<A>(_:)();
    v28 = 0;
    v5 = [v3 dataWithJSONObject:v4 options:0 error:&v28];
    swift_unknownObjectRelease();
    v6 = v28;
    if (v5)
    {
      v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1000443DC(&qword_1006CC178);
      sub_1000BA718(&unk_1006CC180);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      v21 = v28;
      v22 = [objc_opt_self() standardUserDefaults];
      v26 = sub_1000591B0(0, &qword_1006CC190, NSUserDefaults_ptr);
      v27 = &off_100695438;
      *&v25 = v22;
      v28 = v21;
      sub_1000446C4(&v25, v29);
      v29[8] = &type metadata for FeatureToggleResolver.Dice;
      v29[9] = &off_100695580;
      sub_100044850(&v25);
      v23 = sub_1000D9F4C();
      v24[1] = 0xE800000000000000;
      AnyHashable.init<A>(_:)();
      v24[3] = sub_1000443DC(&qword_1006CC198);
      v24[0] = v23;
      sub_10006F6FC(v24, &v25);
      sub_1000448B0(v7, v9);
      sub_1000BA7D4(&v28);
    }

    else
    {
      v15 = v6;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      if (qword_1006C9810 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100046E6C(v16, qword_1006CBFA0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v28 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_100052F7C(0x7365727574616566);
        _os_log_impl(&_mh_execute_header, v17, v18, "Could not parse values of object '%s'.", v19, 0xCu);
        sub_100044850(v20);
      }
    }

    sub_100044850(&v30);
  }

  else
  {
    sub_100053BE8(&v25, &qword_1006CA130);
    if (qword_1006C9810 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100046E6C(v10, qword_1006CBFA0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_100052F7C(0x7365727574616566);
      _os_log_impl(&_mh_execute_header, v11, v12, "Config data does not contain '%s' key.", v13, 0xCu);
      sub_100044850(v14);
    }
  }
}

Swift::Void __swiftcall ASDConfigurationManager.pushInitialCoreODIConfig()()
{
  v1 = type metadata accessor for DispatchTime();
  sub_10004EAE0();
  v3 = v2;
  v7 = __chkstk_darwin(v4, v5, v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10, v11);
  v13 = &v32 - v12;
  v14 = sub_1000443DC(&qword_1006C9E20);
  v15 = sub_100077674(v14);
  __chkstk_darwin(v15, v16, v17);
  sub_10004EAF4();
  v20 = v19 - v18;
  v21 = dispatch_semaphore_create(0);
  Current = CFAbsoluteTimeGetCurrent();
  v23 = type metadata accessor for TaskPriority();
  sub_1000485F8(v20, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0.0;
  v24[3] = 0.0;
  *(v24 + 4) = v0;
  *(v24 + 5) = v21;
  v24[6] = Current;
  v25 = v0;
  v26 = v21;
  sub_10006F27C(0, 0, v20, &unk_1005CE3A8, v24);

  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v3 + 8);
  v27(v9, v1);
  OS_dispatch_semaphore.wait(timeout:)();
  v27(v13, v1);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) == 0)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944(&qword_1006C9810);
    }

    v28 = type metadata accessor for Logger();
    sub_100097D98(v28, qword_1006CBFA0);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.fault.getter();
    if (sub_100077680(v30))
    {
      v31 = sub_1000541D8();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Failed to set the config into CoreODI in expected time. Continuing despite risk of errors", v31, 2u);
      sub_1000488AC(v31);
    }
  }
}

uint64_t sub_1000B461C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 240) = a1;
  *(v6 + 224) = a5;
  *(v6 + 232) = a6;
  v7 = swift_task_alloc();
  *(v6 + 248) = v7;
  *v7 = v6;
  v7[1] = sub_1000B46B4;

  return ASDConfigurationManager.updateCoreODI()();
}

uint64_t sub_1000B46B4()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000B4798()
{
  sub_100068324();
  v1 = *(v0 + 240);
  OS_dispatch_semaphore.signal()();
  v2 = CFAbsoluteTimeGetCurrent() - v1;
  if (v2 <= 0.75)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944(&qword_1006C9810);
    }

    v8 = type metadata accessor for Logger();
    sub_100097D98(v8, qword_1006CBFA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (sub_100077680(v5))
    {
      v6 = sub_100053F78();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      v7 = "Updated CoreODI config in: %f";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944(&qword_1006C9810);
    }

    v3 = type metadata accessor for Logger();
    sub_100097D98(v3, qword_1006CBFA0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (sub_100077680(v5))
    {
      v6 = sub_100053F78();
      *v6 = 134217984;
      *(v6 + 4) = v2;
      v7 = "Longer than expected update time for CoreODI config: %f";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 0xCu);
      sub_1000488AC(v6);
    }
  }

  type metadata accessor for AssessmentConfigurationManager();
  swift_initStackObject();
  sub_1000B05E4((v0 + 112));
  v9 = 0;
  v10 = *(v0 + 152);
  if (v10 != 1)
  {

    sub_100053BE8(v0 + 112, &qword_1006CAC08);
    v9 = v10;
  }

  AssessmentConfigurationManager.airlineNameFormats.setter(v9);
  sub_1000B05E4((v0 + 16));
  if (*(v0 + 56) == 1)
  {
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v11 = *(v0 + 44);
    v12 = *(v0 + 48);
    sub_100053BE8(v0 + 16, &qword_1006CAC08);
  }

  AssessmentConfigurationManager.ravioliFetchIfMissingProbability.setter(v11 | ((v12 & 1) << 32));
  sub_10006574C();

  return v13();
}

uint64_t sub_1000B49C8()
{
  sub_1000657EC();
  type metadata accessor for ConfigManager();
  *(v0 + 24) = static ConfigManager.shared.getter();
  *(v0 + 32) = sub_1000B36A0();
  sub_1000BA640(&unk_1006CBFB8);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B4AA4, v2, v1);
}

uint64_t sub_1000B4AA4()
{
  sub_1000657D4();
  dispatch thunk of ConfigManager.setConfiguration(configDict:)();

  sub_10006574C();

  return v0();
}

id sub_1000B4B58(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for ASDConfigurationManager()) init];
  static ASDConfigurationManager.shared = result;
  return result;
}

uint64_t sub_1000B4B88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B4BD0()
{
  sub_10006ECA0();
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = sub_10006EB38(v5);
  *v6 = v7;
  v8 = sub_1000BB9A0(v6);

  return sub_1000B461C(v4, v8, v9, v1, v2, v3);
}

id static ASDConfigurationManager.shared.getter()
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4(&qword_1006C9818);
  }

  swift_beginAccess();
  v0 = static ASDConfigurationManager.shared;

  return v0;
}

void static ASDConfigurationManager.shared.setter(uint64_t a1)
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4(&qword_1006C9818);
  }

  swift_beginAccess();
  v2 = static ASDConfigurationManager.shared;
  static ASDConfigurationManager.shared = a1;
}

uint64_t (*static ASDConfigurationManager.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4(&qword_1006C9818);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1000B4E28(uint64_t a1, unint64_t a2)
{
  if (sub_1000B0540(a1, a2))
  {
    if (qword_1006C9810 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100046E6C(v2, qword_1006CBFA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "No stored config found.", v5, 2u);
    }

    return Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v24[0] = 0;
    v9 = [v7 JSONObjectWithData:isa options:0 error:v24];

    v10 = v24[0];
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10005346C(v25, v24);
      sub_1000443DC(&qword_1006CC1A0);
      if (swift_dynamicCast())
      {
        sub_100044850(v25);
        return v23;
      }

      else
      {
        if (qword_1006C9810 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_100046E6C(v19, qword_1006CBFA0);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Unexpected config data received", v22, 2u);
        }

        v11 = Dictionary.init(dictionaryLiteral:)();
        sub_100044850(v25);
      }
    }

    else
    {
      v12 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006C9810 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100046E6C(v13, qword_1006CBFA0);
      swift_errorRetain();
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        swift_errorRetain();
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Config data could not be parsed. Is it a valid JSON? %@", v16, 0xCu);
        sub_100053BE8(v17, &qword_1006CBB00);
      }

      v11 = Dictionary.init(dictionaryLiteral:)();
    }

    return v11;
  }
}

id sub_1000B52B4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v3 - 8, v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC3asd23ASDConfigurationManager_notificationCenter;
  v9 = objc_opt_self();
  *&v1[v8] = [v9 defaultCenter];
  v10 = swift_allocObject();
  *(v10 + 16) = ObjectType;
  sub_1000443DC(&qword_1006CC108);
  swift_allocObject();
  v11 = sub_1000B729C(0, 0xC000000000000000, sub_1000B5584, 0, &unk_1005CE5F8, v10, 86400.0);
  *&v1[OBJC_IVAR____TtC3asd23ASDConfigurationManager_fetcher] = v11;

  v12 = [v9 defaultCenter];
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v13 = qword_1006DF840;
  aBlock[4] = sub_1000B60B0;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C1C04;
  aBlock[3] = &unk_100694568;
  v14 = _Block_copy(aBlock);
  v15 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v14];
  _Block_release(v14);

  *&v1[OBJC_IVAR____TtC3asd23ASDConfigurationManager_updateObservationToken] = v15;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "init");
  v17 = type metadata accessor for TaskPriority();
  sub_1000485F8(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v11;
  v18[5] = ObjectType;
  sub_1000B078C();

  return v16;
}

id sub_1000B5584()
{
  v0 = [objc_opt_self() ephemeralSessionConfiguration];
  v1 = [objc_opt_self() sessionWithConfiguration:v0];

  return v1;
}

uint64_t sub_1000B55F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v3 = type metadata accessor for Locale();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_1000443DC(&qword_1006C9C48);
  v2[13] = swift_task_alloc();
  v5 = type metadata accessor for URLQueryItem();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  sub_1000443DC(&qword_1006CC158);
  v2[18] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return _swift_task_switch(sub_1000B5840, 0, 0);
}

uint64_t sub_1000B5840()
{
  sub_100068324();
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[10];
  v4 = [objc_opt_self() standardUserDefaults];
  sub_1000B0234(v4, v1);

  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if (sub_100046EA4(v2, 1, v3) || (v5 = URLComponents.queryItems.getter()) == 0)
  {

    v5 = _swiftEmptyArrayStorage;
  }

  v0[23] = v5;
  v6 = swift_task_alloc();
  v0[24] = v6;
  *v6 = v0;
  v6[1] = sub_1000B5968;

  return sub_1000B5ECC();
}

uint64_t sub_1000B5968()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  v1[2] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = *v0;
  sub_1000655F4();
  *v6 = v5;
  *(v8 + 200) = v7;

  v9 = sub_100065864();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000B5A54()
{
  if (v0[25])
  {
    URLQueryItem.init(name:value:)();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v2 = v0[23];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1000BBB2C();
      v2 = v43;
    }

    v4 = *(v2 + 16);
    v3 = *(v2 + 24);
    if (v4 >= v3 >> 1)
    {
      sub_1000631BC(v3 > 1, v4 + 1, 1, v2);
      v2 = v44;
    }

    v5 = sub_1000BBA2C(v0[15]);
    v6(v5);
  }

  else
  {
    v2 = v0[23];
  }

  sub_1000B3400();
  URLQueryItem.init(name:value:)();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000BBB2C();
    v2 = v42;
  }

  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (v8 >= v7 >> 1)
  {
    sub_1000631BC(v7 > 1, v8 + 1, 1, v2);
  }

  v9 = v0[18];
  v10 = v0[10];
  v11 = sub_1000BBA2C(v0[15]);
  v12(v11);
  if (sub_100046EA4(v9, 1, v10))
  {
  }

  else
  {
    URLComponents.queryItems.setter();
  }

  v13 = v0[18];
  v14 = v0[10];
  v15 = sub_1000BBAE0();
  v17 = sub_100046EA4(v15, v16, v14);
  v18 = v0[19];
  v19 = v0[13];
  if (v17)
  {
    sub_1000485F8(v0[13], 1, 1, v0[19]);
  }

  else
  {
    v21 = v0[11];
    v20 = v0[12];
    (*(v21 + 16))(v20, v13, v14);
    URLComponents.url.getter();
    (*(v21 + 8))(v20, v14);
    if (sub_100046EA4(v19, 1, v18) != 1)
    {
      (*(v0[20] + 32))(v0[21], v0[13], v0[19]);
      goto LABEL_21;
    }
  }

  v22 = v0[19];
  v23 = v0[13];
  (*(v0[20] + 16))(v0[21], v0[22], v22);
  if (sub_100046EA4(v23, 1, v22) != 1)
  {
    sub_100053BE8(v0[13], &qword_1006C9C48);
  }

LABEL_21:
  v24 = v0[22];
  v25 = v0[20];
  v46 = v0[19];
  v47 = v0[18];
  v27 = v0[8];
  v26 = v0[9];
  v45 = v0[7];
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  v28 = [objc_opt_self() daemonVersion];
  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  v32._countAndFlagsBits = 0x6973726556647361;
  v33._countAndFlagsBits = v29;
  v33._object = v31;
  v32._object = 0xEA00000000006E6FLL;
  URLRequest.addValue(_:forHTTPHeaderField:)(v33, v32);

  v34 = [objc_opt_self() currentLocale];
  static Locale._unconditionallyBridgeFromObjectiveC(_:)();

  v35 = Locale.identifier.getter();
  v37 = v36;
  (*(v27 + 8))(v26, v45);
  v38._countAndFlagsBits = 0x656C61636F6CLL;
  v39._countAndFlagsBits = v35;
  v39._object = v37;
  v38._object = 0xE600000000000000;
  URLRequest.addValue(_:forHTTPHeaderField:)(v39, v38);

  (*(v25 + 8))(v24, v46);
  sub_100053BE8(v47, &qword_1006CC158);

  sub_10006574C();

  return v40();
}

uint64_t sub_1000B5ECC()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = sub_1000443DC(&qword_1006CAD48);
  *v1 = v0;
  v1[1] = sub_1000B5FB4;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x56746375646F7270, 0xEE006E6F69737265, sub_1000B6C88, 0, v2);
}

uint64_t sub_1000B5FB4()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = sub_100065864();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000B60B0()
{
  v0 = sub_1000443DC(&qword_1006C9E20);
  __chkstk_darwin(v0 - 8, v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TaskPriority();
  sub_1000485F8(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_10006F27C(0, 0, v4, &unk_1005CE640, v6);
}

uint64_t sub_1000B6194()
{
  sub_1000657D4();
  if (qword_1006C9818 != -1)
  {
    sub_1000878A4(&qword_1006C9818);
  }

  swift_beginAccess();
  v1 = static ASDConfigurationManager.shared;
  *(v0 + 152) = static ASDConfigurationManager.shared;
  v1;
  v2 = swift_task_alloc();
  *(v0 + 160) = v2;
  *v2 = v0;
  v2[1] = sub_1000B6270;

  return ASDConfigurationManager.updateCoreODI()();
}

uint64_t sub_1000B6270()
{
  sub_1000657D4();
  sub_1000657F8();
  v2 = *(v1 + 152);
  v3 = *v0;
  sub_1000655F4();
  *v4 = v3;

  v5 = sub_100065864();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000B636C()
{
  sub_1000657EC();
  type metadata accessor for AssessmentConfigurationManager();
  swift_initStackObject();
  v1 = static ASDConfigurationManager.shared;
  sub_1000B05E4((v0 + 16));

  if (*(v0 + 56) == 1)
  {
    AssessmentConfigurationManager.airlineNameFormats.setter(0);
    v2 = 0;
    v3 = 1;
  }

  else
  {

    AssessmentConfigurationManager.airlineNameFormats.setter(v4);
    v2 = *(v0 + 44);
    v3 = *(v0 + 48);
    sub_100053BE8(v0 + 16, &qword_1006CAC08);
  }

  AssessmentConfigurationManager.ravioliFetchIfMissingProbability.setter(v2 | ((v3 & 1) << 32));
  sub_10006574C();

  return v5();
}

uint64_t sub_1000B6448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  v5 = swift_task_alloc();
  *(v4 + 56) = v5;
  *v5 = v4;
  v5[1] = sub_1000B64EC;

  return static Task<>.sleep(nanoseconds:)(15000000000);
}

uint64_t sub_1000B64EC()
{
  sub_1000657EC();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v5 = *v1;
  sub_1000655F4();
  *v6 = v5;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = swift_task_alloc();
    *(v3 + 64) = v9;
    *v9 = v5;
    v9[1] = sub_1000B6648;

    return sub_1000B7470();
  }
}

uint64_t sub_1000B6648()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;
  *(v2 + 72) = v0;

  if (v0)
  {
    v5 = sub_1000B68A8;
  }

  else
  {
    v5 = sub_1000B6754;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000B6754()
{
  sub_10006ECA0();
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944(&qword_1006C9810);
  }

  v1 = type metadata accessor for Logger();
  sub_100097D98(v1, qword_1006CBFA0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (sub_100077680(v3))
  {
    v4 = *(v0 + 80);
    v5 = sub_100053F78();
    v6 = sub_100053F60();
    *v5 = 136315138;
    if (v4)
    {
      v7 = 1163219540;
    }

    else
    {
      v7 = 0x45534C4146;
    }

    v8 = sub_100052F7C(v7);

    *(v5 + 4) = v8;
    sub_100077394();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_100044850(v6);
    sub_10007756C();
    sub_1000488AC(v5);
  }

  sub_10006574C();

  return v14();
}

uint64_t sub_1000B68A8()
{
  sub_10006ECA0();
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944(&qword_1006C9810);
  }

  v0 = type metadata accessor for Logger();
  sub_100097D98(v0, qword_1006CBFA0);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100053F78();
    v8 = sub_100053F60();
    *v3 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v5 = sub_100052F7C(v4);

    *(v3 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to update config: %s", v3, 0xCu);
    sub_100044850(v8);
    sub_1000488AC(v8);
    sub_100077500();
  }

  else
  {
  }

  sub_10006574C();

  return v6();
}

uint64_t sub_1000B6A64()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000B6AFC;

  return sub_1000B80CC();
}

uint64_t sub_1000B6AFC()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

uint64_t sub_1000B6BF0()
{
  sub_1000657D4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1000B6AFC;

  return sub_1000B7470();
}

uint64_t sub_1000B6C88(uint64_t a1)
{
  v28 = a1;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30, v1, v2);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v31 = *(v4 - 8);
  v32 = v4;
  __chkstk_darwin(v4, v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000443DC(&qword_1006CC160);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9, v12, v13);
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14, v16, v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000591B0(0, &qword_1006CC440, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v19, enum case for DispatchQoS.QoSClass.default(_:), v14);
  v20 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v19, v14);
  (*(v10 + 16))(&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v9);
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = swift_allocObject();
  (*(v10 + 32))(v22 + v21, &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1000BA5E0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100069F68;
  aBlock[3] = &unk_100694630;
  v23 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_1000BA640(&qword_1006CA890);
  sub_1000443DC(&qword_1006CA898);
  sub_1000BA684(&qword_1006CA8A0);
  v25 = v29;
  v24 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v33 + 8))(v25, v24);
  (*(v31 + 8))(v8, v32);
}

uint64_t sub_1000B70E8()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGCopyAnswer();

  if (v1)
  {
    swift_dynamicCast();
  }

  sub_1000443DC(&qword_1006CC160);
  return CheckedContinuation.resume(returning:)();
}

id ASDConfigurationManager.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC3asd23ASDConfigurationManager_notificationCenter] removeObserver:*&v0[OBJC_IVAR____TtC3asd23ASDConfigurationManager_updateObservationToken]];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000B729C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  swift_defaultActor_initialize();
  *(v7 + 152) = [objc_opt_self() defaultCenter];
  *(v7 + 160) = 0;
  *(v7 + 168) = xmmword_1005CE390;
  v13 = [objc_opt_self() standardUserDefaults];
  *(v7 + 184) = v13;
  sub_1000443DC(&qword_1006CA138);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CB870;
  strcpy((inited + 32), "asdConfigData");
  *(inited + 46) = -4864;
  *(inited + 72) = &type metadata for Data;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_100046D38(a1, a2);
  sub_100046D38(a1, a2);
  v15 = v13;
  Dictionary.init(dictionaryLiteral:)();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v15 registerDefaults:isa];

  sub_1000448B0(a1, a2);
  sub_1000448B0(a1, a2);
  *(v7 + 120) = a5;
  *(v7 + 128) = a6;
  *(v7 + 112) = a7;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  return v7;
}

uint64_t sub_1000B7470()
{
  v1[2] = v0;
  v2 = type metadata accessor for Date();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7548, v0, 0);
}

uint64_t sub_1000B7548()
{
  sub_100068324();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_1000500FC(*(*(v0 + 16) + 184));
  Date.init(timeIntervalSinceReferenceDate:)();
  static Date.+ infix(_:_:)();
  Date.init()();
  sub_100065A4C();
  v4 = static Date.< infix(_:_:)();
  *(v0 + 96) = v4 & 1;
  v5 = *(v2 + 8);
  *(v0 + 64) = v5;
  *(v0 + 72) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = sub_100081220();
  (v5)(v6);
  if (v4)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944(&qword_1006C9810);
    }

    v7 = type metadata accessor for Logger();
    sub_100097D98(v7, qword_1006CBFA0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (sub_100077680(v9))
    {
      v10 = sub_1000541D8();
      *v10 = 0;
      sub_100077394();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      sub_1000488AC(v10);
    }

    v16 = swift_task_alloc();
    *(v0 + 80) = v16;
    *v16 = v0;
    v16[1] = sub_1000B7738;

    return sub_1000B80CC();
  }

  else
  {
    v18 = sub_1000BB9E4();
    v19(v18);

    v20 = sub_1000BBB74();

    return v21(v20);
  }
}

uint64_t sub_1000B7738()
{
  sub_1000657EC();
  v2 = *v1;
  sub_1000773D4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_1000B78D4;
  }

  else
  {
    v6 = sub_1000B785C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1000B785C()
{
  sub_1000657EC();
  v0 = sub_1000BB9E4();
  v1(v0);

  v2 = sub_1000BBB74();

  return v3(v2);
}

uint64_t sub_1000B78D4()
{
  sub_1000657EC();
  v1 = sub_1000BB9E4();
  v2(v1);

  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_1000B7958()
{
  if (*(v0 + 176))
  {

    sub_1000443DC(&unk_1006CB550);
    Task.cancel()();
  }

  *(v0 + 176) = 0;

  *(v0 + 168) = -1;
  return result;
}

uint64_t sub_1000B79D4()
{
  v1 = sub_1000443DC(&qword_1006C9E20);
  result = __chkstk_darwin(v1 - 8, v2, v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 176))
  {

    sub_1000443DC(&unk_1006CB550);
    Task.cancel()();
  }

  v7 = *(v0 + 168);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    if (v9 >= 10)
    {
      v9 = 10;
    }

    *(v0 + 168) = v9;
    v10 = type metadata accessor for TaskPriority();
    sub_1000485F8(v6, 1, 1, v10);
    v11 = sub_1000BA684(&unk_1006CC140);
    v12 = swift_allocObject();
    v12[2] = v0;
    v12[3] = v11;
    v12[4] = v0;
    swift_retain_n();
    *(v0 + 176) = sub_1000B078C();
  }

  return result;
}

uint64_t sub_1000B7B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = type metadata accessor for ContinuousClock();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v4[5] = swift_task_alloc();

  return _swift_task_switch(sub_1000B7C18, a4, 0);
}

uint64_t sub_1000B7C18()
{
  sub_100068324();
  sub_1000B809C(v2);
  static Duration.< infix(_:_:)();
  static Clock<>.continuous.getter();
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1000B7D68;
  v4 = sub_100065A4C();

  return sub_1000B9EB0(v4, v5, 0, 0, 1);
}

uint64_t sub_1000B7D68()
{
  sub_1000657EC();
  v2 = *v1;
  v3 = *v1;
  sub_1000655F4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[7] = v0;

  v6 = v2[5];
  v7 = v2[4];
  v8 = v2[3];
  if (v0)
  {
    v9 = v3[2];
    (*(v7 + 8))(v6, v8);

    return _swift_task_switch(sub_1000B8040, v9, 0);
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v10 = swift_task_alloc();
    v3[8] = v10;
    *v10 = v5;
    v10[1] = sub_1000B7F34;

    return sub_1000B80CC();
  }
}

uint64_t sub_1000B7F34()
{
  sub_1000657EC();
  v1 = *v0;
  sub_1000655F4();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000B8040()
{
  sub_1000657D4();

  sub_10006574C();

  return v0();
}

uint64_t sub_1000B80CC()
{
  v1[15] = v0;
  v2 = type metadata accessor for Date();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v3 = type metadata accessor for HTTPStatusCode();
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = sub_1000443DC(&qword_1006CC110);
  v1[23] = swift_task_alloc();
  sub_1000443DC(&qword_1006CC118);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v1[29] = v4;
  v1[30] = *(v4 - 8);
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();

  return _swift_task_switch(sub_1000B8318, v0, 0);
}

void sub_1000B8318()
{
  v1 = *(v0 + 120);
  if (*(v1 + 160) == 1)
  {
    if (qword_1006C9810 != -1)
    {
      sub_1000BB944(&qword_1006C9810);
    }

    v2 = type metadata accessor for Logger();
    sub_100097D98(v2, qword_1006CBFA0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (sub_100077680(v4))
    {
      v5 = sub_1000541D8();
      *v5 = 0;
      sub_100077394();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      sub_1000488AC(v5);
    }

    sub_1000443DC(&qword_1006CC120);
    sub_1000BB964();
    sub_1000BA684(v11);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_10006574C();
    sub_10006592C();

    __asm { BRAA            X1, X16 }
  }

  *(v1 + 160) = 1;
  v14 = swift_task_alloc();
  *(v0 + 264) = v14;
  *v14 = v0;
  v14[1] = sub_1000B85E8;
  sub_10006592C();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1000B85E8()
{
  sub_1000657D4();
  v1 = *(*v0 + 120);
  v2 = *v0;
  sub_1000655F4();
  *v3 = v2;

  return _swift_task_switch(sub_1000B8718, v1, 0);
}

uint64_t sub_1000B8718()
{
  if (qword_1006C9810 != -1)
  {
    sub_1000BB944(&qword_1006C9810);
  }

  v1 = type metadata accessor for Logger();
  v2 = sub_100046E6C(v1, qword_1006CBFA0);
  v0[34] = v2;
  v3 = sub_100047504();
  v4(v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  if (v7)
  {
    sub_100053F78();
    v21 = sub_1000BBA6C();
    *v2 = 136315138;
    sub_1000BA640(&unk_1006CC138);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = *(v8 + 8);
    v11 = sub_10007B3BC();
    v10(v11);
    v12 = sub_100052F7C(v9);

    *(v2 + 4) = v12;
    sub_100097C54(&_mh_execute_header, v13, v14, "Requesting config with request: %s");
    sub_100044850(v21);
    sub_1000488AC(v21);
    sub_10007756C();
  }

  else
  {

    v10 = *(v8 + 8);
    v16 = sub_10007B3BC();
    v15 = (v10)(v16);
  }

  v0[35] = v10;
  v0[36] = (*(v0[15] + 136))(v15);
  v17 = swift_task_alloc();
  v0[37] = v17;
  *v17 = v0;
  v17[1] = sub_1000B8978;
  sub_10006592C();

  return NSURLSession.data(for:delegate:)(v18);
}

uint64_t sub_1000B8978()
{
  sub_1000657EC();
  v2 = *v1;
  sub_1000773D4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 304) = v4;
  *(v2 + 312) = v5;
  *(v2 + 320) = v6;
  *(v2 + 328) = v0;

  if (v0)
  {
    v7 = *(v2 + 120);
    v8 = sub_1000B9418;
  }

  else
  {
    v9 = *(v2 + 120);

    v8 = sub_1000B8AE8;
    v7 = v9;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000B8AE8()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    sub_1000A93F4([v1 statusCode], v0[28]);
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v0[27];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[19];
  v7 = v0[20];
  sub_1000485F8(v0[28], v2, 1, v6);
  (*(v7 + 104))(v3, enum case for HTTPStatusCode.httpSuccess(_:), v6);
  sub_1000485F8(v3, 0, 1, v6);
  v8 = *(v5 + 48);
  v9 = sub_100047504();
  sub_1000BA340(v9, v10, &qword_1006CC118);
  sub_1000BA340(v3, v4 + v8, &qword_1006CC118);
  v11 = sub_1000BBAE0();
  if (sub_100046EA4(v11, v12, v6) == 1)
  {
    v13 = v0[19];
    sub_100053BE8(v0[27], &qword_1006CC118);
    if (sub_100046EA4(v4 + v8, 1, v13) == 1)
    {
      sub_100053BE8(v0[23], &qword_1006CC118);
      goto LABEL_15;
    }
  }

  else
  {
    v14 = v0[19];
    sub_1000BA340(v0[23], v0[26], &qword_1006CC118);
    v15 = sub_100046EA4(v4 + v8, 1, v14);
    v16 = v0[26];
    v17 = v0[27];
    if (v15 != 1)
    {
      v6 = v0[23];
      v36 = v0[20];
      v35 = v0[21];
      v37 = v0[19];
      (*(v36 + 32))(v35, v4 + v8, v37);
      sub_1000BA640(&unk_1006CC130);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v36 + 8);
      v39(v35, v37);
      sub_100053BE8(v17, &qword_1006CC118);
      v39(v16, v37);
      sub_100053BE8(v6, &qword_1006CC118);
      if (v38)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    v18 = v0[20];
    sub_100053BE8(v0[27], &qword_1006CC118);
    v6 = v18 + 8;
    v19 = sub_100047504();
    v20(v19);
  }

  sub_100053BE8(v0[23], &qword_1006CC110);
LABEL_10:
  v21 = v0[28];
  if (sub_100046EA4(v21, 1, v0[19]) != 1)
  {
    sub_1000BA340(v21, v0[25], &qword_1006CC118);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[25];
    if (v24)
    {
      v26 = v0[24];
      v27 = v0[19];
      sub_100053F78();
      v28 = sub_1000BBA6C();
      *v6 = 136315138;
      v29 = sub_10007B3BC();
      sub_1000BA340(v29, v30, v31);
      v32 = sub_100046EA4(v26, 1, v27);
      v33 = v0[24];
      if (v32 == 1)
      {
        sub_100053BE8(v0[24], &qword_1006CC118);
        v34 = 7104878;
      }

      else
      {
        v77 = v0[19];
        v78 = v0[20];
        v34 = HTTPStatusCode.description.getter();
        (*(v78 + 8))(v33, v77);
      }

      sub_100053BE8(v0[25], &qword_1006CC118);
      v79 = sub_100052F7C(v34);

      *(v6 + 4) = v79;
      sub_100097C54(&_mh_execute_header, v80, v81, "Config update response not success: %s");
      sub_100044850(v28);
      sub_100077500();
      sub_10007756C();
    }

    else
    {

      sub_100053BE8(v25, &qword_1006CC118);
    }

    v83 = v0[39];
    v82 = v0[40];
    v84 = v0[38];
    v91 = v0[32];
    v92 = v0[35];
    v90 = v0[29];
    v73 = v0[28];
    sub_1000B79D4();
    sub_1000443DC(&qword_1006CC120);
    sub_1000BB964();
    v86 = sub_1000BA684(v85);
    sub_1000BBBA0(v86);
    sub_1000BA340(v73, v87, &qword_1006CC118);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000448B0(v84, v83);
LABEL_26:
    v92(v91, v90);
    sub_100053BE8(v73, &qword_1006CC118);
    sub_1000BBA94();

    sub_10006574C();
    goto LABEL_27;
  }

LABEL_15:
  v40 = objc_opt_self();
  sub_100047504();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[13] = 0;
  v42 = [v40 JSONObjectWithData:isa options:0 error:v0 + 13];

  v43 = v0[13];
  if (!v42)
  {
    v63 = v43;
    v64 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = sub_100053F78();
      v93 = sub_100053F60();
      *v67 = 136315138;
      swift_getErrorValue();
      v68 = Error.localizedDescription.getter();
      v69 = sub_100052F7C(v68);

      *(v67 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v65, v66, "Config decode error: %s", v67, 0xCu);
      sub_100044850(v93);
      sub_1000488AC(v93);
      sub_100077500();
    }

    v71 = v0[39];
    v70 = v0[40];
    v72 = v0[38];
    v91 = v0[32];
    v92 = v0[35];
    v90 = v0[29];
    v73 = v0[28];
    *(v0[15] + 168) = 10;
    sub_1000B79D4();
    sub_1000443DC(&qword_1006CC120);
    sub_1000BB964();
    v75 = sub_1000BA684(v74);
    sub_1000BBBA0(v75);
    *v76 = v64;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000448B0(v72, v71);
    goto LABEL_26;
  }

  v45 = v0[38];
  v44 = v0[39];
  v47 = v0[17];
  v46 = v0[18];
  v48 = v0[16];
  v49 = v43;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100044850(v0 + 2);
  sub_10005092C(v45, v44);
  v50 = [objc_opt_self() standardUserDefaults];
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v52 = v51;
  (*(v47 + 8))(v46, v48);
  sub_1000509C0(v52);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = sub_1000541D8();
    *v55 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "Config update completed", v55, 2u);
    sub_1000488AC(v55);
  }

  v57 = v0[39];
  v56 = v0[40];
  v58 = v0[38];
  v89 = v0[35];
  v59 = v0[28];
  v60 = v0[15];

  sub_1000B7958();
  sub_1000B9650();

  sub_1000448B0(v58, v57);
  v61 = sub_100081220();
  v89(v61);
  sub_100053BE8(v59, &qword_1006CC118);
  *(v60 + 160) = 0;

  sub_10006574C();
LABEL_27:

  return v62();
}

uint64_t sub_1000B9418()
{
  v1 = *(v0 + 328);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    sub_100053F78();
    v15 = sub_1000BBA6C();
    *v1 = 136315138;
    swift_getErrorValue();
    v4 = Error.localizedDescription.getter();
    v5 = sub_100052F7C(v4);

    *(v1 + 4) = v5;
    sub_100097C54(&_mh_execute_header, v6, v7, "Config update request failed: %s");
    sub_100044850(v15);
    sub_100077500();
    sub_10007756C();
  }

  v8 = *(v0 + 328);
  v9 = *(v0 + 280);
  sub_1000B79D4();
  sub_1000443DC(&qword_1006CC120);
  sub_1000BB964();
  sub_1000BA684(v10);
  swift_allocError();
  *v11 = v8;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v12 = sub_100081220();
  v9(v12);
  sub_1000BBA94();

  sub_10006574C();

  return v13();
}

id sub_1000B9650()
{
  v1 = *(v0 + 152);
  if (qword_1006C9808 != -1)
  {
    swift_once();
  }

  v2 = qword_1006DF840;

  return [v1 postNotificationName:v2 object:0];
}

uint64_t sub_1000B96C8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000B9710()
{
  v0 = sub_1000B96C8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000B9800(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B9820(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B9874(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_1000B98F0()
{
  result = qword_1006CC088;
  if (!qword_1006CC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC088);
  }

  return result;
}

unint64_t sub_1000B9944()
{
  result = qword_1006CC090;
  if (!qword_1006CC090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC090);
  }

  return result;
}

unint64_t sub_1000B9998()
{
  result = qword_1006CC098;
  if (!qword_1006CC098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC098);
  }

  return result;
}

unint64_t sub_1000B99EC(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v5 = v4;
    sub_1000471A4(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000B9A68()
{
  result = qword_1006CC0B0;
  if (!qword_1006CC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0B0);
  }

  return result;
}

unint64_t sub_1000B9ABC()
{
  result = qword_1006CC0C8;
  if (!qword_1006CC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0C8);
  }

  return result;
}

unint64_t sub_1000B9B78(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v5 = v4;
    sub_1000471A4(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000B9BF4()
{
  result = qword_1006CC0D8;
  if (!qword_1006CC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0D8);
  }

  return result;
}

unint64_t sub_1000B9C48()
{
  result = qword_1006CC0E0;
  if (!qword_1006CC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0E0);
  }

  return result;
}

unint64_t sub_1000B9C9C()
{
  result = qword_1006CC0F0;
  if (!qword_1006CC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC0F0);
  }

  return result;
}

unint64_t sub_1000B9CF0()
{
  result = qword_1006CC100;
  if (!qword_1006CC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC100);
  }

  return result;
}

uint64_t sub_1000B9D54()
{
  sub_1000657D4();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = sub_10006EB38(v4);
  *v5 = v6;
  v5[1] = sub_100065570;

  return sub_1000B55F4(v2, v3);
}

uint64_t sub_1000B9DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B9E08()
{
  sub_100068324();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10006EB38(v3);
  *v4 = v5;
  v6 = sub_1000BB9A0(v4);

  return sub_1000B6448(v6, v7, v1, v2);
}

uint64_t sub_1000B9EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_1000B9FB0, 0, 0);
}

uint64_t sub_1000B9FB0()
{
  sub_10006ECA0();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1000BA640(&unk_1006CC148);
  sub_100065A4C();
  dispatch thunk of Clock.now.getter();
  sub_1000BA640(&unk_1006CC150);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1000BA138;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_1000BA138()
{
  sub_100068324();
  sub_1000657F8();
  v3 = v2;
  sub_1000773D4();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_1000655F4();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (v0)
  {

    return _swift_task_switch(sub_1000BA2DC, 0, 0);
  }

  else
  {

    sub_10006574C();

    return v11();
  }
}

uint64_t sub_1000BA2DC()
{
  sub_1000657D4();

  sub_10006574C();

  return v0();
}

uint64_t sub_1000BA340(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1000443DC(a3);
  sub_100053F48();
  v4 = sub_100047504();
  v5(v4);
  return a2;
}

uint64_t sub_1000BA3A4(uint64_t a1)
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1000BA3F0()
{
  sub_1000657EC();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = sub_10006EB38(v3);
  *v4 = v5;
  v6 = sub_1000BB9A0(v4);

  return sub_1000B7B54(v6, v7, v1, v2);
}

uint64_t sub_1000BA48C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA4C4()
{
  sub_1000657EC();
  v0 = swift_task_alloc();
  v1 = sub_10006EB38(v0);
  *v1 = v2;
  sub_1000BB9A0(v1);

  return sub_1000B6178();
}

uint64_t sub_1000BA558()
{
  sub_1000443DC(&qword_1006CC160);
  sub_100053F48();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000BA5E0()
{
  v0 = sub_1000443DC(&qword_1006CC160);
  sub_100077674(v0);

  return sub_1000B70E8();
}

unint64_t sub_1000BA640(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BA684(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    sub_1000471A4(v3);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BA6C4()
{
  result = qword_1006CC168;
  if (!qword_1006CC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC168);
  }

  return result;
}

unint64_t sub_1000BA718(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    v5 = v4;
    sub_1000471A4(v3);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BA780()
{
  result = qword_1006CC188;
  if (!qword_1006CC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC188);
  }

  return result;
}

uint64_t sub_1000BA828(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA84C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 96))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BA8AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1000BA92C(uint64_t a1)
{
  v1 = sub_1000BA9D4();
  if (v2 <= 0x3F)
  {
    sub_1000BAA30();
    if (v4 > 0x3F)
    {
      return v3;
    }

    else
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return v1;
}

unint64_t sub_1000BA9D4()
{
  result = qword_1006CC230;
  if (!qword_1006CC230)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1006CC230);
  }

  return result;
}

void sub_1000BAA30()
{
  if (!qword_1006CC238)
  {
    sub_1000BAA78(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1006CC238);
    }
  }
}

void sub_1000BAA78(uint64_t a1)
{
  if (!qword_1006CC240)
  {
    type metadata accessor for HTTPStatusCode();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006CC240);
    }
  }
}

uint64_t getEnumTagSinglePayload for ASDConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ASDConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000BAC24);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000BAC5C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000BAC78(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BACB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000BAD18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_1000BAD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BAD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASDConfig.ASPushNotificationsConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ASDConfig.ASPushNotificationsConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000BAF24);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000BAF60()
{
  result = qword_1006CC248;
  if (!qword_1006CC248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC248);
  }

  return result;
}

unint64_t sub_1000BAFB8()
{
  result = qword_1006CC250;
  if (!qword_1006CC250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC250);
  }

  return result;
}

unint64_t sub_1000BB010()
{
  result = qword_1006CC258;
  if (!qword_1006CC258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC258);
  }

  return result;
}

unint64_t sub_1000BB064()
{
  result = qword_1006CC268;
  if (!qword_1006CC268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC268);
  }

  return result;
}

unint64_t sub_1000BB0B8()
{
  result = qword_1006CC278;
  if (!qword_1006CC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC278);
  }

  return result;
}

unint64_t sub_1000BB10C()
{
  result = qword_1006CC288;
  if (!qword_1006CC288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC288);
  }

  return result;
}

unint64_t sub_1000BB160(uint64_t a1)
{
  result = sub_1000BBA88(a1);
  if (!result)
  {
    sub_1000471A4(&qword_1006CA018);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000BB1C0()
{
  result = qword_1006CC2B0;
  if (!qword_1006CC2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2B0);
  }

  return result;
}

unint64_t sub_1000BB214()
{
  result = qword_1006CC2B8;
  if (!qword_1006CC2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2B8);
  }

  return result;
}

unint64_t sub_1000BB2A0()
{
  result = qword_1006CC2C8;
  if (!qword_1006CC2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2C8);
  }

  return result;
}

_BYTE *sub_1000BB324(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000BB3F0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000BB428(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000BB4C4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000BB500()
{
  result = qword_1006CC2D0;
  if (!qword_1006CC2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2D0);
  }

  return result;
}

unint64_t sub_1000BB558()
{
  result = qword_1006CC2D8;
  if (!qword_1006CC2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2D8);
  }

  return result;
}

unint64_t sub_1000BB5B0()
{
  result = qword_1006CC2E0;
  if (!qword_1006CC2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2E0);
  }

  return result;
}

unint64_t sub_1000BB608()
{
  result = qword_1006CC2E8;
  if (!qword_1006CC2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2E8);
  }

  return result;
}

unint64_t sub_1000BB660()
{
  result = qword_1006CC2F0;
  if (!qword_1006CC2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2F0);
  }

  return result;
}

unint64_t sub_1000BB6B8()
{
  result = qword_1006CC2F8;
  if (!qword_1006CC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC2F8);
  }

  return result;
}

unint64_t sub_1000BB710()
{
  result = qword_1006CC300;
  if (!qword_1006CC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC300);
  }

  return result;
}

unint64_t sub_1000BB768()
{
  result = qword_1006CC308;
  if (!qword_1006CC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC308);
  }

  return result;
}

unint64_t sub_1000BB7C0()
{
  result = qword_1006CC310;
  if (!qword_1006CC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC310);
  }

  return result;
}

unint64_t sub_1000BB818()
{
  result = qword_1006CC318;
  if (!qword_1006CC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC318);
  }

  return result;
}

unint64_t sub_1000BB870()
{
  result = qword_1006CC320;
  if (!qword_1006CC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC320);
  }

  return result;
}

unint64_t sub_1000BB8C8()
{
  result = qword_1006CC328;
  if (!qword_1006CC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC328);
  }

  return result;
}

uint64_t sub_1000BB944(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000BBA0C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000BBA50(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

uint64_t sub_1000BBA6C()
{

  return swift_slowAlloc();
}

uint64_t sub_1000BBA94()
{
  *(v0 + 160) = 0;
}

uint64_t sub_1000BBB10(uint64_t a1)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

void sub_1000BBB2C()
{
  v2 = *(v0 + 16) + 1;

  sub_1000631BC(0, v2, 1, v0);
}

uint64_t sub_1000BBB50@<X0>(uint64_t a1@<X8>)
{

  return sub_1000BA340(v2, v1 - a1, v3);
}

uint64_t sub_1000BBBA0(uint64_t a1)
{

  return swift_allocError();
}

uint64_t sub_1000BBC10()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC330);
  sub_100046E6C(v0, qword_1006CC330);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BBC94()
{
  v1 = v0;
  v9 = 0;
  v2 = *(v0 + 24);
  sub_10006BF14();
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  sub_10006BF14();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000BC934;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1000BC958;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBBE8;
  aBlock[3] = &unk_100694C70;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void sub_1000BBDF0(id *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v4 = *a1;
  *a1 = v2;
  v3 = v2;
}

uint64_t sub_1000BBE34(void *a1)
{
  v3 = type metadata accessor for DispatchQoS();
  sub_10004EAE0();
  v5 = v4;
  __chkstk_darwin(v6, v7, v8);
  sub_10004EAF4();
  v11 = v10 - v9;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  sub_10004EAE0();
  v14 = v13;
  __chkstk_darwin(v15, v16, v17);
  sub_10004EAF4();
  v20 = v19 - v18;
  static DispatchWorkItemFlags.barrier.getter();
  sub_10006BF14();
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = a1;
  aBlock[4] = sub_1000BC8E0;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100069F68;
  aBlock[3] = &unk_100694BF8;
  v22 = _Block_copy(aBlock);
  v23 = a1;

  static DispatchQoS.unspecified.getter();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v5 + 8))(v11, v3);
  (*(v14 + 8))(v20, v12);
}

void sub_1000BC03C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  v2 = a2;
}

void *sub_1000BC07C()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  sub_10004EAE0();
  v4 = v3;
  __chkstk_darwin(v5, v6, v7);
  sub_10004EAF4();
  v10 = v9 - v8;
  v11 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v11 - 8, v12, v13);
  sub_10004EAF4();
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v14 - 8, v15, v16);
  sub_10004EAF4();
  v1[2] = [objc_allocWithZone(CNContactStore) init];
  sub_1000591B0(0, &qword_1006CC440, OS_dispatch_queue_ptr);
  static OS_dispatch_queue.Attributes.concurrent.getter();
  static DispatchQoS.unspecified.getter();
  (*(v4 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
  v1[3] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v1[4] = 0;
  sub_1000BC4E8();
  v17 = [objc_opt_self() defaultCenter];
  v18 = CNContactStoreMeContactDidChangeNotification;
  v19 = [objc_opt_self() mainQueue];
  aBlock[4] = sub_1000BC980;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000C1C04;
  aBlock[3] = &unk_100694C98;
  v20 = _Block_copy(aBlock);

  v21 = [v17 addObserverForName:v18 object:0 queue:v19 usingBlock:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();

  return v1;
}

void sub_1000BC354()
{
  if (qword_1006C9820 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100046E6C(v0, qword_1006CC330);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Me Contact changed", v3, 2u);
  }

  if ((sub_1000BC4E8() & 1) == 0)
  {
    oslog = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Ignoring notification since values that we care about did not change", v5, 2u);
    }
  }
}

uint64_t sub_1000BC4E8()
{
  sub_1000443DC(&qword_1006CBEB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1005CE040;
  *(v1 + 32) = CNContactGivenNameKey;
  *(v1 + 40) = CNContactFamilyNameKey;
  *(v1 + 48) = CNContactPhoneNumbersKey;
  *(v1 + 56) = CNContactEmailAddressesKey;
  *(v1 + 64) = CNContactPostalAddressesKey;
  v2 = *(v0 + 16);
  v3 = CNContactGivenNameKey;
  v4 = CNContactFamilyNameKey;
  v5 = CNContactPhoneNumbersKey;
  v6 = CNContactEmailAddressesKey;
  v7 = CNContactPostalAddressesKey;
  sub_1000443DC(&qword_1006CBEA0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = 0;
  v9 = [v2 _crossPlatformUnifiedMeContactWithKeysToFetch:isa error:&v25];

  if (v9)
  {
    v10 = v25;
    v11 = v9;
    v12 = sub_1000BBC94();
    if (!v12 || (v13 = v12, sub_1000591B0(0, &qword_1006CBEA8, CNContact_ptr), v14 = v11, v15 = static NSObject.== infix(_:_:)(), v14, v13, (v15 & 1) == 0))
    {
      sub_1000BBE34(v9);

      return 1;
    }
  }

  else
  {
    v17 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1006C9820 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100046E6C(v18, qword_1006CC330);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136315138;
      swift_getErrorValue();
      v23 = Error.localizedDescription.getter();
      v24 = sub_100052F7C(v23);

      *(v21 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v19, v20, "Ignoring error getting MeContact %s", v21, 0xCu);
      sub_100044850(v22);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_1000BC84C()
{
  sub_1000BC81C();

  return _swift_deallocClassInstance(v0, 40, 7);
}

uint64_t sub_1000BC8A4()
{

  sub_10006BF14();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_1000BC8E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BC900()
{

  sub_10006BF14();

  return _swift_deallocObject(v0, v1, v2);
}

id sub_1000BC998()
{
  v0 = type metadata accessor for Logger();
  __chkstk_darwin(v0 - 8, v1, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  v5 = [objc_opt_self() sharedInstance];
  v6 = objc_allocWithZone(type metadata accessor for AssessmentPayloadStore(0));
  result = sub_1000BCB08(v4, v5);
  static AssessmentPayloadStore.shared = result;
  return result;
}

uint64_t *AssessmentPayloadStore.shared.unsafeMutableAddressor()
{
  if (qword_1006C9828 != -1)
  {
    sub_1000BEF0C(&qword_1006C9828);
  }

  return &static AssessmentPayloadStore.shared;
}

id static AssessmentPayloadStore.shared.getter()
{
  if (qword_1006C9828 != -1)
  {
    sub_1000BEF0C(&qword_1006C9828);
  }

  v1 = static AssessmentPayloadStore.shared;

  return v1;
}

id sub_1000BCB08(uint64_t a1, uint64_t a2)
{
  sub_1000BEEC8();
  Logger.init(subsystem:category:)();
  v5 = OBJC_IVAR____TtC3asd22AssessmentPayloadStore_logger;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR____TtC3asd22AssessmentPayloadStore_cacheManager] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for AssessmentPayloadStore(0);
  v8 = objc_msgSendSuper2(&v10, "init");
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t sub_1000BCBFC(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return _swift_task_switch(sub_1000BCC1C, 0, 0);
}

uint64_t sub_1000BCC1C()
{
  v1 = *(v0[19] + OBJC_IVAR____TtC3asd22AssessmentPayloadStore_cacheManager);
  sub_100078348();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;

  v0[2] = v0;
  v0[3] = sub_1000BCD78;
  v3 = swift_continuation_init();
  v0[17] = sub_1000443DC(&qword_1006CC4B0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000BCF40;
  v0[13] = &unk_100694D00;
  v0[14] = v3;
  [v1 eWV8dPJG0p0nc2lk:isa completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000BCD78()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 168) = v4;
  if (v4)
  {
    v5 = sub_1000BCED8;
  }

  else
  {
    v5 = sub_1000BCE7C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BCE7C()
{
  sub_1000657D4();

  sub_10006574C();

  return v1();
}

uint64_t sub_1000BCED8()
{
  sub_1000657EC();
  v1 = *(v0 + 160);
  swift_willThrow();

  sub_10006574C();

  return v2();
}

uint64_t sub_1000BCF40(uint64_t a1, void *a2)
{
  v3 = sub_100044728((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_1000C4464();
  }

  else
  {
    v6 = *v3;

    return j__swift_continuation_throwingResume(v6);
  }
}

uint64_t AssessmentPayloadStore.fetch(for:withBindings:)()
{
  sub_1000657D4();
  v1[21] = v2;
  v1[22] = v0;
  v1[19] = v3;
  v1[20] = v4;
  type metadata accessor for AssessmentPayloadFilter(0);
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for AssessmentPayload(0);
  v1[24] = v5;
  v1[25] = *(v5 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000BD0A8, 0, 0);
}

uint64_t sub_1000BD0A8()
{
  v1 = *(v0[22] + OBJC_IVAR____TtC3asd22AssessmentPayloadStore_cacheManager);
  v2 = String._bridgeToObjectiveC()();
  v0[28] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000BD1E4;
  v3 = swift_continuation_init();
  v0[17] = sub_1000443DC(&qword_1006CC458);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000BD8A8;
  v0[13] = &unk_100694CC0;
  v0[14] = v3;
  [v1 naB577x5bWPDZyct:v2 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000BD1E4()
{
  sub_1000657D4();
  sub_1000657F8();
  sub_1000773D4();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 232) = v4;
  if (v4)
  {
    v5 = sub_1000BD7AC;
  }

  else
  {
    v5 = sub_1000BD2E8;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1000BD2E8()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 144);

  sub_1000BD958(v2 + OBJC_IVAR____TtC3asd22AssessmentPayloadStore_assessmentPayloadFilter, v1);
  v4 = sub_1000582D8(v3);
  if (v4)
  {
    v5 = v4;
    sub_1000BE014(0, v4 & ~(v4 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v7 = *(v0 + 200);
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      sub_1000788B8(v8, *(v0 + 208));
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000BE014(v9 > 1, v10 + 1, 1);
      }

      v11 = *(v0 + 208);
      ++v6;
      _swiftEmptyArrayStorage[2] = v10 + 1;
      sub_1000BE064(v11, _swiftEmptyArrayStorage + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10);
    }

    while (v5 != v6);
  }

  *(v0 + 240) = _swiftEmptyArrayStorage;
  v12 = swift_task_alloc();
  *(v0 + 248) = v12;
  *v12 = v0;
  v12[1] = sub_1000BD4C4;
  v13 = *(v0 + 216);
  v14 = *(v0 + 168);

  sub_1000CFC40(v13, _swiftEmptyArrayStorage, v14);
}

uint64_t sub_1000BD4C4()
{
  sub_1000657EC();
  v2 = *v1;
  sub_1000773D4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 256) = v0;

  sub_1000BE120(*(v2 + 184), type metadata accessor for AssessmentPayloadFilter);

  if (v0)
  {
    v5 = sub_1000BD830;
  }

  else
  {
    v5 = sub_1000BD620;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BD620()
{
  v1 = v0[32];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000BE0C8();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v1)
  {
    sub_1000BE120(v0[27], type metadata accessor for AssessmentPayload);

    sub_10006574C();

    return v4();
  }

  else
  {
    v6 = v2;
    v7 = v3;
    sub_1000BE120(v0[27], type metadata accessor for AssessmentPayload);

    v8 = v0[1];

    return v8(v6, v7);
  }
}

uint64_t sub_1000BD7AC()
{
  sub_1000657EC();
  v1 = *(v0 + 224);
  swift_willThrow();

  sub_10006574C();

  return v2();
}

uint64_t sub_1000BD830()
{
  sub_1000657EC();

  sub_10006574C();

  return v0();
}

uint64_t sub_1000BD8A8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_100044728((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1000C4464();
  }

  else
  {
    sub_1000BEE7C();
    v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return sub_1000C4460(v4, v7);
  }
}

uint64_t sub_1000BD958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayloadFilter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BDA54(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4[4] = v6;
  v4[5] = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  a4;
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1000BDB64;

  return AssessmentPayloadStore.fetch(for:withBindings:)();
}

uint64_t sub_1000BDB64(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  sub_1000657F8();
  v8 = v7;
  sub_1000773D4();
  *v9 = v8;
  v11 = *(v10 + 16);
  v12 = *v3;
  sub_1000773D4();
  *v13 = v12;

  if (v4)
  {
    v14 = _convertErrorToNSError(_:)();

    isa = 0;
    v16 = v14;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000448B0(a1, a2);
    v14 = 0;
    v16 = isa;
  }

  v17 = *(v8 + 24);
  (v17)[2](v17, isa, v14);

  _Block_release(v17);
  sub_10006574C();

  return v18();
}

id AssessmentPayloadStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AssessmentPayloadStore(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1000BDEA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BE57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BDEC4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BE674(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000BDEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BEF44();
  sub_1000BEACC(v4, v5, v6, v7, v8, v9, sub_100063638);
  *v3 = v10;
}

void sub_1000BDF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000BEF2C();
  sub_1000BEACC(v4, v5, v6, v7, v8, v9, sub_100063678);
  *v3 = v10;
}

char *sub_1000BDF84(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BE8D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BDFA4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BE9D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000BE064(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssessmentPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BE0C8()
{
  result = qword_1006CC468;
  if (!qword_1006CC468)
  {
    type metadata accessor for AssessmentPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC468);
  }

  return result;
}

uint64_t sub_1000BE120(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10007CB0C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t type metadata accessor for AssessmentPayloadStore(uint64_t a1)
{
  result = qword_1006CC4A0;
  if (!qword_1006CC4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BE1C8(uint64_t a1)
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

uint64_t sub_1000BE268()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BE2B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000BE378;

  return sub_1000BDA54(v2, v3, v5, v4);
}

uint64_t sub_1000BE378()
{
  sub_1000657D4();
  sub_1000657F8();
  v1 = *v0;
  sub_1000773D4();
  *v2 = v1;

  sub_10006574C();

  return v3();
}

char *sub_1000BE45C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BEC80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000BE47C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000BED7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1000BE49C(char a1, int64_t a2, char a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, int64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_7;
  }

  sub_1000655C0();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(a4 + 16);
    if (v9 <= v12)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      sub_1000443DC(a5);
      v14 = swift_allocObject();
      v15 = j__malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * v15 - 64;
      if (a1)
      {
LABEL_12:
        a6(a4 + 32, v12, v14 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v14 + 4, (a4 + 32), v12);
    goto LABEL_15;
  }

  if (v9 + 0x4000000000000000 >= 0)
  {
    sub_1000655B0();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1000BE57C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CA620);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_10006353C((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000BE674(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4C0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_100063650((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_1000443DC(&qword_1006CC4C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000BE7B0(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0)
  {
    v6 = a2;
    goto LABEL_7;
  }

  sub_1000655C0();
  if (v7 == v8)
  {
LABEL_7:
    v9 = *(a4 + 16);
    if (v6 <= v9)
    {
      v10 = *(a4 + 16);
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      sub_1000443DC(&qword_1006CA6A0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      *(v11 + 2) = v9;
      *(v11 + 3) = 2 * ((v12 - 32) / 104);
      if (a1)
      {
LABEL_12:
        sub_100063514((a4 + 32), v9, v11 + 32);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  if (v6 + 0x4000000000000000 >= 0)
  {
    sub_1000655B0();
    goto LABEL_7;
  }

  __break(1u);
}

char *sub_1000BE8D4(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4D0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_100063690((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000BE9D4(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4D8);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 64);
      if (v5)
      {
LABEL_13:
        sub_1000636B8((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1000BEACC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    sub_1000655C0();
    if (v12 != v13)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1000655B0();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  if (v11 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v11;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_1000443DC(a5);
  v16 = *(a6(0) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  v20 = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v20 - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_23;
  }

  v19[2] = v14;
  v19[3] = 2 * ((v20 - v18) / v17);
LABEL_18:
  v22 = *(a6(0) - 8);
  if (a1)
  {
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    a7(a4 + v23, v14, v19 + v23);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_1000BEC80(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CC4E0);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1000637D0((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1000BED7C(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_1000443DC(&qword_1006CA680);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_100063650((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000BEE7C()
{
  result = qword_1006CC4F0;
  if (!qword_1006CC4F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006CC4F0);
  }

  return result;
}

uint64_t sub_1000BEF0C(uint64_t a1)
{

  return swift_once();
}

void *sub_1000BEF5C()
{
  v1 = v0;
  sub_1000443DC(&qword_1006CC4F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005CC370;
  *(inited + 32) = 0x724565646F636564;
  *(inited + 40) = 0xEB00000000726F72;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:*v1];
  strcpy((inited + 56), "filterIgnored");
  *(inited + 70) = -4864;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithBool:*(v1 + 1)];
  sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
  v3 = Dictionary.init(dictionaryLiteral:)();
  if (v1[2])
  {
    v4 = sub_1000BFB60(0x79616C6564, 0xE500000000000000);
    if (v5)
    {
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *(v3 + 24);
      sub_1000443DC(&qword_1006CA8D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);

      v9 = *(*(v3 + 56) + 8 * v6);
      _NativeDictionary._delete(at:)();
    }
  }

  else
  {
    v10 = [objc_allocWithZone(NSNumber) initWithDouble:v1[1]];
    swift_isUniquelyReferenced_nonNull_native();
    sub_10006B088(v10, 0x79616C6564, 0xE500000000000000);
  }

  if (*(v1 + 4))
  {
    v11 = String._bridgeToObjectiveC()();
    swift_isUniquelyReferenced_nonNull_native();
    sub_10006B088(v11, 0x646E616D6D6F63, 0xE700000000000000);
  }

  else
  {
    v12 = sub_1000BFB60(0x646E616D6D6F63, 0xE700000000000000);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v3 + 24);
      sub_1000443DC(&qword_1006CA8D0);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16);

      v17 = *(*(v3 + 56) + 8 * v14);
      _NativeDictionary._delete(at:)();
    }
  }

  return v3;
}

unint64_t sub_1000BF244()
{
  type metadata accessor for ASAnalyticsEvent(0);
  sub_1000774D8();
  __chkstk_darwin(v1, v2, v3);
  sub_10004EAF4();
  v6 = v5 - v4;
  sub_1000BFA88(v0, v5 - v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0xD00000000000001DLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_10007700C(v6);
      return 0xD000000000000023;
    case 2:
      sub_10007700C(v6);
      goto LABEL_9;
    case 3:
      sub_10007700C(v6);
      goto LABEL_8;
    case 4:
      v9 = *(sub_1000443DC(&qword_1006CB718) + 48);
      type metadata accessor for UUID();
      sub_1000774D8();
      (*(v10 + 8))(v6 + v9);
LABEL_8:
      result = 0xD000000000000015;
      break;
    case 5:
LABEL_9:
      result = 0xD000000000000022;
      break;
    case 6:
      sub_10007700C(v6);
      result = 0xD000000000000027;
      break;
    case 7:
      return result;
    default:
      sub_10007700C(v6);
      result = 0xD000000000000019;
      break;
  }

  return result;
}

uint64_t sub_1000BF408()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4, v5);
  sub_10004EAF4();
  v8 = v7 - v6;
  type metadata accessor for ASAnalyticsEvent(0);
  sub_1000774D8();
  __chkstk_darwin(v9, v10, v11);
  sub_10004EAF4();
  v14 = v13 - v12;
  sub_1000BFA88(v1, v13 - v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000443DC(&qword_1006CC4F8);
      inited = swift_initStackObject();
      v34 = sub_1000C074C(inited, xmmword_1005CC370);

      sub_1000C0784();
      *(inited + 48) = v34;
      *(inited + 56) = v35 | 7;
      *(inited + 64) = v36;
      *(inited + 72) = UInt64._bridgeToObjectiveC()();
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      return Dictionary.init(dictionaryLiteral:)();
    case 2u:
      sub_1000443DC(&qword_1006CC4F8);
      v21 = swift_initStackObject();
      v22 = sub_1000C074C(v21, xmmword_1005CC370);

      sub_1000C0784();
      v21[3].n128_u64[0] = v22;
      v21[3].n128_u64[1] = v23;
      v21[4].n128_u64[0] = v24;
      v25 = String._bridgeToObjectiveC()();

      v21[4].n128_u64[1] = v25;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      return Dictionary.init(dictionaryLiteral:)();
    case 3u:
      sub_1000443DC(&qword_1006CC4F8);
      v26 = swift_initStackObject();
      *(v26 + 16) = xmmword_1005CC380;
      *(v26 + 32) = 1701869940;
      *(v26 + 40) = 0xE400000000000000;
      v27 = String._bridgeToObjectiveC()();

      *(v26 + 48) = v27;
      *(v26 + 56) = 0x646F43726F727265;
      *(v26 + 64) = 0xE900000000000065;
      *(v26 + 72) = Int._bridgeToObjectiveC()();
      *(v26 + 80) = 7761509;
      *(v26 + 88) = 0xE300000000000000;
      v28 = String._bridgeToObjectiveC()();

      *(v26 + 96) = v28;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      return Dictionary.init(dictionaryLiteral:)();
    case 4u:
      v17 = sub_1000443DC(&qword_1006CB718);
      (*(v3 + 32))(v8, v14 + *(v17 + 48), v2);
      sub_1000443DC(&qword_1006CC4F8);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1005CC370;
      *(v18 + 32) = 0x756F437972746572;
      *(v18 + 40) = 0xEA0000000000746ELL;
      *(v18 + 48) = Int._bridgeToObjectiveC()();
      *(v18 + 56) = 0x4449676162;
      *(v18 + 64) = 0xE500000000000000;
      UUID.uuidString.getter();
      v19 = String._bridgeToObjectiveC()();

      *(v18 + 72) = v19;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      v20 = Dictionary.init(dictionaryLiteral:)();
      (*(v3 + 8))(v8, v2);
      return v20;
    case 5u:
      sub_1000443DC(&qword_1006CC4F8);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_1005CC370;
      *(v37 + 32) = 0x73736563637573;
      *(v37 + 40) = 0xE700000000000000;
      *(v37 + 48) = Bool._bridgeToObjectiveC()();
      *(v37 + 56) = 0x6E6F697461727564;
      *(v37 + 64) = 0xE800000000000000;
      *(v37 + 72) = Double._bridgeToObjectiveC()();
      goto LABEL_9;
    case 6u:
      v39 = *(v14 + 16);
      v40[0] = *v14;
      v40[1] = v39;
      v41 = *(v14 + 32);
      v20 = sub_1000BEF5C();
      sub_1000BFAEC(v40);
      return v20;
    case 7u:
      sub_1000443DC(&qword_1006CC4F8);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_1005CB870;
      sub_1000C0784();
      *(v31 + 32) = v30 | 0xE;
      *(v31 + 40) = v32;
      sub_1000591B0(0, &qword_1006CA338, NSNumber_ptr);
      *(v29 + 48) = NSNumber.init(BOOLeanLiteral:)(1);
LABEL_9:
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      break;
    default:
      sub_1000443DC(&qword_1006CC4F8);
      v15 = swift_initStackObject();
      v16 = sub_1000C074C(v15, xmmword_1005CB870);

      v15[3].n128_u64[0] = v16;
      sub_1000591B0(0, &qword_1006CB578, NSObject_ptr);
      break;
  }

  return Dictionary.init(dictionaryLiteral:)();
}

uint64_t type metadata accessor for ASAnalyticsEvent(uint64_t a1)
{
  result = qword_1006CC578;
  if (!qword_1006CC578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BFA88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASAnalyticsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BFB1C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000BFD7C(a1, v4);
}

unint64_t sub_1000BFB60(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000BFE40(a1, a2, v4);
}

unint64_t sub_1000BFBD8(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_1000BFEF4(v1, v2);
}

unint64_t sub_1000BFC20(uint64_t a1)
{
  v2 = static Hasher._hash(seed:_:)();

  return sub_1000BFF54(a1, v2);
}

unint64_t sub_1000BFC64(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(a3);
  v6 = Hasher._finalize()();

  return sub_1000BFFB4(a1, a2, a3, v6);
}

unint64_t sub_1000BFCF8(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_1000C0238(&qword_1006C9878, &protocol conformance descriptor for UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000C0090(a1, v2);
}

unint64_t sub_1000BFD7C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    sub_10006B994(*(v2 + 48) + 40 * i, v7);
    v5 = static AnyHashable.== infix(_:_:)();
    sub_100076E50(v7);
    if (v5)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BFE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1000BFEF4(unsigned __int16 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_1000BFF54(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1000BFFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v14 == a3)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1000C0090(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v2 + 64;
  v14 = ~(-1 << *(v2 + 32));
  for (i = a2 & v14; ((1 << i) & *(v16 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v14)
  {
    (*(v5 + 16))(v9, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1000C0238(&qword_1006CC500, &protocol conformance descriptor for UUID);
    v11 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v5 + 8))(v9, v4);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1000C0238(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000C027C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C02D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void sub_1000C033C(uint64_t a1)
{
  sub_1000C0470();
  if (v1 <= 0x3F)
  {
    sub_1000C0570(319, &qword_1006CC590, &type metadata for String, &type metadata for UInt64, "workflowID timeTaken ");
    if (v2 <= 0x3F)
    {
      sub_1000C0570(319, &qword_1006CC598, &type metadata for String, &type metadata for String, "workflowID errorDescription ");
      if (v3 <= 0x3F)
      {
        sub_1000C0498();
        if (v4 <= 0x3F)
        {
          sub_1000C0504(319);
          if (v5 <= 0x3F)
          {
            sub_1000C0570(319, &qword_1006CC5B0, &type metadata for Bool, &type metadata for Double, "success duration ");
            if (v6 <= 0x3F)
            {
              sub_1000C05C8();
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void *sub_1000C0470()
{
  result = qword_1006CC588;
  if (!qword_1006CC588)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_1006CC588);
  }

  return result;
}

void sub_1000C0498()
{
  if (!qword_1006CC5A0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006CC5A0);
    }
  }
}

void sub_1000C0504(uint64_t a1)
{
  if (!qword_1006CC5A8)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1006CC5A8);
    }
  }
}

void sub_1000C0570(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

ValueMetadata *sub_1000C05C8()
{
  result = qword_1006CC5B8;
  if (!qword_1006CC5B8)
  {
    result = &type metadata for ASAnalyticsEvent.PushAnalytic;
    atomic_store(&type metadata for ASAnalyticsEvent.PushAnalytic, &qword_1006CC5B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ASAnalyticsEvent.PushRegistrationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000C06BCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000C06F8()
{
  result = qword_1006CC5E8;
  if (!qword_1006CC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006CC5E8);
  }

  return result;
}

NSString sub_1000C074C(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x776F6C666B726F77;
  a1[2].n128_u64[1] = 0xEA00000000004449;

  return String._bridgeToObjectiveC()();
}

BOOL sub_1000C0798()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  sub_10004EAE0();
  v74 = v1;
  v5 = __chkstk_darwin(v2, v3, v4);
  v7 = &v71[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5, v8, v9);
  v11 = &v71[-v10];
  type metadata accessor for GenerativeModelsAvailability.Availability();
  sub_10004EAE0();
  __chkstk_darwin(v12, v13, v14);
  sub_10004EAF4();
  v17 = v16 - v15;
  v18 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  sub_10004EAE0();
  v20 = v19;
  __chkstk_darwin(v21, v22, v23);
  sub_10004EAF4();
  v26 = v25 - v24;
  type metadata accessor for GenerativeModelsAvailability();
  sub_10004EAE0();
  v75 = v28;
  v76 = v27;
  __chkstk_darwin(v27, v29, v30);
  sub_10004EAF4();
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v20 + 8))(v26, v18);
  GenerativeModelsAvailability.availability.getter();
  v31 = sub_100053FF8();
  v33 = v32(v31);
  if (v33 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v34 = sub_100053FF8();
    v35(v34);
LABEL_3:
    if (qword_1006C9830 != -1)
    {
      sub_1000C1A24(&qword_1006C9830);
    }

    v36 = type metadata accessor for Logger();
    sub_100046E6C(v36, qword_1006CC5F0);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      sub_1000C1A6C(&_mh_execute_header, v40, v41, "GM state is available/restricted.");
      sub_1000488AC(v39);
    }

    v42 = sub_1000C1A5C();
    v43(v42);
    return 1;
  }

  if (v33 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v45 = sub_100053FF8();
    v46(v45);
    v47 = v74;
    (*(v74 + 32))(v11, v17, v0);
    v48 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v44 = sub_1000C0E68(v48);

    if (qword_1006C9830 != -1)
    {
      sub_1000C1A24(&qword_1006C9830);
    }

    v49 = type metadata accessor for Logger();
    sub_100046E6C(v49, qword_1006CC5F0);
    (*(v47 + 16))(v7, v11, v0);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v77 = v73;
      *v52 = 136315394;
      sub_1000C19DC(&qword_1006CC608, &type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo, &protocol conformance descriptor for GenerativeModelsAvailability.Availability.UnavailableInfo);
      v72 = v51;
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = *(v47 + 8);
      v54(v7);
      v55 = sub_100052F7C(v53);

      *(v52 + 4) = v55;
      *(v52 + 12) = 1024;
      *(v52 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v50, v72, "GM state is unavailable. Reason: %s. Resolution: %{BOOL}d", v52, 0x12u);
      v56 = v73;
      sub_100044850(v73);
      sub_1000488AC(v56);
      sub_1000488AC(v52);

      (v54)(v11, v0);
    }

    else
    {

      v67 = *(v47 + 8);
      v67(v7, v0);
      v67(v11, v0);
    }

    v68 = sub_1000C1A5C();
    v69(v68);
  }

  else
  {
    if (v33 == enum case for GenerativeModelsAvailability.Availability.available(_:))
    {
      goto LABEL_3;
    }

    if (qword_1006C9830 != -1)
    {
      sub_1000C1A24(&qword_1006C9830);
    }

    v57 = type metadata accessor for Logger();
    sub_100046E6C(v57, qword_1006CC5F0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      sub_1000C1A6C(&_mh_execute_header, v61, v62, "GM state is unknown.");
      sub_1000488AC(v60);
    }

    v63 = sub_1000C1A5C();
    v64(v63);
    v65 = sub_100053FF8();
    v66(v65);
    return 0;
  }

  return v44;
}

uint64_t sub_1000C0DE4()
{
  v0 = type metadata accessor for Logger();
  sub_100046E08(v0, qword_1006CC5F0);
  sub_100046E6C(v0, qword_1006CC5F0);
  return Logger.init(subsystem:category:)();
}

BOOL sub_1000C0E68(uint64_t a1)
{
  sub_1000443DC(&qword_1006CC610);
  v2 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  sub_10004EAE0();
  v4 = v3;
  v6 = *(v5 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1005CF080;
  v9 = v8 + v7;
  v10 = *(v4 + 104);
  v10(v9, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:), v2);
  v10(v9 + v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.selectedLanguageIneligible(_:), v2);
  v10(v9 + 2 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.selectedSiriLanguageIneligible(_:), v2);
  v10(v9 + 3 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:), v2);
  v10(v9 + 4 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.localeIneligible(_:), v2);
  v10(v9 + 5 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.countryLocationIneligible(_:), v2);
  v10(v9 + 6 * v6, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.mdmAndParentalControl(_:), v2);
  v11 = sub_1000C1390(v8);
  sub_1000C1040(v11, a1);
  LOBYTE(a1) = v12;

  return (a1 & 1) == 0;
}