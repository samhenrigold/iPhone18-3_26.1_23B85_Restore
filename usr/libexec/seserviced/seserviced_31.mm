uint64_t sub_1002985AC()
{

  return _swift_task_switch(sub_1002986D4, 0, 0);
}

uint64_t sub_1002986D4()
{
  v1 = *(v0 + 96);
  sub_10009591C();
  v2 = swift_allocError();
  *v3 = 8;
  v1(0, 0xF000000000000000, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002987B8()
{

  return _swift_task_switch(sub_1002988E0, 0, 0);
}

uint64_t sub_1002988E0()
{
  v1 = *(v0 + 96);
  sub_10009591C();
  v2 = swift_allocError();
  *v3 = 32;
  v1(0, 0xF000000000000000, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100298A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[255] = a8;
  v8[254] = a7;
  v8[253] = a6;
  v8[252] = a5;
  v8[251] = a4;
  sub_100068FC4(&unk_100504270, &qword_10040B598);
  v8[256] = swift_task_alloc();
  v9 = type metadata accessor for Calendar.Identifier();
  v8[257] = v9;
  v8[258] = *(v9 - 8);
  v8[259] = swift_task_alloc();
  v10 = type metadata accessor for Calendar();
  v8[260] = v10;
  v8[261] = *(v10 - 8);
  v8[262] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v8[263] = v11;
  v8[264] = *(v11 - 8);
  v8[265] = swift_task_alloc();
  v8[266] = swift_task_alloc();
  v8[267] = type metadata accessor for PresentmentInfo(0);
  v8[268] = swift_task_alloc();
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  v8[269] = swift_task_alloc();
  v12 = type metadata accessor for DispatchTime();
  v8[270] = v12;
  v8[271] = *(v12 - 8);
  v8[272] = swift_task_alloc();
  v13 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  v8[273] = v13;
  v8[274] = *(v13 - 8);
  v8[275] = swift_task_alloc();
  v14 = type metadata accessor for StateInternal();
  v8[276] = v14;
  v8[277] = *(v14 - 8);
  v8[278] = swift_task_alloc();
  v15 = type metadata accessor for UUID();
  v8[279] = v15;
  v8[280] = *(v15 - 8);
  v8[281] = swift_task_alloc();
  v8[282] = swift_task_alloc();

  return _swift_task_switch(sub_100298E78, 0, 0);
}

uint64_t sub_100298E78(uint64_t a1, uint64_t a2)
{
  v51 = v2;
  v3 = v2[251];
  v4 = &v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v5 = *&v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v2[283] = v5;
  v6 = *(v4 + 1);
  v2[284] = v6;
  v7 = *(v4 + 2);
  v2[285] = v7;
  v8 = *(v4 + 3);
  v2[286] = v8;
  if (v8 >> 62)
  {
    if (v8 >> 62 != 1)
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
        v3 = v2[251];
      }

      v31 = type metadata accessor for Logger();
      sub_1000958E4(v31, qword_10051B2C8);
      v32 = v3;
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50 = v36;
        *v35 = 136315138;
        v37 = *(v4 + 3);
        if (v37 >> 62)
        {
          if (v37 >> 62 == 1)
          {
            v38 = 0xE500000000000000;
            v39 = 0x6465726957;
          }

          else
          {
            v45 = (*(v4 + 2) | *v4 | *(v4 + 1)) == 0;
            v46 = v37 == 0x8000000000000000;
            if (v46 && v45)
            {
              v39 = 0x656D6567616E614DLL;
            }

            else
            {
              v39 = 0x64696C61766E49;
            }

            if (v46 && v45)
            {
              v38 = 0xEA0000000000746ELL;
            }

            else
            {
              v38 = 0xE700000000000000;
            }
          }
        }

        else
        {
          v38 = 0xED00006E6F697461;
          v39 = 0x6C756D4564726143;
        }

        v47 = sub_1002FFA0C(v39, v38, &v50);

        *(v35 + 4) = v47;
        _os_log_impl(&_mh_execute_header, v33, v34, "Unexpected state %s when arming current credential for card emulation", v35, 0xCu);
        sub_1000752F4(v36);
      }

      sub_10009591C();
      v17 = swift_allocError();
      *v48 = 10;
      swift_willThrow();
      goto LABEL_43;
    }

    v9 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
    sub_100218E94(v5, v6, v7, v8);
    if (!sub_1001D0A10())
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_1000958E4(v40, qword_10051B2C8);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "NFC not enabled", v43, 2u);
      }

      sub_10009591C();
      v17 = swift_allocError();
      v18 = 22;
      goto LABEL_28;
    }

    v10 = v2[251];
    v11 = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    v2[287] = OBJC_IVAR____TtC10seserviced14SECUserSession_clientInfo;
    if (*(v10 + v11 + 128))
    {
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_1000958E4(v12, qword_10051B2C8);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, "Card Emulation is not available on non-application clients", v15, 2u);
      }

      sub_10009591C();
      v17 = swift_allocError();
      v18 = 15;
LABEL_28:
      *v16 = v18;
      swift_willThrow();

LABEL_43:
      v2[314] = v17;
      v49 = swift_task_alloc();
      v2[315] = v49;
      *v49 = v2;
      v49[1] = sub_10029D33C;

      return sub_1001FF5CC();
    }

    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v2[288] = qword_10051B858;
    v44 = swift_task_alloc();
    v2[289] = v44;
    *v44 = v2;
    v44[1] = sub_1002996F0;

    return sub_100301130(v5);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v3 = v2[251];
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_10051B2C8);
    v20 = v3;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v23 = 136315394;
      v24 = UUID.uuidString.getter();
      v26 = sub_1002FFA0C(v24, v25, &v50);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, &v50);
      _os_log_impl(&_mh_execute_header, v21, v22, "Session %s: %s: Current Credential already in Card Emulation", v23, 0x16u);
      swift_arrayDestroy();
    }

    v27 = v2[252];
    sub_10009591C();
    swift_allocError();
    *v28 = 10;
    v27();

    v29 = v2[1];

    return v29();
  }
}

uint64_t sub_1002996F0()
{
  *(*v1 + 2320) = v0;

  if (v0)
  {
    v2 = sub_10029D5C8;
  }

  else
  {
    v2 = sub_100299830;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100299830(uint64_t a1, uint64_t a2)
{
  v48 = v2;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = v2[285];
  v4 = v2[284];
  v5 = v2[283];
  v6 = v2[251];
  v7 = (v2[286] & 0x3FFFFFFFFFFFFFFFLL);
  v8 = type metadata accessor for Logger();
  v2[291] = sub_1000958E4(v8, qword_10051B2C8);
  v9 = v3;
  v10 = v7;
  v11 = v6;
  v12 = v5;
  v13 = v4;
  v14 = v9;
  v15 = v10;
  v16 = v12;
  v17 = v13;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v45 = v17;
    v46 = v14;
    v20 = v2[282];
    v21 = v2[280];
    v44 = v2[279];
    v22 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v22 = 136315394;
    v23 = UUID.uuidString.getter();
    v25 = sub_1002FFA0C(v23, v24, &v47);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    CredentialInternal.identifier.getter();
    v26 = UUID.uuidString.getter();
    v28 = v27;
    v29 = v20;
    v14 = v46;
    (*(v21 + 8))(v29, v44);
    v17 = v45;
    v30 = sub_1002FFA0C(v26, v28, &v47);

    *(v22 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v18, v19, "Session %s: Arming Current credential %s for card emulation", v22, 0x16u);
    swift_arrayDestroy();
  }

  if (v2[284])
  {
    v2[10] = v2;
    v2[15] = v2 + 249;
    v2[11] = sub_100299D74;
    v31 = swift_continuation_init();
    v2[205] = sub_100068FC4(&unk_1005073E0, &qword_10040B5A0);
    v2[202] = v31;
    v2[198] = _NSConcreteStackBlock;
    v2[199] = 1107296256;
    v2[200] = sub_1001FDA0C;
    v2[201] = &unk_1004CEC58;
    [v17 requestSETransceiverWithCompletion:v2 + 198];

    return _swift_continuation_await(v2 + 10);
  }

  else
  {
    v32 = v2[286];
    v33 = v2[283];

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v47 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, &v47);
      _os_log_impl(&_mh_execute_header, v34, v35, "%s: NFCredentialSession has been invalidated", v36, 0xCu);
      sub_1000752F4(v37);
    }

    v38 = v2[283];
    v39 = (v2[286] & 0x3FFFFFFFFFFFFFFFLL);
    sub_10009591C();
    v40 = swift_allocError();
    *v41 = 9;
    swift_willThrow();

    v2[314] = v40;
    v42 = swift_task_alloc();
    v2[315] = v42;
    *v42 = v2;
    v42[1] = sub_10029D33C;

    return sub_1001FF5CC();
  }
}

uint64_t sub_100299D74()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 2336) = v2;
  if (v2)
  {
    v3 = *(v1 + 2288);
    v4 = *(v1 + 2272);
    v5 = *(v1 + 2264);

    v6 = sub_10029D6B8;
  }

  else
  {
    v6 = sub_100299EDC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100299EDC()
{
  v229 = v0;
  v1 = *(v0 + 1992);
  *(v0 + 2344) = v1;
  if (!v1)
  {
    v20 = *(v0 + 2288);
    v21 = *(v0 + 2272);
    v22 = *(v0 + 2264);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v228[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v228);
      _os_log_impl(&_mh_execute_header, v23, v24, "%s: Unable to get transceiver", v25, 0xCu);
      sub_1000752F4(v26);
    }

    v27 = *(v0 + 2280);
    v28 = *(v0 + 2272);
    v29 = *(v0 + 2264);
    v30 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_10009591C();
    v31 = swift_allocError();
    *v32 = 9;
    swift_willThrow();

    goto LABEL_94;
  }

  *(v0 + 1984) = 0;
  v2 = [v1 listAppletsAndRefreshCache:0 outError:v0 + 1984];
  v3 = *(v0 + 1984);
  if (!v2)
  {
    v33 = v1;
    v34 = *(v0 + 2280);
    v35 = *(v0 + 2272);
    v36 = *(v0 + 2264);
    v37 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    v38 = v3;

    _convertNSErrorToError(_:)();
    swift_willThrow();
    swift_errorRetain();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v228[0] = swift_slowAlloc();
      *v41 = 136315394;
      *(v41 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v228);
      *(v41 + 12) = 2080;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = sub_1002FFA0C(v42, v43, v228);

      *(v41 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v39, v40, "%s: Nearfield error %s encountered when listing applets", v41, 0x16u);
      swift_arrayDestroy();
    }

    v45 = *(v0 + 2280);
    v46 = *(v0 + 2272);
    v47 = *(v0 + 2264);
    v48 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    [v33 invalidate];
    sub_10009591C();
    v31 = swift_allocError();
    *v49 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    goto LABEL_95;
  }

  v4 = v2;
  v5 = *(v0 + 2224);
  v6 = *(v0 + 2216);
  v7 = *(v0 + 2208);
  *(v0 + 2352) = sub_10012E2F8();
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v3;

  [v1 invalidate];
  CredentialInternal.state.getter();
  v10 = (*(v6 + 88))(v5, v7);
  if (v10 != enum case for StateInternal.installed(_:))
  {
    if (v10 == enum case for StateInternal.locked(_:))
    {
      v50 = *(v0 + 2288);
      v51 = *(v0 + 2280);
      v52 = *(v0 + 2272);
      v53 = *(v0 + 2264);
      v54 = *(v0 + 2224);
      v55 = *(v0 + 2216);
      v56 = *(v0 + 2208);

      (*(v55 + 8))(v54, v56);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = *(v0 + 2256);
        v60 = *(v0 + 2240);
        v61 = *(v0 + 2232);
        v62 = swift_slowAlloc();
        v228[0] = swift_slowAlloc();
        *v62 = 136315394;
        *(v62 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v228);
        *(v62 + 12) = 2080;
        CredentialInternal.identifier.getter();
        v63 = UUID.uuidString.getter();
        v65 = v64;
        (*(v60 + 8))(v59, v61);
        v66 = sub_1002FFA0C(v63, v65, v228);

        *(v62 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v57, v58, "%s: Current Credential %s is locked", v62, 0x16u);
        swift_arrayDestroy();
      }

      v27 = *(v0 + 2280);
      v67 = *(v0 + 2272);
      v29 = *(v0 + 2264);
      v30 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
      sub_10009591C();
      v31 = swift_allocError();
      v69 = 34;
    }

    else
    {
      if (v10 == enum case for StateInternal.installationPending(_:) || v10 == enum case for StateInternal.installationFailed(_:))
      {
      }

      else
      {
        v70 = enum case for StateInternal.terminated(_:);
        v71 = v10;

        if (v71 != v70)
        {
          v72 = *(v0 + 2288);
          v73 = *(v0 + 2280);
          v74 = *(v0 + 2272);
          v75 = *(v0 + 2264);
          v76 = *(v0 + 2224);
          v77 = *(v0 + 2216);
          v78 = *(v0 + 2208);

          v79 = (v72 & 0x3FFFFFFFFFFFFFFFLL);
          sub_10009591C();
          v31 = swift_allocError();
          *v80 = 6;
          swift_willThrow();

          swift_unknownObjectRelease();
          (*(v77 + 8))(v76, v78);
LABEL_95:
          *(v0 + 2512) = v31;
          v137 = swift_task_alloc();
          *(v0 + 2520) = v137;
          *v137 = v0;
          v137[1] = sub_10029D33C;

          return sub_1001FF5CC();
        }
      }

      v81 = *(v0 + 2280);
      v82 = *(v0 + 2272);
      v83 = *(v0 + 2264);
      v84 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = *(v0 + 2256);
        v88 = *(v0 + 2240);
        v89 = *(v0 + 2232);
        v90 = swift_slowAlloc();
        v228[0] = swift_slowAlloc();
        *v90 = 136315394;
        *(v90 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v228);
        *(v90 + 12) = 2080;
        CredentialInternal.identifier.getter();
        v91 = UUID.uuidString.getter();
        v93 = v92;
        (*(v88 + 8))(v87, v89);
        v94 = sub_1002FFA0C(v91, v93, v228);

        *(v90 + 14) = v94;
        _os_log_impl(&_mh_execute_header, v85, v86, "%s: Current Credential %s is not installed", v90, 0x16u);
        swift_arrayDestroy();
      }

      v27 = *(v0 + 2280);
      v67 = *(v0 + 2272);
      v29 = *(v0 + 2264);
      v30 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
      sub_10009591C();
      v31 = swift_allocError();
      v69 = 7;
    }

    *v68 = v69;
    swift_willThrow();
    goto LABEL_93;
  }

  v11 = *(v0 + 2224);
  (*(*(v0 + 2216) + 96))(v11, *(v0 + 2208));
  v12 = *v11;
  v13 = *v11 & 0xFFFFFFFFFFFFFF8;
  if (*v11 >> 62)
  {
    goto LABEL_36;
  }

  v14 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v14 > 1)
  {
    while (1)
    {
      v15 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_35;
          }

          v16 = *(v12 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        InstanceInfoInternal.type.getter();
        v19 = InstanceTypeInternal.rawValue.getter();
        if (v19 == InstanceTypeInternal.rawValue.getter())
        {
          goto LABEL_44;
        }

        ++v15;
        if (v18 == v14)
        {
          goto LABEL_82;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      v95 = _CocoaArrayWrapper.endIndex.getter();
      v96 = _CocoaArrayWrapper.endIndex.getter();
      v14 = v96;
      if (v95 < 2)
      {
        break;
      }

      if (!v96)
      {
        goto LABEL_82;
      }
    }
  }

  if (!v14)
  {
LABEL_82:

    v227 = 0;
LABEL_90:
    v122 = *(v0 + 2280);
    v123 = *(v0 + 2272);
    v124 = *(v0 + 2264);
    v125 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v126, v127))
    {
      v128 = *(v0 + 2256);
      v129 = *(v0 + 2240);
      v130 = *(v0 + 2232);
      v131 = swift_slowAlloc();
      v228[0] = swift_slowAlloc();
      *v131 = 136315394;
      *(v131 + 4) = sub_1002FFA0C(0xD00000000000003CLL, 0x800000010046A460, v228);
      *(v131 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v132 = UUID.uuidString.getter();
      v134 = v133;
      (*(v129 + 8))(v128, v130);
      v135 = sub_1002FFA0C(v132, v134, v228);

      *(v131 + 14) = v135;
      _os_log_impl(&_mh_execute_header, v126, v127, "%s: No applets are associated with credential with UUID %s", v131, 0x16u);
      swift_arrayDestroy();
    }

    v27 = *(v0 + 2280);
    v67 = *(v0 + 2272);
    v29 = *(v0 + 2264);
    v30 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_10009591C();
    v31 = swift_allocError();
    *v136 = 5;
    swift_willThrow();

LABEL_93:
    swift_unknownObjectRelease();
LABEL_94:

    goto LABEL_95;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v97 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v97 = *(v12 + 32);
  }

  v17 = v97;
LABEL_44:
  *(v0 + 2360) = v17;

  if (v8 >> 62)
  {
    goto LABEL_124;
  }

  v98 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_46:
  v227 = v17;
  if (!v98)
  {
LABEL_83:

    goto LABEL_90;
  }

  v99 = 0;
  v220 = (v0 + 680);
  v221 = (v0 + 372);
  v224 = v8 & 0xFFFFFFFFFFFFFF8;
  v225 = v8 & 0xC000000000000001;
  v100 = *(v0 + 2320);
  v222 = v98;
  v223 = v8;
  while (1)
  {
    if (v225)
    {
      v101 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v99 >= *(v224 + 16))
      {
        goto LABEL_116;
      }

      v101 = *(v8 + 8 * v99 + 32);
    }

    v8 = v101;
    *(v0 + 2368) = v101;
    v102 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v103 = InstanceInfoInternal.instanceAID.getter();
    v17 = v104;
    v105 = [v8 identifierAsData];
    v106 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v109 = v17 >> 62;
    v110 = v108 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v109)
    {
      if (v109 == 1)
      {
        LODWORD(v111) = HIDWORD(v103) - v103;
        if (__OFSUB__(HIDWORD(v103), v103))
        {
          goto LABEL_123;
        }

        v111 = v111;
      }

      else
      {
        v113 = *(v103 + 16);
        v112 = *(v103 + 24);
        v114 = __OFSUB__(v112, v113);
        v111 = v112 - v113;
        if (v114)
        {
          goto LABEL_122;
        }
      }
    }

    else
    {
      v111 = BYTE6(v17);
    }

LABEL_68:
    if (v110 > 1)
    {
      if (v110 != 2)
      {
        if (!v111)
        {
          goto LABEL_84;
        }

LABEL_49:

        sub_10006A178(v106, v108);
        sub_10006A178(v103, v17);
        goto LABEL_50;
      }

      v116 = *(v106 + 16);
      v115 = *(v106 + 24);
      v114 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v114)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        v98 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_46;
      }

      if (v111 != v117)
      {
        goto LABEL_49;
      }
    }

    else if (v110)
    {
      if (__OFSUB__(HIDWORD(v106), v106))
      {
        goto LABEL_121;
      }

      if (v111 != HIDWORD(v106) - v106)
      {
        goto LABEL_49;
      }
    }

    else if (v111 != BYTE6(v108))
    {
      goto LABEL_49;
    }

    if (v111 < 1)
    {
LABEL_84:
      sub_10006A178(v106, v108);
      v119 = v103;
      v120 = v17;
      goto LABEL_85;
    }

    sub_100069E2C(v106, v108);
    v118 = sub_10008C678(v103, v17, v106, v108);
    sub_10006A178(v103, v17);
    sub_10006A178(v106, v108);
    if (v118)
    {
      goto LABEL_86;
    }

