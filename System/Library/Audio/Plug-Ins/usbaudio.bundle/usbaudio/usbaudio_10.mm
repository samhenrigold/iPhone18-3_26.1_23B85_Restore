uint64_t sub_1000AEBD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v42[-v11];
  v50 = 0;
  v51 = 0xE000000000000000;
  v13 = [v2 direction];
  v14 = v13 == 1768845428;
  if (v13 == 1768845428)
  {
    v15 = 28265;
  }

  else
  {
    v15 = 7632239;
  }

  if (v14)
  {
    v16 = 0xE200000000000000;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  v17 = v16;
  String.append(_:)(*&v15);

  v18._countAndFlagsBits = 0x2073757461747320;
  v18._object = 0xE800000000000000;
  String.append(_:)(v18);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10011DE90;
  *(v19 + 56) = &type metadata for Int32;
  *(v19 + 64) = &protocol witness table for Int32;
  *(v19 + 32) = a1;
  v20._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v20);

  v21 = v51;
  v48 = v50;
  v22 = OBJC_IVAR___AUAStream_logID;
  v23 = qword_100173CB0;
  v49 = v3;
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = v3 + v22;
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for AUALog(0);
    v26 = sub_10000A1BC(v25, qword_100179508);
    v27 = v49;
    sub_10003F9E0(4uLL, "AUAStream_isocDataCompletion", 28, 2, v24, v48, v21, v26, v27, a2, a1);
  }

  else
  {
    v46 = v10;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for AUALog(0);
    v30 = sub_10000A1BC(v29, qword_100179508);
    v31 = *(type metadata accessor for LogID(0) + 20);
    v47 = v7;
    v32 = *(v7 + 16);
    v32(v12, v24 + v31, v6);

    v45 = v30;
    v33 = OSSignposter.logHandle.getter();
    v34 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v35 = swift_slowAlloc();
      v44 = a2;
      v36 = v35;
      v37 = swift_slowAlloc();
      v43 = a1;
      v38 = v37;
      v50 = v37;
      *v36 = 136446210;
      *(v36 + 4) = sub_100035760(v48, v21, &v50);
      v39 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v33, v34, v39, "AUAStream_isocDataCompletion", "%{public}s", v36, 0xCu);
      sub_10000CE78(v38);
      a1 = v43;

      a2 = v44;
    }

    v32(v46, v12, v6);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v40 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v47 + 8))(v12, v6);
    v41 = v49;
    sub_1000AF10C(v49, a2, a1);

    sub_1000461FC(v45, "AUAStream_isocDataCompletion", 28, 2, v40);
  }
}

void sub_1000AF10C(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  __chkstk_darwin(v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___AUAStream_started;
  swift_beginAccess();
  if (*(&a1->_os_unfair_lock_opaque + v11) == 1)
  {
    v12 = OBJC_IVAR___AUAStream_audioDevice;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v87 = v12;
      v15 = OBJC_IVAR___AUAStream_transferManager;
      v16 = *(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_transferManager);
      if (!v16)
      {

        return;
      }

      v17 = mach_absolute_time();
      if (qword_100173D00 != -1)
      {
        v88 = v17;
        swift_once();
        v17 = v88;
      }

      if (qword_100179650 != HIDWORD(qword_100179650))
      {
        if (!is_mul_ok(v17, qword_100179650))
        {
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (!HIDWORD(qword_100179650))
        {
LABEL_63:
          __break(1u);
LABEL_64:
          swift_once();
LABEL_50:
          v67 = sub_10000A1BC(v8, qword_1001794F0);
          sub_10000A2A4(v67, v10);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v68 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v68, qword_100179508);
          sub_100039AA0(4, v10, v15, a3);

          sub_10000C9D0(v10);
          v69 = swift_unknownObjectWeakLoadStrong();
          if (!v69)
          {
            goto LABEL_57;
          }

          a3 = v69;
          aBlock = (v14 + 21);
          v93 = 0x800000010012FF30;
          v70._countAndFlagsBits = 8236;
          v70._object = 0xE200000000000000;
          String.append(_:)(v70);
          v71._object = 0x800000010012F240;
          v71._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v71);
          v72._countAndFlagsBits = 2108704;
          v72._object = 0xE300000000000000;
          String.append(_:)(v72);
          v98 = 584;
          v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v73);

          sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v93, a3 + OBJC_IVAR___AUAAudioDevice_logID);

          v74 = *(a3 + OBJC_IVAR___AUAAudioDevice_configChangedHandlers);
          v75 = swift_allocObject();
          v75[2] = AUAError.init(_:message:);
          v75[3] = 0;
          aBlock = sub_100038564;
          v93 = v75;
          a1 = *(v74 + 16);
          v76 = __chkstk_darwin(v75);
          *(&v82 - 2) = v74;
          *(&v82 - 1) = &aBlock;
          __chkstk_darwin(v76);
          *(&v82 - 2) = sub_10001EF50;
          *(&v82 - 1) = v77;

          os_unfair_lock_lock(a1 + 4);
          sub_10003854C(&v98);
          if (!v4)
          {
            os_unfair_lock_unlock(a1 + 4);
            v78 = v98;

            if (v78)
            {
              v79 = swift_allocObject();
              *(v79 + 16) = a3;
              v96 = sub_10001EFC8;
              v97 = v79;
              aBlock = _NSConcreteStackBlock;
              v93 = 1107296256;
              v94 = sub_1000172D4;
              v95 = &unk_100164958;
              v80 = _Block_copy(&aBlock);
              a3 = a3;

              v81 = type metadata accessor for AUAAudioDevice(0);
              v91.receiver = a3;
              v91.super_class = v81;
              [(os_unfair_lock_s *)&v91 requestConfigurationChange:v80];
              _Block_release(v80);
            }

LABEL_57:
LABEL_59:

            return;
          }

          goto LABEL_74;
        }

        v17 = v17 * qword_100179650 / HIDWORD(qword_100179650);
      }

      v88 = v17;
      v84 = HIDWORD(qword_100179650);
      v85 = qword_100179650;
      v15 = *(&a1->_os_unfair_lock_opaque + v15);
      if (!v15)
      {
        goto LABEL_72;
      }

      v18 = (*(*v15 + 80))();
      v19 = OBJC_IVAR___AUAStream_lastIOTimeNS;
      v20 = *(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_lastIOTimeNS);
      v89 = v14;
      if (v20)
      {
        v21 = v88;
        v22 = v88 >= v20;
        v23 = &v88[-v20];
        if (!v22)
        {
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        v86 = v16;
        if (v18 >> 61)
        {
          goto LABEL_61;
        }

        v24 = v23 / 0xF4240;
        v25 = 8 * v18;
        if (v23 / 0xF4240 <= (8 * v18) >> 1)
        {
          v16 = v86;
          v14 = v89;
        }

        else
        {
          v82 = OBJC_IVAR___AUAStream_lastIOTimeNS;
          v83 = a3;
          aBlock = 0;
          v93 = 0xE000000000000000;
          _StringGuts.grow(_:)(25);

          aBlock = 0x66666944656D6974;
          v93 = 0xE900000000000020;
          v98 = v24;
          v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v26);

          v27._countAndFlagsBits = 0x687365726874202CLL;
          v27._object = 0xEC00000020646C6FLL;
          String.append(_:)(v27);
          v98 = v25;
          v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v28);

          sub_100038CF0("AUAStream_safeguardAgainstDelays", 32, 2, aBlock, v93, a1 + OBJC_IVAR___AUAStream_logID);

          if (v25 >= v24)
          {
            goto LABEL_23;
          }

          aBlock = 0xD000000000000048;
          v93 = 0x800000010012FF90;
          v29._countAndFlagsBits = 8236;
          v29._object = 0xE200000000000000;
          String.append(_:)(v29);
          v30._object = 0x800000010012F240;
          v30._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v30);
          v31._countAndFlagsBits = 2108704;
          v31._object = 0xE300000000000000;
          String.append(_:)(v31);
          v98 = 800;
          v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v32);

          v33 = v89;
          sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v93, &v89[OBJC_IVAR___AUAAudioDevice_logID]);

          v34 = *&v33[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
          v35 = swift_allocObject();
          v35[2] = AUAError.init(_:message:);
          v35[3] = 0;
          aBlock = sub_100038564;
          v93 = v35;
          a3 = *(v34 + 16);
          v36 = __chkstk_darwin(v35);
          *(&v82 - 2) = v34;
          *(&v82 - 1) = &aBlock;
          __chkstk_darwin(v36);
          *(&v82 - 2) = sub_10001EF50;
          *(&v82 - 1) = v37;

          os_unfair_lock_lock((a3 + 16));
          sub_10003854C(&v98);
          if (v3)
          {
LABEL_75:
            os_unfair_lock_unlock((a3 + 16));
            __break(1u);
            return;
          }

          v4 = 0;
          os_unfair_lock_unlock((a3 + 16));
          v38 = v98;

          if (v38)
          {
            v39 = swift_allocObject();
            v40 = v89;
            *(v39 + 16) = v89;
            v96 = sub_10001EFC8;
            v97 = v39;
            aBlock = _NSConcreteStackBlock;
            v93 = 1107296256;
            v94 = sub_1000172D4;
            v95 = &unk_1001649D0;
            v41 = _Block_copy(&aBlock);
            v42 = v40;

            v43 = type metadata accessor for AUAAudioDevice(0);
            v90.receiver = v42;
            v90.super_class = v43;
            v14 = v40;
            [(os_unfair_lock_s *)&v90 requestConfigurationChange:v41];
            _Block_release(v41);
            v16 = v86;
          }

          else
          {
LABEL_23:
            v16 = v86;
            v14 = v89;
          }

          a3 = v83;
          v21 = v88;
          v19 = v82;
        }
      }

      else
      {
        v21 = v88;
      }

      *(&a1->_os_unfair_lock_opaque + v19) = v21;
      v44 = (*(*v16 + 112))(a2, a3);
      v47 = *&v14[OBJC_IVAR___AUAAudioDevice_timestampStream];
      if (!v47 || v47 != a1)
      {
        goto LABEL_42;
      }

      v48 = a3;
      a3 = OBJC_IVAR___AUAStream_needFirstTimeStamp;
      if (*(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_needFirstTimeStamp) == 1 && (v46 & 0x100) != 0)
      {
        v49 = [*&v14[OBJC_IVAR___AUAAudioDevice_timeCorrelater] timeforUSBFrame:*(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_firstTimeStampUSBFrame)];
        AUAAudioDevice.updateTimeStamp(hostTime:sampleTime:seed:from:)(v49, *(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_timeStampSeed), a1, 0.0);
        *(&a1->_os_unfair_lock_opaque + a3) = 0;
        LODWORD(a3) = v48;
        goto LABEL_42;
      }

      LODWORD(a3) = v48;
      if (v46)
      {
LABEL_42:
        if (a3 != -536870165)
        {
          sub_1000ADCB0();

          goto LABEL_59;
        }

        v14 = 0xD000000000000016;
        aBlock = 0;
        v93 = 0xE000000000000000;
        _StringGuts.grow(_:)(29);

        aBlock = 0x6165727453415541;
        v93 = 0xEA0000000000206DLL;
        v61 = [(os_unfair_lock_s *)a1 direction];
        v62 = v61 == 1768845428;
        if (v61 == 1768845428)
        {
          v63 = 28265;
        }

        else
        {
          v63 = 7632239;
        }

        if (v62)
        {
          v64 = 0xE200000000000000;
        }

        else
        {
          v64 = 0xE300000000000000;
        }

        v65 = v64;
        String.append(_:)(*&v63);

        v66._countAndFlagsBits = 0xD000000000000011;
        v66._object = 0x800000010012FF10;
        String.append(_:)(v66);
        v15 = aBlock;
        a3 = v93;
        if (qword_100173CB8 == -1)
        {
          goto LABEL_50;
        }

        goto LABEL_64;
      }

      v86 = v16;
      v50 = v44;
      a3 = v45;
      v51 = [v14 timestampPeriod];
      v52 = v14;
      v53 = OBJC_IVAR___AUAStream_sampleTime;
      *(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_sampleTime) = *(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_sampleTime) + v51;
      v88 = [*&v52[OBJC_IVAR___AUAAudioDevice_timeCorrelater] timeforUSBFrame:v50];
      if (is_mul_ok(a3, 0x3B9ACA00uLL))
      {
        v54 = a3;
        v55 = [(os_unfair_lock_s *)a1 physicalFormat];
        if (!v55)
        {
LABEL_73:
          __break(1u);
LABEL_74:
          os_unfair_lock_unlock(a1 + 4);
          __break(1u);
          goto LABEL_75;
        }

        a3 = v55;
        [v55 sampleRate];
        v57 = v56;

        v58 = (1000000000 * v54) / v57;
        if (COERCE__INT64(fabs(v58)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v58 > -1.0)
          {
            if (v58 < 1.84467441e19)
            {
              a3 = v48;
              v59 = v58;
              if (v85 != v84)
              {
                if (!is_mul_ok(v59, v84))
                {
LABEL_70:
                  __break(1u);
                  goto LABEL_71;
                }

                if (!v85)
                {
LABEL_71:
                  __break(1u);
LABEL_72:
                  __break(1u);
                  goto LABEL_73;
                }

                v59 = v59 * v84 / v85;
              }

              if (!__CFADD__(v88, v59))
              {
                v60 = *(&a1->_os_unfair_lock_opaque + v53);
                v14 = v89;
                AUAAudioDevice.updateTimeStamp(hostTime:sampleTime:seed:from:)(&v88[v59], *(&a1->_os_unfair_lock_opaque + OBJC_IVAR___AUAStream_timeStampSeed), a1, v60);
                goto LABEL_42;
              }

LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

LABEL_67:
          __break(1u);
          goto LABEL_68;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_67;
    }
  }
}

Swift::Void __swiftcall AUAStream.start()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v38[-v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR___AUAAudioDevice_function);
    v11 = *(Strong + OBJC_IVAR___AUAAudioDevice_function + 8);
    v12 = Strong;
    swift_unknownObjectRetain();

    if (v10)
    {
      v47 = 0x207475706E497369;
      v48 = 0xE800000000000000;
      v13 = [v1 direction];
      v14 = v13 == 1768845428;
      if (v13 == 1768845428)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v14)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      v17 = v16;
      String.append(_:)(*&v15);

      v18 = v48;
      v45 = v47;
      v19 = OBJC_IVAR___AUAStream_logID;
      v20 = qword_100173CB0;
      swift_unknownObjectRetain();
      v46 = v1;
      if (v20 != -1)
      {
        swift_once();
      }

      v21 = &v1[v19];
      if (byte_1001794E8 == 1)
      {
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for AUALog(0);
        v23 = sub_10000A1BC(v22, qword_100179508);
        swift_unknownObjectRetain();
        v24 = v46;
        sub_100041FA0(4, "AUAStream_start", 15, 2, v21, v45, v18, v23, v24, v10, v11);
      }

      else
      {
        v43 = v3;
        v44 = v18;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v25 = type metadata accessor for AUALog(0);
        v26 = sub_10000A1BC(v25, qword_100179508);
        v27 = &v21[*(type metadata accessor for LogID(0) + 20)];
        v41 = *(v43 + 16);
        v41(v8, v27, v2);
        v28 = v44;

        v42 = v26;
        v29 = OSSignposter.logHandle.getter();
        v30 = static os_signpost_type_t.begin.getter();

        if (OS_os_log.signpostsEnabled.getter())
        {
          v31 = swift_slowAlloc();
          v39 = v30;
          v32 = v31;
          v33 = swift_slowAlloc();
          v40 = v11;
          v34 = v33;
          v47 = v33;
          *v32 = 136446210;
          *(v32 + 4) = sub_100035760(v45, v28, &v47);
          v35 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v39, v35, "AUAStream_start", "%{public}s", v32, 0xCu);
          sub_10000CE78(v34);
          v11 = v40;
        }

        v41(v6, v8, v2);
        type metadata accessor for OSSignpostIntervalState();
        swift_allocObject();
        v36 = OSSignpostIntervalState.init(id:isOpen:)();
        (*(v43 + 8))(v8, v2);
        v37 = v46;
        sub_1000B0228(v46, v10, v11);

        sub_1000461FC(v42, "AUAStream_start", 15, 2, v36);
      }

      swift_unknownObjectRelease_n();
    }
  }
}

void sub_1000B0228(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v44 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR___AUAStream_transferManager;
  if (!*(a1 + OBJC_IVAR___AUAStream_transferManager))
  {
    v11 = OBJC_IVAR___AUAStream_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v12, qword_100179508);
    sub_100039F58(4, a1 + v11, 0xD00000000000001CLL, 0x8000000100130240);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v40 = v7;
    v15 = *(a1 + v10);
    if (!v15)
    {

      return;
    }

    v41 = v3;
    v16 = OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame;
    *(a1 + OBJC_IVAR___AUAStream_firstTimeStampUSBFrame) = *&Strong[OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame];

    v17 = [a1 direction];
    v18 = OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame;
    if (v17 != 1768845428)
    {
      v18 = v16;
    }

    (*(*v15 + 88))(*&v14[v18]);
    v19 = OBJC_IVAR___AUAStream_started;
    swift_beginAccess();
    *(a1 + v19) = 1;
    *(a1 + OBJC_IVAR___AUAStream_needFirstTimeStamp) = 1;
    *(a1 + OBJC_IVAR___AUAStream_lastIOTimeNS) = 0;
    *(a1 + OBJC_IVAR___AUAStream_timeStampSeed) = *&v14[OBJC_IVAR___AUAAudioDevice_curZTSSeed];
    *(a1 + OBJC_IVAR___AUAStream_sampleTime) = 0;
    *(a1 + OBJC_IVAR___AUAStream_hostTime) = 0;
    ObjectType = swift_getObjectType();
    v21 = *(a3 + 112);
    v22 = v21(ObjectType, a3);
    v39 = v6;
    if (v22 && ((, ![v14 isHidden]) ? (v23 = OBJC_IVAR___AUAStream_b2pStandaloneStart) : (v23 = OBJC_IVAR___AUAStream_b2pUnifedStart), v24 = a1 + v23, (*v24 & 1) == 0))
    {
      v25 = 1;
      *v24 = 1;
    }

    else
    {
      v25 = 0;
    }

    (*((swift_isaMask & *a1) + 0x2D0))();
    v26 = type metadata accessor for AUAStream(0);
    v48.receiver = a1;
    v48.super_class = v26;
    objc_msgSendSuper2(&v48, "startStream");
    if (v25)
    {
      v27 = v21(ObjectType, a3);
      if (v27)
      {
        v28 = v27;
        v29 = (*(a3 + 16))(ObjectType, a3);
        if (v29)
        {
          v30 = v29;
          v46 = *(v28 + 64);
          v31 = swift_allocObject();
          *(v31 + 16) = v30;
          *(v31 + 24) = v14;
          aBlock[4] = sub_1000BDC04;
          aBlock[5] = v31;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000172D4;
          aBlock[3] = &unk_100164B10;
          v32 = _Block_copy(aBlock);
          v38 = v30;
          v33 = v14;
          v34 = v42;
          static DispatchQoS.unspecified.getter();
          v49 = _swiftEmptyArrayStorage;
          sub_1000BDC0C();
          sub_100001AB4(&unk_1001772A0, &qword_1001224E0);
          sub_1000BDC64();
          v35 = v44;
          v36 = v39;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();

          _Block_release(v32);

          (*(v40 + 8))(v35, v36);
          (*(v43 + 8))(v34, v45);

LABEL_23:

          return;
        }
      }
    }

    goto LABEL_23;
  }
}

uint64_t sub_1000B07C0(uint64_t a1, void *a2)
{
  sub_100001AB4(&unk_100177280, &unk_100120B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10011DE90;
  *(inited + 32) = 0x64656966696E75;
  *(inited + 40) = 0xE700000000000000;
  sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
  *(inited + 48) = NSNumber.init(BOOLeanLiteral:)([a2 isHidden]);
  v4 = sub_10000AB64(inited);
  swift_setDeallocating();
  sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
  sub_1000FC32C(0xD00000000000002ALL, 0x8000000100130260, v4);
}

Swift::Void __swiftcall AUAStream.stop()()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v35[-v7];
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(41);

  v41 = 0xD000000000000015;
  v42 = 0x800000010012F130;
  if (v0[OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream])
  {
    v9 = 0x65726F666562;
  }

  else
  {
    v9 = 0x7265746661;
  }

  if (v0[OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream])
  {
    v10 = 0xE600000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v11 = v10;
  String.append(_:)(*&v9);

  v12._object = 0x800000010012F160;
  v12._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v12);
  v14 = v41;
  v13 = v42;
  v15 = OBJC_IVAR___AUAStream_logID;
  v16 = qword_100173CB0;
  v17 = v1;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = &v1[v15];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AUALog(0);
    v20 = sub_10000A1BC(v19, qword_100179508);
    v21 = v17;
    sub_100042C74(4, "AUAStream_stop", 14, 2, v18, v14, v13, v20, v21);
  }

  else
  {
    v38 = v14;
    v39 = v17;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for AUALog(0);
    v23 = sub_10000A1BC(v22, qword_100179508);
    v24 = *(type metadata accessor for LogID(0) + 20);
    v40 = v3;
    v25 = *(v3 + 16);
    v25(v8, v18 + v24, v2);

    v26 = OSSignposter.logHandle.getter();
    v27 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v28 = swift_slowAlloc();
      v37 = v23;
      v29 = v28;
      v30 = swift_slowAlloc();
      v36 = v27;
      v31 = v30;
      v41 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100035760(v38, v13, &v41);
      v32 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, v36, v32, "AUAStream_stop", "%{public}s", v29, 0xCu);
      sub_10000CE78(v31);

      v23 = v37;
    }

    v25(v6, v8, v2);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v33 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v40 + 8))(v8, v2);
    v34 = v39;
    sub_1000B0DF8(v39);

    sub_1000461FC(v23, "AUAStream_stop", 14, 2, v33);
  }
}

uint64_t sub_1000B0DF8(_BYTE *a1)
{
  v3 = OBJC_IVAR___AUAStream_started;
  swift_beginAccess();
  a1[v3] = 0;
  v27.receiver = a1;
  v27.super_class = type metadata accessor for AUAStream(0);
  objc_msgSendSuper2(&v27, "stopStream");
  v4 = OBJC_IVAR___AUAStream_transferManager;
  v5 = *&a1[OBJC_IVAR___AUAStream_transferManager];
  if (v5 && a1[OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream] == 1)
  {
    v6 = *(*v5 + 128);

    v6(v7);
  }

  v8 = OBJC_IVAR___AUAStream_streamingEndpoint;
  v9 = *&a1[OBJC_IVAR___AUAStream_streamingEndpoint];
  if (v9 && *(v9 + 120))
  {
    v10 = a1[OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream];
    v11 = *&a1[OBJC_IVAR___AUAStream_streamingEndpoint];

    sub_100116498(v10);

    *(v11 + 120) = 0;
  }

  *&a1[v8] = 0;

  v12 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 112);
  if (!v12)
  {
    sub_10000CA2C();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_12;
  }

  v25 = 0;
  v13 = v12;
  if (([v13 selectAlternateSetting:0 error:&v25] & 1) == 0)
  {
    v16 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_12:
    v17 = _convertErrorToNSError(_:)();
    v18 = [v17 code];

    if (v18 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v18 <= 0x7FFFFFFF)
    {
      v25 = 0;
      v26 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v19._object = 0x80000001001301F0;
      v19._countAndFlagsBits = 0xD000000000000019;
      String.append(_:)(v19);
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_10011DE90;
      *(v20 + 56) = &type metadata for Int32;
      *(v20 + 64) = &protocol witness table for Int32;
      *(v20 + 32) = v18;
      v21._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 0xD000000000000025;
      v22._object = 0x8000000100130210;
      String.append(_:)(v22);
      v17 = v25;
      v18 = v26;
      v1 = OBJC_IVAR___AUAStream_logID;
      if (qword_100173CC0 == -1)
      {
LABEL_15:
        v23 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v23, qword_100179508);
        sub_100039F58(4, &a1[v1], v17, v18);

        goto LABEL_16;
      }

LABEL_19:
      swift_once();
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_19;
  }

  v14 = v25;

