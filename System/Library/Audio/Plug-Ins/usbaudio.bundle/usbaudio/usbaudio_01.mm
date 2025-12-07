Swift::Bool __swiftcall AUAAudioDevice.hostEnabledForLowestLatency()()
{
  v1 = type metadata accessor for LogID(0);
  __chkstk_darwin(v1);
  v3 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100173CF8 != -1)
  {
    swift_once();
  }

  v4 = qword_100179640;
  v5 = *(qword_100179640 + 16);
  if (!v5)
  {
LABEL_8:
    v13 = MobileGestalt_get_current_device();
    if (!v13)
    {
      __break(1u);
      return v13;
    }

    v14 = v13;
    chipID = MobileGestalt_get_chipID();

    if (chipID >> 1 == 12328)
    {
      v12 = [*(v0 + OBJC_IVAR___AUAAudioDevice_timeCorrelater) doesUSBControllerSupportHardwareTimestamping];
      goto LABEL_12;
    }

LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 objectForKey:v7];

  if (!v8)
  {

    memset(v23, 0, sizeof(v23));
    sub_10000D040(v23, &unk_100174A20, &unk_100120170);
    goto LABEL_8;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  sub_10000D040(v23, &unk_100174A20, &unk_100120170);
  v9 = *(v4 + 16);
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

LABEL_12:
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  *&v23[0] = 0xD00000000000001ELL;
  *(&v23[0] + 1) = 0x800000010012B9E0;
  if (v12)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v12)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19 = v23[0];
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A1BC(v1, qword_1001794F0);
  sub_10000A2A4(v20, v3);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v21, qword_100179508);
  sub_100039AA0(4, v3, v19, *(&v19 + 1));

  sub_10000C9D0(v3);
  LOBYTE(v13) = v12 & 1;
  return v13;
}

Swift::Void __swiftcall AUAAudioDevice.handleSigTerm()()
{
  v1 = 0xEE00656369766564;
  v2 = 0x206E776F6E6B6E55;
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);
  v36 = v0;
  v6 = [v0 deviceName];
  if (v6)
  {
    v7 = v6;
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = v8;
  }

  v9._countAndFlagsBits = v2;
  v9._object = v1;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 0xD000000000000022;
  v10._object = 0x800000010012AE80;
  String.append(_:)(v10);
  v11 = v38;
  v12 = v39;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A1BC(v3, qword_1001794F0);
  sub_10000A2A4(v13, v5);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for AUALog(0);
  v35 = sub_10000A1BC(v14, qword_100179508);
  sub_100039AA0(1, v5, v11, v12);

  sub_10000C9D0(v5);
  v15 = *&v36[OBJC_IVAR___AUAAudioDevice_streamingInterfaces];
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
LABEL_9:
      if (v16 < 1)
      {
        __break(1u);
      }

      v17 = 0;
      v33 = "ng alternates to 0";
      v34 = OBJC_IVAR___AUAAudioDevice_logID;
      p_type = &stru_10016FFF0.type;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 112);
          if (v19)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v20 = *(v15 + 8 * v17 + 32);

          v19 = *(v20 + 112);
          if (v19)
          {
LABEL_17:
            v38 = 0;
            v21 = v19;
            if ([v21 p_type[477]])
            {
              v22 = v38;
            }

            else
            {
              v23 = v38;
              v24 = _convertNSErrorToError(_:)();

              swift_willThrow();
              v38 = 0;
              v39 = 0xE000000000000000;
              _StringGuts.grow(_:)(35);
              v25 = [v36 deviceName];
              if (v25)
              {
                v26 = v25;
                v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v29 = v28;
              }

              else
              {
                v27 = 0x206E776F6E6B6E55;
                v29 = 0xEE00656369766564;
              }

              v30._countAndFlagsBits = v27;
              v30._object = v29;
              String.append(_:)(v30);

              v31._object = (v33 | 0x8000000000000000);
              v31._countAndFlagsBits = 0xD00000000000001FLL;
              String.append(_:)(v31);
              v37 = v24;
              sub_100001AB4(&qword_100177270, &qword_100120A40);
              _print_unlocked<A, B>(_:_:)();
              sub_100039F58(1, &v36[v34], v38, v39);

              p_type = (&stru_10016FFF0 + 16);
            }

            goto LABEL_12;
          }
        }

LABEL_12:
        ++v17;
      }

      while (v16 != v17);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.startDevice()()
{
  if (!*(v0 + OBJC_IVAR___AUAAudioDevice_function) || (v1 = *(v0 + OBJC_IVAR___AUAAudioDevice_function + 8), ObjectType = swift_getObjectType(), (v3 = (*(v1 + 16))(ObjectType, v1)) == 0))
  {
    sub_10000CA2C();
    swift_allocError();
    *v13 = 58;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v4 = v3;
  v5 = *(v3 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (!v5 || !sub_1000AA808(0x25u, v5))
  {
    goto LABEL_18;
  }

  v6 = swift_getObjectType();
  v7 = *((*(v1 + 24))(v6, v1) + 168);

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_10:

    v19 = 0;
    memset(v18, 0, sizeof(v18));
LABEL_13:
    sub_10001ED24(v18, &v15);
    if (v16)
    {
      sub_100001AB4(&qword_100174F60, &qword_100121090);
      type metadata accessor for ActiveFeatureUnit();
      if (swift_dynamicCast())
      {
        sub_1000C63C8();
      }

      sub_10000D040(v18, &qword_100174FB0, &unk_100120FC0);
    }

    else
    {
      sub_10000D040(v18, &qword_100174FB0, &unk_100120FC0);
      sub_10000D040(&v15, &qword_100174FB0, &unk_100120FC0);
    }

LABEL_18:
    AUAAudioDevice.publishStreamFormats()();
    if (!v14)
    {
      AUAAudioDevice.updateSafetyOffsets()();
    }

    return;
  }

  v9 = 0;
  v10 = v7 + 32;
  while (v9 < *(v7 + 16))
  {
    sub_10001EAFC(v10, &v15);
    v11 = v16;
    v12 = v17;
    sub_10001EAB8(&v15, v16);
    if ((*(v12 + 48))(v11, v12) == 18)
    {

      sub_10000D0A0(&v15, v18);
      goto LABEL_13;
    }

    ++v9;
    sub_10000CE78(&v15);
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.publishStreamFormats()()
{
  v1 = sub_10000AD98(_swiftEmptyArrayStorage);
  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_streamingInterfaces);
  v109 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    active = 0;
    while ((v2 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      if (active)
      {
        active = 1;
      }

      else
      {
        active = ActiveStreamingInterface.hasValidAlternateSettingsControl.getter();
      }

      ++v4;
      if (v5 == i)
      {
        goto LABEL_17;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v5 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  active = 0;
LABEL_17:
  v108 = *(v0 + OBJC_IVAR___AUAAudioDevice_clock + 8);
  ObjectType = swift_getObjectType();
  if (((*(v108 + 56))(ObjectType, v108) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR___AUAAudioDevice_function))
    {
      v6 = *(v0 + OBJC_IVAR___AUAAudioDevice_function + 8);
      v7 = swift_getObjectType();
      v8 = (*(v6 + 16))(v7, v6);
      if (v8)
      {
        v9 = v8;
        v10 = *&v8[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
        if (v10)
        {
          v11 = sub_1000AA808(0, v10);

          v12 = !v11;
          goto LABEL_24;
        }
      }
    }
  }

  v12 = 1;
LABEL_24:
  v13 = (*(v108 + 48))(ObjectType, v108);
  v14 = (*(v108 + 40))(ObjectType, v108);
  if (!v14)
  {
    if (v109)
    {
      v64 = _CocoaArrayWrapper.endIndex.getter();
      if (!v64)
      {
        goto LABEL_161;
      }
    }

    else
    {
      v64 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v64)
      {
        goto LABEL_161;
      }
    }

    v65 = 0;
    v66 = v2 & 0xC000000000000001;
    v119 = v2 & 0xFFFFFFFFFFFFFF8;
    v116 = v64;
    v117 = v2 + 32;
    p_type = &stru_10016FFF0.type;
    v115 = (v2 & 0xC000000000000001);
    while (1)
    {
LABEL_116:
      v127 = v1;
      if (v66)
      {
        v68 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v27 = __OFADD__(v65++, 1);
        if (v27)
        {
          goto LABEL_184;
        }
      }

      else
      {
        if (v65 >= *(v119 + 16))
        {
          goto LABEL_186;
        }

        v68 = *(v117 + 8 * v65);

        v27 = __OFADD__(v65++, 1);
        if (v27)
        {
          goto LABEL_184;
        }
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v70 = Strong, v71 = [Strong p_type[498]], v70, v71))
      {
        sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
        v72 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v72 >> 62)
        {
          v73 = _CocoaArrayWrapper.endIndex.getter();
          if (v73)
          {
LABEL_126:
            v121 = v65;
            v74 = 0;
            v75 = v72 & 0xC000000000000001;
            v125 = v73;
            while (1)
            {
              if (v75)
              {
                v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v74 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_185;
                }

                v76 = *(v72 + 32 + 8 * v74);
              }

              v77 = v76;
              v27 = __OFADD__(v74++, 1);
              if (v27)
              {
                goto LABEL_183;
              }

              type metadata accessor for AUAAudioDevice(0);
              if (swift_dynamicCastClass())
              {
                v130 = v77;
                v78 = AUAAudioDevice.inputAUAStreams()();
                if (v78 >> 62)
                {
                  type metadata accessor for AUAStream(0);
                  v79 = _bridgeCocoaArray<A>(_:)();
                }

                else
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  type metadata accessor for AUAStream(0);
                  v79 = v78;
                }

                v80 = AUAAudioDevice.outputAUAStreams()();
                if (v80 >> 62)
                {
                  type metadata accessor for AUAStream(0);
                  v81 = _bridgeCocoaArray<A>(_:)();
                }

                else
                {

                  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                  type metadata accessor for AUAStream(0);
                  v81 = v80;
                }

                sub_10007DC24(v81);
                v82 = v79;
                if (v79 >> 62)
                {
                  v83 = _CocoaArrayWrapper.endIndex.getter();
                  if (v83)
                  {
LABEL_140:
                    v84 = 0;
                    while (1)
                    {
                      if ((v82 & 0xC000000000000001) != 0)
                      {
                        v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v84 >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_177;
                        }

                        v85 = *(v82 + 8 * v84 + 32);
                      }

                      v86 = v85;
                      v87 = v84 + 1;
                      if (__OFADD__(v84, 1))
                      {
                        break;
                      }

                      if (*(*(*&v85[OBJC_IVAR___AUAStream_interface] + 32) + 2) == *(*(v68 + 32) + 2))
                      {

                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        sub_100083DB8(_swiftEmptyArrayStorage, v86, isUniquelyReferenced_nonNull_native);

                        v1 = v127;
                        goto LABEL_156;
                      }

                      ++v84;
                      if (v87 == v83)
                      {
                        goto LABEL_127;
                      }
                    }

                    __break(1u);
LABEL_177:
                    __break(1u);
LABEL_178:
                    __break(1u);
LABEL_179:
                    __break(1u);
                    goto LABEL_180;
                  }
                }

                else
                {
                  v83 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v83)
                  {
                    goto LABEL_140;
                  }
                }

LABEL_127:

                v73 = v125;
                v75 = v72 & 0xC000000000000001;
                if (v74 == v125)
                {
                  goto LABEL_158;
                }
              }

              else
              {

                if (v74 == v73)
                {
LABEL_158:

                  v1 = v127;
LABEL_156:
                  v66 = v115;
                  v64 = v116;
                  v65 = v121;
                  p_type = (&stru_10016FFF0 + 16);
                  if (v121 != v116)
                  {
                    goto LABEL_116;
                  }

                  goto LABEL_161;
                }
              }
            }
          }
        }

        else
        {
          v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v73)
          {
            goto LABEL_126;
          }
        }
      }

      else
      {
      }

      v1 = v127;
      if (v65 == v64)
      {
        goto LABEL_161;
      }
    }
  }

  v101 = v14;
  v100 = *(v108 + 16);
  v15 = v100(ObjectType, v108);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15;
  }

  v18 = v101;
  v106 = v17;
  v97 = *(v101 + 16);
  if (v97)
  {
    v19 = 0;
    v96 = v13 & v12;
    v20 = v101 + 32;
    v113 = v2 & 0xFFFFFFFFFFFFFF8;
    v124 = v2 & 0xC000000000000001;
    v112 = v2 + 32;
    while (1)
    {
      v103 = v19;
      if (v19 >= *(v18 + 16))
      {
        goto LABEL_192;
      }

      v21 = ClockRateRange.asdSampleRateRanges.getter(*(v20 + 24 * v19), *(v20 + 24 * v19 + 8), *(v20 + 24 * v19 + 16));
      v22 = v21;
      v105 = v21;
      if (!(v21 >> 62))
      {
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          break;
        }

        goto LABEL_106;
      }

      v23 = _CocoaArrayWrapper.endIndex.getter();
      v22 = v105;
      if (v23)
      {
        break;
      }

LABEL_106:

      v19 = v103 + 1;
      v18 = v101;
      v20 = v101 + 32;
      if (v103 + 1 == v97)
      {
        goto LABEL_107;
      }
    }

    v24 = 0;
    v104 = v22 & 0xC000000000000001;
    v98 = v22 + 32;
    v99 = v22 & 0xFFFFFFFFFFFFFF8;
    v102 = v23;
    while (1)
    {
      if (v104)
      {
        v25 = v24;
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v24 >= *(v99 + 16))
        {
          goto LABEL_191;
        }

        v25 = v24;
        v26 = *(v98 + 8 * v24);
      }

      v114 = v26;
      v27 = __OFADD__(v25, 1);
      v28 = v25 + 1;
      if (v27)
      {
        goto LABEL_187;
      }

      v110 = v28;
      [v26 minimum];
      v30 = v29;
      [v114 maximum];
      v111 = v106;
      if (v30 == v31)
      {
        [v114 minimum];
        if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_188;
        }

        if (v32 <= -1.0)
        {
          goto LABEL_189;
        }

        if (v32 >= 1.84467441e19)
        {
          goto LABEL_190;
        }

        v111 = v32;
        if (active)
        {
          v33 = v100(ObjectType, v108);
          if ((v34 & 1) == 0 && v33 != v111)
          {
            if ((v96 & 1) == 0)
            {
              goto LABEL_34;
            }

            (*(v108 + 24))(v111, 0, ObjectType);
          }
        }
      }

      if (v109)
      {
        v35 = _CocoaArrayWrapper.endIndex.getter();
        if (v35)
        {
LABEL_53:
          v36 = 0;
          v122 = v35;
          do
          {
            if (v124)
            {
              v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v27 = __OFADD__(v36++, 1);
              if (v27)
              {
                goto LABEL_179;
              }
            }

            else
            {
              if (v36 >= *(v113 + 16))
              {
                goto LABEL_182;
              }

              v37 = *(v112 + 8 * v36);

              v27 = __OFADD__(v36++, 1);
              if (v27)
              {
                goto LABEL_179;
              }
            }

            swift_beginAccess();
            v38 = swift_unknownObjectWeakLoadStrong();
            if (v38 && (v39 = v38, v40 = [v38 audioDevices], v39, v40))
            {
              v126 = v1;
              sub_10001EBA8(0, &qword_100174F30, ASDAudioDevice_ptr);
              v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v41 >> 62)
              {
                v42 = _CocoaArrayWrapper.endIndex.getter();
                if (v42)
                {
LABEL_66:
                  v43 = 0;
                  v44 = v41 & 0xC000000000000001;
                  v123 = v36;
                  v120 = v42;
                  while (1)
                  {
                    if (v44)
                    {
                      v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v43 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_181;
                      }

                      v45 = *(v41 + 32 + 8 * v43);
                    }

                    v46 = v45;
                    v27 = __OFADD__(v43++, 1);
                    if (v27)
                    {
                      goto LABEL_178;
                    }

                    type metadata accessor for AUAAudioDevice(0);
                    if (swift_dynamicCastClass())
                    {
                      v128 = v46;
                      v47 = AUAAudioDevice.inputAUAStreams()();
                      if (v47 >> 62)
                      {
                        type metadata accessor for AUAStream(0);
                        v48 = _bridgeCocoaArray<A>(_:)();
                      }

                      else
                      {

                        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                        type metadata accessor for AUAStream(0);
                        v48 = v47;
                      }

                      v49 = AUAAudioDevice.outputAUAStreams()();
                      if (v49 >> 62)
                      {
                        type metadata accessor for AUAStream(0);
                        v50 = _bridgeCocoaArray<A>(_:)();
                      }

                      else
                      {

                        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
                        type metadata accessor for AUAStream(0);
                        v50 = v49;
                      }

                      sub_10007DC24(v50);
                      v51 = v48;
                      if (v48 >> 62)
                      {
                        v52 = _CocoaArrayWrapper.endIndex.getter();
                        if (v52)
                        {
LABEL_80:
                          v53 = 0;
                          while (1)
                          {
                            if ((v51 & 0xC000000000000001) != 0)
                            {
                              v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                            }

                            else
                            {
                              if (v53 >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
                              {
                                goto LABEL_173;
                              }

                              v54 = *(v51 + 8 * v53 + 32);
                            }

                            v55 = v54;
                            v56 = v53 + 1;
                            if (__OFADD__(v53, 1))
                            {
                              __break(1u);
LABEL_173:
                              __break(1u);
                              goto LABEL_174;
                            }

                            if (*(*(*&v54[OBJC_IVAR___AUAStream_interface] + 32) + 2) == *(*(v37 + 32) + 2))
                            {
                              break;
                            }

                            ++v53;
                            if (v56 == v52)
                            {
                              goto LABEL_67;
                            }
                          }

                          ActiveStreamingInterface.streamFormats(forSamplingRate:inRateRange:nonStreamingTerminal:)(v111, v114, v55 + OBJC_IVAR___AUAStream_otherTerminal);
                          v36 = v123;
                          if (v118)
                          {

                            return;
                          }

                          if (*(v126 + 16))
                          {
                            v58 = v57;
                            v59 = sub_10001D260(v55);
                            if (v60)
                            {
                              v61 = *(*(v126 + 56) + 8 * v59);
                            }

                            else
                            {
                              v61 = _swiftEmptyArrayStorage;
                            }

                            v57 = v58;
                          }

                          else
                          {
                            v61 = _swiftEmptyArrayStorage;
                          }

                          sub_10007DC3C(v57);
                          v62 = swift_isUniquelyReferenced_nonNull_native();
                          sub_100083DB8(v61, v55, v62);

                          v1 = v126;
                          v35 = v122;
                          goto LABEL_55;
                        }
                      }

                      else
                      {
                        v52 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v52)
                        {
                          goto LABEL_80;
                        }
                      }

LABEL_67:

                      v35 = v122;
                      v36 = v123;
                      v44 = v41 & 0xC000000000000001;
                      v42 = v120;
                      if (v43 == v120)
                      {
                        break;
                      }
                    }

                    else
                    {

                      if (v43 == v42)
                      {
                        break;
                      }
                    }
                  }
                }
              }

              else
              {
                v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v42)
                {
                  goto LABEL_66;
                }
              }

              v1 = v126;
            }

            else
            {
            }

LABEL_55:
            ;
          }

          while (v36 != v35);
        }
      }

      else
      {
        v35 = *(v113 + 16);
        if (v35)
        {
          goto LABEL_53;
        }
      }

LABEL_34:

      v24 = v110;
      if (v110 == v102)
      {
        goto LABEL_106;
      }
    }
  }

LABEL_107:

  if (active)
  {
    v63 = swift_getObjectType();
    (*(v108 + 24))(v106, 0, v63, v108);
  }

LABEL_161:
  v89 = 1 << *(v1 + 32);
  v90 = -1;
  if (v89 < 64)
  {
    v90 = ~(-1 << v89);
  }

  v91 = v90 & *(v1 + 64);
  v92 = (v89 + 63) >> 6;

  v93 = 0;
  if (v91)
  {
    while (1)
    {
      v94 = v93;
LABEL_168:
      v51 = *(*(v1 + 48) + ((v94 << 9) | (8 * __clz(__rbit64(v91)))));

      sub_1000ACF28(v95);
      if (v118)
      {
        break;
      }

      v91 &= v91 - 1;

      v93 = v94;
      if (!v91)
      {
        goto LABEL_165;
      }
    }

LABEL_174:

LABEL_175:
  }

  else
  {
LABEL_165:
    while (1)
    {
      v94 = v93 + 1;
      if (__OFADD__(v93, 1))
      {
        break;
      }

      if (v94 >= v92)
      {
        goto LABEL_175;
      }

      v91 = *(v1 + 64 + 8 * v94);
      ++v93;
      if (v91)
      {
        goto LABEL_168;
      }
    }

LABEL_180:
    __break(1u);
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
LABEL_187:
    __break(1u);
LABEL_188:
    __break(1u);
LABEL_189:
    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
  }
}