LABEL_50:
    ++v99;
    v8 = v223;
    if (v102 == v222)
    {
      goto LABEL_83;
    }
  }

  v111 = 0;
  if (v103)
  {
    goto LABEL_68;
  }

  if (v17 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  if (v108 >> 62 != 3)
  {
    goto LABEL_68;
  }

  v111 = 0;
  if (v106 || v108 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  sub_10006A178(0, 0xC000000000000000);
  v119 = 0;
  v120 = 0xC000000000000000;
LABEL_85:
  sub_10006A178(v119, v120);
LABEL_86:
  if (![v8 managedBySP] || (v121 = objc_msgSend(v8, "rawGPState"), type metadata accessor for InstanceInfoInternal(), v121 == static InstanceInfoInternal.instanceLifeCycleStateTerminated.getter()) || (objc_msgSend(v8, "isGPLocked") & 1) != 0)
  {

    goto LABEL_90;
  }

  if (sub_1002B3D04(0x554245445F4D4143, 0xEA00000000005F47, *(v0 + 2032), *(v0 + 2040)))
  {
    if (!SESInternalVariant())
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v139 = *(v0 + 2040);
    v140 = *(v0 + 2032);
    *(v0 + 1936) = 95;
    *(v0 + 1944) = 0xE100000000000000;
    v141 = swift_task_alloc();
    *(v141 + 16) = v0 + 1936;

    v143 = sub_10029F26C(0x7FFFFFFFFFFFFFFFLL, 1, sub_10029F7A8, v141, v140, v139, v142);
    *(v0 + 2376) = v100;

    if (v143[2])
    {

      v144 = static String._fromSubstring(_:)();
      v146 = v145;

      *(v0 + 2384) = sub_10013044C(v144, v146);
      *(v0 + 2392) = v147;
      if (v147 >> 60 != 15)
      {
        v148 = *(v0 + 2272);

        sub_100068FC4(&qword_100504060, &qword_10040B370);
        v149 = swift_allocObject();
        *(v149 + 16) = xmmword_100409E40;
        *(v149 + 32) = v8;
        v150 = v8;
        isa = Array._bridgeToObjectiveC()().super.isa;
        *(v0 + 2400) = isa;

        v152 = Data._bridgeToObjectiveC()().super.isa;
        *(v0 + 2408) = v152;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_10029B734;
        v153 = swift_continuation_init();
        *(v0 + 1576) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
        *(v0 + 1552) = v153;
        *(v0 + 1520) = _NSConcreteStackBlock;
        *(v0 + 1528) = 1107296256;
        *(v0 + 1536) = sub_1001E95B0;
        *(v0 + 1544) = &unk_1004CECD0;
        [v148 startCardEmulationWithApplets:isa externalAuth:v152 completion:v0 + 1520];

        return _swift_continuation_await(v0 + 16);
      }

LABEL_118:
      v228[0] = 0;
      v228[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v218._object = 0x800000010046A460;
      v218._countAndFlagsBits = 0xD00000000000003CLL;
      String.append(_:)(v218);
      v219._countAndFlagsBits = 0xD000000000000031;
      v219._object = 0x8000000100463AD0;
      String.append(_:)(v219);
      return _assertionFailure(_:_:file:line:flags:)();
    }

LABEL_117:

    goto LABEL_118;
  }

  v154 = *(v0 + 2008);
  v155 = &v154[*(v0 + 2296)];
  *(v0 + 1712) = 0u;
  *(v0 + 1728) = 0u;
  v156 = *(v155 + 5);
  v157 = *(v155 + 6);
  v158 = *(v155 + 7);
  v159 = v155[128];
  *(v0 + 336) = v159;
  *(v0 + 304) = v157;
  *(v0 + 320) = v158;
  *(v0 + 288) = v156;
  v160 = *(v155 + 1);
  v161 = *(v155 + 2);
  v162 = *(v155 + 4);
  *(v0 + 256) = *(v155 + 3);
  *(v0 + 272) = v162;
  *(v0 + 224) = v160;
  *(v0 + 240) = v161;
  *(v0 + 208) = *v155;
  if (v159 > 1u)
  {
    v181 = *(v0 + 2280);
    v182 = *(v0 + 2272);
    v183 = *(v0 + 2264);
    v184 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_10012E344(v0 + 208, v0 + 408);

    sub_10012E3A0(v0 + 208);
    v185 = v154;
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = *(v0 + 2008) + *(v0 + 2296);
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      v228[0] = v190;
      *v189 = 136315138;
      *v220 = *v188;
      v191 = *(v188 + 64);
      v193 = *(v188 + 16);
      v192 = *(v188 + 32);
      *(v0 + 728) = *(v188 + 48);
      *(v0 + 744) = v191;
      *(v0 + 696) = v193;
      *(v0 + 712) = v192;
      v195 = *(v188 + 96);
      v194 = *(v188 + 112);
      v196 = *(v188 + 80);
      *(v0 + 808) = *(v188 + 128);
      *(v0 + 776) = v195;
      *(v0 + 792) = v194;
      *(v0 + 760) = v196;
      sub_10012E344(v220, v0 + 816);
      v197 = sub_10013F33C();
      v199 = v198;
      sub_10012E3A0(v220);
      v200 = sub_1002FFA0C(v197, v199, v228);

      *(v189 + 4) = v200;
      _os_log_impl(&_mh_execute_header, v186, v187, "Client %s has no pid", v189, 0xCu);
      sub_1000752F4(v190);
    }

    sub_10009591C();
    swift_allocError();
    *v201 = 6;
    swift_willThrow();
    swift_errorRetain();
    v202 = Logger.logObject.getter();
    v203 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v228[0] = v205;
      *v204 = 136315138;
      swift_getErrorValue();
      v206 = Error.localizedDescription.getter();
      v208 = sub_1002FFA0C(v206, v207, v228);

      *(v204 + 4) = v208;
      _os_log_impl(&_mh_execute_header, v202, v203, "Error %s encountered when arming current credential for card emulation", v204, 0xCu);
      sub_1000752F4(v205);
    }

    v209 = *(v0 + 2368);
    v210 = *(v0 + 2360);
    v211 = *(v0 + 2280);
    v212 = *(v0 + 2272);
    v226 = *(v0 + 2264);
    v213 = *(v0 + 2008);
    v214 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_1000B5374(0);
    v215 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v216 = *(v213 + v215);

    os_unfair_lock_lock((v216 + 20));
    *(v216 + 16) = 0;
    os_unfair_lock_unlock((v216 + 20));

    v31 = swift_allocError();
    *v217 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    sub_1000B2A4C(*(v0 + 1712), *(v0 + 1720));
    goto LABEL_95;
  }

  v164 = *(v0 + 272);
  v163 = *(v0 + 280);
  v166 = *(v0 + 240);
  v165 = *(v0 + 256);
  v167 = *(v0 + 224);
  v168 = *(v0 + 288);
  v170 = *(v155 + 6);
  v169 = *(v155 + 7);
  *v221 = v170;
  *(v0 + 388) = v169;
  *(v0 + 1072) = v167;
  *(v0 + 1088) = v166;
  *(v0 + 1104) = v165;
  *(v0 + 1120) = v164;
  *(v0 + 1128) = v163;
  *(v0 + 1136) = v168;
  *(v0 + 1152) = v170;
  *(v0 + 1168) = v169;
  sub_10012E344(v0 + 208, v0 + 544);
  sub_10012E3F4(v0 + 224, v0 + 952);
  v171 = *(v0 + 388);
  *(v0 + 340) = *v221;
  *(v0 + 356) = v171;
  v172 = audit_token_to_pid((v0 + 340));
  sub_10012E450(v0 + 1072);
  sub_10012E3A0(v0 + 208);
  v173 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  *(v0 + 2424) = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v174 = *&v154[v173];

  os_unfair_lock_lock((v174 + 20));
  *(v174 + 16) = 1;
  os_unfair_lock_unlock((v174 + 20));

  v175 = CredentialInternal.friendlyName.getter();
  v177 = v176;
  *(v0 + 2432) = v176;
  v178 = swift_task_alloc();
  *(v0 + 2440) = v178;
  *v178 = v0;
  v178[1] = sub_10029BF30;
  v179 = *(v0 + 2040);
  v180 = *(v0 + 2032);

  return sub_1000B4000(v180, v179, v172, v175, v177);
}

uint64_t sub_10029B734()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 2416) = v2;
  if (v2)
  {
    v3 = *(v1 + 2288);
    v4 = *(v1 + 2272);
    v5 = *(v1 + 2264);

    v6 = sub_10029D7BC;
  }

  else
  {
    v6 = sub_10029B89C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10029B89C()
{
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2400);
  sub_10006A2D0(*(v0 + 2384), *(v0 + 2392));

  v3 = *(v0 + 2376);
  v4 = *(v0 + 2192);
  v5 = *(v0 + 2184);
  v6 = *(v0 + 2008);
  v7 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v4 + 48))(v6 + v7, 1, v5))
  {
    v8 = *(v0 + 2176);
    v9 = *(v0 + 2168);
    v10 = *(v0 + 2160);
    sub_10012DFF8(v6 + v7, *(v0 + 2200));
    static DispatchTime.now()();
    v11 = DispatchTime.uptimeNanoseconds.getter();
    (*(v9 + 8))(v8, v10);
    v12 = DispatchTime.uptimeNanoseconds.getter();
    if (v11 < v12)
    {
      __break(1u);
    }

    v13 = *(v0 + 2200);
    (*(v13 + *(*(v0 + 2184) + 24)))((v11 - v12) / 0x3B9ACA00);
    sub_10012E4DC(v13, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v14 = *(v0 + 2192);
  v15 = *(v0 + 2184);
  v56 = v3;
  v16 = *(v0 + 2152);
  v17 = *(*(v0 + 2008) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 3;
  *(v16 + *(v15 + 20)) = 3;
  v19 = (v16 + *(v15 + 24));
  *v19 = sub_10012E59C;
  v19[1] = v18;
  (*(v14 + 56))(v16, 0, 1, v15);
  swift_beginAccess();
  sub_10012DF88(v16, v6 + v7);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  v20 = v56;
  sub_1001FF418((v0 + 1408));
  if (v56)
  {
    v21 = *(v0 + 2360);
    v22 = *(v0 + 2288);
    v23 = *(v0 + 2280);
    v24 = *(v0 + 2272);
    v25 = *(v0 + 2264);
    v57 = *(v0 + 2248);
    v26 = *(v0 + 2240);
    v27 = *(v0 + 2232);

    swift_unknownObjectRelease();
    (*(v26 + 8))(v57, v27);
    *(v0 + 2512) = v20;
    v28 = swift_task_alloc();
    *(v0 + 2520) = v28;
    *v28 = v0;
    v28[1] = sub_10029D33C;

    return sub_1001FF5CC();
  }

  else
  {
    sub_10012E450(v0 + 1408);
    sub_1001FF418((v0 + 1296));
    *(v0 + 1952) = *(v0 + 1344);

    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    *(v0 + 2496) = 0;
    v30 = *(v0 + 2072);
    v31 = *(v0 + 2064);
    v32 = *(v0 + 2056);
    v33 = *(v0 + 2048);

    sub_10012E450(v0 + 1184);
    static Date.now.getter();
    (*(v31 + 104))(v30, enum case for Calendar.Identifier.gregorian(_:), v32);
    Calendar.init(identifier:)();
    (*(v31 + 8))(v30, v32);
    TimeZone.init(abbreviation:)();
    v34 = type metadata accessor for TimeZone();
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    if (v35 == 1)
    {
      __break(1u);
    }

    else
    {
      v38 = *(v0 + 2240);
      v39 = *(v0 + 2144);
      v40 = *(v0 + 2136);
      v41 = *(v0 + 2128);
      v42 = *(v0 + 2120);
      v43 = *(v0 + 2112);
      v44 = *(v0 + 2104);
      v45 = *(v0 + 2096);
      v46 = *(v0 + 2088);
      v50 = *(v0 + 2304);
      v51 = *(v0 + 2080);
      v54 = *(v0 + 1472);
      v55 = *(v0 + 2248);
      v52 = *(v0 + 1256);
      v53 = *(v0 + 2232);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v46 + 8))(v45, v51);
      v47 = *(v43 + 8);
      v47(v41, v44);
      Date.timeIntervalSince1970.getter();
      v49 = v48;
      v47(v42, v44);
      (*(v38 + 32))(v39, v55, v53);
      *(v39 + v40[5]) = 0;
      *(v39 + v40[8]) = *(v0 + 1952);
      *(v39 + v40[7]) = v52;
      *(v39 + v40[6]) = v54;
      *(v39 + v40[9]) = v49 * 1000.0;
      v35 = sub_10029CEB4;
      v36 = v50;
      v37 = 0;
    }

    return _swift_task_switch(v35, v36, v37);
  }
}

uint64_t sub_10029BF30(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[306] = a1;
  v4[307] = a2;
  v4[308] = v2;

  if (v2)
  {
    v5 = v4[286];
    v6 = v4[285];
    v7 = v4[284];
    v8 = v4[283];

    v9 = sub_10029DA58;
  }

  else
  {

    v9 = sub_10029C0D4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10029C0D4()
{
  v41 = v0;
  v1 = *(v0 + 2424);
  v2 = *(v0 + 2008);
  swift_beginAccess();
  v3 = *(v2 + v1);
  os_unfair_lock_lock((v3 + 20));
  LODWORD(v2) = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  swift_endAccess();
  if (v2 == 1)
  {
    v4 = *(v0 + 2368);
    v5 = *(v0 + 2272);
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100409E40;
    *(v6 + 32) = v4;
    v7 = v4;
    isa = Array._bridgeToObjectiveC()().super.isa;
    *(v0 + 2472) = isa;

    v9 = Data._bridgeToObjectiveC()().super.isa;
    *(v0 + 2480) = v9;
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_10029C654;
    v10 = swift_continuation_init();
    *(v0 + 1704) = sub_100068FC4(&unk_100504290, &qword_10040B5A8);
    *(v0 + 1680) = v10;
    *(v0 + 1648) = _NSConcreteStackBlock;
    *(v0 + 1656) = 1107296256;
    *(v0 + 1664) = sub_1001E95B0;
    *(v0 + 1672) = &unk_1004CEC80;
    [v5 startCardEmulationWithApplets:isa externalAuth:v9 completion:v0 + 1648];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {
    v11 = *(v0 + 2288);
    v12 = *(v0 + 2272);
    v13 = *(v0 + 2264);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "End Card Emulation has been called while presenting auth sheet", v16, 2u);
    }

    v17 = *(v0 + 2456);
    v18 = *(v0 + 2448);

    sub_1000B5374(0);
    sub_10009591C();
    swift_allocError();
    *v19 = 10;
    swift_willThrow();
    sub_10006A178(v18, v17);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v40 = v23;
      *v22 = 136315138;
      swift_getErrorValue();
      v24 = Error.localizedDescription.getter();
      v26 = sub_1002FFA0C(v24, v25, &v40);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error %s encountered when arming current credential for card emulation", v22, 0xCu);
      sub_1000752F4(v23);
    }

    v27 = *(v0 + 2368);
    v28 = *(v0 + 2360);
    v29 = *(v0 + 2280);
    v30 = *(v0 + 2272);
    v39 = *(v0 + 2264);
    v31 = *(v0 + 2008);
    v32 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
    sub_1000B5374(0);
    v33 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v34 = *(v31 + v33);

    os_unfair_lock_lock((v34 + 20));
    *(v34 + 16) = 0;
    os_unfair_lock_unlock((v34 + 20));

    v35 = swift_allocError();
    *v36 = 8;
    swift_willThrow();

    swift_unknownObjectRelease();

    sub_1000B2A4C(*(v0 + 1712), *(v0 + 1720));
    *(v0 + 2512) = v35;
    v37 = swift_task_alloc();
    *(v0 + 2520) = v37;
    *v37 = v0;
    v37[1] = sub_10029D33C;

    return sub_1001FF5CC();
  }
}