LABEL_16:
  *&a1[v4] = 0;
}

Swift::Bool __swiftcall AUAStream.deviceChanged(toSamplingRate:)(Swift::Double toSamplingRate)
{
  v2 = v1;
  v16 = 0;
  v17 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v4._countAndFlagsBits = 0xD000000000000032;
  v4._object = 0x800000010012F180;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._object = 0x800000010012F1C0;
  v5._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v5);
  v15 = [v1 physicalFormat];
  sub_100001AB4(&qword_100177660, &unk_1001241F0);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v8, qword_100179508);
  sub_100039AA0(3, v1 + v7, 0, 0xE000000000000000);

  v9 = [v1 physicalFormats];
  if (v9)
  {
    v10 = v9;
    sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12)
    {
      v14.receiver = v2;
      v14.super_class = type metadata accessor for AUAStream(0);
      LOBYTE(v9) = objc_msgSendSuper2(&v14, "deviceChangedToSamplingRate:", toSamplingRate);
    }

    else
    {
      LOBYTE(v9) = 1;
    }
  }

  else
  {
    __break(1u);
  }

  return v9;
}

uint64_t AUAStream.changePhysicalFormat(_:)(void *a1)
{
  v2 = v1;
  v4 = ", physicalFormat ";
  v5 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v6 = type metadata accessor for AUALog(0);
  v33 = sub_10000A1BC(v6, qword_100179508);
  v34 = v5;
  sub_100039AA0(3, v2 + v5, 0xD00000000000001ELL, (v4 | 0x8000000000000000));
  result = [v2 physicalFormats];
  if (!result)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_10001EBA8(0, &qword_100174FA8, ASDStreamFormat_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_26:

LABEL_27:
    sub_10000CA2C();
    v30 = swift_allocError();
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_errorRetain();
    _StringGuts.grow(_:)(22);
    v32._object = 0x800000010012F200;
    v32._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v32);
    v42 = v30;
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    sub_100039F58(3, v2 + v34, 0, 0xE000000000000000);

    return 0;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_5:
  v10 = 0;
  while (1)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      result = *(v4 + 8 * v10 + 32);
    }

    v11 = result;
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (!a1)
    {
      __break(1u);
      goto LABEL_29;
    }

    if ([a1 isCompatible:result])
    {
      break;
    }

    ++v10;
    if (v5 == v9)
    {
      goto LABEL_26;
    }
  }

  [v11 copy];

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for AUAStreamFormat();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = v42;
    [a1 sampleRate];
    [v14 setSampleRate:?];

    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v2;
    v15[4] = v13;
    aBlock = 0xD000000000000018;
    v37 = 0x800000010012F220;
    v16 = v14;
    v17 = v2;
    v18 = v13;
    v19._countAndFlagsBits = 8236;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0xD000000000000016;
    v20._object = 0x800000010012F240;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 2108704;
    v21._object = 0xE300000000000000;
    String.append(_:)(v21);
    v42 = 723;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, 0xD000000000000018, 0x800000010012F220, &v18[OBJC_IVAR___AUAAudioDevice_logID]);

    v23 = *&v18[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1000B9D30;
    *(v24 + 24) = v15;
    aBlock = sub_10000CF5C;
    v37 = v24;
    v25 = *(v23 + 16);
    v26 = __chkstk_darwin(v24);
    __chkstk_darwin(v26);

    os_unfair_lock_lock(v25 + 4);
    sub_10000CF80(&v42);
    os_unfair_lock_unlock(v25 + 4);
    LODWORD(v23) = v42;

    if (v23 == 1)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v18;
      v40 = sub_10000CFD4;
      v41 = v27;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_1000172D4;
      v39 = &unk_1001644C8;
      v28 = _Block_copy(&aBlock);
      v29 = v18;

      v35.receiver = v29;
      v35.super_class = type metadata accessor for AUAAudioDevice(0);
      objc_msgSendSuper2(&v35, "requestConfigurationChange:", v28);
      _Block_release(v28);
    }
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1000B1A78(void *a1, void *a2, void *a3)
{
  _StringGuts.grow(_:)(65);
  v6._countAndFlagsBits = 0x6152656C706D6173;
  v6._object = 0xEB00000000206574;
  String.append(_:)(v6);
  [a1 sampleRate];
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 0x656E6E616863202CLL;
  v7._object = 0xEB0000000020736CLL;
  String.append(_:)(v7);
  [a1 channelsPerFrame];
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._object = 0x80000001001301D0;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v20 = [a1 bitsPerChannel];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0xD000000000000012;
  v11._object = 0x800000010012BB10;
  String.append(_:)(v11);
  [a1 sampleRate];
  Double.write<A>(to:)();
  v12 = OBJC_IVAR___AUAStream_logID;
  v13 = qword_100173CC0;
  v14 = a3;
  v15 = a1;
  v16 = a2;
  if (v13 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AUALog(0);
  v18 = sub_10000A1BC(v17, qword_100179508);
  sub_1000438F4(3, "AUAStream changePhysicalFormat", 30, 2u, &v16[v12], HIDWORD(v20), 0xE000000000000000, v18, v14, v15, v16);
}

id sub_1000B1CE4(void *a1, id a2, void *a3)
{
  [a2 sampleRate];
  v7 = v6;
  v8._countAndFlagsBits = 0x3A6574615277656ELL;
  v8._object = 0xE900000000000020;
  String.append(_:)(v8);
  Double.write<A>(to:)();
  v9 = OBJC_IVAR___AUAAudioDevice_logID;
  v10 = qword_100173CC0;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for AUALog(0);
  v13 = sub_10000A1BC(v12, qword_100179508);
  sub_10003B08C(3, "setSamplingRate", 15, 2, &v11[v9], 0, 0xE000000000000000, v13, v7, v11);

  return [a3 setPhysicalFormat:a2];
}

void sub_1000B1E98()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v11 = [v3 physicalFormat];
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = v11;
  type metadata accessor for AUAStreamFormat();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

LABEL_12:
    sub_10000CA2C();
    swift_allocError();
    *v31 = 1;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v14 = *&v13[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v14)
  {
    sub_10000CA2C();
    swift_allocError();
    v33 = 83;
LABEL_15:
    *v32 = v33;
    *(v32 + 8) = 0;
    *(v32 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v15 = *(*&v3[OBJC_IVAR___AUAStream_interface] + 112);
  if (!v15)
  {
    sub_10000CA2C();
    swift_allocError();
    v33 = 1;
    goto LABEL_15;
  }

  v57 = v5;
  v58 = v2;
  v60 = v13;
  v61 = 0x74616E7265746C61;
  v62 = 0xEA00000000002065;
  v64 = *(*(v14 + 16) + 3);

  v16 = v15;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v18 = v14;
  String.append(_:)(v17);

  v54 = v61;
  v55 = v62;
  v19 = OBJC_IVAR___AUAStream_logID;
  v20 = qword_100173CB0;
  v59 = v18;

  v21 = v16;
  v22 = v12;
  v56 = v3;
  if (v20 != -1)
  {
    swift_once();
  }

  v23 = &v3[v19];
  if (byte_1001794E8 == 1)
  {
    v24 = v56;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for AUALog(0);
    v26 = sub_10000A1BC(v25, qword_100179508);
    v27 = v59;

    v28 = v21;
    v29 = v22;
    v30 = v24;
    sub_10003C66C(4, "AUAStream_prepareStream", 23, 2, v23, v54, v55, v26, v28, v27, v60, v30);
  }

  else
  {
    v52 = v22;
    v53 = v21;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for AUALog(0);
    v35 = sub_10000A1BC(v34, qword_100179508);
    v36 = &v23[*(type metadata accessor for LogID(0) + 20)];
    v50 = *(v57 + 16);
    v50(v10, v36, v4);
    v37 = v55;

    v51 = v35;
    v38 = OSSignposter.logHandle.getter();
    v39 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v40 = swift_slowAlloc();
      v63 = v39;
      v41 = v40;
      v42 = swift_slowAlloc();
      v61 = v42;
      *v41 = 136446210;
      v43 = sub_100035760(v54, v37, &v61);

      *(v41 + 4) = v43;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v63, v44, "AUAStream_prepareStream", "%{public}s", v41, 0xCu);
      sub_10000CE78(v42);
    }

    else
    {
    }

    v45 = v59;
    v46 = v56;
    v50(v8, v10, v4);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v47 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v57 + 8))(v10, v4);
    v28 = v53;
    sub_1000B2494(v53, v45, v60, v46);
    sub_1000461FC(v51, "AUAStream_prepareStream", 23, 2, v47);

    v48 = v52;
  }
}

void sub_1000B2494(void *a1, uint64_t a2, void *a3, char *a4)
{
  v8 = a1;
  v9 = *(*(a2 + 16) + 3);
  aBlock = 0;
  v10 = [a1 selectAlternateSetting:v9 error:&aBlock];
  v11 = aBlock;
  if (!v10)
  {
    v20 = aBlock;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v54 = v4;
  v56 = a4;
  swift_beginAccess();
  v55 = a2;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v21 = v11;
    v18 = a2;
    v17 = a4;
    goto LABEL_13;
  }

  v13 = Strong;
  if (*(Strong + 128))
  {
    v14 = v11;

    v15 = &off_100167CF8;
    goto LABEL_5;
  }

  v53 = a3;
  v33 = *(Strong + 72);
  if (v33 >> 62)
  {
    goto LABEL_40;
  }

  v57 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v57)
  {
LABEL_41:
    v51 = v11;
LABEL_42:
    sub_10000CA2C();
    swift_allocError();
    v50 = 86;
    goto LABEL_43;
  }

LABEL_22:
  v52 = v8;
  v34 = v11;
  swift_beginAccess();
  v11 = 0;
  while (1)
  {
    if ((v33 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v11 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v35 = *(v33 + 8 * v11 + 32);

      v8 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        v57 = _CocoaArrayWrapper.endIndex.getter();
        if (!v57)
        {
          goto LABEL_41;
        }

        goto LABEL_22;
      }
    }

    if (*(v13 + 16))
    {
      break;
    }

    v66 = 0;
    v64 = 0u;
    v65 = 0u;
LABEL_24:
    sub_10000D040(&v64, &qword_100176188, &qword_100124520);
    v11 = v11 + 1;
    if (v8 == v57)
    {
      goto LABEL_42;
    }
  }

  v36 = *(v13 + 24);
  ObjectType = swift_getObjectType();
  v38 = *(v36 + 208);
  swift_unknownObjectRetain();
  v38(&v64, v35, ObjectType, v36);
  swift_unknownObjectRelease();

  if (!*(&v65 + 1))
  {
    goto LABEL_24;
  }

  sub_10000D0A0(&v64, v67);
  sub_10000D0A0(v67, &aBlock);
  v39 = v61;
  v40 = v62;
  sub_10001EAB8(&aBlock, v61);
  if (!(*(v40 + 4))(v39, v40))
  {
    sub_10000CE78(&aBlock);
    sub_10000CA2C();
    swift_allocError();
    v50 = 87;
LABEL_43:
    *v49 = v50;
    *(v49 + 8) = 0;
    *(v49 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v42 = v41;

  v15 = *(v42 + 16);
  sub_10000CE78(&aBlock);
  v8 = v52;
  a3 = v53;
LABEL_5:
  v16 = swift_getObjectType();
  v18 = v55;
  v17 = v56;
  if ((v15[10])(v16, v15))
  {
    [a3 sampleRate];
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -1.0)
    {
      if (v19 < 1.84467441e19)
      {
        (v15[3])(v19, 0, v16, v15);
        goto LABEL_10;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_47;
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_13:
  *&v17[OBJC_IVAR___AUAStream_streamingEndpoint] = *(v18 + 104);
  swift_retain_n();

  sub_100117448(v8, 0);

  if (v54)
  {
    return;
  }

  if ([v17 direction] != 1768845428)
  {
    type metadata accessor for AUAOutputTransferManager(0);
    swift_allocObject();
    v43 = v17;
    sub_1000085BC(v43, a3, v8);
    *&v43[OBJC_IVAR___AUAStream_transferManager] = v44;

    sub_100009A38();
    v46 = v45;
    v48 = v47;

    v62 = v46;
    v63 = v48;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1000B2B84;
    v61 = &unk_100164890;
    v32 = _Block_copy(&aBlock);

    [v43 setWriteMixBlock:{v32, v52}];
LABEL_36:
    _Block_release(v32);
    return;
  }

  type metadata accessor for AUAInputTransferManager(0);
  swift_allocObject();
  v22 = v17;
  sub_100005C58(v22, a3, v8);
  v24 = v23;
  *&v22[OBJC_IVAR___AUAStream_transferManager] = v23;

  type metadata accessor for LogID(0);
  v25 = OSSignpostID.rawValue.getter();
  v26 = v24[12];
  if (HIDWORD(v26))
  {
    goto LABEL_48;
  }

  v27 = v24[8];
  if (HIDWORD(v27))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  v28 = v24[13];
  if (HIDWORD(v28))
  {
    goto LABEL_50;
  }

  v29 = v24[3];
  if (v29)
  {
    v30 = AUARealtimeReadInputBlock(v25, v26, 32, v27, v28, v29, v24[7]);
    v31 = swift_allocObject();
    *(v31 + 16) = v30;

    v62 = sub_1000BDAC4;
    v63 = v31;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1000B2B84;
    v61 = &unk_1001648E0;
    v32 = _Block_copy(&aBlock);

    [v22 setReadInputBlock:{v32, v52}];
    goto LABEL_36;
  }

  __break(1u);
}

uint64_t sub_1000B2B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a1 + 32);

  v12 = v11(a2, a3, a4, a5, a6);

  return v12;
}

Swift::String_optional __swiftcall AUAStream.channelName(forChannelIndex:)(Swift::UInt32 forChannelIndex)
{
  ActiveOutputTerminal.cluster.getter();
  if (v3)
  {
    if (*(v3 + 16) > forChannelIndex && (v4 = v3 + 32 * forChannelIndex, (v5 = *(v4 + 48)) != 0))
    {
      v6 = *(v4 + 40);
    }

    else
    {
      v6 = 0;
      v5 = 0xE000000000000000;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      swift_getObjectType();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v10 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v11 = String._bridgeToObjectiveC()();

      v12 = [v10 localizedStringForKey:v11 value:0 table:0];

      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v13;
    }
  }

  else
  {
    v14 = OBJC_IVAR___AUAStream_logID;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v15, qword_100179508);
    sub_100039F58(1, v1 + v14, 0xD00000000000001ALL, 0x800000010012F260);
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v16 = v6;
  v17 = v5;
  result.value._object = v17;
  result.value._countAndFlagsBits = v16;
  return result;
}

Swift::String_optional __swiftcall AUAStream.channelCategory(forChannelIndex:)(Swift::UInt32 forChannelIndex)
{
  v2 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v3, qword_100179508);
  sub_100039F58(1, v1 + v2, 0xD00000000000001ELL, 0x800000010012F280);
  v4 = 0;
  v5 = 0;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

Swift::String_optional __swiftcall AUAStream.channelNumber(forChannelIndex:)(Swift::UInt32 forChannelIndex)
{
  v2 = OBJC_IVAR___AUAStream_logID;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v3, qword_100179508);
  sub_100039F58(1, v1 + v2, 0xD00000000000001CLL, 0x800000010012F2A0);
  v4 = 0;
  v5 = 0;
  result.value._object = v5;
  result.value._countAndFlagsBits = v4;
  return result;
}

uint64_t AUAStream.preferredChannelDescription(_:forChannelIndex:)(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v3 = result;
    *(result + 4) = 0;
    *(result + 12) = 0;
    result = ActiveOutputTerminal.cluster.getter();
    if (v4)
    {
      if (*(v4 + 16) <= a2)
      {
      }

      else
      {
        v5 = *(v4 + 32 * a2 + 56);

        if ((v5 - 1) < 0x47)
        {
          v6 = dword_100124534[v5 - 1];
LABEL_8:
          *v3 = v6;
          return result;
        }
      }
    }

    v6 = -1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id AUAStream.__allocating_init(direction:with:)(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(v2) initWithDirection:a1 withPlugin:a2];

  return v4;
}

char *sub_1000B33E4(void *a1, char *a2)
{
  *(v2 + 16) = a1;
  v3 = (v2 + 16);
  *(v2 + 24) = a2;
  v4 = *&a2[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v4)
  {
    sub_10000CA2C();
    swift_allocError();
    *v20 = 83;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_15;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v21 = a1;
    v22 = a2;

    goto LABEL_14;
  }

  v8 = *(Strong + 112);
  v9 = v8;
  v29 = a1;
  v30 = a2;

  if (!v8)
  {
LABEL_14:
    sub_10000CA2C();
    swift_allocError();
    *v23 = 1;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_15;
  }

  v11 = *(v4 + 104);
  v12 = v11[14];
  if (HIDWORD(v12))
  {
    __break(1u);
    goto LABEL_25;
  }

  v13 = *(*v3 + OBJC_IVAR___AUAAudioDevice_lockDelayMS);
  v14 = v11[12];
  if (!is_mul_ok(v13, v14))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = v11[13];
  if (!v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = v13 * v14 / v15;
  *(v2 + 32) = v16;
  if (!is_mul_ok(v14, 0x14uLL))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = 20 * v14 / v15;
  v18 = v16 >= v17;
  v19 = v16 - v17;
  if (!v18)
  {
    goto LABEL_28;
  }

  *(v2 + 40) = v19;
  *(v2 + 48) = 2 * v14 / v15;

  result = sub_100005814(v9, v12);
  if (v31)
  {

LABEL_15:

    type metadata accessor for AUALockDelay();
    swift_deallocPartialClassInstance();
    return v2;
  }

  *(v2 + 56) = result;
  v24 = *(v2 + 32);
  if (v24 < 0)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v24 * 28) >> 64 != (28 * v24) >> 63)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v25 = sub_100005814(v9, 28 * v24);
  *(v2 + 64) = v25;
  v26 = v25;
  result = [v26 mutableBytes];
  *(v2 + 72) = result;
  v27 = *(v2 + 32);
  if ((v27 & 0x8000000000000000) == 0)
  {
    if (v27)
    {
      v28 = result + 16;
      do
      {
        *(v28 - 1) = 0;
        *v28 = 0;
        *(v28 - 4) = -536870911;
        *(v28 - 3) = v12;
        *(v28 + 2) = 0;
        v28 += 28;
        --v27;
      }

      while (v27);
    }

    return v2;
  }

LABEL_31:
  __break(1u);
  return result;
}

void *sub_1000B3744()
{
  v1 = type metadata accessor for LogID(0);
  __chkstk_darwin(v1);
  v3 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0[2];
  v5 = *(v4 + OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame);
  aBlock = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(79);
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v6._object = 0x800000010012FCD0;
  String.append(_:)(v6);
  v72 = *(v4 + OBJC_IVAR___AUAAudioDevice_lockDelayMS);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000011;
  v8._object = 0x800000010012FCF0;
  String.append(_:)(v8);
  v66 = v0;
  v9 = v0[4];
  v72 = v9;
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11._object = 0x800000010012FD10;
  v11._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v11);
  v72 = v5;
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13 = aBlock;
  v14 = v70;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    v56 = sub_10000A1BC(v1, qword_1001794F0);
    sub_10000A2A4(v56, v3);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    v55 = sub_10000A1BC(v15, qword_100179508);
    sub_100039AA0(4, v3, v13, v14);

    sub_10000C9D0(v3);
    v16 = *(v66[3] + OBJC_IVAR___AUAStreamFormat_altSetting);
    if (!v16)
    {
      v54 = v3;
      sub_10000CA2C();
      swift_allocError();
      v44 = 83;
LABEL_38:
      *v43 = v44;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0xE000000000000000;
      swift_willThrow();
      goto LABEL_39;
    }

    result = *(v16 + 104);
    v14 = result[15];
    if (!v14)
    {
      v54 = v3;
      sub_10000CA2C();
      swift_allocError();
      v44 = 1;
      goto LABEL_38;
    }

    v18 = result[12];
    if (v18 >> 61)
    {
      goto LABEL_53;
    }

    v19 = result[13];
    if (!v19)
    {
      goto LABEL_54;
    }

    v20 = 8 * v18;
    if (v19 > v20)
    {
      goto LABEL_55;
    }

    v21 = v20 / v19;
    v22 = v9 / (v20 / v19);
    v23 = v9 % (v20 / v19);
    v24 = v21 + v23;
    if (__CFADD__(v21, v23))
    {
      goto LABEL_56;
    }

    if (v21 > v9)
    {
      return result;
    }

    v54 = v3;
    v9 = v22 - 1;
    v25 = v66[9];
    v61 = v66[7];
    v62 = v25;
    v60 = v71;
    v57 = result;

    v3 = 0;
    v13 = 0;
    v1 = &selRef_modelUID;
    v59 = v22 - 1;
    v58 = v24;
LABEL_12:
    if (v13 < v22)
    {
      break;
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    swift_once();
  }

  if (v13)
  {
    v26 = v21;
  }

  else
  {
    v26 = v24;
  }

  if (v9 == v13)
  {

    v68 = sub_1000BDA88;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  if ((v26 & 0x8000000000000000) != 0)
  {
    goto LABEL_45;
  }

  if (![*(v14 + 16) v1[120]])
  {
    goto LABEL_23;
  }

  v27 = v22;
  v65 = v5;
  v28 = v21;
  v63 = *(v14 + 24);
  v64 = v62 + 28 * v3;
  v29 = swift_allocObject();
  v30 = v67;
  v31 = v68;
  v29[2] = v68;
  v29[3] = v30;
  v29[4] = v14;
  v71[2] = sub_1000BDD3C;
  v71[3] = v29;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71[0] = sub_1000B9C68;
  v71[1] = &unk_1001647F0;
  v32 = _Block_copy(&aBlock);
  v33 = v14;

  sub_10001DB5C(v31, v30);

  aBlock = 0;
  v34 = v26;
  v35 = v65;
  v36 = [v63 enqueueIORequestWithData:v61 transactionList:v64 transactionListCount:v34 firstFrameNumber:v32 options:? error:? completionHandler:?];
  _Block_release(v32);
  if (v36)
  {
    v37 = aBlock;
    v14 = v33;
    v21 = v28;
    v5 = v35;
    v22 = v27;
    v24 = v58;
    v9 = v59;
    v1 = &selRef_modelUID;
LABEL_23:
    sub_10001ED94(v68, v67);
    if (v13)
    {
      v38 = __CFADD__(v5, 8);
      v5 += 8;
      if (v38)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v39 = v57[12];
      if (!v39)
      {
        goto LABEL_49;
      }

      v40 = v24 / v39;
      v38 = __CFADD__(v5, v40);
      v5 += v40;
      if (v38)
      {
        goto LABEL_46;
      }
    }

    if (v3)
    {
      v41 = v21;
    }

    else
    {
      v41 = v24;
    }

    if ((v41 & 0x8000000000000000) != 0)
    {
      goto LABEL_47;
    }

    v42 = __OFADD__(v3, v41);
    v3 += v41;
    if (v42)
    {
      goto LABEL_48;
    }

    v13 = (v13 + 1);
    if (v22 == v13)
    {
    }

    goto LABEL_12;
  }

  v52 = aBlock;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  [*(v33 + 16) decrement];
  swift_willThrow();

  sub_10001ED94(v68, v67);
LABEL_39:
  v45 = _convertErrorToNSError(_:)();
  v46 = [v45 code];

  if (v46 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v46 > 0x7FFFFFFF)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }

  aBlock = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  aBlock = 0xD000000000000019;
  v70 = 0x800000010012FD30;
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_10011DE90;
  *(v47 + 56) = &type metadata for Int32;
  *(v47 + 64) = &protocol witness table for Int32;
  *(v47 + 32) = v46;
  v48._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v48);

  v49 = aBlock;
  v50 = v70;
  v51 = v54;
  sub_10000A2A4(v56, v54);
  sub_100039F58(4, v51, v49, v50);

  return sub_10000C9D0(v51);
}