id AUAAudioDevice.setStreamVisibility(_:_:)(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  v8 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = OBJC_IVAR___AUAAudioDevice_asdInputStreams;
  swift_beginAccess();
  v10 = *&v3[v9];
  v72 = a1;
  v69 = &v72;

  v11 = sub_10001073C(sub_10001ECA0, v68, v10);

  if (v11 & 1) != 0 || (v12 = OBJC_IVAR___AUAAudioDevice_asdOutputStreams, v13 = swift_beginAccess(), v14 = *&v3[v12], v70 = a1, __chkstk_darwin(v13), *&v68[-16] = &v70, , v15 = sub_10001073C(sub_10001EFE8, &v68[-32], v14), result = , (v15))
  {
    if ([a1 direction] == 1768845428)
    {
      result = [v3 inputStreams];
      v17 = result;
      if ((a2 & 1) == 0)
      {
        if (result)
        {
          sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
          v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v70 = a1;
          __chkstk_darwin(v45);
          *&v68[-16] = &v70;
          v46 = sub_10001073C(sub_10001EFE8, &v68[-32], v44);

          if ((v46 & 1) == 0)
          {
            return result;
          }

          v70 = 0;
          v71 = 0xE000000000000000;
          _StringGuts.grow(_:)(24);

          v70 = 0xD000000000000016;
          v71 = 0x800000010012B9A0;
          v47 = [a1 description];
          v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = v49;

          v51._countAndFlagsBits = v48;
          v51._object = v50;
          String.append(_:)(v51);

          v52 = v70;
          v53 = v71;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v54 = sub_10000A1BC(v6, qword_1001794F0);
          sub_10000A2A4(v54, v8);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v55, qword_100179508);
          sub_100039AA0(3, v8, v52, v53);
          v30 = &selRef_removeInputStream_;
          goto LABEL_34;
        }

        goto LABEL_38;
      }

      if (result)
      {
        sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
        v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = a1;
        __chkstk_darwin(v19);
        *&v68[-16] = &v70;
        v20 = sub_10001073C(sub_10001EFE8, &v68[-32], v18);

        if (v20)
        {
          return result;
        }

        v70 = 0;
        v71 = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v70 = 0xD000000000000014;
        v71 = 0x800000010012B9C0;
        v21 = [a1 description];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25._countAndFlagsBits = v22;
        v25._object = v24;
        String.append(_:)(v25);

        v26 = v70;
        v27 = v71;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v28 = sub_10000A1BC(v6, qword_1001794F0);
        sub_10000A2A4(v28, v8);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v29, qword_100179508);
        sub_100039AA0(3, v8, v26, v27);
        v30 = &selRef_addInputStream_;
LABEL_34:

        sub_10000C9D0(v8);
        return [v3 *v30];
      }

      __break(1u);
    }

    else
    {
      result = [v3 outputStreams];
      v31 = result;
      if ((a2 & 1) == 0)
      {
        if (result)
        {
          sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
          v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v70 = a1;
          __chkstk_darwin(v57);
          *&v68[-16] = &v70;
          v58 = sub_10001073C(sub_10001EFE8, &v68[-32], v56);

          if ((v58 & 1) == 0)
          {
            return result;
          }

          v70 = 0;
          v71 = 0xE000000000000000;
          _StringGuts.grow(_:)(25);

          v70 = 0xD000000000000017;
          v71 = 0x800000010012B960;
          v59 = [a1 description];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          v63._countAndFlagsBits = v60;
          v63._object = v62;
          String.append(_:)(v63);

          v64 = v70;
          v65 = v71;
          if (qword_100173CB8 != -1)
          {
            swift_once();
          }

          v66 = sub_10000A1BC(v6, qword_1001794F0);
          sub_10000A2A4(v66, v8);
          if (qword_100173CC0 != -1)
          {
            swift_once();
          }

          v67 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v67, qword_100179508);
          sub_100039AA0(3, v8, v64, v65);
          v30 = &selRef_removeOutputStream_;
          goto LABEL_34;
        }

LABEL_39:
        __break(1u);
        return result;
      }

      if (result)
      {
        sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
        v32 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v70 = a1;
        __chkstk_darwin(v33);
        *&v68[-16] = &v70;
        v34 = sub_10001073C(sub_10001EFE8, &v68[-32], v32);

        if (v34)
        {
          return result;
        }

        v70 = 0;
        v71 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v70 = 0xD000000000000015;
        v71 = 0x800000010012B980;
        v35 = [a1 description];
        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39._countAndFlagsBits = v36;
        v39._object = v38;
        String.append(_:)(v39);

        v40 = v70;
        v41 = v71;
        if (qword_100173CB8 != -1)
        {
          swift_once();
        }

        v42 = sub_10000A1BC(v6, qword_1001794F0);
        sub_10000A2A4(v42, v8);
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v43, qword_100179508);
        sub_100039AA0(3, v8, v40, v41);
        v30 = &selRef_addOutputStream_;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

void *sub_100014214(uint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a1;
  swift_beginAccess();
  v7 = *(v3 + v6);
  if (v7 >> 62)
  {
LABEL_20:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = v9;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        a3(a2);
        if (swift_dynamicCastClass())
        {
          break;
        }

        ++v10;
        if (v9 == v8)
        {
          goto LABEL_17;
        }
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    while (v9 != v8);
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

id sub_1000143B4(char a1, void *a2)
{
  v4 = type metadata accessor for LogID(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v25 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v7._object = 0x800000010012BA90;
  v7._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v7);
  if (a1)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (a1)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  v11 = v24;
  v12 = v25;
  if (qword_100173CB8 != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v13 = sub_10000A1BC(v4, qword_1001794F0);
    sub_10000A2A4(v13, v6);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v14, qword_100179508);
    sub_100039AA0(1, v6, v11, v12);

    v15 = sub_10000C9D0(v6);
    v11 = a2;
    v17 = AUAAudioDevice.inputAUANullStreams()(v15, v16);
    v6 = v17;
    if (v17 >> 62)
    {
      break;
    }

    v4 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_24;
    }

LABEL_12:
    v12 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v18 = *(v6 + 8 * v12 + 32);
      }

      v19 = v18;
      v20 = (v12 + 1);
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v11 = a2;
      AUAAudioDevice.setStreamVisibility(_:_:)(v18, a1 & 1);

      ++v12;
      if (v20 == v4)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
    goto LABEL_12;
  }

LABEL_24:

  v21 = type metadata accessor for AUAAudioDevice(0);
  v23.receiver = a2;
  v23.super_class = v21;
  return objc_msgSendSuper2(&v23, "setHidden:", a1 & 1);
}

uint64_t AUAAudioDevice.numAsynchronousOutputStreams.getter()
{
  v1 = *(v0 + OBJC_IVAR___AUAAudioDevice_streamingInterfaces);
  if (v1 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v25 = v1;
    v26 = v1 & 0xC000000000000001;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    v23 = 0;
    v24 = i;
    while (1)
    {
      if (v26)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        if (v3 >= *(v22 + 16))
        {
          goto LABEL_31;
        }

        v5 = __OFADD__(v3++, 1);
        if (v5)
        {
          goto LABEL_29;
        }
      }

      v6 = *(v4 + 40);
      if (!*(v6 + 16))
      {
        goto LABEL_30;
      }

      v27 = v4;
      v7 = *(v6 + 48);
      v8 = *(v6 + 64);
      v9 = *(v6 + 96);
      v30 = *(v6 + 80);
      v31 = v9;
      v29[1] = v7;
      v29[2] = v8;
      v29[0] = *(v6 + 32);
      v10 = *(&v30 + 1);
      v11 = *(*(&v30 + 1) + 16);
      if (v11)
      {
        break;
      }

LABEL_23:
      v16 = *(v27 + 40);
      if (*(v16 + 16))
      {
        v17 = *(v16 + 48);
        v18 = *(v16 + 80);
        v19 = *(v16 + 96);
        v32[2] = *(v16 + 64);
        v32[3] = v18;
        v32[4] = v19;
        v32[0] = *(v16 + 32);
        v32[1] = v17;
        sub_10001EBF0(v32, v28);
        v20 = StreamingAltInterface.synchronizationType.getter();
        sub_10001EC4C(v32);

        if (v20)
        {
          v5 = __OFADD__(v23++, 1);
          if (v5)
          {
            __break(1u);
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_4:
      }

      if (v3 == i)
      {
        return v23;
      }
    }

    sub_10001EBF0(v29, v28);
    v1 = 0;
    v12 = v10 + 104;
    while (v1 < *(v10 + 16))
    {
      v13 = *(v12 - 72);

      if (IOUSBGetEndpointUsageType(v13))
      {
      }

      else
      {
        wMaxPacketSize = v13->wMaxPacketSize;

        if ((wMaxPacketSize - 3) >= 6)
        {
          goto LABEL_22;
        }
      }

      if (IOUSBGetEndpointUsageType(v13) == 2)
      {
LABEL_22:
        v15 = IOUSBGetEndpointDirection(v13);
        sub_10001EC4C(v29);
        i = v24;
        v1 = v25;
        if (v15)
        {
          goto LABEL_4;
        }

        goto LABEL_23;
      }

      ++v1;
      v12 += 80;
      if (v11 == v1)
      {
        sub_10001EC4C(v29);
        i = v24;
        v1 = v25;
        goto LABEL_23;
      }
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  return 0;
}

Swift::Void __swiftcall AUAAudioDevice.createStreams()()
{
  v2 = v0;
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___AUAAudioDevice_asdInputStreams;
  swift_beginAccess();
  v75 = v6;
  *&v0[v6] = _swiftEmptyArrayStorage;

  v7 = OBJC_IVAR___AUAAudioDevice_asdOutputStreams;
  swift_beginAccess();
  *&v0[v7] = _swiftEmptyArrayStorage;

  v8 = [v0 inputStreams];
  if (!v8)
  {
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v9 = v8;
  sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v74 = v7;
  v80 = v3;
  v81 = v5;
  if (v10 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v12 = *(v10 + 8 * v3 + 32);
      }

      v1 = v12;
      v13 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      [v0 removeInputStream:v12];

      ++v3;
      if (v13 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  v14 = [v0 outputStreams];
  if (!v14)
  {
    goto LABEL_108;
  }

  v15 = v14;
  v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v16 >> 62)
  {
    goto LABEL_28;
  }

  for (j = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    v1 = (v16 & 0xC000000000000001);
    while (1)
    {
      if (v1)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v3 = v19;
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      [v2 removeOutputStream:v19];

      ++v18;
      if (v20 == j)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:

  v21 = *&v2[OBJC_IVAR___AUAAudioDevice_function];
  if (v21)
  {
    v3 = *&v2[OBJC_IVAR___AUAAudioDevice_function + 8];
    ObjectType = swift_getObjectType();
    if (!(*(v3 + 112))(ObjectType, v3))
    {
LABEL_34:
      j = AUAAudioDevice.numAsynchronousOutputStreams.getter();
      v28 = swift_getObjectType();
      v29 = (*(v3 + 16))(v28, v3);
      if (v29)
      {
        if (j >= 2)
        {
          v3 = v29;
          v1 = 0xD000000000000018;
          v82 = 0;
          v83 = 0xE000000000000000;
          _StringGuts.grow(_:)(72);
          v30._countAndFlagsBits = 0xD000000000000046;
          v30._object = 0x800000010012B8B0;
          String.append(_:)(v30);
          v84[0] = j;
          v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v31);

          v32 = v82;
          v21 = v83;
          if (qword_100173CB8 == -1)
          {
            goto LABEL_37;
          }

          goto LABEL_106;
        }
      }

      goto LABEL_42;
    }

    v23 = [v2 plugin];
    if (v23)
    {
      v24 = v23;
      v25 = objc_allocWithZone(type metadata accessor for AUANullInputStream());
      v26 = sub_10000DCC0(v24);
      v27 = v75;
      swift_beginAccess();
      j = v26;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v2[v27] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v27] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_100:
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      [v2 addInputStream:j];

      goto LABEL_34;
    }

LABEL_109:
    __break(1u);
    return;
  }

  AUAAudioDevice.numAsynchronousOutputStreams.getter();
LABEL_42:
  v37 = *&v2[OBJC_IVAR___AUAAudioDevice_streamingInterfaces];
  if (v37 >> 62)
  {
    goto LABEL_79;
  }

  v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    goto LABEL_80;
  }

  do
  {
    if (v38 < 1)
    {
      __break(1u);
      goto LABEL_100;
    }

    v21 = 0;
    j = 0;
    v80 = OBJC_IVAR___AUAAudioDevice_logID;
    v81 = v37 & 0xC000000000000001;
    v79 = " failed to publish formats ";
    v77 = 1;
    v76 = 1;
    v78 = v37;
    while (1)
    {
      if (v81)
      {
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v1 = *(v37 + 8 * v21 + 32);
      }

      sub_1000BAFD8(v1, v2);
      v37 = v38;
      v3 = v47;
      if ([v3 direction] == 1768845428)
      {
        break;
      }

      v51 = v74;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v2[v51] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v51] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v52 = v77;
      if ((v77 & 0x8000000000000000) != 0)
      {
        goto LABEL_74;
      }

      if (HIDWORD(v77))
      {
        goto LABEL_76;
      }

      [v3 setStartingChannel:v77];

      active = ActiveStreamingInterface.channelCount()();
      j = v50;
      if (v50)
      {

        j = 0;
        v38 = v37;
        goto LABEL_67;
      }

      v57 = active;

      v77 = v52 + v57;
      if (__OFADD__(v52, v57))
      {
        goto LABEL_77;
      }

      [v2 addOutputStream:v3];

      v38 = v37;
      v37 = v78;
LABEL_50:
      if (v38 == ++v21)
      {
        goto LABEL_80;
      }
    }

    v48 = v75;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v2[v48] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v2[v48] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v38 = v37;
    v37 = v76;
    if ((v76 & 0x8000000000000000) == 0)
    {
      if (HIDWORD(v76))
      {
        goto LABEL_75;
      }

      [v3 setStartingChannel:v76];

      v49 = ActiveStreamingInterface.channelCount()();
      j = v50;
      if (v50)
      {

        j = 0;
LABEL_67:
        v37 = v78;
        v82 = 0;
        v83 = 0xE000000000000000;
        _StringGuts.grow(_:)(28);
        v54 = [v2 deviceName];
        if (v54)
        {
          v39 = v54;
          v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v42 = v41;
        }

        else
        {
          v40 = 0x206E776F6E6B6E55;
          v42 = 0xEE00656369766564;
        }

        v43._countAndFlagsBits = v40;
        v43._object = v42;
        String.append(_:)(v43);

        v44._object = (v79 | 0x8000000000000000);
        v44._countAndFlagsBits = 0xD000000000000018;
        String.append(_:)(v44);
        v84[0] = v50;
        sub_100001AB4(&qword_100177270, &qword_100120A40);
        _print_unlocked<A, B>(_:_:)();
        v45 = v82;
        v3 = v83;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v46 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v46, qword_100179508);
        sub_100039F58(1, &v2[v80], v45, v3);

        goto LABEL_50;
      }

      v55 = v49;

      v56 = __OFADD__(v37, v55);
      v76 = v37 + v55;
      v37 = v78;
      if (v56)
      {
        goto LABEL_78;
      }

      [v2 addInputStream:v3];

      goto LABEL_50;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v38 = _CocoaArrayWrapper.endIndex.getter();
  }

  while (v38);
LABEL_80:
  while (2)
  {
    v58 = AUAAudioDevice.inputAUAStreams()();
    if (v58 >> 62)
    {
      goto LABEL_85;
    }

    v59 = &unk_100174000;
    if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        if ((v58 & 0xC000000000000001) != 0)
        {
LABEL_98:
          v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_91;
        }

        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        __break(1u);
LABEL_85:
        v60 = v58;
        v61 = _CocoaArrayWrapper.endIndex.getter();
        v58 = v60;
        v59 = &unk_100174000;
      }

      while (v61);
    }

    v32 = v2;
    v58 = AUAAudioDevice.outputAUAStreams()();
    if (v58 >> 62)
    {
      v32 = v58;
      v70 = _CocoaArrayWrapper.endIndex.getter();
      v58 = v32;
      if (!v70)
      {
LABEL_102:

        v71 = OBJC_IVAR___AUAAudioDevice_logID;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v72, qword_100179508);
        sub_100039F58(1, &v2[v71], 0xD00000000000002ALL, 0x800000010012B880);
        goto LABEL_92;
      }
    }

    else if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_102;
    }

    if ((v58 & 0xC000000000000001) != 0)
    {
      goto LABEL_98;
    }

    if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_106:
      swift_once();
LABEL_37:
      v33 = sub_10000A1BC(v80, qword_1001794F0);
      v34 = v81;
      sub_10000A2A4(v33, v81);
      if (qword_100173CC0 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for AUALog(0);
      sub_10000A1BC(v35, qword_100179508);
      sub_100039AA0(1, v34, v32, v21);

      sub_10000C9D0(v34);
      v21 = "output stream count = ";
      sub_100001AB4(&unk_100177280, &unk_100120B70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10011DE90;
      *(inited + 32) = v1 + 5;
      *(inited + 40) = 0x800000010012B940;
      sub_10001EBA8(0, &qword_100174A30, NSNumber_ptr);
      *(inited + 48) = NSNumber.init(integerLiteral:)(j);
      j = sub_10000AB64(inited);
      swift_setDeallocating();
      sub_10000D040(inited + 32, &qword_100174A38, &qword_100120180);
      sub_1000FC32C((v1 + 29), 0x800000010012B900, j);

      continue;
    }

    break;
  }

LABEL_90:
  v62 = *(v58 + 32);
LABEL_91:
  v63 = v62;

  v64 = v59[464];
  v65 = *&v2[v64];
  *&v2[v64] = v63;

LABEL_92:
  v66 = *&v2[v59[464]];
  if (v66)
  {
    v67 = *((swift_isaMask & *v66) + 0x240);
    v68 = v66;
    if ((v67() & 0xFFFFFFFE) == 2)
    {
      v69 = AUAAudioDevice.usbControllerClockDomain()();
    }

    else
    {
      v69 = 0;
    }

    [v2 setClockDomain:v69];
  }
}

Swift::Void __swiftcall AUAAudioDevice.clockChanged()()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR___AUAAudioDevice_clock + 8];
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);
  if (v5)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v4;
  }

  v7._countAndFlagsBits = 0x3A6574615277656ELL;
  v7._object = 0xE900000000000020;
  String.append(_:)(v7);
  Double.write<A>(to:)();
  v8 = OBJC_IVAR___AUAAudioDevice_logID;
  v9 = qword_100173CC0;
  v10 = v0;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for AUALog(0);
  v12 = sub_10000A1BC(v11, qword_100179508);
  sub_10003B08C(3, "setSamplingRate", 15, 2, &v0[v8], 0, 0xE000000000000000, v12, v6, v10);

  AUAAudioDevice.publishStreamFormats()();
  if (v13)
  {
    v14 = 0xEE00656369766564;
    v15 = 0x206E776F6E6B6E55;
    _StringGuts.grow(_:)(57);
    v16._object = 0x800000010012B820;
    v16._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v16);
    if (*&v10[OBJC_IVAR___AUAAudioDevice_function])
    {
      v17 = *&v10[OBJC_IVAR___AUAAudioDevice_function + 8];
      v18 = swift_getObjectType();
      v19 = (*(v17 + 16))(v18, v17);
      if (v19)
      {
        v20 = v19;
        v21 = [v19 boxName];

        if (v21)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v22;
        }
      }
    }

    v23._countAndFlagsBits = v15;
    v23._object = v14;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0xD00000000000001BLL;
    v24._object = 0x800000010012B840;
    String.append(_:)(v24);
    sub_100001AB4(&qword_100177270, &qword_100120A40);
    _print_unlocked<A, B>(_:_:)();
    sub_100039F58(3, &v1[v8], 0, 0xE000000000000000);
  }
}

Swift::Bool __swiftcall AUAAudioDevice.inputStreamsTransfersPerMSIs8()()
{
  v0 = AUAAudioDevice.inputAUAStreams()();
  if (v0 >> 62)
  {
    goto LABEL_22;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for AUAStream(0);

  v1 = v0;
LABEL_3:
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v0 >> 62))
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_5:
      v4 = 0;
      v5 = v1 & 0xC000000000000001;
      v6 = 1;
      while (1)
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v2 + 16))
          {
            goto LABEL_20;
          }

          v7 = *(v0 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          type metadata accessor for AUAStream(0);
          v1 = _bridgeCocoaArray<A>(_:)();

          v0 = v1;
          goto LABEL_3;
        }

        v10 = [v7 physicalFormat];

        if (!v10)
        {
          goto LABEL_7;
        }

        type metadata accessor for AUAStreamFormat();
        v11 = swift_dynamicCastClass();
        if (!v11)
        {
          break;
        }

        v12 = *(v11 + OBJC_IVAR___AUAStreamFormat_altSetting);

        if (!v12)
        {
          goto LABEL_7;
        }

        v13 = *(v12 + 104);

        v14 = *(v13 + 96);

        if (HIDWORD(v14))
        {
          goto LABEL_21;
        }

        v6 &= v14 > 7;
LABEL_8:
        ++v4;
        if (v9 == v3)
        {
          goto LABEL_27;
        }
      }

LABEL_7:
      v6 = 0;
      goto LABEL_8;
    }

    goto LABEL_26;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
LABEL_26:
    v6 = 0;
    goto LABEL_27;
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (v3)
  {
    goto LABEL_5;
  }

  v6 = 1;
LABEL_27:

  return v6;
}