uint64_t sub_10029C654()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 2488) = v2;
  if (v2)
  {
    v3 = *(v1 + 2288);
    v4 = *(v1 + 2272);
    v5 = *(v1 + 2264);

    v6 = sub_10029DD24;
  }

  else
  {
    v6 = sub_10029C7C0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10029C7C0()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2456);
  v3 = *(v0 + 2448);
  v4 = *(v0 + 2424);
  v5 = *(v0 + 2008);

  sub_1000B5374(1);
  v6 = *(v5 + v4);

  os_unfair_lock_lock((v6 + 20));
  *(v6 + 16) = 0;
  os_unfair_lock_unlock((v6 + 20));
  sub_10006A178(v3, v2);
  sub_1000B2A4C(*(v0 + 1712), *(v0 + 1720));

  v7 = *(v0 + 1736);

  v8 = *(v0 + 2464);
  v9 = *(v0 + 2192);
  v10 = *(v0 + 2184);
  v11 = *(v0 + 2008);
  v12 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v9 + 48))(v11 + v12, 1, v10))
  {
    v13 = *(v0 + 2176);
    v14 = *(v0 + 2168);
    v15 = *(v0 + 2160);
    sub_10012DFF8(v11 + v12, *(v0 + 2200));
    static DispatchTime.now()();
    v16 = DispatchTime.uptimeNanoseconds.getter();
    (*(v14 + 8))(v13, v15);
    v17 = DispatchTime.uptimeNanoseconds.getter();
    if (v16 < v17)
    {
      __break(1u);
    }

    v18 = *(v0 + 2200);
    (*(v18 + *(*(v0 + 2184) + 24)))((v16 - v17) / 0x3B9ACA00);
    sub_10012E4DC(v18, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v19 = *(v0 + 2192);
  v20 = *(v0 + 2184);
  v61 = v8;
  v21 = *(v0 + 2152);
  v22 = *(*(v0 + 2008) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  sub_10028C478(6, 1);
  static DispatchTime.now()();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = 3;
  *(v21 + *(v20 + 20)) = 3;
  v24 = (v21 + *(v20 + 24));
  *v24 = sub_10012E59C;
  v24[1] = v23;
  (*(v19 + 56))(v21, 0, 1, v20);
  swift_beginAccess();
  sub_10012DF88(v21, v11 + v12);
  swift_endAccess();
  CredentialInternal.configUUID.getter();
  v25 = v61;
  sub_1001FF418((v0 + 1408));
  if (v61)
  {
    v26 = *(v0 + 2360);
    v27 = *(v0 + 2288);
    v28 = *(v0 + 2280);
    v29 = *(v0 + 2272);
    v30 = *(v0 + 2264);
    v62 = *(v0 + 2248);
    v31 = *(v0 + 2240);
    v32 = *(v0 + 2232);

    swift_unknownObjectRelease();
    (*(v31 + 8))(v62, v32);
    *(v0 + 2512) = v25;
    v33 = swift_task_alloc();
    *(v0 + 2520) = v33;
    *v33 = v0;
    v33[1] = sub_10029D33C;

    return sub_1001FF5CC();
  }

  else
  {
    sub_10012E450(v0 + 1408);
    sub_1001FF418((v0 + 1296));
    *(v0 + 1952) = *(v0 + 1344);

    sub_10012E450(v0 + 1296);
    sub_1001FF418((v0 + 1184));
    *(v0 + 2496) = 0;
    v35 = *(v0 + 2072);
    v36 = *(v0 + 2064);
    v37 = *(v0 + 2056);
    v38 = *(v0 + 2048);

    sub_10012E450(v0 + 1184);
    static Date.now.getter();
    (*(v36 + 104))(v35, enum case for Calendar.Identifier.gregorian(_:), v37);
    Calendar.init(identifier:)();
    (*(v36 + 8))(v35, v37);
    TimeZone.init(abbreviation:)();
    v39 = type metadata accessor for TimeZone();
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    if (v40 == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = *(v0 + 2240);
      v44 = *(v0 + 2144);
      v45 = *(v0 + 2136);
      v46 = *(v0 + 2128);
      v47 = *(v0 + 2120);
      v48 = *(v0 + 2112);
      v49 = *(v0 + 2104);
      v50 = *(v0 + 2096);
      v51 = *(v0 + 2088);
      v55 = *(v0 + 2304);
      v56 = *(v0 + 2080);
      v59 = *(v0 + 1472);
      v60 = *(v0 + 2248);
      v57 = *(v0 + 1256);
      v58 = *(v0 + 2232);
      Calendar.timeZone.setter();
      Calendar.startOfDay(for:)();
      (*(v51 + 8))(v50, v56);
      v52 = *(v48 + 8);
      v52(v46, v49);
      Date.timeIntervalSince1970.getter();
      v54 = v53;
      v52(v47, v49);
      (*(v43 + 32))(v44, v60, v58);
      *(v44 + v45[5]) = 0;
      *(v44 + v45[8]) = *(v0 + 1952);
      *(v44 + v45[7]) = v57;
      *(v44 + v45[6]) = v59;
      *(v44 + v45[9]) = v54 * 1000.0;
      v40 = sub_10029CEB4;
      v41 = v55;
      v42 = 0;
    }

    return _swift_task_switch(v40, v41, v42);
  }
}

uint64_t sub_10029CEB4()
{
  v1 = *(v0 + 2496);
  v2 = sub_10035E904();
  if (v1)
  {
    v3 = *(v0 + 2288);
    v4 = *(v0 + 2272);
    v5 = *(v0 + 2264);

    *(v0 + 2504) = v1;
    v9 = sub_10029D1F4;
  }

  else
  {
    v6 = v2;
    v7 = *(v0 + 2144);
    v8 = swift_task_alloc();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    NSManagedObjectContext.performAndWait<A>(_:)();

    v9 = sub_10029D024;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10029D024()
{
  v1 = v0[295];
  v2 = v0[285];
  v3 = v0[284];
  v4 = v0[283];
  v9 = v0[296];
  v10 = v0[268];
  v5 = v0[252];
  v6 = (v0[286] & 0x3FFFFFFFFFFFFFFFLL);
  sub_1001FEFA8(v4, v3, v2, v6);
  v5(0);

  swift_unknownObjectRelease();
  sub_10012E4DC(v10, type metadata accessor for PresentmentInfo);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10029D1F4()
{
  v1 = v0[296];
  v2 = v0[295];
  v3 = v0[286];
  v4 = v0[285];
  v5 = v0[284];
  v6 = v0[283];
  v7 = v0[268];

  swift_unknownObjectRelease();
  sub_10012E4DC(v7, type metadata accessor for PresentmentInfo);
  v0[314] = v0[313];
  v8 = swift_task_alloc();
  v0[315] = v8;
  *v8 = v0;
  v8[1] = sub_10029D33C;

  return sub_1001FF5CC();
}

uint64_t sub_10029D33C()
{

  return _swift_task_switch(sub_10029D464, 0, 0);
}

uint64_t sub_10029D464()
{
  v1 = v0[314];
  v2 = v0[252];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_10029D5C8()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];

  v0[314] = v0[290];
  v4 = swift_task_alloc();
  v0[315] = v4;
  *v4 = v0;
  v4[1] = sub_10029D33C;

  return sub_1001FF5CC();
}

uint64_t sub_10029D6B8(uint64_t a1)
{
  v2 = v1[285];
  v3 = v1[284];
  v4 = v1[283];
  v5 = (v1[286] & 0x3FFFFFFFFFFFFFFFLL);
  swift_willThrow();

  v1[314] = v1[292];
  v6 = swift_task_alloc();
  v1[315] = v6;
  *v6 = v1;
  v6[1] = sub_10029D33C;

  return sub_1001FF5CC();
}

uint64_t sub_10029D7BC(uint64_t a1)
{
  v24 = v1;
  v2 = v1[301];
  v3 = v1[300];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_1002FFA0C(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "NearField Error %s encountered when arming current credential for card emulation -- CAM path", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v11 = v1[299];
  v12 = v1[298];
  v13 = v1[296];
  v14 = v1[295];
  v15 = v1[284];
  v20 = v1[283];
  v21 = v1[285];
  v22 = (v1[286] & 0x3FFFFFFFFFFFFFFFLL);
  sub_10009591C();
  v16 = swift_allocError();
  *v17 = 8;
  swift_willThrow();

  sub_10006A2D0(v12, v11);

  swift_unknownObjectRelease();

  v1[314] = v16;
  v18 = swift_task_alloc();
  v1[315] = v18;
  *v18 = v1;
  v18[1] = sub_10029D33C;

  return sub_1001FF5CC();
}

uint64_t sub_10029DA58()
{
  v22 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v21 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_1002FFA0C(v5, v6, &v21);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error %s encountered when arming current credential for card emulation", v3, 0xCu);
    sub_1000752F4(v4);
  }

  v8 = *(v0 + 2368);
  v9 = *(v0 + 2360);
  v10 = *(v0 + 2280);
  v11 = *(v0 + 2272);
  v20 = *(v0 + 2264);
  v12 = *(v0 + 2008);
  v13 = (*(v0 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
  sub_1000B5374(0);
  v14 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v15 = *(v12 + v14);

  os_unfair_lock_lock((v15 + 20));
  *(v15 + 16) = 0;
  os_unfair_lock_unlock((v15 + 20));

  sub_10009591C();
  v16 = swift_allocError();
  *v17 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1000B2A4C(*(v0 + 1712), *(v0 + 1720));
  *(v0 + 2512) = v16;
  v18 = swift_task_alloc();
  *(v0 + 2520) = v18;
  *v18 = v0;
  v18[1] = sub_10029D33C;

  return sub_1001FF5CC();
}

uint64_t sub_10029DD24(uint64_t a1)
{
  v27 = v1;
  v2 = *(v1 + 2480);
  v3 = *(v1 + 2472);
  v4 = *(v1 + 2456);
  v5 = *(v1 + 2448);
  swift_willThrow();
  sub_10006A178(v5, v4);

  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v26 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = sub_1002FFA0C(v10, v11, &v26);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error %s encountered when arming current credential for card emulation", v8, 0xCu);
    sub_1000752F4(v9);
  }

  v13 = *(v1 + 2368);
  v14 = *(v1 + 2360);
  v15 = *(v1 + 2280);
  v16 = *(v1 + 2272);
  v25 = *(v1 + 2264);
  v17 = *(v1 + 2008);
  v18 = (*(v1 + 2288) & 0x3FFFFFFFFFFFFFFFLL);
  sub_1000B5374(0);
  v19 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
  swift_beginAccess();
  v20 = *(v17 + v19);

  os_unfair_lock_lock((v20 + 20));
  *(v20 + 16) = 0;
  os_unfair_lock_unlock((v20 + 20));

  sub_10009591C();
  v21 = swift_allocError();
  *v22 = 8;
  swift_willThrow();

  swift_unknownObjectRelease();

  sub_1000B2A4C(*(v1 + 1712), *(v1 + 1720));
  *(v1 + 2512) = v21;
  v23 = swift_task_alloc();
  *(v1 + 2520) = v23;
  *v23 = v1;
  v23[1] = sub_10029D33C;

  return sub_1001FF5CC();
}

uint64_t sub_10029E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[31] = a5;
  v6[32] = a6;
  v6[30] = a4;
  sub_100068FC4(&qword_100504258, &qword_10040F8A0);
  v6[33] = swift_task_alloc();
  v7 = type metadata accessor for DispatchTime();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();
  v8 = _s19SECSessionAnalyticsC16ElapsedTimeEventVMa(0);
  v6[37] = v8;
  v6[38] = *(v8 - 8);
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_10029E338, 0, 0);
}

uint64_t sub_10029E338(uint64_t a1, uint64_t a2)
{
  v75 = v2;
  v3 = v2[30];
  v4 = &v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState];
  v5 = *&v3[OBJC_IVAR____TtC10seserviced14SECUserSession_wrappedState + 8];
  v2[43] = v5;
  v6 = *(v4 + 2);
  v2[44] = v6;
  v7 = *(v4 + 3);
  v2[45] = v7;
  if (v7 >> 62 == 1)
  {
    v8 = *v4;
    v2[46] = *v4;
    v9 = OBJC_IVAR____TtC10seserviced14SECUserSession_isPresentingAuthSheet;
    swift_beginAccess();
    v10 = *&v3[v9];
    sub_100218E94(v8, v5, v6, v7);

    os_unfair_lock_lock((v10 + 20));
    *(v10 + 16) = 0;
    os_unfair_lock_unlock((v10 + 20));

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v11 = v2[30];
    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_10051B2C8);
    v13 = v6;
    v14 = (v7 & 0x3FFFFFFFFFFFFFFFLL);
    v15 = v11;
    v16 = v8;
    v17 = v5;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v72 = v17;
      v20 = v2[41];
      v21 = v2[42];
      v68 = v2[40];
      v70 = v19;
      v22 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v22 = 136315394;
      v23 = UUID.uuidString.getter();
      v25 = sub_1002FFA0C(v23, v24, v74);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      CredentialInternal.identifier.getter();
      v26 = UUID.uuidString.getter();
      v28 = v27;
      (*(v20 + 8))(v21, v68);
      v17 = v72;
      v29 = sub_1002FFA0C(v26, v28, v74);

      *(v22 + 14) = v29;
      _os_log_impl(&_mh_execute_header, v18, v70, "Session %s: Ending wired mode for credential %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    if (v5)
    {
      v2[2] = v2;
      v2[3] = sub_10029EBB8;
      v30 = swift_continuation_init();
      v2[17] = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
      v2[10] = _NSConcreteStackBlock;
      v2[11] = 1107296256;
      v2[12] = sub_10021C240;
      v2[13] = &unk_1004CEBE0;
      v2[14] = v30;
      [v17 endSessionWithCompletion:v2 + 10];
      v31 = (v2 + 2);

      return _swift_continuation_await(v31);
    }

    v44 = v2[37];
    v43 = v2[38];
    v45 = v2[30];
    v46 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
    swift_beginAccess();
    if (!(*(v43 + 48))(v45 + v46, 1, v44))
    {
      v48 = v2[35];
      v47 = v2[36];
      v49 = v2[34];
      sub_10012DFF8(v45 + v46, v2[39]);
      static DispatchTime.now()();
      v50 = DispatchTime.uptimeNanoseconds.getter();
      (*(v48 + 8))(v47, v49);
      v31 = DispatchTime.uptimeNanoseconds.getter();
      if (v50 < v31)
      {
        __break(1u);
        return _swift_continuation_await(v31);
      }

      v51 = v2[39];
      (*(v51 + *(v2[37] + 24)))((v50 - v31) / 0x3B9ACA00);
      sub_10012E4DC(v51, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
    }

    v67 = v2[46];
    v69 = v2[43];
    v52 = v2[37];
    v53 = v2[38];
    v54 = v2[33];
    v55 = v2[31];
    v71 = (v2[45] & 0x3FFFFFFFFFFFFFFFLL);
    v73 = v2[44];
    v56 = *(v2[30] + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

    static DispatchTime.now()();
    v57 = swift_allocObject();
    *(v57 + 16) = v56;
    *(v57 + 24) = 4;
    *(v54 + *(v52 + 20)) = 4;
    v58 = (v54 + *(v52 + 24));
    *v58 = sub_10012DF7C;
    v58[1] = v57;
    (*(v53 + 56))(v54, 0, 1, v52);
    swift_beginAccess();
    sub_10012DF88(v54, v45 + v46);
    swift_endAccess();
    sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
    v55(0);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
      v3 = v2[30];
    }

    v32 = type metadata accessor for Logger();
    sub_1000958E4(v32, qword_10051B2C8);
    v33 = v3;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v36 = 136315394;
      v37 = UUID.uuidString.getter();
      v39 = sub_1002FFA0C(v37, v38, v74);

      *(v36 + 4) = v39;
      *(v36 + 12) = 2080;
      v40 = *(v4 + 3);
      if (v40 >> 62)
      {
        if (v40 >> 62 == 1)
        {
          v41 = 0xE500000000000000;
          v42 = 0x6465726957;
        }

        else
        {
          v59 = (*(v4 + 2) | *v4 | *(v4 + 1)) == 0;
          v60 = v40 == 0x8000000000000000;
          if (v60 && v59)
          {
            v42 = 0x656D6567616E614DLL;
          }

          else
          {
            v42 = 0x64696C61766E49;
          }

          if (v60 && v59)
          {
            v41 = 0xEA0000000000746ELL;
          }

          else
          {
            v41 = 0xE700000000000000;
          }
        }
      }

      else
      {
        v41 = 0xED00006E6F697461;
        v42 = 0x6C756D4564726143;
      }

      v61 = sub_1002FFA0C(v42, v41, v74);

      *(v36 + 14) = v61;
      _os_log_impl(&_mh_execute_header, v34, v35, "Session %s: Unexpected state %s while trying to end wired mode", v36, 0x16u);
      swift_arrayDestroy();
    }

    v62 = v2[31];
    sub_10009591C();
    v63 = swift_allocError();
    *v64 = 10;
    swift_willThrow();
    swift_errorRetain();
    v62(v63);
  }

  v65 = v2[1];

  return v65();
}

uint64_t sub_10029EBB8()
{

  return _swift_task_switch(sub_10029EC98, 0, 0);
}

unint64_t sub_10029EC98()
{
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_10050A868;

  os_unfair_lock_lock(v1 + 6);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1 + 6);

  if (v2)
  {
    sub_100307B18(0, 0);
  }

  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 240);
  v6 = OBJC_IVAR____TtC10seserviced14SECUserSession_currentElapsedTimeEvent;
  swift_beginAccess();
  if (!(*(v3 + 48))(v5 + v6, 1, v4))
  {
    v8 = *(v0 + 280);
    v7 = *(v0 + 288);
    v9 = *(v0 + 272);
    sub_10012DFF8(v5 + v6, *(v0 + 312));
    static DispatchTime.now()();
    v10 = DispatchTime.uptimeNanoseconds.getter();
    (*(v8 + 8))(v7, v9);
    result = DispatchTime.uptimeNanoseconds.getter();
    if (v10 < result)
    {
      __break(1u);
      return result;
    }

    v12 = *(v0 + 312);
    (*(v12 + *(*(v0 + 296) + 24)))((v10 - result) / 0x3B9ACA00);
    sub_10012E4DC(v12, _s19SECSessionAnalyticsC16ElapsedTimeEventVMa);
  }

  v21 = *(v0 + 368);
  v22 = *(v0 + 344);
  v13 = *(v0 + 296);
  v14 = *(v0 + 304);
  v15 = *(v0 + 264);
  v16 = *(v0 + 248);
  v23 = (*(v0 + 360) & 0x3FFFFFFFFFFFFFFFLL);
  v24 = *(v0 + 352);
  v17 = *(*(v0 + 240) + OBJC_IVAR____TtC10seserviced14SECUserSession_sessionAnalytics);

  static DispatchTime.now()();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 4;
  *(v15 + *(v13 + 20)) = 4;
  v19 = (v15 + *(v13 + 24));
  *v19 = sub_10012DF7C;
  v19[1] = v18;
  (*(v14 + 56))(v15, 0, 1, v13);
  swift_beginAccess();
  sub_10012DF88(v15, v5 + v6);
  swift_endAccess();
  sub_1001FEFA8(0, 0, 0, 0x8000000000000000);
  v16(0);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10029F124()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10029F15C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10029F1A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10012E598;

  return sub_10029E184(a1, v4, v5, v6, v7, v8);
}

void *sub_10029F26C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return _swiftEmptyArrayStorage;
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_10012F1D8(0, 1, 1, _swiftEmptyArrayStorage);
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
    v14 = sub_10012F1D8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
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

        v14 = sub_10012F1D8(0, *(v14 + 16) + 1, 1, v14);
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
      v41 = sub_10012F1D8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_10012F1D8((v28 > 1), v13 + 1, 1, v41);
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