uint64_t sub_1000B3ED4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000B3F24()
{
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v48[0] = 0;
  v48[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  strcpy(v48, "locklDelayMS: ");
  HIBYTE(v48[1]) = -18;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *&Strong[OBJC_IVAR___AUAAudioDevice_lockDelayMS];
  }

  else
  {
    v10 = 0;
  }

  v49 = v10;
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0x800000010012BC20;
  v12._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v12);
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = *&v13[OBJC_IVAR___AUAAudioDevice_feedbackDelayMS];
  }

  else
  {
    v14 = 0;
  }

  v49 = v14;
  v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v15);

  v16 = v48[1];
  v47 = v48[0];
  v17 = OBJC_IVAR___AUAStream_logID;
  v18 = qword_100173CB0;
  v19 = v2;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = &v2[v17];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for AUALog(0);
    v22 = sub_10000A1BC(v21, qword_100179508);
    v23 = v19;
    sub_10003D374(4, "AUAInputStream_prepareStream", 28, 2, v20, v47, v16, v22, v23);
  }

  else
  {
    v43 = v19;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for AUALog(0);
    v26 = sub_10000A1BC(v25, qword_100179508);
    v27 = *(type metadata accessor for LogID(0) + 20);
    v44 = v4;
    v45 = v3;
    v28 = *(v4 + 16);
    v28(v8, v20 + v27, v3);

    v29 = OSSignposter.logHandle.getter();
    v30 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v31 = swift_slowAlloc();
      v41 = v26;
      v32 = v31;
      v33 = swift_slowAlloc();
      v42 = v1;
      v34 = v33;
      v48[0] = v33;
      *v32 = 136446210;
      v35 = sub_100035760(v47, v16, v48);

      *(v32 + 4) = v35;
      v36 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v36, "AUAInputStream_prepareStream", "%{public}s", v32, 0xCu);
      sub_10000CE78(v34);

      v26 = v41;
    }

    else
    {
    }

    v37 = v45;
    v28(v46, v8, v45);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v38 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v44 + 8))(v8, v37);
    v39 = v43;
    sub_1000B4430(v43);
    sub_1000461FC(v26, "AUAInputStream_prepareStream", 28, 2, v38);
  }
}

void sub_1000B4430(char *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v11 = 58;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v4 = Strong;
  if (!*(Strong + OBJC_IVAR___AUAAudioDevice_lockDelayMS))
  {
    goto LABEL_11;
  }

  v5 = [a1 physicalFormat];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for AUAStreamFormat();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      type metadata accessor for AUALockDelay();
      v9 = swift_allocObject();
      v10 = v4;
      sub_1000B33E4(v10, v8);
      if (v1)
      {

        return;
      }

      *&a1[OBJC_IVAR___AUAInputStream_lockDelay] = v9;

LABEL_11:
      sub_1000B1E98();
      goto LABEL_12;
    }
  }

  sub_10000CA2C();
  swift_allocError();
  *v12 = 1;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0xE000000000000000;
  swift_willThrow();
LABEL_12:
}

void sub_1000B45B0()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = OBJC_IVAR___AUAStream_logID;
  v9 = qword_100173CB0;
  v10 = v0;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = &v0[v8];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    v13 = sub_10000A1BC(v12, qword_100179508);
    v14 = v10;
    sub_1000406A0(4, "AUAInputStream_startDirectionalStream", 37, 2, v11, 0, 0xE000000000000000, v13, v14);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    v16 = sub_10000A1BC(v15, qword_100179508);
    v17 = type metadata accessor for LogID(0);
    v18 = *(v2 + 16);
    v18(v7, v11 + *(v17 + 20), v1);
    v19 = OSSignposter.logHandle.getter();
    v29 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      v28 = v10;
      v21 = v20;
      v22 = swift_slowAlloc();
      v27 = v16;
      v23 = v22;
      v30 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100035760(0, 0xE000000000000000, &v30);
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v29, v24, "AUAInputStream_startDirectionalStream", "%{public}s", v21, 0xCu);
      sub_10000CE78(v23);
      v16 = v27;

      v10 = v28;
    }

    v18(v5, v7, v1);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v25 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v2 + 8))(v7, v1);
    sub_1000B498C(v10);
    sub_1000461FC(v16, "AUAInputStream_startDirectionalStream", 37, 2, v25);
  }
}

uint64_t sub_1000B498C(char *a1)
{
  v1 = a1;
  v2 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 104);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000BDA50;
  *(v4 + 24) = v3;
  v9[4] = sub_10001F01C;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000B4B04;
  v9[3] = &unk_1001647A0;
  v5 = _Block_copy(v9);
  v6 = v2;
  v7 = v1;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B4B2C()
{
  result = [v0 physicalFormat];
  if (result)
  {
    v2 = result;
    type metadata accessor for AUAStreamFormat();
    v3 = swift_dynamicCastClass();
    if (v3 && (v4 = *(v3 + OBJC_IVAR___AUAStreamFormat_altSetting)) != 0)
    {
      v5 = *(v4 + 104);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
        if (v8)
        {
          v9 = sub_1000AA808(0xBu, v8);

          if (v9)
          {

            return 1;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      v10 = IOUSBGetEndpointUsageType(*(v5 + 16));

      return v10 == 2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1000B4D40(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

Swift::Int sub_1000B4DAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_100124650[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000B4E34(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(dword_100124650[v2]);
  return Hasher._finalize()();
}

_BYTE *sub_1000B4E80@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if ((*result - 3) >= 6)
  {
    v2 = 3;
  }

  else
  {
    v2 = 0x20303030100uLL >> (8 * (*result - 3));
  }

  *a2 = v2;
  return result;
}

void sub_1000B4EC8(char *a1, int a2, unsigned int a3, uint64_t a4)
{
  *(v4 + 16) = 8;
  *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex) = 0;
  v6 = OBJC_IVAR___AUAStream_interface;
  v7 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 112);
  if (!v7)
  {
    goto LABEL_23;
  }

  if ((a4 - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = a1;
  v12 = v7;
  v13 = sub_100005814(v12, 8 * a4);
  if (v5)
  {

LABEL_16:
    type metadata accessor for AUAFeedbackTransferBlock(0);
    swift_deallocPartialClassInstance();
    return;
  }

  v27 = a3;
  v14 = v13;

  if ((a4 * 28) >> 64 != (28 * a4) >> 63)
  {
    goto LABEL_22;
  }

  v15 = *(*&v11[v6] + 112);
  if (v15)
  {
    v16 = v15;
    v17 = sub_100005814(v16, 28 * a4);

    v25 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID;
    sub_10000A2A4(&v11[OBJC_IVAR___AUAStream_logID], v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID);
    v24 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer;
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer) = v14;
    v26 = v14;
    bzero([v26 mutableBytes], objc_msgSend(v26, "length"));
    v18 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionListBuffer;
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionListBuffer) = v17;
    v19 = v17;
    bzero([v19 mutableBytes], objc_msgSend(*(v4 + v18), "length"));
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock) = a4;
    v20 = [*(v4 + v18) mutableBytes];
    *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList) = v20;
    if (a2 == 3)
    {
      if (v27 < 3)
      {
        goto LABEL_15;
      }

      v21 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize;
      if (v27 == 3)
      {
        *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize) = 0;
        return;
      }
    }

    else
    {
      if (a2 == 1)
      {
        if (v27 >= 3)
        {

          *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize) = 0;
          return;
        }

        goto LABEL_15;
      }

      if (v27 < 4)
      {
LABEL_15:
        sub_10000CA2C();
        swift_allocError();
        *v22 = 106;
        *(v22 + 8) = 0;
        *(v22 + 16) = 0xE000000000000000;
        swift_willThrow();

        sub_10000C9D0(v4 + v25);
        v11 = *(v4 + v18);
        goto LABEL_16;
      }

      v21 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize;
      if (v27 != 4)
      {
        v23 = 2;
        goto LABEL_20;
      }
    }

    v23 = 1;
LABEL_20:
    *(v4 + v21) = v23;
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1000B5228()
{
  v1 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex;
  v2 = *(v0 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock);
  v3 = *(v0 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex);
  if (v3 < v2)
  {
    v4 = v0;
    v5 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList;
    v6 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID;
    v42 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer;
    v43 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize;
    v7 = _swiftEmptyArrayStorage;
    v41 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID;
    while (1)
    {
      v8 = (*(v4 + v5) + 28 * v3);
      v9 = *v8;
      if (*v8 <= -536850433)
      {
        if (v9 == -536870163)
        {
LABEL_16:
          _StringGuts.grow(_:)(54);
          v19._countAndFlagsBits = 0xD00000000000001ELL;
          v19._object = 0x800000010012FC00;
          String.append(_:)(v19);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_10011DE90;
          *(v20 + 56) = &type metadata for Int32;
          *(v20 + 64) = &protocol witness table for Int32;
          *(v20 + 32) = v9;
          v21._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v21);

          v22._object = 0x800000010012FC20;
          v22._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v22);
          sub_100038CF0("AUAFeedbackTransferBlock_readFeedback", 37, 2, 0, 0xE000000000000000, v4 + v6);

LABEL_17:
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
            v7 = result;
          }

          v24 = *(v7 + 2);
          v23 = *(v7 + 3);
          if (v24 >= v23 >> 1)
          {
            result = sub_100025708((v23 > 1), v24 + 1, 1, v7);
            v7 = result;
          }

          *(v7 + 2) = v24 + 1;
          v25 = &v7[16 * v24];
          *(v25 + 4) = 0;
          *(v25 + 5) = 0;
          goto LABEL_40;
        }

        if (v9 == -536870911)
        {
          return v7;
        }
      }

      else
      {
        if (v9 == -536850432)
        {
          goto LABEL_16;
        }

        if (!v9)
        {
          v10 = v8[3];
          if (v10)
          {
            if (v10 == dword_100124650[*(v4 + v43)])
            {
              v11 = *(v4 + v43);
              v12 = *([*(v4 + v42) bytes] + v8[2]);
              if (v11)
              {
                if (v11 == 1)
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
                    v7 = result;
                  }

                  v15 = *(v7 + 2);
                  v14 = *(v7 + 3);
                  v16 = v15 + 1;
                  if (v15 >= v14 >> 1)
                  {
                    result = sub_100025708((v14 > 1), v15 + 1, 1, v7);
                    v7 = result;
                  }

                  v17 = 1000 * v12;
                  v18 = WORD1(v12);
                }

                else
                {
                  result = swift_isUniquelyReferenced_nonNull_native();
                  if ((result & 1) == 0)
                  {
                    result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
                    v7 = result;
                  }

                  v15 = *(v7 + 2);
                  v37 = *(v7 + 3);
                  v16 = v15 + 1;
                  if (v15 >= v37 >> 1)
                  {
                    result = sub_100025708((v37 > 1), v15 + 1, 1, v7);
                    v7 = result;
                  }

                  v17 = 1000 * v12;
                  v18 = HIDWORD(v12);
                }

                *(v7 + 2) = v16;
                v38 = &v7[16 * v15];
                *(v38 + 4) = v18;
                *(v38 + 5) = v17;
              }

              else
              {
                result = swift_isUniquelyReferenced_nonNull_native();
                if ((result & 1) == 0)
                {
                  result = sub_100025708(0, *(v7 + 2) + 1, 1, v7);
                  v7 = result;
                }

                v35 = *(v7 + 2);
                v34 = *(v7 + 3);
                if (v35 >= v34 >> 1)
                {
                  result = sub_100025708((v34 > 1), v35 + 1, 1, v7);
                  v7 = result;
                }

                *(v7 + 2) = v35 + 1;
                v36 = &v7[16 * v35];
                *(v36 + 4) = ((4 * v12) >> 16) & 0x3FF;
                *(v36 + 5) = 1000 * ((4 * v12) & 0xFFFC);
              }
            }

            else
            {
              _StringGuts.grow(_:)(63);
              v29._countAndFlagsBits = 0xD000000000000030;
              v29._object = 0x800000010012FC40;
              String.append(_:)(v29);
              v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v30);

              v31._countAndFlagsBits = 0x746365707865202CLL;
              v31._object = 0xEB00000000206465;
              String.append(_:)(v31);
              v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v32);

              if (qword_100173CC0 != -1)
              {
                swift_once();
              }

              v33 = type metadata accessor for AUALog(0);
              sub_10000A1BC(v33, qword_100179508);
              v6 = v41;
              sub_100039F58(4, v4 + v41, 0, 0xE000000000000000);
            }

            goto LABEL_40;
          }

          goto LABEL_17;
        }
      }

      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_10011DE90;
      *(v26 + 56) = &type metadata for Int32;
      *(v26 + 64) = &protocol witness table for Int32;
      *(v26 + 32) = v9;
      v27._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v27);

      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v28, qword_100179508);
      sub_100039F58(4, v4 + v6, 0x7461747320646162, 0xEB00000000207375);

LABEL_40:
      v39 = *(v4 + v1);
      v40 = __OFADD__(v39, 1);
      v3 = v39 + 1;
      if (v40)
      {
        __break(1u);
        return result;
      }

      *(v4 + v1) = v3;
      if (v3 >= v2)
      {
        return v7;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000B58D0()
{
  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_logID);

  return swift_deallocClassInstance();
}

uint64_t sub_1000B5954(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 24) = _swiftEmptyArrayStorage;
  *(v1 + 32) = _swiftEmptyArrayStorage;
  v8 = (v1 + 24);
  swift_unknownObjectWeakInit();
  v9 = [a1 physicalFormat];
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  type metadata accessor for AUAStreamFormat();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_12:
    sub_10000CA2C();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_13;
  }

  v12 = *(v11 + OBJC_IVAR___AUAStreamFormat_altSetting);
  if (!v12 || (v13 = *(v12 + 112)) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    *v19 = 1;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_13:

    swift_unknownObjectWeakDestroy();
    type metadata accessor for AUAOutputExplicitFeedbackStream(0);
    swift_deallocPartialClassInstance();
    return v3;
  }

  v78 = v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    goto LABEL_16;
  }

  v71 = v7;
  v15 = *(Strong + 112);
  v74 = v15;

  if (!v15)
  {
LABEL_16:
    sub_10000CA2C();
    swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_17;
  }

  v72 = v12;
  v73 = v13;
  if (sub_1000B817C() != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    *v23 = 109;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_13;
  }

  v16 = *&a1[OBJC_IVAR___AUAOutputStream_sampleManager];

  v17 = v73;
  v18 = v74;
  sub_100117448(v74, 0);
  if (v2)
  {

LABEL_17:

    goto LABEL_13;
  }

  v68 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  sub_10000A2A4(&a1[OBJC_IVAR___AUAStream_logID], v3 + OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID);
  v24 = OBJC_IVAR___AUAStream_audioDevice;
  v25 = swift_unknownObjectWeakLoadStrong();
  v67 = v16;
  v26 = v25;
  swift_unknownObjectWeakAssign();
  v70 = a1;

  v27 = v67;
  *(v3 + 40) = 0;
  *(v3 + 64) = v27;
  v28 = *(v17 + 104);
  if (HIDWORD(v28))
  {
    __break(1u);
  }

  else
  {
    *(v3 + 48) = v28;
    *(v3 + 16) = v17;
    v69 = *(v17 + 112);
    if (!HIDWORD(v69))
    {
      v29 = swift_unknownObjectWeakLoadStrong();
      if (v29)
      {
        v30 = v29;
        if (*(v29 + OBJC_IVAR___AUAAudioDevice_function))
        {
          v31 = *(v29 + OBJC_IVAR___AUAAudioDevice_function + 8);
          ObjectType = swift_getObjectType();
          v66 = *(v31 + 40);
          v33 = v73;

          v34 = v66(ObjectType, v31);

          if (!v34)
          {
            v35 = *(v3 + 48);
            if (v35 <= 15)
            {
              if (v35 <= 3)
              {
                if (v35 != 1)
                {
                  if (v35 == 2)
                  {
                    v35 = 1;
                    v36 = 32;
                    goto LABEL_61;
                  }

                  goto LABEL_75;
                }

                v36 = 64;
LABEL_61:
                v76 = 0;
                v77 = 0xE000000000000000;
                _StringGuts.grow(_:)(81);
                v48._countAndFlagsBits = 0xD000000000000032;
                v48._object = 0x800000010012F8B0;
                String.append(_:)(v48);
                v68 = v35;
                v75 = v35;
                v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v49);

                v50._object = 0x800000010012F8F0;
                v50._countAndFlagsBits = 0xD00000000000001BLL;
                String.append(_:)(v50);
                v66 = v36;
                v75 = v36;
                v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v51);

                v17 = v76;
                v24 = v77;
                if (qword_100173CB8 == -1)
                {
                  goto LABEL_62;
                }

                goto LABEL_79;
              }

              if (v35 == 4)
              {
                v35 = 1;
                v36 = 16;
                goto LABEL_61;
              }

              if (v35 == 8)
              {
                v35 = 1;
                v36 = 8;
                goto LABEL_61;
              }

LABEL_75:
              v45 = v70;

              v76 = 0;
              v77 = 0xE000000000000000;
              _StringGuts.grow(_:)(60);
              v46 = "ng Interval: transfersPerMS ";
              v47 = 0xD00000000000003ALL;
              goto LABEL_76;
            }

            if (v35 > 63)
            {
              if (v35 != 64 && v35 != 128)
              {
                goto LABEL_75;
              }

              goto LABEL_60;
            }

            if (v35 != 16)
            {
              if (v35 != 32)
              {
                goto LABEL_75;
              }

LABEL_60:
              v35 = 1;
              v36 = 3;
              goto LABEL_61;
            }

LABEL_52:
            v35 = 1;
            v36 = 4;
            goto LABEL_61;
          }
        }

        else
        {
          v33 = v73;
        }
      }

      else
      {

        v33 = v17;
      }

      if (*(v33 + 96) >= 2uLL)
      {
        v37 = v70;

        v76 = 0;
        v77 = 0xE000000000000000;
        _StringGuts.grow(_:)(62);
        v38._countAndFlagsBits = 0xD00000000000003CLL;
        v38._object = 0x800000010012F910;
        String.append(_:)(v38);
        v75 = *(v33 + 96);
        v39._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v39);

        v40 = v76;
        v41 = v77;
        v42 = v71;
        sub_10000A2A4(v3 + v68, v71);
        sub_100038CF0("AUAOutputExplicitFeedbackStream_init", 36, 2, v40, v41, v42);

        sub_10000C9D0(v42);
        sub_10000CA2C();
        swift_allocError();
        *v43 = 105;
        *(v43 + 8) = 0;
        *(v43 + 16) = 0xE000000000000000;
        swift_willThrow();

LABEL_71:

LABEL_72:

        return v3;
      }

      v44 = *(v3 + 48);
      if (v44 > 15)
      {
        if (v44 > 63)
        {
          if (v44 == 64 || v44 == 128)
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v44 == 16)
          {
            goto LABEL_52;
          }

          if (v44 == 32)
          {
            goto LABEL_60;
          }
        }
      }

      else if (v44 > 3)
      {
        if (v44 == 4)
        {
          v36 = 4;
          v35 = 4;
          goto LABEL_61;
        }

        if (v44 == 8)
        {
          v35 = 2;
          v36 = 4;
          goto LABEL_61;
        }
      }

      else
      {
        if (v44 == 1)
        {
          v36 = 8;
          v35 = 8;
          goto LABEL_61;
        }

        if (v44 == 2)
        {
          v35 = 8;
          v36 = 4;
          goto LABEL_61;
        }
      }

      v45 = v70;

      v76 = 0;
      v77 = 0xE000000000000000;
      _StringGuts.grow(_:)(61);
      v46 = "tFeedbackStream_init";
      v47 = 0xD00000000000003BLL;
LABEL_76:
      v60 = v46 | 0x8000000000000000;
      String.append(_:)(*&v47);
      v75 = *(v73 + 104);
      v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v61);

      v62 = v76;
      v63 = v77;
      v64 = v71;
      sub_10000A2A4(v3 + v68, v71);
      sub_100038CF0("AUAOutputExplicitFeedbackStream_init", 36, 2, v62, v63, v64);

      sub_10000C9D0(v64);
      sub_10000CA2C();
      swift_allocError();
      *v65 = 105;
      *(v65 + 8) = 0;
      *(v65 + 16) = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_79:
  swift_once();
LABEL_62:
  v52 = sub_10000A1BC(v5, qword_1001794F0);
  v53 = v71;
  sub_10000A2A4(v52, v71);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v54, qword_100179508);
  sub_100039AA0(4, v53, v17, v24);

  sub_10000C9D0(v53);
  v55 = v70;
  swift_beginAccess();
  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {

    sub_10000CA2C();
    swift_allocError();
    *v59 = 58;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0xE000000000000000;
    swift_willThrow();

    goto LABEL_71;
  }

  LODWORD(v71) = *&v56[OBJC_IVAR____TtC9AUASDCore9USBDevice_speed];

  swift_beginAccess();
  v57 = v66;
  sub_1000ABB3C(v66);
  swift_endAccess();
  type metadata accessor for AUAFeedbackTransferBlock(0);
  do
  {
    swift_allocObject();
    v58 = v70;
    sub_1000B4EC8(v58, v71, v69, v68);
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v57 = (v57 - 1);
  }

  while (v57);

  return v3;
}

char *sub_1000B6528()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *&result[OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame];

    *(v0 + 40) = v2;
    _StringGuts.grow(_:)(34);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 0x7254726550736D20;
    v4._object = 0xEF20726566736E61;
    String.append(_:)(v4);
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    sub_100038CD8("AUAOutputExplicitFeedbackStream_startFeedback", 45, 2, 0x676E697472617473, 0xEF20656D61726620, v0 + OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID);

    return sub_1000B6688();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B6688()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v35 = 0x20656D617266;
  v36 = 0xE600000000000000;
  v34 = *(v0 + 40);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v11 = v35;
  v10 = v36;
  v12 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  v13 = qword_100173CB0;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = (v1 + v12);
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    v16 = sub_10000A1BC(v15, qword_100179508);

    sub_1000445D0(4, "AUAOutputExplicitFeedbackStream_enqueueAvailableFeedbackTransferBlocks", 70, 2, v14, v11, v10, v16, v1);
  }

  else
  {
    v30 = v11;
    v32 = v6;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for AUALog(0);
    v19 = sub_10000A1BC(v18, qword_100179508);
    v20 = v14 + *(type metadata accessor for LogID(0) + 20);
    v31 = *(v3 + 16);
    v31(v8, v20, v2);

    v33 = v19;
    v21 = OSSignposter.logHandle.getter();
    v22 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v3;
      v25 = v24;
      v35 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_100035760(v30, v10, &v35);
      v26 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v21, v22, v26, "AUAOutputExplicitFeedbackStream_enqueueAvailableFeedbackTransferBlocks", "%{public}s", v23, 0xCu);
      sub_10000CE78(v25);
      v3 = v29;
    }

    v31(v32, v8, v2);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v27 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v3 + 8))(v8, v2);
    sub_1000B6AEC(v1);

    sub_1000461FC(v33, "AUAOutputExplicitFeedbackStream_enqueueAvailableFeedbackTransferBlocks", 70, 2, v27);
  }
}