Swift::Void __swiftcall AUAAudioDevice.updateSafetyOffsets()()
{
  v3 = v0;
  v4 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
  swift_beginAccess();
  v0[v4] = 0;
  p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
  if (!*&v0[OBJC_IVAR___AUAAudioDevice_function] || (v6 = *&v0[OBJC_IVAR___AUAAudioDevice_function + 8], ObjectType = swift_getObjectType(), (*(v6 + 24))(ObjectType, v6), swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), , !Strong))
  {
    v13 = 1500;
    v12 = 1000;
    goto LABEL_10;
  }

  v8 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService);
  v2 = sub_1000FD338(v8);
  v10 = v9;

  v11 = v2 == 0x49434872657355 && v10 == 0xE700000000000000;
  if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v12 = 100000;

    v13 = 100000;
    p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
    goto LABEL_10;
  }

  p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
  if (*(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_speed) == 1)
  {

LABEL_39:
    v13 = 1500;
    v12 = 1000;
    goto LABEL_40;
  }

  if (v2 == 1229146200 && v10 == 0xE400000000000000)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (!AUAAudioDevice.hostEnabledForLowestLatency()())
  {
    v3[v4] = 0;
    goto LABEL_39;
  }

  v24 = AUAAudioDevice.inputStreamsTransfersPerMSIs8()();
  v3[v4] = v24;
  if (v24)
  {
    v12 = 250;
  }

  else
  {
    v12 = 1000;
  }

  if (v24)
  {
    v13 = 250;
  }

  else
  {
    v13 = 1500;
  }

LABEL_40:
  if (os_variant_has_internal_content())
  {
    if (qword_100173CF8 != -1)
    {
      swift_once();
    }

    v46 = qword_100179640;
    v25 = *(qword_100179640 + 16);
    if (v25)
    {
      v2 = v25;
      v45 = " is out of range [0, 200000]";
      v26 = String._bridgeToObjectiveC()();
      v27 = [v2 objectForKey:v26];

      if (!v27)
      {

        v47 = 0u;
        v48 = 0u;
        sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
        p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
        goto LABEL_54;
      }

      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
      v28 = *(v46 + 16);
      if (!v28)
      {
        v13 = 0;
        p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
        goto LABEL_63;
      }

      v29 = v28;
      v30 = String._bridgeToObjectiveC()();
      v2 = [v29 integerForKey:v30];

      p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
      if ((v2 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!HIDWORD(v2))
      {
        if (v2 <= 0x30D40)
        {
          v13 = v2;
          goto LABEL_54;
        }

        *&v47 = 0;
        *(&v47 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(64);
        v31._countAndFlagsBits = 0xD000000000000022;
        v31._object = 0x800000010012B7F0;
        String.append(_:)(v31);
        v49 = v2;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        v33._countAndFlagsBits = 0xD00000000000001CLL;
        v33._object = 0x800000010012B7B0;
        String.append(_:)(v33);
        v2 = *(&v47 + 1);
        v30 = v47;
        v29 = OBJC_IVAR___AUAAudioDevice_logID;
        if (qword_100173CC0 != -1)
        {
          goto LABEL_82;
        }

        while (1)
        {
          v34 = type metadata accessor for AUALog(0);
          sub_10000A1BC(v34, qword_100179508);
          sub_100039AA0(4, v29 + v3, v30, v2);

LABEL_54:
          v35 = *(v46 + 16);
          if (!v35)
          {
            goto LABEL_63;
          }

          p_superclass = ", outputSafetyOffset ";
          v36 = v35;
          v37 = String._bridgeToObjectiveC()();
          v2 = [v36 objectForKey:v37];

          if (!v2)
          {

            v47 = 0u;
            v48 = 0u;
            sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
            p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
            goto LABEL_10;
          }

          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          sub_10000D040(&v47, &unk_100174A20, &unk_100120170);
          v38 = *(v46 + 16);
          if (!v38)
          {
            break;
          }

          v30 = v38;
          v29 = String._bridgeToObjectiveC()();
          v2 = [v30 integerForKey:v29];

          if ((v2 & 0x8000000000000000) != 0)
          {
LABEL_80:
            __break(1u);
          }

          else
          {
            p_superclass = &OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe.superclass;
            if (!HIDWORD(v2))
            {
              if (v2 > 0x30D40)
              {
                *&v47 = 0;
                *(&v47 + 1) = 0xE000000000000000;
                _StringGuts.grow(_:)(65);
                v39._countAndFlagsBits = 0xD000000000000023;
                v39._object = 0x800000010012B780;
                String.append(_:)(v39);
                v49 = v2;
                v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v40);

                v41._countAndFlagsBits = 0xD00000000000001CLL;
                v41._object = 0x800000010012B7B0;
                String.append(_:)(v41);
                v2 = *(&v47 + 1);
                v42 = v47;
                v43 = OBJC_IVAR___AUAAudioDevice_logID;
                if (qword_100173CC0 != -1)
                {
                  swift_once();
                }

                v44 = type metadata accessor for AUALog(0);
                sub_10000A1BC(v44, qword_100179508);
                sub_100039AA0(4, &v3[v43], v42, v2);

                goto LABEL_63;
              }

LABEL_66:

              v12 = v2;
              goto LABEL_10;
            }
          }

          __break(1u);
LABEL_82:
          swift_once();
        }

        v2 = 0;
        p_superclass = (&OBJC_METACLASS____TtC9AUASDCore20AbortSafeUSBHostPipe + 8);
        goto LABEL_66;
      }

      __break(1u);
      goto LABEL_80;
    }
  }

LABEL_63:

LABEL_10:
  p_type = &stru_10016FFF0.type;
  [v3 samplingRate];
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_68;
  }

  if (v15 <= -1.0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v15 >= 1.84467441e19)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (!is_mul_ok(v15, v13))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v16 = v15 * v13;
  Strong = 0xF423FFFE17B7FLL;
  if (v16 > 0xF423FFFE17B7FLL)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v2 = 0x431BDE82D7B634DBLL;
  [v3 setInputSafetyOffset:(v16 / 0xF4240) + 2];
  [v3 samplingRate];
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  if (v17 <= -1.0)
  {
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (!is_mul_ok(v17, v12))
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v18 = v17 * v12;
  if (v18 > 0xF423FFFE17B7FLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  [v3 setOutputSafetyOffset:(v18 / 0xF4240) + 2];
  *&v47 = 0;
  *(&v47 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v47 = 0xD000000000000012;
  *(&v47 + 1) = 0x800000010012B720;
  v49 = [v3 inputSafetyOffset];
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._object = 0x800000010012B740;
  v20._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v20);
  v49 = [v3 outputSafetyOffset];
  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  Strong = *(&v47 + 1);
  p_type = v47;
  v2 = p_superclass[156];
  if (qword_100173CC0 != -1)
  {
LABEL_77:
    swift_once();
  }

  v22 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v22, qword_100179508);
  sub_100039AA0(4, &v3[v2], p_type, Strong);
}

id sub_100016440(char *a1, double a2)
{
  v3 = v2;
  v5 = a1;
  v7 = *&a1[OBJC_IVAR___AUAAudioDevice_clock + 8];
  ObjectType = swift_getObjectType();
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_67;
  }

  if (a2 <= -1.0)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (a2 >= 1.84467441e19)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    type metadata accessor for AUAStream(0);
    v13 = _bridgeCocoaArray<A>(_:)();
    goto LABEL_8;
  }

  v9 = ObjectType;
  (*(v7 + 24))(a2, 0, ObjectType, v7);
  v10 = (*(v7 + 16))(v9, v7);
  if (v11)
  {
    v10 = 0.0;
  }

  [v5 setSamplingRate:v10];
  v12 = AUAAudioDevice.inputAUAStreams()();
  if (v12 >> 62)
  {
    goto LABEL_70;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for AUAStream(0);
  v13 = v12;
LABEL_8:

  v14 = AUAAudioDevice.outputAUAStreams()();
  if (v14 >> 62)
  {
    type metadata accessor for AUAStream(0);
    v15 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for AUAStream(0);
    v15 = v14;
  }

  sub_10007DC24(v15);
  v16 = v13;
  p_type = &stru_10016FFF0.type;
  if (!(v13 >> 62))
  {
    v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_12:
      v46 = v3;
      v47 = v5;
      v50 = 0;
      i = 0;
      v20 = 0;
      v48 = v16;
      v49 = v16 & 0xC000000000000001;
      while (1)
      {
        if (v49)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v23 = *(v16 + 8 * v20 + 32);
        }

        v24 = v23;
        v25 = [v23 direction];
        [v5 p_type[478]];
        if (v25 != 1768845428)
        {
          if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_55;
          }

          if (v26 <= -1.0)
          {
            goto LABEL_57;
          }

          if (v26 >= 1.84467441e19)
          {
            goto LABEL_59;
          }

          v3 = v26;
          v33 = *&v24[OBJC_IVAR___AUAStream_latencyOverride];
          if (v33)
          {

            v34 = dispatch thunk of CustomStringConvertible.description.getter();
            if (*(v33 + 16))
            {
              v36 = sub_10001D11C(v34, v35);
              v5 = v37;
              p_type = (&stru_10016FFF0 + 16);

              if (v5)
              {
                v21 = *(*(v33 + 56) + 8 * v36);

                if ((v21 & 0x8000000000000000) != 0)
                {
                  goto LABEL_64;
                }

                v5 = v47;
                if (HIDWORD(v21))
                {
                  goto LABEL_65;
                }

LABEL_14:
                v22 = v50;
                if (v50 <= v21)
                {
                  v22 = v21;
                }

                v50 = v22;
                goto LABEL_17;
              }
            }

            else
            {
            }

            v5 = v47;
          }

          v39 = *&v24[OBJC_IVAR___AUAStream_latencyInNs];

          if (!is_mul_ok(v39, v3))
          {
            goto LABEL_61;
          }

          if (v39 * v3 > 0x3B9AC9FFFFFFFFFFLL)
          {
            __break(1u);
LABEL_53:

            v40 = v50;
            goto LABEL_78;
          }

          v21 = v39 * v3 / 0x3B9ACA00;
          goto LABEL_14;
        }

        if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        if (v26 <= -1.0)
        {
          goto LABEL_56;
        }

        if (v26 >= 1.84467441e19)
        {
          goto LABEL_58;
        }

        v3 = v26;
        v27 = *&v24[OBJC_IVAR___AUAStream_latencyOverride];
        if (!v27)
        {
          goto LABEL_42;
        }

        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        if (!*(v27 + 16))
        {
          break;
        }

        v30 = sub_10001D11C(v28, v29);
        v5 = v31;

        if ((v5 & 1) == 0)
        {
          goto LABEL_41;
        }

        v32 = *(*(v27 + 56) + 8 * v30);

        p_type = (&stru_10016FFF0 + 16);
        if ((v32 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        v5 = v47;
        if (HIDWORD(v32))
        {
          goto LABEL_66;
        }

LABEL_45:
        if (i <= v32)
        {
          i = v32;
        }

        else
        {
          i = i;
        }

LABEL_17:
        ++v20;
        v16 = v48;
        if (v18 == v20)
        {
          goto LABEL_53;
        }
      }

LABEL_41:

      v5 = v47;
      p_type = (&stru_10016FFF0 + 16);
LABEL_42:
      v38 = *&v24[OBJC_IVAR___AUAStream_latencyInNs];

      if (!is_mul_ok(v38, v3))
      {
        goto LABEL_60;
      }

      if (v38 * v3 > 0x3B9AC9FFFFFFFFFFLL)
      {
        goto LABEL_62;
      }

      v32 = v38 * v3 / 0x3B9ACA00;
      goto LABEL_45;
    }

    goto LABEL_76;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

  v41 = _CocoaArrayWrapper.endIndex.getter();
  if (v41)
  {
    v18 = v41;
    if (v41 >= 1)
    {
      v16 = v13;
      goto LABEL_12;
    }

    __break(1u);
LABEL_76:

    v40 = "USB Audio Device";
    p_type = OBJC_IVAR___AUAAudioDevice_logID;
    if (qword_100173CC0 != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_77;
  }

  v40 = 0;
  for (i = 0; ; i = 0)
  {
LABEL_78:
    [v5 p_type[478]];
    v44 = v43 * 0.25;
    if ((*&v44 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_87;
    }

    if (v44 > -1.0)
    {
      break;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
LABEL_77:
    v42 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v42, qword_100179508);
    sub_100039F58(3, p_type + v5, 0xD00000000000001FLL, (v40 | 0x8000000000000000));
    v40 = 0;
    p_type = &stru_10016FFF0.type;
  }

  if (v44 >= 4294967300.0)
  {
    goto LABEL_88;
  }

  [v5 setTimestampPeriod:v44];
  AUAAudioDevice.updateSafetyOffsets()();
  if (!i)
  {
    i = [v5 inputSafetyOffset];
  }

  [v5 setInputLatency:i];
  if (!v40)
  {
    v40 = [v5 outputSafetyOffset];
  }

  return [v5 setOutputLatency:v40];
}

void AUAAudioDevice.requestConfigurationChangeWithTrace(function:file:line:_:)(void **a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  aBlock = a1;
  v30 = a2;

  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = a3;
  v15._object = a4;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 2108704;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  v35 = a5;
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v30, &v7[OBJC_IVAR___AUAAudioDevice_logID]);

  v19 = *&v7[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  if (a6)
  {
    v18 = swift_allocObject();
    v20 = v18;
    *(v18 + 16) = a6;
    *(v18 + 24) = a7;
    v21 = sub_10001DC08;
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  aBlock = v21;
  v30 = v20;
  v22 = *(v19 + 16);
  v23 = __chkstk_darwin(v18);
  __chkstk_darwin(v23);
  sub_10001DB5C(a6, a7);

  os_unfair_lock_lock(v22 + 4);
  sub_10001DB44(&v35);
  os_unfair_lock_unlock(v22 + 4);
  v24 = v35;

  sub_10001ED94(v21, v20);
  if (v24 == 1)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v8;
    v33 = sub_10000CFD4;
    v34 = v25;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_1000172D4;
    v32 = &unk_1001610A0;
    v26 = _Block_copy(&aBlock);
    v27 = v8;

    v28.receiver = v27;
    v28.super_class = type metadata accessor for AUAAudioDevice(0);
    objc_msgSendSuper2(&v28, "requestConfigurationChange:", v26);
    _Block_release(v26);
  }
}

void sub_100016DE8(char *a1)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v32[-v7];
  v9 = OBJC_IVAR___AUAAudioDevice_logID;
  v10 = qword_100173CB0;
  v36 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v11 = &a1[v9];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AUALog(0);
    v13 = sub_10000A1BC(v12, qword_100179508);
    v36 = v36;
    sub_10003BD38(4, "AUAAudioDevice_dispatchConfigurationChange", 42, 2u, v11, 0, 0xE000000000000000, v13, v36);
    v14 = v36;
  }

  else
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for AUALog(0);
    v16 = sub_10000A1BC(v15, qword_100179508);
    v17 = &v11[*(type metadata accessor for LogID(0) + 20)];
    v34 = *(v3 + 16);
    v34(v8, v17, v2);
    v35 = v16;
    v18 = OSSignposter.logHandle.getter();
    v19 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v19;
      v22 = v21;
      *&v37 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_100035760(0, 0xE000000000000000, &v37);
      v23 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, v33, v23, "AUAAudioDevice_dispatchConfigurationChange", "%{public}s", v20, 0xCu);
      sub_10000CE78(v22);
    }

    v34(v6, v8, v2);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v24 = OSSignpostIntervalState.init(id:isOpen:)();
    v25 = (*(v3 + 8))(v8, v2);
    v26 = *&v36[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    while (1)
    {
      v27 = *(v26 + 16);
      __chkstk_darwin(v25);

      os_unfair_lock_lock(v27 + 4);
      sub_10001EEA4(&v37);
      os_unfair_lock_unlock(v27 + 4);
      v28 = v37;

      if (!v28)
      {
        break;
      }

      (v28)(v29);
      v30 = sub_10001ED94(v28, *(&v28 + 1));
      v31 = *(v26 + 16);
      __chkstk_darwin(v30);

      os_unfair_lock_lock(v31 + 4);
      sub_10001EEA4(&v37);
      os_unfair_lock_unlock(v31 + 4);
    }

    sub_1000461FC(v35, "AUAAudioDevice_dispatchConfigurationChange", 42, 2, v24);
  }
}

uint64_t sub_1000172D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void AUAAudioDevice.requestConfigurationChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  aBlock = 0xD00000000000001ELL;
  v22 = 0x800000010012AED0;
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  v7._object = 0x800000010012AEF0;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 2108704;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v27 = 822;
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, 0xD00000000000001ELL, 0x800000010012AED0, &v2[OBJC_IVAR___AUAAudioDevice_logID]);

  v11 = *&v2[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
  if (a1)
  {
    v10 = swift_allocObject();
    v12 = v10;
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    v13 = sub_10001F01C;
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  aBlock = v13;
  v22 = v12;
  v14 = *(v11 + 16);
  v15 = __chkstk_darwin(v10);
  __chkstk_darwin(v15);
  sub_10001DB5C(a1, a2);

  os_unfair_lock_lock(v14 + 4);
  sub_10001EF80(&v27);
  os_unfair_lock_unlock(v14 + 4);
  v16 = v27;

  sub_10001ED94(v13, v12);
  if (v16 == 1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v3;
    v25 = sub_10001EFC8;
    v26 = v17;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000172D4;
    v24 = &unk_100161118;
    v18 = _Block_copy(&aBlock);
    v19 = v3;

    v20.receiver = v19;
    v20.super_class = type metadata accessor for AUAAudioDevice(0);
    objc_msgSendSuper2(&v20, "requestConfigurationChange:", v18);
    _Block_release(v18);
  }
}

Swift::Void __swiftcall AUAAudioDevice.increaseLockDelay()()
{
  v1 = v0;
  v2 = type metadata accessor for LogID(0);
  v3 = __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___AUAAudioDevice_extraLockDelayMS;
  v7 = *&v0[OBJC_IVAR___AUAAudioDevice_extraLockDelayMS];
  if (v7 <= 0x258)
  {
    v8 = v3;
    v9 = v7 + 50;
    v10 = v7 == 0;
    v11 = 100;
    if (!v10)
    {
      v11 = v9;
    }

    *&v0[OBJC_IVAR___AUAAudioDevice_extraLockDelayMS] = v11;
    aBlock = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v12._countAndFlagsBits = 0xD000000000000034;
    v12._object = 0x800000010012AF10;
    String.append(_:)(v12);
    v38 = *&v0[v6];
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v14 = aBlock;
    v15 = v33;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v16 = sub_10000A1BC(v8, qword_1001794F0);
    sub_10000A2A4(v16, v5);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v17, qword_100179508);
    sub_100039AA0(4, v5, v14, v15);

    sub_10000C9D0(v5);
    aBlock = 0xD000000000000013;
    v33 = 0x800000010012AF50;
    v18._countAndFlagsBits = 8236;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0xD00000000000001BLL;
    v19._object = 0x800000010012AEF0;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 2108704;
    v20._object = 0xE300000000000000;
    String.append(_:)(v20);
    v38 = 839;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v33, &v1[OBJC_IVAR___AUAAudioDevice_logID]);

    v22 = *&v1[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v23 = swift_allocObject();
    v23[2] = AUAError.init(_:message:);
    v23[3] = 0;
    aBlock = sub_10001F01C;
    v33 = v23;
    v24 = *(v22 + 16);
    v25 = __chkstk_darwin(v23);
    *(&v31 - 2) = v22;
    *(&v31 - 1) = &aBlock;
    __chkstk_darwin(v25);
    *(&v31 - 2) = sub_10001EF50;
    *(&v31 - 1) = v26;

    os_unfair_lock_lock(v24 + 4);
    sub_10001EF80(&v38);
    os_unfair_lock_unlock(v24 + 4);
    LODWORD(v22) = v38;

    if (v22 == 1)
    {
      v27 = swift_allocObject();
      *(v27 + 16) = v1;
      v36 = sub_10001EFC8;
      v37 = v27;
      aBlock = _NSConcreteStackBlock;
      v33 = 1107296256;
      v34 = sub_1000172D4;
      v35 = &unk_1001611B8;
      v28 = _Block_copy(&aBlock);
      v29 = v1;

      v30 = type metadata accessor for AUAAudioDevice(0);
      v31.receiver = v29;
      v31.super_class = v30;
      objc_msgSendSuper2(&v31, "requestConfigurationChange:", v28);
      _Block_release(v28);
    }
  }
}