uint64_t sub_10029F644()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10029F694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10012E598;

  return sub_100298A9C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10029F770()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10029F7C4()
{
  swift_unknownObjectRelease();

  sub_10006A178(*(v0 + 48), *(v0 + 56));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10029F814(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000C288C;

  return sub_1002978A0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10029F904()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_10006A178(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, ((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_10029FA18(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = v1[2];
  v7 = v1[4];
  v14 = v1[3];
  v8 = (v1 + v5);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v1 + v6);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10012E598;

  return sub_100291140(a1, v15, v14, v7, v1 + v4, v9, v10, v11);
}

uint64_t sub_10029FB90()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10029FC74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10012E598;

  return sub_10028D134(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10029FE40@<X0>(uint64_t a1@<X8>)
{
  sub_100068FC4(&qword_100504F00, &qword_10040C480);
  result = swift_allocObject();
  *(result + 16) = xmmword_10040C130;
  strcpy((result + 32), "serialNumber");
  *(result + 45) = 0;
  *(result + 46) = -5120;
  *(result + 48) = 147;
  *(result + 56) = 0;
  *(result + 64) = 0u;
  *(result + 80) = -64;
  *(result + 88) = _swiftEmptyArrayStorage;
  strcpy((result + 96), "caIdentifier");
  *(result + 109) = 0;
  *(result + 110) = -5120;
  *(result + 112) = 66;
  *(result + 120) = 0;
  *(result + 128) = 0u;
  *(result + 144) = -64;
  *(result + 152) = _swiftEmptyArrayStorage;
  *(result + 160) = 0xD000000000000011;
  *(result + 168) = 0x8000000100464D60;
  *(result + 176) = 24352;
  *(result + 184) = 0;
  *(result + 192) = 0u;
  *(result + 208) = -64;
  *(result + 216) = _swiftEmptyArrayStorage;
  *(result + 224) = 0x656761735579656BLL;
  *(result + 232) = 0xE800000000000000;
  *(result + 240) = 149;
  *(result + 248) = 0;
  *(result + 256) = 0u;
  *(result + 272) = -64;
  *(result + 280) = _swiftEmptyArrayStorage;
  strcpy((result + 288), "effectiveDate");
  *(result + 302) = -4864;
  *(result + 304) = 37;
  *(result + 312) = 256;
  *(result + 320) = 0u;
  *(result + 336) = -64;
  *(result + 344) = _swiftEmptyArrayStorage;
  strcpy((result + 352), "expirationDate");
  *(result + 367) = -18;
  *(result + 368) = 24356;
  *(result + 376) = 256;
  *(result + 384) = 0u;
  *(result + 400) = -64;
  *(result + 408) = _swiftEmptyArrayStorage;
  *(result + 416) = 0x4E4944536163;
  *(result + 424) = 0xE600000000000000;
  *(result + 432) = 69;
  *(result + 440) = 0;
  *(result + 448) = 0u;
  *(result + 464) = -64;
  *(result + 472) = _swiftEmptyArrayStorage;
  *(result + 480) = 0xD000000000000011;
  *(result + 488) = 0x8000000100464D80;
  *(result + 496) = 83;
  *(result + 504) = 0;
  *(result + 512) = 0u;
  *(result + 528) = -64;
  *(result + 536) = _swiftEmptyArrayStorage;
  *(result + 544) = 0x654B63696C627570;
  *(result + 552) = 0xE900000000000079;
  *(result + 560) = 32585;
  *(result + 568) = 0;
  *(result + 576) = 0u;
  *(result + 592) = -64;
  *(result + 600) = _swiftEmptyArrayStorage;
  *a1 = 32545;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  *(a1 + 32) = 64;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1002A0074@<X0>(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1 >> 61 != 3)
  {
    sub_10007FC0C();
    swift_allocError();
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *v29 = 4;
    *(v29 + 24) = 3;
    swift_willThrow();
  }

  v3 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  if (!*(v3 + 16))
  {
LABEL_17:
    sub_10007FC0C();
    swift_allocError();
    *(v30 + 8) = 0;
    *(v30 + 16) = 0;
    *v30 = 3;
    *(v30 + 24) = 3;
    swift_willThrow();
  }

  v4 = sub_10008C908(0x754E6C6169726573, 0xEC0000007265626DLL);
  if ((v5 & 1) == 0)
  {

    goto LABEL_17;
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  v7 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  if (v6 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v31 + 8) = 0;
    *(v31 + 16) = 0;
    *v31 = 4;
    *(v31 + 24) = 3;
    swift_willThrow();
  }

  v9 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((v6 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v10 = *(v3 + 16);

  sub_100069E2C(v9, v8);
  if (!v10 || (v11 = sub_10008C908(0x69746E6564496163, 0xEC00000072656966), (v12 & 1) == 0))
  {

    sub_10007FC0C();
    swift_allocError();
    *(v32 + 8) = 0;
    *(v32 + 16) = 0;
    *v32 = 3;
    *(v32 + 24) = 3;
    swift_willThrow();
LABEL_22:

    return sub_10006A178(v9, v8);
  }

  v13 = *(*(v3 + 56) + 8 * v11);
  if (v13 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v33 + 8) = 0;
    *(v33 + 16) = 0;
    *v33 = 4;
    *(v33 + 24) = 3;
    swift_willThrow();

    goto LABEL_22;
  }

  v15 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v41 = v14;
  if (!*(v3 + 16))
  {

    sub_100069E2C(v15, v14);
    goto LABEL_25;
  }

  v48 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  sub_100069E2C(v15, v14);
  v16 = sub_10008C908(0xD000000000000011, 0x8000000100464D60);
  if ((v17 & 1) == 0)
  {
LABEL_25:

    sub_10007FC0C();
    swift_allocError();
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
    *v34 = 3;
    *(v34 + 24) = 3;
    swift_willThrow();

LABEL_26:

    v35 = 0;
    goto LABEL_27;
  }

  v18 = *(*(v3 + 56) + 8 * v16);
  if (v18 >> 61 != 1)
  {

    sub_10007FC0C();
    swift_allocError();
    *(v36 + 8) = 0;
    *(v36 + 16) = 0;
    *v36 = 4;
    *(v36 + 24) = 3;
    swift_willThrow();

    goto LABEL_26;
  }

  v19 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v20 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  v39 = v20;
  v40 = v19;
  if (*(v3 + 16))
  {

    sub_100069E2C(v19, v20);
    v21 = sub_10008C908(0xD000000000000011, 0x8000000100464D80);
    if (v22)
    {
      v23 = *(*(v3 + 56) + 8 * v21);

      if (v23 >> 61 == 1)
      {

        v24 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v25 = *((v23 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        sub_100069E2C(v24, v25);

        *&v43 = v9;
        *(&v43 + 1) = v8;
        *&v44 = v48;
        *(&v44 + 1) = v41;
        *&v45 = v19;
        *(&v45 + 1) = v39;
        *&v46 = v24;
        *(&v46 + 1) = v25;
        v47[0] = v9;
        v47[1] = v8;
        v47[2] = v48;
        v47[3] = v41;
        v47[4] = v19;
        v47[5] = v39;
        v47[6] = v24;
        v47[7] = v25;
        sub_1002A0670(&v43, v42);
        result = sub_10018C7D0(v47);
        v27 = v44;
        *a2 = v43;
        a2[1] = v27;
        v28 = v46;
        a2[2] = v45;
        a2[3] = v28;
        return result;
      }

      sub_10007FC0C();
      swift_allocError();
      *(v38 + 8) = 0;
      *(v38 + 16) = 0;
      *v38 = 4;
      *(v38 + 24) = 3;
      swift_willThrow();

      goto LABEL_32;
    }
  }

  else
  {

    sub_100069E2C(v19, v20);
  }

  sub_10007FC0C();
  swift_allocError();
  *(v37 + 8) = 0;
  *(v37 + 16) = 0;
  *v37 = 3;
  *(v37 + 24) = 3;
  swift_willThrow();

LABEL_32:

  v35 = 1;
  v15 = v48;
  v7 = v39;
LABEL_27:

  sub_10006A178(v9, v8);
  result = sub_10006A178(v15, v41);
  if (v35)
  {
    return sub_10006A178(v40, v7);
  }

  return result;
}

__n128 sub_1002A06A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1002A06BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1002A0710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_1002A0780(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  v52 = _swiftEmptyArrayStorage;
  sub_10019F9A8(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  v7 = _HashTable.startBucket.getter();
  v8 = *(v5 + 36);
  result = sub_100068FC4(&qword_100502C58, &qword_100409D20);
  v45 = v5;
  v10 = 0;
  v41 = v5 + 72;
  v42 = v3;
  v43 = v5 + 64;
  v44 = v8;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v5 + 32))
  {
    v14 = v7 >> 6;
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(v5 + 36))
    {
      goto LABEL_26;
    }

    v47 = v10;
    v48 = v4;
    v15 = *(v5 + 56);
    v16 = (*(v5 + 48) + 16 * v7);
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v15 + 8 * v7);
    sub_100069E2C(*v16, v17);
    v46 = v2;
    sub_100288788(v18, v17);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v20 = BidirectionalCollection<>.joined(separator:)();
    v22 = v21;

    v49 = v20;
    v50 = v22;
    v51 = v19;
    v23 = static _DictionaryStorage.allocate(capacity:)();

    v25 = v49;
    v24 = v50;
    v26 = v51;

    result = sub_10008C908(v25, v24);
    if (v27)
    {
      goto LABEL_27;
    }

    v23[(result >> 6) + 8] |= 1 << result;
    v28 = (v23[6] + 16 * result);
    *v28 = v25;
    v28[1] = v24;
    *(v23[7] + 8 * result) = v26;
    v29 = v23[2];
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_28;
    }

    v23[2] = v31;

    sub_100075768(&v49, &qword_100507810, &qword_1004143C0);
    result = sub_10006A178(v18, v17);
    v4 = v48;
    v52 = v48;
    v33 = v48[2];
    v32 = v48[3];
    if (v33 >= v32 >> 1)
    {
      result = sub_10019F9A8((v32 > 1), v33 + 1, 1);
      v4 = v52;
    }

    v4[2] = v33 + 1;
    v4[v33 + 4] = v23;
    LODWORD(v8) = v44;
    v5 = v45;
    v11 = 1 << *(v45 + 32);
    if (v7 >= v11)
    {
      goto LABEL_29;
    }

    v6 = v43;
    v34 = *(v43 + 8 * v14);
    if ((v34 & (1 << v7)) == 0)
    {
      goto LABEL_30;
    }

    if (v44 != *(v45 + 36))
    {
      goto LABEL_31;
    }

    v35 = v34 & (-2 << (v7 & 0x3F));
    if (v35)
    {
      v11 = __clz(__rbit64(v35)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v12 = v42;
      v13 = v47;
    }

    else
    {
      v36 = v14 << 6;
      v37 = v14 + 1;
      v12 = v42;
      v38 = (v41 + 8 * v14);
      while (v37 < (v11 + 63) >> 6)
      {
        v40 = *v38++;
        v39 = v40;
        v36 += 64;
        ++v37;
        if (v40)
        {
          result = sub_1000937D4(v7, v44, 0);
          v11 = __clz(__rbit64(v39)) + v36;
          goto LABEL_22;
        }
      }

      result = sub_1000937D4(v7, v44, 0);
LABEL_22:
      v13 = v47;
    }

    v10 = v13 + 1;
    v7 = v11;
    v2 = v46;
    if (v10 == v12)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_1002A0B30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 1);
  __chkstk_darwin(v2);
  v5 = (v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    goto LABEL_45;
  }

  while (1)
  {
    v6 = qword_10051B7F0;
    *v5 = qword_10051B7F0;
    (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
    v7 = v6;
    LOBYTE(v6) = _dispatchPreconditionTest(_:)();
    (*(v3 + 8))(v5, v2);
    if ((v6 & 1) == 0)
    {
      __break(1u);
      goto LABEL_47;
    }

    if (*(v1 + 16))
    {
      break;
    }

    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000958E4(v12, qword_1005094B8);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Lyon Power started", v15, 2u);
    }

    *(v1 + 16) = 1;
    if (qword_100501AF0 != -1)
    {
      swift_once();
    }

    v16 = qword_10051B4C8;
    swift_beginAccess();
    v17 = *(v1 + 64);
    v18 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_10012EC5C(0, v17[2] + 1, 1, v17);
      *(v1 + 64) = v17;
    }

    v21 = v17[2];
    v20 = v17[3];
    if (v21 >= v20 >> 1)
    {
      v17 = sub_10012EC5C((v20 > 1), v21 + 1, 1, v17);
    }

    v17[2] = v21 + 1;
    v22 = &v17[3 * v21];
    *(v22 + 32) = 2;
    v22[5] = v18;
    v22[6] = &off_1004CB1E8;
    *(v1 + 64) = v17;
    swift_endAccess();
    if (qword_100501B00 != -1)
    {
      swift_once();
    }

    v23 = qword_10051B4D0;
    swift_beginAccess();
    v24 = *(v1 + 64);
    v5 = v23;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 64) = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_10012EC5C(0, v24[2] + 1, 1, v24);
      *(v1 + 64) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_10012EC5C((v26 > 1), v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    v28 = &v24[3 * v27];
    *(v28 + 32) = 1;
    v28[5] = v5;
    v28[6] = &off_1004CB290;
    *(v1 + 64) = v24;
    swift_endAccess();
    if (qword_1005019E8 != -1)
    {
      swift_once();
    }

    v2 = off_100504A68;
    v29 = sub_1000CAA04();
    v1 = v29;
    if ((v29 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      v2 = sub_10014E510();
      sub_1002A7378(&qword_100503608, sub_10014E510, &protocol conformance descriptor for NSObject);
      Set.Iterator.init(_cocoa:)();
      v1 = v45;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v3 = v49;
    }

    else
    {
      v32 = 0;
      v33 = -1 << *(v29 + 32);
      v30 = (v29 + 56);
      v31 = ~v33;
      v34 = -v33;
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v3 = v35 & *(v29 + 56);
    }

    v43[0] = v31;
    for (i = (v31 + 64) >> 6; v1 < 0; v3 = v40)
    {
      v42 = __CocoaSet.Iterator.next()();
      if (!v42)
      {
        goto LABEL_43;
      }

      v43[1] = v42;
      sub_10014E510();
      swift_dynamicCast();
      v41 = v44;
      v39 = v32;
      v40 = v3;
      if (!v44)
      {
        goto LABEL_43;
      }

LABEL_41:
      v2 = v5;
      sub_1001DD9DC(v41);

      v32 = v39;
    }

    v37 = v32;
    v38 = v3;
    v39 = v32;
    if (v3)
    {
LABEL_37:
      v40 = (v38 - 1) & v38;
      v41 = *(*(v1 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v38)))));
      if (v41)
      {
        goto LABEL_41;
      }

LABEL_43:
      sub_100093854(v1);
      return;
    }

    while (1)
    {
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v39 >= i)
      {
        goto LABEL_43;
      }

      v38 = v30[v39];
      ++v37;
      if (v38)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_45:
    swift_once();
  }

  if (qword_100501C38 == -1)
  {
    goto LABEL_5;
  }

LABEL_47:
  swift_once();
LABEL_5:
  v8 = type metadata accessor for Logger();
  sub_1000958E4(v8, qword_1005094B8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "LyonPower is already running", v11, 2u);
  }
}

BOOL sub_1002A11C0(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1002A11F0(unsigned __int16 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

void sub_1002A1220(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v9 >> 60 == 15)
  {
    if (qword_100501C38 == -1)
    {
LABEL_6:
      v10 = type metadata accessor for Logger();
      sub_1000958E4(v10, qword_1005094B8);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v52[0] = v14;
        *v13 = 136315138;
        type metadata accessor for UUID();
        sub_1002A7378(&qword_100504C70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v15 = dispatch thunk of CustomStringConvertible.description.getter();
        v17 = sub_1002FFA0C(v15, v16, v52);

        *(v13 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v11, v12, "Key identifier not set for peer %s", v13, 0xCu);
        sub_1000752F4(v14);
      }

      sub_100079E24();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      return;
    }

LABEL_23:
    swift_once();
    goto LABEL_6;
  }

  v19 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  swift_beginAccess();
  v20 = *(v1 + 89);
  sub_100069E2C(v19, v9);
  if (v20)
  {
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_1005094B8);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "We are already in biolockout backoff, should not have connected to a peer", v24, 2u);
    }

    sub_10006A2D0(v19, v9);
  }

  else
  {
    v49 = v1;
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    v26 = sub_1000958E4(v25, qword_1005094B8);
    sub_100069E2C(v19, v9);
    v48 = v26;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    sub_10006A2D0(v19, v9);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v50 = v47;
      *v29 = 136315138;
      v53 = sub_100288788(v19, v9);
      v46 = v28;
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
      v30 = BidirectionalCollection<>.joined(separator:)();
      v32 = v31;

      v33 = sub_1002FFA0C(v30, v32, &v50);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v46, "Sending biolockout event for %s", v29, 0xCu);
      sub_1000752F4(v47);
    }

    v47 = "disconnectionCount";
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = 0xD000000000000014;
    *(inited + 40) = 0x80000001004686F0;
    v50 = 0xD000000000000013;
    v51 = 0x800000010046A870;
    sub_10006A2BC(v19, v9);
    v53 = sub_100288788(v19, v9);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
    v35 = BidirectionalCollection<>.joined(separator:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39 = v50;
    v40 = v51;
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v39;
    *(inited + 56) = v40;
    v41 = sub_10008FFDC(inited);
    swift_setDeallocating();
    sub_100075768(inited + 32, &qword_100507D30, &unk_100409C90);
    sub_1003375E0(0xD000000000000025, v47 | 0x8000000000000000, 0, 0xF000000000000000, v19, v9, v41);

    sub_10006A2D0(v19, v9);
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Biolockout prompt triggered, scanning disabled", v44, 2u);
    }

    *(v49 + 89) = 1;
    sub_1002A4B34();
    sub_10006A2D0(v19, v9);
  }
}

void sub_1002A1A18(NSObject *a1, uint64_t a2)
{
  if (!*(v2 + 40))
  {
    return;
  }

  if (qword_100501C28 != -1)
  {
    v42 = a1;
    v43 = a2;
    swift_once();
    a2 = v43;
    a1 = v42;
  }

  v3 = qword_1005094A8;
  if (!qword_1005094A8)
  {
    return;
  }

  if (qword_100501C20 != -1)
  {
    v44 = a1;
    v45 = a2;
    swift_once();
    a2 = v45;
    a1 = v44;
  }

  if (byte_1005094A0 != 1)
  {
    return;
  }

  if ((a2 & 1) == 0)
  {
    if (!a1 || (v9 = *(&a1[1].isa + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier), v9 >> 60 == 15))
    {
      if (qword_100501C38 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_1000958E4(v10, qword_1005094B8);
      oslog = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(oslog, v11))
      {
        goto LABEL_28;
      }

      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Ignoring disconnection, no reader identifier available", v12, 2u);
LABEL_27:

LABEL_28:

      return;
    }

    v17 = *(&a1->isa + OBJC_IVAR____TtC10seserviced8LyonPeer_readerIdentifier);
    swift_beginAccess();
    v18 = *(v2 + 112);
    v19 = *(v18 + 16);

    sub_10006A2BC(v17, v9);
    if (v19)
    {
      v20 = sub_10008C8DC(v17, v9);
      if (v21)
      {
        v22 = *(*(v18 + 56) + 8 * v20);
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    swift_endAccess();
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      sub_100069E2C(v17, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(v2 + 112);
      *(v2 + 112) = 0x8000000000000000;
      sub_100315914(v23, v17, v9, isUniquelyReferenced_nonNull_native);
      sub_10006A2D0(v17, v9);
      *(v2 + 112) = v49;
      swift_endAccess();
      if (qword_100501C38 == -1)
      {
LABEL_41:
        v25 = type metadata accessor for Logger();
        sub_1000958E4(v25, qword_1005094B8);
        sub_100069E2C(v17, v9);
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.info.getter();
        sub_10006A2D0(v17, v9);
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          v50[0] = v47;
          *v28 = 136315650;
          v46 = v27;
          sub_100288788(v17, v9);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
          v29 = BidirectionalCollection<>.joined(separator:)();
          v31 = v30;

          v32 = sub_1002FFA0C(v29, v31, v50);

          *(v28 + 4) = v32;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v23;
          *(v28 + 22) = 2048;
          *(v28 + 24) = v3;
          _os_log_impl(&_mh_execute_header, v26, v46, "%s has %ld connections, %ld is the maximum number of connections allowed per lock", v28, 0x20u);
          sub_1000752F4(v47);
        }

        else
        {
        }

        if (v23 >= v3)
        {
          sub_100069E2C(v17, v9);
          v33 = Logger.logObject.getter();
          v34 = static os_log_type_t.default.getter();
          sub_10006A2D0(v17, v9);
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v50[0] = v36;
            *v35 = 134218242;
            *(v35 + 4) = v23;
            *(v35 + 12) = 2080;
            sub_100288788(v17, v9);
            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0, &protocol conformance descriptor for [A]);
            v37 = BidirectionalCollection<>.joined(separator:)();
            v39 = v38;

            v40 = sub_1002FFA0C(v37, v39, v50);

            *(v35 + 14) = v40;
            _os_log_impl(&_mh_execute_header, v33, v34, "Passive entry disabled due to %ld connections from %s until connection threshold is reset", v35, 0x16u);
            sub_1000752F4(v36);
          }

          sub_1002A58B8(0, v41);
        }

        sub_10006A2D0(v17, v9);

        return;
      }
    }

    swift_once();
    goto LABEL_41;
  }

  v4 = *(v2 + 48);
  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 48) = v5;
    if (qword_100501C18 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v6 = qword_100509498;
  if (v5 == qword_100509498)
  {
    *(v2 + 48) = 0;
    v7 = *(v2 + 40);
    if (qword_100501C08 != -1)
    {
      swift_once();
    }

    v8 = byte_10051B6C0 + v7;
    if ((byte_10051B6C0 + v7) == v8)
    {

      sub_1002A58B8(v8, a2);
      return;
    }

    __break(1u);
    goto LABEL_53;
  }

  if (qword_100501C38 != -1)
  {
LABEL_53:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_1005094B8);
  v14 = v2;

  oslog = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218240;
    *(v16 + 4) = *(v14 + 48);

    *(v16 + 12) = 2048;
    *(v16 + 14) = v6;
    _os_log_impl(&_mh_execute_header, oslog, v15, "Number of error disconnects incremented to %ld, shrinking every %ld errors", v16, 0x16u);
    goto LABEL_27;
  }
}

void sub_1002A227C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v5 = qword_10051B7F0;
  *v4 = qword_10051B7F0;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  if (*(v0 + 16) == 1)
  {
    swift_beginAccess();

    return;
  }

  if (qword_100501C38 != -1)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_1005094B8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Not running", v10, 2u);
  }
}