void sub_1000B6AEC(uint64_t a1)
{
  v85 = type metadata accessor for LogID(0);
  __chkstk_darwin(v85);
  v86 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  swift_beginAccess();
  v84 = "FeedbackTransferBlocks";
  v83 = &v96;
  v79 = 0x800000010012FAF0;
  v78 = "changePhysicalFormat(_:)";
  v80 = xmmword_10011DE90;
  while (1)
  {
    v3 = *(a1 + 24);
    if (v3 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v4 = *(a1 + 24);
    if (v4 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_87;
      }
    }

    else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_87;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {

      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v5 = *(v4 + 32);
    }

    v6 = *(a1 + 24);
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 != 0;
      if (v7 < v8)
      {
        goto LABEL_88;
      }

      goto LABEL_11;
    }

    v25 = v6 < 0 ? *(a1 + 24) : (v6 & 0xFFFFFFFFFFFFFF8);
    v26 = _CocoaArrayWrapper.endIndex.getter();
    if (v26 < 0)
    {
      break;
    }

    v7 = v26;
    v8 = v26 != 0;
    if (_CocoaArrayWrapper.endIndex.getter() < v8)
    {
      goto LABEL_88;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < v7)
    {
      goto LABEL_90;
    }

LABEL_11:
    if ((v6 & 0xC000000000000001) != 0 && v7 > 1)
    {
      type metadata accessor for AUAFeedbackTransferBlock(0);
      swift_bridgeObjectRetain_n();
      v9 = v8;
      do
      {
        v10 = v9 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v9);
        v9 = v10;
      }

      while (v7 != v10);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v6 >> 62)
    {
      _CocoaArrayWrapper.subscript.getter();
      v8 = v20;
      v11 = v21;

      v89 = v5;
      if ((v11 & 1) == 0)
      {
LABEL_26:
        v14 = v11 >> 1;
        v15 = __OFSUB__(v11 >> 1, v8);
        v16 = (v11 >> 1) - v8;
        v22 = v15;
        swift_unknownObjectRetain();
        if (v22)
        {
          goto LABEL_98;
        }

        if (v16)
        {
          goto LABEL_31;
        }

LABEL_51:
        swift_unknownObjectRelease();
        v17 = _swiftEmptyArrayStorage;
LABEL_52:
        v18 = v86;
        v19 = v89;
        goto LABEL_53;
      }
    }

    else
    {
      v11 = (2 * v7) | 1;
      v89 = v5;
      if ((v11 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
      swift_unknownObjectRelease();
      v12 = _swiftEmptyArrayStorage;
    }

    v13 = v12[2];

    v14 = v11 >> 1;
    v15 = __OFSUB__(v11 >> 1, v8);
    v16 = (v11 >> 1) - v8;
    if (v15)
    {
      goto LABEL_99;
    }

    if (v13 != v16)
    {
      swift_unknownObjectRelease();
      if (!v16)
      {
        goto LABEL_51;
      }

LABEL_31:
      if (v16 < 1)
      {
        v17 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
        v17 = swift_allocObject();
        v23 = j__malloc_size(v17);
        v24 = v23 - 32;
        if (v23 < 32)
        {
          v24 = v23 - 25;
        }

        v17[2] = v16;
        v17[3] = (2 * (v24 >> 3)) | 1;
      }

      swift_unknownObjectRelease();
      if (v8 == v14)
      {
        goto LABEL_101;
      }

      type metadata accessor for AUAFeedbackTransferBlock(0);
      swift_arrayInitWithCopy();
      goto LABEL_52;
    }

    v17 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    v18 = v86;
    v19 = v89;
    if (v17)
    {
      goto LABEL_54;
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_53:
    swift_unknownObjectRelease();
LABEL_54:
    *(a1 + 24) = v17;

    *(v19 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex) = 0;
    v27 = OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock;
    v28 = *(v19 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock);
    if (v28 < 0)
    {
      goto LABEL_91;
    }

    if (v28)
    {
      v29 = 0;
      v30 = dword_100124650[*(v19 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedbackPacketSize)];
      v31 = *(v19 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList) + 12;
      while (1)
      {
        *(v31 - 12) = -536870911;
        *(v31 - 8) = v30;
        if (v29 == &_mh_execute_header)
        {
          break;
        }

        *(v31 - 4) = v29;
        *v31 = 0;
        v29 = (v29 + 8);
        *(v31 + 4) = 3758117135;
        *(v31 + 12) = 0;
        v31 += 28;
        if (!--v28)
        {
          goto LABEL_59;
        }
      }

      __break(1u);
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
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      swift_unknownObjectRelease();
      __break(1u);
    }

LABEL_59:
    v32 = *(a1 + 48);
    if (!v32)
    {
      goto LABEL_92;
    }

    v33 = *(a1 + 40);
    if (v33 % v32)
    {
      aBlock = 0;
      v95 = 0xE000000000000000;
      _StringGuts.grow(_:)(64);
      v34._countAndFlagsBits = 0xD00000000000002DLL;
      v34._object = (v84 | 0x8000000000000000);
      String.append(_:)(v34);
      v93 = v33;
      v35._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v35);

      v36._countAndFlagsBits = 0x7254726550534D20;
      v36._object = 0xEF20726566736E61;
      String.append(_:)(v36);
      LODWORD(v93) = v32;
      v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v37);

      v38 = aBlock;
      v39 = v95;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v40 = sub_10000A1BC(v85, qword_1001794F0);
      sub_10000A2A4(v40, v18);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v41, qword_100179508);
      sub_100039F58(4, v18, v38, v39);

      sub_10000C9D0(v18);
    }

    v42 = *(*(a1 + 16) + 120);
    v87 = v32;
    v88 = v27;
    if (v42)
    {
      v43 = *(v19 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_feedBackDataBuffer);
      v44 = *(v19 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_transactionList);
      v45 = *(v19 + v27);
      v46 = *(v42 + 16);

      if (([v46 increment] & 1) == 0)
      {

        goto LABEL_79;
      }

      v47 = *(v42 + 24);
      v48 = swift_allocObject();
      v48[2] = sub_1000BA5B8;
      v48[3] = a1;
      v48[4] = v42;
      v98 = sub_1000BA5C0;
      v99 = v48;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_1000B9C68;
      v97 = &unk_100164728;
      v49 = _Block_copy(&aBlock);

      aBlock = 0;
      LOBYTE(v47) = [v47 enqueueIORequestWithData:v43 transactionList:v44 transactionListCount:v45 firstFrameNumber:v33 options:0 error:&aBlock completionHandler:v49];
      _Block_release(v49);
      if (v47)
      {
        v50 = aBlock;

        v19 = v89;
        goto LABEL_79;
      }

      v53 = aBlock;
      v51 = _convertNSErrorToError(_:)();

      swift_willThrow();
      [*(v42 + 16) decrement];
      swift_willThrow();
    }

    else
    {
      sub_10000CA2C();
      v51 = swift_allocError();
      *v52 = 1;
      *(v52 + 8) = 0;
      *(v52 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    v93 = v51;
    swift_errorRetain();
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    sub_10001EBA8(0, &qword_100175168, NSError_ptr);
    swift_dynamicCast();
    v54 = v92;
    v55 = [v92 code];
    if (v55 < 0xFFFFFFFF80000000)
    {
      goto LABEL_96;
    }

    v56 = v55;
    if (v55 > 0x7FFFFFFF)
    {
      goto LABEL_97;
    }

    aBlock = 0x20726F727265;
    v95 = 0xE600000000000000;
    sub_100001AB4(&qword_100173C98, &unk_100120120);
    v57 = swift_allocObject();
    *(v57 + 16) = v80;
    *(v57 + 56) = &type metadata for Int32;
    *(v57 + 64) = &protocol witness table for Int32;
    *(v57 + 32) = v56;
    v58._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v58);

    sub_100038CF0("AUAOutputExplicit_enqueueAvailableFeedbackTransferBlocks_error", 62, 2, aBlock, v95, a1 + v81);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_100;
    }

    v60 = Strong;

    aBlock = 0xD000000000000028;
    v95 = v79;
    v61._countAndFlagsBits = 8236;
    v61._object = 0xE200000000000000;
    String.append(_:)(v61);
    v62._object = (v78 | 0x8000000000000000);
    v62._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    String.append(_:)(v63);
    v91 = 1415;
    v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v64);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v95, &v60[OBJC_IVAR___AUAAudioDevice_logID]);

    v65 = *&v60[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v66 = swift_allocObject();
    v66[2] = AUAError.init(_:message:);
    v66[3] = 0;
    aBlock = sub_100038564;
    v95 = v66;
    v67 = *(v65 + 16);
    v68 = __chkstk_darwin(v66);
    __chkstk_darwin(v68);

    os_unfair_lock_lock(v67 + 4);
    sub_10003854C(&v91);
    v82 = 0;
    os_unfair_lock_unlock(v67 + 4);
    LOBYTE(v65) = v91;

    v19 = v89;
    if (v65)
    {
      v69 = swift_allocObject();
      *(v69 + 16) = v60;
      v98 = sub_10001EFC8;
      v99 = v69;
      aBlock = _NSConcreteStackBlock;
      v95 = 1107296256;
      v96 = sub_1000172D4;
      v97 = &unk_1001646D8;
      v70 = _Block_copy(&aBlock);
      v71 = v60;

      v72 = type metadata accessor for AUAAudioDevice(0);
      v90.receiver = v71;
      v90.super_class = v72;
      objc_msgSendSuper2(&v90, "requestConfigurationChange:", v70);
      _Block_release(v70);
    }

LABEL_79:
    v73 = *(v19 + v88);
    if ((v73 & 0x8000000000000000) != 0)
    {
      goto LABEL_93;
    }

    if (!is_mul_ok(v87, v73))
    {
      goto LABEL_94;
    }

    v74 = v87 * v73;
    v75 = *(a1 + 40);
    v76 = __CFADD__(v75, v74);
    v77 = v75 + v74;
    if (v76)
    {
      goto LABEL_95;
    }

    *(a1 + 40) = v77;
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  __break(1u);
  os_unfair_lock_unlock(v25 + 4);
  __break(1u);
}

uint64_t sub_1000B7860()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  v10 = qword_100173CB0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = (v1 + v9);
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    v13 = sub_10000A1BC(v12, qword_100179508);

    sub_10003A410(4, "AUAOutputExplicitFeedbackStream_readFeedback", 44, 2, v11, 0, 0xE000000000000000, v13, v1);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    v16 = sub_10000A1BC(v15, qword_100179508);
    v17 = type metadata accessor for LogID(0);
    v18 = *(v3 + 16);
    v18(v8, v11 + *(v17 + 20), v2);
    v19 = OSSignposter.logHandle.getter();
    v29 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      v28 = v16;
      v21 = v20;
      v22 = swift_slowAlloc();
      v27 = v18;
      v23 = v22;
      v30 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100035760(0, 0xE000000000000000, &v30);
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v29, v24, "AUAOutputExplicitFeedbackStream_readFeedback", "%{public}s", v21, 0xCu);
      sub_10000CE78(v23);
      v18 = v27;

      v16 = v28;
    }

    v18(v6, v8, v2);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v25 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v3 + 8))(v8, v2);
    sub_1000B7C4C(v1);
    sub_1000461FC(v16, "AUAOutputExplicitFeedbackStream_readFeedback", 44, 2, v25);
  }
}

unint64_t sub_1000B7C4C(void *a1)
{
  v25 = type metadata accessor for LogID(0);
  __chkstk_darwin(v25);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  while (1)
  {
    v3 = a1[4];
    if (v3 >> 62)
    {
      break;
    }

    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_4:
    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
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

      v4 = *(v3 + 32);
    }

    v3 = a1[8];

    v5 = sub_1000B5228();
    sub_10005C530(v5);

    if (*(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_nextTransactionToReadIndex) < *(v4 + OBJC_IVAR____TtC9AUASDCore24AUAFeedbackTransferBlock_numTransactionsPerBlock))
    {
    }

    v6 = a1[4];
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v3 = a1[4];
      }

      else
      {
        v3 = v6 & 0xFFFFFFFFFFFFFF8;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      v7 = result;
      v8 = result != 0;
      if (_CocoaArrayWrapper.endIndex.getter() < v8)
      {
        goto LABEL_48;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < v7)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v7 != 0;
      if (v7 < v8)
      {
        goto LABEL_48;
      }
    }

    if ((v6 & 0xC000000000000001) != 0 && v7 > 1)
    {
      type metadata accessor for AUAFeedbackTransferBlock(0);
      swift_bridgeObjectRetain_n();
      v9 = v8;
      do
      {
        v10 = v9 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v9);
        v9 = v10;
      }

      while (v7 != v10);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v6 >> 62)
    {
      v11 = _CocoaArrayWrapper.subscript.getter();
      v3 = v13;
      v8 = v14;
      v12 = v15;

      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v3 = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v12 = (2 * v7) | 1;
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      swift_unknownObjectRelease();
      v18 = _swiftEmptyArrayStorage;
    }

    v19 = v18[2];

    if (__OFSUB__(v12 >> 1, v8))
    {
      goto LABEL_50;
    }

    if (v19 != (v12 >> 1) - v8)
    {
      swift_unknownObjectRelease_n();
LABEL_20:
      sub_1000B9E44(v11, v3, v8, v12);
      v17 = v16;
      goto LABEL_27;
    }

    v17 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (v17)
    {
      goto LABEL_28;
    }

    v17 = _swiftEmptyArrayStorage;
LABEL_27:
    swift_unknownObjectRelease();
LABEL_28:
    a1[4] = v17;

    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((a1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_4;
  }

LABEL_42:
  v3 = "no transferBlocks enqueued";
  if (qword_100173CB8 == -1)
  {
    goto LABEL_43;
  }

LABEL_51:
  swift_once();
LABEL_43:
  v21 = v3 - 32;
  v22 = sub_10000A1BC(v25, qword_1001794F0);
  v23 = v26;
  sub_10000A2A4(v22, v26);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v24, qword_100179508);
  sub_100039F58(4, v23, 0xD00000000000001ALL, (v21 | 0x8000000000000000));
  return sub_10000C9D0(v23);
}

uint64_t sub_1000B80F0()
{

  swift_unknownObjectWeakDestroy();

  sub_10000C9D0(v0 + OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID);

  return swift_deallocClassInstance();
}

uint64_t sub_1000B817C()
{
  v1 = *(v0 + OBJC_IVAR___AUAStream_interface);
  v2 = v1[9];
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    return 3;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    return 3;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_17;
    }

    v3 = *(v2 + 32);
  }

  v4 = *(v3 + 104);

  v5 = *(v4 + 128);

  if (v5 != 1)
  {
    return v5;
  }

  v2 = v1[9];
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_21;
    }

    goto LABEL_9;
  }

LABEL_17:
  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_9:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    v8 = *(v7 + 112);

    swift_unknownObjectRelease();
    if (v8)
    {

      return 1;
    }

    goto LABEL_21;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(*(v2 + 32) + 112))
    {
      return 1;
    }

LABEL_21:
    swift_beginAccess();
    v5 = 3;
    if (v1[2])
    {
      v9 = v1[3];
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 8);
      swift_unknownObjectRetain();
      v11(v14, ObjectType, v9);
      swift_unknownObjectRelease();
      sub_100093C84();
      v13 = v12;
      sub_1000212F0(v14);
      if (v13)
      {
        return 1;
      }

      else
      {
        return 3;
      }
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1000B838C()
{
  result = [v0 physicalFormat];
  if (result)
  {
    v2 = result;
    type metadata accessor for AUAStreamFormat();
    v3 = swift_dynamicCastClass();
    if (!v3)
    {
      goto LABEL_14;
    }

    v4 = OBJC_IVAR___AUAStreamFormat_altSetting;
    v5 = *(v3 + OBJC_IVAR___AUAStreamFormat_altSetting);
    if (!v5)
    {
      goto LABEL_14;
    }

    v6 = v3;
    v7 = *(*(v5 + 104) + 16);

    v8 = IOUSBGetEndpointSynchronizationType(v7);
    if (IOUSBGetEndpointDirection(v7) == 1 && !v8)
    {
      goto LABEL_11;
    }

    if (v8 == 1)
    {
      while (1)
      {
        v9 = *(v6 + v4);

        if (!v9)
        {
          break;
        }

        v2 = *(v9 + 112);

        if (!v2)
        {
          break;
        }

        v10 = v2[13];

        result = (v10 - 1);
        if (v10)
        {
          return result;
        }

        __break(1u);
LABEL_11:
        if (IOUSBGetEndpointUsageType(v7))
        {

          goto LABEL_14;
        }

        wMaxPacketSize = v7->wMaxPacketSize;

        if ((wMaxPacketSize - 9) >= 0xFFFFFFFA)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
    }

    return 0;
  }

  return result;
}

void sub_1000B851C()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = OBJC_IVAR___AUAStream_logID;
  v9 = qword_100173CB0;
  v10 = v0;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = &v0[v8];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    v13 = sub_10000A1BC(v12, qword_100179508);
    v14 = v10;
    sub_100041320(4, "AUAOutputStream_startDirectionalStream", 38, 2, v11, 0, 0xE000000000000000, v13, v14);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    v16 = sub_10000A1BC(v15, qword_100179508);
    v17 = type metadata accessor for LogID(0);
    v18 = *(v2 + 16);
    v18(v7, v11 + *(v17 + 20), v1);
    v19 = OSSignposter.logHandle.getter();
    v29 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      v28 = v10;
      v21 = v20;
      v22 = swift_slowAlloc();
      v27 = v16;
      v23 = v22;
      v30 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100035760(0, 0xE000000000000000, &v30);
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v29, v24, "AUAOutputStream_startDirectionalStream", "%{public}s", v21, 0xCu);
      sub_10000CE78(v23);
      v16 = v27;

      v10 = v28;
    }

    v18(v5, v7, v1);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v25 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v2 + 8))(v7, v1);
    sub_1000B88F8(v10);
    sub_1000461FC(v16, "AUAOutputStream_startDirectionalStream", 38, 2, v25);
  }
}

uint64_t sub_1000B88F8(char *a1)
{
  v1 = a1;
  v2 = *(*&a1[OBJC_IVAR___AUAStream_interface] + 104);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1000BA570;
  *(v4 + 24) = v3;
  v9[4] = sub_10001DC08;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000B4B04;
  v9[3] = &unk_100164660;
  v5 = _Block_copy(v9);
  v6 = v2;
  v7 = v1;

  dispatch_sync(v6, v5);

  _Block_release(v5);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B8A70(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  if (*(a1 + *a2))
  {

    a3(v4);
  }

  return sub_1000ADCB0();
}

void sub_1000B8AC8()
{
  v2 = v0;
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = [v0 physicalFormat];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  type metadata accessor for AUAStreamFormat();
  v12 = swift_dynamicCastClass();
  if (!v12)
  {

LABEL_12:
    sub_10000CA2C();
    swift_allocError();
    *v22 = 1;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v13 = *&v12[OBJC_IVAR___AUAStreamFormat_altSetting];
  if (!v13)
  {
    sub_10000CA2C();
    swift_allocError();
    v24 = 83;
LABEL_15:
    *v23 = v24;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  if (!*(*&v0[OBJC_IVAR___AUAStream_interface] + 112))
  {
    sub_10000CA2C();
    swift_allocError();
    v24 = 1;
    goto LABEL_15;
  }

  v48 = v12;
  v49 = v1;
  v50 = 0x74616E7265746C61;
  v51 = 0xEA00000000002065;
  v53 = *(v13[2] + 3);

  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v44 = v50;
  v45 = v51;
  v15 = OBJC_IVAR___AUAStream_logID;
  v16 = qword_100173CB0;

  v47 = v2;
  v46 = v11;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = &v2[v15];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for AUALog(0);
    v19 = sub_10000A1BC(v18, qword_100179508);

    v20 = v47;
    v21 = v46;
    sub_10003ECFC(4, "AUAOuputStream_prepareStream", 28, 2u, v17, v44, v45, v19, v20, v13, v48);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for AUALog(0);
    v26 = sub_10000A1BC(v25, qword_100179508);
    v27 = &v17[*(type metadata accessor for LogID(0) + 20)];
    v42 = *(v4 + 16);
    v42(v9, v27, v3);

    v43 = v26;
    v29 = v28;
    v30 = OSSignposter.logHandle.getter();
    v31 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v32 = swift_slowAlloc();
      v41 = v30;
      v52 = v31;
      v33 = v32;
      v40 = swift_slowAlloc();
      v50 = v40;
      *v33 = 136446210;
      v34 = sub_100035760(v44, v29, &v50);

      *(v33 + 4) = v34;
      v35 = OSSignpostID.rawValue.getter();
      v36 = v41;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v41, v52, v35, "AUAOuputStream_prepareStream", "%{public}s", v33, 0xCu);
      sub_10000CE78(v40);
    }

    else
    {
    }

    v42(v7, v9, v3);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v37 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v4 + 8))(v9, v3);
    v38 = v47;
    sub_1000B9084(v47, v13, v48);
    sub_1000461FC(v43, "AUAOuputStream_prepareStream", 28, 2, v37);

    v39 = v46;
  }
}

void sub_1000B9084(char *a1, uint64_t a2, uint64_t a3)
{
  sub_1000B1E98();
  if (v3)
  {
    return;
  }

  v7 = *(a2 + 104);
  sub_10005B254(a1, v7);
  v8 = *(v7 + 16);

  v9 = IOUSBGetEndpointSynchronizationType(v8);
  if (IOUSBGetEndpointDirection(v8) != 1 || v9 != 0)
  {

    if (v9 != 1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (IOUSBGetEndpointUsageType(v8))
  {

    return;
  }

  wMaxPacketSize = v8->wMaxPacketSize;

  if ((wMaxPacketSize - 9) < 0xFFFFFFFA)
  {
LABEL_12:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v13 = Strong, v14 = AUAAudioDevice.hasImplicitFeedbackStream()(), v13, !v14))
    {
      v15 = *(a3 + OBJC_IVAR___AUAStreamFormat_altSetting);
      if (v15 && *(v15 + 112))
      {
        type metadata accessor for AUAOutputExplicitFeedbackStream(0);
        v16 = swift_allocObject();
        v17 = a1;
        sub_1000B5954(v17);
        *&v17[OBJC_IVAR___AUAOutputStream_explicitFeedback] = v16;
      }

      else
      {
        v18 = OBJC_IVAR___AUAStream_logID;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v19, qword_100179508);
        sub_100039F58(4, &a1[v18], 0xD000000000000036, 0x800000010012F7D0);
      }
    }
  }
}