unint64_t AUAAudioDevice.getLockDelay(_:)(unint64_t a1)
{
  v5 = v1;
  v7 = type metadata accessor for LogID(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v1 + OBJC_IVAR___AUAAudioDevice_function;
  v12 = *(v1 + OBJC_IVAR___AUAAudioDevice_function);
  if (v12)
  {
    v2 = v8;
    v13 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v15 = (*(v13 + 16))(ObjectType, v13);
    if (v15)
    {
      v4 = v15;
      if (qword_100173CF8 == -1)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  v23 = 0;
LABEL_34:
  v28 = *(v5 + OBJC_IVAR___AUAAudioDevice_extraLockDelayMS);
  v29 = __CFADD__(v23, v28);
  v30 = v23 + v28;
  if (v29)
  {
    __break(1u);
LABEL_39:
    swift_once();
LABEL_7:
    v20 = v12 - 32;
    v21 = sub_10000A1BC(v2, qword_1001794F0);
    sub_10000A2A4(v21, v10);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for AUALog(0);
    v12 = sub_10000A1BC(v22, qword_100179508);
    sub_100039AA0(4, v10, v3 + 19, (v20 | 0x8000000000000000));
    sub_10000C9D0(v10);
    while (1)
    {
      if (a1 >> 62)
      {
        v10 = _CocoaArrayWrapper.endIndex.getter();
        v33 = v4;
        if (!v10)
        {
LABEL_32:
          v23 = 0;
LABEL_33:

          goto LABEL_34;
        }
      }

      else
      {
        v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v33 = v4;
        if (!v10)
        {
          goto LABEL_32;
        }
      }

      v2 = 0;
      v23 = 0;
      v3 = a1 & 0xC000000000000001;
      v4 = (a1 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v3)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v24 = *(a1 + 8 * v2 + 32);
        }

        v12 = v24;
        v25 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          break;
        }

        sub_1000ACB88();
        v27 = v26;

        if (v27 > v23)
        {
          v23 = v27;
        }

        ++v2;
        if (v25 == v10)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      swift_once();
LABEL_4:
      v16 = *(qword_100179640 + 16);
      if (v16)
      {
        v3 = 0xD00000000000001ALL;
        v17 = v16;
        v18 = String._bridgeToObjectiveC()();
        v19 = [v17 BOOLForKey:v18];

        if (v19)
        {
          v12 = "getLockDelay disabling long lock delay errata";
          if (qword_100173CB8 != -1)
          {
            goto LABEL_39;
          }

          goto LABEL_7;
        }
      }

      v12 = *&v4[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList];
      if (v12)
      {
        if (sub_1000AA808(0x13u, *&v4[OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList]))
        {

          v23 = 100;
          goto LABEL_34;
        }

        if (sub_1000AA808(0x18u, v12))
        {

          v23 = 200;
          goto LABEL_34;
        }
      }
    }
  }

  if (v30 <= 0x18)
  {
    return 24;
  }

  else
  {
    return v30;
  }
}

void sub_100017E78(char *a1@<X0>, _DWORD *a2@<X8>)
{
  v41 = a2;
  v4 = type metadata accessor for OSSignpostID();
  v40 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v34 - v8;
  v42 = 0;
  v43 = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v10._countAndFlagsBits = 0x676E696C706D6173;
  v10._object = 0xED00002065746152;
  String.append(_:)(v10);
  [a1 samplingRate];
  Double.write<A>(to:)();
  v11._object = 0x800000010012BB10;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v45 = [a1 timestampPeriod];
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v14 = v42;
  v13 = v43;
  v15 = OBJC_IVAR___AUAAudioDevice_logID;
  v16 = qword_100173CB0;
  v39 = a1;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = &a1[v15];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for AUALog(0);
    v19 = sub_10000A1BC(v18, qword_100179508);
    v20 = v39;
    sub_10004BE18(4, "AUAAudioDevice_performStartIO", 29, 2, &a1[v15], v14, v13, v19, v20);
    if (!v2)
    {
      v22 = v21;

LABEL_14:
      *v41 = v22;
      return;
    }

    __break(1u);
  }

  else
  {
    v35 = v14;
    v37 = v7;
    v38 = v2;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for AUALog(0);
    v24 = sub_10000A1BC(v23, qword_100179508);
    v25 = type metadata accessor for LogID(0);
    v26 = *(v40 + 16);
    v26(v9, &v17[*(v25 + 20)], v4);

    v36 = v24;
    v27 = OSSignposter.logHandle.getter();
    v28 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v44 = v28;
      v31 = v30;
      v42 = v30;
      *v29 = 136446210;
      *(v29 + 4) = sub_100035760(v35, v13, &v42);
      v32 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v27, v44, v32, "AUAAudioDevice_performStartIO", "%{public}s", v29, 0xCu);
      sub_10000CE78(v31);
    }

    v26(v37, v9, v4);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v17 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v40 + 8))(v9, v4);
    v33 = v38;
    v20 = v39;
    sub_100018384(v39, &v42);
    if (!v33)
    {

      sub_1000461FC(v36, "AUAAudioDevice_performStartIO", 29, 2, v17);

      v22 = v42;
      goto LABEL_14;
    }
  }

  sub_1000461FC(v36, "AUAAudioDevice_performStartIO", 29, 2, v17);

  __break(1u);
}

void sub_100018384(char *a1@<X0>, _DWORD *a2@<X8>)
{
  LODWORD(v4) = 560227702;
  if (!*&a1[OBJC_IVAR___AUAAudioDevice_function])
  {
    goto LABEL_86;
  }

  v5 = a1;
  v6 = v2;
  v7 = *&a1[OBJC_IVAR___AUAAudioDevice_function + 8];
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 16))(ObjectType, v7);
  if (!v9)
  {
    goto LABEL_86;
  }

  v10 = v9;
  v11 = swift_getObjectType();
  v12 = *((*(v7 + 24))(v11, v7) + 200);
  v13 = v12;

  if (!v12)
  {

    goto LABEL_86;
  }

  v98 = v13;
  v14 = *(v5 + OBJC_IVAR___AUAAudioDevice_curZTSSeed);
  if (v14 == -1)
  {
    goto LABEL_74;
  }

  *(v5 + OBJC_IVAR___AUAAudioDevice_curZTSSeed) = v14 + 1;
  *(v5 + OBJC_IVAR___AUAAudioDevice_lastZTSMach) = 0;
  *(v5 + OBJC_IVAR___AUAAudioDevice_lastZTSDeltaNS) = 0;
  v15 = *(v5 + OBJC_IVAR___AUAAudioDevice_timestamp);
  [v15 reset:?];
  v16 = AudioDeviceRealtimeGetZeroTimestampBlock(v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v106 = sub_10001EE48;
  v107 = v17;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v104 = sub_1000193B4;
  v105 = &unk_100161388;
  v18 = _Block_copy(&aBlock);

  [v5 setGetZeroTimestampBlock:v18];
  _Block_release(v18);
  v19 = AudioDeviceCreateGenericWillDoBlock([v5 hasInput]);
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  v106 = sub_10001EE6C;
  v107 = v20;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v104 = sub_100019428;
  v105 = &unk_1001613D8;
  v21 = _Block_copy(&aBlock);

  [v5 setWillDoReadInputBlock:v21];
  _Block_release(v21);
  v22 = AudioDeviceCreateGenericWillDoBlock([v5 hasOutput]);
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  v106 = sub_10001EFBC;
  v107 = v23;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v104 = sub_100019428;
  v105 = &unk_100161428;
  v24 = _Block_copy(&aBlock);

  [v5 setWillDoWriteMixBlock:v24];
  _Block_release(v24);
  v25 = *(v5 + OBJC_IVAR___AUAAudioDevice_timestampStream);
  v99 = v5;
  if (!v25)
  {
    sub_10000CA2C();
    swift_allocError();
    *v38 = 1;
    *(v38 + 8) = 0;
    *(v38 + 16) = 0xE000000000000000;
    swift_willThrow();
    goto LABEL_80;
  }

  v12 = v25;
  v26 = AUAAudioDevice.inputAUAStreams()();
  if (v26 >> 62)
  {
    goto LABEL_76;
  }

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  type metadata accessor for AUAStream(0);
  for (i = v26; ; i = _bridgeCocoaArray<A>(_:)())
  {

    v28 = AUAAudioDevice.outputAUAStreams()();
    v100 = v6;
    if (v28 >> 62)
    {
      type metadata accessor for AUAStream(0);
      v29 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for AUAStream(0);
      v29 = v28;
    }

    *&aBlock = i;
    sub_10007DC24(v29);
    v30 = aBlock;
    v6 = aBlock >> 62;
    if (aBlock >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_79:

        sub_10000CA2C();
        swift_allocError();
        *v81 = 1;
        *(v81 + 8) = 0;
        *(v81 + 16) = 0xE000000000000000;
        swift_willThrow();

        goto LABEL_80;
      }
    }

    else if (!*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_79;
    }

    v31 = AUAAudioDevice.getLockDelay(_:)(v30);
    v95 = OBJC_IVAR___AUAAudioDevice_lockDelayMS;
    *(v5 + OBJC_IVAR___AUAAudioDevice_lockDelayMS) = v31;
    if (v31 >= 0x259)
    {
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(45);

      strcpy(&aBlock, "lockDelayMS ");
      BYTE13(aBlock) = 0;
      HIWORD(aBlock) = -5120;
      v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v32);
      v5 = v99;

      v33._countAndFlagsBits = 0xD00000000000001DLL;
      v33._object = 0x800000010012BC80;
      String.append(_:)(v33);
      *&v102 = 600;
      v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v34);

      sub_100038CD8("AUAAudioDevice_performStartIO", 29, 2, aBlock, *(&aBlock + 1), &v99[OBJC_IVAR___AUAAudioDevice_logID]);

      v35 = sub_10000AB64(_swiftEmptyArrayStorage);
      sub_1000FC32C(0xD000000000000027, 0x800000010012BCA0, v35);

      *&v99[v95] = 600;
    }

    if (v6)
    {
      break;
    }

    v4 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_40;
    }

LABEL_16:
    v96 = v12;
    v91 = v10;
    v93 = a2;
    v36 = 0;
    v12 = (v30 & 0xC000000000000001);
    v10 = (v30 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if (v12)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        swift_unknownObjectRelease();
        if (__OFADD__(v36++, 1))
        {
          __break(1u);
          goto LABEL_86;
        }
      }

      else
      {
        if ((v36 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        if (v36 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        ++v36;
      }
    }

    while (v36 != v4);
    v39 = v5;
    v5 = 0;
    v6 = 0;
    v90 = (v39 + OBJC_IVAR___AUAAudioDevice_feedbackDelayMS);
    *(v39 + OBJC_IVAR___AUAAudioDevice_feedbackDelayMS) = 0;
    while (1)
    {
      if (v12)
      {
        a2 = v30;
        v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= v10[2])
        {
          goto LABEL_73;
        }

        a2 = v30;
        v40 = *(v30 + 8 * v5 + 32);
      }

      v41 = v40;
      v42 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v43 = (*((swift_isaMask & *v40) + 0x280))();

      if (v43 > v6)
      {
        v6 = v43;
      }

      ++v5;
      v44 = v42 == v4;
      v30 = a2;
      if (v44)
      {
        v10 = v91;
        a2 = v93;
        v5 = v99;
        v12 = v96;
        goto LABEL_41;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    type metadata accessor for AUAStream(0);
  }

  v4 = _CocoaArrayWrapper.endIndex.getter();
  if (v4)
  {
    goto LABEL_16;
  }

LABEL_40:
  v6 = 0;
  v90 = (v5 + OBJC_IVAR___AUAAudioDevice_feedbackDelayMS);
  *(v5 + OBJC_IVAR___AUAAudioDevice_feedbackDelayMS) = 0;
LABEL_41:
  v45 = *(v5 + OBJC_IVAR___AUAAudioDevice_clock + 8);
  v46 = swift_getObjectType();
  v47 = (*(v45 + 64))(*(v5 + OBJC_IVAR___AUAAudioDevice_formatChangeIOStartDelay_us), v46, v45);
  if (v100)
  {

    goto LABEL_80;
  }

  v48 = *v12;
  v49 = v12;
  v12 = &swift_isaMask;
  (*((swift_isaMask & v48) + 0x2C8))(v47);
  v97 = v49;
  v92 = v10;
  v94 = a2;
  if (v4)
  {
    v5 = 0;
    v10 = (v30 & 0xFFFFFFFFFFFFFF8);
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v50 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_91;
        }

        v50 = *(v30 + 8 * v5 + 32);
      }

      v51 = v50;
      a2 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_75;
      }

      if (v50 != v97)
      {
        (*((swift_isaMask & *v50) + 0x2C8))();
      }

      ++v5;
    }

    while (a2 != v4);
  }

  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(52);
  v102 = aBlock;
  v52._countAndFlagsBits = 0xD000000000000032;
  v52._object = 0x800000010012BBA0;
  String.append(_:)(v52);
  v53 = OBJC_IVAR___AUAAudioDevice_lowestLatencyEnabled;
  swift_beginAccess();
  if (v99[v53])
  {
    v54 = 1702195828;
  }

  else
  {
    v54 = 0x65736C6166;
  }

  if (v99[v53])
  {
    v55 = 0xE400000000000000;
  }

  else
  {
    v55 = 0xE500000000000000;
  }

  v56 = v55;
  String.append(_:)(*&v54);

  v57 = OBJC_IVAR___AUAAudioDevice_logID;
  sub_100038CD8("AUAAudioDevice_performStartIO", 29, 2, v102, *(&v102 + 1), &v99[OBJC_IVAR___AUAAudioDevice_logID]);

  v58 = *&v99[OBJC_IVAR___AUAAudioDevice_timeCorrelater];
  v59 = v99[v53];
  type metadata accessor for USBFrameTimeCorrelaterSession();
  swift_allocObject();
  v60 = v58;
  v61 = sub_10001DDB0(v60, v59);

  a2 = v94;
  if ((*(v61 + 24) & 1) == 0)
  {
    v10 = v92;
    if ([v60 correlationStatus] == 2)
    {
      v79 = sub_10000AB64(_swiftEmptyArrayStorage);
      sub_1000FC32C(0xD00000000000003CLL, 0x800000010012BBE0, v79);
    }

    sub_10000CA2C();
    swift_allocError();
    *v80 = 112;
    *(v80 + 8) = 0;
    *(v80 + 16) = 0xE000000000000000;
    swift_willThrow();

LABEL_80:
    v82 = _convertErrorToNSError(_:)();
    v4 = [v82 code];

    if (v4 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v4 <= 0x7FFFFFFF)
    {
      v83 = *(v10 + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
      if (v83 && sub_1000AA808(0x22u, v83) && ![v98 frameNumberWithTime:0])
      {
        *&v102 = 0;
        *(&v102 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(82);
        v86._countAndFlagsBits = 0x452064656C696166;
        v86._object = 0xED000020726F7272;
        String.append(_:)(v86);
        sub_100001AB4(&qword_100173C98, &unk_100120120);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_10011DE90;
        *(v87 + 56) = &type metadata for Int32;
        *(v87 + 64) = &protocol witness table for Int32;
        *(v87 + 32) = v4;
        v88._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v88);

        v89._countAndFlagsBits = 0xD000000000000043;
        v89._object = 0x800000010012BB50;
        String.append(_:)(v89);
        sub_100038CD8("AUAAudioDevice_performStartIO", 29, 2, v102, *(&v102 + 1), &v99[OBJC_IVAR___AUAAudioDevice_logID]);

        v76 = v99;

LABEL_88:
        v101.receiver = v76;
        v101.super_class = type metadata accessor for AUAAudioDevice(0);
        LODWORD(v4) = objc_msgSendSuper2(&v101, "performStartIO");

        goto LABEL_86;
      }

      strcpy(&v102, "failed Error ");
      HIWORD(v102) = -4864;
      sub_100001AB4(&qword_100173C98, &unk_100120120);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_10011DE90;
      *(v84 + 56) = &type metadata for Int32;
      *(v84 + 64) = &protocol witness table for Int32;
      *(v84 + 32) = v4;
      v85._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v85);

      sub_100038CF0("AUAAudioDevice_performStartIO", 29, 2, v102, *(&v102 + 1), &v99[OBJC_IVAR___AUAAudioDevice_logID]);

      LODWORD(v4) = 1852990585;
LABEL_86:
      *a2 = v4;
      return;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  *&v99[OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession] = v61;

  v62 = [v98 frameNumberWithTime:0];
  v63 = v62 + 5;
  if (v62 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    goto LABEL_92;
  }

  v64 = *&v99[v95];
  v65 = __CFADD__(v63, v64);
  v66 = &v63[v64];
  if (v65)
  {
    goto LABEL_93;
  }

  v65 = __CFADD__(v66, v6);
  v67 = &v66[v6];
  if (v65)
  {
    goto LABEL_94;
  }

  v68 = v67 & ~v6;
  *&v99[OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame] = v68;
  v65 = v68 >= v64;
  v69 = v68 - v64;
  if (v65)
  {
    *&v99[OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame] = v69;
    if (__CFADD__(v68, *v90))
    {
      goto LABEL_96;
    }

    *&v99[OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame] = v68 + *v90;
    *&v102 = 0;
    *(&v102 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(86);
    v70._countAndFlagsBits = 0x616C65446B636F6CLL;
    v70._object = 0xEC00000020534D79;
    String.append(_:)(v70);
    v71._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v71);

    v72._object = 0x800000010012BC20;
    v72._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v72);
    v73._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v73);

    v74._countAndFlagsBits = 0xD000000000000017;
    v74._object = 0x800000010012BC40;
    String.append(_:)(v74);
    v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v75);
    v76 = v99;

    v77._countAndFlagsBits = 0xD000000000000019;
    v77._object = 0x800000010012BC60;
    String.append(_:)(v77);
    v78._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v78);

    sub_100038CD8("AUAAudioDevice_performStartIO", 29, 2, 0, 0xE000000000000000, &v99[v57]);

    v10 = v92;
    goto LABEL_88;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
}

uint64_t sub_1000193B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v10 = v9(a2, a3, a4, a5);

  return v10;
}

uint64_t sub_100019428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v8 = v7(a2, a3, a4);

  return v8;
}

uint64_t sub_1000194DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, char *, void, unint64_t, uint64_t, char *))
{
  v7 = OBJC_IVAR___AUAAudioDevice_logID;
  v8 = qword_100173CC0;
  v9 = v3;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for AUALog(0);
  v11 = sub_10000A1BC(v10, qword_100179508);
  v12 = a3(4, a1, a2, 2, &v9[v7], 0, 0xE000000000000000, v11, v9);

  return v12;
}

void sub_1000195AC(char *a1@<X0>, unsigned int *a2@<X8>)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v40 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v34[-v8];
  v43 = 0x656553545A727563;
  v44 = 0xEA00000000002064;
  v45 = *&a1[OBJC_IVAR___AUAAudioDevice_curZTSSeed];
  v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v10);

  v11 = v44;
  v41 = v43;
  v12 = OBJC_IVAR___AUAAudioDevice_logID;
  v13 = qword_100173CB0;
  v14 = a1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = &a1[v12];
  if (byte_1001794E8 == 1)
  {
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AUALog(0);
    v17 = sub_10000A1BC(v16, qword_100179508);
    v18 = v14;
    sub_10004D718(4, "AUAAudioDevice_performStopIO", 28, 2, v15, v41, v11, v17, v18);
    v20 = v19;
  }

  else
  {
    v39 = a2;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for AUALog(0);
    v22 = sub_10000A1BC(v21, qword_100179508);
    v23 = &v15[*(type metadata accessor for LogID(0) + 20)];
    v37 = *(v5 + 16);
    v37(v9, v23, v4);

    v38 = v22;
    v24 = OSSignposter.logHandle.getter();
    v25 = static os_signpost_type_t.begin.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v26 = swift_slowAlloc();
      v36 = v5;
      v27 = v26;
      v28 = swift_slowAlloc();
      v35 = v25;
      v29 = v28;
      v43 = v28;
      *v27 = 136446210;
      v30 = sub_100035760(v41, v11, &v43);

      *(v27 + 4) = v30;
      v31 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, v35, v31, "AUAAudioDevice_performStopIO", "%{public}s", v27, 0xCu);
      sub_10000CE78(v29);

      v5 = v36;
    }

    else
    {
    }

    v37(v40, v9, v4);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v32 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v5 + 8))(v9, v4);
    v33 = type metadata accessor for AUAAudioDevice(0);
    v42.receiver = v14;
    v42.super_class = v33;
    v20 = objc_msgSendSuper2(&v42, "performStopIO");
    *&v14[OBJC_IVAR___AUAAudioDevice_timeCorrelaterSession] = 0;

    *&v14[OBJC_IVAR___AUAAudioDevice_startingUSBDataFrame] = 0;
    *&v14[OBJC_IVAR___AUAAudioDevice_startingUSBLockDelayFrame] = 0;
    *&v14[OBJC_IVAR___AUAAudioDevice_startingUSBFeedbackFrame] = 0;
    sub_1000461FC(v38, "AUAAudioDevice_performStopIO", 28, 2, v32);

    a2 = v39;
  }

  *a2 = v20;
}

uint64_t sub_100019A80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, char *, void, unint64_t, uint64_t, char *))
{
  v8 = OBJC_IVAR___AUAAudioDevice_logID;
  v9 = qword_100173CC0;
  v10 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for AUALog(0);
  v12 = sub_10000A1BC(v11, qword_100179508);
  v13 = a5(4, a3, a4, 2, &v10[v8], 0, 0xE000000000000000, v12, v10);

  return v13;
}

Swift::Bool __swiftcall AUAAudioDevice.changeSamplingRate(_:)(Swift::Double a1)
{
  v3 = type metadata accessor for LogID(0);
  __chkstk_darwin(v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 samplingRate];
  if (v6 == a1)
  {
    aBlock = 0;
    v30 = 0xE000000000000000;
    _StringGuts.grow(_:)(58);
    v7._countAndFlagsBits = 0xD000000000000038;
    v7._object = 0x800000010012AFB0;
    String.append(_:)(v7);
    Double.write<A>(to:)();
    v8 = aBlock;
    v9 = v30;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v10 = sub_10000A1BC(v3, qword_1001794F0);
    sub_10000A2A4(v10, v5);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v11, qword_100179508);
    sub_100039AA0(3, v5, v8, v9);

    sub_10000C9D0(v5);
  }

  else
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    *(v12 + 24) = a1;
    aBlock = 0xD000000000000016;
    v30 = 0x800000010012AF90;
    v13 = v1;
    v14._countAndFlagsBits = 8236;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = 0xD00000000000001BLL;
    v15._object = 0x800000010012AEF0;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 2108704;
    v16._object = 0xE300000000000000;
    String.append(_:)(v16);
    v35 = 1001;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    sub_100038CD8("AUAAudioDevice_requestConfigurationChange", 41, 2, aBlock, v30, &v13[OBJC_IVAR___AUAAudioDevice_logID]);

    v18 = *&v13[OBJC_IVAR___AUAAudioDevice_configChangedHandlers];
    v19 = swift_allocObject();
    v19[2] = sub_10001E020;
    v19[3] = v12;
    aBlock = sub_10001F01C;
    v30 = v19;
    v20 = *(v18 + 16);
    v21 = __chkstk_darwin(v19);
    *(&v28 - 2) = v18;
    *(&v28 - 1) = &aBlock;
    __chkstk_darwin(v21);
    *(&v28 - 2) = sub_10001EF50;
    *(&v28 - 1) = v22;

    os_unfair_lock_lock(v20 + 4);
    sub_10001EF80(&v35);
    os_unfair_lock_unlock(v20 + 4);
    LODWORD(v18) = v35;

    if (v18 == 1)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v13;
      v33 = sub_10001EFC8;
      v34 = v23;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1000172D4;
      v32 = &unk_100161258;
      v24 = _Block_copy(&aBlock);
      v25 = v13;

      v26 = type metadata accessor for AUAAudioDevice(0);
      v28.receiver = v25;
      v28.super_class = v26;
      objc_msgSendSuper2(&v28, "requestConfigurationChange:", v24);
      _Block_release(v24);
    }
  }

  return 1;
}