void sub_1002A24A4(char a1, char a2, char a3, int a4, uint64_t a5, int a6)
{
  v91 = a6;
  v92 = a4;
  LOBYTE(v8) = a3;
  LOBYTE(v9) = a2;
  LOBYTE(v10) = a1;
  v83[0] = *v6;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v88 = *(v11 - 8);
  v89 = v11;
  __chkstk_darwin(v11);
  v86 = v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for DispatchQoS();
  v85 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = 0;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v18 = qword_10051B7F0;
    *v17 = qword_10051B7F0;
    (*(v15 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v14);
    v19 = v18;
    v20 = _dispatchPreconditionTest(_:)();
    (*(v15 + 8))(v17, v14);
    if (v20)
    {
      break;
    }

    __break(1u);
LABEL_92:
    swift_once();
LABEL_5:
    v21 = type metadata accessor for Logger();
    sub_1000958E4(v21, qword_1005094B8);
    v22 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v22, v17))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v22, v17, "Updating configuration", v23, 2u);
    }

    if (v10 == 2 || (v26 = v10 & 1, v24 = swift_beginAccess(), *(v19 + 72) == v26))
    {
      v29 = 0;
    }

    else
    {
      *(v19 + 72) = v26;
      *(v19 + 89) = 0;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v17 = swift_slowAlloc();
        *v17 = 67109120;
        *(v17 + 1) = v26;
        _os_log_impl(&_mh_execute_header, v27, v28, "Biolockout %{BOOL}d", v17, 8u);
      }

      if ((v19[9] & 1) == 0)
      {
        v24 = sub_1002A716C(v24, v25);
      }

      v29 = 1;
    }

    if (v9 != 2)
    {
      v34 = v9 & 1;
      v24 = swift_beginAccess();
      if (*(v19 + 73) != v34)
      {
        *(v19 + 73) = v34;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 67109120;
          *(v37 + 4) = v34;
          _os_log_impl(&_mh_execute_header, v35, v36, "UWB suspended %{BOOL}d", v37, 8u);
        }

        v29 = 1;
      }
    }

    if (v8 != 2)
    {
      v38 = v8 & 1;
      v24 = swift_beginAccess();
      if (*(v19 + 88) != v38)
      {
        *(v19 + 88) = v38;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 67109120;
          *(v41 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v39, v40, "Ranging limit exceeded %{BOOL}d", v41, 8u);
        }

        v29 = 1;
      }
    }

    if (!a5 || (swift_beginAccess(), v42 = v19[12], , v43 = sub_100223F84(a5, v42), v24 = , (v43 & 1) != 0))
    {
LABEL_47:
      LOBYTE(v47) = v91;
      if (v91 == 2)
      {
        goto LABEL_54;
      }

      goto LABEL_48;
    }

    v44 = *(v19[12] + 16);
    if (!*(a5 + 16))
    {
      if (v44)
      {
        if (qword_100501928 != -1)
        {
          swift_once();
        }

        sub_1000BB4B4(1uLL);
      }

LABEL_42:
      v47 = 2;
      goto LABEL_44;
    }

    if (v44)
    {
      goto LABEL_42;
    }

    if (qword_100501928 != -1)
    {
      swift_once();
    }

    v45 = qword_10051B238;
    v95 = v83[0];
    v96 = &off_1004CF0C8;
    v94[0] = v19;

    v46 = v90;
    sub_1000BAF34(v94, 1uLL);
    if (v46)
    {
    }

    v90 = 0;
    sub_1000752F4(v94);
    v47 = (*(v45 + 32) & 1) == 0;
    v19 = v93;
LABEL_44:
    v19[12] = a5;
    swift_bridgeObjectRetain_n();

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      v94[0] = v83[0];
      *v50 = 136315138;
      v51 = v90;
      sub_10009894C(a5);
      v90 = v51;
      v17 = Array.description.getter();
      v53 = v52;

      v54 = sub_1002FFA0C(v17, v53, v94);

      *(v50 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v48, v49, "Key Identifiers in geofence %s", v50, 0xCu);
      sub_1000752F4(v83[0]);
    }

    v29 = 1;
    if (v47 == 2)
    {
      goto LABEL_47;
    }

LABEL_48:
    v24 = swift_beginAccess();
    if ((v47 & 1) != *(v19 + 104))
    {
      *(v19 + 104) = v47 & 1;
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 67109120;
        *(v57 + 4) = v47 & 1;
        _os_log_impl(&_mh_execute_header, v55, v56, "Device stationary status updated to %{BOOL}d", v57, 8u);
      }

      if (v47)
      {
        v96 = sub_1002A5848;
        v97 = 0;
        v94[0] = _NSConcreteStackBlock;
        v94[1] = 1107296256;
        v94[2] = sub_100080830;
        v95 = &unk_1004CF1C8;
        v58 = _Block_copy(v94);
        v17 = v84;
        static DispatchQoS.unspecified.getter();
        v98 = _swiftEmptyArrayStorage;
        sub_1002A7378(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
        sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0, &protocol conformance descriptor for [A]);
        v59 = v86;
        v60 = v89;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v58);
        (*(v88 + 8))(v59, v60);
        v24 = (*(v85 + 8))(v17, v87);
      }

      v29 = 1;
    }

LABEL_54:
    LOBYTE(v9) = v92;
    if (v92 == 2)
    {
      if ((v29 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      if (v92)
      {
        sub_1002A716C(v24, v25);
        swift_beginAccess();
        if ((*(v19 + 90) & 1) == 0 && (*(v19 + 17) & 1) == 0)
        {
          swift_beginAccess();
          v61 = v19[8];
          v62 = *(v61 + 16);
          if (v62)
          {

            v63 = (v61 + 48);
            do
            {
              v64 = *(v63 - 1);
              v65 = *v63;
              ObjectType = swift_getObjectType();
              v94[0] = v64;
              (*(v65 + 8))(ObjectType, v65);
              v63 += 3;
              --v62;
            }

            while (v62);

            v19 = v93;
          }

          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000CB160();
        }
      }

      else
      {
        swift_beginAccess();
        if (*(v19 + 90) == 1)
        {
          if (qword_100501950 != -1)
          {
            swift_once();
          }

          sub_1000C6EAC();
          swift_beginAccess();
          v67 = v19[8];
          v68 = *(v67 + 16);
          if (v68)
          {

            v69 = (v67 + 48);
            do
            {
              v70 = *(v69 - 1);
              v71 = *v69;
              v72 = swift_getObjectType();
              v94[0] = v70;
              (*(v71 + 16))(v72, v71);
              v69 += 3;
              --v68;
            }

            while (v68);

            v19 = v93;
          }
        }
      }

      swift_beginAccess();
      *(v19 + 90) = v9 & 1;
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 67109120;
        *(v75 + 4) = v9 & 1;
        _os_log_impl(&_mh_execute_header, v73, v74, "Express Status %{BOOL}d", v75, 8u);
      }
    }

    v14 = 1;
    swift_beginAccess();
    v8 = (v19 + 10);
    v19[10] = &_swiftEmptySetSingleton;

    a5 = v19[12];
    v76 = 1 << *(a5 + 32);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & *(a5 + 56);
    v10 = (v76 + 63) >> 6;

    v15 = 0;
    while (v78)
    {
LABEL_84:
      v80 = (*(a5 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v78)))));
      v9 = *v80;
      v17 = v80[1];
      sub_100069E2C(*v80, v17);
      if (qword_100501BD8 != -1)
      {
        swift_once();
      }

      v78 &= v78 - 1;
      v81 = sub_10027FC38(v9, v17);
      swift_beginAccess();
      v82 = v81;
      v14 = v8;
      sub_1002A3348(v82);
      swift_endAccess();
      sub_10006A178(v9, v17);
    }

    while (1)
    {
      v79 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v79 >= v10)
      {

        sub_1002A4B34();
        return;
      }

      v78 = *(a5 + 56 + 8 * v79);
      ++v15;
      if (v78)
      {
        v15 = v79;
        goto LABEL_84;
      }
    }

    __break(1u);
LABEL_90:
    swift_once();
  }

  v83[1] = v19;
  v19 = v93;
  if (*(v93 + 16) == 1)
  {
    if (qword_100501C38 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_92;
  }

  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_1000958E4(v30, qword_1005094B8);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Not running", v33, 2u);
  }
}

uint64_t sub_1002A3348(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_100069E2C(*v10, v12);
      sub_1000D589C(v13, v11, v12);
      result = sub_10006A178(v13[0], v13[1]);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1002A3450(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_1000D6D84(v8, v5);
      (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1002A3660(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = *(v1 + 48) + 40 * (v9 | (v8 << 6));
    *&v14[16] = *(v10 + 32);
    v11 = *(v10 + 16);
    v13 = *v10;
    *v14 = v11;
    v15 = v13;
    v16 = *&v14[8];
    sub_1000B6AF8(&v15, v12);
    sub_1000B6AF8(&v16, v12);
    sub_1000D7A08(v12, &v13);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1002A37B4(char a1, double a2, double a3)
{
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer] = 0;
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer] = 0;
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceDuration] = a2;
  *&v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionDuration] = a3;
  v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive] = 0;
  v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive] = 0;
  v3[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus] = a1;
  v24.receiver = v3;
  v24.super_class = type metadata accessor for LyonPowerExceptionHandlerClass();
  v4 = objc_msgSendSuper2(&v24, "init");
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = qword_100501D90;
  v7 = v4;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  v9 = objc_allocWithZone(SESTimer);
  v22 = sub_1002A7144;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100080830;
  v21 = &unk_1004CF100;
  v10 = _Block_copy(&v18);

  v11 = sub_1003AE50C(v9, v8, v10);
  _Block_release(v10);

  v12 = *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer];
  *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer] = v11;

  v13 = objc_allocWithZone(SESTimer);
  v22 = sub_1002A7164;
  v23 = v5;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_100080830;
  v21 = &unk_1004CF128;
  v14 = _Block_copy(&v18);

  v15 = sub_1003AE50C(v13, v8, v14);
  _Block_release(v14);

  v16 = *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer];
  *&v7[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer] = v15;

  return v7;
}

void sub_1002A3A30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if (v6)
  {
    v25 = v9;
    v26 = v10;
    if (qword_100501C38 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_1005094B8);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24[1] = v3 + 104;
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Exception status active", v14, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) != 1)
  {
    *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) = 1;
    if (*(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive))
    {
      return;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Starting debounce", v20, 2u);
    }

    v21 = v25;
    *v5 = v25;
    v8(v5, v7, v2);
    v22 = v21;
    LOBYTE(v21) = _dispatchPreconditionTest(_:)();
    v26(v5, v2);
    if (v21)
    {
      v23 = *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer);
      if (v23)
      {
        sub_1003AE618(v23, *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceDuration));
        *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive) = 1;
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Exception status has not changed; doing nothing", v17, 2u);
  }
}

void sub_1002A3E00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v3 + 104);
  v8(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v6;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v11(v5, v2);
  if (v10)
  {
    v25 = v9;
    v26 = v8;
    if (qword_100501C38 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v12 = type metadata accessor for Logger();
  sub_1000958E4(v12, qword_1005094B8);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v11;
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Exception status inactive", v15, 2u);
    v11 = v24;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus))
  {
    *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) = 0;
    v17 = v25;
    v16 = v26;
    *v5 = v25;
    v16(v5, v7, v2);
    v18 = v17;
    LOBYTE(v17) = _dispatchPreconditionTest(_:)();
    v11(v5, v2);
    if (v17)
    {
      v19 = *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceTimer);
      if (v19)
      {
        sub_1003AE754(v19);
        *(v1 + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive) = 0;
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
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Exception status has not changed; doing nothing", v22, 2u);
    }
  }
}

uint64_t sub_1002A4140()
{
  type metadata accessor for LyonPower();
  swift_allocObject();
  result = sub_1002A5DBC();
  qword_10051B6A8 = result;
  return result;
}

uint64_t sub_1002A417C()
{
  v0 = sub_100068FC4(&qword_100509630, &qword_1004143A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5[-v2];
  v5[15] = -94;
  *&v5[13] = 256;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002A42B0()
{
  v0 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v7 = -70;
  v5[1] = 0;
  v6 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002A43E8()
{
  v0 = sub_100068FC4(&qword_100509630, &qword_1004143A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5[-v2];
  v5[15] = 6;
  *&v5[13] = 256;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002A451C()
{
  v0 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v7 = 0x40E5180000000000;
  v5[1] = 0;
  v6 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002A4658()
{
  v0 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v7 = 3;
  v5[1] = 0;
  v6 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002A4790()
{
  v0 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5[-v2];
  v5[15] = 1;
  v5[14] = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002A48C0()
{
  v0 = sub_100068FC4(&qword_100504EE0, &qword_10040C408);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v5 - v2;
  v7 = 25;
  v5[1] = 0;
  v6 = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1002A49FC()
{
  v0 = sub_100068FC4(&qword_100509630, &qword_1004143A8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5[-v2];
  v5[15] = -80;
  *&v5[13] = 256;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  return (*(v1 + 8))(v3, v0);
}

void sub_1002A4B34()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_9;
  }

  if (*(v1 + 16) == 1)
  {
    swift_beginAccess();
    v8 = *(v1 + 56);
    if (*(v8 + 16))
    {
      swift_beginAccess();
      LODWORD(v9) = *(v1 + 88) ^ 1;
      if (*(v1 + 17))
      {
        goto LABEL_18;
      }
    }

    else
    {
      LODWORD(v9) = 0;
      if (*(v1 + 17))
      {
        goto LABEL_18;
      }
    }

    swift_beginAccess();
    if ((*(v1 + 73) & 1) == 0 && (*(v1 + 89) & 1) == 0 && *(*(v1 + 80) + 16) && *(v1 + 40))
    {
      v14 = *(v1 + 104) ^ 1;
      goto LABEL_19;
    }

LABEL_18:
    v14 = 0;
LABEL_19:
    swift_beginAccess();
    if (*(v1 + 72) == 1)
    {
      v34 = &off_1004C37A0;
      v35 = v8;

      sub_100068FC4(&qword_100509620, &qword_1004143A0);
      sub_100075C60(&qword_100509628, &qword_100509620, &qword_1004143A0, &protocol conformance descriptor for [A]);
      sub_1002A7040();
      v15 = Collection<>.contains<A>(_:)();

      if ((v15 & 1) == 0)
      {
        if (qword_100501C38 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_1000958E4(v16, qword_1005094B8);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "Disabling scanning when biolock is active and no geofence entry exception", v19, 2u);
        }

        v14 = 0;
      }
    }

    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_1005094B8);
    swift_retain_n();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      HIDWORD(v32) = v9;
      v9 = v24;
      v35 = v24;
      *v23 = 67111170;
      *(v23 + 4) = v14 & 1;
      *(v23 + 8) = 1024;
      *(v23 + 10) = *(v1 + 17);
      *(v23 + 14) = 1024;
      *(v23 + 16) = *(v1 + 73);
      *(v23 + 20) = 1024;
      *(v23 + 22) = *(v1 + 89);
      *(v23 + 26) = 2080;
      sub_1000E1E80();

      v25 = Set.description.getter();
      v27 = v26;

      v28 = sub_1002FFA0C(v25, v27, &v35);

      *(v23 + 28) = v28;
      *(v23 + 36) = 256;
      LOBYTE(v28) = *(v1 + 40);

      *(v23 + 38) = v28;

      *(v23 + 39) = 1024;
      LODWORD(v28) = *(v1 + 104);

      *(v23 + 41) = v28;

      *(v23 + 45) = 1024;
      LODWORD(v28) = *(v1 + 72);

      *(v23 + 47) = v28;

      *(v23 + 51) = 1024;
      v29 = *(v1 + 56);
      v33 = &off_1004C37C8;
      v34 = v29;

      sub_100068FC4(&qword_100509620, &qword_1004143A0);
      sub_100075C60(&qword_100509628, &qword_100509620, &qword_1004143A0, &protocol conformance descriptor for [A]);
      sub_1002A7040();
      LOBYTE(v28) = Collection<>.contains<A>(_:)();

      *(v23 + 53) = v28 & 1;

      _os_log_impl(&_mh_execute_header, v21, v22, "Setting scanning to %{BOOL}d with low power mode %{BOOL}d, Uwb suspended %{BOOL}d, biolockout backoff %{BOOL}d, express reader group identifiers %s, adaptive connection rssi threshold %hhd, device stationary %{BOOL}d, biolock %{BOOL}d, and geofence entry state %{BOOL}d", v23, 0x39u);
      sub_1000752F4(v9);
      LOBYTE(v9) = BYTE4(v32);
    }

    else
    {
    }

    if (qword_100501B58 != -1)
    {
      swift_once();
    }

    if (v14)
    {
      v30 = *(v1 + 80);
    }

    else
    {
      v30 = 0;
    }

    if (*(v1 + 72) == 1)
    {
      if (qword_100501C30 != -1)
      {
        swift_once();
      }

      v31 = &byte_1005094B0;
    }

    else
    {
      v31 = (v1 + 40);
    }

    sub_100225F98(v30, *v31, v9 & 1);

    return;
  }

  if (qword_100501C38 != -1)
  {
    goto LABEL_43;
  }

LABEL_9:
  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_1005094B8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Not running", v13, 2u);
  }
}

void sub_1002A52AC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v48[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (*(v1 + 16) != 1)
  {
    if (qword_100501C38 == -1)
    {
LABEL_15:
      v20 = type metadata accessor for Logger();
      sub_1000958E4(v20, qword_1005094B8);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Not running", v23, 2u);
      }

      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_15;
  }

  swift_beginAccess();
  v8 = *(v1 + 56);
  *(v1 + 56) = _swiftEmptyArrayStorage;
  swift_beginAccess();
  v9 = *(v1 + 64);
  v10 = *(v9 + 16);
  if (v10)
  {
    v47 = v8;

    v12 = (v9 + 40);
    do
    {
      v13 = *(v12 - 8);
      v14 = *v12;
      v11 = (*((swift_isaMask & **v12) + 0xE8))(v11);
      if (v11)
      {
        swift_beginAccess();
        v15 = *(v1 + 56);
        v16 = v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 56) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_10012FB20(0, *(v15 + 2) + 1, 1, v15);
          *(v1 + 56) = v15;
        }

        v19 = *(v15 + 2);
        v18 = *(v15 + 3);
        if (v19 >= v18 >> 1)
        {
          v15 = sub_10012FB20((v18 > 1), v19 + 1, 1, v15);
        }

        *(v15 + 2) = v19 + 1;
        v15[v19 + 32] = v13;
        *(v1 + 56) = v15;
        swift_endAccess();
      }

      v12 += 3;
      --v10;
    }

    while (v10);

    v8 = v47;
  }

  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000958E4(v24, qword_1005094B8);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v48[0] = v28;
    *v27 = 136315138;

    v29 = Array.description.getter();
    v31 = v30;

    v32 = sub_1002FFA0C(v29, v31, v48);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v25, v26, "Active Exceptions %s", v27, 0xCu);
    sub_1000752F4(v28);
  }

  v35 = *(v1 + 56);
  v36 = *(v35 + 16);
  v37 = (v35 + 32);
  while (v36)
  {
    v38 = *v37++;
    --v36;
    if ((v38 - 1) <= 1)
    {
      sub_1002A716C(v33, v34);
      break;
    }
  }

  v39 = *(v8 + 16);
  v40 = (v8 + 32);
  while (v39)
  {
    v41 = *v40++;
    --v39;
    if (v41 == 1)
    {

      goto LABEL_35;
    }
  }

  v42 = *(v1 + 56);
  v43 = *(v42 + 16);
  v44 = (v42 + 32);
  while (v43)
  {
    v45 = *v44++;
    --v43;
    if (v45 == 1)
    {
      swift_beginAccess();
      *(v1 + 89) = 0;
      sub_1002A4B34();
      break;
    }
  }

LABEL_35:
  sub_1002A4B34();
  if (qword_100501950 != -1)
  {
    swift_once();
  }

  sub_1000D48D8(v46);
}

void sub_1002A5848()
{
  if (qword_1005018F8 != -1)
  {
    swift_once();
  }

  sub_100089854(0xD000000000000025, 0x800000010046A9F0);
}

void sub_1002A58B8(char a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100501C00 != -1)
  {
    swift_once();
  }

  if (qword_10051B6B8 < a1)
  {
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000958E4(v5, qword_1005094B8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Passive entry disabled until connection threshold is reset", v8, 2u);
    }

    a1 = 0;
  }

  *(v3 + 40) = a1;
  if (!*(v3 + 32))
  {
    v9 = swift_allocObject();
    swift_weakInit();
    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v10 = qword_10051B7F0;
    v11 = objc_allocWithZone(SESTimer);
    v22[4] = sub_1002A736C;
    v22[5] = v9;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 1107296256;
    v22[2] = sub_100080830;
    v22[3] = &unk_1004CF178;
    v12 = _Block_copy(v22);

    v13 = sub_1003AE50C(v11, v10, v12);
    _Block_release(v12);

    v14 = *(v3 + 32);
    *(v3 + 32) = v13;

    v15 = *(v3 + 32);
    if (v15)
    {
      v16 = qword_100501C10;
      v17 = v15;
      if (v16 != -1)
      {
        swift_once();
      }

      sub_1003AE618(v17, *&qword_100509490);
    }

    else
    {
    }
  }

  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000958E4(v18, qword_1005094B8);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 16777472;
    v21[4] = *(v3 + 40);

    _os_log_impl(&_mh_execute_header, v19, v20, "Shrinking adaptiveConnectionRSSITreshold to %hhd", v21, 5u);
  }

  else
  {
  }

  sub_1002A4B34();
}