char *sub_1000B9374(char *result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = *a3;
  v7 = *&result[*a3];
  v8 = __CFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v4;
    v12 = v5;
    *&result[v6] = v9;
    if (v9 == 1)
    {
      v10.receiver = result;
      v10.super_class = (a4)(0, a2);
      return objc_msgSendSuper2(&v10, "startStream");
    }
  }

  return result;
}

void sub_1000B93DC()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v26 - v6;
  v8 = OBJC_IVAR___AUAStream_logID;
  v9 = qword_100173CB0;
  v10 = v0;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = &v0[v8];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    v13 = sub_10000A1BC(v12, qword_100179508);
    v14 = v10;
    sub_10004524C(4, "AUAOuputStream_stop", 19, 2, v11, 0, 0xE000000000000000, v13, v14);
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    v16 = sub_10000A1BC(v15, qword_100179508);
    v17 = type metadata accessor for LogID(0);
    v18 = *(v2 + 16);
    v18(v7, v11 + *(v17 + 20), v1);
    v19 = OSSignposter.logHandle.getter();
    v29 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      v28 = v10;
      v21 = v20;
      v22 = swift_slowAlloc();
      v27 = v16;
      v23 = v22;
      v30 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_100035760(0, 0xE000000000000000, &v30);
      v24 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v29, v24, "AUAOuputStream_stop", "%{public}s", v21, 0xCu);
      sub_10000CE78(v23);
      v16 = v27;

      v10 = v28;
    }

    v18(v5, v7, v1);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v25 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v2 + 8))(v7, v1);
    sub_1000B97B8(v10);
    sub_1000461FC(v16, "AUAOuputStream_stop", 19, 2, v25);
  }
}

char *sub_1000B97B8(char *result)
{
  v3 = *&result[OBJC_IVAR___AUAOutputStream_startCount];
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (v4)
  {
    v11 = v1;
    v12 = v2;
    v6 = result;
    *&result[OBJC_IVAR___AUAOutputStream_startCount] = v5;
    if (!v5)
    {
      v10.receiver = result;
      v10.super_class = type metadata accessor for AUAOutputStream(0);
      objc_msgSendSuper2(&v10, "stopStream");
      v7 = OBJC_IVAR___AUAOutputStream_explicitFeedback;
      v8 = *&v6[OBJC_IVAR___AUAOutputStream_explicitFeedback];
      if (v8)
      {
        v9 = *(v8 + 16);
        if (*(v9 + 120))
        {

          sub_100116498(0);

          *(v9 + 120) = 0;
        }
      }

      *&v6[v7] = 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B98DC()
{
}

uint64_t sub_1000B9984(char a1)
{
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v22 = 0xD000000000000017;
  v23 = 0x800000010012F790;
  if (a1)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (a1)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0x65727473206E6F20;
  v9._object = 0xEB00000000206D61;
  String.append(_:)(v9);
  v10 = [*(v1 + OBJC_IVAR____TtC9AUASDCore13AUATapControl_stream) streamName];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v21[0] = v12;
  v21[1] = v14;
  sub_100001AB4(&qword_100177290, &qword_100120B80);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16 = v22;
  v17 = v23;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A1BC(v3, qword_1001794F0);
  sub_10000A2A4(v18, v5);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v19, qword_100179508);
  sub_100039AA0(2, v5, v16, v17);

  sub_10000C9D0(v5);
  return 1;
}

uint64_t sub_1000B9C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_1000B9CE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B9D3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000B9D74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = _swiftEmptyArrayStorage;
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_100001AB4(&qword_100175398, &qword_100121F30);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1000B9E44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for AUAFeedbackTransferBlock(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_100001AB4(&qword_100174FA0, &unk_100120BB0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1000B9F28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000B9F44()
{
  result = qword_100177668;
  if (!qword_100177668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177668);
  }

  return result;
}

uint64_t sub_1000B9F98(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B9FB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BA00C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1000BA05C(void *result, int a2)
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

uint64_t sub_1000BA094(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1000BA258(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
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

uint64_t sub_1000BA34C(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
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

unint64_t sub_1000BA4E4()
{
  result = qword_100177B40;
  if (!qword_100177B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100177B40);
  }

  return result;
}

uint64_t sub_1000BA538()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for LogID(0);
  __chkstk_darwin(v8);
  if (!a4)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v10 = *(a5 + 24);
  swift_unknownObjectRetain();
  v11 = v10(ObjectType, a5);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *&Strong[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
    if (v14)
    {
      v15 = sub_1000AA808(0x16u, v14);

      if (v15)
      {

LABEL_9:
        swift_unknownObjectRelease();
        return 0;
      }
    }

    else
    {
    }
  }

  v16 = *(v11 + 49);

  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  v17 = sub_1000ABC00(type metadata accessor for ActiveInputTerminal, &protocol witness table for ActiveInputTerminal);
  result = sub_1000ABC00(type metadata accessor for ActiveOutputTerminal, &protocol witness table for ActiveOutputTerminal);
  v19 = (v17 + result);
  if (!__CFADD__(v17, result))
  {
    v20 = *(a3 + 16);
    v21 = (a3 + 32);
    v22 = v20 + 1;
    while (--v22)
    {
      v23 = v21[3];
      v24 = v21[4];
      sub_10001EAB8(v21, v23);
      v25 = sub_100079BFC(v23, *(v24 + 8));
      v21 += 5;
      v26 = __CFADD__(v19, v25);
      v19 = (v19 + v25);
      if (v26)
      {
        __break(1u);
        break;
      }
    }

    swift_unknownObjectRelease();
    return v19;
  }

  __break(1u);
  return result;
}

void sub_1000BA920(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, char *a8)
{
  v9 = v8;
  v59 = a2;
  v60 = type metadata accessor for LogID(0);
  v17 = __chkstk_darwin(v60);
  v62 = (&v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v61 = &v55 - v19;
  *&v9[OBJC_IVAR___AUAStream_streamingEndpoint] = 0;
  *&v9[OBJC_IVAR___AUAStream_transferManager] = 0;
  *&v9[OBJC_IVAR___AUAStream_latencyOverride] = 0;
  v9[OBJC_IVAR___AUAStream_b2pUnifedStart] = 0;
  v9[OBJC_IVAR___AUAStream_b2pStandaloneStart] = 0;
  swift_unknownObjectWeakInit();
  *&v9[OBJC_IVAR___AUAStream_controlScope] = 1735159650;
  swift_unknownObjectWeakAssign();
  *&v9[OBJC_IVAR___AUAStream_interface] = a1;
  *&v9[OBJC_IVAR___AUAStream_firstTimeStampUSBFrame] = 0;
  v9[OBJC_IVAR___AUAStream_needFirstTimeStamp] = 0;
  *&v9[OBJC_IVAR___AUAStream_lastIOTimeNS] = 0;
  *&v9[OBJC_IVAR___AUAStream_sampleTime] = 0;
  *&v9[OBJC_IVAR___AUAStream_hostTime] = 0;
  *&v9[OBJC_IVAR___AUAStream_timeStampSeed] = 0;
  v9[OBJC_IVAR___AUAStream_started] = 0;
  v20 = &v9[OBJC_IVAR___AUAStream_path];
  *v20 = a3;
  v20[1] = a4;
  v20[2] = a5;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_unknownObjectRetain();
  v56 = a1;

  LODWORD(a5) = sub_1000BA5CC(a3, a4, a5, v22, v21);
  swift_unknownObjectRelease();
  *&v9[OBJC_IVAR___AUAStream_latencyInNs] = a5;
  v57 = a6;
  v23 = a6;
  v24 = v59;
  sub_10001EAFC(v23, &v9[OBJC_IVAR___AUAStream_streamingTerminal]);
  v58 = a7;
  sub_10001EAFC(a7, &v9[OBJC_IVAR___AUAStream_otherTerminal]);
  if (v24 == 1869968496)
  {
    v25 = v61;
    if (*&a8[OBJC_IVAR___AUAAudioDevice_function] && (v26 = *&a8[OBJC_IVAR___AUAAudioDevice_function + 8], ObjectType = swift_getObjectType(), (v28 = (*(v26 + 16))(ObjectType, v26)) != 0))
    {
      v29 = v28;
      v30 = *(v28 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
      if (v30)
      {
        v31 = sub_1000AA808(0x24u, v30);
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
    v25 = v61;
  }

  v32 = OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream;
  v9[OBJC_IVAR___AUAStream_clearDeviceBuffersWhenStoppingOutputStream] = v31;
  v63 = 0;
  v64 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v63 = 0xD00000000000002BLL;
  v64 = 0x8000000100130180;
  if (v9[v32])
  {
    v33 = 1702195828;
  }

  else
  {
    v33 = 0x65736C6166;
  }

  if (v9[v32])
  {
    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  v35 = v34;
  String.append(_:)(*&v33);

  v37 = v63;
  v36 = v64;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v38 = sub_10000A1BC(v60, qword_1001794F0);
  sub_10000A2A4(v38, v25);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v39, qword_100179508);
  sub_100039AA0(4, v25, v37, v36);

  sub_10000C9D0(v25);
  if (v24 == 1768845428)
  {
    v40 = 0x7475706E49415541;
  }

  else
  {
    v40 = 0x757074754F415541;
  }

  if (v24 == 1768845428)
  {
    v41 = 0xEE006D6165727453;
  }

  else
  {
    v41 = 0xEF6D616572745374;
  }

  v42 = v62;
  sub_100039740(v40, v41, &a8[OBJC_IVAR___AUAAudioDevice_logID], v62);

  sub_10001E98C(v42, &v9[OBJC_IVAR___AUAStream_logID]);
  v43 = [a8 plugin];
  v44 = type metadata accessor for AUAStream(0);
  v66.receiver = v9;
  v66.super_class = v44;
  v45 = objc_msgSendSuper2(&v66, "initWithDirection:withPlugin:", v24, v43);

  if (v45)
  {
    v46 = *(*&v45[OBJC_IVAR___AUAStream_interface] + 112);
    v47 = v45;
    v48 = v46;
    if ([v47 direction] == 1768845428)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }

    sub_100022A00(v46, v49, &v63);

    if (v65)
    {
      sub_100001AB4(&qword_100175180, &qword_100120D58);
      v50 = swift_dynamicCast();
      v51 = v67;
      if (!v50)
      {
        v51 = 0;
      }
    }

    else
    {
      sub_10000D040(&v63, &unk_100174A20, &unk_100120170);
      v51 = 0;
    }

    *&v47[OBJC_IVAR___AUAStream_latencyOverride] = v51;

    if (*(v56 + 96))
    {

      v52 = String._bridgeToObjectiveC()();
    }

    else
    {
      v52 = 0;
    }

    [v47 setStreamName:v52];

    [v47 setStartingChannel:1];
    v53 = v58;
    v54 = v58[3];
    sub_10001EAB8(v58, v54);
    [v47 setTerminalType:sub_1000BF02C(v54)];

    sub_10000CE78(v57);
    sub_10000CE78(v53);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000BAFD8(unint64_t a1, void *a2)
{
  v5 = type metadata accessor for LogID(0);
  v6 = __chkstk_darwin(v5);
  v8 = *(a1 + 72);
  v148 = v8 >> 62;
  v147 = v2;
  v146 = a2;
  v145 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = v6;
  if (v8 >> 62)
  {
    goto LABEL_132;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v151 = a1;
  v150 = v8;
  if (!v9)
  {
    goto LABEL_50;
  }

  v10 = v8 & 0xC000000000000001;
  swift_beginAccess();
  v11 = 0;
  v149 = v8 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v10)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_126;
      }
    }

    else
    {
      if (v11 >= *(v149 + 16))
      {
        goto LABEL_128;
      }

      v12 = *(v8 + 8 * v11 + 32);

      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }
    }

    if (*(a1 + 16))
    {
      break;
    }

    v159 = 0;
    v157 = 0u;
    v158 = 0u;
LABEL_6:
    sub_10000D040(&v157, &qword_100176188, &qword_100124520);
    ++v11;
    if (v13 == v9)
    {
      goto LABEL_50;
    }
  }

  v14 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 208);
  swift_unknownObjectRetain();
  v16(&v157, v12, ObjectType, v14);
  v8 = v150;
  a1 = v151;
  swift_unknownObjectRelease();

  if (!*(&v158 + 1))
  {
    goto LABEL_6;
  }

  sub_10000D0A0(&v157, &v160);
  sub_100001AB4(&qword_100175380, &qword_100120E70);
  active = type metadata accessor for ActiveOutputTerminal();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_50:
    if (v148)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
      if (!v47)
      {
        goto LABEL_101;
      }
    }

    else
    {
      v47 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_101;
      }
    }

    v48 = v8 & 0xC000000000000001;
    swift_beginAccess();
    v49 = 0;
    v149 = v8 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v48)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_127;
        }
      }

      else
      {
        if (v49 >= *(v149 + 16))
        {
          goto LABEL_129;
        }

        v50 = *(v8 + 8 * v49 + 32);

        v51 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          goto LABEL_127;
        }
      }

      if (*(a1 + 16))
      {
        v52 = *(v151 + 24);
        v53 = swift_getObjectType();
        v54 = *(v52 + 208);
        swift_unknownObjectRetain();
        v55 = v52;
        a1 = v151;
        v54(&v157, v50, v53, v55);
        v8 = v150;
        swift_unknownObjectRelease();

        if (*(&v158 + 1))
        {
          sub_10000D0A0(&v157, &v160);
          sub_100001AB4(&qword_100175380, &qword_100120E70);
          v150 = type metadata accessor for ActiveInputTerminal();
          if (swift_dynamicCast())
          {
            v56 = *(a1 + 16);
            if (v56)
            {
              v143 = v157;
              v8 = *(a1 + 24);
              v57 = swift_getObjectType();
              v58 = *(v8 + 56);
              swift_unknownObjectRetain();
              v138 = v56;
              v136 = v57;
              v137 = v8;
              v59 = v58(v57, v8);
              v60 = *(v59 + 16);
              if (!v60)
              {
                v139 = _swiftEmptyArrayStorage;
LABEL_113:

                v107 = v139;
                v108 = v139[2];
                if (v108)
                {
                  v109 = v151;
                  if (v108 != 1)
                  {
                    *&v160 = 0;
                    *(&v160 + 1) = 0xE000000000000000;
                    _StringGuts.grow(_:)(39);
                    v110 = ActiveFunction.deviceName.getter(v136, v137);
                    v112 = v111;

                    *&v160 = v110;
                    *(&v160 + 1) = v112;
                    v113._countAndFlagsBits = 0xD000000000000025;
                    v113._object = 0x8000000100130120;
                    String.append(_:)(v113);
                    v93 = *(&v160 + 1);
                    v114 = v160;
                    if (qword_100173CB8 != -1)
                    {
                      swift_once();
                    }

                    v115 = sub_10000A1BC(v144, qword_1001794F0);
                    v87 = v145;
                    sub_10000A2A4(v115, v145);
                    if (qword_100173CC0 != -1)
                    {
                      swift_once();
                    }

                    v116 = type metadata accessor for AUALog(0);
                    v117 = sub_10000A1BC(v116, qword_100179508);
                    v118 = v114;
                    v92 = v117;
                    sub_100039F58(1, v87, v118, v93);

                    sub_10000C9D0(v87);
                    if (!v107[2])
                    {
                      goto LABEL_134;
                    }
                  }

                  v99 = 1869968496;
                  v120 = v107[4];
                  v119 = v107[5];
                  v121 = v107[6];

                  v122 = objc_allocWithZone(type metadata accessor for AUAOutputStream(0));
                  v123 = OBJC_IVAR___AUAOutputStream_sampleManager;
                  type metadata accessor for AUASampleManager(0);
                  swift_allocObject();

                  *&v122[v123] = sub_10005D79C();
                  *&v122[OBJC_IVAR___AUAOutputStream_startCount] = 0;
                  *&v122[OBJC_IVAR___AUAOutputStream_explicitFeedback] = 0;
                  *(&v161 + 1) = v150;
                  v162 = &protocol witness table for ActiveInputTerminal;
                  *&v160 = v143;
                  *(&v158 + 1) = type metadata accessor for ActiveOutputTerminal();
                  v159 = &protocol witness table for ActiveOutputTerminal;
                  *&v157 = v120;

                  v124 = v146;

                  v125 = v147;
                  sub_1000BA920(v109, 0x6F757470u, v120, v119, v121, &v160, &v157, v124);
                  v127 = v126;

                  swift_unknownObjectRelease();

                  swift_bridgeObjectRelease_n();

                  if (!v125)
                  {
                    goto LABEL_124;
                  }

                  return;
                }

LABEL_122:

                sub_10000CA2C();
                swift_allocError();
                *v128 = 102;
                *(v128 + 8) = 0;
                *(v128 + 16) = 0xE000000000000000;
                swift_willThrow();

                swift_unknownObjectRelease();
                return;
              }

              a1 = 0;
              v61 = (v59 + 32);
              v139 = _swiftEmptyArrayStorage;
              v62 = v143;
              v142 = v59;
              v141 = v60;
              v140 = (v59 + 32);
              while (2)
              {
                if (a1 >= *(v59 + 16))
                {
                  goto LABEL_131;
                }

                v63 = &v61[3 * a1];
                v64 = v63[1];
                ++a1;
                if (*(v64 + 72) != *(v62 + 72))
                {
LABEL_70:
                  if (a1 == v60)
                  {
                    goto LABEL_113;
                  }

                  continue;
                }

                break;
              }

              v65 = *v63;
              v66 = v63[2];
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              v148 = v65;
              v149 = v66;
              if (Strong)
              {
                v68 = *(v65 + 24);
                if (*(v65 + 80))
                {
                  v8 = 0;
                }

                else
                {
                  v8 = *(v65 + 72);
                }

                v69 = swift_getObjectType();

                sub_100052184(v8, v69, v68, &v157);
                swift_unknownObjectRelease();
              }

              else
              {
                v159 = 0;
                v157 = 0u;
                v158 = 0u;
              }

              v154 = v158;
              v153 = v157;
              v155 = v159;
              if (*(&v158 + 1))
              {
                sub_100001AB4(&qword_100174F60, &qword_100121090);
                sub_100001AB4(&qword_100174F68, &unk_100120B90);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  v162 = 0;
                  v160 = 0u;
                  v161 = 0u;
                }
              }

              else
              {
                sub_10000D040(&v153, &qword_100174FB0, &unk_100120FC0);
                v160 = 0u;
                v161 = 0u;
                v162 = 0;
              }

              sub_10000D0B8(&v160, &v157, &qword_100174F70, &qword_100120FD0);
              v70 = *(&v158 + 1);
              sub_10000D040(&v157, &qword_100174F70, &qword_100120FD0);
              if (!v70 && !*(v149 + 16))
              {
LABEL_85:
                sub_10000D040(&v160, &qword_100174F70, &qword_100120FD0);
                v71 = v139;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v163 = v71;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_100046804(0, v71[2] + 1, 1);
                  v71 = v163;
                }

                v62 = v143;
                v59 = v142;
                v60 = v141;
                v61 = v140;
                v73 = v148;
                v75 = v71[2];
                v74 = v71[3];
                v76 = v149;
                if (v75 >= v74 >> 1)
                {
                  v8 = v148;
                  v84 = v149;
                  sub_100046804((v74 > 1), v75 + 1, 1);
                  v76 = v84;
                  v73 = v8;
                  v61 = v140;
                  v60 = v141;
                  v59 = v142;
                  v62 = v143;
                  v71 = v163;
                }

                v71[2] = v75 + 1;
                v139 = v71;
                v77 = &v71[3 * v75];
                v77[4] = v73;
                v77[5] = v64;
                v77[6] = v76;
                goto LABEL_70;
              }

              while (2)
              {
                sub_10000D0B8(&v160, &v157, &qword_100174F70, &qword_100120FD0);
                if (!*(&v158 + 1))
                {
                  sub_10000D040(&v157, &qword_100174F70, &qword_100120FD0);
                  sub_10000D040(&v160, &qword_100174F70, &qword_100120FD0);

                  v62 = v143;
                  v59 = v142;
                  v60 = v141;
                  v61 = v140;
                  goto LABEL_70;
                }

                sub_10000D040(&v157, &qword_100174F70, &qword_100120FD0);
                sub_10000D0B8(&v160, &v157, &qword_100174F70, &qword_100120FD0);
                if (*(&v158 + 1))
                {
                  sub_100001AB4(&qword_100174F68, &unk_100120B90);
                  if (swift_dynamicCast())
                  {
                    v78 = *(v153 + 72);

                    if (v78 == *(v64 + 72))
                    {
                      goto LABEL_85;
                    }
                  }

                  v79 = *(&v161 + 1);
                  if (!*(&v161 + 1))
                  {
LABEL_90:
                    v159 = 0;
                    v157 = 0u;
                    v158 = 0u;
LABEL_91:
                    sub_1000BDB54(&v157, &v160);
                    continue;
                  }
                }

                else
                {
                  sub_10000D040(&v157, &qword_100174F70, &qword_100120FD0);
                  v79 = *(&v161 + 1);
                  if (!*(&v161 + 1))
                  {
                    goto LABEL_90;
                  }
                }

                break;
              }

              v8 = v162;
              v80 = sub_10001EAB8(&v160, v79);
              v81 = *(v79 - 8);
              __chkstk_darwin(v80);
              v83 = &v136 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v81 + 16))(v83);
              (*(v8 + 32))(&v157, v79, v8);
              (*(v81 + 8))(v83, v79);
              goto LABEL_91;
            }
          }