uint64_t sub_100019FA8(void *a1, double a2)
{
  v4._countAndFlagsBits = 0x3A6574615277656ELL;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5 = OBJC_IVAR___AUAAudioDevice_logID;
  v6 = qword_100173CC0;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for AUALog(0);
  v9 = sub_10000A1BC(v8, qword_100179508);
  sub_10003B08C(3, "setSamplingRate", 15, 2, &v7[v5], 0, 0xE000000000000000, v9, a2, v7);
}

id AUAAudioDevice.updateTimeStamp(hostTime:sampleTime:seed:from:)(unint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = v4;
  v11 = type metadata accessor for OSSignpostID();
  v12 = __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v18 = &v80 - v17;
  v19 = *(v6 + OBJC_IVAR___AUAAudioDevice_timestampStream);
  if (v19)
  {
    v20 = v19 == a3;
  }

  else
  {
    v20 = 0;
  }

  if (!v20 || *(v6 + OBJC_IVAR___AUAAudioDevice_curZTSSeed) != a2)
  {
    return result;
  }

  v83 = v16;
  [*(v6 + OBJC_IVAR___AUAAudioDevice_timestamp) write:a1 hostTime:a4];
  v21 = OBJC_IVAR___AUAAudioDevice_lastZTSMach;
  v22 = *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSMach);
  v23 = a1 - v22;
  if (a1 < v22)
  {
    __break(1u);
  }

  else if (qword_100173D00 == -1)
  {
    goto LABEL_9;
  }

  swift_once();
LABEL_9:
  if (qword_100179650 == HIDWORD(qword_100179650))
  {
    goto LABEL_13;
  }

  if (!is_mul_ok(v23, qword_100179650))
  {
    __break(1u);
    goto LABEL_53;
  }

  if (!HIDWORD(qword_100179650))
  {
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_21;
  }

  v23 = v23 * qword_100179650 / HIDWORD(qword_100179650);
LABEL_13:
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  v24 = OBJC_IVAR___AUAAudioDevice_lastZTSDeltaNS;
  v25 = *(v6 + OBJC_IVAR___AUAAudioDevice_lastZTSDeltaNS);
  a3 = v23 - v25;
  if (__OFSUB__(v23, v25))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v6 + v21) = a1;
  v5 = 0xED000020656D6172;
  *(v6 + v24) = v23;
  v84 = 0;
  v85 = 0xE000000000000000;
  _StringGuts.grow(_:)(40);

  v84 = 0x656D695474736F68;
  v85 = 0xE900000000000020;
  v92 = a1;
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27._countAndFlagsBits = 0x656C706D6173202CLL;
  v27._object = 0xED000020656D6954;
  String.append(_:)(v27);
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a4 <= -1.0)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (a4 < 1.84467441e19)
  {
    v92 = a4;
    v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v28);

    v29._countAndFlagsBits = 0x72657474696A202CLL;
    v29._object = 0xEC00000020736E20;
    String.append(_:)(v29);
    v92 = a3;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    a3 = v84;
    v23 = v85;
    v5 = v6 + OBJC_IVAR___AUAAudioDevice_logID;
    if (qword_100173CB0 == -1)
    {
      goto LABEL_19;
    }

    goto LABEL_51;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_19:
  v81 = byte_1001794E8;
  v82 = v5;
  if (byte_1001794E8 != 1)
  {
    v80 = v14;
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v35, qword_100179508);
    v36 = type metadata accessor for LogID(0);
    v37 = v83;
    (*(v83 + 16))(v18, v5 + *(v36 + 20), v11);

    v38 = OSSignposter.logHandle.getter();
    v39 = static os_signpost_type_t.event.getter();

    if (OS_os_log.signpostsEnabled.getter())
    {
      v40 = a3;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v84 = v42;
      *v41 = 136446210;
      v43 = sub_100035760(v40, v23, &v84);

      *(v41 + 4) = v43;
      v44 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v38, v39, v44, "AUAAudioDevice_updateTimeStamp", "%{public}s", v41, 0xCu);
      sub_10000CE78(v42);
    }

    else
    {
    }

    (*(v37 + 8))(v18, v11);
    v14 = v80;
    goto LABEL_28;
  }

  if (qword_100173CC0 != -1)
  {
    goto LABEL_54;
  }

LABEL_21:
  v31 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v31, qword_100179508);
  v84 = StaticString.description.getter();
  v85 = v32;
  v33._countAndFlagsBits = 32;
  v33._object = 0xE100000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = a3;
  v34._object = v23;
  String.append(_:)(v34);

  sub_100039AA0(4, v5, v84, v85);

LABEL_28:
  result = [*(v6 + OBJC_IVAR___AUAAudioDevice_timeCorrelater) getStatistics];
  v45 = v87;
  if (v87)
  {
    v46 = v86;
    v48 = v88;
    v47 = v89;
    v49 = v90;
    if (v89 > 0x4E20 || v88 > 0x186A0 || v90 || v91)
    {
      v84 = 0;
      v85 = 0xE000000000000000;
      LODWORD(v80) = v91;
      _StringGuts.grow(_:)(158);
      v50._countAndFlagsBits = 0x467265506863616DLL;
      v50._object = 0xED000020656D6172;
      String.append(_:)(v50);
      Double.write<A>(to:)();
      v51._countAndFlagsBits = 0x664F656B6177202CLL;
      v51._object = 0xEF20534E74657366;
      String.append(_:)(v51);
      v92 = v46;
      v52._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v52);

      v53._object = 0x800000010012B630;
      v53._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v53);
      v92 = v45;
      v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v54);

      v55._countAndFlagsBits = 0xD00000000000001BLL;
      v55._object = 0x800000010012B650;
      String.append(_:)(v55);
      v92 = v48;
      v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v56);

      v57._countAndFlagsBits = 0xD000000000000015;
      v57._object = 0x800000010012B670;
      String.append(_:)(v57);
      v92 = v47;
      v58._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v58);

      v59._countAndFlagsBits = 0xD000000000000019;
      v59._object = 0x800000010012B690;
      String.append(_:)(v59);
      LODWORD(v92) = v49;
      v60._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v60);

      v61._countAndFlagsBits = 0xD00000000000001ALL;
      v61._object = 0x800000010012B6B0;
      String.append(_:)(v61);
      LODWORD(v92) = v80;
      v62._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v62);

      v64 = v84;
      v63 = v85;
      if (v81)
      {
        v65 = v82;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v66 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v66, qword_100179508);
        v84 = StaticString.description.getter();
        v85 = v67;
        v68._countAndFlagsBits = 32;
        v68._object = 0xE100000000000000;
        String.append(_:)(v68);
        v69._countAndFlagsBits = v64;
        v69._object = v63;
        String.append(_:)(v69);

        sub_100039AA0(4, v65, v84, v85);
      }

      else
      {
        v70 = v82;
        if (qword_100173CC0 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for AUALog(0);
        sub_10000A1BC(v71, qword_100179508);
        v72 = type metadata accessor for LogID(0);
        v73 = v83;
        (*(v83 + 16))(v14, v70 + *(v72 + 20), v11);

        v74 = OSSignposter.logHandle.getter();
        v75 = static os_signpost_type_t.event.getter();

        if (OS_os_log.signpostsEnabled.getter())
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          v84 = v77;
          *v76 = 136446210;
          v78 = sub_100035760(v64, v63, &v84);

          *(v76 + 4) = v78;
          v79 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v74, v75, v79, "AUAAudioDevice_timeCorrelater", "%{public}s", v76, 0xCu);
          sub_10000CE78(v77);
        }

        else
        {
        }

        return (*(v73 + 8))(v14, v11);
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall AUAAudioDevice.hasImplicitFeedbackStream()()
{
  v0 = AUAAudioDevice.inputAUAStreams()();
  v22 = v0;
  if (v0 >> 62)
  {
LABEL_30:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_31:

    return 0;
  }

  v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_31;
  }

LABEL_3:
  v2 = 0;
  p_type = &stru_10016FFF0.type;
  while (1)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v2 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v6 = *(v22 + 32 + 8 * v2);
    }

    v5 = v6;
    if (__OFADD__(v2++, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v8 = [v6 p_type[490]];
    if (v8)
    {
      break;
    }

LABEL_6:

    if (v2 == v1)
    {
      goto LABEL_31;
    }
  }

  v9 = v8;
  type metadata accessor for AUAStreamFormat();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    v4 = v5;
    v5 = v9;
LABEL_5:

    goto LABEL_6;
  }

  v11 = *(v10 + OBJC_IVAR___AUAStreamFormat_altSetting);
  if (!v11)
  {
    v4 = v9;
    goto LABEL_5;
  }

  v12 = p_type;
  v13 = *(v11 + 104);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v16 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
    if (v16)
    {
      v17 = *(v16 + 16);
      v18 = (v16 + 32);
      while (v17)
      {
        v19 = *v18++;
        --v17;
        if (v19 == 11)
        {

          return 1;
        }
      }
    }
  }

  else
  {
  }

  v20 = IOUSBGetEndpointUsageType(*(v13 + 16));

  if (v20 != 2)
  {
    p_type = v12;
    goto LABEL_6;
  }

  return 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.addGlobalControls()()
{
  if (!*(v0 + OBJC_IVAR___AUAAudioDevice_function))
  {
    sub_10000CA2C();
    swift_allocError();
    *v12 = 69;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_function + 8);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  v6 = *(v2 + 16);
  v34 = v6(ObjectType, v2);
  if (!v34)
  {
    sub_10000CA2C();
    swift_allocError();
    *v13 = 7;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v40 = v1;
  v7 = swift_getObjectType();
  v8 = v4(v7, v2);
  v9 = v6(ObjectType, v2);
  v10 = *(v8 + 200);
  if (v10)
  {
    v11 = [objc_allocWithZone(IOKService) initWithServiceEntry:{objc_msgSend(v10, "ioService")}];
    sub_100022654(v11, 0, &v35);

    if (v36)
    {
      sub_10000CE28(&v35, &v37);
LABEL_11:

      goto LABEL_13;
    }

    sub_10000D040(&v35, &unk_100174A20, &unk_100120170);
  }

  if (v9)
  {
    sub_100022654(*&v9[OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService], 0, &v37);
    goto LABEL_11;
  }

  v37 = 0u;
  v38 = 0u;

LABEL_13:
  v14 = v40;
  if (*(&v38 + 1))
  {
    if (swift_dynamicCast())
    {
      v15 = String._bridgeToObjectiveC()();

      goto LABEL_18;
    }
  }

  else
  {
    sub_10000D040(&v37, &unk_100174A20, &unk_100120170);
  }

  v15 = 0;
LABEL_18:
  [v32 setConfigurationBundleID:v15];

  v16 = *(v5 + 168);
  v17 = *(v16 + 16);

  if (v17)
  {
    v18 = 0;
    v33 = v16 + 32;
    v31 = v16;
    while (v18 < *(v16 + 16))
    {
      sub_10001EAFC(v33 + 40 * v18, &v37);
      v19 = *(&v38 + 1);
      v20 = v39;
      sub_10001EAB8(&v37, *(&v38 + 1));
      v21 = [v34 plugin];
      if (!v21)
      {
        goto LABEL_43;
      }

      v22 = v21;
      v23 = (*(v20 + 80))(1735159650, v21, v19, v20);
      if (v14)
      {
        swift_unknownObjectRelease();

        sub_10000CE78(&v37);
        return;
      }

      v24 = v23;

      if (v24)
      {
        v40 = 0;
        if (v24 >> 62)
        {
          v25 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v26 = v32;
        if (v25)
        {
          v27 = 0;
          while (1)
          {
            if ((v24 & 0xC000000000000001) != 0)
            {
              v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v27 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_41;
              }

              v28 = *(v24 + 8 * v27 + 32);
            }

            v29 = v28;
            v30 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            [v26 addControl:v28];

            ++v27;
            if (v30 == v25)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
LABEL_41:
          __break(1u);
          break;
        }

LABEL_20:

        v14 = v40;
        v16 = v31;
      }

      ++v18;
      sub_10000CE78(&v37);
      if (v18 == v17)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_38:
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AUAAudioDevice.addStreamControls()()
{
  v2 = *&v0[OBJC_IVAR___AUAAudioDevice_function];
  if (!v2)
  {
    sub_10000CA2C();
    swift_allocError();
    *v20 = 69;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v3 = v0;
  v4 = *&v0[OBJC_IVAR___AUAAudioDevice_function + 8];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 24);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, v4);
  v8 = v4;
  v9 = v7;
  v10 = (*(v8 + 16))(ObjectType, v8);
  if (!v10)
  {
    sub_10000CA2C();
    swift_allocError();
    *v21 = 7;
    *(v21 + 8) = 0;
    *(v21 + 16) = 0xE000000000000000;
    swift_willThrow();
    swift_unknownObjectRelease();

    return;
  }

  v50 = v10;
  v51 = v9;
  v11 = [v0 controls];
  if (!v11)
  {
    goto LABEL_36;
  }

  v12 = v11;
  v48 = v3;
  sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = _swiftEmptyArrayStorage;
  v47 = v8;
  if (!(v13 >> 62))
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = v2;
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_25:
    v16 = _swiftEmptyArrayStorage;
    goto LABEL_26;
  }

LABEL_24:
  v14 = _CocoaArrayWrapper.endIndex.getter();
  v15 = v2;
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_6:
  v2 = 0;
  v16 = _swiftEmptyArrayStorage;
  do
  {
    v17 = v2;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v18 = *(v13 + 8 * v17 + 32);
      }

      v19 = v18;
      v2 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ([v18 controlScope] != 1735159650)
      {
        break;
      }

      ++v17;
      if (v2 == v14)
      {
        goto LABEL_26;
      }
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v16 = v54;
  }

  while (v2 != v14);
LABEL_26:

  v2 = v15;
  if (!(v16 >> 62))
  {
    v22 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = v47;
    v3 = v48;
    if (v22)
    {
      goto LABEL_28;
    }

LABEL_35:

LABEL_36:
    v54 = _swiftEmptyArrayStorage;
    v53 = _swiftEmptyArrayStorage;
    v26 = AUAAudioDevice.inputAUAStreams()();
    if (v26 >> 62)
    {
      goto LABEL_84;
    }

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for AUAStream(0);
    for (i = v26; ; i = _bridgeCocoaArray<A>(_:)())
    {

      v28 = AUAAudioDevice.outputAUAStreams()();
      if (v28 >> 62)
      {
        type metadata accessor for AUAStream(0);
        v29 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        type metadata accessor for AUAStream(0);
        v29 = v28;
      }

      v30 = v3;

      v52 = i;
      sub_10007DC24(v29);
      v31 = v52;
      if (v52 >> 62)
      {
        v3 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v3 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = v2;
      swift_unknownObjectRetain();

      v50 = v50;
      v2 = v30;
      if (v3)
      {
        v32 = 0;
        while (1)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v32 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_83;
            }

            v33 = *(v31 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          v52 = v33;
          sub_10001B9CC(&v52, v51, v50, &v54, &v53, v49, v8, v2);
          if (v1)
          {

            swift_unknownObjectRelease();

            swift_unknownObjectRelease();

            return;
          }

          ++v32;
          if (v35 == v3)
          {
            v8 = v54;
            goto LABEL_54;
          }
        }
      }

      else
      {
        v8 = _swiftEmptyArrayStorage;
LABEL_54:

        swift_unknownObjectRelease();
        if (v8 >> 62)
        {
          v36 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v36 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = v2;
        if (v36)
        {
          v2 = 0;
          v3 = v8 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v2 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_79;
              }

              v38 = *(v8 + 8 * v2 + 32);
            }

            v39 = v38;
            v40 = (v2 + 1);
            if (__OFADD__(v2, 1))
            {
              break;
            }

            [v37 addControl:v38];

            ++v2;
            if (v40 == v36)
            {
              goto LABEL_65;
            }
          }

          __break(1u);
LABEL_79:
          __break(1u);
        }

        else
        {
LABEL_65:

          v2 = v53;
          if (v53 >> 62)
          {
            v41 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v41 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v42 = v37;
          if (!v41)
          {
LABEL_77:

            swift_unknownObjectRelease();

            return;
          }

          v3 = 0;
          v43 = v8;
          while (1)
          {
            if ((v2 & 0xC000000000000001) != 0)
            {
              v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_81;
              }

              v44 = *(v2 + 8 * v3 + 32);
            }

            v45 = v44;
            v8 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              break;
            }

            [v42 addCustomProperty:v44];

            ++v3;
            v46 = v8 == v41;
            v8 = v43;
            if (v46)
            {
              goto LABEL_77;
            }
          }
        }

        __break(1u);
LABEL_81:
        __break(1u);
      }

      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      type metadata accessor for AUAStream(0);
    }
  }

  v22 = _CocoaArrayWrapper.endIndex.getter();
  v8 = v47;
  v3 = v48;
  if (!v22)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v22 >= 1)
  {
    for (j = 0; j != v22; ++j)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v24 = *(v16 + 8 * j + 32);
      }

      v25 = v24;
      [v3 removeControl:v24];
    }

    goto LABEL_35;
  }

  __break(1u);
}