uint64_t sub_1002A5C4C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000958E4(v2, qword_1005094B8);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      if (qword_100501C10 != -1)
      {
        v8 = v5;
        swift_once();
        v5 = v8;
      }

      *(v5 + 4) = qword_100509490;
      _os_log_impl(&_mh_execute_header, v3, v4, "Ending connection RSSI backoff for %f seconds for Lyon", v5, 0xCu);
    }

    sub_1002A716C(v6, v7);
    sub_1002A4B34();
  }

  return result;
}

uint64_t sub_1002A5DBC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  if (qword_100501BF8 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = byte_10051B6B0;
  *(v0 + 48) = 0;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = _swiftEmptyArrayStorage;
  *(v0 + 72) = 0;
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = 0;
  *(v0 + 90) = 0;
  *(v0 + 96) = &_swiftEmptySetSingleton;
  *(v0 + 104) = 0;
  *(v0 + 112) = sub_10009122C(_swiftEmptyArrayStorage);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1002A7374;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CF1A0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1002A5F2C()
{
  v1 = v0;
  v2 = 0xEE0065707974206ELL;
  v3 = 0x6F69747065637865;
  swift_beginAccess();
  v4 = *(v0 + 56);
  v5 = *(v4 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v61 = v0;
    *&v63 = _swiftEmptyArrayStorage;

    sub_10019F464(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    v62 = v4;
    sub_100068FC4(&qword_100502C10, &unk_100409CD0);
    v7 = 32;
    while (1)
    {
      LOBYTE(v70[0]) = *(v4 + v7);
      v8 = String.init<A>(describing:)();
      v10 = v9;
      v11 = static _DictionaryStorage.allocate(capacity:)();

      v12 = sub_10008C908(0x6F69747065637865, 0xEE0065707974206ELL);
      v14 = v13;

      if (v14)
      {
        break;
      }

      v11[(v12 >> 6) + 8] |= 1 << v12;
      v15 = (v11[6] + 16 * v12);
      strcpy(v15, "exception type");
      v15[15] = -18;
      v16 = (v11[7] + 16 * v12);
      *v16 = v8;
      v16[1] = v10;
      v17 = v11[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_36;
      }

      v11[2] = v19;
      *&v63 = v6;
      v21 = v6[2];
      v20 = v6[3];
      if (v21 >= v20 >> 1)
      {
        sub_10019F464((v20 > 1), v21 + 1, 1);
        v6 = v63;
      }

      v6[2] = v21 + 1;
      v6[v21 + 4] = v11;
      ++v7;
      --v5;
      v2 = 0xEE0065707974206ELL;
      v4 = v62;
      if (!v5)
      {

        v1 = v61;
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0xD00000000000001ELL;
    *(&v64[0] + 1) = sub_100068FC4(&unk_100504010, &unk_100409CB0);
    *&v63 = v6;
    sub_100075D50(&v63, v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = _swiftEmptyDictionarySingleton;
    sub_100315178(v70, 0xD000000000000010, 0x80000001004687B0, isUniquelyReferenced_nonNull_native);
    v23 = v69;
    swift_beginAccess();
    v24 = *(v1 + 64);
    v25 = *(v24 + 16);
    v2 = _swiftEmptyArrayStorage;
    if (!v25)
    {
LABEL_19:
      *(&v64[0] + 1) = sub_100068FC4(&unk_100503EC0, &unk_100417130);
      *&v63 = v2;
      sub_100075D50(&v63, v70);
      v45 = swift_isUniquelyReferenced_nonNull_native();
      sub_100315178(v70, 0xD000000000000013, 0x800000010046A8E0, v45);
      v2 = v23;
      v12 = "monitoredExceptions";
      if (qword_100501C30 == -1)
      {
        goto LABEL_20;
      }

      goto LABEL_37;
    }

    v60 = v23;
    *&v70[0] = _swiftEmptyArrayStorage;

    sub_10019F4C4(0, v25, 0);
    v2 = *&v70[0];
    v26 = (v24 + 40);
    sub_100068FC4(&unk_100504000, &unk_10040B350);
    while (1)
    {
      v27 = *(v26 - 8);
      v28 = *v26;
      v29 = v3;
      v65[0] = v3;
      v65[1] = 0xEE0065707974206ELL;
      LOBYTE(v63) = v27;
      v30 = v28;
      v65[2] = String.init<A>(describing:)();
      v65[3] = v31;
      v65[5] = &type metadata for String;
      v66[0] = 0xD000000000000018;
      v66[1] = 0x800000010046A8C0;
      v32 = (*((swift_isaMask & *v30) + 0xD0))();
      v68 = &type metadata for Bool;
      v67 = v32 & 1;
      v33 = static _DictionaryStorage.allocate(capacity:)();

      sub_10011EF24(v65, &v63);
      v34 = v63;
      v12 = v33;
      v35 = sub_10008C908(v63, *(&v63 + 1));
      if (v36)
      {
        break;
      }

      v14 = (v33 + 8);
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
      *(v33[6] + 16 * v35) = v34;
      sub_100075D50(v64, (v33[7] + 32 * v35));
      v37 = v33[2];
      v18 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v18)
      {
        goto LABEL_34;
      }

      v33[2] = v38;
      sub_10011EF24(v66, &v63);
      v39 = v63;
      v12 = v33;
      v40 = sub_10008C908(v63, *(&v63 + 1));
      if (v41)
      {
        break;
      }

      *(v14 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      *(v33[6] + 16 * v40) = v39;
      sub_100075D50(v64, (v33[7] + 32 * v40));
      v42 = v33[2];
      v18 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v18)
      {
        goto LABEL_34;
      }

      v33[2] = v43;

      sub_100068FC4(&qword_100507D30, &unk_100409C90);
      swift_arrayDestroy();

      *&v70[0] = v2;
      v14 = v2[2];
      v44 = v2[3];
      if (v14 >= v44 >> 1)
      {
        sub_10019F4C4((v44 > 1), v14 + 1, 1);
        v2 = *&v70[0];
      }

      v2[2] = v14 + 1;
      v2[v14 + 4] = v33;
      v26 += 3;
      --v25;
      v3 = v29;
      if (!v25)
      {

        v14 = 0xD00000000000001ELL;
        v23 = v60;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_20:
  *(&v64[0] + 1) = &type metadata for Int8;
  LOBYTE(v63) = byte_1005094B0;
  sub_100075D50(&v63, v70);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, v14 - 7, v12 | 0x8000000000000000, v46);
  if (qword_100501BF8 != -1)
  {
    swift_once();
  }

  *(&v64[0] + 1) = &type metadata for Int8;
  LOBYTE(v63) = byte_10051B6B0;
  sub_100075D50(&v63, v70);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, 0xD00000000000001ELL, 0x800000010046A920, v47);
  if (qword_100501C10 != -1)
  {
    swift_once();
  }

  *(&v64[0] + 1) = &type metadata for Double;
  *&v63 = qword_100509490;
  sub_100075D50(&v63, v70);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, v14 - 3, 0x800000010046A940, v48);
  if (qword_100501C00 != -1)
  {
    swift_once();
  }

  *(&v64[0] + 1) = &type metadata for Int;
  *&v63 = qword_10051B6B8;
  sub_100075D50(&v63, v70);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, 0xD00000000000001ELL, 0x800000010046A960, v49);
  if (qword_100501C18 != -1)
  {
    swift_once();
  }

  *(&v64[0] + 1) = &type metadata for Int;
  *&v63 = qword_100509498;
  sub_100075D50(&v63, v70);
  v50 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, v14 + 1, 0x800000010046A980, v50);
  if (qword_100501C20 != -1)
  {
    swift_once();
  }

  *(&v64[0] + 1) = &type metadata for Bool;
  LOBYTE(v63) = byte_1005094A0;
  sub_100075D50(&v63, v70);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, v14 - 4, 0x800000010046A9A0, v51);
  if (qword_100501BF0 != -1)
  {
    swift_once();
  }

  v52 = *(qword_10051B6A8 + 40);
  *(&v64[0] + 1) = &type metadata for Int8;
  LOBYTE(v63) = v52;
  sub_100075D50(&v63, v70);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, 0xD00000000000001ELL, 0x800000010046A5D0, v53);
  swift_beginAccess();

  v55 = sub_1002A0780(v54);

  *(&v64[0] + 1) = sub_100068FC4(&qword_100509638, &unk_1004143B0);
  *&v63 = v55;
  sub_100075D50(&v63, v70);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v70, v14 - 12, 0x800000010046A9C0, v56);
  sub_1001950D4(v2);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v58 = sub_100015DA0("lyonPower.state", isa);

  return v58;
}

uint64_t sub_1002A6950()
{

  return swift_deallocClassInstance();
}

void sub_1002A69E8(char a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    sub_1002A24A4(2, 2, 2, 2, 0, (a1 & 1) == 0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1002A6B4C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    *(Strong + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_debounceActive) = 0;
    if ((*(Strong + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTriggerStatus) & 1) == 0)
    {
      if (qword_100501C38 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_1000958E4(v7, qword_1005094B8);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v8, v9, "If exception source status is false, debounce should have been cancelled; we should not be here", v10, 2u);
      }
    }

    if (qword_100501C38 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000958E4(v11, qword_1005094B8);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Starting exception", v14, 2u);
    }

    if (qword_100501D90 != -1)
    {
      swift_once();
    }

    v15 = qword_10051B7F0;
    *v4 = qword_10051B7F0;
    (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (*(v2 + 8))(v4, v1);
    if (v15)
    {
      v17 = *&v6[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionTimer];
      if (!v17)
      {
        __break(1u);
        return;
      }

      sub_1003AE618(v17, *&v6[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionDuration]);
      v6[OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive] = 1;
      if (qword_100501BF0 == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_17:
    sub_1002A52AC();
  }
}

void sub_1002A6EB0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR____TtC10seserviced30LyonPowerExceptionHandlerClass_exceptionActive) = 0;
    if (qword_100501BF0 != -1)
    {
      swift_once();
    }

    sub_1002A52AC();
  }
}

id sub_1002A6F78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LyonPowerExceptionHandlerClass();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002A7040()
{
  result = qword_100509618;
  if (!qword_100509618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100509618);
  }

  return result;
}

uint64_t sub_1002A7094()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A70CC(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  sub_1000B6A94(v2, qword_1005094B8);
  sub_1000958E4(v2, qword_1005094B8);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1002A714C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1002A716C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100501C38 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_1005094B8);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (qword_100501C10 != -1)
    {
      v12 = v7;
      swift_once();
      v7 = v12;
    }

    *(v7 + 4) = qword_100509490;
    _os_log_impl(&_mh_execute_header, v5, v6, "Resetting connection RSSI to default value after %f seconds", v7, 0xCu);
  }

  v8 = *(v3 + 32);
  if (v8)
  {
    sub_1003AE754(v8);
    v9 = *(v3 + 32);
  }

  else
  {
    v9 = 0;
  }

  *(v3 + 32) = 0;

  *(v3 + 48) = 0;
  v10 = sub_10009122C(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v3 + 112) = v10;

  if (qword_100501BF8 != -1)
  {
    result = swift_once();
  }

  *(v3 + 40) = byte_10051B6B0;
  return result;
}

uint64_t sub_1002A7334()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002A7378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1002A7400(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    a2(0, v3, 0);
    v35 = _swiftEmptyArrayStorage;
    v5 = v2 + 64;
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v36 = *(v2 + 36);
    v30 = v2 + 72;
    v31 = v3;
    v32 = v2 + 64;
    v33 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v36 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v34 = v7;
      v10 = *(v2 + 56);
      v11 = (*(v2 + 48) + 16 * v6);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(v10 + 8 * v6);
      swift_bridgeObjectRetain_n();
      sub_100069E2C(v13, v12);
      sub_100069E2C(v13, v12);
      sub_10006A178(v13, v12);

      sub_100288788(v13, v12);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      sub_10006A178(v13, v12);

      v18 = v35;
      v20 = v35[2];
      v19 = v35[3];
      if (v20 >= v19 >> 1)
      {
        result = a2(v19 > 1, v20 + 1, 1);
        v18 = v35;
      }

      v18[2] = v20 + 1;
      v21 = &v18[3 * v20];
      v21[4] = v15;
      v21[5] = v17;
      v21[6] = v14;
      v2 = v33;
      v8 = 1 << *(v33 + 32);
      if (v6 >= v8)
      {
        goto LABEL_25;
      }

      v5 = v32;
      v22 = *(v32 + 8 * v9);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      v35 = v18;
      if (v36 != *(v33 + 36))
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (v30 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_1000937D4(v6, v36, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_1000937D4(v6, v36, 0);
      }

LABEL_4:
      v7 = v34 + 1;
      v6 = v8;
      if (v34 + 1 == v31)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

void sub_1002A7730(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    if (a1)
    {
      v9 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
      if (v9 >> 60 == 15)
      {

        v10 = Logger.logObject.getter();
        v11 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&_mh_execute_header, v10, v11, "Missing peer key identifier", v12, 2u);
        }
      }

      else
      {
        v18 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
        swift_beginAccess();
        sub_10006A2BC(v18, v9);
        sub_10006A2BC(v18, v9);

        sub_1000C4F98(0, v18, v9);
        swift_endAccess();
        swift_beginAccess();
        sub_100069E2C(v18, v9);
        sub_1000C4FC4(0, v18, v9);
        swift_endAccess();
        swift_beginAccess();
        sub_1000C512C(0, v18, v9);
        swift_endAccess();
      }
    }

    else
    {
      v13 = sub_10008FE8C(_swiftEmptyArrayStorage);
      v14 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
      swift_beginAccess();
      *(v1 + v14) = v13;

      v15 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions;
      swift_beginAccess();
      *(v1 + v15) = _swiftEmptyDictionarySingleton;

      v16 = sub_10008FEA0(_swiftEmptyArrayStorage);
      v17 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
      swift_beginAccess();
      *(v1 + v17) = v16;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t (*sub_1002A7AAC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1002ABA40(v6, a2, a3);
  return sub_1002A7B34;
}

void sub_1002A7B34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1002A7B80(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] != 1)
  {
    return 0;
  }

  result = [v1 supportedRKEFunctions];
  if (result)
  {

    result = [v1 readerIdentifier];
    if (result)
    {
      v3 = result;
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;

      sub_10006A178(v4, v6);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1002A7C28()
{
  type metadata accessor for AlishaVehicle(0);
  swift_allocObject();
  result = sub_1002A7C68();
  qword_10051B6C8 = result;
  return result;
}

uint64_t sub_1002A7C68()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_status) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions) = _swiftEmptyDictionarySingleton;
  *(v0 + OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData) = _swiftEmptyDictionarySingleton;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v3[4] = sub_1002ABD94;
  v3[5] = v0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100193978;
  v3[3] = &unk_1004CF1F0;
  v1 = _Block_copy(v3);

  os_state_add_handler();
  _Block_release(v1);
  return v0;
}