LABEL_101:
          sub_10000CA2C();
          swift_allocError();
          *v85 = 89;
          *(v85 + 8) = 0;
          *(v85 + 16) = 0xE000000000000000;
          swift_willThrow();
          return;
        }
      }

      else
      {

        v159 = 0;
        v157 = 0u;
        v158 = 0u;
      }

      sub_10000D040(&v157, &qword_100176188, &qword_100124520);
      ++v49;
      if (v51 == v47)
      {
        goto LABEL_101;
      }
    }
  }

  v18 = *(a1 + 16);
  if (!v18)
  {

    goto LABEL_50;
  }

  v138 = active;
  v148 = v157;
  v8 = *(a1 + 24);
  v19 = swift_getObjectType();
  v20 = *(v8 + 56);
  swift_unknownObjectRetain();
  v139 = v18;
  v136 = v19;
  v137 = v8;
  v21 = v20(v19, v8);
  v22 = *(v21 + 16);
  if (v22)
  {
    a1 = 0;
    v23 = v21 + 32;
    v140 = _swiftEmptyArrayStorage;
    v24 = v148;
    v143 = v21;
    v142 = v22;
    v141 = v21 + 32;
    while (1)
    {
      if (a1 >= *(v21 + 16))
      {
        goto LABEL_130;
      }

      v25 = (v23 + 24 * a1);
      v8 = *v25;
      ++a1;
      if (*(*v25 + 88) == *(v24 + 88))
      {
        break;
      }

LABEL_20:
      if (a1 == v22)
      {
        goto LABEL_104;
      }
    }

    v26 = v25[1];
    v27 = v25[2];
    swift_beginAccess();
    v28 = swift_unknownObjectWeakLoadStrong();
    v149 = v27;
    v150 = v26;
    if (v28)
    {
      v29 = *(v8 + 24);
      if (*(v8 + 80))
      {
        v30 = 0;
      }

      else
      {
        v30 = *(v8 + 72);
      }

      v31 = swift_getObjectType();

      sub_100052184(v30, v31, v29, &v157);
      swift_unknownObjectRelease();
    }

    else
    {
      v159 = 0;
      v157 = 0u;
      v158 = 0u;
    }

    v154 = v158;
    v153 = v157;
    v155 = v159;
    if (*(&v158 + 1))
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      sub_100001AB4(&qword_100174F68, &unk_100120B90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v162 = 0;
        v160 = 0u;
        v161 = 0u;
      }
    }

    else
    {
      sub_10000D040(&v153, &qword_100174FB0, &unk_100120FC0);
      v160 = 0u;
      v161 = 0u;
      v162 = 0;
    }

    if (!*(v149 + 16))
    {
LABEL_34:
      sub_10000D040(&v160, &qword_100174F70, &qword_100120FD0);
      v32 = v140;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v34 = v32;
      v156 = v32;
      if ((v33 & 1) == 0)
      {
        sub_100046804(0, v32[2] + 1, 1);
        v34 = v156;
      }

      v24 = v148;
      v21 = v143;
      v22 = v142;
      v23 = v141;
      v36 = v34[2];
      v35 = v34[3];
      v37 = v150;
      if (v36 >= v35 >> 1)
      {
        v46 = v150;
        sub_100046804((v35 > 1), v36 + 1, 1);
        v37 = v46;
        v23 = v141;
        v22 = v142;
        v21 = v143;
        v24 = v148;
        v34 = v156;
      }

      v34[2] = v36 + 1;
      v140 = v34;
      v38 = &v34[3 * v36];
      v38[4] = v8;
      v38[5] = v37;
      v38[6] = v149;
      goto LABEL_20;
    }

    while (2)
    {
      sub_10000D0B8(&v160, &v157, &qword_100174F70, &qword_100120FD0);
      if (!*(&v158 + 1))
      {
        sub_10000D040(&v157, &qword_100174F70, &qword_100120FD0);
        sub_10000D040(&v160, &qword_100174F70, &qword_100120FD0);

        v24 = v148;
        v21 = v143;
        v22 = v142;
        v23 = v141;
        goto LABEL_20;
      }

      sub_10000D040(&v157, &qword_100174F70, &qword_100120FD0);
      sub_10000D0B8(&v160, &v157, &qword_100174F70, &qword_100120FD0);
      if (*(&v158 + 1))
      {
        sub_100001AB4(&qword_100174F68, &unk_100120B90);
        type metadata accessor for ActiveInputTerminal();
        if (swift_dynamicCast())
        {
          v45 = *(v153 + 72);

          if (v45 == *(v150 + 72))
          {
            goto LABEL_34;
          }
        }

        v39 = *(&v161 + 1);
        if (*(&v161 + 1))
        {
LABEL_40:
          v40 = v162;
          v41 = sub_10001EAB8(&v160, v39);
          v42 = *(v39 - 8);
          __chkstk_darwin(v41);
          v44 = &v136 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v42 + 16))(v44);
          (v40[5])(&v157, v39, v40);
          (*(v42 + 8))(v44, v39);
LABEL_41:
          sub_1000BDB54(&v157, &v160);
          continue;
        }
      }

      else
      {
        sub_10000D040(&v157, &qword_100174F70, &qword_100120FD0);
        v39 = *(&v161 + 1);
        if (*(&v161 + 1))
        {
          goto LABEL_40;
        }
      }

      break;
    }

    v159 = 0;
    v157 = 0u;
    v158 = 0u;
    goto LABEL_41;
  }

  v140 = _swiftEmptyArrayStorage;
LABEL_104:

  v86 = v140[2];
  if (!v86)
  {
    goto LABEL_122;
  }

  v87 = v151;
  if (v86 != 1)
  {
    *&v160 = 0;
    *(&v160 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(38);
    v88 = ActiveFunction.deviceName.getter(v136, v137);
    v90 = v89;

    *&v160 = v88;
    *(&v160 + 1) = v90;
    v91._object = 0x8000000100130150;
    v91._countAndFlagsBits = 0xD000000000000024;
    String.append(_:)(v91);
    v93 = *(&v160 + 1);
    v92 = v160;
    if (qword_100173CB8 != -1)
    {
      goto LABEL_135;
    }

    while (1)
    {
      v94 = sub_10000A1BC(v144, qword_1001794F0);
      v95 = v145;
      sub_10000A2A4(v94, v145);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v96 = type metadata accessor for AUALog(0);
      v97 = sub_10000A1BC(v96, qword_100179508);
      v98 = v92;
      v92 = v97;
      sub_100039F58(1, v95, v98, v93);

      sub_10000C9D0(v95);
      if (v140[2])
      {
        break;
      }

      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      swift_once();
    }
  }

  v99 = 1768845428;
  v100 = v140[4];
  v101 = v140[5];
  v102 = v140[6];

  v103 = objc_allocWithZone(type metadata accessor for AUAInputStream(0));
  *&v103[OBJC_IVAR___AUAInputStream_startCount] = 0;
  *&v103[OBJC_IVAR___AUAInputStream_lockDelay] = 0;
  *(&v161 + 1) = v138;
  v162 = &protocol witness table for ActiveOutputTerminal;
  *&v160 = v148;
  *(&v158 + 1) = type metadata accessor for ActiveInputTerminal();
  v159 = &protocol witness table for ActiveInputTerminal;
  *&v157 = v101;

  v104 = v146;
  v105 = v147;
  sub_1000BA920(v87, 0x696E7074u, v100, v101, v102, &v160, &v157, v104);
  if (v105)
  {

    swift_unknownObjectRelease();

    return;
  }

  v127 = v106;

  swift_unknownObjectRelease();

LABEL_124:
  v129 = OBJC_IVAR___AUAStream_controlScope;
  swift_beginAccess();
  *&v127[v129] = v99;
  v130 = type metadata accessor for AUAStreamLockDelayProperty();
  v131 = objc_allocWithZone(v130);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v132 = objc_allocWithZone(ASDPropertyAddress);
  v133 = v127;
  v134 = [v132 initWithSelector:1968393284 scope:1735159650 element:0];
  v152.receiver = v131;
  v152.super_class = v130;
  v135 = objc_msgSendSuper2(&v152, "initWithAddress:propertyDataType:qualifierDataType:", v134, 1886155636, 0);

  if (v135)
  {

    [v133 addCustomProperty:v135];
  }

  else
  {
    __break(1u);
  }
}

void sub_1000BC6CC(void **a1)
{
  v2 = v1;
  v49 = type metadata accessor for LogID(0);
  __chkstk_darwin(v49);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == -536870165)
  {
    return;
  }

  v7 = v2[4];
  v6 = v2[5];
  if (v7 < v6)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v6 != v7)
  {
    v8 = 0;
    v16 = v2[9];
    v48 = 0x800000010012FDD0;
    v17 = (v16 + 28 * v6);
    while (1)
    {
      if (v6 >= v7)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v21 = *v17;
      v22 = v17[3];
      if (*v17 != -536870169)
      {
        if (v21 == -536870168)
        {
          aBlock = 0;
          v52 = 0xE000000000000000;
          _StringGuts.grow(_:)(37);

          aBlock = 0xD000000000000023;
          v52 = v48;
          LODWORD(v57) = v22;
          v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v25);

          v26 = aBlock;
          v27 = v52;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v28 = sub_10000A1BC(v49, qword_1001794F0);
          sub_10000A2A4(v28, v5);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v18 = type metadata accessor for AUALog(0);
          v19 = sub_10000A1BC(v18, qword_100179508);
          v20 = v26;
          a1 = v19;
          sub_100039AA0(4, v5, v20, v27);

          sub_10000C9D0(v5);
          goto LABEL_12;
        }

        if (v21)
        {
          aBlock = 0;
          v52 = 0xE000000000000000;
          _StringGuts.grow(_:)(32);

          aBlock = 0xD00000000000001ELL;
          v52 = 0x800000010012FD50;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_10011DE90;
          *(v29 + 56) = &type metadata for Int32;
          *(v29 + 64) = &protocol witness table for Int32;
          *(v29 + 32) = v21;
          v30._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v30);

          v31 = aBlock;
          v32 = v52;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v33 = sub_10000A1BC(v49, qword_1001794F0);
          sub_10000A2A4(v33, v5);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v34, qword_100179508);
          sub_100039AA0(4, v5, v31, v32);

          sub_10000C9D0(v5);
          return;
        }
      }

      if (!v22)
      {
        v23 = v2[2];
        if (v23[OBJC_IVAR___AUAAudioDevice_isAppleVID] == 1)
        {
          aBlock = 0xD00000000000001DLL;
          v52 = 0x800000010012FDB0;
          v35._countAndFlagsBits = 8236;
          v35._object = 0xE200000000000000;
          String.append(_:)(v35);
          v36._object = 0x800000010012F240;
          v36._countAndFlagsBits = 0xD000000000000016;
          String.append(_:)(v36);
          v37._countAndFlagsBits = 2108704;
          v37._object = 0xE300000000000000;
          String.append(_:)(v37);
          v57 = 956;
          v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v38);

          sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v52, &v23[OBJC_IVAR___AUAAudioDevice_logID]);

          v39 = *&v23[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
          v40 = swift_allocObject();
          v40[2] = AUAError.init(_:message:);
          v40[3] = 0;
          aBlock = sub_100038564;
          v52 = v40;
          v41 = v39[2];
          v42 = __chkstk_darwin(v40);
          *(&v48 - 2) = v39;
          *(&v48 - 1) = &aBlock;
          __chkstk_darwin(v42);
          *(&v48 - 2) = sub_10001EF50;
          *(&v48 - 1) = v43;

          os_unfair_lock_lock(v41 + 4);
          sub_10003854C(&v57);
          os_unfair_lock_unlock(v41 + 4);
          LODWORD(v39) = v57;

          if (v39 == 1)
          {
            v44 = swift_allocObject();
            *(v44 + 16) = v23;
            v55 = sub_10001EFC8;
            v56 = v44;
            aBlock = _NSConcreteStackBlock;
            v52 = 1107296256;
            v53 = sub_1000172D4;
            v54 = &unk_100164868;
            v45 = _Block_copy(&aBlock);
            v46 = v23;

            v47 = type metadata accessor for AUAAudioDevice(0);
            v50.receiver = v46;
            v50.super_class = v47;
            objc_msgSendSuper2(&v50, "requestConfigurationChange:", v45);
            _Block_release(v45);
          }

          return;
        }

        if (__CFADD__(v8++, 1))
        {
          goto LABEL_37;
        }
      }

LABEL_12:
      ++v6;
      v17 += 7;
      if (v7 == v6)
      {
        goto LABEL_5;
      }
    }
  }

  v8 = 0;
LABEL_5:
  v9 = v2[6];
  if (v8 >= v9)
  {
    aBlock = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(69);
    v10._countAndFlagsBits = 0xD000000000000034;
    v10._object = 0x800000010012FD70;
    String.append(_:)(v10);
    v57 = v8;
    v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x6C6C612078616D20;
    v12._object = 0xED0000206465776FLL;
    String.append(_:)(v12);
    v57 = v9;
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    a1 = aBlock;
    v6 = v52;
    if (qword_100173CB8 == -1)
    {
LABEL_7:
      v14 = sub_10000A1BC(v49, qword_1001794F0);
      sub_10000A2A4(v14, v5);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v15, qword_100179508);
      sub_100039AA0(4, v5, a1, v6);

      sub_10000C9D0(v5);
      AUAAudioDevice.increaseLockDelay()();
      return;
    }

LABEL_39:
    swift_once();
    goto LABEL_7;
  }
}

uint64_t sub_1000BCEC4(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for OSSignpostID();
  v111 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v107 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v97 - v7;
  v109 = type metadata accessor for LogID(0);
  v9 = __chkstk_darwin(v109);
  v106 = v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v97 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = 0x20737574617473;
  v114 = 0xE700000000000000;
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10011DE90;
  *(v17 + 56) = &type metadata for Int32;
  *(v17 + 64) = &protocol witness table for Int32;
  LODWORD(v110) = a1;
  *(v17 + 32) = a1;
  v18._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v18);

  v19 = v114;
  v108 = v113;
  v20 = OBJC_IVAR____TtC9AUASDCore31AUAOutputExplicitFeedbackStream_logID;
  v21 = qword_100173CB0;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = (v2 + v20);
  if (byte_1001794E8 != 1)
  {
    v13 = v19;
    if (qword_100173CC0 == -1)
    {
LABEL_11:
      v52 = type metadata accessor for AUALog(0);
      v53 = sub_10000A1BC(v52, qword_100179508);
      v54 = *(v111 + 2);
      v54(v8, &v22[*(v109 + 20)], v4);

      v109 = v53;
      v55 = OSSignposter.logHandle.getter();
      v56 = static os_signpost_type_t.begin.getter();

      if (OS_os_log.signpostsEnabled.getter())
      {
        v57 = swift_slowAlloc();
        v105 = v2;
        v58 = v57;
        v59 = swift_slowAlloc();
        v113 = v59;
        *v58 = 136446210;
        v60 = sub_100035760(v108, v13, &v113);

        *(v58 + 4) = v60;
        v61 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v55, v56, v61, "AUAOutputExplicitFeedbackStream_isocFeedbackCompletion", "%{public}s", v58, 0xCu);
        sub_10000CE78(v59);
      }

      else
      {
      }

      v62 = v110;
      v54(v107, v8, v4);
      type metadata accessor for OSSignpostIntervalState();
      swift_allocObject();
      v63 = OSSignpostIntervalState.init(id:isOpen:)();
      (*(v111 + 1))(v8, v4);
      if (v62 != -536870165)
      {
        sub_1000B6688();
      }

      sub_1000461FC(v109, "AUAOutputExplicitFeedbackStream_isocFeedbackCompletion", 54, 2, v63);
      goto LABEL_31;
    }

LABEL_33:
    swift_once();
    goto LABEL_11;
  }

  v103 = v14;
  v104 = v2 + v20;
  v111 = v16;
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for AUALog(0);
  v24 = sub_10000A1BC(v23, qword_100179508);

  v102 = mach_absolute_time();
  v25 = v97;
  v8 = *v24;
  v26 = *(*v24 + 2);
  __chkstk_darwin(v102);
  v97[-2] = sub_10001E9F0;
  v97[-1] = v8;

  os_unfair_lock_lock(v26 + 4);
  v4 = 0;
  sub_10001EA0C(&v113);
  os_unfair_lock_unlock(v26 + 4);
  v101 = v113;
  v107 = v114;
  v100 = v115;

  v22 = v24[1];
  if (!*(v22 + 2))
  {
    __break(1u);
    goto LABEL_33;
  }

  v27 = sub_10001D1DC(4);
  if (v28)
  {
    v97[1] = 0;
    v29 = *(v103 + 16);
    v30 = *(v22 + 7) + *(v103 + 72) * v27;
    v99 = v13;
    v29(v111, v30, v13);
    v113 = StaticString.description.getter();
    v114 = v31;
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33._countAndFlagsBits = v108;
    v108 = v19;
    v33._object = v19;
    String.append(_:)(v33);
    v35 = v113;
    v34 = v114;
    sub_10000A2A4(v104, v12);

    v36 = v107;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v39 = os_log_type_enabled(v37, v38);
    v105 = v2;
    v98 = v8;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v97[0] = v35;
      v42 = v41;
      v112[0] = v41;
      *v40 = 136446210;
      v113 = 2113069;
      v114 = 0xE300000000000000;
      v43._countAndFlagsBits = v101;
      v43._object = v36;
      String.append(_:)(v43);
      v44 = &v12[*(v109 + 24)];
      v45 = *v44;
      v46 = v44[1];

      v47._countAndFlagsBits = v45;
      v47._object = v46;
      String.append(_:)(v47);

      v48._countAndFlagsBits = v97[0];
      v48._object = v34;
      String.append(_:)(v48);

      v49 = v113;
      v50 = v114;
      sub_10000C9D0(v12);
      v51 = sub_100035760(v49, v50, v112);

      *(v40 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s", v40, 0xCu);
      sub_10000CE78(v42);
    }

    else
    {

      sub_10000C9D0(v12);
    }

    v12 = v106;
    v64 = v102;
    if (v110 != -536870165)
    {
      sub_1000B6688();
    }

    result = mach_absolute_time();
    v66 = result >= v64;
    v25 = result - v64;
    if (v66)
    {
      if (qword_100173D00 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_36:
  result = swift_once();
LABEL_23:
  if (qword_100179650 == HIDWORD(qword_100179650))
  {
LABEL_27:
    v113 = StaticString.description.getter();
    v114 = v67;
    v68._countAndFlagsBits = 23328;
    v68._object = 0xE200000000000000;
    String.append(_:)(v68);
    v112[0] = v25 / 0x3E8;
    v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v69);

    v70._countAndFlagsBits = 1567847712;
    v70._object = 0xE400000000000000;
    String.append(_:)(v70);
    v72 = v113;
    v71 = v114;
    sub_10000A2A4(v104, v12);
    v73 = v107;

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v110 = v72;
      v78 = v77;
      v112[0] = v77;
      *v76 = 136446210;
      v113 = 2108732;
      v114 = 0xE300000000000000;
      v79._countAndFlagsBits = v101;
      v79._object = v73;
      String.append(_:)(v79);
      v80 = &v12[*(v109 + 24)];
      v81 = *v80;
      v82 = v80[1];

      v83._countAndFlagsBits = v81;
      v83._object = v82;
      String.append(_:)(v83);

      v84._countAndFlagsBits = v110;
      v84._object = v71;
      String.append(_:)(v84);

      v85 = v113;
      v86 = v114;
      sub_10000C9D0(v12);
      v87 = sub_100035760(v85, v86, v112);

      *(v76 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v74, v75, "%{public}s", v76, 0xCu);
      sub_10000CE78(v78);
    }

    else
    {

      v88 = sub_10000C9D0(v12);
    }

    v89 = v99;
    v90 = v103;
    v91 = *(v98 + 2);
    v92 = __chkstk_darwin(v88);
    v97[-2] = v93;
    LODWORD(v97[-1]) = v94;
    __chkstk_darwin(v92);
    v97[-2] = sub_10001EA28;
    v97[-1] = v95;

    os_unfair_lock_lock(v91 + 4);
    sub_10001EA48(v96);
    os_unfair_lock_unlock(v91 + 4);

    (*(v90 + 8))(v111, v89);

LABEL_31:
  }

  if (is_mul_ok(v25, qword_100179650))
  {
    if (HIDWORD(qword_100179650))
    {
      v25 = v25 * qword_100179650 / HIDWORD(qword_100179650);
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BDA8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BDB0C()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BDB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100174F70, &qword_100120FD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BDBC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000BDC0C()
{
  result = qword_100176DE0;
  if (!qword_100176DE0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176DE0);
  }

  return result;
}

unint64_t sub_1000BDC64()
{
  result = qword_100176DE8;
  if (!qword_100176DE8)
  {
    sub_10001E8F0(&unk_1001772A0, &qword_1001224E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100176DE8);
  }

  return result;
}

void sub_1000BDD74(int a1)
{
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    if ((a1 & 0xFFFEFFFF) != 0 || *(v1 + 32) == a1)
    {

      swift_unknownObjectRelease();
    }

    else
    {
      v22 = v1;
      v6 = *(v1 + 24);
      v25 = a1;
      v7 = [objc_allocWithZone(NSMutableData) initWithBytes:&v25 length:4];
      v23 = 0;
      v24 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);
      ObjectType = swift_getObjectType();
      active = ActiveFunction.deviceName.getter(ObjectType, v6);
      v11 = v10;

      v23 = active;
      v24 = v11;
      v12._countAndFlagsBits = 0xD000000000000023;
      v12._object = 0x80000001001302E0;
      String.append(_:)(v12);
      LODWORD(active) = v25;
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10011DE90;
      *(v13 + 56) = &type metadata for UInt32;
      *(v13 + 64) = &protocol witness table for UInt32;
      *(v13 + 32) = active;
      v14._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v14);

      v15 = v23;
      v16 = v24;
      if (qword_100173CB8 != -1)
      {
        swift_once();
      }

      v17 = sub_10000A1BC(v3, qword_1001794F0);
      sub_10000A2A4(v17, v5);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v18, qword_100179508);
      sub_100039AA0(2, v5, v15, v16);

      sub_10000C9D0(v5);
      v19 = v22;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v20 = *(v19 + 24);
        v21 = swift_getObjectType();
        sub_100052AFC(0x4344, v7, v21, v20);
        v19 = v22;
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();

      *(v19 + 32) = v25;
    }
  }
}

uint64_t ClientDescriptionInterface.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BE1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ClientDescriptionInterface();
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a4;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t Configuration.highestExceptionLevel.getter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  LOBYTE(v3) = 0;
  v4 = a2 + 32;
  do
  {
    v5 = *(v4 + 144);
    v13[8] = *(v4 + 128);
    v13[9] = v5;
    v14 = *(v4 + 160);
    v6 = *(v4 + 80);
    v13[4] = *(v4 + 64);
    v13[5] = v6;
    v7 = *(v4 + 112);
    v13[6] = *(v4 + 96);
    v13[7] = v7;
    v8 = *(v4 + 16);
    v13[0] = *v4;
    v13[1] = v8;
    v9 = *(v4 + 48);
    v13[2] = *(v4 + 32);
    v13[3] = v9;
    sub_100021248(v13, v12);
    v10 = Function.highestExceptionLevel.getter();
    sub_1000212F0(v13);
    if (v3 <= v10)
    {
      v3 = v10;
    }

    else
    {
      v3 = v3;
    }

    v4 += 168;
    --v2;
  }

  while (v2);
  return v3;
}

BOOL sub_1000BE354(__int16 a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x100) != 0)
  {
    return 1;
  }

  v3 = *(a3 + 16);
  if (v3)
  {
    LOBYTE(v4) = 0;
    v5 = a3 + 32;
    do
    {
      v4 = v4 || *(*v5 + 2) == a1;
      v5 += 168;
      --v3;
    }

    while (v3);
    return v4;
  }

  return 0;
}

uint64_t sub_1000BE3A8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v31 = result;
  if (*(result + OBJC_IVAR____TtC9AUASDCore9USBDevice_curConfigNum) == *(a3 + 5))
  {
    v5 = v4;
    v6 = 0;
    v7 = *(a4 + 16);
    v30 = _swiftEmptyArrayStorage;
LABEL_3:
    v8 = 168 * v6 + 32;
    while (1)
    {
      if (v7 == v6)
      {
        v28 = a4;
        type metadata accessor for ActiveConfiguration();
        v16 = swift_allocObject();
        v16[2] = a3;
        v16[3] = v28;
        v16[4] = v30;

        return v16;
      }

      if (v6 >= v7)
      {
        break;
      }

      v9 = *(a4 + v8 + 144);
      v33[8] = *(a4 + v8 + 128);
      v33[9] = v9;
      v34 = *(a4 + v8 + 160);
      v10 = *(a4 + v8 + 80);
      v33[4] = *(a4 + v8 + 64);
      v33[5] = v10;
      v11 = *(a4 + v8 + 112);
      v33[6] = *(a4 + v8 + 96);
      v33[7] = v11;
      v12 = *(a4 + v8 + 16);
      v33[0] = *(a4 + v8);
      v33[1] = v12;
      v13 = *(a4 + v8 + 48);
      v33[2] = *(a4 + v8 + 32);
      v33[3] = v13;
      v14 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_20;
      }

      v15 = a4;
      sub_100021248(v33, v32);
      v16 = v5;
      v17 = sub_100092FE0(v31, v35 & 1);
      if (v5)
      {
        sub_1000212F0(v33);

        return v16;
      }

      v19 = v17;
      v20 = v18;
      result = sub_1000212F0(v33);
      ++v6;
      v8 += 168;
      a4 = v15;
      if (v19)
      {
        v21 = v30;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_100025340(0, v30[2] + 1, 1, v30);
          v21 = result;
        }

        v23 = v21[2];
        v22 = v21[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          result = sub_100025340((v22 > 1), v23 + 1, 1, v21);
          a4 = v15;
          v24 = v23 + 1;
          v21 = result;
        }

        else
        {
          a4 = v15;
        }

        v21[2] = v24;
        v30 = v21;
        v25 = &v21[2 * v23];
        v25[4] = v19;
        v25[5] = v20;
        v6 = v14;
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    sub_10000CA2C();
    v26 = swift_allocError();
    *v27 = 59;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    v16 = v26;
    swift_willThrow();
    return v16;
  }

  return result;
}