void sub_10001B9CC(char **a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  v130 = a8;
  v12 = *a1;
  v13 = *(a2 + 168);
  v148 = *a1;
  v137 = *(v13 + 16);
  if (!v137)
  {
LABEL_109:
    if (qword_100173CF8 != -1)
    {
      goto LABEL_140;
    }

    goto LABEL_110;
  }

  v135 = &v12[OBJC_IVAR___AUAStream_path];
  v138 = v13 + 32;
  v139 = *(a2 + 168);
  v134 = OBJC_IVAR___AUAStream_controlScope;
  swift_beginAccess();
  v14 = v139;
  v15 = 0;
  v136 = a5;
  v150 = a4;
  while (1)
  {
    if (v15 >= *(v14 + 16))
    {
      goto LABEL_127;
    }

    v147 = v15;
    sub_10001EAFC(v138 + 40 * v15, v161);
    sub_10001EAFC(v161, v155);
    sub_100001AB4(&qword_100174F60, &qword_100121090);
    sub_100001AB4(&qword_100174F68, &unk_100120B90);
    if (!swift_dynamicCast())
    {
      sub_10000CE78(v161);
      v154 = 0;
      memset(v153, 0, sizeof(v153));
      sub_10000D040(v153, &qword_100174F70, &qword_100120FD0);
      goto LABEL_4;
    }

    sub_10000D0A0(v153, v158);
    v17 = *v135;
    v16 = *(v135 + 1);
    v18 = *(v135 + 2);
    v19 = v159;
    v20 = v160;
    sub_10001EAB8(v158, v159);
    if ((*(*(v20 + 8) + 48))(v19) != *(v17 + 88))
    {
      v21 = v159;
      v22 = v160;
      sub_10001EAB8(v158, v159);
      if ((*(*(v22 + 8) + 48))(v21) != *(v16 + 72))
      {
        break;
      }
    }

LABEL_13:
    v32 = v159;
    v33 = v160;
    sub_10001EAB8(v158, v159);
    v34 = *&v148[v134];
    v35 = [a3 plugin];
    if (!v35)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v36 = v35;
    v37 = (*(*(v33 + 8) + 80))(v34, v35, v32);
    v39 = v38;

    if (v9)
    {
LABEL_121:
      sub_10000CE78(v161);
      sub_10000CE78(v158);
      return;
    }

    a4 = v150;
    if (v37)
    {
      sub_10007DC54(v37);
    }

    if (v39)
    {
      sub_10007DD60(v39);
    }

LABEL_19:
    if ([v148 direction] == 1768845428)
    {
      ObjectType = swift_getObjectType();
      v41 = sub_10004F2E8(v158, ObjectType, a7);
      if (v9)
      {
        goto LABEL_121;
      }

      if (!v41)
      {
        v42 = sub_10004F348(*(v135 + 1), ObjectType, a7);
        v144 = *(v42 + 2);
        if (v144)
        {
          v43 = 0;
          v140 = v42;
          v141 = v42 + 32;
          while (1)
          {
            if (v43 >= *(v42 + 2))
            {
              goto LABEL_126;
            }

            v44 = v9;
            v45 = a5;
            v149 = v43;
            v46 = &v141[24 * v43];
            v48 = *v46;
            v47 = *(v46 + 1);
            v49 = *(v46 + 2);
            v50 = v159;
            v51 = v160;
            sub_10001EAB8(v158, v159);
            v52 = *(v51 + 8);
            v53 = *(v52 + 48);

            v162 = v49;

            if (v53(v50, v52) != *(v48 + 88))
            {
              v54 = v159;
              v55 = v160;
              sub_10001EAB8(v158, v159);
              if ((*(*(v55 + 8) + 48))(v54) != *(v47 + 72))
              {
                v68 = v162 + 32;
                v69 = -*(v162 + 16);
                a4 = -1;
                a5 = v45;
                v9 = v44;
                while (1)
                {
                  if (v69 + a4 == -1)
                  {

                    a4 = v150;
                    goto LABEL_26;
                  }

                  if (++a4 >= *(v162 + 16))
                  {
                    break;
                  }

                  v70 = v68 + 40;
                  sub_10001EAFC(v68, v155);
                  v71 = v159;
                  v72 = v160;
                  sub_10001EAB8(v158, v159);
                  v73 = (*(*(v72 + 8) + 48))(v71);
                  v75 = v156;
                  v74 = v157;
                  sub_10001EAB8(v155, v156);
                  v76 = (*(*(v74 + 8) + 48))(v75);
                  sub_10000CE78(v155);
                  v68 = v70;
                  if (v73 == v76)
                  {
                    goto LABEL_31;
                  }
                }

                __break(1u);
                goto LABEL_125;
              }
            }

            a5 = v45;
            v9 = v44;
LABEL_31:
            v56 = v159;
            v57 = v160;
            sub_10001EAB8(v158, v159);
            v58 = [a3 plugin];
            if (!v58)
            {
              __break(1u);
              goto LABEL_142;
            }

            v59 = v58;
            a4 = v150;
            v60 = (*(*(v57 + 8) + 80))(1886679669, v58, v56);
            v62 = v61;

            if (v60)
            {
              break;
            }

LABEL_68:
            if (!v62)
            {

              goto LABEL_26;
            }

            if (v62 >> 62)
            {
              v90 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v90 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (*a5 >> 62)
            {
              v107 = _CocoaArrayWrapper.endIndex.getter();
              v92 = v107 + v90;
              if (__OFADD__(v107, v90))
              {
                goto LABEL_130;
              }
            }

            else
            {
              v91 = *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v92 = v91 + v90;
              if (__OFADD__(v91, v90))
              {
                goto LABEL_130;
              }
            }

            v145 = v9;
            v93 = *a5;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *a5 = v93;
            if (isUniquelyReferenced_nonNull_bridgeObject)
            {
              if ((v93 & 0x8000000000000000) == 0 && (v93 & 0x4000000000000000) == 0)
              {
                v95 = v93 & 0xFFFFFFFFFFFFFF8;
                if (v92 <= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  goto LABEL_83;
                }

                goto LABEL_82;
              }
            }

            else if ((v93 & 0x8000000000000000) == 0 && (v93 & 0x4000000000000000) == 0)
            {
              goto LABEL_82;
            }

            _CocoaArrayWrapper.endIndex.getter();
LABEL_82:
            v93 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            *a5 = v93;
            v95 = v93 & 0xFFFFFFFFFFFFFF8;
LABEL_83:
            v143 = v95;
            v96 = *(v95 + 16);
            a4 = (*(v95 + 24) >> 1) - v96;
            if (v62 >> 62)
            {
              v98 = _CocoaArrayWrapper.endIndex.getter();
              if (v98)
              {
                v99 = _CocoaArrayWrapper.endIndex.getter();
                if (a4 < v99)
                {
                  goto LABEL_137;
                }

                if (v98 < 1)
                {
                  goto LABEL_139;
                }

                v131 = v99;
                sub_10001EB60(&qword_100174F88, &qword_100174F80, &unk_100120BA0, &protocol conformance descriptor for [A]);
                for (i = 0; i != v98; ++i)
                {
                  sub_100001AB4(&qword_100174F80, &unk_100120BA0);
                  v101 = sub_10001D8F4(v155, i, v62);
                  v103 = *v102;
                  (v101)(v155, 0);
                  *(v143 + 8 * v96 + 32 + 8 * i) = v103;
                }

                a5 = v136;
                v97 = v131;
                goto LABEL_93;
              }
            }

            else
            {
              v97 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v97)
              {
                if (a4 < v97)
                {
                  goto LABEL_138;
                }

                sub_10001EBA8(0, &qword_100174F78, ASDCustomProperty_ptr);
                swift_arrayInitWithCopy();
LABEL_93:

                a4 = v150;
                if (v97 < v90)
                {
                  goto LABEL_131;
                }

                if (v97 > 0)
                {
                  v104 = *(v143 + 16);
                  v88 = __OFADD__(v104, v97);
                  v105 = v104 + v97;
                  if (v88)
                  {
                    goto LABEL_133;
                  }

                  *(v143 + 16) = v105;
                }

                goto LABEL_25;
              }
            }

            a4 = v150;
            if (v90 > 0)
            {
              goto LABEL_131;
            }

LABEL_25:
            *a5 = v93;

            v9 = v145;
LABEL_26:
            v43 = v149 + 1;
            v42 = v140;
            if (v149 + 1 == v144)
            {
              goto LABEL_106;
            }
          }

          if (v60 >> 62)
          {
            v63 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v63 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (*v150 >> 62)
          {
            v106 = _CocoaArrayWrapper.endIndex.getter();
            v65 = v106 + v63;
            if (__OFADD__(v106, v63))
            {
              goto LABEL_128;
            }
          }

          else
          {
            v64 = *((*v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v65 = v64 + v63;
            if (__OFADD__(v64, v63))
            {
              goto LABEL_128;
            }
          }

          a5 = *v150;
          v66 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          *v150 = a5;
          if (v66)
          {
            if ((a5 & 0x8000000000000000) == 0 && (a5 & 0x4000000000000000) == 0)
            {
              v67 = a5 & 0xFFFFFFFFFFFFFF8;
              if (v65 > *((a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_51;
              }

LABEL_52:
              v142 = v67;
              v77 = *(v67 + 16);
              a4 = (*(v67 + 24) >> 1) - v77;
              if (v60 >> 62)
              {
                v81 = _CocoaArrayWrapper.endIndex.getter();
                if (!v81)
                {
                  goto LABEL_66;
                }

                v82 = v81;
                v132 = _CocoaArrayWrapper.endIndex.getter();
                if (a4 < v132)
                {
                  goto LABEL_134;
                }

                if (v82 < 1)
                {
                  goto LABEL_136;
                }

                sub_10001EB60(&qword_100174F98, &qword_100174F90, &unk_100124B00, &protocol conformance descriptor for [A]);
                for (j = 0; j != v82; ++j)
                {
                  sub_100001AB4(&qword_100174F90, &unk_100124B00);
                  v84 = sub_10001D8F4(v155, j, v60);
                  v86 = *v85;
                  (v84)(v155, 0);
                  *(v142 + 8 * v77 + 32 + 8 * j) = v86;
                }

                v9 = 0;
                v80 = v132;
LABEL_62:

                a4 = v150;
                if (v80 < v63)
                {
                  goto LABEL_129;
                }

                if (v80 > 0)
                {
                  v87 = *(v142 + 16);
                  v88 = __OFADD__(v87, v80);
                  v89 = v87 + v80;
                  if (v88)
                  {
                    goto LABEL_132;
                  }

                  *(v142 + 16) = v89;
                }
              }

              else
              {
                v78 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v78)
                {
                  if (a4 < v78)
                  {
                    goto LABEL_135;
                  }

                  v79 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_10001EBA8(0, &qword_100174F58, ASDControl_ptr);
                  v80 = v79;
                  swift_arrayInitWithCopy();
                  goto LABEL_62;
                }

LABEL_66:

                a4 = v150;
                if (v63 > 0)
                {
                  goto LABEL_129;
                }
              }

              *a4 = a5;
              a5 = v136;
              goto LABEL_68;
            }
          }

          else if ((a5 & 0x8000000000000000) == 0 && (a5 & 0x4000000000000000) == 0)
          {
LABEL_51:
            a5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
            *v150 = a5;
            v67 = a5 & 0xFFFFFFFFFFFFFF8;
            goto LABEL_52;
          }

          _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_51;
        }

LABEL_106:
      }
    }

    sub_10000CE78(v161);
    sub_10000CE78(v158);
LABEL_4:
    v12 = v148;
    v15 = v147 + 1;
    v14 = v139;
    if (v147 + 1 == v137)
    {
      goto LABEL_109;
    }
  }

  v23 = v18 + 32;
  a4 = -*(v18 + 16);
  v24 = -1;
  while (1)
  {
    if (a4 + v24 == -1)
    {
      a4 = v150;
      goto LABEL_19;
    }

    if (++v24 >= *(v18 + 16))
    {
      break;
    }

    v25 = v23 + 40;
    sub_10001EAFC(v23, v155);
    v26 = v159;
    v27 = v160;
    sub_10001EAB8(v158, v159);
    v28 = (*(*(v27 + 8) + 48))(v26);
    v30 = v156;
    v29 = v157;
    sub_10001EAB8(v155, v156);
    v31 = (*(*(v29 + 8) + 48))(v30);
    sub_10000CE78(v155);
    v23 = v25;
    if (v28 == v31)
    {
      goto LABEL_13;
    }
  }

LABEL_125:
  __break(1u);
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
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  swift_once();
  v12 = v148;
LABEL_110:
  v108 = *(qword_100179640 + 16);
  if (!v108 || (v109 = v108, v110 = String._bridgeToObjectiveC()(), v111 = [v109 BOOLForKey:v110], v109, v110, v12 = v148, (v111 & 1) == 0))
  {
    v112 = sub_1000ACDAC();
    if (v112)
    {
      v113 = HIDWORD(v112);
      [v12 setIsTapStream:1];
      v114 = [v130 plugin];
      v115 = type metadata accessor for AUATapControl();
      v116 = objc_allocWithZone(v115);
      *&v116[OBJC_IVAR____TtC9AUASDCore13AUATapControl_stream] = v12;
      v152.receiver = v116;
      v152.super_class = v115;
      v117 = v12;
      v118 = objc_msgSendSuper2(&v152, "initWithValue:isSettable:forElement:inScope:withPlugin:andObjectClassID:", 0, 1, 0, v113, v114, 1702259059);
      if (v118)
      {
        v119 = v118;

        v120 = v119;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v121 = [a3 serialNumber];
        if (!v121)
        {

          return;
        }

        v122 = v121;
        v123 = type metadata accessor for AUACustomStringProperty();
        v124 = objc_allocWithZone(v123);
        *&v124[OBJC_IVAR____TtC9AUASDCore23AUACustomStringProperty_string] = v122;
        v125 = objc_allocWithZone(ASDPropertyAddress);
        v126 = v122;
        v127 = [v125 initWithSelector:2020898165 scope:1735159650 element:0];
        v151.receiver = v124;
        v151.super_class = v123;
        v128 = objc_msgSendSuper2(&v151, "initWithAddress:propertyDataType:qualifierDataType:", v127, 1886155636, 0);

        if (v128)
        {
          v129 = v128;
          [v129 setSettable:0];

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*a5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          return;
        }

LABEL_144:
        __break(1u);
        return;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }
  }
}

Swift::Bool __swiftcall AUAAudioDevice.changeClientDescription(_:)(Swift::OpaquePointer_optional a1)
{
  if (*(v1 + OBJC_IVAR___AUAAudioDevice_function))
  {
    rawValue = a1.value._rawValue;
    v3 = *(v1 + OBJC_IVAR___AUAAudioDevice_function + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 136))(ObjectType, v3);
    if (v5)
    {
      if (!rawValue)
      {
        __break(1u);
        return v5;
      }

      AnyHashable.init<A>(_:)();
      if (rawValue[2] && (v6 = sub_10001D2A4(v9), (v7 & 1) != 0))
      {
        sub_10001E0C4(rawValue[7] + 32 * v6, v10);
        sub_10001E070(v9);
        if (swift_dynamicCast())
        {
          sub_1000BDD74(1684957547);
        }
      }

      else
      {

        sub_10001E070(v9);
      }
    }
  }

  LOBYTE(v5) = 0;
  return v5;
}

Swift::UInt32 __swiftcall AUAAudioDevice.usbControllerClockDomain()()
{
  v1 = v0 + OBJC_IVAR___AUAAudioDevice_function;
  v2 = *(v0 + OBJC_IVAR___AUAAudioDevice_function);
  if (!v2)
  {
    return v2;
  }

  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 16);
  v6 = v5(ObjectType, v3);
  if (!v6)
  {
    LODWORD(v2) = 0;
    return v2;
  }

  v7 = v6;
  v8 = *(v6 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceService);

  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 searchForPropertyWithKey:v9 inPlane:v10 withOptions:3];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (!*(&v24 + 1))
  {
    sub_10000D040(&v25, &unk_100174A20, &unk_100120170);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  v12 = v22;
LABEL_12:
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v8 searchForPropertyWithKey:v13 inPlane:v14 withOptions:3];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  if (*(&v24 + 1))
  {
    if (swift_dynamicCast() || v12)
    {
LABEL_18:
      v16 = swift_getObjectType();
      v17 = v5(v16, v3);
      if (v17)
      {
        v18 = v17;
        v2 = USBDevice.locationID.getter();

        if ((v2 & 0x100000000) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
      }

      LODWORD(v2) = 0;
LABEL_31:
      LODWORD(v2) = v2 & 0xFF000000 | 0x425355;
      return v2;
    }
  }

  else
  {
    sub_10000D040(&v25, &unk_100174A20, &unk_100120170);
    if (v12)
    {
      goto LABEL_18;
    }
  }

  LODWORD(v2) = 7567731;
  if (sub_1000D2D48() == 2)
  {
    v19 = sub_1000D2EB8();

    if (v19 == 2)
    {
      v20 = 7567731;
    }

    else
    {
      v20 = 1228034925;
    }

    if (v19 == 1)
    {
      LODWORD(v2) = 1835100526;
    }

    else
    {
      LODWORD(v2) = v20;
    }
  }

  else
  {
  }

  return v2;
}

id AUAAudioDevice.__allocating_init(deviceUID:with:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithDeviceUID:v6 withPlugin:a3];

  return v7;
}

id AUADSPAudioDevice.__allocating_init(deviceUID:underlyingDevice:deviceDSPDatabase:plugin:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = objc_allocWithZone(v5);
  v10 = String._bridgeToObjectiveC()();

  v11 = [v9 initWithDeviceUID:v10 underlyingDevice:a3 deviceDSPDatabase:a4 plugin:a5];

  return v11;
}

id sub_10001D0E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10001D11C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10001D3B8(a1, a2, v4);
}

unint64_t sub_10001D194(uint64_t a1)
{
  v1 = a1;
  v2 = static Hasher._hash(seed:bytes:count:)();

  return sub_10001D470(v1, v2);
}

unint64_t sub_10001D1DC(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_10001D4DC(v1, v2);
}

unint64_t sub_10001D260(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001D5C8(a1, v4);
}

unint64_t sub_10001D2A4(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10001D68C(a1, v4);
}

unint64_t sub_10001D324(uint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_100120BF0[v1]);
  Hasher._combine(_:)(word_100120C38[v2]);
  v3 = Hasher._finalize()();

  return sub_10001D7C0(v1, v3);
}

unint64_t sub_10001D3B8(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10001D470(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10001D4DC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *&asc_100120BC0[8 * a1];
    while (*&asc_100120BC0[8 * *(*(v2 + 48) + v4)] != v6)
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      swift_bridgeObjectRelease_n();
      if ((v7 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

unint64_t sub_10001D5C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for AUAStream(0);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

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

unint64_t sub_10001D68C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001EDEC(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10001E070(v8);
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

unint64_t sub_10001D754(uint64_t a1, uint64_t a2)
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

unint64_t sub_10001D7C0(__int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v2 + 48) + 2 * result);
      if (word_100120BF0[*v7] == word_100120BF0[a1] && word_100120C38[v7[1]] == word_100120C38[SHIBYTE(a1)])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t (*sub_10001D86C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_10001D8EC;
  }

  __break(1u);
  return result;
}

void (*sub_10001D8F4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001EFC4;
  }

  __break(1u);
  return result;
}

void (*sub_10001D974(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_10001D9F4;
  }

  __break(1u);
  return result;
}

void *sub_10001D9FC@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10001DA40@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, BOOL *a3@<X8>)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = result;
    v6 = a2[1];
    swift_beginAccess();
    v7 = *(v4 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_100024020(0, v7[2] + 1, 1, v7);
      *(v4 + 24) = v7;
    }

    v10 = v7[2];
    v9 = v7[3];
    if (v10 >= v9 >> 1)
    {
      v7 = sub_100024020((v9 > 1), v10 + 1, 1, v7);
    }

    v7[2] = v10 + 1;
    v11 = &v7[2 * v10];
    v11[4] = v3;
    v11[5] = v6;
    *(v4 + 24) = v7;
    result = swift_endAccess();
    *a3 = v10 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001DB5C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001DB6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001DBA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for AUAAudioDevice(uint64_t a1)
{
  result = qword_100174ED8;
  if (!qword_100174ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001DC30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001DC68@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = swift_beginAccess();
  v5 = *(a1 + 24);
  if (v5[2])
  {
    v7 = v5[4];
    v6 = v5[5];

    sub_1000D1164(0, 1);
    result = swift_endAccess();
    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10001DCF8@<D0>(void (*a1)(__int128 *__return_ptr)@<X1>, _OWORD *a2@<X8>)
{
  a1(&v5);
  if (!v2)
  {
    result = *&v5;
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10001DD3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  if (*(v4 + 16))
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
    result = 0;
  }

  *a2 = v5;
  a2[1] = result;
  return result;
}

uint64_t sub_10001DDB0(void *a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = a1;
  *(v3 + 24) = [a1 start:a2 & 1];
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v9._countAndFlagsBits = 0xD000000000000032;
  v9._object = 0x800000010012BCD0;
  String.append(_:)(v9);
  if (*(v3 + 24))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v3 + 24))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._object = 0x800000010012BD10;
  v13._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v13);
  v19[3] = [*(v3 + 16) correlationStatus];
  type metadata accessor for CorrelationStatus(0);
  _print_unlocked<A, B>(_:_:)();
  v14 = v20;
  v15 = v21;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A1BC(v6, qword_1001794F0);
  sub_10000A2A4(v16, v8);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v17, qword_100179508);
  sub_100039AA0(4, v8, v14, v15);

  sub_10000C9D0(v8);
  return v3;
}

uint64_t sub_10001DFE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10001E02C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10001E0C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001E204(uint64_t a1)
{
  result = type metadata accessor for LogID(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_10001E310(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, int a6)
{
  *&v6[OBJC_IVAR___AUADSPAudioDevice__transportType] = 1970496032;
  v11 = String._bridgeToObjectiveC()();

  v55.receiver = v6;
  v55.super_class = type metadata accessor for AUADSPAudioDevice();
  v12 = objc_msgSendSuper2(&v55, "initWithDeviceUID:underlyingDevice:deviceDSPDatabase:plugin:", v11, a3, a4, a5);

  *&v12[OBJC_IVAR___AUADSPAudioDevice__transportType] = a6;
  v13 = 0xE000000000000000;
  v14 = v12;
  v15 = [v14 deviceName];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v18;
  }

  else
  {
    v17 = 0;
  }

  v19._countAndFlagsBits = v17;
  v19._object = v13;
  String.append(_:)(v19);

  v20._countAndFlagsBits = 1347634208;
  v20._object = 0xE400000000000000;
  String.append(_:)(v20);
  v21 = String._bridgeToObjectiveC()();

  [v14 setDeviceName:v21];

  v22 = [a3 inputStreams];
  if (v22)
  {
    v23 = v22;
    sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v24 >> 62))
    {
LABEL_6:
      v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_7;
    }
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_6;
    }
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
LABEL_7:
  p_type = (&stru_10016FFF0 + 16);
  v27 = (&stru_10016FFF0 + 16);
  if (v25 < 1)
  {
  }

  else
  {
    v28 = objc_allocWithZone(ASDDSPStream);
    sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
    v29 = v14;
    v30 = a5;
    isa = Array._bridgeToObjectiveC()().super.isa;
    v32 = [v28 initWithOwningDevice:v29 underlyingStreams:isa direction:1768845428 plugin:v30];

    [v32 setKeepGraphInitialized:1];
    v33 = v32;
    [v33 setTerminalType:1835623282];
    result = [v33 setStartingChannel:1];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_35;
      }

      v35 = *(v24 + 32);
    }

    v36 = v35;
    v37 = [v35 physicalFormats];

    [v33 setPhysicalFormats:v37];
    if ((v24 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v38 = *(v24 + 32);
    }

    v39 = v38;
    p_type = &stru_10016FFF0.type;

    v40 = [v39 physicalFormat];

    v27 = &stru_10016FFF0.type;
    [v33 setPhysicalFormat:v40];

    [v29 addInputStream:v33];
  }

  v41 = [a3 outputStreams];
  if (v41)
  {
    v42 = v41;
    sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
    v43 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v43 >> 62))
    {
      goto LABEL_20;
    }

LABEL_27:
    if (_CocoaArrayWrapper.endIndex.getter() >= 1)
    {
      goto LABEL_21;
    }

LABEL_28:

    v48 = v14;
LABEL_31:

    [v14 updateDeviceDSPConfiguration];
    return v14;
  }

  v43 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_28;
  }