_DWORD *sub_1002A7DC8()
{
  swift_beginAccess();

  v1 = sub_1002A7400(v0, sub_10019FA68);

  v2 = _swiftEmptyDictionarySingleton;
  if (v1[2])
  {
    sub_100068FC4(&qword_100509728, &qword_1004143E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  *&v22 = v3;

  sub_1002AAE2C(v4, 1, &v22, sub_100313A18, sub_10030EED0);

  v5 = v22;
  v23 = sub_100068FC4(&qword_100509730, &qword_1004143E8);
  *&v22 = v5;
  sub_100075D50(&v22, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v21, 0x737574617473, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  swift_beginAccess();

  v8 = sub_1002A7400(v7, sub_10019FA28);

  if (v8[2])
  {
    sub_100068FC4(&unk_10050AA90, &qword_1004143F0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  *&v22 = v2;

  sub_1002AAE2C(v9, 1, &v22, sub_100313A04, sub_10030EEBC);

  v10 = v22;
  v23 = sub_100068FC4(&qword_100509738, &qword_1004143F8);
  *&v22 = v10;
  sub_100075D50(&v22, v21);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v21, 0xD000000000000012, 0x800000010046AA80, v11);
  swift_beginAccess();

  v13 = sub_1002A7400(v12, sub_10019F9E8);

  if (v13[2])
  {
    sub_100068FC4(&qword_100509740, &qword_100414400);
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = _swiftEmptyDictionarySingleton;
  }

  *&v22 = v14;

  sub_1002AAE2C(v15, 1, &v22, sub_1003139F0, sub_10030EEA8);

  v16 = v22;
  v23 = sub_100068FC4(&qword_100509748, &qword_100414408);
  *&v22 = v16;
  sub_100075D50(&v22, v21);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_100315178(v21, 0x74656972706F7270, 0xEF61746144797261, v17);
  sub_1001950D4(_swiftEmptyDictionarySingleton);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v19 = sub_100015DA0("alishavehicle.state", isa);

  return v19;
}

void sub_1002A821C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = v3;
  v8 = a1;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v13 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  v17 = *(v10 + 8);
  v16 = v10 + 8;
  v17(v12, v9);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_logger;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 33554944;
    *(v20 + 4) = a2;
    *(v20 + 6) = 256;
    *(v20 + 8) = v8;
    _os_log_impl(&_mh_execute_header, v18, v19, "Vehicle function %hu status %hhu", v20, 9u);
  }

  v21 = (a3 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  a3 = *(a3 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (a3 >> 60 == 15)
  {
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Missing peer key identifier", v24, 2u);
    }

    return;
  }

  v12 = *v21;
  v4 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
  swift_beginAccess();
  v25 = *(*(v5 + v4) + 16);
  sub_100069E2C(v12, a3);
  if (!v25 || (sub_10008C8DC(v12, a3), (v26 & 1) == 0))
  {
    swift_endAccess();
    sub_100068FC4(&qword_100509760, &qword_100414420);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004098F0;
    *(inited + 32) = a2;
    *(inited + 34) = v8;
    v36 = sub_100090134(inited);
    swift_setDeallocating();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v5 + v4);
    *(v5 + v4) = 0x8000000000000000;
    sub_100314CDC(v36, v12, a3, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(v12, a3);
    *(v5 + v4) = v42;
    swift_endAccess();
    return;
  }

  swift_endAccess();
  swift_beginAccess();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v5 + v4);
  v28 = v42;
  *(v5 + v4) = 0x8000000000000000;
  v15 = sub_10008C8DC(v12, a3);
  v30 = *(v28 + 16);
  v31 = (v29 & 1) == 0;
  v32 = v30 + v31;
  if (__OFADD__(v30, v31))
  {
    goto LABEL_25;
  }

  v16 = v29;
  if (*(v28 + 24) >= v32)
  {
    if (v27)
    {
      if ((v29 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

LABEL_26:
    sub_100310CA4();
    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_20;
  }

  sub_100309F14(v32, v27);
  v33 = sub_10008C8DC(v12, a3);
  if ((v16 & 1) != (v34 & 1))
  {
LABEL_28:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v15 = v33;
  if ((v16 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_20:
  v38 = v42;
  v39 = *(*(v42 + 56) + 8 * v15);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v39;
  sub_100316CEC(v8, a2, v40);
  if (v41)
  {
    *(*(v38 + 56) + 8 * v15) = v41;
  }

  else
  {
    sub_10011116C(*(v38 + 48) + 16 * v15);
    sub_1000E39D8(v15, v38);
  }

  *(v5 + v4) = v38;
  swift_endAccess();
  sub_10006A2D0(v12, a3);
}

void sub_1002A86D4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  v13 = _dispatchPreconditionTest(_:)();
  v15 = *(v8 + 8);
  v14 = v8 + 8;
  v15(v10, v7);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v7 >> 60 == 15)
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Missing peer key identifier", v18, 2u);
    }

    return;
  }

  v10 = *(a2 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v3 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions;
  swift_beginAccess();
  v19 = *(*(v4 + v3) + 16);
  sub_100069E2C(v10, v7);
  if (!v19 || (sub_10008C8DC(v10, v7), (v20 & 1) == 0))
  {
    swift_endAccess();

    v30 = sub_1000E1DB8(v29);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v4 + v3);
    *(v4 + v3) = 0x8000000000000000;
    sub_100314B24(v30, v10, v7, isUniquelyReferenced_nonNull_native);
    sub_10006A2D0(v10, v7);
    *(v4 + v3) = v39;
    swift_endAccess();
    return;
  }

  swift_endAccess();
  swift_beginAccess();
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v4 + v3);
  v22 = v39;
  *(v4 + v3) = 0x8000000000000000;
  v13 = sub_10008C8DC(v10, v7);
  v24 = *(v22 + 16);
  v25 = (v23 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_27;
  }

  v14 = v23;
  if (*(v22 + 24) >= v26)
  {
    if (v21)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_18;
    }

LABEL_28:
    sub_100310C90();
    if ((v14 & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  sub_100309F00(v26, v21);
  v27 = sub_10008C8DC(v10, v7);
  if ((v14 & 1) != (v28 & 1))
  {
LABEL_30:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v27;
  if ((v14 & 1) == 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_18:
  v32 = v39;
  v33 = *(*(v39 + 56) + 8 * v13);
  v38 = v33;
  v34 = *(a1 + 16);
  if (v34)
  {
    v35 = (a1 + 32);
    do
    {
      v36 = *v35++;
      sub_1000D6A84(&v37 + 3, v36);
      --v34;
    }

    while (v34);
    v33 = v38;
  }

  if (v33)
  {
    *(*(v32 + 56) + 8 * v13) = v33;
  }

  else
  {
    sub_10011116C(*(v32 + 48) + 16 * v13);
    sub_1000E39D8(v13, v32);
  }

  *(v4 + v3) = v32;
  swift_endAccess();
  sub_10006A2D0(v10, v7);
}

void sub_1002A8AE0(uint64_t a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  v60 = a3;
  v62 = a1;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v11 = qword_10051B7F0;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  v15 = v62;
  sub_10006A2BC(v62, a2);
  v61 = v4;
  v5 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  sub_10006A2D0(v15, a2);
  if (os_log_type_enabled(v5, v16))
  {
    v59 = a4;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v64[0] = v18;
    *v17 = 33554946;
    *(v17 + 4) = v60;
    *(v17 + 6) = 2080;
    if (a2 >> 60 == 15)
    {
      v19 = 0xE300000000000000;
      v20 = 7104878;
    }

    else
    {
      v65 = sub_100288788(v62, a2);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v21 = BidirectionalCollection<>.joined(separator:)();
      v19 = v22;

      v20 = v21;
    }

    v23 = sub_1002FFA0C(v20, v19, v64);

    *(v17 + 8) = v23;
    _os_log_impl(&_mh_execute_header, v5, v16, "Vehicle function %hu proprietary data %s", v17, 0x10u);
    sub_1000752F4(v18);

    a4 = v59;
  }

  else
  {
  }

  v11 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  v24 = v61;
  if (v11 >> 60 != 15)
  {
    v8 = *(a4 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    a4 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
    if (a2 >> 60 == 15)
    {
      swift_beginAccess();
      v28 = *(v24 + a4);
      v29 = *(v28 + 16);
      sub_100069E2C(v8, v11);
      if (v29)
      {
        v30 = sub_10008C8DC(v8, v11);
        if (v31)
        {
          if (*(*(*(v28 + 56) + 8 * v30) + 16))
          {
            sub_10008CA34(v60);
            if (v32)
            {
              swift_endAccess();
              swift_beginAccess();
              v33 = sub_1002A7AAC(v64, v8, v11);
              if (*v34)
              {
                sub_100145928(v60, &v63);
                sub_10006A2D0(v63, *(&v63 + 1));
              }

              (v33)(v64, 0);
            }
          }
        }
      }

      goto LABEL_29;
    }

    swift_beginAccess();
    v35 = *(*(v24 + a4) + 16);
    sub_10006A2BC(v62, a2);
    sub_10006A2BC(v8, v11);
    if (!v35 || (sub_10008C8DC(v8, v11), (v36 & 1) == 0))
    {
      swift_endAccess();
      sub_100068FC4(&qword_100509750, &qword_100414410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      *(inited + 32) = v60;
      v49 = inited + 32;
      v50 = v62;
      *(inited + 40) = v62;
      *(inited + 48) = a2;
      v51 = sub_1000914B4(inited);
      swift_setDeallocating();
      sub_10006A2BC(v50, a2);
      sub_1002AC628(v49);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = *(v24 + a4);
      *(v24 + a4) = 0x8000000000000000;
      sub_100314B10(v51, v8, v11, isUniquelyReferenced_nonNull_native);
      sub_10006A2D0(v8, v11);
      *(v24 + a4) = v65;
      swift_endAccess();
      v53 = v50;
      v54 = a2;
LABEL_38:
      sub_10006A2D0(v53, v54);
      return;
    }

    swift_endAccess();
    swift_beginAccess();
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v38 = v24;
    v39 = v37;
    v65 = *(v38 + a4);
    v40 = v65;
    *(v38 + a4) = 0x8000000000000000;
    v14 = sub_10008C8DC(v8, v11);
    v42 = v40[2];
    v43 = (v41 & 1) == 0;
    v44 = v42 + v43;
    if (!__OFADD__(v42, v43))
    {
      LOBYTE(v5) = v41;
      if (v40[3] < v44)
      {
        sub_100309EEC(v44, v39);
        v45 = sub_10008C8DC(v8, v11);
        if ((v5 & 1) != (v46 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v14 = v45;
        v47 = v61;
        if ((v5 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_33:
        v55 = v65;
        v56 = *(v65[7] + 8 * v14);
        v57 = v62;
        sub_100069E2C(v62, a2);
        v58 = swift_isUniquelyReferenced_nonNull_native();
        *&v63 = v56;
        sub_100316E10(v57, a2, v60, v58);
        if (v63)
        {
          *(*(v55 + 56) + 8 * v14) = v63;
        }

        else
        {
          sub_10011116C(*(v55 + 48) + 16 * v14);
          sub_1000E39D8(v14, v55);
        }

        *(v47 + a4) = v55;
        swift_endAccess();
        sub_10006A2D0(v62, a2);
        goto LABEL_37;
      }

      if (v39)
      {
        v47 = v61;
        if (v41)
        {
          goto LABEL_33;
        }

LABEL_28:
        __break(1u);
LABEL_29:
        swift_endAccess();
LABEL_37:
        v53 = v8;
        v54 = v11;
        goto LABEL_38;
      }

LABEL_41:
      sub_100310C7C();
      v47 = v61;
      if (v5)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Missing peer key identifier", v27, 2u);
  }
}

char *sub_1002A91CC(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v9 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v10 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  if (v10 >> 60 != 15)
  {
    v15 = *v9;
    v16 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_supportedFunctions;
    swift_beginAccess();
    v17 = *(v1 + v16);
    v18 = *(v17 + 16);
    sub_100069E2C(v15, v10);
    if (!v18)
    {
      goto LABEL_17;
    }

    v19 = sub_10008C8DC(v15, v10);
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

    v21 = *(*(v17 + 56) + 8 * v19);
    swift_endAccess();
    v22 = *(v21 + 16);
    if (!v22)
    {
      v23 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    v27 = v15;
    v23 = sub_1000C0148(v22, 0);
    v24 = sub_100358284(&v28, v23 + 16, v22, v21);
    v25 = v28;

    sub_100093854(v25);
    if (v24 == v22)
    {
      v15 = v27;
LABEL_14:
      v28 = v23;

      sub_1002AB1DC(&v28);

      sub_10006A2D0(v15, v10);
      return v28;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    swift_endAccess();
    __break(1u);

    __break(1u);
    return result;
  }

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Missing peer key identifier", v13, 2u);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1002A950C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void *))
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v14 = (a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v15 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v15 >> 60 == 15)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Missing peer key identifier", v18, 2u);
      }

      return a3(_swiftEmptyArrayStorage);
    }

    else
    {
      v19 = *v14;
      v20 = *a2;
      swift_beginAccess();
      v21 = *(v3 + v20);
      v22 = *(v21 + 16);
      sub_100069E2C(v19, v15);
      if (v22 && (v23 = sub_10008C8DC(v19, v15), (v24 & 1) != 0))
      {
        v25 = *(*(v21 + 56) + 8 * v23);
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v25 = a3(_swiftEmptyArrayStorage);
      }

      sub_10006A2D0(v19, v15);
      return v25;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002A9798(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (qword_1005019E8 == -1)
    {
      goto LABEL_5;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_5:
  v10 = sub_1000CAA04();
  v11 = v10;
  if ((v10 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_7:
      v14 = _swiftEmptyDictionarySingleton;

      sub_1002AC3F8(v11, v2, a1 & 1, &v14);

      return v14;
    }
  }

  else if (*(v10 + 16))
  {
    goto LABEL_7;
  }

  return sub_100092328(_swiftEmptyArrayStorage);
}

void sub_1002A99B4(void **a1, unint64_t a2, int a3, unint64_t a4)
{
  v5 = v4;
  LODWORD(v7) = a3;
  v10 = type metadata accessor for DispatchPredicate();
  v155 = *(v10 - 8);
  __chkstk_darwin(v10);
  v154 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = v12;
  v14 = qword_100501D78;
  v15 = v12;
  if (v14 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1002AC6C8;
    *(v16 + 24) = v13;

    v17 = sub_1000CAAC4();

    v18 = sub_1000CA840(v17);
    if (!v18)
    {
      goto LABEL_6;
    }

    v13 = v18;
    type metadata accessor for AlishaPeer(0);
    v19 = swift_dynamicCastClass();
    if (!v19)
    {

LABEL_8:
      v22 = v15;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v158[0] = v155;
        *v25 = 136315138;
        v26 = [v22 publicKeyIdentifier];
        v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v157 = sub_100288788(v27, v29);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v30 = BidirectionalCollection<>.joined(separator:)();
        v32 = v31;
        sub_10006A178(v27, v29);

        v33 = sub_1002FFA0C(v30, v32, v158);

        *(v25 + 4) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to retrieve AlishaPeer for %s", v25, 0xCu);
        sub_1000752F4(v155);
      }

      goto LABEL_79;
    }

    v20 = v19;
    v148 = v10;
    v21 = *(v19 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    if (v21 >> 60 == 15)
    {

LABEL_6:

      goto LABEL_8;
    }

    v142 = v17;
    v143 = v13;
    v150 = a2;
    v34 = v7;
    v35 = *(v19 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v149 = v21;
    v152 = v35;
    LODWORD(v147) = v34;
    v144 = a4;
    v145 = v5;
    v146 = v15;
    if ((v34 & 1) != 0 && *(*(v19 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 80) != 1)
    {
      v37 = _swiftEmptyArrayStorage;
      v159 = _swiftEmptyArrayStorage;
      sub_100069E2C(v35, v21);
    }

    else
    {
      sub_100069E2C(v35, v21);
      v36 = [v15 supportedRKEFunctions];
      if (!v36)
      {
        goto LABEL_88;
      }

      v13 = v36;
      sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
      v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v159 = v37;
      if ((v147 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v15 = OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration;
    if (!*(*(*(v20 + OBJC_IVAR____TtC10seserviced10AlishaPeer_configuration) + 72) + 16))
    {
      goto LABEL_38;
    }

    v158[0] = _swiftEmptyArrayStorage;
    if (v37 >> 62)
    {
      break;
    }

    v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_36;
    }

LABEL_19:
    v7 = 0;
    a4 = v37 & 0xC000000000000001;
    a2 = v37 & 0xFFFFFFFFFFFFFF8;
    v151 = v37;
    v5 = v37 + 32;
    v153 = v20;
LABEL_21:
    while (2)
    {
      if (a4)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *(a2 + 16))
        {
          goto LABEL_33;
        }

        v38 = *(v5 + 8 * v7);
      }

      v13 = v38;
      if (!__OFADD__(v7++, 1))
      {
        v40 = *(*&v15[v20] + 72);

        v41 = [v13 unsignedIntegerValue];
        v42 = *(v40 + 16);
        v43 = 32;
        do
        {
          if (!v42)
          {

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v20 = v153;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            if (v7 != v10)
            {
              goto LABEL_21;
            }

            goto LABEL_31;
          }

          v44 = *(v40 + v43);
          v43 += 8;
          --v42;
        }

        while (v44 != v41);

        if (v7 != v10)
        {
          continue;
        }

LABEL_31:
        v45 = v158[0];
        goto LABEL_37;
      }

      break;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (v10)
  {
    goto LABEL_19;
  }

LABEL_36:
  v45 = _swiftEmptyArrayStorage;
LABEL_37:

  v159 = v45;
  v37 = v45;
  v21 = v149;
  v35 = v152;
LABEL_38:
  if (qword_100501DB0 != -1)
  {
    swift_once();
  }

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v46 = qword_10051B7F0;
  v48 = v154;
  v47 = v155;
  *v154 = qword_10051B7F0;
  v49 = v148;
  (v47[13])(v48, enum case for DispatchPredicate.onQueue(_:), v148);
  v50 = v46;
  LOBYTE(v46) = _dispatchPreconditionTest(_:)();
  v52 = v47[1];
  v51 = v47 + 1;
  v52(v48, v49);
  if (v46)
  {
    swift_beginAccess();
    sub_10006A2BC(v35, v21);

    v54 = v145;
    v48 = sub_1002ABDB0(v53, v35, v21, &v159);
    v51 = v54;
    sub_10006A2D0(v35, v21);

    if (v147)
    {
      isa = UInt16._bridgeToObjectiveC()().super.super.isa;
      v157 = isa;
      __chkstk_darwin(isa);
      *(&v142 - 2) = &v157;
      v56 = sub_1002FB068(sub_1002AC708, (&v142 - 4), v37);

      if (v56)
      {
        UInt16._bridgeToObjectiveC()();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_46;
        }

        goto LABEL_86;
      }

      goto LABEL_47;
    }

    goto LABEL_64;
  }

  __break(1u);
LABEL_86:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_46:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v37 = v159;
LABEL_47:
  v57 = *(v48 + 2);
  v58 = 32;
  v59 = v57;
  while (v59)
  {
    v60 = *&v48[v58];
    v58 += 2;
    --v59;
    if (v60 == 3)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_100130164(0, v57 + 1, 1, v48);
      }

      v62 = *(v48 + 2);
      v61 = *(v48 + 3);
      if (v62 >= v61 >> 1)
      {
        v48 = sub_100130164((v61 > 1), v62 + 1, 1, v48);
      }

      *(v48 + 2) = v62 + 1;
      *&v48[2 * v62 + 32] = 1;
      break;
    }
  }

  v63 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
  v64 = v150;
  swift_beginAccess();
  v65 = *(v64 + v63);
  if (!*(v65 + 16) || (v66 = sub_10008C8DC(v35, v21), (v67 & 1) == 0))
  {
    swift_endAccess();
    goto LABEL_64;
  }

  v68 = *(*(v65 + 56) + 8 * v66);
  swift_endAccess();
  if (!v68[2] || (v69 = sub_10008CA34(3), (v70 & 1) == 0))
  {
LABEL_64:
    v151 = v37;
    v157 = sub_100288788(v35, v21);
    v92 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v155 = BidirectionalCollection<>.joined(separator:)();

    v93 = [v146 readerIdentifier];
    if (!v93)
    {
      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v94 = v93;

    v95 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;

    v98 = sub_100288788(v95, v97);
    v153 = v51;
    v154 = v92;
    v157 = v98;
    BidirectionalCollection<>.joined(separator:)();
    sub_10006A178(v95, v97);

    sub_10034D004(v48);

    v99 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_status;
    v100 = v150;
    swift_beginAccess();
    v101 = *(v100 + v99);
    v102 = v149;
    if (*(v101 + 16) && (v103 = sub_10008C8DC(v152, v149), (v104 & 1) != 0))
    {
      v105 = *(*(v101 + 56) + 8 * v103);
      swift_endAccess();
      v157 = v105;

      sub_100068FC4(&qword_100509780, &qword_100414438);
      sub_100068FC4(&qword_100509788, &qword_100414440);
      swift_dynamicCast();
      v106 = v156;
    }

    else
    {
      swift_endAccess();
      v106 = 0;
    }

    v107 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
    v108 = v150;
    swift_beginAccess();
    v109 = *(v108 + v107);
    if (*(v109 + 16) && (v110 = sub_10008C8DC(v152, v102), (v111 & 1) != 0))
    {
      v112 = *(*(v109 + 56) + 8 * v110);
      swift_endAccess();
      v157 = v112;

      sub_100068FC4(&qword_100509770, &qword_100414428);
      sub_100068FC4(&qword_100509778, &qword_100414430);
      swift_dynamicCast();
      v113 = v156;
    }

    else
    {
      swift_endAccess();
      v113 = 0;
    }

    v114 = String._bridgeToObjectiveC()();

    v115 = String._bridgeToObjectiveC()();

    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v116.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v117.super.isa = Array._bridgeToObjectiveC()().super.isa;

    if (v106)
    {
      sub_1000E1F04(&qword_100509768, &qword_100504C80, NSNumber_ptr);
      v118.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

      if (v113)
      {
LABEL_75:
        sub_1000E1F04(&qword_100509768, &qword_100504C80, NSNumber_ptr);
        v119.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_78:
        v120 = [objc_allocWithZone(SESVehicleReport) initWithKeyIdentifier:v114 readerIdentifier:v115 supportedFunctions:v116.super.isa functionsInProgress:v117.super.isa status:v118.super.isa proprietaryData:v119.super.isa];

        v121 = v152;
        v122 = v149;
        v157 = sub_100288788(v152, v149);
        v123 = BidirectionalCollection<>.joined(separator:)();
        v125 = v124;

        v23 = v120;
        v126 = v144;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v157 = *v126;
        *v126 = 0x8000000000000000;
        sub_100316F70(v23, v123, v125, isUniquelyReferenced_nonNull_native);

        *v126 = v157;

        sub_10006A2D0(v121, v122);

LABEL_79:

        return;
      }
    }

    else
    {
      v118.super.isa = 0;
      if (v113)
      {
        goto LABEL_75;
      }
    }

    v119.super.isa = 0;
    goto LABEL_78;
  }

  v151 = v37;
  v71 = *(v68[7] + v69) - 11 < 0xFFFFFFF6;

  v72 = swift_isUniquelyReferenced_nonNull_native();
  v157 = v68;
  sub_100316CEC(v71, 1, v72);
  v73 = v157;
  v157 = sub_100288788(v35, v21);
  v74 = sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  v75 = sub_10007A2D0();
  v155 = BidirectionalCollection<>.joined(separator:)();

  v76 = [v146 readerIdentifier];
  if (v76)
  {
    v77 = v76;

    v78 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v81 = sub_100288788(v78, v80);
    v147 = v51;
    v148 = v75;
    v157 = v81;
    v153 = v74;
    BidirectionalCollection<>.joined(separator:)();
    sub_10006A178(v78, v80);

    sub_10034D004(v48);

    sub_1001960E4(v73);
    v83 = v82;
    v84 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_proprietaryData;
    v85 = v150;
    swift_beginAccess();
    v86 = *(v85 + v84);
    v87 = *(v86 + 16);
    v154 = v73;
    v146 = v83;
    if (v87 && (v88 = sub_10008C8DC(v152, v149), (v89 & 1) != 0))
    {
      v90 = *(*(v86 + 56) + 8 * v88);
      swift_endAccess();
      v157 = v90;

      sub_100068FC4(&qword_100509770, &qword_100414428);
      sub_100068FC4(&qword_100509778, &qword_100414430);
      swift_dynamicCast();
      v91 = v156;
    }

    else
    {
      swift_endAccess();
      v91 = 0;
    }

    v128 = String._bridgeToObjectiveC()();

    v129 = String._bridgeToObjectiveC()();

    sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
    v130.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v131.super.isa = Array._bridgeToObjectiveC()().super.isa;

    sub_1000E1F04(&qword_100509768, &qword_100504C80, NSNumber_ptr);
    v132.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    if (v91)
    {
      v133.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v133.super.isa = 0;
    }

    v134 = [objc_allocWithZone(SESVehicleReport) initWithKeyIdentifier:v128 readerIdentifier:v129 supportedFunctions:v130.super.isa functionsInProgress:v131.super.isa status:v132.super.isa proprietaryData:v133.super.isa];

    v135 = v152;
    v136 = v149;
    v157 = sub_100288788(v152, v149);
    v137 = BidirectionalCollection<>.joined(separator:)();
    v139 = v138;

    v23 = v134;
    v140 = v144;
    v141 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *v140;
    *v140 = 0x8000000000000000;
    sub_100316F70(v23, v137, v139, v141);

    *v140 = v157;

    sub_10006A2D0(v135, v136);

    goto LABEL_79;
  }

LABEL_89:
  __break(1u);
}

BOOL sub_1002AAAFC(uint64_t a1, void *a2)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v6 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
  v5 = *(a1 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
  sub_10006A2BC(v6, v5);
  v7 = [a2 publicKeyIdentifier];
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  if (v5 >> 60 != 15)
  {
    if (v10 >> 60 != 15)
    {
      sub_10006A2BC(v6, v5);
      sub_100069E2C(v8, v10);
      v11 = sub_10008FB4C(v6, v5, v8, v10);
      sub_10006A2D0(v8, v10);
      sub_10006A178(v8, v10);
      sub_10006A2D0(v6, v5);
      sub_10006A2D0(v6, v5);
      if (v11)
      {
        return *(a1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2;
      }

      return 0;
    }

LABEL_7:
    sub_10006A2D0(v6, v5);
    sub_10006A2D0(v8, v10);
    return 0;
  }

  if (v10 >> 60 != 15)
  {
    goto LABEL_7;
  }

  sub_10006A2D0(v6, v5);
  return *(a1 + OBJC_IVAR____TtC10seserviced4Peer_pairingState) == 2;
}

uint64_t sub_1002AAC6C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC10seserviced13AlishaVehicle_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaVehicle(uint64_t a1)
{
  result = qword_100509688;
  if (!qword_100509688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002AAD8C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002AAE2C(void *a1, char a2, void *a3, void (*a4)(void), void (*a5)(uint64_t, uint64_t))
{
  v41 = a1[2];
  if (!v41)
  {
  }

  LOBYTE(v8) = a2;
  v10 = a1[4];
  v9 = a1[5];
  v11 = a1[6];
  v12 = *a3;

  v13 = sub_10008C908(v10, v9);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v19) = v14;
  if (v12[3] < v18)
  {
    a5(v18, v8 & 1);
    v13 = sub_10008C908(v10, v9);
    if ((v19 & 1) == (v20 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v13 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v8)
  {
LABEL_7:
    if (v19)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v13;
  a4();
  v13 = v22;
  if (v19)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_100068FC4(&unk_100503F80, &qword_100409CF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = v10;
  v24[1] = v9;
  *(v23[7] + 8 * v13) = v11;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v38._object = 0x8000000100466020;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v38);
    _print_unlocked<A, B>(_:_:)();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v8 = a1 + 9;
    v19 = 1;
    while (v19 < a1[2])
    {
      v10 = *(v8 - 2);
      v9 = *(v8 - 1);
      v11 = *v8;
      v27 = *a3;

      v28 = sub_10008C908(v10, v9);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v17 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v17)
      {
        goto LABEL_23;
      }

      a4 = v29;
      if (v27[3] < v32)
      {
        a5(v32, 1);
        v28 = sub_10008C908(v10, v9);
        if ((a4 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a4)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v10;
      v35[1] = v9;
      *(v34[7] + 8 * v28) = v11;
      v36 = v34[2];
      v17 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v17)
      {
        goto LABEL_24;
      }

      ++v19;
      v34[2] = v37;
      v8 += 3;
      if (v41 == v19)
      {
      }
    }

    goto LABEL_25;
  }
}

Swift::Int sub_1002AB1DC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100079DA4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[2 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          *(v13 + 1) = v14;
          *v13 = v11;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_1002AB314(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1002AB314(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100079C78(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1002AB864((*a3 + 2 * *v77), (*a3 + 2 * *v79), (*a3 + 2 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 2 * v7);
      v11 = *(*a3 + 2 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 2 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 2 * v17);
            *(v20 + 2 * v17) = *(v20 + 2 * v16);
            *(v20 + 2 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100079C8C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100079C8C((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1002AB864((*a3 + 2 * *v70), (*a3 + 2 * *v72), (*a3 + 2 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 2 * v7 - 2;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 2 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= v27)
    {
LABEL_29:
      ++v7;
      v22 += 2;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    v26[1] = v27;
    *v26-- = v24;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1002AB864(char *__dst, char *__src, char *a3, unsigned __int16 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 2;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 2;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[2 * v9] <= a4)
    {
      memmove(a4, __dst, 2 * v9);
    }

    v12 = &v4[v9];
    if (v8 < 2)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v13 = *v6;
      if (v13 < *v4)
      {
        break;
      }

      LOWORD(v13) = *v4;
      v14 = v7 == v4++;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 2;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v14 = v7 == v6++;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[2 * v11] <= a4)
  {
    memmove(a4, __src, 2 * v11);
  }

  v12 = &v4[v11];
  if (v10 >= 2 && v6 > v7)
  {
LABEL_20:
    v15 = v6 - 1;
    v5 -= 2;
    v16 = v12;
    do
    {
      v17 = (v5 + 2);
      v19 = *(v16 - 2);
      v16 -= 2;
      v18 = v19;
      v20 = *v15;
      if (v19 < v20)
      {
        if (v17 != v6)
        {
          *v5 = v20;
        }

        if (v12 <= v4 || (--v6, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v17 != v12)
      {
        *v5 = v18;
      }

      v5 -= 2;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v21 = v12 - v4 + ((v12 - v4) >> 63);
  if (v6 != v4 || v6 >= (v4 + (v21 & 0xFFFFFFFFFFFFFFFELL)))
  {
    memmove(v6, v4, 2 * (v21 >> 1));
  }

  return 1;
}

void (*sub_1002ABA40(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1002ABD60(v7);
  v7[9] = sub_1002ABB4C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1002ABAEC;
}

void sub_1002ABAEC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1002ABB4C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_10008C8DC(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_100310C7C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_100309EEC(v18, a4 & 1);
    v13 = sub_10008C8DC(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_1002ABCA4;
}

void sub_1002ABCA4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      v9 = v1[1];
      v8 = v1[2];
      sub_100317CF8(v4, v9, v8, v2, v5);
      sub_100069E2C(v9, v8);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_10011116C(*(v7 + 48) + 16 * v6);
    sub_1000E39D8(v6, v7);
  }

  free(v1);
}

uint64_t (*sub_1002ABD60(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1002ABD88;
}

uint64_t sub_1002ABD98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1002ABDB0(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  v5 = v4;
  v67 = a4;
  v7 = a1;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_93:
    v54 = a3;
    v55 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v54;
    v9 = v55;
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3 == 0xC000000000000000;
  }

  v11 = !v10;
  v66 = v11;
  v12 = __OFSUB__(HIDWORD(a2), a2);
  v60 = v12;
  if (!v9)
  {
    return _swiftEmptyArrayStorage;
  }

  v13 = 0;
  v70 = v7 & 0xC000000000000001;
  v14 = a3 >> 62;
  v59 = HIDWORD(a2) - a2;
  result = _swiftEmptyArrayStorage;
  v63 = BYTE6(a3);
  v64 = v7;
  v68 = a3 >> 62;
  v69 = v9;
  v61 = a3;
  v65 = v8;
  while (2)
  {
    v58 = result;
    while (1)
    {
      if (v70)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v13 >= *(v8 + 16))
        {
          goto LABEL_88;
        }

        v16 = *(v7 + 8 * v13 + 32);

        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      v18 = *(v16 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier);
      v19 = *(v16 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_keyIdentifier + 8);
      v20 = v19 >> 62;
      if (v19 >> 62 == 3)
      {
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v19 == 0xC000000000000000;
        }

        v23 = !v21 || v14 < 3;
        if (((v23 | v66) & 1) == 0)
        {
          goto LABEL_73;
        }

LABEL_43:
        v24 = 0;
        if (v14 <= 1)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }

      if (v20 > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_43;
        }

        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        v27 = __OFSUB__(v25, v26);
        v24 = v25 - v26;
        if (v27)
        {
          goto LABEL_92;
        }

        if (v14 <= 1)
        {
          goto LABEL_40;
        }
      }

      else if (v20)
      {
        LODWORD(v24) = HIDWORD(v18) - v18;
        if (__OFSUB__(HIDWORD(v18), v18))
        {
          goto LABEL_91;
        }

        v24 = v24;
        if (v14 <= 1)
        {
LABEL_40:
          v28 = v63;
          if (v14)
          {
            v28 = v59;
            if (v60)
            {
              goto LABEL_90;
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v24 = BYTE6(v19);
        if (v14 <= 1)
        {
          goto LABEL_40;
        }
      }

LABEL_44:
      if (v14 != 2)
      {
        if (!v24)
        {
          goto LABEL_73;
        }

        goto LABEL_16;
      }

      v30 = *(a2 + 16);
      v29 = *(a2 + 24);
      v27 = __OFSUB__(v29, v30);
      v28 = v29 - v30;
      if (v27)
      {
        goto LABEL_89;
      }

LABEL_46:
      if (v24 != v28)
      {
        goto LABEL_16;
      }

      if (v24 < 1)
      {
        goto LABEL_73;
      }

      v62 = v16;
      if (v20 > 1)
      {
        break;
      }

      v71 = v17;
      if (!v20)
      {
        v73[0] = v18;
        LOWORD(v73[1]) = v19;
        BYTE2(v73[1]) = BYTE2(v19);
        BYTE3(v73[1]) = BYTE3(v19);
        BYTE4(v73[1]) = BYTE4(v19);
        BYTE5(v73[1]) = BYTE5(v19);
        v31 = v61;
        sub_100069E2C(a2, v61);
        sub_10019F024(v73, a2, v31, &v72);
        if (v5)
        {
          goto LABEL_98;
        }

        v5 = 0;
        sub_10006A178(a2, v31);
        v32 = v72;
        goto LABEL_72;
      }

      v57 = v5;
      v41 = v18;
      if (v18 >> 32 < v18)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
      }

      sub_100069E2C(a2, v61);
      v42 = __DataStorage._bytes.getter();
      if (v42)
      {
        v43 = v42;
        v44 = __DataStorage._offset.getter();
        if (__OFSUB__(v41, v44))
        {
          goto LABEL_97;
        }

        v45 = v41 - v44 + v43;
      }

      else
      {
        v45 = 0;
      }

      __DataStorage._length.getter();
      v37 = v45;
      v38 = a2;
      v31 = v61;
      v39 = v61;
      v40 = v57;
LABEL_70:
      sub_10019F024(v37, v38, v39, v73);
      if (v40)
      {
LABEL_98:
        result = sub_10006A178(a2, v31);
        __break(1u);
        return result;
      }

      v5 = 0;
      sub_10006A178(a2, v31);
      v32 = v73[0];
      v14 = v68;
      v9 = v69;
LABEL_72:
      v17 = v71;
      v16 = v62;
      if (v32)
      {
        goto LABEL_73;
      }

LABEL_16:

LABEL_17:
      ++v13;
      if (v17 == v9)
      {
        return v58;
      }
    }

    if (v20 == 2)
    {
      v71 = v17;
      v33 = v5;
      v34 = *(v18 + 16);
      v57 = *(v18 + 24);
      sub_100069E2C(a2, v61);
      v35 = __DataStorage._bytes.getter();
      if (v35)
      {
        v36 = __DataStorage._offset.getter();
        if (__OFSUB__(v34, v36))
        {
          goto LABEL_96;
        }

        v35 += v34 - v36;
      }

      if (__OFSUB__(v57, v34))
      {
        goto LABEL_95;
      }

      __DataStorage._length.getter();
      v37 = v35;
      v38 = a2;
      v31 = v61;
      v39 = v61;
      v40 = v33;
      goto LABEL_70;
    }

    memset(v73, 0, 14);
    v31 = v61;
    sub_100069E2C(a2, v61);
    sub_10019F024(v73, a2, v31, &v72);
    if (v5)
    {
      goto LABEL_98;
    }

    v5 = 0;
    sub_10006A178(a2, v31);
    v16 = v62;
    if ((v72 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_73:
    v71 = v17;
    v46 = *v67;
    v47 = *(v16 + OBJC_IVAR____TtCC10seserviced9AlishaRKE10RKERequest_functionIdentifier);

    isa = UInt16._bridgeToObjectiveC()().super.super.isa;
    v73[0] = isa;
    __chkstk_darwin(isa);
    v56[2] = v73;
    v49 = v5;
    v50 = sub_1002FB068(sub_1002AC78C, v56, v46);

    if ((v50 & 1) == 0)
    {
      v5 = v49;
      v7 = v64;
      v8 = v65;
      v14 = v68;
      v9 = v69;
      v17 = v71;
      goto LABEL_17;
    }

    v51 = v58;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v5 = v49;
      result = v51;
    }

    else
    {
      result = sub_100130164(0, *(v51 + 2) + 1, 1, v51);
      v5 = v49;
    }

    v14 = v68;
    v53 = *(result + 2);
    v52 = *(result + 3);
    if (v53 >= v52 >> 1)
    {
      result = sub_100130164((v52 > 1), v53 + 1, 1, result);
      v5 = v49;
    }

    *(result + 2) = v53 + 1;
    *&result[2 * v53 + 32] = v47;
    v9 = v69;
    v13 = v71;
    v7 = v64;
    v8 = v65;
    if (v71 != v69)
    {
      continue;
    }

    return result;
  }
}

void sub_1002AC3F8(uint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  v5 = v4;
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
    sub_1000E1F04(&qword_100503608, &qword_100503F00, SEEndPoint_ptr);
    Set.Iterator.init(_cocoa:)();
    v6 = v22;
    v7 = v23;
    v8 = v24;
    v9 = v25;
    v10 = v26;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      do
      {
        v27 = v18;
        sub_1002A99B4(&v27, a2, a3 & 1, a4);

        if (v5)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!__CocoaSet.Iterator.next()())
        {
          break;
        }

        sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
        swift_dynamicCast();
        v18 = v27;
        v16 = v9;
        v17 = v10;
      }

      while (v27);
    }

LABEL_19:
    sub_100093854(v6);
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1002AC628(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100509758, &qword_100414418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AC690()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002AC6D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002AC7C8(uint64_t a1, uint64_t a2)
{
  if (qword_100501DC8 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B858;
  *(v2 + 192) = qword_10051B858;
  sub_1001FF418((v2 + 16));
  *(v2 + 200) = 0;
  v4 = *(v2 + 24);
  *(v2 + 208) = *(v2 + 16);
  *(v2 + 216) = v4;

  sub_10012E450(v2 + 16);

  return _swift_task_switch(sub_1002AC8D0, v3, 0);
}

uint64_t sub_1002AC8D0()
{
  v1 = v0[25];
  v0[28] = sub_100362B68(v0[26], v0[27]);
  v0[29] = v1;

  if (v1)
  {
    v2 = sub_1002ACC80;
  }

  else
  {
    v2 = sub_1002AC964;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002AC964()
{
  v0[22] = v0[28];
  v1 = swift_allocObject();
  v0[30] = v1;
  v1[2] = v0 + 22;
  v1[3] = 0xD000000000000010;
  v1[4] = 0x800000010046ABC0;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_1002ACA78;

  return sub_1001FBFAC(0xD000000000000010, 0x800000010046ABC0, &unk_1004144B0, v1);
}

uint64_t sub_1002ACA78(uint64_t a1)
{
  *(*v2 + 256) = v1;

  if (v1)
  {

    v3 = sub_1002ACC98;
  }

  else
  {

    v3 = sub_1002ACBC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002ACBC4()
{
  v1 = v0[23];
  swift_beginAccess();
  v2 = v0[22];
  v3 = OBJC_IVAR____TtC10seserviced14SECUserSession_credentials;
  swift_beginAccess();
  *(v1 + v3) = v2;

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_1002ACC98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002ACCFC(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for StateInternal();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[28] = v4;
  v2[29] = *(v4 - 8);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(sub_1002ACE18, 0, 0);
}

uint64_t sub_1002ACE18()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 16);
  *(v0 + 248) = v2;
  if (v2)
  {
    *(v0 + 384) = enum case for StateInternal.installationFailed(_:);
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = *(v4 + 64);
    *(v0 + 388) = v6;
    *(v0 + 256) = *(v4 + 56);
    *(v0 + 264) = v5;
    *(v0 + 272) = 0;
    *(v0 + 280) = 0;
    v5(*(v0 + 240), v1 + ((v6 + 32) & ~v6), v3);
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 384);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = *(v0 + 200);
    v11 = qword_10051B858;
    *(v0 + 288) = qword_10051B858;
    (*(v9 + 104))(v8, v7, v10);

    return _swift_task_switch(sub_1002ACF74, v11, 0);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1002ACF74()
{
  v1 = v0[34];
  v2 = sub_10035E904();
  if (v1)
  {
    v0[38] = v1;
    (*(v0[26] + 8))(v0[27], v0[25]);
    v11 = sub_1002AD2AC;
  }

  else
  {
    v3 = v2;
    v4 = v0[36];
    v5 = v0[30];
    v6 = v0[27];
    v7 = swift_task_alloc();
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = v5;
    v7[5] = v6;
    NSManagedObjectContext.performAndWait<A>(_:)();
    v0[37] = 0;
    v9 = v0[26];
    v8 = v0[27];
    v10 = v0[25];

    (*(v9 + 8))(v8, v10);
    v11 = sub_1002AD0B4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_1002AD0B4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 280) + 1;
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  if (v2 == v1)
  {
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 296);
    v4 = qword_10051B858;
    *(v0 + 312) = qword_10051B858;
    sub_1001FF418((v0 + 16));
    *(v0 + 320) = v3;
    if (v3)
    {

      v5 = *(v0 + 8);

      return v5();
    }

    v15 = *(v0 + 24);
    *(v0 + 328) = *(v0 + 16);
    *(v0 + 336) = v15;

    sub_10012E450(v0 + 16);
    v13 = sub_1002AD334;
    v14 = v4;
  }

  else
  {
    v7 = *(v0 + 280) + 1;
    *(v0 + 272) = *(v0 + 296);
    *(v0 + 280) = v7;
    (*(v0 + 264))(*(v0 + 240), *(v0 + 184) + ((*(v0 + 388) + 32) & ~*(v0 + 388)) + *(v0 + 256) * v7, *(v0 + 224));
    if (qword_100501DC8 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 384);
    v10 = *(v0 + 208);
    v9 = *(v0 + 216);
    v11 = *(v0 + 200);
    v12 = qword_10051B858;
    *(v0 + 288) = qword_10051B858;
    (*(v10 + 104))(v9, v8, v11);
    v13 = sub_1002ACF74;
    v14 = v12;
  }

  return _swift_task_switch(v13, v14, 0);
}

uint64_t sub_1002AD2AC()
{
  (*(v0[29] + 8))(v0[30], v0[28]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002AD334()
{
  v1 = v0[40];
  v0[43] = sub_100362B68(v0[41], v0[42]);
  v0[44] = v1;

  if (v1)
  {
    v2 = sub_1002AD6E8;
  }

  else
  {
    v2 = sub_1002AD3C8;
  }

  return _swift_task_switch(v2, 0, 0);
}