char *sub_1000BE5FC(const IOUSBConfigurationDescriptor *a1)
{
  v2 = v1;
  v4 = type metadata accessor for LogID(0);
  result = __chkstk_darwin(v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30 = result;
    Descriptor = IOUSBGetNextDescriptor(a1, 0);
    bLength = a1->bLength;
    if (Descriptor)
    {
      v9 = Descriptor;
      v10 = 65280;
      v11 = _swiftEmptyArrayStorage;
      v33 = a1;
      do
      {
        v12 = v9->bLength;
        if (!v9->bLength)
        {
          break;
        }

        v13 = __OFADD__(bLength, v12);
        bLength += v12;
        if (v13)
        {
          __break(1u);
          goto LABEL_53;
        }

        v14 = sub_1000A95A4(v9, v10);
        if (v2)
        {

          return v11;
        }

        v16 = v14;
        v17 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v11 = sub_100025818(0, *(v32 + 2) + 1, 1, v32);
        }

        v20 = *(v11 + 2);
        v19 = *(v11 + 3);
        if (v20 >= v19 >> 1)
        {
          v11 = sub_100025818((v19 > 1), v20 + 1, 1, v11);
        }

        *(v11 + 2) = v20 + 1;
        v21 = &v11[16 * v20];
        *(v21 + 4) = v16;
        *(v21 + 20) = v17;
        if (HIBYTE(v17) <= 7u)
        {
          v2 = 0;
          if (HIBYTE(v17) - 2 >= 4)
          {
            if (HIBYTE(v17) == 6)
            {
              a1 = v33;
              if (BYTE1(v10) == 255 || v10)
              {
                goto LABEL_50;
              }

              v10 = 256;
            }

            else
            {
              a1 = v33;
              if (HIBYTE(v17) == 7)
              {
                if (BYTE1(v10) == 255 || BYTE1(v10) && BYTE1(v10) != 1 || v10 != 32)
                {
LABEL_50:

                  sub_10000CA2C();
                  swift_allocError();
                  *v29 = 61;
                  *(v29 + 8) = 0;
                  *(v29 + 16) = 0xE000000000000000;
                  swift_willThrow();
                  return v32;
                }

                v10 = 288;
              }
            }
          }

          else
          {
            v10 = v16[7];
            a1 = v33;
          }
        }

        else
        {
          v2 = 0;
          if (HIBYTE(v17) <= 0xBu)
          {
            a1 = v33;
            if (HIBYTE(v17) == 8)
            {
              if (BYTE1(v10) == 255 || BYTE1(v10) && BYTE1(v10) != 1 || v10 != 48)
              {
                goto LABEL_50;
              }

              v10 = 304;
            }

            else if (HIBYTE(v17) == 10)
            {
              v10 = v16[7] | 0x200u;
            }
          }

          else
          {
            a1 = v33;
            if (HIBYTE(v17) == 12)
            {
              if (v10 != 256)
              {
                goto LABEL_50;
              }
            }

            else if (HIBYTE(v17) == 13)
            {
              if (v10 != 288)
              {
                goto LABEL_50;
              }
            }

            else if (HIBYTE(v17) == 14 && v10 != 304)
            {
              goto LABEL_50;
            }
          }
        }

        v9 = IOUSBGetNextDescriptor(a1, v9);
      }

      while (v9);
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
    }

    if (bLength != a1->wTotalLength)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v22._object = 0x8000000100130340;
      v22._countAndFlagsBits = 0xD000000000000023;
      String.append(_:)(v22);
      v36 = bLength;
      v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v23);

      v24._countAndFlagsBits = 0x4C6C61746F547720;
      v24._object = 0xEE00206874676E65;
      String.append(_:)(v24);
      LOWORD(v36) = a1->wTotalLength;
      v25._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v25);

      v10 = v34;
      bLength = v35;
      if (qword_100173CB8 != -1)
      {
LABEL_53:
        swift_once();
      }

      v26 = sub_10000A1BC(v30, qword_1001794F0);
      v27 = v31;
      sub_10000A2A4(v26, v31);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v28, qword_100179508);
      sub_100039F58(1, v27, v10, bLength);

      sub_10000C9D0(v27);
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1000BEAA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = (a1 + 41);
  v3 = _swiftEmptyArrayStorage;
  v4 = (a1 + 41);
  do
  {
    v5 = *v4;
    v4 += 16;
    if (!v5)
    {
      v6 = *(v2 - 9);
      if (*(v6 + 4) == 1)
      {
        v7 = *v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_10002501C(0, *(v3 + 2) + 1, 1, v3);
        }

        v9 = *(v3 + 2);
        v8 = *(v3 + 3);
        if (v9 >= v8 >> 1)
        {
          v3 = sub_10002501C((v8 > 1), v9 + 1, 1, v3);
        }

        *(v3 + 2) = v9 + 1;
        *&v3[8 * v9 + 32] = v7;
      }
    }

    v2 = v4;
    --v1;
  }

  while (v1);
  return v3;
}

const IOUSBConfigurationDescriptor *sub_1000BEB9C(const IOUSBConfigurationDescriptor *a1)
{
  v2 = a1;
  v3 = sub_1000BE5FC(a1);
  if (v1)
  {
    return v2;
  }

  v4 = v3;
  v6 = sub_1000BEAA8(v3);
  v7 = _s9AUASDCore15DescriptorUtilsV27usbAudioFunctionDescriptorsySaySayAA13USBDescriptorOG07controlG0_SayAF15streamInterface_SayAGG0J10AlternatestG0jG0tGAGFZ_0(v4);

  v8 = *(v7 + 16);
  if (!v8)
  {

    return 0;
  }

  v25 = v6;
  result = sub_1000474A0(0, v8, 0);
  v9 = 0;
  v10 = (v7 + 40);
  while (v9 < *(v7 + 16))
  {
    v11 = v8;
    v12 = *(v10 - 1);
    v13 = *v10;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    sub_100093EF4(v12, v13, v25, v26);

    v15 = _swiftEmptyArrayStorage[2];
    v14 = _swiftEmptyArrayStorage[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_1000474A0((v14 > 1), v15 + 1, 1);
    }

    ++v9;
    _swiftEmptyArrayStorage[2] = v15 + 1;
    v16 = &_swiftEmptyArrayStorage[21 * v15];
    v17 = v26[0];
    v18 = v26[2];
    *(v16 + 3) = v26[1];
    *(v16 + 4) = v18;
    *(v16 + 2) = v17;
    v19 = v26[3];
    v20 = v26[4];
    v21 = v26[6];
    *(v16 + 7) = v26[5];
    *(v16 + 8) = v21;
    *(v16 + 5) = v19;
    *(v16 + 6) = v20;
    v22 = v26[7];
    v23 = v26[8];
    v24 = v26[9];
    v16[24] = v27;
    *(v16 + 10) = v23;
    *(v16 + 11) = v24;
    *(v16 + 9) = v22;
    v10 += 2;
    v8 = v11;
    if (v11 == v9)
    {

      return v2;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1000BEE9C(int a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_10000D040(v17, &qword_100175790, &unk_100121070);
    goto LABEL_6;
  }

  v19 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16[3] = a4(a3);
  v16[4] = a5;
  v16[0] = v5;

  ActiveFunction.getRawCur(forControl:onEntity:onChannel:)(a1 & 0xFFFFFF, v16, a2, ObjectType, v19, v17);
  swift_unknownObjectRelease();
  sub_10000CE78(v16);
  if (!v6)
  {
    sub_100001AB4(&qword_1001755F0, &qword_100121AF0);
    if (swift_dynamicCast())
    {
      return LOBYTE(v16[0]) != 0;
    }

LABEL_6:
    sub_10000CA2C();
    swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  return v13;
}

unint64_t sub_1000BF02C(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = __chkstk_darwin(a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v14 - v8;
  result = (*(v10 + 56))(v7);
  if (result >> 16)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  result = 1936745574;
  if (v12 <= 0x301u)
  {
    if (v12 == 513 || v12 == 518)
    {
      return 1835623282;
    }

    if (v12 == 769)
    {
      return 1936747378;
    }

    return 0;
  }

  if (v12 > 0x601u)
  {
    if (v12 == 1538)
    {
      return result;
    }

    if (v12 == 1539)
    {
      return 1818848869;
    }

    return 0;
  }

  if (v12 == 770)
  {
    return 1751412840;
  }

  if (v12 != 1026)
  {
    return 0;
  }

  v13 = *(v3 + 16);
  v13(v9, v1, a1);
  type metadata accessor for ActiveOutputTerminal();
  if (swift_dynamicCast())
  {

    return 1751412840;
  }

  v13(v6, v1, a1);
  type metadata accessor for ActiveInputTerminal();
  result = swift_dynamicCast();
  if (result)
  {

    return 1752000867;
  }

  return result;
}

uint64_t sub_1000BF228(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(v6, a1);
  v2 = v7;
  v3 = v8;
  sub_10001EAB8(v6, v7);
  v4 = (*(v3 + 16))(v2, v3);
  sub_10000CE78(v6);
  return v4;
}

uint64_t ActiveTerminalEntity.clockEntityID.getter(uint64_t a1, uint64_t a2)
{
  if ((*(*(*(a2 + 8) + 8) + 16))())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = (*(v5 + 24))(ObjectType, v5);
    swift_unknownObjectRelease();
    v8 = *(v7 + 112);
    v24[4] = *(v7 + 96);
    v24[5] = v8;
    v24[6] = *(v7 + 128);
    v25 = *(v7 + 144);
    v9 = *(v7 + 48);
    v24[0] = *(v7 + 32);
    v10 = *(v7 + 64);
    v11 = *(v7 + 80);
    v24[1] = v9;
    v24[2] = v10;
    v24[3] = v11;
    sub_100057294(v24, v21);

    v12 = *(a2 + 16);
    v12(v21, a1, a2);
    v13 = v22;
    v14 = v23;
    sub_10001EAB8(v21, v22);
    v15 = (*(v14 + 48))(v13, v14);
    v16 = sub_1000710DC(v15);
    LOBYTE(v13) = v17;
    sub_1000572F0(v24);
    sub_10000CE78(v21);
    if ((v13 & 1) == 0)
    {
      return v16;
    }
  }

  else
  {
    v12 = *(a2 + 16);
  }

  v12(v21, a1, a2);
  v18 = v22;
  v19 = v23;
  sub_10001EAB8(v21, v22);
  v16 = (*(v19 + 48))(v18, v19);
  sub_10000CE78(v21);
  return v16;
}

uint64_t ActiveTerminalEntity.clock.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  result = v4();
  if (result)
  {
    result = (*(*(*(a2 + 8) + 8) + 16))(a1);
    if (result)
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = (v4)(a1, a2);
      sub_100052184(v9, ObjectType, v7, v11);
      swift_unknownObjectRelease();
      if (v12)
      {
        sub_100001AB4(&qword_100174F60, &qword_100121090);
        sub_100001AB4(&qword_100175360, &qword_100121340);
        if (swift_dynamicCast())
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        sub_10000D040(v11, &qword_100174FB0, &unk_100120FC0);
        return 0;
      }
    }
  }

  return result;
}

uint64_t ActiveTerminalEntity.latencyControlSelector.getter(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a2 + 8) + 8) + 16))(a1);
  if (result)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    LODWORD(v4) = (*(v4 + 40))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v4 == 32)
    {
      return 7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1000BF644(char a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LogID(0);
  v9 = __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v37 = v9;
    swift_once();
    v9 = v37;
  }

  v12 = sub_10000A1BC(v9, qword_1001794F0);
  sub_10000A2A4(v12, v11);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v13, qword_100179508);
  sub_100039AA0(2, v11, 0xD00000000000001BLL, 0x8000000100130610);
  sub_10000C9D0(v11);
  if (a1)
  {
    sub_10000A2A4(v12, v11);
    sub_100039F58(2, v11, 0xD000000000000025, 0x8000000100130630);
    sub_10000C9D0(v11);
    sub_10000CA2C();
    swift_allocError();
    *v14 = 2;
    *(v14 + 8) = 0;
    *(v14 + 16) = 0xE000000000000000;
    swift_willThrow();
  }

  else if ((*(*(*(a3 + 8) + 8) + 16))(a2))
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v43 = a2;
    v44 = a3;
    v18 = sub_10007D2E8(&aBlock);
    (*(*(a2 - 1) + 16))(v18, v4, a2);
    v19 = v38[1];
    sub_100055F8C(&aBlock, ObjectType, v16);
    v21 = v20;
    swift_unknownObjectRelease();
    sub_10000CE78(&aBlock);
    if (!v19)
    {
      if (v21)
      {
        v22 = swift_allocObject();
        *(v22 + 16) = v21;
        aBlock = 0xD00000000000002CLL;
        v41 = 0x8000000100130660;
        v23 = v21;
        v24._countAndFlagsBits = 8236;
        v24._object = 0xE200000000000000;
        String.append(_:)(v24);
        v25._countAndFlagsBits = 0xD00000000000001ELL;
        v25._object = 0x8000000100130690;
        String.append(_:)(v25);
        v26._countAndFlagsBits = 2108704;
        v26._object = 0xE300000000000000;
        String.append(_:)(v26);
        v46 = 86;
        v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v27);

        sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v41, &v23[OBJC_IVAR___AUAAudioDevice_logID]);

        v28 = *&v23[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
        v29 = swift_allocObject();
        v29[2] = sub_1000C3708;
        v29[3] = v22;
        aBlock = sub_10000CF5C;
        v41 = v29;
        v30 = *(v28 + 16);
        v31 = __chkstk_darwin(v29);
        v38[-2] = v28;
        v38[-1] = &aBlock;
        __chkstk_darwin(v31);
        v38[-2] = sub_10000CF64;
        v38[-1] = v32;

        os_unfair_lock_lock(v30 + 4);
        sub_10000CF80(&v46);
        os_unfair_lock_unlock(v30 + 4);
        LOBYTE(v28) = v46;

        if (v28)
        {
          v33 = swift_allocObject();
          *(v33 + 16) = v23;
          v44 = sub_10000CFD4;
          v45 = v33;
          aBlock = _NSConcreteStackBlock;
          v41 = 1107296256;
          v42 = sub_1000172D4;
          v43 = &unk_100164F20;
          v34 = _Block_copy(&aBlock);
          v35 = v23;

          v36 = type metadata accessor for AUAAudioDevice(0);
          v39.receiver = v35;
          v39.super_class = v36;
          objc_msgSendSuper2(&v39, "requestConfigurationChange:", v34);
          _Block_release(v34);
        }
      }
    }
  }
}

void sub_1000BFB94()
{
  v0 = type metadata accessor for LogID(0);
  v1 = __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CB8 != -1)
  {
    v7 = v1;
    swift_once();
    v1 = v7;
  }

  v4 = sub_10000A1BC(v1, qword_1001794F0);
  sub_10000A2A4(v4, v3);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v5, qword_100179508);
  sub_100039AA0(2, v3, 0xD000000000000020, 0x80000001001306B0);
  sub_10000C9D0(v3);
  AUAAudioDevice.publishStreamFormats()();
  if (v6)
  {
    sub_10000A2A4(v4, v3);
    sub_100039F58(2, v3, 0xD00000000000001ALL, 0x80000001001306E0);

    sub_10000C9D0(v3);
  }
}

uint64_t ActiveTerminalEntity.name.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LogID(0);
  __chkstk_darwin(v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(a2 + 8) + 8);
  (*(v8 + 8))(v24, a1, v8);
  v9 = v25;
  v10 = v26;
  sub_10001EAB8(v24, v25);
  v11 = (*(v10 + 32))(v9, v10);
  if (BYTE2(v11) == 255)
  {
    sub_10000CE78(v24);
  }

  else
  {
    v12 = v11;
    sub_10000CE78(v24);
    if ((*(v8 + 16))(a1, v8))
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      v9 = (*(v14 + 16))(ObjectType, v14);
      swift_unknownObjectRelease();
      if (v9)
      {
        if (*&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_usbHostObject])
        {
          v16 = sub_1000F8280((v12 & 0x1FFFF));
          if (v17)
          {
            v24[0] = v16;
            v24[1] = v17;
            v23[3] = 0;
            v23[4] = 0xE100000000000000;
            v23[1] = 0;
            v23[2] = 0xE000000000000000;
            sub_10001EA64();
            v20 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

            return v20;
          }
        }
      }
    }
  }

  while (1)
  {
    v22 = (*(a2 + 56))(a1, a2);
    if (!(v22 >> 16))
    {
      break;
    }

    __break(1u);
    swift_once();
    v18 = sub_10000A1BC(v5, qword_1001794F0);
    sub_10000A2A4(v18, v7);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v19, qword_100179508);
    sub_100039F58(1, v7, v2, v9);

    sub_10000C9D0(v7);
  }

  if (v22 > 0x301u)
  {
    if (v22 > 0x601u)
    {
      switch(v22)
      {
        case 0x602u:
          return 0xD000000000000020;
        case 0x603u:
          return 0xD000000000000017;
        case 0x605u:
          return 0xD000000000000018;
      }
    }

    else
    {
      switch(v22)
      {
        case 0x302u:
          return 0x6E6F687064616548;
        case 0x402u:
          return 0xD000000000000015;
        case 0x403u:
          return 0x7072656B61657053;
      }
    }
  }

  else if (v22 > 0x205u)
  {
    switch(v22)
    {
      case 0x206u:
        return 0xD00000000000001BLL;
      case 0x300u:
        return 0xD000000000000010;
      case 0x301u:
        return 0x72656B61657053;
    }
  }

  else
  {
    switch(v22)
    {
      case 0x101u:
        return 0x6572745320425355;
      case 0x200u:
        return 0x6E55207475706E49;
      case 0x201u:
        return 0x6F68706F7263694DLL;
    }
  }

  return 0xD000000000000015;
}

unint64_t ActiveTerminalEntity.pathName.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 56))();
  if (result >> 16)
  {
    __break(1u);
  }

  else if (result == 257)
  {
    return 0;
  }

  else
  {
    v5 = *(a2 + 8);
    result = (*(*(v5 + 8) + 56))(a1);
    if (!v6)
    {
      v7 = *(v5 + 24);
      v7(&v11, a1, v5);
      if (v12)
      {
        sub_10001EFE4(&v11, v13);
        v8 = v14;
        v9 = v15;
        sub_10001EAB8(v13, v14);
        v10 = (*(v9 + 72))(v8, v9);
        sub_10000CE78(v13);
        return v10;
      }

      else
      {
        sub_10000D040(&v11, &qword_100174F70, &qword_100120FD0);
        v7(v13, a1, v5);
        sub_10000D040(v13, &qword_100174F70, &qword_100120FD0);
        return 0xD000000000000022;
      }
    }
  }

  return result;
}

uint64_t (*ActiveInputTerminal.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10002316C;
}

uint64_t ActiveInputTerminal.cluster.getter()
{
  v1 = *(v0 + 144);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1000C05C0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 112);
  v13[4] = *(v2 + 96);
  v13[5] = v4;
  v14 = *(v2 + 128);
  v5 = *(v2 + 48);
  v13[0] = *(v2 + 32);
  v13[1] = v5;
  v6 = *(v2 + 80);
  v13[2] = *(v2 + 64);
  v13[3] = v6;
  a2[3] = &type metadata for InputTerminal;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = *(v2 + 112);
  *(v7 + 80) = *(v2 + 96);
  *(v7 + 96) = v8;
  *(v7 + 112) = *(v2 + 128);
  v9 = *(v2 + 48);
  *(v7 + 16) = *(v2 + 32);
  *(v7 + 32) = v9;
  v10 = *(v2 + 80);
  *(v7 + 48) = *(v2 + 64);
  *(v7 + 64) = v10;
  return sub_1000767C0(v13, v12);
}