LABEL_21:
  v44 = objc_allocWithZone(ASDDSPStream);
  sub_10001EBA8(0, &qword_100174F10, ASDStream_ptr);
  v45 = a5;
  v46 = Array._bridgeToObjectiveC()().super.isa;
  v47 = [v44 initWithOwningDevice:v14 underlyingStreams:v46 direction:1869968496 plugin:v45];

  [v47 setKeepGraphInitialized:1];
  v48 = v47;
  result = [v48 setTerminalType:1936747378];
  if ((v43 & 0xC000000000000001) != 0)
  {
    v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_24;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v49 = *(v43 + 32);
LABEL_24:
    v50 = v49;
    v51 = [v49 physicalFormats];

    [v48 setPhysicalFormats:v51];
    if ((v43 & 0xC000000000000001) != 0)
    {
      v52 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v52 = *(v43 + 32);
    }

    v53 = v52;

    v54 = [v53 p_type[490]];

    [v48 v27[491]];
    [v14 addOutputStream:v48];

    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10001E8F0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10001E938()
{
  result = qword_100174F28;
  if (!qword_100174F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174F28);
  }

  return result;
}

uint64_t sub_10001E98C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001EA64()
{
  result = qword_100174F50;
  if (!qword_100174F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100174F50);
  }

  return result;
}

void *sub_10001EAB8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001EAFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10001EB60(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10001E8F0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001EBA8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_10001ED24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100174FB0, &unk_100120FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001ED94(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001EDA4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10001EEA4@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

unint64_t sub_10001F020(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  v1 = BYTE1(a1) - 1;
  if ((BYTE1(a1) - 1) >= 3u)
  {
    v1 = 5;
  }

  if ((a1 & 2) != 0)
  {
    return (BYTE4(a1) | (v1 << 8)) | (BYTE3(a1) << 16);
  }

  if ((a1 & 0xFF0000000000) != 0)
  {
    return BYTE5(a1);
  }

  return BYTE4(a1) | (v1 << 8) | a1 & 0xFFFF0000;
}

uint64_t sub_10001F0BC(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for LogID(0);
  __chkstk_darwin(v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = 0;
  v9 = USBDescriptorControl.pbLayout()();
  v10 = sub_1000A0FF0(v9, 4);
  if (v3)
  {
    return v2;
  }

  v13 = v11;
  v96 = v10;
  v89 = a1;
  v14 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v29 = 7;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0xE000000000000000;
    swift_willThrow();
LABEL_18:

    return v2;
  }

  v16 = Strong;
  v17 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_errataList);
  if (v17 && sub_1000AA808(7u, v17))
  {
    sub_10000CA2C();
    swift_allocError();
    *v18 = 126;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v92 = v9;
  v91 = v14;
  v87 = v6;
  v88 = v8;
  v104 = v16;
  v90 = (v96 >> 8) & 1;
  HIBYTE(v86._object) = -18;
  strcpy(&v86, "Unknown Device");
  v100 = OBJC_IVAR____TtC9AUASDCore9USBDevice_logID;
  v102 = *(a2 + 32);
  v97 = v89 & 0xFFFFFF00;
  v99 = "quest on device ";
  v94 = 0x800000010012BEE0;
  v95 = "ect number of bytes received";
  v101 = ((v89 & 0xFF00) << 16) | 0x1A1;
  v98 = xmmword_100120CD0;
  v93 = xmmword_10011DE90;
  v19 = 1;
  while (1)
  {
    v21 = *(v102 + 2);
    v22 = NSData.startIndex.getter();
    v23 = NSData.endIndex.getter();
    v24 = NSData.startIndex.getter();
    v25 = NSData.endIndex.getter();
    if (v22 < v24 || v25 < v22)
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_55;
    }

    v24 = NSData.startIndex.getter();
    v26 = NSData.endIndex.getter();
    if (v23 < v24 || v26 < v23)
    {
      goto LABEL_52;
    }

    v27 = v23 - v22;
    if (__OFSUB__(v23, v22))
    {
      goto LABEL_53;
    }

    if (v27 >= 0xFFFF)
    {
      v27 = 0xFFFFLL;
    }

    v28 = v27 & ~(v27 >> 63);
    sub_1000FC690((v21 << 32) | (v28 << 48) | v101, v13, &v107);
    if (v19 == 4)
    {
      break;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_54;
    }
  }

  v30 = v107;
  v2 = v13;
  v31 = NSData.startIndex.getter();
  v32 = NSData.endIndex.getter();
  v33 = NSData.startIndex.getter();
  v34 = NSData.endIndex.getter();
  if (v31 < v33 || v34 < v31)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    swift_once();
    v41 = sub_10000A1BC(v87, qword_1001794F0);
    v42 = v88;
    sub_10000A2A4(v41, v88);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for AUALog(0);
    v44 = sub_10000A1BC(v43, qword_100179508);
    v45 = v2;
    v2 = v44;
    sub_100039F58(2, v42, v45, v28);

    sub_10000C9D0(v42);
    sub_10000CA2C();
    swift_allocError();
    *v46 = 29;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  v2 = v13;
  v33 = NSData.startIndex.getter();
  v35 = NSData.endIndex.getter();
  if (v32 < v33 || v35 < v32)
  {
    goto LABEL_67;
  }

  if (__OFSUB__(v32, v31))
  {
    goto LABEL_68;
  }

  if (v32 - v31 < v30)
  {
    sub_10000CA2C();
    swift_allocError();
    *v36 = 30;
    *(v36 + 8) = 0;
    *(v36 + 16) = 0xE000000000000000;
    swift_willThrow();

    return v2;
  }

  if (v90)
  {
    v37 = 256;
  }

  else
  {
    v37 = 0;
  }

  v2 = v37 & 0xFFFFFF00 | v96;
  v38 = v13;
  v39 = sub_10009CAD4(v2, v38);
  v40 = v104;
  v48 = v39;

  if (v48 < 5u)
  {

    return v2;
  }

  v49 = sub_1000A0FF0(v92, v48);
  v51 = v50;
  v103 = 0;
  v97 = v49;

  v101 = sub_1000A2D88(v89 & 0xFFFFFF);
  v52 = *(v102 + 2);
  v13 = v51;
  v53 = NSData.startIndex.getter();
  v54 = v13;
  v24 = NSData.endIndex.getter();
  v55 = NSData.startIndex.getter();
  v56 = NSData.endIndex.getter();
  if (v53 < v55 || v56 < v53)
  {
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v54 = v13;
  v57 = NSData.startIndex.getter();
  v58 = NSData.endIndex.getter();
  if (v24 < v57 || v58 < v24)
  {
    goto LABEL_70;
  }

  v59 = v24 - v53;
  if (__OFSUB__(v24, v53))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v24 = v40;
  if (v59 >= 0xFFFF)
  {
    v59 = 0xFFFFLL;
  }

  v60 = v59 & ~(v59 >> 63);
  v61 = v52;
  v62 = (v52 << 32) | (v60 << 48);
  v63 = v101;
  v64 = v103;
  sub_1000FC690(v62 & 0xFFFFFFFF00FFFFFFLL | (v101 << 24) | 0x1A1, v51, &v107);
  if (v64)
  {
    v103 = v64;
    v54 = _convertErrorToNSError(_:)();
    v65 = [v54 code];

    if (v65 >= 0xFFFFFFFF80000000)
    {
      if (v65 <= 0x7FFFFFFF)
      {
        v66 = [v24 boxName];
        if (v66)
        {
          v67 = v66;
          v86._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v86._object = v68;
        }

        v69 = v63 << 8;
        v105 = 0;
        v106 = 0xE000000000000000;
        if (v65 == -536850432)
        {
          _StringGuts.grow(_:)(32);

          v105 = 0xD000000000000012;
          v106 = v94;
          String.append(_:)(v86);

          v70._countAndFlagsBits = 0x64656C6C61745320;
          v70._object = 0xEA0000000000203ALL;
          String.append(_:)(v70);
          sub_100001AB4(&qword_100173C98, &unk_100120120);
        }

        else
        {
          _StringGuts.grow(_:)(45);

          v105 = 0x20726F727245;
          v106 = 0xE600000000000000;
          sub_100001AB4(&qword_100173C98, &unk_100120120);
          v77 = swift_allocObject();
          *(v77 + 16) = v93;
          *(v77 + 56) = &type metadata for Int32;
          *(v77 + 64) = &protocol witness table for Int32;
          *(v77 + 32) = v65;
          v78._countAndFlagsBits = String.init(format:_:)();
          String.append(_:)(v78);

          v79._countAndFlagsBits = 0xD000000000000020;
          v79._object = (v95 | 0x8000000000000000);
          String.append(_:)(v79);
          String.append(_:)(v86);

          v80._countAndFlagsBits = 58;
          v80._object = 0xE100000000000000;
          String.append(_:)(v80);
        }

        v71 = swift_allocObject();
        *(v71 + 16) = v98;
        *(v71 + 56) = &type metadata for UInt8;
        *(v71 + 64) = &protocol witness table for UInt8;
        *(v71 + 32) = -95;
        *(v71 + 96) = &type metadata for UInt8;
        *(v71 + 104) = &protocol witness table for UInt8;
        *(v71 + 72) = 1;
        *(v71 + 136) = &type metadata for UInt16;
        *(v71 + 144) = &protocol witness table for UInt16;
        *(v71 + 112) = v69;
        *(v71 + 176) = &type metadata for UInt16;
        *(v71 + 184) = &protocol witness table for UInt16;
        *(v71 + 152) = v61;
        *(v71 + 216) = &type metadata for UInt16;
        *(v71 + 224) = &protocol witness table for UInt16;
        *(v71 + 192) = v60;
        v81._countAndFlagsBits = String.init(format:_:)();
        String.append(_:)(v81);

        v54 = v105;
        v51 = v106;
        if (qword_100173CC0 == -1)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      __break(1u);
LABEL_74:
      swift_once();
LABEL_64:
      v82 = type metadata accessor for AUALog(0);
      v83 = sub_10000A1BC(v82, qword_100179508);
      v84 = v54;
      v2 = v83;
      sub_100039F58(2, v24 + v100, v84, v51);

      swift_willThrow();

      goto LABEL_18;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

LABEL_55:

  v72 = v107;
  v73 = NSData.startIndex.getter();
  v74 = NSData.endIndex.getter();
  v75 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v73 < v75 || result < v73)
  {
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v2 = v13;
  v76 = NSData.startIndex.getter();
  result = NSData.endIndex.getter();
  if (v74 < v76 || result < v74)
  {
    goto LABEL_76;
  }

  if (!__OFSUB__(v74, v73))
  {
    if (v72 == v74 - v73)
    {

      return v97 & 0x1FF;
    }

    else
    {
      sub_10000CA2C();
      swift_allocError();
      *v85 = 30;
      *(v85 + 8) = 0;
      *(v85 + 16) = 0xE000000000000000;
      swift_willThrow();
    }

    return v2;
  }

LABEL_77:
  __break(1u);
  return result;
}

void sub_1000201E4(int a1, uint64_t a2)
{
  v34 = 0;
  v5 = USBDescriptorControl.pbLayout()();
  sub_1000A0294(v5);
  if (v2)
  {
    return;
  }

  v7 = v6;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10000CA2C();
    swift_allocError();
    *v22 = 7;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0xE000000000000000;
    swift_willThrow();

    return;
  }

  v9 = Strong;
  v33 = sub_1000A2D88(a1 & 0xFFFFFF);
  v10 = *(*(a2 + 32) + 2);
  v11 = v7;
  v12 = NSData.startIndex.getter();
  v13 = v11;
  v14 = NSData.endIndex.getter();
  v15 = NSData.startIndex.getter();
  v16 = NSData.endIndex.getter();
  if (v12 < v15 || v16 < v12)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v13 = v11;
  v17 = NSData.startIndex.getter();
  v18 = NSData.endIndex.getter();
  if (v14 < v17 || v18 < v14)
  {
    goto LABEL_22;
  }

  v19 = v14 - v12;
  if (__OFSUB__(v14, v12))
  {
LABEL_23:
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v32 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v32, qword_100179508);
    sub_100039F58(2, v7 + v10, v13, v9);

    swift_willThrow();

    return;
  }

  if (v19 >= 0xFFFF)
  {
    v19 = 0xFFFFLL;
  }

  v20 = (v10 << 32) | ((v19 & ~(v19 >> 63)) << 48) | (v33 << 24) | 0x1A1;
  v21 = v9;
  sub_1000FC690(v20, v7, &v34);

  v23 = v34;
  v24 = v11;
  v25 = NSData.startIndex.getter();
  v26 = NSData.endIndex.getter();
  v27 = NSData.startIndex.getter();
  v28 = NSData.endIndex.getter();
  if (v25 < v27 || v28 < v25)
  {
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  v29 = NSData.startIndex.getter();
  v30 = NSData.endIndex.getter();

  if (v26 < v29 || v30 < v26)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v26, v25))
  {
    goto LABEL_26;
  }

  if (v26 - v25 < v23)
  {
    sub_10000CA2C();
    swift_allocError();
    *v31 = 30;
    *(v31 + 8) = 0;
    *(v31 + 16) = 0xE000000000000000;
    swift_willThrow();
  }
}

unint64_t sub_100020868(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = 0x6E776F6E6B6E55;
  v7 = type metadata accessor for LogID(0);
  __chkstk_darwin(v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
    v11 = *(Strong + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8);
    v12 = Strong;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v13._countAndFlagsBits = v6;
  v13._object = v11;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000022;
  v14._object = 0x800000010012BE00;
  String.append(_:)(v14);
  sub_100001AB4(&qword_100173C98, &unk_100120120);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10011DE90;
  *(v15 + 56) = &type metadata for Int32;
  *(v15 + 64) = &protocol witness table for Int32;
  *(v15 + 32) = a1;
  v16._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v16);

  v17._object = 0x800000010012BE30;
  v17._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v17);
  v38 = a2;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19 = v36;
  v20 = v37;
  if (qword_100173CB8 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A1BC(v7, qword_1001794F0);
  sub_10000A2A4(v21, v9);
  if (qword_100173CC0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for AUALog(0);
  sub_10000A1BC(v22, qword_100179508);
  sub_100039AA0(2, v9, v19, v20);

  sub_10000C9D0(v9);
  if (a2 == 6 && (swift_beginAccess(), (v23 = *(v3 + 216)) != 0))
  {
    v24 = [v23 bytes];
    return sub_10001F020(*v24 | (*(v24 + 1) << 16));
  }

  else
  {
    v38 = 0;
    v39 = 0xE000000000000000;
    _StringGuts.grow(_:)(62);
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v28 = *(v26 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName);
      v27 = *(v26 + OBJC_IVAR____TtC9AUASDCore9USBDevice_deviceName + 8);
      v29 = v26;
    }

    else
    {
      v27 = 0xE700000000000000;
      v28 = 0x6E776F6E6B6E55;
    }

    v30._countAndFlagsBits = v28;
    v30._object = v27;
    String.append(_:)(v30);

    v31._countAndFlagsBits = 0xD00000000000003CLL;
    v31._object = 0x800000010012BE50;
    String.append(_:)(v31);
    v32 = v38;
    v33 = v39;
    sub_10000A2A4(v21, v9);
    sub_100039F58(2, v9, v32, v33);

    sub_10000C9D0(v9);
    sub_10000CA2C();
    swift_allocError();
    *v34 = 2;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0xE000000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_100020C6C()
{
  v1 = *(v0 + 160);
  v7[8] = *(v0 + 144);
  v7[9] = v1;
  v8 = *(v0 + 176);
  v2 = *(v0 + 96);
  v7[4] = *(v0 + 80);
  v7[5] = v2;
  v3 = *(v0 + 128);
  v7[6] = *(v0 + 112);
  v7[7] = v3;
  v4 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v4;
  v5 = *(v0 + 64);
  v7[2] = *(v0 + 48);
  v7[3] = v5;
  sub_1000212F0(v7);
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t sub_100020D04()
{
  sub_100020C6C();

  return swift_deallocClassInstance();
}

void *sub_100020D88()
{
  swift_beginAccess();
  v1 = *(v0 + 216);
  v2 = v1;
  return v1;
}

void sub_100020DCC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 216);
  *(v1 + 216) = a1;
}

uint64_t sub_100020E9C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 224) = a1;
}

uint64_t sub_100020F6C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 232) = a1;
}

uint64_t sub_10002103C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 240) = a1;
}

unint64_t sub_1000210DC(int a1, uint64_t a2)
{
  result = sub_100020868(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_100021104(unsigned int a1, uint64_t a2)
{
  v3 = (a1 >> 18) & 0x3C | (a1 >> 6);
  if (v3 == 53)
  {
    v4 = sub_10001F0BC(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  else
  {
    if (v3 != 54)
    {
      sub_10000CA2C();
      swift_allocError();
      *v6 = 30;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0xE000000000000000;
      swift_willThrow();
      return v5;
    }

    sub_1000201E4(a1 & 0xFFFFFF, a2);
    if (!v2)
    {
      return v4 & 0x1FF;
    }
  }

  return v5;
}

unint64_t sub_1000211A8(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else if (result == 2)
  {
    return 1;
  }

  else
  {
    return 2 * (result != 1);
  }

  return result;
}

unint64_t sub_1000211CC(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else
  {
    if (result == 1)
    {
      v1 = 0;
    }

    else
    {
      v1 = 17;
    }

    if (result == 2)
    {
      return 1;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

unint64_t sub_1000211F0(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else
  {
    if (result == 1)
    {
      v1 = 0;
    }

    else
    {
      v1 = 3;
    }

    if (result == 2)
    {
      return 1;
    }

    else
    {
      return v1;
    }
  }

  return result;
}

unint64_t sub_100021214(unint64_t result)
{
  if (result > 0xFF)
  {
    __break(1u);
  }

  else if (result >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * result));
  }

  return result;
}

unint64_t sub_1000212A4()
{
  result = qword_100175168;
  if (!qword_100175168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100175168);
  }

  return result;
}

uint64_t sub_100021344@<X0>(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, _OWORD *a3@<X8>)
{
  v130 = a3;
  v10 = type metadata accessor for Mirror();
  v11 = __chkstk_darwin(v10);
  v14 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_169;
  }

  v16 = *(a1 + 41);
  if (v16 > 0xF || ((1 << v16) & 0xF3FC) == 0)
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 49;
    goto LABEL_155;
  }

  v4 = *(a1 + 32);
  if (v4[2] != a2)
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 84;
    goto LABEL_155;
  }

  if (!v4[3])
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 83;
    goto LABEL_155;
  }

  if (v4[5] != 1)
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 81;
    goto LABEL_155;
  }

  if (v4[6] != 2)
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 82;
    goto LABEL_155;
  }

  if (v4[7] != 32)
  {
    sub_10000CA2C();
    swift_allocError();
    v22 = 85;
    goto LABEL_155;
  }

  v126 = v14;
  v122 = v11;
  v112[1] = v3;
  wMaxPacketSize_low = 0;
  wMaxPacketSize_high = 0;
  bmAttributes = 0;
  v115 = 0;
  v118 = 0;
  v7 = 0;
  v124 = 0;
  v131 = 0;
  v128 = 0;
  v136 = 0;
  v137 = 0;
  v18 = 0;
  v19 = 0;
  v20 = *(a1 + 40);
  v113 = v4[4];
  v159 = &_swiftEmptySetSingleton;
  v160 = &_swiftEmptySetSingleton;
  v133 = v20 | (v16 << 8);
  v120 = a1 + 41;
  v121 = (v12 + 8);
  v119 = 65280;
  v5 = _swiftEmptyArrayStorage;
  ObjectType = _swiftEmptyArrayStorage;
  v123 = _swiftEmptyArrayStorage;
  v129 = v4;
  v135 = v15;
LABEL_20:
  LODWORD(v127) = v128 & 1;
  v23 = v19;
  v24 = v18;
  v25 = (v120 + 16 * v19);
  do
  {
    if (v23 >= v15)
    {
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    v140 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_168;
    }

    v18 = v24;
    v139 = v23;
    v26 = *v25;
    v27 = *(v25 - 1) | (v26 << 8);
    v161 = *(v25 - 9);
    if (_s9AUASDCore13USBDescriptorO21__derived_enum_equalsySbAC_ACtFZ_0(v161, v27, v4, v133))
    {
      v134 = v5;
      goto LABEL_122;
    }

    if (v26 != 17)
    {
      v134 = v5;
      if (v26 <= 65)
      {
        v44 = v123;
        v19 = v140;
        if (v26 == 19)
        {
          v137 = v161;
          goto LABEL_19;
        }

        if (v26 == 20)
        {
          v131 = v161;
          v136 = v161;
          goto LABEL_19;
        }

        goto LABEL_113;
      }

      v44 = v123;
      v19 = v140;
      if (v26 != 70)
      {
        if (v26 == 67)
        {
          wMaxPacketSize_low = LOBYTE(v161->wMaxPacketSize);
          wMaxPacketSize_high = HIBYTE(v161->wMaxPacketSize);
          goto LABEL_19;
        }

        if (v26 == 66)
        {
          v138 = v18;
          v45 = v161;
          wMaxPacketSize = v161->wMaxPacketSize;
          if (wMaxPacketSize)
          {
            if ((v161->wMaxPacketSize & 2) != 0)
            {
              v47 = -3145343;
            }

            else
            {
              v47 = -3145344;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_100024518(0, *(v123 + 2) + 1, 1, v123);
            }

            v49 = *(v123 + 2);
            v48 = *(v123 + 3);
            if (v49 >= v48 >> 1)
            {
              v123 = sub_100024518((v48 > 1), v49 + 1, 1, v123);
            }

            v50 = v123;
            *(v123 + 2) = v49 + 1;
            v51 = &v50[3 * v49];
            v51[34] = BYTE2(v47);
            *(v51 + 16) = v47;
            if ((wMaxPacketSize & 2) != 0)
            {
              sub_10009B498(&v154, 12);
            }

            v44 = v123;
            v15 = v135;
            v19 = v140;
            v45 = v161;
          }

          v52 = v45->wMaxPacketSize;
          if ((v52 & 4) != 0)
          {
            if ((v45->wMaxPacketSize & 8) != 0)
            {
              v53 = -2620863;
            }

            else
            {
              v53 = -2620864;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_100024518(0, *(v44 + 2) + 1, 1, v44);
            }

            v55 = *(v44 + 2);
            v54 = *(v44 + 3);
            if (v55 >= v54 >> 1)
            {
              v44 = sub_100024518((v54 > 1), v55 + 1, 1, v44);
            }

            *(v44 + 2) = v55 + 1;
            v56 = &v44[3 * v55];
            v56[34] = BYTE2(v53);
            *(v56 + 16) = v53;
            if ((v52 & 8) != 0)
            {
              sub_10009B498(&v154, 12);
            }

            v15 = v135;
            v19 = v140;
            v45 = v161;
          }

          v57 = HIBYTE(v45->wMaxPacketSize);
          v18 = v138;
          if (v57 == 3)
          {
            v60 = v118;
            if (v45->bInterval)
            {
              v60 = 5;
            }
          }

          else
          {
            if (v57 != 1)
            {
LABEL_120:
              bDescriptorType = v45[2].bDescriptorType;
              v115 = v45[1].bmAttributes | (*&v45[1].wMaxPacketSize << 32);
              v119 = bDescriptorType | 0x100;
              bmAttributes = v45->bmAttributes;
              goto LABEL_19;
            }

            v58 = *&v45->bInterval;
            v59 = v118;
            if ((v58 & 0x10) != 0)
            {
              v59 = 3;
            }

            if ((v58 & 8) != 0)
            {
              v59 = 4;
            }

            if ((v58 & 4) != 0)
            {
              v59 = 2;
            }

            if ((v58 & 3) != 0)
            {
              v60 = 1;
            }

            else
            {
              v60 = v59;
            }
          }

          v118 = v60;
          goto LABEL_120;
        }

LABEL_113:
        sub_10009B498(&v154, 37);
        goto LABEL_19;
      }

      sub_100001AB4(&qword_100175178, &qword_100120D50);
      v61 = swift_allocObject();
      v62 = 0;
      *(v61 + 32) = 513;
      *(v61 + 34) = 449;
      *(v61 + 36) = -64;
      *(v61 + 39) = -64;
      *(v61 + 37) = 448;
      *(v61 + 40) = 2052;
      *(v61 + 42) = 577;
      *(v61 + 44) = 22;
      *(v61 + 47) = 22;
      *(v61 + 45) = 576;
      *(v61 + 48) = 8208;
      *(v61 + 50) = 769;
      *(v61 + 52) = 16;
      *(v61 + 55) = 16;
      v139 = v61;
      *(v61 + 53) = 768;
      v63 = v161;
      v132 = v7;
      v138 = v18;
      do
      {
        v64 = v139 + v62;
        if ((v63->wMaxPacketSize & *(v139 + v62 + 32)) != 0)
        {
          v65 = *(v64 + 34) | (*(v64 + 36) << 16);
          v66 = (*(v64 + 33) & v63->wMaxPacketSize);
          if ((*(v64 + 33) & v63->wMaxPacketSize) != 0)
          {
            v67 = *(v64 + 34) | (*(v64 + 36) << 16);
          }

          else
          {
            v67 = *(v64 + 37) | (*(v64 + 39) << 16);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            ObjectType = sub_100024518(0, *(ObjectType + 2) + 1, 1, ObjectType);
          }

          v69 = *(ObjectType + 2);
          v68 = *(ObjectType + 3);
          if (v69 >= v68 >> 1)
          {
            ObjectType = sub_100024518((v68 > 1), v69 + 1, 1, ObjectType);
          }

          *(ObjectType + 2) = v69 + 1;
          v70 = &ObjectType[3 * v69];
          v70[34] = BYTE2(v67);
          *(v70 + 16) = v67;
          if (v66)
          {
            v125 = ObjectType;
            *(&v155 + 1) = &type metadata for USBDescriptorControl;
            LOWORD(v154) = v65;
            BYTE2(v154) = BYTE2(v65);
            Mirror.init(reflecting:)();
            v71 = Mirror.children.getter();
            v5 = v71[3];
            v4 = v71[4];
            v7 = v71[5];
            ObjectType = swift_getObjectType();
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v127 = dispatch thunk of _AnyIndexBox._typeID.getter();
            swift_getObjectType();
            if (v127 != dispatch thunk of _AnyIndexBox._typeID.getter())
            {
              goto LABEL_171;
            }

            v72 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v72)
            {

              v73 = *v121;
              v4 = v129;
              ObjectType = v125;
              v7 = v132;
LABEL_109:
              v15 = v135;
              v73(v126, v122);

LABEL_110:
              v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v75 & 1) == 0)
              {
                sub_10009B498(&v154, 12);
              }

              goto LABEL_92;
            }

            dispatch thunk of _AnyCollectionBox.subscript.getter();

            v74 = v154;
            sub_10000CE78(&v155);
            v73 = *v121;
            v4 = v129;
            ObjectType = v125;
            v7 = v132;
            if (!*(&v74 + 1))
            {
              goto LABEL_109;
            }

            v73(v126, v122);
            v15 = v135;
            if (v74 != __PAIR128__(0xE700000000000000, 0x68637469507065))
            {
              goto LABEL_110;
            }
          }

          else
          {
            v4 = v129;
            v15 = v135;
          }

LABEL_92:
          v18 = v138;
          v63 = v161;
        }

        v62 += 8;
      }

      while (v62 != 24);
      swift_setDeallocating();
      swift_deallocClassInstance();
      v76 = HIBYTE(v63->wMaxPacketSize);
      if (v76 != 2)
      {
        v44 = v123;
        v19 = v140;
        if (v76 == 1)
        {
          v124 = 0;
          v128 = 0;
          v7 = *&v63->bInterval;
        }

        goto LABEL_19;
      }

      v7 = *&v63->bInterval;
      v124 = 1;
      v128 = 1;
LABEL_122:
      v44 = v123;
      v19 = v140;
LABEL_19:
      v123 = v44;
      v5 = v134;
      if (v19 == v15)
      {
        goto LABEL_159;
      }

      goto LABEL_20;
    }

    if (v18)
    {
      v138 = v18;
      v28 = v160;
      v29 = v160[2];
      if (v29)
      {
        v132 = v7;
        v134 = v5;
        sub_100001AB4(&qword_100175170, &qword_100120D48);
        v30 = swift_allocObject();
        v31 = j__malloc_size(v30);
        v30[2] = v29;
        v30[3] = 2 * v31 - 64;
        v131 = sub_10011B610(&v154, v30 + 32, v29, v28);
        v4 = *(&v154 + 1);
        v32 = v154;
        v125 = *(&v155 + 1);
        v5 = v155;
        v7 = v156;

        sub_100022644(v32);
        if (v131 != v29)
        {
          goto LABEL_172;
        }

        v4 = v129;
        v5 = v134;
        v7 = v132;
      }

      else
      {

        v30 = _swiftEmptyArrayStorage;
      }

      v15 = v135;
      v33 = v138;
      if (!v30[2])
      {

        v30 = 0;
      }

      v143 = 1;
      v144 = 1;
      if (*(ObjectType + 2))
      {
        v34 = ObjectType;
      }

      else
      {

        v34 = 0;
      }

      *&v149 = v33;
      *(&v149 + 1) = v137;
      *&v150 = v136;
      BYTE8(v150) = 0;
      *(&v150 + 10) = v146;
      HIWORD(v150) = v147;
      *(&v151 + 1) = *v148;
      DWORD1(v151) = *&v148[3];
      *(&v152 + 2) = v141;
      WORD3(v152) = v142;
      BYTE9(v150) = v144;
      LOBYTE(v151) = v127;
      *(&v151 + 1) = v7;
      LOBYTE(v152) = 0;
      *&v154 = v33;
      *(&v154 + 1) = v137;
      BYTE1(v152) = v143;
      *(&v152 + 1) = v34;
      *&v153 = 0;
      *(&v153 + 1) = v30;
      *&v155 = v136;
      BYTE8(v155) = 0;
      BYTE9(v155) = v144;
      *(&v155 + 10) = v146;
      HIWORD(v155) = v147;
      LOBYTE(v156) = v127;
      DWORD1(v156) = *&v148[3];
      *(&v156 + 1) = *v148;
      *(&v156 + 1) = v7;
      LOBYTE(v157) = 0;
      BYTE1(v157) = v143;
      WORD3(v157) = v142;
      *(&v157 + 2) = v141;
      *(&v157 + 1) = v34;
      *&v158 = 0;
      *(&v158 + 1) = v30;
      sub_100022594(&v149, v145);
      sub_1000225F0(&v154);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
      }

      v36 = *(v5 + 2);
      v35 = *(v5 + 3);
      if (v36 >= v35 >> 1)
      {
        v5 = sub_1000243F8((v35 > 1), v36 + 1, 1, v5);
      }

      *(v5 + 2) = v36 + 1;
      v37 = &v5[80 * v36];
      *(v37 + 2) = v149;
      v38 = v150;
      v39 = v151;
      v40 = v153;
      *(v37 + 5) = v152;
      *(v37 + 6) = v40;
      *(v37 + 3) = v38;
      *(v37 + 4) = v39;
      v124 = v128;
    }

    v41 = v161;
    v42 = IOUSBGetEndpointDirection(v161);

    v43 = v42 == 1 && v41->wMaxPacketSize < 9u;
    v24 = v41;
    if (IOUSBGetEndpointType(v41) != 1)
    {
      sub_10009B498(&v154, 62);
      v24 = v161;
    }

    if (!v43 && !IOUSBGetEndpointSynchronizationType(v24))
    {
      sub_10009B498(&v154, 94);
      v24 = v161;
    }

    v7 = 0;
    v25 += 16;
    v23 = v139 + 1;
    v131 = 0;
    v136 = 0;
    v137 = 0;
    ObjectType = _swiftEmptyArrayStorage;
  }

  while (v140 != v15);
  v131 = 0;
  v78 = 0;
  v18 = v24;
LABEL_124:
  v138 = v18;
  v79 = v160;
  v80 = v160[2];
  if (v80)
  {
    v137 = v78;
    v132 = v7;
    v134 = v5;
    v81 = sub_1001193F0(v80, 0);
    v161 = sub_10011B610(&v154, v81 + 32, v80, v79);
    v82 = v154;

    result = sub_100022644(v82);
    if (v161 != v80)
    {
      __break(1u);
      return result;
    }

    v4 = v129;
    v5 = v134;
    v7 = v132;
    v78 = v137;
  }

  else
  {

    v81 = _swiftEmptyArrayStorage;
  }

  v84 = v138;
  v85 = v124;
  if (!v81[2])
  {

    v81 = 0;
  }

  v143 = 1;
  v144 = 1;
  if (*(ObjectType + 2))
  {
    v86 = ObjectType;
  }

  else
  {

    v86 = 0;
  }

  *&v149 = v84;
  *(&v149 + 1) = v78;
  *&v150 = v131;
  BYTE8(v150) = 0;
  *(&v150 + 10) = v146;
  HIWORD(v150) = v147;
  *(&v151 + 1) = *v148;
  DWORD1(v151) = *&v148[3];
  *(&v152 + 2) = v141;
  WORD3(v152) = v142;
  BYTE9(v150) = v144;
  LOBYTE(v151) = v85 & 1;
  *(&v151 + 1) = v7;
  LOBYTE(v152) = 0;
  *&v154 = v84;
  *(&v154 + 1) = v78;
  BYTE1(v152) = v143;
  *(&v152 + 1) = v86;
  *&v153 = 0;
  *(&v153 + 1) = v81;
  *&v155 = v131;
  BYTE8(v155) = 0;
  BYTE9(v155) = v144;
  *(&v155 + 10) = v146;
  HIWORD(v155) = v147;
  LOBYTE(v156) = v85 & 1;
  DWORD1(v156) = *&v148[3];
  *(&v156 + 1) = *v148;
  *(&v156 + 1) = v7;
  LOBYTE(v157) = 0;
  BYTE1(v157) = v143;
  WORD3(v157) = v142;
  *(&v157 + 2) = v141;
  *(&v157 + 1) = v86;
  *&v158 = 0;
  *(&v158 + 1) = v81;
  sub_100022594(&v149, v145);
  sub_1000225F0(&v154);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_173:
    v5 = sub_1000243F8(0, *(v5 + 2) + 1, 1, v5);
  }

  v88 = *(v5 + 2);
  v87 = *(v5 + 3);
  if (v88 >= v87 >> 1)
  {
    v5 = sub_1000243F8((v87 > 1), v88 + 1, 1, v5);
  }

  *(v5 + 2) = v88 + 1;
  v89 = &v5[80 * v88];
  *(v89 + 2) = v149;
  v90 = v150;
  v91 = v151;
  v92 = v153;
  *(v89 + 5) = v152;
  *(v89 + 6) = v92;
  *(v89 + 3) = v90;
  *(v89 + 4) = v91;
  while (1)
  {
    v93 = *(v5 + 2);
    if (v93)
    {
      v94 = 0;
      v95 = 0;
      v96 = (v5 + 32);
      while (1)
      {
        if (v95 >= *(v5 + 2))
        {
          goto LABEL_170;
        }

        v154 = *v96;
        v97 = v96[1];
        v98 = v96[2];
        v99 = v96[4];
        v157 = v96[3];
        v158 = v99;
        v155 = v97;
        v156 = v98;
        if (!v94)
        {
          v100 = v154;
          sub_100022594(&v154, &v149);
          if (IOUSBGetEndpointUsageType(v100) || (v102 = v100->wMaxPacketSize, v102 <= 8) && v102 > 2)
          {
            v101 = IOUSBGetEndpointUsageType(v100);
            sub_1000225F0(&v154);
            v94 = v101 == 2;
            goto LABEL_141;
          }

          sub_1000225F0(&v154);
        }

        v94 = 1;
LABEL_141:
        ++v95;
        v96 += 5;
        if (v93 == v95)
        {
          if (v94)
          {
            goto LABEL_151;
          }

          break;
        }
      }
    }

    sub_10009B498(&v154, 90);
LABEL_151:
    if (*(v5 + 2) != v113)
    {
      sub_10009B498(&v154, 91);
    }

    if (v119 >> 8 > 0xFE)
    {
      break;
    }

    v103 = v159;
    v18 = v159[2];
    if (!v18)
    {

      v104 = _swiftEmptyArrayStorage;
LABEL_162:
      v106 = v119;
      if (!v104[2])
      {

        v104 = 0;
      }

      v107 = BYTE1(v119);
      v108 = v123;
      if (!*(v123 + 2))
      {

        v108 = 0;
      }

      *(&v149 + 9) = *v148;
      HIDWORD(v149) = *&v148[3];
      *(&v152 + 2) = v146;
      WORD3(v152) = v147;
      *&v149 = v4;
      *&v154 = v4;
      BYTE8(v149) = v118;
      *&v150 = bmAttributes;
      *(&v150 + 1) = wMaxPacketSize_low;
      *&v151 = wMaxPacketSize_high;
      *(&v151 + 1) = v115;
      LOBYTE(v152) = v106;
      BYTE1(v152) = v107;
      *(&v152 + 1) = v5;
      *&v153 = v108;
      *(&v153 + 1) = v104;
      BYTE8(v154) = v118;
      *(&v154 + 9) = *v148;
      HIDWORD(v154) = *&v148[3];
      *&v155 = bmAttributes;
      *(&v155 + 1) = wMaxPacketSize_low;
      *&v156 = wMaxPacketSize_high;
      *(&v156 + 1) = v115;
      LOBYTE(v157) = v106;
      BYTE1(v157) = v107;
      *(&v157 + 2) = v146;
      WORD3(v157) = v147;
      *(&v157 + 1) = v5;
      *&v158 = v108;
      *(&v158 + 1) = v104;
      sub_10001EBF0(&v149, v145);
      result = sub_10001EC4C(&v154);
      v109 = v152;
      v110 = v130;
      v130[2] = v151;
      v110[3] = v109;
      v110[4] = v153;
      v111 = v150;
      *v110 = v149;
      v110[1] = v111;
      return result;
    }

    v104 = sub_1001193F0(v159[2], 0);
    v105 = sub_10011B610(&v154, v104 + 32, v18, v103);
    sub_100022644(v154);
    if (v105 == v18)
    {
      goto LABEL_162;
    }

    __break(1u);
LABEL_159:
    v78 = v137;
    if (v18)
    {
      goto LABEL_124;
    }
  }

  sub_10000CA2C();
  swift_allocError();
  v22 = 1;
LABEL_155:
  *v21 = v22;
  *(v21 + 8) = 0;
  *(v21 + 16) = 0xE000000000000000;
  return swift_willThrow();
}

void sub_100022654(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v28 = type metadata accessor for LogID(0);
  __chkstk_darwin(v28);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  v7 = String._bridgeToObjectiveC()();

  v8 = [a1 propertyForKey:v7];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v9 = v33;
  *a3 = v32;
  *(a3 + 16) = v9;
  if (*(a3 + 24))
  {
    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v30 = 0xD000000000000022;
    v31 = 0x800000010012BF40;
    v10 = 0xD000000000000025;
    v11 = 0xD000000000000020;
    v12 = 0xD000000000000017;
    if (v27 == 3)
    {
      v12 = 0xD000000000000015;
      v13 = "override property ";
    }

    else
    {
      v13 = "Invalid PB layout ";
    }

    if (v27 == 2)
    {
      v14 = "IOAudioEngineIsHidden";
    }

    else
    {
      v11 = v12;
      v14 = v13;
    }

    if (v27)
    {
      v10 = 0xD00000000000001FLL;
      v15 = "putSampleLatency";
    }

    else
    {
      v15 = "IOAudioEngineInputSampleLatency";
    }

    if (v27 <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    if (v27 <= 1u)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 | 0x8000000000000000;
    String.append(_:)(*&v16);

    v19._countAndFlagsBits = 0x2065756C6176202CLL;
    v19._object = 0xE800000000000000;
    String.append(_:)(v19);
    sub_100022990(a3, &v32);
    sub_100001AB4(&unk_100174A20, &unk_100120170);
    v20._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v20);

    v21 = v30;
    v22 = v31;
    if (qword_100173CB8 != -1)
    {
      swift_once();
    }

    v23 = sub_10000A1BC(v28, qword_1001794F0);
    v24 = v29;
    sub_10000A2A4(v23, v29);
    if (qword_100173CC0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for AUALog(0);
    sub_10000A1BC(v25, qword_100179508);
    sub_100039AA0(1, v24, v21, v22);

    sub_10000C9D0(v24);
  }
}

uint64_t sub_100022990(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&unk_100174A20, &unk_100120170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_100022A00@<D0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = [objc_allocWithZone(IOKService) initWithServiceEntry:{objc_msgSend(a1, "ioService")}];
    sub_100022654(v5, a2, v9);

    if (v10)
    {
      v6 = sub_100001AB4(&qword_100175180, &qword_100120D58);
      if (swift_dynamicCast())
      {
        *(a3 + 24) = v6;
        *a3 = v8;
        return result;
      }
    }

    else
    {
      sub_100022ADC(v9);
    }
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_100022ADC(uint64_t a1)
{
  v2 = sub_100001AB4(&unk_100174A20, &unk_100120170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100022B64()
{
  v2 = v1;
  v3 = *(v0 + 32);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v4 - 1;
    v7 = (v3 + 40);
    while (v5 < *(v3 + 16))
    {
      v8 = *v7;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100051434(ObjectType, v8);
      swift_unknownObjectRelease();
      if (!v2)
      {
        v7 += 2;
        if (v6 != v5++)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_100022C14()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *v4;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_100051EB0(ObjectType, v5);
      swift_unknownObjectRelease();
      v4 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t ActiveConfiguration.deinit()
{

  return v0;
}

uint64_t ActiveConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100022D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100022F64(a1, &v19);
  v6 = v20;
  if (v20)
  {
    v7 = v19;
    sub_10000CE78(v21);
    if (*(a2 + 16))
    {
      v8 = sub_10001D11C(v7, v6);
      v10 = v9;

      if (v10)
      {
        result = sub_10001EDEC(*(a2 + 56) + 40 * v8, &v22);
LABEL_9:
        v12 = v23;
        *a3 = v22;
        *(a3 + 16) = v12;
        *(a3 + 32) = v24;
        return result;
      }
    }

    else
    {
    }
  }

  else
  {
    sub_10000CE78(v21);
  }

  sub_100022F64(a1, &v19);

  result = swift_dynamicCast();
  if (result)
  {
    v22 = v16;
    v23 = v17;
    v24 = v18;
    goto LABEL_9;
  }

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  sub_100022FD4(&v16);
  sub_100022F64(a1, &v19);
  v13 = v20;
  if (v20)
  {
    v14 = v19;
    sub_10000CE78(v21);
    v19 = 0;
    v20 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);

    v19 = 0xD000000000000029;
    v20 = 0x800000010012C0D0;
    v15._countAndFlagsBits = v14;
    v15._object = v13;
    String.append(_:)(v15);
  }

  else
  {
    sub_10000CE78(v21);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100022F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001AB4(&qword_100175248, &unk_100122110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}