void *ActiveInputTerminal.audioControlsAndProperties(scope:for:)(int a1, void *a2)
{
  v3 = v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v26 = 1;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0xE000000000000000;
    swift_willThrow();
    return v2;
  }

  v2 = Strong;
  v6 = v3[3];
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 16))(ObjectType, v6);
  if (!v8)
  {
    sub_10000CA2C();
    swift_allocError();
    *v27 = 58;
    *(v27 + 8) = 0;
    *(v27 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();
    return v2;
  }

  v2 = _swiftEmptyArrayStorage;
  v9 = v3[19];
  if (v9 && (v31 = *(v9 + 16)) != 0)
  {
    v10 = 0;
    v29 = v3[19];
    v30 = v9 + 32;
    while (v10 < *(v9 + 16))
    {
      v11 = (v30 + 3 * v10);
      v12 = *(v11 + 2);
      v13 = *v11 | (v12 << 16);
      v14 = ((v12 >> 2) & 0x3C | (*v11 >> 6)) == 6 && a1 == 1768845428;
      v33 = v10;
      if (v14)
      {
        v15 = v3[18];
        if (*(v15 + 16))
        {
          v16 = *(*(v15 + 40) + 16);
          if (!v16)
          {
            goto LABEL_30;
          }

          v17 = type metadata accessor for AUAEntityBooleanControl();
          v18 = -v16;
          v19 = 1;
          do
          {
            v20 = objc_allocWithZone(v17);
            v21 = a2;

            v23 = sub_1000C13BC(v22, v19, v13, 0x696E7074u, 0x7068616Eu, a2, v20);
            if (v23)
            {
              v24 = v23;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v2 = _swiftEmptyArrayStorage;
            }

            ++v19;
          }

          while (v18 + v19 != 1);
        }
      }

      v10 = v33 + 1;
      v9 = v29;
      if (v33 + 1 == v31)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_21:
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      v25 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_23;
    }
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_23:
  swift_unknownObjectRelease();
  if (!v25)
  {

    return 0;
  }

  return v2;
}

void *ActiveInputTerminal.deinit()
{
  sub_100024174(v0 + 16);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  sub_100076B24(v1, v2);

  return v0;
}

uint64_t ActiveInputTerminal.__deallocating_deinit()
{
  sub_100024174(v0 + 16);
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  sub_100076B24(v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0AA8()
{
  v1 = *(*v0 + 144);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 32);

  return v2;
}

uint64_t sub_1000C0B2C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(v4 + 32);
  v6 = *(v4 + 64);
  v7 = *(v4 + 80);
  v8 = *(v4 + 96);
  v9 = *(v4 + 112);
  v15 = *(v4 + 128);
  v14[2] = v6;
  v14[3] = v7;
  v14[4] = v8;
  v14[5] = v9;
  v10 = *(v4 + 48);
  v14[0] = v5;
  v14[1] = v10;
  a2[3] = &type metadata for InputTerminal;
  a2[4] = a1();
  v11 = swift_allocObject();
  *a2 = v11;
  memmove((v11 + 16), (v4 + 32), 0x68uLL);
  return sub_1000767C0(v14, v13);
}

uint64_t (*sub_1000C0BD4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

uint64_t (*ActiveOutputTerminal.function.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100026374;
}

uint64_t sub_1000C0DCC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = v2[5];
  v13[2] = v2[4];
  v13[3] = v4;
  v5 = v2[7];
  v13[4] = v2[6];
  v13[5] = v5;
  v6 = v2[3];
  v13[0] = v2[2];
  v13[1] = v6;
  a2[3] = &type metadata for OutputTerminal;
  a2[4] = a1();
  v7 = swift_allocObject();
  *a2 = v7;
  v8 = v2[5];
  v7[3] = v2[4];
  v7[4] = v8;
  v9 = v2[7];
  v7[5] = v2[6];
  v7[6] = v9;
  v10 = v2[3];
  v7[1] = v2[2];
  v7[2] = v10;
  return sub_1000766B0(v13, &v12);
}

uint64_t ActiveOutputTerminal.cluster.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (*(v0 + 80))
    {
      __break(1u);
      return result;
    }

    v2 = *(v0 + 24);
    v3 = *(v0 + 72);
    ObjectType = swift_getObjectType();
    sub_100052184(v3, ObjectType, v2, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
  }

  sub_10001ED24(v14, v11);
  if (v12)
  {
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    sub_100001AB4(&qword_100174F68, &unk_100120B90);
    if (swift_dynamicCast())
    {
      if (*(&v9 + 1))
      {
        sub_10001EFE4(&v8, v11);
        v5 = v12;
        v6 = v13;
        sub_10001EAB8(v11, v12);
        v7 = (*(v6 + 48))(v5, v6);
        sub_10000D040(v14, &qword_100174FB0, &unk_100120FC0);
        sub_10000CE78(v11);
        return v7;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }
  }

  else
  {
    sub_10000D040(v11, &qword_100174FB0, &unk_100120FC0);
    v8 = 0u;
    v9 = 0u;
    v10 = 0;
  }

  sub_10000D040(v14, &qword_100174FB0, &unk_100120FC0);
  sub_10000D040(&v8, &qword_100174F70, &qword_100120FD0);
  return 0;
}

uint64_t sub_1000C1050(char *a1, _OWORD *a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  v7 = a2[1];
  *(v3 + 32) = *a2;
  *(v3 + 48) = v7;
  v8 = a2[5];
  *(v3 + 96) = a2[4];
  *(v3 + 112) = v8;
  v9 = a2[3];
  *(v3 + 64) = a2[2];
  *(v3 + 80) = v9;
  if (!*(a3 + 16))
  {

    a3 = 0;
  }

  v10 = *a2;
  *(v3 + 128) = a3;
  if (v10 == 257 || (v11 = *&a1[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList]) == 0)
  {
  }

  else
  {
    v12 = sub_1000AA808(0xFu, v11);

    if (v12)
    {
      v10 = 1026;
    }
  }

  *(v3 + 136) = v10;
  return v3;
}

void *ActiveOutputTerminal.deinit()
{
  sub_100024174(v0 + 16);

  return v0;
}

uint64_t ActiveOutputTerminal.__deallocating_deinit()
{
  sub_100024174(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C1258@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v6 = v4[4];
  v5 = v4[5];
  v7 = v4[7];
  v12[4] = v4[6];
  v12[5] = v7;
  v12[2] = v6;
  v12[3] = v5;
  v8 = v4[3];
  v12[0] = v4[2];
  v12[1] = v8;
  a2[3] = &type metadata for OutputTerminal;
  a2[4] = a1();
  v9 = swift_allocObject();
  *a2 = v9;
  memmove((v9 + 16), v4 + 2, 0x60uLL);
  return sub_1000766B0(v12, &v11);
}

uint64_t (*sub_1000C12E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_100026374;
}

char *sub_1000C13BC(uint64_t a1, unint64_t a2, int a3, unsigned int a4, unsigned int a5, void *a6, char *a7)
{
  v96 = a7;
  v90 = a5;
  v92 = a4;
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v91 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for LogID(0);
  __chkstk_darwin(v94);
  v95 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveInputTerminal();
  v103[3] = active;
  v103[4] = &protocol witness table for ActiveInputTerminal;
  v103[0] = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v17 = *(a1 + 24), ObjectType = swift_getObjectType(), v19 = (*(v17 + 16))(ObjectType, v17), swift_unknownObjectRelease(), v19) && (v20 = [v19 boxName], v19, v20))
  {
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    v93 = 0x6E776F6E6B6E55;
    v22 = 0xE700000000000000;
  }

  v23 = sub_1000BEE9C(a3 & 0xFFFFFF, a2, v16, type metadata accessor for ActiveInputTerminal, &protocol witness table for ActiveInputTerminal);
  v24 = LockDelay.units.getter(a3);
  v25 = v24;
  if (v24)
  {
    v88 = v24;
    v89 = a6;
    if (USBDescriptorControl.label.getter(a3 & 0xFFFFFF) == 1702131053 && v26 == 0xE400000000000000)
    {
    }

    else
    {
      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v27 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v92 == 1768845428)
    {
      if (v23)
      {
        v97 = 0;
        v98 = 0xE000000000000000;
        _StringGuts.grow(_:)(69);
        v28._countAndFlagsBits = v93;
        v28._object = v22;
        String.append(_:)(v28);
        v29._object = 0x8000000100130560;
        v29._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v29);
        v101._countAndFlagsBits = *(a1 + 72);
        v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v30);

        v31._countAndFlagsBits = 0x656E6E616863205DLL;
        v31._object = 0xEB00000000203A6CLL;
        String.append(_:)(v31);
        v101._countAndFlagsBits = a2;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        v33._countAndFlagsBits = 0xD00000000000001FLL;
        v33._object = 0x8000000100130580;
        String.append(_:)(v33);
        v35 = v97;
        v34 = v98;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v36 = sub_10000A1BC(v94, qword_1001794F0);
        v37 = v95;
        sub_10000A2A4(v36, v95);
        a6 = v89;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v38, qword_100179508);
        sub_100039F58(2, v37, v35, v34);

        sub_10000C9D0(v37);
        v7 = 0;
        v23 = 0;
        goto LABEL_21;
      }

      v7 = 0;
      v23 = 0;
    }

    else
    {
      v7 = v23 & 1;
    }

    a6 = v89;
LABEL_21:
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_24:
      v25 = v88;
      goto LABEL_25;
    }

    v87 = *(a1 + 24);
    v39 = swift_getObjectType();
    v99 = active;
    v100 = &protocol witness table for ActiveInputTerminal;
    v97 = a1;

    sub_100053170(a3 & 0xFFFFFF, a2, 0, &v97, v7, v39, v87);
    swift_unknownObjectRelease();
    sub_10000CE78(&v97);
LABEL_23:
    a6 = v89;
    goto LABEL_24;
  }

LABEL_25:
  v40 = v96;
  v96[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_shouldInvert] = 0;
  sub_10001EAFC(v103, &v40[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity]);
  *&v40[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_channel] = a2;
  v41 = &v40[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_control];
  v41[2] = BYTE2(a3);
  *v41 = a3;
  v42 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    __break(1u);
LABEL_61:
    sub_100046824((v42 > 1), a6, 1);
    countAndFlagsBits = v101._countAndFlagsBits;
    v42 = *(v101._countAndFlagsBits + 24);
    v50 = v42 >> 1;
    goto LABEL_28;
  }

  v43 = type metadata accessor for AUAEntityBooleanControl();
  v102.receiver = v40;
  v102.super_class = v43;
  v44 = objc_msgSendSuper2(&v102, "initWithValue:isSettable:forElement:inScope:withPlugin:andObjectClassID:", v23 & 1, v25 & 1, a2, v92, a6, v90);
  if (!v44)
  {

    sub_10000CE78(v103);
    return 0;
  }

  a2 = a6;
  v97 = 0;
  v98 = 0xE000000000000000;
  v96 = v44;
  v40 = v44;
  _StringGuts.grow(_:)(55);
  v45._countAndFlagsBits = v93;
  v45._object = v22;
  String.append(_:)(v45);

  v46._countAndFlagsBits = 0xD000000000000020;
  v46._object = 0x8000000100130530;
  String.append(_:)(v46);
  v101._countAndFlagsBits = *(a1 + 72);
  v47._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v47);

  v48._countAndFlagsBits = 0x207373616C63205DLL;
  v48._object = 0xE800000000000000;
  String.append(_:)(v48);
  v23 = [v40 objectClass];

  v7 = _swiftEmptyArrayStorage;
  v101._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  countAndFlagsBits = v101._countAndFlagsBits;
  active = *(v101._countAndFlagsBits + 16);
  v42 = *(v101._countAndFlagsBits + 24);
  v50 = v42 >> 1;
  a6 = (active + 1);
  if (v42 >> 1 <= active)
  {
    goto LABEL_61;
  }

LABEL_28:
  *(countAndFlagsBits + 16) = a6;
  *(countAndFlagsBits + active + 32) = HIBYTE(v23);
  v51 = active + 2;
  if (v50 <= a6)
  {
    sub_100046824((v42 > 1), active + 2, 1);
    countAndFlagsBits = v101._countAndFlagsBits;
    v42 = *(v101._countAndFlagsBits + 24);
    v50 = v42 >> 1;
  }

  *(countAndFlagsBits + 16) = v51;
  *(a6 + countAndFlagsBits + 32) = BYTE2(v23);
  v52 = active + 3;
  if (v50 <= v51)
  {
    sub_100046824((v42 > 1), active + 3, 1);
  }

  v53 = v101._countAndFlagsBits;
  *(v101._countAndFlagsBits + 16) = v52;
  *(v53 + v51 + 32) = BYTE1(v23);
  v54 = *(v53 + 24);
  if (v52 >= v54 >> 1)
  {
    sub_100046824((v54 > 1), active + 4, 1);
    v53 = v101._countAndFlagsBits;
  }

  *(v53 + 16) = active + 4;
  *(v53 + v52 + 32) = v23;
  v101._countAndFlagsBits = v53;
  static String.Encoding.ascii.getter();
  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  sub_100046844();
  v55 = String.init<A>(bytes:encoding:)();
  v57 = v56;

  v101._countAndFlagsBits = 39;
  v101._object = 0xE100000000000000;
  if (v57)
  {
    v58 = v55;
  }

  else
  {
    v58 = 1061109567;
  }

  if (v57)
  {
    v59 = v57;
  }

  else
  {
    v59 = 0xE400000000000000;
  }

  v60 = v59;
  String.append(_:)(*&v58);

  v61._countAndFlagsBits = 39;
  v61._object = 0xE100000000000000;
  String.append(_:)(v61);
  String.append(_:)(v101);

  v62._countAndFlagsBits = 0x2065706F637320;
  v62._object = 0xE700000000000000;
  String.append(_:)(v62);
  v63 = [v40 controlScope];
  v101._countAndFlagsBits = v7;
  sub_100046824(0, 4, 0);
  v64 = v101._countAndFlagsBits;
  v66 = *(v101._countAndFlagsBits + 16);
  v65 = *(v101._countAndFlagsBits + 24);
  v67 = v65 >> 1;
  v68 = v66 + 1;
  if (v65 >> 1 <= v66)
  {
    sub_100046824((v65 > 1), v66 + 1, 1);
    v64 = v101._countAndFlagsBits;
    v65 = *(v101._countAndFlagsBits + 24);
    v67 = v65 >> 1;
  }

  *(v64 + 16) = v68;
  *(v64 + v66 + 32) = HIBYTE(v63);
  v69 = v66 + 2;
  if (v67 <= v68)
  {
    sub_100046824((v65 > 1), v66 + 2, 1);
    v64 = v101._countAndFlagsBits;
    v65 = *(v101._countAndFlagsBits + 24);
    v67 = v65 >> 1;
  }

  *(v64 + 16) = v69;
  *(v64 + v68 + 32) = BYTE2(v63);
  v70 = v66 + 3;
  if (v67 <= v69)
  {
    sub_100046824((v65 > 1), v66 + 3, 1);
  }

  v71 = v101._countAndFlagsBits;
  *(v101._countAndFlagsBits + 16) = v70;
  *(v71 + v69 + 32) = BYTE1(v63);
  v72 = *(v71 + 24);
  if (v70 >= v72 >> 1)
  {
    sub_100046824((v72 > 1), v66 + 4, 1);
    v71 = v101._countAndFlagsBits;
  }

  *(v71 + 16) = v66 + 4;
  *(v71 + v70 + 32) = v63;
  v101._countAndFlagsBits = v71;
  static String.Encoding.ascii.getter();
  v73 = String.init<A>(bytes:encoding:)();
  v75 = v74;

  v101._countAndFlagsBits = 39;
  v101._object = 0xE100000000000000;
  if (v75)
  {
    v76 = v73;
  }

  else
  {
    v76 = 1061109567;
  }

  if (v75)
  {
    v77 = v75;
  }

  else
  {
    v77 = 0xE400000000000000;
  }

  v78 = v77;
  String.append(_:)(*&v76);

  v79._countAndFlagsBits = 39;
  v79._object = 0xE100000000000000;
  String.append(_:)(v79);
  String.append(_:)(v101);

  v81 = v97;
  v80 = v98;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v82 = sub_10000A1BC(v94, qword_1001794F0);
  v83 = v95;
  sub_10000A2A4(v82, v95);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v84 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v84, qword_100179508);
  sub_100039AA0(2, v83, v81, v80);

  sub_10000C9D0(v83);
  sub_10000CE78(v103);

  return v96;
}

char *sub_1000C2194(uint64_t a1, unint64_t a2, int a3, unsigned int a4, unsigned int a5, void *a6, char *a7)
{
  v95 = a7;
  v89 = a5;
  v91 = a4;
  v12 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v12 - 8);
  v90 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for LogID(0);
  __chkstk_darwin(v93);
  v94 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  active = type metadata accessor for ActiveFeatureUnit();
  v102[3] = active;
  v102[4] = &protocol witness table for ActiveFeatureUnit;
  v102[0] = a1;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v16 = *(a1 + 24), ObjectType = swift_getObjectType(), v18 = (*(v16 + 16))(ObjectType, v16), swift_unknownObjectRelease(), v18) && (v19 = [v18 boxName], v18, v19))
  {
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v92 = 0x6E776F6E6B6E55;
    v21 = 0xE700000000000000;
  }

  v22 = sub_1000BEE9C(a3 & 0xFFFFFF, a2, 0, type metadata accessor for ActiveFeatureUnit, &protocol witness table for ActiveFeatureUnit);
  v23 = LockDelay.units.getter(a3);
  v24 = v23;
  if (v23)
  {
    v87 = v23;
    v88 = a6;
    if (USBDescriptorControl.label.getter(a3 & 0xFFFFFF) == 1702131053 && v25 == 0xE400000000000000)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (v91 == 1768845428)
    {
      if (v22)
      {
        v96 = 0;
        v97 = 0xE000000000000000;
        _StringGuts.grow(_:)(69);
        v27._countAndFlagsBits = v92;
        v27._object = v21;
        String.append(_:)(v27);
        v28._object = 0x8000000100130560;
        v28._countAndFlagsBits = 0xD000000000000015;
        String.append(_:)(v28);
        v100._countAndFlagsBits = *(a1 + 48);
        v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v29);

        v30._countAndFlagsBits = 0x656E6E616863205DLL;
        v30._object = 0xEB00000000203A6CLL;
        String.append(_:)(v30);
        v100._countAndFlagsBits = a2;
        v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v31);

        v32._countAndFlagsBits = 0xD00000000000001FLL;
        v32._object = 0x8000000100130580;
        String.append(_:)(v32);
        v34 = v96;
        v33 = v97;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v35 = sub_10000A1BC(v93, qword_1001794F0);
        v36 = v94;
        sub_10000A2A4(v35, v94);
        a6 = v88;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v37, qword_100179508);
        sub_100039F58(2, v36, v34, v33);

        sub_10000C9D0(v36);
        v7 = 0;
        v22 = 0;
        goto LABEL_21;
      }

      v7 = 0;
      v22 = 0;
    }

    else
    {
      v7 = v22 & 1;
    }

    a6 = v88;
LABEL_21:
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_24:
      v24 = v87;
      goto LABEL_25;
    }

    v86 = *(a1 + 24);
    v38 = swift_getObjectType();
    v98 = active;
    v99 = &protocol witness table for ActiveFeatureUnit;
    v96 = a1;

    sub_100053170(a3 & 0xFFFFFF, a2, 0, &v96, v7, v38, v86);
    swift_unknownObjectRelease();
    sub_10000CE78(&v96);
LABEL_23:
    a6 = v88;
    goto LABEL_24;
  }

LABEL_25:
  v39 = v95;
  v95[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_shouldInvert] = 0;
  sub_10001EAFC(v102, &v39[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_entity]);
  *&v39[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_channel] = a2;
  v40 = &v39[OBJC_IVAR____TtC9AUASDCore23AUAEntityBooleanControl_control];
  v40[2] = BYTE2(a3);
  *v40 = a3;
  v41 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    __break(1u);
LABEL_61:
    sub_100046824((v41 > 1), a6, 1);
    countAndFlagsBits = v100._countAndFlagsBits;
    v41 = *(v100._countAndFlagsBits + 24);
    v49 = v41 >> 1;
    goto LABEL_28;
  }

  v42 = type metadata accessor for AUAEntityBooleanControl();
  v101.receiver = v39;
  v101.super_class = v42;
  v43 = objc_msgSendSuper2(&v101, "initWithValue:isSettable:forElement:inScope:withPlugin:andObjectClassID:", v22 & 1, v24 & 1, a2, v91, a6, v89);
  if (!v43)
  {

    sub_10000CE78(v102);
    return 0;
  }

  a2 = a6;
  v96 = 0;
  v97 = 0xE000000000000000;
  v95 = v43;
  v39 = v43;
  _StringGuts.grow(_:)(55);
  v44._countAndFlagsBits = v92;
  v44._object = v21;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 0xD000000000000020;
  v45._object = 0x8000000100130530;
  String.append(_:)(v45);
  v100._countAndFlagsBits = *(a1 + 48);
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 0x207373616C63205DLL;
  v47._object = 0xE800000000000000;
  String.append(_:)(v47);
  v22 = [v39 objectClass];

  v7 = _swiftEmptyArrayStorage;
  v100._countAndFlagsBits = _swiftEmptyArrayStorage;
  sub_100046824(0, 4, 0);
  countAndFlagsBits = v100._countAndFlagsBits;
  active = *(v100._countAndFlagsBits + 16);
  v41 = *(v100._countAndFlagsBits + 24);
  v49 = v41 >> 1;
  a6 = (active + 1);
  if (v41 >> 1 <= active)
  {
    goto LABEL_61;
  }

LABEL_28:
  *(countAndFlagsBits + 16) = a6;
  *(countAndFlagsBits + active + 32) = HIBYTE(v22);
  v50 = active + 2;
  if (v49 <= a6)
  {
    sub_100046824((v41 > 1), active + 2, 1);
    countAndFlagsBits = v100._countAndFlagsBits;
    v41 = *(v100._countAndFlagsBits + 24);
    v49 = v41 >> 1;
  }

  *(countAndFlagsBits + 16) = v50;
  *(a6 + countAndFlagsBits + 32) = BYTE2(v22);
  v51 = active + 3;
  if (v49 <= v50)
  {
    sub_100046824((v41 > 1), active + 3, 1);
  }

  v52 = v100._countAndFlagsBits;
  *(v100._countAndFlagsBits + 16) = v51;
  *(v52 + v50 + 32) = BYTE1(v22);
  v53 = *(v52 + 24);
  if (v51 >= v53 >> 1)
  {
    sub_100046824((v53 > 1), active + 4, 1);
    v52 = v100._countAndFlagsBits;
  }

  *(v52 + 16) = active + 4;
  *(v52 + v51 + 32) = v22;
  v100._countAndFlagsBits = v52;
  static String.Encoding.ascii.getter();
  sub_100001AB4(&qword_100175CA8, &unk_100124860);
  sub_100046844();
  v54 = String.init<A>(bytes:encoding:)();
  v56 = v55;

  v100._countAndFlagsBits = 39;
  v100._object = 0xE100000000000000;
  if (v56)
  {
    v57 = v54;
  }

  else
  {
    v57 = 1061109567;
  }

  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0xE400000000000000;
  }

  v59 = v58;
  String.append(_:)(*&v57);

  v60._countAndFlagsBits = 39;
  v60._object = 0xE100000000000000;
  String.append(_:)(v60);
  String.append(_:)(v100);

  v61._countAndFlagsBits = 0x2065706F637320;
  v61._object = 0xE700000000000000;
  String.append(_:)(v61);
  v62 = [v39 controlScope];
  v100._countAndFlagsBits = v7;
  sub_100046824(0, 4, 0);
  v63 = v100._countAndFlagsBits;
  v65 = *(v100._countAndFlagsBits + 16);
  v64 = *(v100._countAndFlagsBits + 24);
  v66 = v64 >> 1;
  v67 = v65 + 1;
  if (v64 >> 1 <= v65)
  {
    sub_100046824((v64 > 1), v65 + 1, 1);
    v63 = v100._countAndFlagsBits;
    v64 = *(v100._countAndFlagsBits + 24);
    v66 = v64 >> 1;
  }

  *(v63 + 16) = v67;
  *(v63 + v65 + 32) = HIBYTE(v62);
  v68 = v65 + 2;
  if (v66 <= v67)
  {
    sub_100046824((v64 > 1), v65 + 2, 1);
    v63 = v100._countAndFlagsBits;
    v64 = *(v100._countAndFlagsBits + 24);
    v66 = v64 >> 1;
  }

  *(v63 + 16) = v68;
  *(v63 + v67 + 32) = BYTE2(v62);
  v69 = v65 + 3;
  if (v66 <= v68)
  {
    sub_100046824((v64 > 1), v65 + 3, 1);
  }

  v70 = v100._countAndFlagsBits;
  *(v100._countAndFlagsBits + 16) = v69;
  *(v70 + v68 + 32) = BYTE1(v62);
  v71 = *(v70 + 24);
  if (v69 >= v71 >> 1)
  {
    sub_100046824((v71 > 1), v65 + 4, 1);
    v70 = v100._countAndFlagsBits;
  }

  *(v70 + 16) = v65 + 4;
  *(v70 + v69 + 32) = v62;
  v100._countAndFlagsBits = v70;
  static String.Encoding.ascii.getter();
  v72 = String.init<A>(bytes:encoding:)();
  v74 = v73;

  v100._countAndFlagsBits = 39;
  v100._object = 0xE100000000000000;
  if (v74)
  {
    v75 = v72;
  }

  else
  {
    v75 = 1061109567;
  }

  if (v74)
  {
    v76 = v74;
  }

  else
  {
    v76 = 0xE400000000000000;
  }

  v77 = v76;
  String.append(_:)(*&v75);

  v78._countAndFlagsBits = 39;
  v78._object = 0xE100000000000000;
  String.append(_:)(v78);
  String.append(_:)(v100);

  v80 = v96;
  v79 = v97;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v81 = sub_10000A1BC(v93, qword_1001794F0);
  v82 = v94;
  sub_10000A2A4(v81, v94);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v83, qword_100179508);
  sub_100039AA0(2, v82, v80, v79);

  sub_10000C9D0(v82);
  sub_10000CE78(v102);

  return v95;
}