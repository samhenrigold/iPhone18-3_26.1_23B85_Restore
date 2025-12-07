void *sub_100244BF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1001F55A4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1001AC934(v4, v11, &qword_1003771F8, &qword_1002F23A0);
      sub_1001A551C(&qword_1003771F8, &qword_1002F23A0);
      sub_1001A551C(&qword_100379B70, &qword_1002F2380);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1001F55A4((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[6 * v6];
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100244D40(unint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
    v3 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v6 = v3;
  sub_100249EA4(a1, 1, &v6);

  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_100244DE0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A551C(&unk_100377070, &qword_1002F2258);
    v2 = static _DictionaryStorage.allocate(capacity:)();
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
    sub_1001A773C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100201570(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100201570(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100201570(v31, v32);
    v16 = AnyHashable._rawHashValue(seed:)(v2[5]);
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
    sub_100201570(v32, (v2[7] + 32 * v9));
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

BOOL sub_1002450A8(uint64_t a1, uint64_t a2)
{
  sub_1001AC934(a1, v7, &qword_1003771E8, &qword_1002F2390);
  if (swift_dynamicCast())
  {
    v3 = v6;
  }

  else
  {
    v3 = 0;
  }

  sub_1002015DC(v7);
  sub_1001AC934(a2, v7, &qword_1003771E8, &qword_1002F2390);
  if (swift_dynamicCast())
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  sub_1002015DC(v7);
  return v4 < v3;
}

void *sub_100245198(uint64_t a1, void *a2)
{
  if (qword_100374FC0 != -1)
  {
    swift_once();
  }

  v5 = qword_1003824A8;
  v6 = static os_log_type_t.default.getter();
  sub_1001A551C(&unk_100377020, &unk_1002EF770);
  v7 = swift_allocObject();
  v8 = &type metadata for Int;
  v130 = xmmword_1002EED40;
  *(v7 + 16) = xmmword_1002EED40;
  v9 = &protocol witness table for Int;
  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = a1;
  os_log(_:dso:log:type:_:)("exception metric %{public}d", 27, 2, &_mh_execute_header, v5, v6, v7);

  if (a1 > 806912)
  {
    if (a1 != 806913)
    {
      if (a1 != 827650)
      {
        if (a1 == 827746)
        {
          v10 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
          *&v134 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
          *(&v134 + 1) = v10;

          v11 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v11)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v134 = 0u;
            v135 = 0u;
          }

          v132 = v134;
          v133 = v135;
          if (*(&v135 + 1))
          {
            if (swift_dynamicCast())
            {
              v61.super.isa = Data._bridgeToObjectiveC()().super.isa;
              sub_1001A5474(*&v131[0], *(&v131[0] + 1));
              goto LABEL_79;
            }
          }

          else
          {
            sub_1001AC99C(&v132, &qword_100375D68, &unk_1002F2370);
          }

          v61.super.isa = 0;
LABEL_79:
          v62 = [objc_allocWithZone(CellularRatLacSrvInfo) initWithData:v61.super.isa];

          if (!v62)
          {
            goto LABEL_159;
          }

          v63 = [v62 dictionaryRepresentation];

          if (v63)
          {
LABEL_90:
            v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

            return v26;
          }

          return 0;
        }

        goto LABEL_19;
      }

      v16 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
      *&v134 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
      *(&v134 + 1) = v16;

      v17 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v17)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v134 = 0u;
        v135 = 0u;
      }

      v132 = v134;
      v133 = v135;
      if (*(&v135 + 1))
      {
        if (swift_dynamicCast())
        {
          v28.super.isa = Data._bridgeToObjectiveC()().super.isa;
          sub_1001A5474(*&v131[0], *(&v131[0] + 1));
LABEL_37:
          v29 = [objc_allocWithZone(CellularRegisteredPlmnStatus) initWithData:v28.super.isa];

          if (!v29)
          {
            goto LABEL_157;
          }

          v30 = [v29 dictionaryRepresentation];

          if (!v30)
          {
            return 0;
          }

          v26 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

          v136 = v26;
          *&v134 = 0x6C5F6E6D6C706865;
          *(&v134 + 1) = 0xEB00000000747369;
          AnyHashable.init<A>(_:)();
          if (!v26[2] || (v31 = sub_1001F6774(&v132), (v32 & 1) == 0))
          {
            sub_1002015DC(&v132);
            v134 = 0u;
            v135 = 0u;
            sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
            return v26;
          }

          sub_1001A773C(v26[7] + 32 * v31, &v134);
          sub_1002015DC(&v132);
          sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
          *&v131[0] = 0x6C5F6E6D6C706865;
          *(&v131[0] + 1) = 0xEB00000000747369;
          AnyHashable.init<A>(_:)();
          if (!v26[2] || (v33 = sub_1001F6774(&v132), (v34 & 1) == 0))
          {
            sub_1002015DC(&v132);
            return v26;
          }

          sub_1001A773C(v26[7] + 32 * v33, &v134);
          sub_1002015DC(&v132);
          sub_1001A551C(&unk_100378CA0, &qword_1002F3FE8);
          if ((swift_dynamicCast() & 1) == 0)
          {
            return v26;
          }

          v35 = *(*&v131[0] + 16);
          if (!v35)
          {

            return v26;
          }

          v36 = 0;
          v37 = 0;
          v38 = *&v131[0] + 32;
          v39 = 1;
          v40 = 1;
          do
          {
            sub_1001A773C(v38, &v132);
            sub_1001A551C(&qword_1003751A8, &unk_1002EED70);
            if (swift_dynamicCast())
            {
              v68 = v134;
              if (*(v134 + 16) && (v69 = sub_1001F66B8(4408141, 0xE300000000000000), (v70 & 1) != 0))
              {
                sub_1001A773C(*(v68 + 56) + 32 * v69, &v132);
                v71 = swift_dynamicCast();
                if (v71)
                {
                  v37 = v134;
                }

                else
                {
                  v37 = 0;
                }

                v40 = v71 ^ 1;
              }

              else
              {
                v37 = 0;
                v40 = 1;
              }

              if (*(v68 + 16) && (v72 = sub_1001F66B8(4410957, 0xE300000000000000), (v73 & 1) != 0))
              {
                sub_1001A773C(*(v68 + 56) + 32 * v72, &v132);

                v74 = swift_dynamicCast();
                if (v74)
                {
                  v36 = v134;
                }

                else
                {
                  v36 = 0;
                }

                v39 = v74 ^ 1;
              }

              else
              {

                v36 = 0;
                v39 = 1;
              }
            }

            v38 += 32;
            --v35;
          }

          while (v35);

          if ((v40 | v39))
          {
            return v26;
          }

          *&v134 = 1313688656;
          *(&v134 + 1) = 0xE400000000000000;
          AnyHashable.init<A>(_:)();
          *&v134 = v37;
          *&v134 = dispatch thunk of CustomStringConvertible.description.getter();
          *(&v134 + 1) = v117;

          v118._countAndFlagsBits = 32;
          v118._object = 0xE100000000000000;
          String.append(_:)(v118);

          v119 = v134;
          *&v134 = v36;
          v120 = dispatch thunk of CustomStringConvertible.description.getter();
          v122 = v121;
          v134 = v119;

          v123._countAndFlagsBits = v120;
          v123._object = v122;
          String.append(_:)(v123);

          *(&v135 + 1) = &type metadata for String;
          sub_100201570(&v134, v131);
          v124 = v136;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1001F8F64(v131, &v132, isUniquelyReferenced_nonNull_native);
          sub_1002015DC(&v132);
          v136 = v124;
          *&v134 = 0x6C5F6E6D6C706865;
          *(&v134 + 1) = 0xEB00000000747369;
          AnyHashable.init<A>(_:)();
          sub_1001F69A4(&v132, &v134);
LABEL_30:
          sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
          sub_1002015DC(&v132);
          return v136;
        }
      }

      else
      {
        sub_1001AC99C(&v132, &qword_100375D68, &unk_1002F2370);
      }

      v28.super.isa = 0;
      goto LABEL_37;
    }

    v14 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
    *&v134 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
    *(&v134 + 1) = v14;

    v15 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = 0u;
      v135 = 0u;
    }

    v132 = v134;
    v133 = v135;
    if (*(&v135 + 1))
    {
      if (swift_dynamicCast())
      {
        v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1001A5474(*&v131[0], *(&v131[0] + 1));
LABEL_27:
        v25 = [objc_allocWithZone(CellularNrOtaMsg) initWithData:v24.super.isa];

        if (!v25)
        {
          goto LABEL_156;
        }

        v26 = [v25 dictionaryRepresentation];

        if (!v26)
        {
          return v26;
        }

        v27 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v136 = v27;
        *&v134 = 0x6E61725F71657266;
        *(&v134 + 1) = 0xEA00000000006567;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v132, &v134);
        sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v132);
        *&v134 = 0x6C6C65635F796870;
        *(&v134 + 1) = 0xEB0000000064695FLL;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v132, &v134);
        sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v132);
        *&v134 = 0x77625F6C64;
        *(&v134 + 1) = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v132, &v134);
        sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v132);
        strcpy(&v134, "freq_band_ind");
        HIWORD(v134) = -4864;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v132, &v134);
        sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(&v132);
        *&v134 = 0x77625F6C64;
        *(&v134 + 1) = 0xE500000000000000;
        AnyHashable.init<A>(_:)();
        sub_1001F69A4(&v132, &v134);
        goto LABEL_30;
      }
    }

    else
    {
      sub_1001AC99C(&v132, &qword_100375D68, &unk_1002F2370);
    }

    v24.super.isa = 0;
    goto LABEL_27;
  }

  if (a1 != 806480)
  {
    if (a1 != 806743)
    {
LABEL_19:
      if (qword_100374F98 != -1)
      {
LABEL_152:
        swift_once();
      }

      v21 = qword_100382480;
      v22 = static os_log_type_t.default.getter();
      v23 = swift_allocObject();
      *(v23 + 16) = v130;
      *(v23 + 56) = v8;
      *(v23 + 64) = v9;
      *(v23 + 32) = a1;
      os_log(_:dso:log:type:_:)("handleEdgeCaseMetrics - unable to process metricId: %{public}d ", 63, 2, &_mh_execute_header, v21, v22, v23);
LABEL_91:

      return 0;
    }

    v12 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
    *&v134 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
    *(&v134 + 1) = v12;

    v13 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v13)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v134 = 0u;
      v135 = 0u;
    }

    v132 = v134;
    v133 = v135;
    if (*(&v135 + 1))
    {
      if (swift_dynamicCast())
      {
        v64.super.isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1001A5474(*&v131[0], *(&v131[0] + 1));
        goto LABEL_88;
      }
    }

    else
    {
      sub_1001AC99C(&v132, &qword_100375D68, &unk_1002F2370);
    }

    v64.super.isa = 0;
LABEL_88:
    v65 = [objc_allocWithZone(CellularLteConnectionStats) initWithData:v64.super.isa];

    if (!v65)
    {
      goto LABEL_160;
    }

    v63 = [v65 dictionaryRepresentation];

    if (v63)
    {
      goto LABEL_90;
    }

    return 0;
  }

  v18 = sub_1001FD444(_swiftEmptyArrayStorage);
  v136 = v18;
  v19 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey + 8);
  *&v134 = *(v2 + OBJC_IVAR____TtC11FTMInternal13MetricService_payloadKey);
  *(&v134 + 1) = v19;

  v20 = [a2 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v134 = 0u;
    v135 = 0u;
  }

  v132 = v134;
  v133 = v135;
  if (*(&v135 + 1))
  {
    if (swift_dynamicCast())
    {
      v41.super.isa = Data._bridgeToObjectiveC()().super.isa;
      sub_1001A5474(*&v131[0], *(&v131[0] + 1));
      goto LABEL_53;
    }
  }

  else
  {
    sub_1001AC99C(&v132, &qword_100375D68, &unk_1002F2370);
  }

  v41.super.isa = 0;
LABEL_53:
  v42 = [objc_allocWithZone(CellularLteCellMetric) initWithData:v41.super.isa];

  if (!v42)
  {
    goto LABEL_158;
  }

  v43 = [v42 dictionaryRepresentation];

  if (!v43)
  {
    goto LABEL_91;
  }

  v44 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  *&v134 = 0x64695F73627573;
  *(&v134 + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(v44 + 16) && (v45 = sub_1001F6774(&v132), (v46 & 1) != 0))
  {
    sub_1001A773C(*(v44 + 56) + 32 * v45, &v134);
    sub_1002015DC(&v132);
    sub_100201570(&v134, v131);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001F90B0(v131, 0x64695F73627573, 0xE700000000000000, v47);
    v136 = v18;
  }

  else
  {
    sub_1002015DC(&v132);
    sub_1001F6A48(0x64695F73627573, 0xE700000000000000, &v134);
    sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
  }

  *&v134 = 0x6D617473656D6974;
  *(&v134 + 1) = 0xE900000000000070;
  AnyHashable.init<A>(_:)();
  if (*(v44 + 16) && (v48 = sub_1001F6774(&v132), (v49 & 1) != 0))
  {
    sub_1001A773C(*(v44 + 56) + 32 * v48, &v134);
    sub_1002015DC(&v132);
    sub_100201570(&v134, v131);
    v50 = v136;
    v51 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001F90B0(v131, 0x6D617473656D6974, 0xE900000000000070, v51);
    v136 = v50;
  }

  else
  {
    sub_1002015DC(&v132);
    sub_1001F6A48(0x6D617473656D6974, 0xE900000000000070, &v134);
    sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
  }

  sub_1002467B8(v44);
  v53 = v52;

  if (!v53)
  {
    goto LABEL_95;
  }

  if (!*(v53 + 16))
  {
    goto LABEL_94;
  }

  v54 = sub_1001F66B8(0x7274656D5F65746CLL, 0xEB00000000736369);
  if ((v55 & 1) == 0)
  {
    goto LABEL_94;
  }

  sub_1001A773C(*(v53 + 56) + 32 * v54, &v132);

  sub_1001A551C(&unk_100378CB0, &qword_1002F3FF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_95;
  }

  if (!*(v134 + 16))
  {
    goto LABEL_94;
  }

  v56 = *(v134 + 32);

  if (!*(v56 + 16))
  {
    goto LABEL_94;
  }

  v57 = sub_1001F66B8(1819043171, 0xE400000000000000);
  if ((v58 & 1) == 0)
  {
    goto LABEL_94;
  }

  sub_1001A773C(*(v56 + 56) + 32 * v57, &v132);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_95:
    sub_100244DE0(v136);
    v26 = v67;

    return v26;
  }

  v59 = v134;
  v128 = *(v134 + 16);
  if (!v128)
  {
LABEL_94:

    goto LABEL_95;
  }

  v60 = 0;
  v126 = v134;
  v127 = v134 + 32;
  while (v60 < *(v59 + 16))
  {
    v75 = *(v127 + 8 * v60);
    a1 = *(v75 + 16);

    if (a1 && (v76 = sub_1001F66B8(1684955490, 0xE400000000000000), (v77 & 1) != 0) && (sub_1001A773C(*(v75 + 56) + 32 * v76, &v132), swift_dynamicCast()))
    {
      *&v130 = v134;
    }

    else
    {
      *&v130 = 0;
    }

    v129 = v60 + 1;
    v8 = (v75 + 64);
    v78 = 1 << *(v75 + 32);
    if (v78 < 64)
    {
      v79 = ~(-1 << v78);
    }

    else
    {
      v79 = -1;
    }

    v80 = v79 & *(v75 + 64);
    v81 = (v78 + 63) >> 6;

    v82 = 0;
    while (v80)
    {
LABEL_131:
      v84 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v85 = (*(v75 + 48) + ((v82 << 10) | (16 * v84)));
      v87 = *v85;
      v86 = v85[1];
      *&v132 = v130;

      *&v132 = dispatch thunk of CustomStringConvertible.description.getter();
      *(&v132 + 1) = v88;

      v89._countAndFlagsBits = 45;
      v89._object = 0xE100000000000000;
      String.append(_:)(v89);

      v90._countAndFlagsBits = 0x6E6F6974636573;
      v90._object = 0xE700000000000000;
      String.append(_:)(v90);

      v91._countAndFlagsBits = 45;
      v91._object = 0xE100000000000000;
      String.append(_:)(v91);

      v92._countAndFlagsBits = v87;
      v92._object = v86;
      String.append(_:)(v92);

      v9 = *(&v132 + 1);
      v93 = v132;
      if (*(v75 + 16))
      {
        v94 = sub_1001F66B8(v87, v86);
        v96 = v95;

        if ((v96 & 1) == 0)
        {
          goto LABEL_138;
        }

        sub_1001A773C(*(v75 + 56) + 32 * v94, &v132);
        sub_100201570(&v132, &v134);
        v97 = v136;
        v98 = swift_isUniquelyReferenced_nonNull_native();
        *&v131[0] = v97;
        v99 = sub_1001F66B8(v93, v9);
        v101 = *(v97 + 16);
        v102 = (v100 & 1) == 0;
        v103 = __OFADD__(v101, v102);
        v104 = v101 + v102;
        if (v103)
        {
          __break(1u);
          goto LABEL_154;
        }

        v105 = v100;
        if (*(v97 + 24) >= v104)
        {
          if (v98)
          {
            goto LABEL_143;
          }

          v113 = v99;
          sub_1001F9D54();
          v99 = v113;
          if ((v105 & 1) == 0)
          {
            goto LABEL_146;
          }

LABEL_144:
          v111 = v99;

          v112 = *&v131[0];
          a1 = *(*&v131[0] + 56) + 32 * v111;
          sub_1001A5654(a1);
          sub_100201570(&v134, a1);
          v136 = v112;
        }

        else
        {
          sub_1001F76E0(v104, v98);
          v99 = sub_1001F66B8(v93, v9);
          if ((v105 & 1) != (v106 & 1))
          {
            goto LABEL_161;
          }

LABEL_143:
          if (v105)
          {
            goto LABEL_144;
          }

LABEL_146:
          a1 = *&v131[0];
          *(*&v131[0] + 8 * (v99 >> 6) + 64) |= 1 << v99;
          v114 = (*(a1 + 48) + 16 * v99);
          *v114 = v93;
          v114[1] = v9;
          sub_100201570(&v134, (*(a1 + 56) + 32 * v99));
          v115 = *(a1 + 16);
          v103 = __OFADD__(v115, 1);
          v116 = v115 + 1;
          if (v103)
          {
            goto LABEL_155;
          }

          *(a1 + 16) = v116;
          v136 = a1;
        }
      }

      else
      {

LABEL_138:
        v107 = v136;
        a1 = sub_1001F66B8(v93, v9);
        v109 = v108;

        if (v109)
        {
          v110 = swift_isUniquelyReferenced_nonNull_native();
          *&v131[0] = v107;
          if (!v110)
          {
            sub_1001F9D54();
            v107 = *&v131[0];
          }

          sub_100201570((*(v107 + 56) + 32 * a1), &v134);
          sub_1001F85E0(a1, v107);
          v136 = v107;
        }

        else
        {
          v134 = 0u;
          v135 = 0u;
        }

        sub_1001AC99C(&v134, &qword_100375D68, &unk_1002F2370);
      }
    }

    while (1)
    {
      v83 = v82 + 1;
      if (__OFADD__(v82, 1))
      {
        __break(1u);
        goto LABEL_152;
      }

      if (v83 >= v81)
      {
        break;
      }

      v80 = v8[v83];
      ++v82;
      if (v80)
      {
        v82 = v83;
        goto LABEL_131;
      }
    }

    v60 = v129;
    v59 = v126;
    if (v129 == v128)
    {
      goto LABEL_94;
    }
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1002467B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1001A551C(&unk_1003771D0, &unk_1002F5090);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_100201580(*(a1 + 48) + 40 * v11, v27);
    sub_1001A773C(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_100201580(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_1001A773C(v25 + 8, v20);
    sub_1001AC99C(v24, &qword_1003771E8, &qword_1002F2390);
    v21 = v18;
    sub_100201570(v20, v22);
    v12 = v21;
    sub_100201570(v22, v23);
    sub_100201570(v23, &v21);
    v13 = sub_1001F66B8(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      sub_1001A5654(v9);
      sub_100201570(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_100201570(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_1001AC99C(v24, &qword_1003771E8, &qword_1002F2390);
}

uint64_t sub_100246A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  v11[1] = 0x6D617473656D6974;
  v11[2] = 0xE900000000000070;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    return sub_1002015DC(v12);
  }

  v8 = sub_1001F6774(v12);
  if ((v9 & 1) == 0)
  {
    return sub_1002015DC(v12);
  }

  sub_1001A773C(*(a1 + 56) + 32 * v8, v13);
  sub_1002015DC(v12);
  result = swift_dynamicCast();
  if (result)
  {
    Date.init(timeIntervalSince1970:)();
    (*(v5 + 8))(a2, v4);
    return (*(v5 + 32))(a2, v7, v4);
  }

  return result;
}

void sub_100246C40(uint64_t a1, _OWORD *a2, unint64_t a3)
{
  v7 = 0x64695F73627573;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v151 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for UUID();
  v11 = *(v150 - 8);
  __chkstk_darwin(v150);
  v152 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Metric(0);
  __chkstk_darwin(v149);
  v148 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v147 = &v118 - v15;
  *&v159[0] = 0x64695F73627573;
  *(&v159[0] + 1) = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v16 = sub_1001F6774(v168), (v17 & 1) == 0))
  {
    v116 = v168;
    goto LABEL_72;
  }

  sub_1001A773C(*(a1 + 56) + 32 * v16, v166);
  sub_1002015DC(v168);
  if (swift_dynamicCast())
  {
    v128 = a2;
    v138 = a3;
    v121 = v3;
    LODWORD(a3) = v159[0];
    if (qword_100374FC0 != -1)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v18 = qword_1003824A8;
      v19 = static os_log_type_t.default.getter();
      v146 = sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v20 = swift_allocObject();
      v118 = xmmword_1002EED40;
      *(v20 + 16) = xmmword_1002EED40;
      *(v20 + 56) = &type metadata for Int32;
      *(v20 + 64) = &protocol witness table for Int32;
      v141 = a3;
      *(v20 + 32) = a3;
      v145 = v18;
      os_log(_:dso:log:type:_:)("subsId  ---> %{public}d", 23, 2, &_mh_execute_header, v18, v19, v20);

      v21 = a1 + 64;
      v22 = 1 << *(a1 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      a3 = v23 & *(a1 + 64);
      v24 = (v22 + 63) >> 6;
      v125 = (v11 + 16);
      v126 = (v9 + 16);
      v25 = (v9 + 8);
      v9 = v24;
      v123 = (v11 + 8);
      v124 = v25;

      v11 = 0;
      v120 = xmmword_1002F2BB0;
      v122 = xmmword_1002F2090;
      v139 = xmmword_1002EED50;
      v119 = xmmword_1002EED30;
      v127 = a1;
      v140 = v8;
      v8 = &type metadata for Any;
      v129 = a1 + 64;
      v130 = v9;
      if (a3)
      {
        break;
      }

LABEL_8:
      while (1)
      {
        v26 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v26 >= v9)
        {

          return;
        }

        a3 = *(v21 + 8 * v26);
        ++v11;
        if (a3)
        {
          v11 = v26;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      swift_once();
    }

    while (1)
    {
LABEL_12:
      sub_100201580(*(a1 + 48) + 40 * (__clz(__rbit64(a3)) | (v11 << 6)), v168);
      v166[0] = v168[0];
      v166[1] = v168[1];
      v167 = v169;
      if (*(a1 + 16))
      {
        v27 = sub_1001F6774(v166);
        v28 = v7;
        if (v29)
        {
          sub_1001A773C(*(a1 + 56) + 32 * v27, &v164);
        }

        else
        {
          v164 = 0u;
          v165 = 0u;
        }
      }

      else
      {
        v28 = v7;
        v164 = 0u;
        v165 = 0u;
      }

      a3 &= a3 - 1;
      sub_1001AC934(&v164, v163, &qword_100375D68, &unk_1002F2370);
      if (!v163[3])
      {
        goto LABEL_64;
      }

      sub_1001AC934(v163, v162, &qword_100375D68, &unk_1002F2370);
      if (swift_dynamicCast())
      {
        *&v153 = *&v159[0];
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_22:
        v32 = v30;
        v33 = v31;
        v34 = 0xE300000000000000;
        v143 = 5525065;
        goto LABEL_23;
      }

      if (swift_dynamicCast())
      {
        v30 = Float.description.getter();
        goto LABEL_22;
      }

      if (swift_dynamicCast())
      {
        v90 = v159[0];
        v153 = v159[0];
        *&v157 = 47;
        *(&v157 + 1) = 0xE100000000000000;
        sub_1001A56A0();
        v91 = StringProtocol.contains<A>(_:)();
        v144 = v90;
        if (v91)
        {
          v33 = *(&v90 + 1);
          v34 = 0xE400000000000000;
          v92 = 1163149636;
        }

        else
        {
          v153 = v90;
          v33 = *(&v90 + 1);
          *&v157 = 58;
          *(&v157 + 1) = 0xE100000000000000;
          v95 = StringProtocol.contains<A>(_:)();
          if (v95)
          {
            v92 = 1163149636;
          }

          else
          {
            v92 = 0x474E49525453;
          }

          if (v95)
          {
            v34 = 0xE400000000000000;
          }

          else
          {
            v34 = 0xE600000000000000;
          }
        }

        v143 = v92;
        v32 = v144;
LABEL_23:
        sub_1001A5654(v162);
        sub_1001AC99C(v163, &qword_100375D68, &unk_1002F2370);
        v35.isa = AnyHashable._bridgeToObjectiveC()().isa;
        objc_opt_self();
        v36 = swift_dynamicCastObjCClassUnconditional();
        v37 = HIBYTE(v33) & 0xF;
        v142 = v33;
        if ((v33 & 0x2000000000000000) == 0)
        {
          v37 = v32 & 0xFFFFFFFFFFFFLL;
        }

        if (!v37 || (v34 & 0xF00000000000000) == 0)
        {

          v117 = static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)("attribute value or value type is empty", 38, 2, &_mh_execute_header, v145, v117, _swiftEmptyArrayStorage);

          sub_1001AC99C(&v164, &qword_100375D68, &unk_1002F2370);
          v116 = v166;
LABEL_72:
          sub_1002015DC(v116);
          return;
        }

        v38 = v32;
        v136 = v36;
        isa = v35.isa;
        if (qword_100375018 != -1)
        {
          swift_once();
        }

        v144 = v34;
        v39 = *(qword_100382500 + 24);
        v40 = static os_log_type_t.default.getter();
        v41 = swift_allocObject();
        if (v39 == 1)
        {
          *(v41 + 16) = v120;
          v42 = v128;
          v171 = *v128;
          *(v41 + 56) = &type metadata for String;
          v43 = sub_1001A76E8();
          *(v41 + 64) = v43;
          v44 = v42[1];
          *(v41 + 32) = *v42;
          v170 = v44;
          *(v41 + 96) = &type metadata for String;
          *(v41 + 104) = v43;
          *(v41 + 72) = v44;
          sub_1001ACE9C(&v171, v159);
          sub_1001ACE9C(&v170, v159);
          v45 = AnyHashable.description.getter();
          *(v41 + 136) = &type metadata for String;
          *(v41 + 144) = v43;
          *(v41 + 112) = v45;
          *(v41 + 120) = v46;
          *(v41 + 176) = &type metadata for String;
          *(v41 + 184) = v43;
          LODWORD(v135) = v40;
          *(v41 + 152) = v38;
          *(v41 + 160) = v142;
          *(v41 + 216) = &type metadata for String;
          *(v41 + 224) = v43;
          v47 = v144;
          *(v41 + 192) = v143;
          *(v41 + 200) = v47;
          LODWORD(v159[0]) = v141;

          v48 = dispatch thunk of CustomStringConvertible.description.getter();
          *(v41 + 256) = &type metadata for String;
          *(v41 + 264) = v43;
          *(v41 + 232) = v48;
          *(v41 + 240) = v49;
          os_log(_:dso:log:type:_:)("metricTech: %{public}s, metricName: %{public}s, attributeName: %{public}s, attributeValue: %{public}s, attibuteValueType: %{public}s, subsId: %{public}s)", 153, 2, &_mh_execute_header, v145, v135, v41);
        }

        else
        {
          *(v41 + 16) = v119;
          v42 = v128;
          v173 = *v128;
          *(v41 + 56) = &type metadata for String;
          v50 = sub_1001A76E8();
          *(v41 + 64) = v50;
          v51 = v42[1];
          *(v41 + 32) = *v42;
          v172 = v51;
          *(v41 + 96) = &type metadata for String;
          *(v41 + 104) = v50;
          *(v41 + 72) = v51;
          sub_1001ACE9C(&v173, v159);
          sub_1001ACE9C(&v172, v159);
          v52 = AnyHashable.description.getter();
          *(v41 + 136) = &type metadata for String;
          *(v41 + 144) = v50;
          *(v41 + 112) = v52;
          *(v41 + 120) = v53;
          os_log(_:dso:log:type:_:)("metricTech: %{public}s, metricName: %{public}s)", 47, 2, &_mh_execute_header, v145, v40, v41);
        }

        UUID.init()();
        v143 = String._bridgeToObjectiveC()();
        v54 = *(v42 + 2);
        v55 = *(v42 + 3);
        v142 = String._bridgeToObjectiveC()();
        v134 = String._bridgeToObjectiveC()();
        v133 = String._bridgeToObjectiveC()();
        v135 = *v126;
        v135(v151, v138, v140);
        v56 = [objc_allocWithZone(NSNumber) initWithInteger:*(v42 + 4)];
        v57 = [v56 stringValue];
        if (!v57)
        {
          __break(1u);
LABEL_80:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v58 = v57;

        v59 = v136;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        LODWORD(v144) = sub_1002205A4(v54, v55, v60, v61);

        v62 = v149;
        v63 = v149[14];
        v64 = v149[16];
        v131 = v149[15];
        v132 = v64;
        v65 = v147;
        (*v125)(v147, v152, v150);
        v66 = v142;
        *(v65 + v62[5]) = v143;
        *(v65 + v62[6]) = v66;
        *(v65 + v62[7]) = v59;
        *(v65 + v62[8]) = v59;
        v67 = v133;
        *(v65 + v62[9]) = v134;
        *(v65 + v62[10]) = v67;
        v68 = v151;
        v69 = v140;
        v135((v65 + v62[11]), v151, v140);
        *(v65 + v62[12]) = v58;
        *(v65 + v62[13]) = v141;
        *(v65 + v63) = v144 & 1;
        *(v65 + v131) = 0;
        v70 = *v124;
        v144 = isa;
        v70(v68, v69);
        (*v123)(v152, v150);
        *(v65 + v132) = v122;
        v71 = static os_log_type_t.default.getter();
        v72 = swift_allocObject();
        *(v72 + 16) = v139;
        v73 = sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        *(v72 + 56) = v73;
        v74 = sub_10020346C(&unk_100378C70, &qword_1003770C8, NSString_ptr);
        v76 = v142;
        v75 = v143;
        *(v72 + 32) = v143;
        *(v72 + 96) = v73;
        *(v72 + 104) = v74;
        *(v72 + 64) = v74;
        *(v72 + 72) = v76;
        v77 = v75;
        v78 = v76;
        os_log(_:dso:log:type:_:)("MetricService - insertMetricToDatabase - metricTech %{public}s - metricName %{public}s", 86, 2, &_mh_execute_header, v145, v71, v72);
        v79 = v65;

        v80 = v148;
        sub_100249AC8(v65, v148);
        if (qword_100375020 != -1)
        {
          swift_once();
        }

        v81 = qword_100382508;
        sub_100215264(v65);

        v82 = static os_log_type_t.default.getter();
        v83 = swift_allocObject();
        *(v83 + 16) = v139;
        v84 = *(v80 + v62[5]);
        *(v83 + 56) = v73;
        *(v83 + 64) = v74;
        *(v83 + 32) = v84;
        v85 = v62[6];
        v86 = v79;
        v87 = *(v80 + v85);
        *(v83 + 96) = v73;
        *(v83 + 104) = v74;
        *(v83 + 72) = v87;
        v88 = v84;
        v89 = v87;
        os_log(_:dso:log:type:_:)("metric service ---> tech %{public}s : name %{public}s ", 54, 2, &_mh_execute_header, v145, v82, v83);

        sub_100249B2C(v80);
        sub_100249B2C(v86);
        sub_1001AC99C(&v164, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(v166);
        a1 = v127;
        v7 = 0x64695F73627573;
        v8 = &type metadata for Any;
        v21 = v129;
        v9 = v130;
        if (!a3)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1001A551C(&qword_100377A10, &unk_1002F2BA0);
        if (swift_dynamicCast())
        {
          v93 = *&v156[0];
          *&v153 = v28;
          *(&v153 + 1) = 0xE700000000000000;
          AnyHashable.init<A>(_:)();
          v154 = &type metadata for Int32;
          LODWORD(v153) = v141;
          sub_100201570(&v153, &v157);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v161 = v93;
          sub_1001F8F64(&v157, v159, isUniquelyReferenced_nonNull_native);
          sub_1002015DC(v159);
          sub_100246C40(v161, v128, v138);

          v143 = 0;
          v32 = 0;
          v34 = 0xE000000000000000;
          v33 = 0xE000000000000000;
          goto LABEL_23;
        }

        sub_1001A551C(&unk_100378C60, &qword_1002F3FD0);
        if (swift_dynamicCast())
        {
          v96 = v128;
          v144 = v161;
          v97 = *(v161 + 2);
          if (!v97)
          {
LABEL_70:

            v143 = 0;
            v32 = 0;
            v34 = 0xE000000000000000;
            v33 = 0xE000000000000000;
            goto LABEL_23;
          }

          v7 = v144 + 32;
          while (2)
          {
            v99 = *v7;

            v160 = sub_1001FD020(_swiftEmptyArrayStorage);
            sub_1002491A4(v99, &v160);

            *&v153 = 0x64695F73627573;
            *(&v153 + 1) = 0xE700000000000000;
            AnyHashable.init<A>(_:)();
            v158 = &type metadata for Int32;
            LODWORD(v157) = v141;
            sub_100201570(&v157, v156);
            v100 = v160;
            v9 = swift_isUniquelyReferenced_nonNull_native();
            v155 = v100;
            v101 = sub_1001F6774(v159);
            v103 = *(v100 + 16);
            v104 = (v102 & 1) == 0;
            v105 = __OFADD__(v103, v104);
            v106 = v103 + v104;
            if (v105)
            {
              goto LABEL_77;
            }

            v8 = v102;
            if (*(v100 + 24) >= v106)
            {
              if (v9)
              {
                goto LABEL_59;
              }

              v110 = v101;
              sub_1001F9BB0();
              v101 = v110;
              v108 = v155;
              if ((v8 & 1) == 0)
              {
                goto LABEL_52;
              }

LABEL_60:
              v109 = (v108[7] + 32 * v101);
              sub_1001A5654(v109);
              sub_100201570(v156, v109);
            }

            else
            {
              sub_1001F7428(v106, v9);
              v101 = sub_1001F6774(v159);
              if ((v8 & 1) != (v107 & 1))
              {
                goto LABEL_80;
              }

LABEL_59:
              v108 = v155;
              if (v8)
              {
                goto LABEL_60;
              }

LABEL_52:
              v98 = v101;
              sub_100201580(v159, &v153);
              sub_1001F94B8(v98, &v153, v156, v108);
            }

            sub_1002015DC(v159);
            sub_100246C40(v108, v96, v138);

            v7 += 8;
            if (!--v97)
            {
              goto LABEL_70;
            }

            continue;
          }
        }

        sub_1001A5654(v162);
        v9 = v130;
LABEL_64:
        if (qword_100375018 != -1)
        {
          swift_once();
        }

        if (*(qword_100382500 + 24) == 1)
        {
          v111 = static os_log_type_t.error.getter();
          v112 = swift_allocObject();
          *(v112 + 16) = v118;
          sub_1001AC934(&v164, v159, &qword_100375D68, &unk_1002F2370);
          sub_1001A551C(&qword_100375D68, &unk_1002F2370);
          v113 = String.init<A>(describing:)();
          v115 = v114;
          *(v112 + 56) = &type metadata for String;
          *(v112 + 64) = sub_1001A76E8();
          *(v112 + 32) = v113;
          v8 = &type metadata for Any;
          *(v112 + 40) = v115;
          v9 = v130;
          os_log(_:dso:log:type:_:)("unknown attributevalue  ---> %{public}s", 39, 2, &_mh_execute_header, v145, v111, v112);
          v21 = v129;
        }

        sub_1001AC99C(&v164, &qword_100375D68, &unk_1002F2370);
        sub_1002015DC(v166);
        sub_1001AC99C(v163, &qword_100375D68, &unk_1002F2370);
        v7 = v28;
        if (!a3)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

id sub_100247E04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Int sub_100247FE4(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1001FC8A0(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_10024809C(v5);
  *a1 = v2;
  return result;
}

void *sub_100248050()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_100225470(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

Swift::Int sub_10024809C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1001A551C(&qword_1003771E8, &qword_1002F2390);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1002483AC(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1002481A4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1002481A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v27 = *a4;
    v4 = v27 + 72 * a3;
    v5 = result - a3;
LABEL_5:
    v17 = v4;
    v18 = a3;
    v16 = v5;
    while (1)
    {
      sub_1001AC934(v4, &v22, &qword_1003771E8, &qword_1002F2390);
      v6 = (v4 - 72);
      sub_1001AC934(v4 - 72, v21, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC934(&v22, v20, &qword_1003771E8, &qword_1002F2390);
      if (swift_dynamicCast())
      {
        v7 = v19;
      }

      else
      {
        v7 = 0;
      }

      sub_1002015DC(v20);
      sub_1001AC934(v21, v20, &qword_1003771E8, &qword_1002F2390);
      if (swift_dynamicCast())
      {
        v8 = v19;
      }

      else
      {
        v8 = 0;
      }

      sub_1002015DC(v20);
      sub_1001AC99C(v21, &qword_1003771E8, &qword_1002F2390);
      result = sub_1001AC99C(&v22, &qword_1003771E8, &qword_1002F2390);
      if (v8 >= v7)
      {
LABEL_4:
        a3 = v18 + 1;
        v4 = v17 + 72;
        v5 = v16 - 1;
        if (v18 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v27)
      {
        break;
      }

      v23 = *(v4 + 16);
      v24 = *(v4 + 32);
      v25 = *(v4 + 48);
      v26 = *(v4 + 64);
      v22 = *v4;
      v9 = *(v4 - 24);
      *(v4 + 32) = *(v4 - 40);
      *(v4 + 48) = v9;
      *(v4 + 64) = *(v4 - 8);
      v10 = *(v4 - 56);
      *v4 = *v6;
      *(v4 + 16) = v10;
      *v6 = v22;
      v11 = v23;
      v12 = v24;
      v13 = v25;
      *(v4 - 8) = v26;
      *(v4 - 40) = v12;
      *(v4 - 24) = v13;
      *(v4 - 56) = v11;
      v4 -= 72;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1002483AC(uint64_t result, uint64_t a2, char *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v86 = result;
  v9 = *(a3 + 1);
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_107:
    v6 = *v86;
    if (!*v86)
    {
      goto LABEL_150;
    }

    v4 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_144;
    }

    result = v4;
LABEL_110:
    v102 = result;
    v77 = *(result + 16);
    if (v77 >= 2)
    {
      v4 = 72;
      while (*v8)
      {
        v78 = *(result + 16 * v77);
        v79 = result;
        v80 = *(result + 16 * (v77 - 1) + 40);
        sub_100248CD0((*v8 + 72 * v78), (*v8 + 72 * *(result + 16 * (v77 - 1) + 32)), (*v8 + 72 * v80), v6);
        if (v7)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_137;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1001FA564(v79);
        }

        if (v77 - 2 >= *(v79 + 2))
        {
          goto LABEL_138;
        }

        v81 = &v79[16 * v77];
        *v81 = v78;
        *(v81 + 1) = v80;
        v102 = v79;
        sub_1001FA4D8(v77 - 1);
        result = v102;
        v77 = *(v102 + 16);
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_148;
    }
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v88 = v11;
    if (v10 + 1 >= v9)
    {
      v9 = v10 + 1;
      goto LABEL_28;
    }

    v12 = *v8;
    sub_1001AC934(*v8 + 72 * (v10 + 1), &v97, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(v12 + 72 * v10, v96, &qword_1003771E8, &qword_1002F2390);
    LODWORD(v103) = sub_1002450A8(&v97, v96);
    if (v7)
    {
      sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
    }

    sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
    result = sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
    v4 = v10 + 2;
    v84 = v10;
    v92 = 72 * v10;
    v13 = v12 + 72 * v10 + 144;
    while (v9 != v4)
    {
      sub_1001AC934(v13, &v97, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC934(v13 - 72, v96, &qword_1003771E8, &qword_1002F2390);
      sub_1001AC934(&v97, v95, &qword_1003771E8, &qword_1002F2390);
      v6 = &type metadata for Any;
      v8 = v9;
      if (swift_dynamicCast())
      {
        v14 = v94;
      }

      else
      {
        v14 = 0;
      }

      sub_1002015DC(v95);
      sub_1001AC934(v96, v95, &qword_1003771E8, &qword_1002F2390);
      if (swift_dynamicCast())
      {
        v7 = v94;
      }

      else
      {
        v7 = 0;
      }

      sub_1002015DC(v95);
      sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
      result = sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
      ++v4;
      v13 += 72;
      if (((v103 ^ (v7 >= v14)) & 1) == 0)
      {
        v9 = v4 - 1;
        break;
      }
    }

    v10 = v84;
    if ((v103 & 1) == 0)
    {
      goto LABEL_25;
    }

    if (v9 < v84)
    {
      goto LABEL_143;
    }

    if (v84 < v9)
    {
      v4 = 72 * v9 - 72;
      v15 = v9;
      v16 = v92;
      do
      {
        if (v10 != --v15)
        {
          v17 = v16;
          v18 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v19 = v17;
          v6 = v18 + v4;
          v98 = *(v18 + v17 + 16);
          v99 = *(v18 + v17 + 32);
          v100 = *(v18 + v17 + 48);
          v101 = *(v18 + v17 + 64);
          v97 = *(v18 + v17);
          result = memmove((v18 + v17), (v18 + v4), 0x48uLL);
          *(v6 + 16) = v98;
          *(v6 + 32) = v99;
          *(v6 + 48) = v100;
          *(v6 + 64) = v101;
          v16 = v19;
          *v6 = v97;
        }

        ++v10;
        v4 -= 72;
        v16 += 72;
      }

      while (v10 < v15);
      v7 = 0;
      v10 = v84;
    }

    else
    {
LABEL_25:
      v7 = 0;
    }

    v8 = a3;
LABEL_28:
    v20 = *(v8 + 1);
    if (v9 >= v20)
    {
      goto LABEL_37;
    }

    if (__OFSUB__(v9, v10))
    {
      goto LABEL_140;
    }

    if (v9 - v10 >= a4)
    {
      goto LABEL_37;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_141;
    }

    if (v10 + a4 >= v20)
    {
      v4 = *(v8 + 1);
    }

    else
    {
      v4 = v10 + a4;
    }

    if (v4 < v10)
    {
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
LABEL_144:
      result = sub_1001FA564(v4);
      goto LABEL_110;
    }

    if (v9 == v4)
    {
LABEL_37:
      v4 = v9;
      if (v9 < v10)
      {
        goto LABEL_139;
      }

      goto LABEL_38;
    }

    v83 = v7;
    v85 = v10;
    v66 = *v8;
    v6 = v66 + 72 * v9;
    v67 = v10 - v9;
    v90 = v4;
LABEL_90:
    v103 = v9;
    v91 = v67;
    v93 = v6;
LABEL_91:
    sub_1001AC934(v6, &v97, &qword_1003771E8, &qword_1002F2390);
    v68 = (v6 - 72);
    sub_1001AC934(v6 - 72, v96, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(&v97, v95, &qword_1003771E8, &qword_1002F2390);
    v69 = swift_dynamicCast() ? v94 : 0;
    sub_1002015DC(v95);
    sub_1001AC934(v96, v95, &qword_1003771E8, &qword_1002F2390);
    v70 = swift_dynamicCast() ? v94 : 0;
    sub_1002015DC(v95);
    sub_1001AC99C(v96, &qword_1003771E8, &qword_1002F2390);
    result = sub_1001AC99C(&v97, &qword_1003771E8, &qword_1002F2390);
    if (v70 < v69)
    {
      break;
    }

LABEL_89:
    v9 = (v103 + 1);
    v6 = v93 + 72;
    v67 = v91 - 1;
    v4 = v90;
    if (v103 + 1 != v90)
    {
      goto LABEL_90;
    }

    v7 = v83;
    v10 = v85;
    v8 = a3;
    if (v90 < v85)
    {
      goto LABEL_139;
    }

LABEL_38:
    result = swift_isUniquelyReferenced_nonNull_native();
    v89 = v4;
    if (result)
    {
      v11 = v88;
    }

    else
    {
      result = sub_1001FA578(0, *(v88 + 2) + 1, 1, v88);
      v11 = result;
    }

    v4 = *(v11 + 2);
    v21 = *(v11 + 3);
    v6 = v4 + 1;
    if (v4 >= v21 >> 1)
    {
      result = sub_1001FA578((v21 > 1), v4 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v6;
    v22 = &v11[16 * v4];
    *(v22 + 4) = v10;
    *(v22 + 5) = v89;
    v103 = *v86;
    if (!v103)
    {
      goto LABEL_149;
    }

    if (v4)
    {
      while (1)
      {
        v23 = v6 - 1;
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v24 = *(v11 + 4);
          v25 = *(v11 + 5);
          v34 = __OFSUB__(v25, v24);
          v26 = v25 - v24;
          v27 = v34;
LABEL_57:
          if (v27)
          {
            goto LABEL_128;
          }

          v40 = &v11[16 * v6];
          v42 = *v40;
          v41 = *(v40 + 1);
          v43 = __OFSUB__(v41, v42);
          v44 = v41 - v42;
          v45 = v43;
          if (v43)
          {
            goto LABEL_131;
          }

          v46 = &v11[16 * v23 + 32];
          v48 = *v46;
          v47 = *(v46 + 1);
          v34 = __OFSUB__(v47, v48);
          v49 = v47 - v48;
          if (v34)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v44, v49))
          {
            goto LABEL_135;
          }

          if (v44 + v49 >= v26)
          {
            if (v26 < v49)
            {
              v23 = v6 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v50 = &v11[16 * v6];
        v52 = *v50;
        v51 = *(v50 + 1);
        v34 = __OFSUB__(v51, v52);
        v44 = v51 - v52;
        v45 = v34;
LABEL_71:
        if (v45)
        {
          goto LABEL_130;
        }

        v53 = &v11[16 * v23];
        v55 = *(v53 + 4);
        v54 = *(v53 + 5);
        v34 = __OFSUB__(v54, v55);
        v56 = v54 - v55;
        if (v34)
        {
          goto LABEL_133;
        }

        if (v56 < v44)
        {
          goto LABEL_3;
        }

LABEL_78:
        v4 = v23 - 1;
        if (v23 - 1 >= v6)
        {
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
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        v61 = *v8;
        if (!*v8)
        {
          goto LABEL_146;
        }

        v62 = v8;
        v8 = v11;
        v63 = *&v11[16 * v4 + 32];
        v6 = *&v11[16 * v23 + 40];
        sub_100248CD0((v61 + 72 * v63), (v61 + 72 * *&v11[16 * v23 + 32]), (v61 + 72 * v6), v103);
        if (v7)
        {
        }

        if (v6 < v63)
        {
          goto LABEL_124;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v64 = v8;
        }

        else
        {
          v64 = sub_1001FA564(v8);
        }

        if (v4 >= *(v64 + 2))
        {
          goto LABEL_125;
        }

        v8 = v62;
        v65 = &v64[16 * v4];
        *(v65 + 4) = v63;
        *(v65 + 5) = v6;
        v102 = v64;
        result = sub_1001FA4D8(v23);
        v11 = v102;
        v6 = *(v102 + 16);
        if (v6 <= 1)
        {
          goto LABEL_3;
        }
      }

      v28 = &v11[16 * v6 + 32];
      v29 = *(v28 - 64);
      v30 = *(v28 - 56);
      v34 = __OFSUB__(v30, v29);
      v31 = v30 - v29;
      if (v34)
      {
        goto LABEL_126;
      }

      v33 = *(v28 - 48);
      v32 = *(v28 - 40);
      v34 = __OFSUB__(v32, v33);
      v26 = v32 - v33;
      v27 = v34;
      if (v34)
      {
        goto LABEL_127;
      }

      v35 = &v11[16 * v6];
      v37 = *v35;
      v36 = *(v35 + 1);
      v34 = __OFSUB__(v36, v37);
      v38 = v36 - v37;
      if (v34)
      {
        goto LABEL_129;
      }

      v34 = __OFADD__(v26, v38);
      v39 = v26 + v38;
      if (v34)
      {
        goto LABEL_132;
      }

      if (v39 >= v31)
      {
        v57 = &v11[16 * v23 + 32];
        v59 = *v57;
        v58 = *(v57 + 1);
        v34 = __OFSUB__(v58, v59);
        v60 = v58 - v59;
        if (v34)
        {
          goto LABEL_136;
        }

        if (v26 < v60)
        {
          v23 = v6 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v9 = *(v8 + 1);
    v10 = v89;
    if (v89 >= v9)
    {
      goto LABEL_107;
    }
  }

  if (v66)
  {
    v98 = *(v6 + 16);
    v99 = *(v6 + 32);
    v100 = *(v6 + 48);
    v101 = *(v6 + 64);
    v97 = *v6;
    v71 = *(v6 - 24);
    *(v6 + 32) = *(v6 - 40);
    *(v6 + 48) = v71;
    *(v6 + 64) = *(v6 - 8);
    v72 = *(v6 - 56);
    *v6 = *v68;
    *(v6 + 16) = v72;
    *v68 = v97;
    v73 = v98;
    v74 = v99;
    v75 = v100;
    *(v6 - 8) = v101;
    *(v6 - 40) = v74;
    *(v6 - 24) = v75;
    *(v6 - 56) = v73;
    v6 -= 72;
    if (__CFADD__(v67++, 1))
    {
      goto LABEL_89;
    }

    goto LABEL_91;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
  return result;
}

uint64_t sub_100248CD0(char *__src, char *a2, char *a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 72;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 72;
  if (v8 >= v10)
  {
    if (__dst != a2 || &a2[72 * v10] <= __dst)
    {
      memmove(__dst, a2, 72 * v10);
    }

    v32 = &v4[72 * v10];
    if (v9 < 72 || a2 <= v6)
    {
      v17 = a2;
      goto LABEL_47;
    }

    v19 = a2;
    __dsta = v6;
    while (1)
    {
      v31 = v19;
      v20 = (v19 - 72);
      v21 = v32 - 72;
      v5 -= 72;
      while (1)
      {
        v24 = v5 + 72;
        sub_1001AC934(v21, v37, &qword_1003771E8, &qword_1002F2390);
        v25 = v20;
        sub_1001AC934(v20, v36, &qword_1003771E8, &qword_1002F2390);
        sub_1001AC934(v37, v35, &qword_1003771E8, &qword_1002F2390);
        v26 = swift_dynamicCast();
        v27 = v38;
        if (!v26)
        {
          v27 = 0;
        }

        v33 = v27;
        sub_1002015DC(v35);
        sub_1001AC934(v36, v35, &qword_1003771E8, &qword_1002F2390);
        v28 = swift_dynamicCast() ? v38 : 0;
        sub_1002015DC(v35);
        sub_1001AC99C(v36, &qword_1003771E8, &qword_1002F2390);
        sub_1001AC99C(v37, &qword_1003771E8, &qword_1002F2390);
        if (v28 < v33)
        {
          break;
        }

        if (v24 != v21 + 72)
        {
          memmove(v5, v21, 0x48uLL);
        }

        v22 = v21 - 72;
        v5 -= 72;
        v23 = v21 > v4;
        v21 -= 72;
        v20 = v25;
        if (!v23)
        {
          v32 = v22 + 72;
          v17 = v31;
          goto LABEL_47;
        }
      }

      v17 = v25;
      if (v24 != v31)
      {
        memmove(v5, v25, 0x48uLL);
      }

      v32 = v21 + 72;
      if (v21 + 72 > v4)
      {
        v19 = v25;
        if (v25 > __dsta)
        {
          continue;
        }
      }

      v32 = v21 + 72;
      goto LABEL_47;
    }
  }

  if (__dst != __src || &__src[72 * v8] <= __dst)
  {
    memmove(__dst, __src, 72 * v8);
  }

  v32 = &v4[72 * v8];
  if (v7 < 72 || a2 >= v5)
  {
    v17 = v6;
    goto LABEL_47;
  }

  v12 = a2;
  do
  {
    sub_1001AC934(v12, v37, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(v4, v36, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC934(v37, v35, &qword_1003771E8, &qword_1002F2390);
    if (swift_dynamicCast())
    {
      v13 = v38;
    }

    else
    {
      v13 = 0;
    }

    sub_1002015DC(v35);
    sub_1001AC934(v36, v35, &qword_1003771E8, &qword_1002F2390);
    if (swift_dynamicCast())
    {
      v14 = v38;
    }

    else
    {
      v14 = 0;
    }

    sub_1002015DC(v35);
    sub_1001AC99C(v36, &qword_1003771E8, &qword_1002F2390);
    sub_1001AC99C(v37, &qword_1003771E8, &qword_1002F2390);
    if (v14 < v13)
    {
      v15 = v12;
      v16 = v6 == v12;
      v12 += 72;
      if (v16)
      {
        goto LABEL_20;
      }

LABEL_19:
      memmove(v6, v15, 0x48uLL);
      goto LABEL_20;
    }

    v15 = v4;
    v16 = v6 == v4;
    v4 += 72;
    if (!v16)
    {
      goto LABEL_19;
    }

LABEL_20:
    v6 += 72;
  }

  while (v4 < v32 && v12 < v5);
  v17 = v6;
LABEL_47:
  v29 = (v32 - v4) / 72;
  if (v17 != v4 || v17 >= &v4[72 * v29])
  {
    memmove(v17, v4, 72 * v29);
  }

  return 1;
}

void sub_1002491A4(uint64_t a1, void *a2)
{
  if (qword_100374FC0 == -1)
  {
    goto LABEL_2;
  }

LABEL_80:
  swift_once();
LABEL_2:
  v3 = qword_1003824A8;
  v4 = static os_log_type_t.default.getter();
  v78 = v3;
  os_log(_:dso:log:type:_:)("MetricService - flattenD", 24, 2, &_mh_execute_header, v3, v4, _swiftEmptyArrayStorage);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v76 = a1 + 64;
  v77 = a1;
  v75 = v9;
  while (1)
  {
    if (!v8)
    {
      if (v9 <= v10 + 1)
      {
        v12 = v10 + 1;
      }

      else
      {
        v12 = v9;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11 >= v9)
        {
          v15 = 0;
          v94 = 0;
          v92 = 0u;
          v93 = 0u;
          v10 = v13;
          v90 = 0u;
          v91 = 0u;
          goto LABEL_19;
        }

        v8 = *(v5 + 8 * v11);
        ++v10;
        if (v8)
        {
          v10 = v11;
          goto LABEL_18;
        }
      }

LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v11 = v10;
LABEL_18:
    v14 = __clz(__rbit64(v8));
    v15 = (v8 - 1) & v8;
    v16 = v14 | (v11 << 6);
    sub_100201580(*(a1 + 48) + 40 * v16, &v87);
    sub_1001A773C(*(a1 + 56) + 32 * v16, v83);
    v90 = v87;
    v91 = v88;
    *&v92 = v89;
    sub_100201570(v83, (&v92 + 8));
LABEL_19:
    v97[0] = v92;
    v97[1] = v93;
    v98 = v94;
    v95 = v90;
    v96 = v91;
    if (!*(&v91 + 1))
    {

      return;
    }

    v79 = v15;
    v87 = v95;
    v88 = v96;
    v89 = *&v97[0];
    sub_100201570((v97 + 8), v86);
    sub_1001A773C(v86, v85);
    sub_1001A551C(&unk_100378C80, &qword_1002F3FD8);
    if (!swift_dynamicCast())
    {
      break;
    }

    v17 = v84;
    v18 = v84 + 64;
    v19 = 1 << *(v84 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    a1 = v20 & *(v84 + 64);
    v21 = (v19 + 63) >> 6;

    v22 = 0;
    v23 = _swiftEmptyArrayStorage;
    if (a1)
    {
      goto LABEL_29;
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      if (v24 >= v21)
      {
        break;
      }

      a1 = *(v18 + 8 * v24);
      ++v22;
      if (a1)
      {
        v22 = v24;
        do
        {
LABEL_29:
          v25 = __clz(__rbit64(a1)) | (v22 << 6);
          v26 = (*(v17 + 48) + 16 * v25);
          v27 = v26[1];
          v28 = *(*(v17 + 56) + 8 * v25);
          *&v83[0] = *v26;
          *(&v83[0] + 1) = v27;
          swift_bridgeObjectRetain_n();
          AnyHashable.init<A>(_:)();
          v94 = &type metadata for Int;

          *(&v92 + 1) = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_100225320(0, v23[2] + 1, 1, v23);
          }

          v30 = v23[2];
          v29 = v23[3];
          if (v30 >= v29 >> 1)
          {
            v23 = sub_100225320((v29 > 1), v30 + 1, 1, v23);
          }

          a1 &= a1 - 1;
          v23[2] = v30 + 1;
          v31 = &v23[9 * v30];
          *(v31 + 2) = v90;
          v32 = v91;
          v33 = v92;
          v34 = v93;
          v31[12] = v94;
          *(v31 + 4) = v33;
          *(v31 + 5) = v34;
          *(v31 + 3) = v32;
        }

        while (a1);
      }
    }

    if (qword_100375018 != -1)
    {
      swift_once();
    }

    v45 = *(qword_100382500 + 24);
    v46 = static os_log_type_t.default.getter();
    a1 = &qword_1003771E8;
    if (v45)
    {
      sub_1001A551C(&unk_100377020, &unk_1002EF770);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1002EED40;
      *(v47 + 56) = sub_1001A551C(&qword_100378C90, &qword_1002F3FE0);
      *(v47 + 64) = sub_100249B88();
      *(v47 + 32) = v23;

      os_log(_:dso:log:type:_:)("flattened : %{public}@", 22, 2, &_mh_execute_header, v78, v46, v47);
    }

    else
    {
      os_log(_:dso:log:type:_:)("flattened", 9, 2, &_mh_execute_header, v78, v46, _swiftEmptyArrayStorage);
    }

    v50 = v23[2];
    if (v50)
    {
      v51 = 0;
      v52 = (v23 + 4);
      v80 = v23[2];
      while (1)
      {
        if (v51 >= v23[2])
        {
          goto LABEL_74;
        }

        sub_1001AC934(v52, &v90, &qword_1003771E8, &qword_1002F2390);
        sub_100201580(&v87, v83);
        if (swift_dynamicCast())
        {
          break;
        }

LABEL_51:
        ++v51;
        sub_1001AC99C(&v90, &qword_1003771E8, &qword_1002F2390);
        v52 += 72;
        if (v50 == v51)
        {
          goto LABEL_6;
        }
      }

      v53 = v82[0];
      sub_100201580(&v90, v83);
      if (swift_dynamicCast())
      {
        v55 = *(&v82[0] + 1);
        v54 = *&v82[0];
        v83[0] = v53;

        v56._countAndFlagsBits = 95;
        v56._object = 0xE100000000000000;
        String.append(_:)(v56);

        v57._countAndFlagsBits = v54;
        v57._object = v55;
        String.append(_:)(v57);

        v82[0] = v83[0];
        AnyHashable.init<A>(_:)();
        sub_1001A773C(&v92 + 8, v82);
        a1 = swift_isUniquelyReferenced_nonNull_native();
        v58 = *a2;
        v60 = sub_1001F6774(v83);
        v61 = v58[2];
        v62 = (v59 & 1) == 0;
        v63 = v61 + v62;
        if (__OFADD__(v61, v62))
        {
          goto LABEL_76;
        }

        v64 = v59;
        if (v58[3] >= v63)
        {
          if (a1)
          {
            if ((v59 & 1) == 0)
            {
              goto LABEL_64;
            }
          }

          else
          {
            sub_1001F9BB0();
            if ((v64 & 1) == 0)
            {
              goto LABEL_64;
            }
          }
        }

        else
        {
          sub_1001F7428(v63, a1);
          v65 = sub_1001F6774(v83);
          if ((v64 & 1) != (v66 & 1))
          {
            goto LABEL_81;
          }

          v60 = v65;
          if ((v64 & 1) == 0)
          {
LABEL_64:
            v58[(v60 >> 6) + 8] |= 1 << v60;
            sub_100201580(v83, v58[6] + 40 * v60);
            sub_100201570(v82, (v58[7] + 32 * v60));
            v68 = v58[2];
            v41 = __OFADD__(v68, 1);
            v69 = v68 + 1;
            if (v41)
            {
              goto LABEL_77;
            }

            v58[2] = v69;
LABEL_66:
            sub_1002015DC(v83);
            *a2 = v58;
            a1 = &qword_1003771E8;
LABEL_50:
            v50 = v80;
            goto LABEL_51;
          }
        }

        v67 = (v58[7] + 32 * v60);
        sub_1001A5654(v67);
        sub_100201570(v82, v67);
        goto LABEL_66;
      }

      goto LABEL_50;
    }

LABEL_6:

    sub_1001A5654(v86);
    v5 = v76;
    a1 = v77;
    v9 = v75;
LABEL_7:
    sub_1001A5654(v85);
    sub_1002015DC(&v87);
    v8 = v79;
  }

  sub_100201580(&v87, &v90);
  sub_1001A773C(v86, v83);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v82[0] = *a2;
  v36 = *&v82[0];
  v37 = sub_1001F6774(&v90);
  v39 = *(v36 + 16);
  v40 = (v38 & 1) == 0;
  v41 = __OFADD__(v39, v40);
  v42 = v39 + v40;
  if (v41)
  {
    goto LABEL_78;
  }

  v43 = v38;
  if (*(v36 + 24) >= v42)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v70 = v9;
      v71 = v37;
      sub_1001F9BB0();
      v37 = v71;
      v9 = v70;
      v48 = *&v82[0];
      if (v43)
      {
        goto LABEL_45;
      }

      goto LABEL_69;
    }

LABEL_44:
    v48 = *&v82[0];
    if (v43)
    {
LABEL_45:
      v49 = (v48[7] + 32 * v37);
      sub_1001A5654(v49);
      sub_100201570(v83, v49);
      sub_1002015DC(&v90);
      sub_1001A5654(v86);
LABEL_71:
      *a2 = v48;
      goto LABEL_7;
    }

LABEL_69:
    v48[(v37 >> 6) + 8] |= 1 << v37;
    v72 = v37;
    sub_100201580(&v90, v48[6] + 40 * v37);
    sub_100201570(v83, (v48[7] + 32 * v72));
    sub_1002015DC(&v90);
    sub_1001A5654(v86);
    v73 = v48[2];
    v41 = __OFADD__(v73, 1);
    v74 = v73 + 1;
    if (v41)
    {
      goto LABEL_79;
    }

    v48[2] = v74;
    goto LABEL_71;
  }

  sub_1001F7428(v42, isUniquelyReferenced_nonNull_native);
  v37 = sub_1001F6774(&v90);
  if ((v43 & 1) == (v44 & 1))
  {
    goto LABEL_44;
  }

LABEL_81:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100249AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metric(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100249B2C(uint64_t a1)
{
  v2 = type metadata accessor for Metric(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100249B88()
{
  result = qword_100378C98;
  if (!qword_100378C98)
  {
    sub_1001A55C8(&qword_100378C90, &qword_1002F3FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100378C98);
  }

  return result;
}

void sub_100249BEC(__int128 *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_100374FE0 != -1)
  {
    swift_once();
  }

  v3 = static NSNotificationName.NewABMMetric;
  sub_1001A551C(&qword_100377050, &qword_1002F21F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002EED40;
  strcpy(&v11, "metricObject");
  BYTE13(v11) = 0;
  HIWORD(v11) = -5120;
  AnyHashable.init<A>(_:)();
  v5 = *a1;
  v10 = a1[1];
  v11 = v5;
  *(inited + 96) = &type metadata for MetricNotificationObject;
  v6 = swift_allocObject();
  *(inited + 72) = v6;
  *(v6 + 48) = *(a1 + 8);
  v7 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v7;
  sub_1001ACE9C(&v11, v9);
  sub_1001ACE9C(&v10, v9);
  sub_1001FD020(inited);
  swift_setDeallocating();
  sub_1001AC99C(inited + 32, &qword_100377058, &qword_1002F21F8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 postNotificationName:v3 object:0 userInfo:isa];
}

uint64_t sub_100249DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 == 0x3243303443 && a3 == 0xE500000000000000;
  if (v3 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    AnyHashable.init<A>(_:)();
    v5 = 0u;
    v6 = 0u;
    sub_1001E2D28(&v5, v7);
    *&v5 = 0x77625F6C75;
    *(&v5 + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    v5 = 0u;
    v6 = 0u;
    return sub_1001E2D28(&v5, v7);
  }

  return result;
}

unint64_t sub_100249EA4(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  sub_1001AC934(result + 32, &v38, &qword_100379B70, &qword_1002F2380);
  v8 = v38;
  v7 = v39;
  sub_100201570(v40, v37);
  v9 = *a3;
  result = sub_1001F66B8(v8, v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_1001F76E0(v14, v5 & 1);
    result = sub_1001F66B8(v8, v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    v21 = (v17[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    result = sub_100201570(v37, (v17[7] + 32 * result));
    v22 = v17[2];
    v13 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v23;
    if (--v3)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_1001F9D54();
  result = v20;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v18 = result;

  v19 = (v17[7] + 32 * v18);
  sub_1001A5654(v19);
  result = sub_100201570(v37, v19);
  if (--v3)
  {
LABEL_14:
    v6 += 80;
    v7 = &qword_100379B70;
    v8 = &qword_1002F2380;
    while (1)
    {
      sub_1001AC934(v6, &v38, &qword_100379B70, &qword_1002F2380);
      v5 = v38;
      v15 = v39;
      sub_100201570(v40, v37);
      v26 = *a3;
      result = sub_1001F66B8(v5, v15);
      v28 = v26[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_23;
      }

      v31 = v27;
      if (v26[3] < v30)
      {
        sub_1001F76E0(v30, 1);
        result = sub_1001F66B8(v5, v15);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      v33 = *a3;
      if (v31)
      {
        v24 = result;

        v25 = (v33[7] + 32 * v24);
        sub_1001A5654(v25);
        result = sub_100201570(v37, v25);
      }

      else
      {
        v33[(result >> 6) + 8] |= 1 << result;
        v34 = (v33[6] + 16 * result);
        *v34 = v5;
        v34[1] = v15;
        result = sub_100201570(v37, (v33[7] + 32 * result));
        v35 = v33[2];
        v13 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v33[2] = v36;
      }

      v6 += 48;
      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10024A234()
{

  return _swift_deallocObject(v0, 52, 7);
}

uint64_t sub_10024A290@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA744(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = (v5 + 40 * a1);
    v9 = v8[2];
    v8 += 2;
    v10 = v7 - 1;
    v11 = *(v8 + 8);
    v12 = v8[1];
    result = memmove(v8, v8 + 40, 40 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
    *a2 = v9;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
  }

  return result;
}

uint64_t sub_10024A340(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA758(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10024A3C8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001FA780(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(type metadata accessor for Metric(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_10025323C(v11, a2, type metadata accessor for Metric);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_10024A50C()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100375010 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:static NSNotificationName.isAirPlaneModeEnabled object:0];

  v2 = OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_collectedOn;
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_10024A620()
{
  sub_10024A50C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MetricDetailViewModel(uint64_t a1)
{
  result = qword_100378D18;
  if (!qword_100378D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10024A6CC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Metric(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v92 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A551C(&qword_100378F88, &qword_1002F4140);
  v82 = *(v7 - 8);
  __chkstk_darwin(v7);
  v87 = (&v80 - v8);
  v9 = sub_1001A551C(&qword_100378F90, &qword_1002F4148);
  __chkstk_darwin(v9 - 8);
  v91 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v90 = &v80 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v80 - v18;
  __chkstk_darwin(v19);
  v21 = &v80 - v20;
  __chkstk_darwin(v22);
  v86 = &v80 - v23;
  v24 = type metadata accessor for MetricDetailViewModel(0);
  v83 = sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
  v84 = v24;
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  *(v2 + 16) = _swiftEmptyArrayStorage;

  v95 = a1;
  v25 = *(a1 + 16);
  v93 = v4;
  v89 = v5;
  if (v25)
  {
    v26 = *(v4 + 44);
    v27 = *(v14 + 16);
    v81 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v27(v21, v81 + v26, v13);
    (*(v14 + 32))(v86, v21, v13);

    v28 = v88;
    Date.init()();
    sub_1001E139C(v16);
    v29 = *(v14 + 8);
    v29(v28, v13);
    v30 = static Date.< infix(_:_:)();
    v29(v16, v13);
    v31 = v88;
    if (v30)
    {
      v32 = v86;
      v27(v88, v86, v13);
      v33 = v85;
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      v34 = v32;
    }

    else
    {
      Date.init()();
      v33 = v85;
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      v34 = v86;
    }

    v29(v34, v13);
    v37 = OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_collectedOn;
    swift_beginAccess();
    (*(v14 + 40))(v33 + v37, v31, v13);
    swift_endAccess();
    v36 = v82;
    v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10024B0AC(&v95, v38, v39);

    v35 = *(v95 + 16);
  }

  else
  {

    v35 = 0;
    v36 = v82;
  }

  v40 = (v36 + 56);
  v41 = (v36 + 48);
  v42 = 0;

  v86 = v88;
  while (1)
  {
    if (v42 == v35)
    {
      v43 = 1;
      v42 = v35;
      v44 = v91;
    }

    else
    {
      if ((v42 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      if (v42 >= *(v88 + 2))
      {
        goto LABEL_48;
      }

      v45 = &v88[((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v42];
      v46 = *(v7 + 48);
      v47 = v87;
      *v87 = v42;
      sub_1002531D4(v45, v47 + v46, type metadata accessor for Metric);
      v48 = v47;
      v44 = v91;
      sub_1001B603C(v48, v91, &qword_100378F88, &qword_1002F4140);
      v43 = 0;
      ++v42;
    }

    v49 = v90;
    (*v40)(v44, v43, 1, v7);
    sub_1001B603C(v44, v49, &qword_100378F90, &qword_1002F4148);
    if ((*v41)(v49, 1, v7) == 1)
    {
      break;
    }

    v50 = *v49;
    v51 = v49 + *(v7 + 48);
    sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
    v52 = v7;
    v53 = v35;
    v54 = *(v51 + *(v93 + 28));
    sub_1002532A4(v51, type metadata accessor for Metric);
    v55 = NSString.init(stringLiteral:)("timestamp", 9, 2);
    v56 = static NSObject.== infix(_:_:)();

    v35 = v53;
    v7 = v52;

    if (v56)
    {
      v57 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v57 = sub_1001FA780(v57);
      }

      v58 = *(v57 + 2);
      if (v50 >= v58)
      {
        goto LABEL_49;
      }

      v59 = v57;
      v60 = v58 - 1;
      v61 = *(v89 + 80);
      v86 = v59;
      v62 = *(v89 + 72);
      v63 = &v59[((v61 + 32) & ~v61) + v62 * v50];
      sub_1002532A4(v63, type metadata accessor for Metric);
      if (v62 > 0 || v63 >= v63 + v62 + v62 * (v60 - v50))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v62)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      *(v86 + 2) = v60;
    }
  }

  v64 = v85;
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  *(v64 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  v65 = *(v86 + 2);
  v66 = v92;
  if (v65)
  {
    v67 = &v86[(*(v89 + 80) + 32) & ~*(v89 + 80)];
    v68 = *(v89 + 72);
    do
    {
      sub_1002531D4(v67, v66, type metadata accessor for Metric);
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 4543564 && v70 == 0xE300000000000000)
      {
      }

      else
      {
        v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v72 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0x207942206C6C6543 && v73 == 0xEC000000646E6142)
      {

LABEL_27:
        if (qword_100375020 != -1)
        {
          swift_once();
        }

        v69 = qword_100382508;
        sub_100215264(v92);

        goto LABEL_30;
      }

      v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v75)
      {
        goto LABEL_27;
      }

LABEL_30:
      v66 = v92;
      sub_1002532A4(v92, type metadata accessor for Metric);
      v67 += v68;
      --v65;
    }

    while (v65);
  }

  v76 = v85;
  if (*(*(v85 + 24) + 16))
  {

    sub_1002502B8(*(*(v76 + 24) + 16));
  }

  else
  {
    v77 = v86;
    v78 = *(v86 + 2);

    sub_1002502B8(v78);

    v94 = *(v76 + 16);

    sub_1001E30A0(v77);
    v79 = v94;
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v76 + 16) = v79;
  }
}

void sub_10024B0AC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v294 = a3;
  v293 = a2;
  v298 = type metadata accessor for MetricSectional(0);
  v297 = *(v298 - 8);
  __chkstk_darwin(v298);
  v300 = &v288 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v299 = &v288 - v6;
  __chkstk_darwin(v7);
  v296 = &v288 - v8;
  __chkstk_darwin(v9);
  v295 = &v288 - v10;
  v11 = type metadata accessor for Date();
  v291 = *(v11 - 8);
  __chkstk_darwin(v11);
  v318 = &v288 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for Metric(0);
  v319 = *(v324 - 1);
  __chkstk_darwin(v324);
  v321 = (&v288 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v312 = &v288 - v15;
  __chkstk_darwin(v16);
  v288 = &v288 - v17;
  __chkstk_darwin(v18);
  v317 = &v288 - v19;
  __chkstk_darwin(v20);
  v322 = (&v288 - v21);
  __chkstk_darwin(v22);
  v306 = &v288 - v23;
  __chkstk_darwin(v24);
  v290 = &v288 - v25;
  __chkstk_darwin(v26);
  v28 = &v288 - v27;
  __chkstk_darwin(v29);
  v31 = &v288 - v30;
  v32 = sub_1001A551C(&qword_100378F88, &qword_1002F4140);
  v292 = *(v32 - 1);
  __chkstk_darwin(v32);
  v320 = (&v288 - v33);
  v34 = sub_1001A551C(&qword_100378F90, &qword_1002F4148);
  __chkstk_darwin(v34 - 8);
  v36 = &v288 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v301 = (&v288 - v38);
  __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  v302 = &v288 - v41;
  __chkstk_darwin(v42);
  v304 = &v288 - v43;
  __chkstk_darwin(v44);
  v303 = &v288 - v45;
  __chkstk_darwin(v46);
  v311 = &v288 - v47;
  __chkstk_darwin(v48);
  v50 = &v288 - v49;
  __chkstk_darwin(v51);
  v309 = (&v288 - v52);
  __chkstk_darwin(v53);
  v308 = (&v288 - v54);
  __chkstk_darwin(v55);
  v316 = &v288 - v56;
  __chkstk_darwin(v57);
  v315 = (&v288 - v58);
  __chkstk_darwin(v59);
  v61 = &v288 - v60;
  __chkstk_darwin(v62);
  v65 = &v288 - v64;
  v307 = a1;
  v313 = *a1;
  v66 = v313[2];
  if (!v66)
  {
    return;
  }

  v323 = v32;
  v310 = v11;
  v67 = v294;
  v314 = v66;
  if (v293 != 0xD000000000000011 || 0x80000001002B9FD0 != v294)
  {
    v289 = v63;
    v68 = v293;
    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v66 = v314;
    if ((v69 & 1) == 0)
    {
      if (v68 == 0x7574617453204143 && v67 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v157 = type metadata accessor for MetricDetailViewModel(0);
        v314 = sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
        v315 = v157;
        v158 = v305;
        v31 = ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();

        *(v158 + 24) = _swiftEmptyArrayStorage;

        v159 = v313;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v87 = v159;
        v161 = v159;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_294;
        }

        goto LABEL_111;
      }

      if ((v68 != 0x207942206C6C6543 || v294 != 0xEC000000646E6142) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return;
      }

      v316 = v36;
      v202 = type metadata accessor for MetricDetailViewModel(0);
      v203 = sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
      v314 = v202;
      v311 = v203;
      v204 = v305;
      v31 = ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      *(v204 + 24) = _swiftEmptyArrayStorage;

      v205 = v313;

      v206 = swift_isUniquelyReferenced_nonNull_native();
      v207 = v205;
      v208 = v205;
      if ((v206 & 1) == 0)
      {
        v287 = sub_1001FA780(v205);
        v207 = v313;
        v208 = v287;
      }

      v70 = 0;
      v209 = v207[2];
      v317 = v208;
      *v307 = v208;
      v322 = (v292 + 56);
      v36 = v292 + 48;
      v71 = &type metadata for String;
      v50 = v288;
      while (1)
      {
        v28 = v304;
        if (v70 == v209)
        {
          v210 = 1;
          v70 = v209;
        }

        else
        {
          if ((v70 & 0x8000000000000000) != 0)
          {
            goto LABEL_277;
          }

          if (v70 >= v207[2])
          {
            goto LABEL_278;
          }

          v211 = v320;
          v212 = v207 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v70;
          v213 = *(v32 + 12);
          *v320 = v70;
          sub_1002531D4(v212, v211 + v213, type metadata accessor for Metric);
          sub_1001B603C(v211, v28, &qword_100378F88, &qword_1002F4140);
          v210 = 0;
          ++v70;
        }

        v65 = *v322;
        (*v322)(v28, v210, 1, v32);
        v31 = v303;
        sub_1001B603C(v28, v303, &qword_100378F90, &qword_1002F4148);
        v214 = *v36;
        if ((*v36)(v31, 1, v32) == 1)
        {
          break;
        }

        v215 = *v31;
        v216 = v31 + *(v32 + 12);
        v217 = *(v216 + v324[7]);
        sub_1002532A4(v216, type metadata accessor for Metric);
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v219 = v218;

        v327 = v65;
        v328 = v219;
        v325 = 0x2D6E6F6974636573;
        v326 = 0xE800000000000000;
        sub_1001A56A0();
        v31 = &v327;
        if ((StringProtocol.contains<A>(_:)() & 1) != 0 && (v327 = v65, v328 = v219, v325 = 45, v326 = 0xE100000000000000, v28 = StringProtocol.components<A>(separatedBy:)(), , *(v28 + 16)))
        {
          v32 = *(v28 + 32);
          v31 = *(v28 + 40);

          if ((v215 & 0x8000000000000000) != 0)
          {
            goto LABEL_285;
          }

          v220 = v317;
          if (v215 >= *(v317 + 16))
          {
            goto LABEL_286;
          }

          v221 = (v317 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v215 + v324[16]);
          *v221 = v32;
          v221[1] = v31;
          v31 = v220;

          *v307 = v31;
        }

        else
        {
        }

        v32 = v323;
        v207 = v313;
      }

      v71 = *(v317 + 16);
      v313 = OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_collectedOn;
      v309 = (v291 + 16);
      v308 = (v291 + 40);

      v70 = 0;
      v315 = v222;
      if (!v71)
      {
        goto LABEL_183;
      }

LABEL_180:
      if ((v70 & 0x8000000000000000) != 0)
      {
        goto LABEL_279;
      }

      if (v70 >= *(v222 + 16))
      {
        goto LABEL_280;
      }

      v223 = v320;
      v224 = v222 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v70;
      v225 = *(v32 + 12);
      *v320 = v70;
      sub_1002531D4(v224, v223 + v225, type metadata accessor for Metric);
      v226 = v223;
      v227 = v289;
      sub_1001B603C(v226, v289, &qword_100378F88, &qword_1002F4140);
      v228 = 0;
      ++v70;
      while (1)
      {
        (v65)(v227, v228, 1, v32);
        v229 = v227;
        v31 = v302;
        sub_1001B603C(v229, v302, &qword_100378F90, &qword_1002F4148);
        if (v214(v31, 1, v32) == 1)
        {
          break;
        }

        v230 = *v31;
        sub_10025323C(v31 + *(v32 + 12), v50, type metadata accessor for Metric);
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v231 = *(v50 + v324[7]);
        v28 = NSString.init(stringLiteral:)("timestamp", 9, 2);
        v31 = static NSObject.== infix(_:_:)();

        if (v31)
        {
          v232 = v50 + v324[11];
          v28 = v318;
          v233 = v310;
          (*v309)(v318, v232, v310);
          v234 = v305;
          ObservableObject<>.objectWillChange.getter();
          ObservableObjectPublisher.send()();

          v235 = v313;
          swift_beginAccess();
          (*v308)(v235 + v234, v28, v233);
          swift_endAccess();
          v236 = v315;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v236 = sub_1001FA780(v236);
          }

          v237 = v236[2];
          if (v230 >= v237)
          {
            __break(1u);
LABEL_296:
            __break(1u);
LABEL_297:
            __break(1u);
LABEL_298:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          v238 = v237 - 1;
          v239 = *(v319 + 80);
          v315 = v236;
          v240 = *(v319 + 72);
          v31 = v236 + ((v239 + 32) & ~v239) + v240 * v230;
          sub_1002532A4(v31, type metadata accessor for Metric);
          if (v240 > 0 || v31 >= v31 + v240 + v240 * (v238 - v230))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v240)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v241 = v315;
          v315[2] = v238;
          *v307 = v241;
          v50 = v288;
        }

        sub_1002532A4(v50, type metadata accessor for Metric);
        v32 = v323;
        v222 = v317;
        if (v70 != v71)
        {
          goto LABEL_180;
        }

LABEL_183:
        v228 = 1;
        v70 = v71;
        v227 = v289;
      }

      v242 = v315;
      v32 = v315[2];

      v71 = 0;
      v317 = 0;
      while (1)
      {
        if (v71 == v32)
        {
          v243 = 1;
          v71 = v32;
          v244 = v323;
          v245 = v316;
        }

        else
        {
          if ((v71 & 0x8000000000000000) != 0)
          {
            goto LABEL_281;
          }

          if (v71 >= v315[2])
          {
            goto LABEL_282;
          }

          v246 = v320;
          v247 = v315 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v71;
          v244 = v323;
          v248 = *(v323 + 48);
          *v320 = v71;
          sub_1002531D4(v247, v246 + v248, type metadata accessor for Metric);
          v249 = v246;
          v245 = v316;
          sub_1001B603C(v249, v316, &qword_100378F88, &qword_1002F4140);
          v243 = 0;
          ++v71;
        }

        v250 = v301;
        (v65)(v245, v243, 1, v244);
        sub_1001B603C(v245, v250, &qword_100378F90, &qword_1002F4148);
        if (v214(v250, 1, v244) == 1)
        {
          break;
        }

        v50 = *v250;
        v251 = v250 + *(v244 + 48);
        sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
        v70 = *(v251 + v324[7]);
        sub_1002532A4(v251, type metadata accessor for Metric);
        v28 = NSString.init(stringLiteral:)("subs_id", 7, 2);
        v31 = static NSObject.== infix(_:_:)();

        if (v31)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v242 = sub_1001FA780(v242);
          }

          v252 = v242[2];
          if (v50 >= v252)
          {
            goto LABEL_296;
          }

          v70 = v252 - 1;
          v28 = *(v319 + 72);
          v31 = v242 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + v28 * v50;
          sub_1002532A4(v31, type metadata accessor for Metric);
          if (v28 > 0 || v31 >= v31 + v28 + v28 * (v70 - v50))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v242[2] = v70;
          *v307 = v242;
        }
      }

      v70 = v242[2];
      v253 = _swiftEmptyArrayStorage;
      if (v70)
      {
        v327 = _swiftEmptyArrayStorage;
        sub_1001F55C4(0, v70, 0);
        v253 = v327;
        v254 = v242 + ((*(v319 + 80) + 32) & ~*(v319 + 80));
        v255 = *(v319 + 72);
        do
        {
          v256 = v306;
          sub_1002531D4(v254, v306, type metadata accessor for Metric);
          v257 = (v256 + v324[16]);
          v36 = *v257;
          v258 = v257[1];

          sub_1002532A4(v256, type metadata accessor for Metric);
          v327 = v253;
          v65 = v253[2];
          v259 = v253[3];
          if (v65 >= v259 >> 1)
          {
            sub_1001F55C4((v259 > 1), v65 + 1, 1);
            v253 = v327;
          }

          v253[2] = v65 + 1;
          v260 = &v253[2 * v65];
          v260[4] = v36;
          v260[5] = v258;
          v254 += v255;
          --v70;
        }

        while (v70);
      }

      v31 = sub_1001C7008(v253);

      v71 = v31 + 56;
      v261 = 1 << *(v31 + 32);
      v262 = -1;
      if (v261 < 64)
      {
        v262 = ~(-1 << v261);
      }

      v28 = v262 & *(v31 + 56);
      v263 = (v261 + 63) >> 6;

      v50 = 0;
      v32 = _swiftEmptyArrayStorage;
      if (!v28)
      {
        goto LABEL_224;
      }

      while (1)
      {
        while (1)
        {
          v264 = __clz(__rbit64(v28));
          v28 &= v28 - 1;
          v265 = (*(v31 + 48) + ((v50 << 10) | (16 * v264)));
          v70 = v265[1];
          if (v70)
          {
            break;
          }

          if (!v28)
          {
            goto LABEL_224;
          }
        }

        v36 = *v265;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_100224D30(0, v32[2] + 1, 1, v32);
        }

        v65 = v32[2];
        v267 = v32[3];
        v268 = v32;
        if (v65 >= v267 >> 1)
        {
          v268 = sub_100224D30((v267 > 1), v65 + 1, 1, v32);
        }

        *(v268 + 2) = v65 + 1;
        v32 = v268;
        v269 = &v268[16 * v65];
        *(v269 + 4) = v36;
        *(v269 + 5) = v70;
        if (!v28)
        {
          do
          {
LABEL_224:
            v266 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              goto LABEL_273;
            }

            if (v266 >= v263)
            {

              v70 = v32[2];
              sub_1001A551C(&unk_1003770A0, &unk_1002EED60);
              v31 = swift_allocObject();
              *(v31 + 16) = xmmword_1002EED40;
              *(v31 + 56) = &type metadata for Int;
              *(v31 + 32) = v70;
              print(_:separator:terminator:)();

              v322 = v32[2];
              if (v322)
              {
                v50 = 0;
                v320 = v32 + 4;
                v71 = v312;
                v318 = v32;
                do
                {
                  if (v50 >= v32[2])
                  {
                    goto LABEL_284;
                  }

                  v323 = v50;
                  v270 = &v320[2 * v50];
                  v70 = *v270;
                  v32 = v270[1];
                  v65 = v242[2];

                  if (v65)
                  {
                    v271 = 0;
                    v31 = _swiftEmptyArrayStorage;
                    do
                    {
                      if (v271 >= v242[2])
                      {
                        __break(1u);
LABEL_261:
                        __break(1u);
LABEL_262:
                        __break(1u);
                        goto LABEL_263;
                      }

                      v36 = (*(v319 + 80) + 32) & ~*(v319 + 80);
                      v50 = *(v319 + 72);
                      sub_1002531D4(v242 + v36 + v50 * v271, v71, type metadata accessor for Metric);
                      v272 = (v71 + v324[16]);
                      v273 = v272[1];
                      if (v273 && (*v272 == v70 ? (v274 = v273 == v32) : (v274 = 0), v274 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
                      {
                        sub_10025323C(v71, v321, type metadata accessor for Metric);
                        v275 = swift_isUniquelyReferenced_nonNull_native();
                        v327 = v31;
                        if ((v275 & 1) == 0)
                        {
                          sub_1001F54C0(0, *(v31 + 16) + 1, 1);
                          v31 = v327;
                        }

                        v28 = *(v31 + 16);
                        v276 = *(v31 + 24);
                        if (v28 >= v276 >> 1)
                        {
                          sub_1001F54C0((v276 > 1), v28 + 1, 1);
                          v31 = v327;
                        }

                        *(v31 + 16) = v28 + 1;
                        sub_10025323C(v321, v31 + v36 + v28 * v50, type metadata accessor for Metric);
                        v71 = v312;
                      }

                      else
                      {
                        sub_1002532A4(v71, type metadata accessor for Metric);
                      }

                      ++v271;
                    }

                    while (v65 != v271);
                  }

                  else
                  {
                    v31 = _swiftEmptyArrayStorage;
                  }

                  v277 = v299;
                  UUID.init()();
                  v278 = v298;
                  v279 = (v277 + *(v298 + 20));
                  *v279 = v70;
                  v279[1] = v32;
                  *(v277 + *(v278 + 24)) = v31;
                  sub_1002531D4(v277, v300, type metadata accessor for MetricSectional);
                  v70 = *(v305 + 24);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v70 = sub_1002256EC(0, *(v70 + 16) + 1, 1, v70);
                  }

                  v280 = v323;
                  v282 = *(v70 + 16);
                  v281 = *(v70 + 24);
                  if (v282 >= v281 >> 1)
                  {
                    v70 = sub_1002256EC((v281 > 1), v282 + 1, 1, v70);
                  }

                  v50 = v280 + 1;
                  *(v70 + 16) = v282 + 1;
                  sub_10025323C(v300, v70 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v282, type metadata accessor for MetricSectional);
                  v283 = v305;
                  v31 = ObservableObject<>.objectWillChange.getter();
                  ObservableObjectPublisher.send()();

                  sub_1002532A4(v299, type metadata accessor for MetricSectional);
                  *(v283 + 24) = v70;

                  v32 = v318;
                }

                while (v50 != v322);
              }

              v284 = v305;
              v327 = *(v305 + 24);

              sub_10024DB9C(&v327);
              v285 = v327;
              ObservableObject<>.objectWillChange.getter();
              ObservableObjectPublisher.send()();

              *(v284 + 24) = v285;
              goto LABEL_105;
            }

            v28 = *(v71 + 8 * v266);
            ++v50;
          }

          while (!v28);
          v50 = v266;
        }
      }
    }
  }

  v305 = v28;
  v311 = 0;
  v317 = 0;
  v70 = 0;
  v321 = (v292 + 48);
  v322 = (v292 + 56);
  v71 = 0x80000001002B9780;
  v28 = 0x80000001002B9740;
  while (1)
  {
    if (v70 == v66)
    {
      v72 = 1;
      v70 = v66;
    }

    else
    {
      if ((v70 & 0x8000000000000000) != 0)
      {
        goto LABEL_261;
      }

      if (v70 >= v313[2])
      {
        goto LABEL_262;
      }

      v73 = v320;
      v74 = v313 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v70;
      v75 = *(v32 + 12);
      *v320 = v70;
      sub_1002531D4(v74, v73 + v75, type metadata accessor for Metric);
      sub_1001B603C(v73, v61, &qword_100378F88, &qword_1002F4140);
      v72 = 0;
      ++v70;
    }

    v36 = *v322;
    (*v322)(v61, v72, 1, v32);
    sub_1001B603C(v61, v65, &qword_100378F90, &qword_1002F4148);
    v50 = *v321;
    if ((*v321)(v65, 1, v32) == 1)
    {
      break;
    }

    v50 = *v65;
    sub_10025323C(v65 + *(v32 + 12), v31, type metadata accessor for Metric);
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0xD000000000000027 && 0x80000001002B9780 == v76)
    {

LABEL_27:
      sub_1002532A4(v31, type metadata accessor for Metric);
      v311 = v50;
      goto LABEL_7;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_27;
    }

    if (static String._unconditionallyBridgeFromObjectiveC(_:)() == 0xD00000000000001CLL && 0x80000001002B9740 == v78)
    {

      sub_1002532A4(v31, type metadata accessor for Metric);
      v317 = v50;
    }

    else
    {
      v80 = _stringCompareWithSmolCheck(_:_:expecting:)();

      sub_1002532A4(v31, type metadata accessor for Metric);
      v81 = v317;
      if (v80)
      {
        v81 = v50;
      }

      v317 = v81;
    }

LABEL_7:
    v32 = v323;
    v66 = v314;
  }

  if ((v317 & 0x8000000000000000) != 0)
  {
    goto LABEL_275;
  }

  if (v317 >= v313[2])
  {
    goto LABEL_276;
  }

  v32 = ((*(v319 + 80) + 32) & ~*(v319 + 80));
  v31 = v32 + v313;
  v312 = *(v319 + 72);
  v70 = v312 * v317;
  sub_1002531D4(v32 + v313 + v312 * v317, v305, type metadata accessor for Metric);
  v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v84 = sub_1001E248C(v82, v83);
  v28 = v310;
  v65 = v316;
  if ((v85 & 1) != 0 || (v84 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  if ((v311 & 0x8000000000000000) != 0)
  {
    goto LABEL_289;
  }

  v71 = v290;
  if (v311 >= v313[2])
  {
    goto LABEL_290;
  }

  v86 = v84;
  sub_1002531D4(v31 + v312 * v311, v290, type metadata accessor for Metric);
  v31 = sub_100253304(v86);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_291;
  }

  for (i = v313; v317 >= i[2]; i = sub_1001FA780(v313))
  {
    __break(1u);
LABEL_293:
    __break(1u);
LABEL_294:
    v286 = sub_1001FA780(v87);
    v87 = v313;
    v161 = v286;
LABEL_111:
    v70 = 0;
    v71 = v87[2];
    v321 = v161;
    *v307 = v161;
    v36 = v292 + 56;
    v318 = (v292 + 48);
    v65 = &type metadata for String;
    v162 = v311;
    v316 = v292 + 56;
    if (!v71)
    {
      while (1)
      {
        v175 = 1;
        v70 = v71;
LABEL_126:
        (*v36)(v162, v175, 1, v32);
        sub_1001B603C(v162, v50, &qword_100378F90, &qword_1002F4148);
        if ((*v318)(v50, 1, v32) == 1)
        {
          break;
        }

        v163 = *v50;
        v164 = v50 + *(v32 + 12);
        v165 = *(v164 + v324[7]);
        sub_1002532A4(v164, type metadata accessor for Metric);
        v166 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v167;

        v327 = v166;
        v328 = v28;
        v325 = 0x2D6E6F6974636573;
        v326 = 0xE800000000000000;
        sub_1001A56A0();
        v31 = &v327;
        if (StringProtocol.contains<A>(_:)())
        {
          v327 = v166;
          v328 = v28;
          v325 = 45;
          v326 = 0xE100000000000000;
          v36 = &type metadata for String;
          v168 = StringProtocol.components<A>(separatedBy:)();

          if (v168[2])
          {
            v32 = v168[4];
            v31 = v168[5];

            if ((v163 & 0x8000000000000000) != 0)
            {
              goto LABEL_271;
            }

            v169 = v321;
            if (v163 >= v321[2])
            {
              goto LABEL_272;
            }

            v170 = (v321 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v163 + v324[16]);
            *v170 = v32;
            v170[1] = v31;
            v171 = v169;

            *v307 = v171;
          }

          else
          {
          }

          v32 = v323;
          v87 = v313;
          v162 = v311;
          v36 = v316;
          if (v70 != v71)
          {
            goto LABEL_122;
          }
        }

        else
        {

          v32 = v323;
          v87 = v313;
          v162 = v311;
          if (v70 != v71)
          {
            goto LABEL_122;
          }
        }
      }

      v176 = v321[2];
      if (!v176)
      {
        return;
      }

      v323 = (*(v319 + 80) + 32) & ~*(v319 + 80);
      v177 = *(v319 + 72);
      v318 = v321 + v323;
      v178 = (v321 + v323 + v177 * (v176 - 1) + v324[16]);
      v179 = v178[1];
      if (!v179)
      {
        return;
      }

      v180 = *v178;

      v181 = sub_1001E248C(v180, v179);
      if (v182)
      {
        return;
      }

      if ((v181 & 0x8000000000000000) != 0)
      {
        goto LABEL_297;
      }

      if (!v181)
      {
        return;
      }

      v71 = 0;
      v50 = v321[2];
      v319 = v181;
      while (1)
      {
        v327 = v71;
        v31 = &v327;
        v183 = dispatch thunk of CustomStringConvertible.description.getter();
        v320 = v184;
        if (v50)
        {
          break;
        }

        v28 = _swiftEmptyArrayStorage;
LABEL_153:
        v193 = v295;
        UUID.init()();
        v194 = v298;
        v195 = (v193 + *(v298 + 20));
        v196 = v320;
        *v195 = v183;
        v195[1] = v196;
        *(v193 + *(v194 + 24)) = v28;
        sub_1002531D4(v193, v296, type metadata accessor for MetricSectional);
        v197 = *(v305 + 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = sub_1002256EC(0, v197[2] + 1, 1, v197);
        }

        v199 = v197[2];
        v198 = v197[3];
        if (v199 >= v198 >> 1)
        {
          v197 = sub_1002256EC((v198 > 1), v199 + 1, 1, v197);
        }

        ++v71;
        v197[2] = v199 + 1;
        v200 = v197 + ((*(v297 + 80) + 32) & ~*(v297 + 80)) + *(v297 + 72) * v199;
        v70 = type metadata accessor for MetricSectional;
        sub_10025323C(v296, v200, type metadata accessor for MetricSectional);
        v201 = v305;
        ObservableObject<>.objectWillChange.getter();
        ObservableObjectPublisher.send()();

        sub_1002532A4(v295, type metadata accessor for MetricSectional);
        *(v201 + 24) = v197;

        if (v71 == v319)
        {
          return;
        }
      }

      v36 = 0;
      v32 = v318;
      v28 = _swiftEmptyArrayStorage;
      v185 = v321;
      while (2)
      {
        if (v36 >= v185[2])
        {
          goto LABEL_266;
        }

        v186 = v322;
        sub_1002531D4(v32, v322, type metadata accessor for Metric);
        v187 = (v186 + v324[16]);
        v65 = *v187;
        v70 = v187[1];
        v325 = v71;
        v31 = &v325;
        v188 = dispatch thunk of CustomStringConvertible.description.getter();
        if (v70)
        {
          if (v65 == v188 && v70 == v189)
          {

            goto LABEL_147;
          }

          v31 = v189;
          v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v70)
          {
LABEL_147:
            sub_10025323C(v322, v317, type metadata accessor for Metric);
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v327 = v28;
            if ((v191 & 1) == 0)
            {
              v31 = &v327;
              sub_1001F54C0(0, *(v28 + 16) + 1, 1);
              v28 = v327;
            }

            v65 = *(v28 + 16);
            v192 = *(v28 + 24);
            v70 = v65 + 1;
            if (v65 >= v192 >> 1)
            {
              v31 = &v327;
              sub_1001F54C0((v192 > 1), v65 + 1, 1);
              v28 = v327;
            }

            *(v28 + 16) = v70;
            sub_10025323C(v317, v28 + v323 + v65 * v177, type metadata accessor for Metric);
LABEL_137:
            ++v36;
            v32 = (v32 + v177);
            v185 = v321;
            if (v50 == v36)
            {
              goto LABEL_153;
            }

            continue;
          }
        }

        else
        {
        }

        break;
      }

      sub_1002532A4(v322, type metadata accessor for Metric);
      goto LABEL_137;
    }

LABEL_122:
    if ((v70 & 0x8000000000000000) == 0)
    {
      if (v70 < v87[2])
      {
        v172 = v320;
        v173 = v87 + ((*(v319 + 80) + 32) & ~*(v319 + 80)) + *(v319 + 72) * v70;
        v174 = *(v32 + 12);
        *v320 = v70;
        sub_1002531D4(v173, v172 + v174, type metadata accessor for Metric);
        sub_1001B603C(v172, v162, &qword_100378F88, &qword_1002F4140);
        v175 = 0;
        ++v70;
        goto LABEL_126;
      }

      goto LABEL_270;
    }

LABEL_269:
    __break(1u);
LABEL_270:
    __break(1u);
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    __break(1u);
LABEL_277:
    __break(1u);
LABEL_278:
    __break(1u);
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
LABEL_281:
    __break(1u);
LABEL_282:
    __break(1u);
LABEL_283:
    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:
    __break(1u);
LABEL_286:
    __break(1u);
LABEL_287:
    __break(1u);
LABEL_288:
    __break(1u);
LABEL_289:
    __break(1u);
LABEL_290:
    __break(1u);
LABEL_291:
    ;
  }

  v89 = v32 + i + v70;
  v90 = v324;
  v91 = v324[9];
  v92 = *&v89[v91];
  *&v89[v91] = v31;
  v93 = i;

  *v307 = v93;
  v94 = *(v71 + v90[9]);
  sub_1001E1BB4(0, &qword_1003770C8, NSString_ptr);
  v95 = v94;
  v96 = NSString.init(stringLiteral:)("LTE", 3, 2);
  LOBYTE(v93) = static NSObject.== infix(_:_:)();

  if ((v93 & 1) == 0)
  {
    v97 = v306;
    sub_10024A3C8(v317, v306);
    sub_1002532A4(v97, type metadata accessor for Metric);
  }

  sub_1002532A4(v71, type metadata accessor for Metric);
LABEL_40:
  v319 = v36;
  v98 = v307;
  sub_10024DAB4(v307);
  v304 = 0;
  v31 = sub_1001FD574(_swiftEmptyArrayStorage);
  v36 = 0;
  v327 = v31;
  v99 = *v98;
  v311 = v32 + *v98;
  v317 = v291 + 16;
  v100 = (v291 + 8);
  v101 = v99[2];
  v70 = v323;
  v313 = v99;
  v314 = v101;
  if (v101)
  {
LABEL_72:
    if ((v36 & 0x8000000000000000) != 0)
    {
LABEL_263:
      __break(1u);
    }

    else if (v36 < v313[2])
    {
      v132 = v311 + v36 * v312;
      v133 = *(v70 + 48);
      v32 = v320;
      *v320 = v36;
      sub_1002531D4(v132, v32 + v133, type metadata accessor for Metric);
      sub_1001B603C(v32, v65, &qword_100378F88, &qword_1002F4140);
      v134 = 0;
      ++v36;
      goto LABEL_76;
    }

    __break(1u);
LABEL_265:
    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  while (1)
  {
    v134 = 1;
    v36 = v101;
LABEL_76:
    (v319)(v65, v134, 1, v70);
    v135 = v315;
    sub_1001B603C(v65, v315, &qword_100378F90, &qword_1002F4148);
    if ((v50)(v135, 1, v70) == 1)
    {
      break;
    }

    v102 = v135 + *(v70 + 48);
    v70 = v318;
    (*v317)(v318, v102 + v324[11], v28);
    sub_1002532A4(v102, type metadata accessor for Metric);
    v32 = sub_1001DFBE8();
    v65 = v103;
    (*v100)(v70, v28);
    if (!*(v31 + 16) || (sub_1001F66B8(v32, v65), (v104 & 1) == 0))
    {
      v31 = v327;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v325 = v31;
      v107 = sub_1001F66B8(v32, v65);
      v109 = *(v31 + 16);
      v110 = (v108 & 1) == 0;
      v111 = __OFADD__(v109, v110);
      v112 = v109 + v110;
      if (v111)
      {
        goto LABEL_274;
      }

      v28 = v108;
      if (*(v31 + 24) >= v112)
      {
        if (v70)
        {
          goto LABEL_54;
        }

        v124 = v107;
        sub_1001F9EF8();
        v107 = v124;
        if ((v28 & 1) == 0)
        {
          goto LABEL_65;
        }

LABEL_55:
        v114 = v107;

        v31 = v325;
        *(*(v325 + 56) + 8 * v114) = 1;
      }

      else
      {
        sub_1001F7998(v112, v70);
        v107 = sub_1001F66B8(v32, v65);
        if ((v28 & 1) != (v113 & 1))
        {
          goto LABEL_298;
        }

LABEL_54:
        if (v28)
        {
          goto LABEL_55;
        }

LABEL_65:
        v31 = v325;
        *(v325 + 8 * (v107 >> 6) + 64) |= 1 << v107;
        v125 = (*(v31 + 48) + 16 * v107);
        *v125 = v32;
        v125[1] = v65;
        *(*(v31 + 56) + 8 * v107) = 1;
        v126 = *(v31 + 16);
        v111 = __OFADD__(v126, 1);
        v127 = v126 + 1;
        if (v111)
        {
          goto LABEL_283;
        }

        *(v31 + 16) = v127;
      }

      v327 = v31;
      v70 = v323;
      v28 = v310;
      goto LABEL_47;
    }

    if (*(v31 + 16) && (v105 = sub_1001F66B8(v32, v65), (v106 & 1) != 0))
    {
      v115 = *(*(v31 + 56) + 8 * v105);
      v116 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_287;
      }

      v31 = v327;
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v325 = v31;
      v117 = sub_1001F66B8(v32, v65);
      v119 = *(v31 + 16);
      v120 = (v118 & 1) == 0;
      v111 = __OFADD__(v119, v120);
      v121 = v119 + v120;
      if (v111)
      {
        goto LABEL_288;
      }

      v28 = v118;
      if (*(v31 + 24) < v121)
      {
        sub_1001F7998(v121, v70);
        v117 = sub_1001F66B8(v32, v65);
        if ((v28 & 1) != (v122 & 1))
        {
          goto LABEL_298;
        }

LABEL_62:
        if ((v28 & 1) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_63;
      }

      if (v70)
      {
        goto LABEL_62;
      }

      v128 = v117;
      sub_1001F9EF8();
      v117 = v128;
      if ((v28 & 1) == 0)
      {
LABEL_69:
        v31 = v325;
        *(v325 + 8 * (v117 >> 6) + 64) |= 1 << v117;
        v129 = (*(v31 + 48) + 16 * v117);
        *v129 = v32;
        v129[1] = v65;
        *(*(v31 + 56) + 8 * v117) = v116;
        v130 = *(v31 + 16);
        v111 = __OFADD__(v130, 1);
        v131 = v130 + 1;
        if (v111)
        {
          goto LABEL_293;
        }

        *(v31 + 16) = v131;
        goto LABEL_71;
      }

LABEL_63:
      v123 = v117;

      v31 = v325;
      *(*(v325 + 56) + 8 * v123) = v116;
LABEL_71:
      v70 = v323;
      v28 = v310;
      v65 = v316;
      v101 = v314;
      v327 = v31;
      if (v36 != v314)
      {
        goto LABEL_72;
      }
    }

    else
    {

      v70 = v323;
LABEL_47:
      v65 = v316;
      v101 = v314;
      if (v36 != v314)
      {
        goto LABEL_72;
      }
    }
  }

  if (*(v31 + 16) >= 2uLL)
  {
    v28 = v31 + 64;
    v136 = 1 << *(v31 + 32);
    v137 = -1;
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    v70 = v137 & *(v31 + 64);
    v36 = (v136 + 63) >> 6;

    v138 = 0;
    v71 = 0;
    v65 = 0;
    v139 = 0xE000000000000000;
    if (!v70)
    {
      goto LABEL_83;
    }

    do
    {
LABEL_81:
      while (1)
      {
        v140 = __clz(__rbit64(v70));
        v70 &= v70 - 1;
        v141 = v140 | (v65 << 6);
        v32 = *(*(v31 + 56) + 8 * v141);
        if (v138 < v32)
        {
          break;
        }

        if (!v70)
        {
          goto LABEL_83;
        }
      }

      v143 = (*(v31 + 48) + 16 * v141);
      v71 = *v143;
      v316 = v143[1];

      v138 = v32;
      v139 = v316;
    }

    while (v70);
LABEL_83:
    while (1)
    {
      v142 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        goto LABEL_265;
      }

      if (v142 >= v36)
      {

        v31 = &v327;
        sub_1001E2DE4(0, 1, v71, v139);
        v71 = v313[2];

        v65 = 0;
LABEL_91:
        v144 = v309;
        while (1)
        {
          v32 = v319;
          if (v65 == v71)
          {
            v145 = 1;
            v65 = v71;
            v146 = v323;
          }

          else
          {
            if ((v65 & 0x8000000000000000) != 0)
            {
              goto LABEL_267;
            }

            if (v65 >= v313[2])
            {
              goto LABEL_268;
            }

            v147 = v311 + v65 * v312;
            v146 = v323;
            v148 = *(v323 + 48);
            v149 = v320;
            *v320 = v65;
            sub_1002531D4(v147, v149 + v148, type metadata accessor for Metric);
            sub_1001B603C(v149, v144, &qword_100378F88, &qword_1002F4140);
            v145 = 0;
            ++v65;
          }

          (v32)(v144, v145, 1, v146);
          v150 = v144;
          v151 = v308;
          sub_1001B603C(v150, v308, &qword_100378F90, &qword_1002F4148);
          if ((v50)(v151, 1, v146) == 1)
          {
            break;
          }

          v28 = *v151;
          v152 = v151 + *(v146 + 48);
          v153 = v318;
          v154 = v310;
          (*v317)(v318, v152 + v324[11], v310);
          sub_1002532A4(v152, type metadata accessor for Metric);
          v36 = sub_1001DFBE8();
          v70 = v155;
          (*v100)(v153, v154);
          v31 = v327;
          if (!v327[2])
          {

            goto LABEL_91;
          }

          sub_1001F66B8(v36, v70);
          v31 = v156;

          v144 = v309;
          if ((v31 & 1) != 0 && (v28 & 0x8000000000000000) == 0 && v28 < *(*v307 + 16))
          {
            v70 = v306;
            v31 = v307;
            sub_10024A3C8(v28, v306);
            sub_1002532A4(v70, type metadata accessor for Metric);
          }
        }

        break;
      }

      v70 = *(v28 + 8 * v142);
      ++v65;
      if (v70)
      {
        v65 = v142;
        goto LABEL_81;
      }
    }
  }

  sub_1002532A4(v305, type metadata accessor for Metric);
LABEL_105:
}

Swift::Int sub_10024DAB4(uint64_t *a1)
{
  v2 = *(type metadata accessor for Metric(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FA780(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100250880(v6, type metadata accessor for Metric, sub_100251954, sub_100250C78);
  *a1 = v3;
  return result;
}

Swift::Int sub_10024DB9C(uint64_t *a1)
{
  v2 = *(type metadata accessor for MetricSectional(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FA76C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_100250880(v6, type metadata accessor for MetricSectional, sub_100250EC0, sub_1002509D0);
  *a1 = v3;
  return result;
}

void sub_10024DC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  LODWORD(v74) = a5;
  v75 = a4;
  v77 = a3;
  v69 = a2;
  v76 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v7 - 8);
  __chkstk_darwin(v7);
  v85 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchQoS();
  v87 = *(v84 - 8);
  __chkstk_darwin(v84);
  v10 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = _swiftEmptyArrayStorage;
  v70 = swift_allocObject();
  *(v70 + 16) = _swiftEmptyArrayStorage;
  v16 = sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.background(_:), v11);
  v71 = v16;
  v17 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v14, v11);
  v94 = sub_100252F8C;
  v95 = v6;
  aBlock = _NSConcreteStackBlock;
  v91 = 1107296256;
  v68 = &v92;
  v92 = sub_10020C96C;
  v93 = &unk_10031FE50;
  v18 = _Block_copy(&aBlock);

  v19 = v10;
  static DispatchQoS.unspecified.getter();
  v89 = _swiftEmptyArrayStorage;
  v83 = sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v82 = sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  v80 = sub_1002302F0();
  v20 = v85;
  v67 = v7;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v72 = v17;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  v21 = *(v86 + 8);
  v86 += 8;
  v81 = v21;
  v21(v20, v7);
  v22 = *(v87 + 8);
  v87 += 8;
  v79 = v22;
  v22(v19, v84);

  v78 = v6[8];
  dispatch_group_enter(v78);
  v23 = swift_allocObject();
  v66 = v6;
  swift_weakInit();
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v15;
  v65 = v23;
  v25 = v6[5];
  v26 = swift_allocObject();
  *(v26 + 16) = sub_10025300C;
  *(v26 + 24) = v24;

  v73 = v15;

  v64 = v25;

  v27 = sub_10025C024();
  v63[2] = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_10025304C;
  *(v28 + 24) = v26;
  v63[1] = *(v27 + 3);
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v31 = v76;
  *(v30 + 16) = v29;
  *(v30 + 24) = v31;
  v32 = v69;
  v33 = v77;
  *(v30 + 32) = v69;
  *(v30 + 40) = v33;
  *(v30 + 48) = v75;
  *(v30 + 56) = 0;
  *(v30 + 64) = 0xE000000000000000;
  *(v30 + 72) = v74;
  *(v30 + 80) = sub_1001AD9DC;
  *(v30 + 88) = v28;
  v94 = sub_1002530D4;
  v95 = v30;
  aBlock = _NSConcreteStackBlock;
  v91 = 1107296256;
  v92 = sub_10020C96C;
  v93 = &unk_10031FF68;
  v34 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v89 = _swiftEmptyArrayStorage;
  v35 = v85;
  v36 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);

  v81(v35, v36);
  v37 = v32;
  v74 = v19;
  v38 = v66;
  v79(v19, v84);
  v39 = v70;

  v40 = v75;

  dispatch_group_enter(v78);
  v41 = v38[5];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  v44 = v76;
  v43[2] = v42;
  v43[3] = v44;
  v45 = v77;
  v43[4] = v37;
  v43[5] = v45;
  v43[6] = v40;
  v43[7] = v39;
  v46 = *&v41[OBJC_IVAR____TtC11FTMInternal16PersistanceStore_hardwareManager];
  if ((*(v46 + 160) & 1) == 0)
  {
    v50 = *(v46 + 156);

    v51 = v41;

    sub_10025C024();
    v52 = swift_allocObject();
    *(v52 + 16) = sub_100253160;
    *(v52 + 24) = v43;

    sub_10025FCC4(v50, sub_1001AD9DC, v52);

LABEL_8:

    goto LABEL_9;
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v77 = type metadata accessor for MetricDetailViewModel(0);
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);

    v49 = v41;

    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v48 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  }

  else
  {

    v53 = v41;
  }

  v54 = swift_weakLoadStrong();
  if (!v54)
  {
    goto LABEL_8;
  }

  v55 = *(v54 + 64);

  dispatch_group_leave(v55);

LABEL_9:

  v56 = static OS_dispatch_queue.main.getter();
  v57 = swift_allocObject();
  swift_weakInit();
  v58 = swift_allocObject();
  v59 = v73;
  v58[2] = v39;
  v58[3] = v59;
  v58[4] = v57;
  v94 = sub_1002531B8;
  v95 = v58;
  aBlock = _NSConcreteStackBlock;
  v91 = 1107296256;
  v92 = sub_10020C96C;
  v93 = &unk_10031FFE0;
  v60 = _Block_copy(&aBlock);

  v61 = v74;
  static DispatchQoS.unspecified.getter();
  v88 = _swiftEmptyArrayStorage;
  v62 = v85;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_group.notify(qos:flags:queue:execute:)();
  _Block_release(v60);

  v81(v62, v36);
  v79(v61, v84);
}

uint64_t sub_10024E7CC(uint64_t a1)
{
  v20 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v19 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  aBlock[4] = sub_1002531CC;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_100320058;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
  return (v15)(v13, v19);
}

void sub_10024EB60(uint64_t a1)
{
  type metadata accessor for MetricDetailViewModel(0);
  sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
  ObservableObject<>.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  *(a1 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
}

void sub_10024EBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    type metadata accessor for MetricDetailViewModel(0);
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v8 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  }

  if (a1)
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
  }

  else
  {
    if (qword_100374F98 != -1)
    {
      swift_once();
    }

    v9 = qword_100382480;
    v10 = static os_log_type_t.error.getter();
    sub_1001A551C(&unk_100377020, &unk_1002EF770);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1002EED40;
    if (a2)
    {
      swift_getErrorValue();
      Error.localizedDescription.getter();
    }

    sub_1001A551C(&qword_1003751D0, &qword_1002EEF50);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_1001A76E8();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    os_log(_:dso:log:type:_:)("metricDetailsViewModel error - processNewMetric: %{public}@", 59, 2, &_mh_execute_header, v9, v10, v11);
  }

  swift_beginAccess();
  v15 = swift_weakLoadStrong();
  if (v15)
  {
    v16 = *(v15 + 64);

    dispatch_group_leave(v16);
  }
}

void sub_10024EE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v36 = Strong;
      type metadata accessor for MetricDetailViewModel(0);
      sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
      ObservableObject<>.objectWillChange.getter();
      ObservableObjectPublisher.send()();

      *(v36 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
    }

    goto LABEL_30;
  }

  v8 = *(a1 + 16);
  if (!v8)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v9 = a5;
  v10 = 0;
  v11 = a1 + 64;
  v12 = _swiftEmptyArrayStorage;
  v39 = a1 + 64;
  do
  {
    v41 = v12;
    v13 = (v11 + 40 * v10);
    v14 = v10;
    while (1)
    {
      if (v14 >= v8)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }

      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_34;
      }

      v17 = *(v13 - 4);
      v16 = *(v13 - 3);
      v19 = *(v13 - 2);
      v18 = *(v13 - 1);
      v43 = *v13;
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a4 && v20 == v9)
      {
        v27 = v17;
        v28 = v16;
        v29 = v19;
        v30 = v18;
      }

      else
      {
        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v23 = v17;
        v24 = v16;
        v25 = v19;
        v26 = v18;

        if ((v22 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a6 && v31 == a7)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_19;
      }

LABEL_6:

      ++v14;
      v13 += 10;
      v9 = a5;
      if (v10 == v8)
      {
        v12 = v41;
        goto LABEL_29;
      }
    }

LABEL_19:
    v12 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1001F55E4(0, v41[2] + 1, 1);
      v12 = v41;
    }

    v11 = v39;
    v33 = v12[2];
    v32 = v12[3];
    if (v33 >= v32 >> 1)
    {
      sub_1001F55E4((v32 > 1), v33 + 1, 1);
      v12 = v41;
    }

    v12[2] = v33 + 1;
    v34 = &v12[5 * v33];
    v34[4] = v17;
    v34[5] = v16;
    v34[6] = v19;
    v34[7] = v18;
    *(v34 + 16) = v43;
    v9 = a5;
  }

  while (v10 != v8);
LABEL_29:
  swift_beginAccess();
  *(a8 + 16) = v12;

LABEL_30:
  swift_beginAccess();
  v37 = swift_weakLoadStrong();
  if (v37)
  {
    v38 = *(v37 + 64);

    dispatch_group_leave(v38);
  }
}

uint64_t sub_10024F194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v72 = a3;
  v71 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchTime();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v63 = &v62 - v9;
  swift_beginAccess();
  v10 = *(a1 + 16);

  v11 = sub_1001FCF0C(_swiftEmptyArrayStorage);
  v75 = *(v10 + 16);
  if (v75)
  {
    v12 = 0;
    v13 = (v10 + 56);
    v74 = a2;
    v73 = v10;
    while (v12 < *(v10 + 16))
    {
      v76 = v12;
      v14 = *(v13 - 3);
      v15 = *(v13 - 2);
      v16 = *(v13 - 1);
      v17 = *v13;
      v79 = v14;
      v78 = v15;
      v77 = v16;
      v18 = String.init(_:)(v17);
      v19 = objc_opt_self();
      v20 = [v19 mainBundle];
      v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v21.value._object = 0xEB00000000656C62;
      v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v21, v20, v18, v18);

      v23 = v17;
      v24 = String.init(_:)(v23);
      v25 = [v19 mainBundle];
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v26, v25, v24, v24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v11;
      v30 = sub_1001F66B8(v22._countAndFlagsBits, v22._object);
      v31 = v11[2];
      v32 = (v29 & 1) == 0;
      v33 = v31 + v32;
      if (__OFADD__(v31, v32))
      {
        goto LABEL_30;
      }

      v34 = v29;
      if (v11[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001FA060();
        }
      }

      else
      {
        sub_1001F7C38(v33, isUniquelyReferenced_nonNull_native);
        v35 = sub_1001F66B8(v22._countAndFlagsBits, v22._object);
        if ((v34 & 1) != (v36 & 1))
        {
          goto LABEL_34;
        }

        v30 = v35;
      }

      v37 = v79;
      if (v34)
      {

        v11 = aBlock[0];
        *(*(aBlock[0] + 56) + 16 * v30) = v27;
      }

      else
      {
        v11 = aBlock[0];
        *(aBlock[0] + 8 * (v30 >> 6) + 64) |= 1 << v30;
        *(v11[6] + 16 * v30) = v22;
        *(v11[7] + 16 * v30) = v27;

        v38 = v11[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_32;
        }

        v11[2] = v40;
      }

      v12 = v76 + 1;
      v13 += 5;
      a2 = v74;
      v10 = v73;
      if (v75 == v76 + 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_15:

    swift_beginAccess();
    v41 = *(*(a2 + 16) + 16);
    if (!v41)
    {
LABEL_26:

      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        swift_beginAccess();

        sub_10024A6CC(v52);
      }

      sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
      v53 = static OS_dispatch_queue.main.getter();
      v54 = v62;
      static DispatchTime.now()();
      v55 = v63;
      + infix(_:_:)();
      v79 = *(v64 + 8);
      v56 = v65;
      (v79)(v54, v65);
      aBlock[4] = sub_1002531C4;
      aBlock[5] = v72;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10020C96C;
      aBlock[3] = &unk_100320030;
      v57 = _Block_copy(aBlock);

      v58 = v66;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
      sub_1002302F0();
      v59 = v68;
      v60 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v57);

      (*(v70 + 8))(v59, v60);
      (*(v67 + 8))(v58, v69);
      return (v79)(v55, v56);
    }

    swift_beginAccess();
    v42 = 0;
    while (v42 < *(*(a2 + 16) + 16))
    {
      v43 = type metadata accessor for Metric(0);
      v44 = (*(*(v43 - 8) + 80) + 32) & ~*(*(v43 - 8) + 80);
      v45 = *(*(v43 - 8) + 72) * v42;
      v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (v11[2])
      {
        sub_1001F66B8(v46, v47);
        v49 = v48;

        if (v49)
        {
          swift_beginAccess();
          v50 = *(a2 + 16);
          v51 = swift_isUniquelyReferenced_nonNull_native();
          *(a2 + 16) = v50;
          if ((v51 & 1) == 0)
          {
            v50 = sub_1001FA780(v50);
          }

          if (v42 >= v50[2])
          {
            goto LABEL_33;
          }

          *(v50 + v44 + v45 + *(v43 + 60)) = 1;
          *(a2 + 16) = v50;
          swift_endAccess();
        }
      }

      else
      {
      }

      if (v41 == ++v42)
      {
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double sub_10024FAEC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for MetricDetailViewModel(0);
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v2 + OBJC_IVAR____TtC11FTMInternal21MetricDetailViewModel_shouldShowSPinner) = 0;
  }

  swift_beginAccess();
  v3 = swift_weakLoadStrong();
  if (v3)
  {
    v5 = v3;
    type metadata accessor for MetricDetailViewModel(0);
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    *(v5 + 33) = 0;
  }

  return result;
}

uint64_t sub_10024FC44(unint64_t a1, int a2, unint64_t a3, char a4)
{
  v41 = a2;
  v7 = type metadata accessor for Metric(0);
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v42 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1001A551C(&unk_100376370, qword_1002F1420);
  __chkstk_darwin(v10 - 8);
  v12 = &v40[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v40[-v14];
  v17 = __chkstk_darwin(v16);
  v19 = &v40[-v18];
  v20 = *(v8 + 56);
  v20(&v40[-v18], 1, 1, v7, v17);
  if (a4)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_18;
    }

    v21 = v43[2];
    if (*(v21 + 16) > a1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v22 = v43[3];
  if (*(v22 + 16) <= a3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = type metadata accessor for MetricSectional(0);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = *(v22 + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80)) + *(*(result - 8) + 72) * a3 + *(result + 24));
  if (*(v21 + 16) > a1)
  {
LABEL_9:
    sub_1002531D4(v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * a1, v15, type metadata accessor for Metric);
    sub_1001CD530(v19);
    (v20)(v15, 0, 1, v7);
    sub_1001B603C(v15, v19, &unk_100376370, qword_1002F1420);
    sub_1001CD4C0(v19, v12);
    if ((*(v8 + 48))(v12, 1, v7) != 1)
    {
      v26 = v12;
      v27 = v42;
      sub_10025323C(v26, v42, type metadata accessor for Metric);
      v28 = *&v27[v7[12]];
      v29 = *&v27[v7[6]];
      v30 = *&v27[v7[8]];
      v31 = *&v27[v7[13]];
      v44[0] = *&v27[v7[5]];
      v44[1] = v28;
      v44[2] = v29;
      v44[3] = v30;
      v45 = v31;
      v32 = v43[5];
      v33 = v44[0];
      v34 = v28;
      v35 = v29;
      v36 = v30;
      v37 = v32;
      sub_10025C024();
      if (v41)
      {
        v38 = sub_1002679BC(v33, v36);
        sub_100260300(v38, v39, sub_10025EEF4, 0);
      }

      else
      {
        sub_10025FFD0(v44, sub_10025EE8C, 0);
      }

      sub_1002532A4(v42, type metadata accessor for Metric);
      return sub_1001CD530(v19);
    }

    sub_1001CD530(v12);
    if (qword_100374FD0 == -1)
    {
LABEL_11:
      v24 = qword_1003824B8;
      v25 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("MetricDetailViewModel - updateDashboardItem - unable to unwrap metric", 69, 2, &_mh_execute_header, v24, v25, _swiftEmptyArrayStorage);
      return sub_1001CD530(v19);
    }

LABEL_21:
    swift_once();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002501CC(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1002502B8(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E1BB4(0, &qword_100377080, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100250818;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020C96C;
  aBlock[3] = &unk_10031FDD8;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100250838(&qword_1003784A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001A551C(&unk_100377090, &qword_1002F2CA0);
  sub_1002302F0();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

void sub_100250590(uint64_t a1, uint64_t a2)
{
  if (qword_100375018 != -1)
  {
    v5 = a2;
    swift_once();
    a2 = v5;
  }

  if (*(qword_100382500 + 155) == 1)
  {
    type metadata accessor for MetricDetailViewModel(0);
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v3 = 1;
  }

  else if (*(qword_100382500 + 168) <= 0)
  {
    type metadata accessor for MetricDetailViewModel(0);
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    v3 = 2;
  }

  else
  {
    v4 = a2;
    type metadata accessor for MetricDetailViewModel(0);
    sub_100250838(&qword_100378F80, type metadata accessor for MetricDetailViewModel, &unk_1002F4108);
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();

    if (v4 >= 1)
    {
      *(a1 + 32) = 0;
      return;
    }

    v3 = 3;
  }

  *(a1 + 32) = v3;
}

uint64_t sub_10025075C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MetricDetailViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_10025079C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MetricDetailViewModel(0);
  result = Identifiable<>.id.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1002507E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100250820(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100250838(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int sub_100250880(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1);
  }

  return result;
}

void sub_1002509D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MetricSectional(0);
  __chkstk_darwin(v8);
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v38 = v17;
    v32 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v36 = v19;
    v37 = a3;
    v34 = v22;
    v35 = v21;
    while (1)
    {
      sub_1002531D4(v22, v16, type metadata accessor for MetricSectional);
      sub_1002531D4(v19, v12, type metadata accessor for MetricSectional);
      v23 = *(v8 + 20);
      v24 = *&v16[v23];
      v25 = *&v16[v23 + 8];
      v26 = &v12[v23];
      if (*v26 == v24 && *(v26 + 1) == v25)
      {
        sub_1002532A4(v12, type metadata accessor for MetricSectional);
        sub_1002532A4(v16, type metadata accessor for MetricSectional);
LABEL_5:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v21 = v35 - 1;
        v22 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_6;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1002532A4(v12, type metadata accessor for MetricSectional);
      sub_1002532A4(v16, type metadata accessor for MetricSectional);
      if ((v28 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = v39;
      sub_10025323C(v22, v39, type metadata accessor for MetricSectional);
      swift_arrayInitWithTakeFrontToBack();
      sub_10025323C(v29, v19, type metadata accessor for MetricSectional);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_100250C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for Metric(0);
  __chkstk_darwin(v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v30 = v19;
    v31 = a3;
    v28 = v22;
    v29 = v21;
    while (1)
    {
      sub_1002531D4(v22, v16, type metadata accessor for Metric);
      sub_1002531D4(v19, v12, type metadata accessor for Metric);
      v23 = static Date.> infix(_:_:)();
      sub_1002532A4(v12, type metadata accessor for Metric);
      sub_1002532A4(v16, type metadata accessor for Metric);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v31 + 1;
        v19 = v30 + v26;
        v21 = v29 - 1;
        v22 = v28 + v26;
        if (v31 + 1 == v27)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      sub_10025323C(v22, v9, type metadata accessor for Metric);
      swift_arrayInitWithTakeFrontToBack();
      sub_10025323C(v9, v19, type metadata accessor for Metric);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100250EC0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v131 = a1;
  v8 = type metadata accessor for MetricSectional(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v136 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v143 = &v124 - v12;
  __chkstk_darwin(v13);
  v144 = &v124 - v14;
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v142 = &v124 - v17;
  __chkstk_darwin(v18);
  v141 = (&v124 - v19);
  __chkstk_darwin(v20);
  v130 = &v124 - v21;
  __chkstk_darwin(v22);
  v129 = &v124 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = _swiftEmptyArrayStorage;
LABEL_111:
    v28 = *v131;
    if (!*v131)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_143:
      v27 = sub_1001FA564(v27);
    }

    v147 = v27;
    v119 = *(v27 + 16);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *(v27 + 16 * v119);
        v121 = v27;
        v122 = *(v27 + 16 * (v119 - 1) + 32);
        v27 = *(v27 + 16 * (v119 - 1) + 40);
        sub_100252280(*a3 + *(v9 + 72) * v120, *a3 + *(v9 + 72) * v122, *a3 + *(v9 + 72) * v27, v28);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v27 < v120)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1001FA564(v121);
        }

        if (v119 - 2 >= *(v121 + 2))
        {
          goto LABEL_137;
        }

        v123 = &v121[16 * v119];
        *v123 = v120;
        *(v123 + 1) = v27;
        v147 = v121;
        sub_1001FA4D8(v119 - 1);
        v27 = v147;
        v119 = *(v147 + 16);
        if (v119 <= 1)
        {
          goto LABEL_121;
        }
      }

      goto LABEL_147;
    }

LABEL_121:

    return;
  }

  v145 = v23;
  v125 = a4;
  v26 = 0;
  v27 = _swiftEmptyArrayStorage;
  v133 = a3;
  v126 = v9;
  v146 = v8;
  while (1)
  {
    v28 = v26 + 1;
    if (v26 + 1 >= v25)
    {
      goto LABEL_37;
    }

    v137 = v25;
    a3 = *a3;
    v29 = *(v9 + 72);
    v139 = v26 + 1;
    v30 = v129;
    sub_1002531D4(a3 + v29 * v28, v129, type metadata accessor for MetricSectional);
    v132 = v26;
    v140 = v29;
    v28 = v130;
    sub_1002531D4(a3 + v29 * v26, v130, type metadata accessor for MetricSectional);
    v31 = *(v8 + 20);
    v32 = *(v30 + v31);
    v33 = *(v30 + v31 + 8);
    v34 = (v28 + v31);
    v35 = *v34 == v32 && v34[1] == v33;
    v128 = v5;
    LODWORD(v138) = v35 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
    v127 = v27;
    sub_1002532A4(v130, type metadata accessor for MetricSectional);
    sub_1002532A4(v129, type metadata accessor for MetricSectional);
    v36 = v132 + 2;
    v37 = v139;
    v38 = v140 * (v132 + 2);
    v39 = a3 + v38;
    v40 = v140 * v139;
    v41 = a3 + v140 * v139;
    do
    {
      v9 = v36;
      v27 = v37;
      v43 = v40;
      v5 = v38;
      if (v36 >= v137)
      {
        break;
      }

      a3 = v141;
      sub_1002531D4(v39, v141, type metadata accessor for MetricSectional);
      v44 = v142;
      sub_1002531D4(v41, v142, type metadata accessor for MetricSectional);
      v45 = *(v146 + 20);
      v46 = *(a3 + v45);
      v47 = *(a3 + v45 + 8);
      v48 = (v44 + v45);
      v49 = *v48 == v46 && v48[1] == v47;
      v42 = v49 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
      v28 = type metadata accessor for MetricSectional;
      sub_1002532A4(v142, type metadata accessor for MetricSectional);
      sub_1002532A4(v141, type metadata accessor for MetricSectional);
      v36 = v9 + 1;
      v39 += v140;
      v41 += v140;
      v37 = v27 + 1;
      v40 = v43 + v140;
      v38 = v5 + v140;
    }

    while (((v138 ^ v42) & 1) == 0);
    if (v138)
    {
      v50 = v132;
      if (v9 < v132)
      {
        goto LABEL_140;
      }

      if (v132 >= v9)
      {
        v28 = v9;
        v27 = v127;
        v5 = v128;
        a3 = v133;
        v9 = v126;
        v8 = v146;
        v26 = v132;
        goto LABEL_37;
      }

      v51 = v132 * v140;
      v8 = v146;
      do
      {
        if (v50 != v27)
        {
          v53 = *v133;
          if (!*v133)
          {
            goto LABEL_146;
          }

          sub_10025323C(v53 + v51, v136, type metadata accessor for MetricSectional);
          if (v51 < v43 || v53 + v51 >= (v53 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v51 != v43)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_10025323C(v136, v53 + v43, type metadata accessor for MetricSectional);
          v8 = v146;
        }

        ++v50;
        v43 -= v140;
        v5 -= v140;
        v51 += v140;
      }

      while (v50 < v27--);
      v28 = v9;
      v27 = v127;
      v5 = v128;
      a3 = v133;
      v9 = v126;
    }

    else
    {
      v28 = v9;
      v27 = v127;
      v5 = v128;
      a3 = v133;
      v9 = v126;
      v8 = v146;
    }

    v26 = v132;
LABEL_37:
    v54 = a3[1];
    if (v28 < v54)
    {
      if (__OFSUB__(v28, v26))
      {
        goto LABEL_139;
      }

      if (v28 - v26 < v125)
      {
        v55 = v26 + v125;
        if (__OFADD__(v26, v125))
        {
          goto LABEL_141;
        }

        if (v55 >= v54)
        {
          v55 = a3[1];
        }

        if (v55 < v26)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v28 != v55)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v28 < v26)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1001FA578(0, *(v27 + 16) + 1, 1, v27);
    }

    v74 = *(v27 + 16);
    v73 = *(v27 + 24);
    v75 = v74 + 1;
    if (v74 >= v73 >> 1)
    {
      v27 = sub_1001FA578((v73 > 1), v74 + 1, 1, v27);
    }

    *(v27 + 16) = v75;
    v76 = v27 + 16 * v74;
    *(v76 + 32) = v26;
    *(v76 + 40) = v28;
    v139 = v28;
    v28 = *v131;
    if (!*v131)
    {
      goto LABEL_148;
    }

    if (v74)
    {
      while (1)
      {
        v77 = v75 - 1;
        if (v75 >= 4)
        {
          break;
        }

        if (v75 == 3)
        {
          v78 = *(v27 + 32);
          v79 = *(v27 + 40);
          v88 = __OFSUB__(v79, v78);
          v80 = v79 - v78;
          v81 = v88;
LABEL_80:
          if (v81)
          {
            goto LABEL_127;
          }

          v94 = (v27 + 16 * v75);
          v96 = *v94;
          v95 = v94[1];
          v97 = __OFSUB__(v95, v96);
          v98 = v95 - v96;
          v99 = v97;
          if (v97)
          {
            goto LABEL_130;
          }

          v100 = (v27 + 32 + 16 * v77);
          v102 = *v100;
          v101 = v100[1];
          v88 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v88)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v98, v103))
          {
            goto LABEL_134;
          }

          if (v98 + v103 >= v80)
          {
            if (v80 < v103)
            {
              v77 = v75 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v104 = (v27 + 16 * v75);
        v106 = *v104;
        v105 = v104[1];
        v88 = __OFSUB__(v105, v106);
        v98 = v105 - v106;
        v99 = v88;
LABEL_94:
        if (v99)
        {
          goto LABEL_129;
        }

        v107 = v27 + 16 * v77;
        v109 = *(v107 + 32);
        v108 = *(v107 + 40);
        v88 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v88)
        {
          goto LABEL_132;
        }

        if (v110 < v98)
        {
          goto LABEL_3;
        }

LABEL_101:
        v115 = v77 - 1;
        if (v77 - 1 >= v75)
        {
          __break(1u);
LABEL_123:
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
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v116 = *(v27 + 32 + 16 * v115);
        v117 = *(v27 + 32 + 16 * v77 + 8);
        sub_100252280(*a3 + *(v9 + 72) * v116, *a3 + *(v9 + 72) * *(v27 + 32 + 16 * v77), *a3 + *(v9 + 72) * v117, v28);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v117 < v116)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1001FA564(v27);
        }

        if (v115 >= *(v27 + 16))
        {
          goto LABEL_124;
        }

        v118 = v27 + 16 * v115;
        *(v118 + 32) = v116;
        *(v118 + 40) = v117;
        v147 = v27;
        sub_1001FA4D8(v77);
        v27 = v147;
        v75 = *(v147 + 16);
        if (v75 <= 1)
        {
          goto LABEL_3;
        }
      }

      v82 = v27 + 32 + 16 * v75;
      v83 = *(v82 - 64);
      v84 = *(v82 - 56);
      v88 = __OFSUB__(v84, v83);
      v85 = v84 - v83;
      if (v88)
      {
        goto LABEL_125;
      }

      v87 = *(v82 - 48);
      v86 = *(v82 - 40);
      v88 = __OFSUB__(v86, v87);
      v80 = v86 - v87;
      v81 = v88;
      if (v88)
      {
        goto LABEL_126;
      }

      v89 = (v27 + 16 * v75);
      v91 = *v89;
      v90 = v89[1];
      v88 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v88)
      {
        goto LABEL_128;
      }

      v88 = __OFADD__(v80, v92);
      v93 = v80 + v92;
      if (v88)
      {
        goto LABEL_131;
      }

      if (v93 >= v85)
      {
        v111 = (v27 + 32 + 16 * v77);
        v113 = *v111;
        v112 = v111[1];
        v88 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v88)
        {
          goto LABEL_135;
        }

        if (v80 < v114)
        {
          v77 = v75 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v25 = a3[1];
    v26 = v139;
    v8 = v146;
    if (v139 >= v25)
    {
      goto LABEL_111;
    }
  }

  v127 = v27;
  v128 = v5;
  v56 = *a3;
  v57 = *(v9 + 72);
  v58 = *a3 + v57 * (v28 - 1);
  v59 = -v57;
  v132 = v26;
  v60 = v26 - v28;
  v134 = v57;
  v135 = v55;
  v61 = v56 + v28 * v57;
  v62 = v144;
  while (2)
  {
    v138 = v60;
    v139 = v28;
    v137 = v61;
    v63 = v61;
    v140 = v58;
LABEL_49:
    v64 = v145;
    sub_1002531D4(v63, v145, type metadata accessor for MetricSectional);
    sub_1002531D4(v58, v62, type metadata accessor for MetricSectional);
    v65 = *(v8 + 20);
    v66 = *(v64 + v65);
    v67 = *(v64 + v65 + 8);
    v68 = (v62 + v65);
    if (*v68 == v66 && v68[1] == v67)
    {
      sub_1002532A4(v62, type metadata accessor for MetricSectional);
      sub_1002532A4(v64, type metadata accessor for MetricSectional);
LABEL_47:
      v28 = v139 + 1;
      v58 = v140 + v134;
      v60 = v138 - 1;
      v61 = (v137 + v134);
      if (v139 + 1 != v135)
      {
        continue;
      }

      v28 = v135;
      v27 = v127;
      v5 = v128;
      v26 = v132;
      a3 = v133;
      v9 = v126;
      goto LABEL_60;
    }

    break;
  }

  v70 = _stringCompareWithSmolCheck(_:_:expecting:)();
  sub_1002532A4(v62, type metadata accessor for MetricSectional);
  sub_1002532A4(v64, type metadata accessor for MetricSectional);
  if ((v70 & 1) == 0)
  {
    v8 = v146;
    goto LABEL_47;
  }

  v8 = v146;
  if (v56)
  {
    v71 = v143;
    sub_10025323C(v63, v143, type metadata accessor for MetricSectional);
    swift_arrayInitWithTakeFrontToBack();
    sub_10025323C(v71, v58, type metadata accessor for MetricSectional);
    v58 += v59;
    v63 += v59;
    v72 = __CFADD__(v60++, 1);
    v62 = v144;
    if (v72)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_100251954(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for Metric(0);
  v112 = *(v9 - 8);
  __chkstk_darwin(v9);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v115 = &v100 - v12;
  __chkstk_darwin(v13);
  v116 = &v100 - v14;
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_1001FA564(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_100252848(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1001FA564(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_1001FA4D8(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_1002531D4(v110 + v23 * v22, v17, type metadata accessor for Metric);
      v25 = v24 + v23 * v19;
      v26 = v116;
      sub_1002531D4(v25, v116, type metadata accessor for Metric);
      LODWORD(v111) = static Date.> infix(_:_:)();
      sub_1002532A4(v26, type metadata accessor for Metric);
      sub_1002532A4(v17, type metadata accessor for Metric);
      v102 = v19;
      v27 = v19 + 2;
      v113 = v23;
      v28 = v110 + v23 * (v19 + 2);
      while (v18 != v27)
      {
        sub_1002531D4(v28, v17, type metadata accessor for Metric);
        v29 = v116;
        sub_1002531D4(v5, v116, type metadata accessor for Metric);
        v30 = static Date.> infix(_:_:)() & 1;
        sub_1002532A4(v29, type metadata accessor for Metric);
        sub_1002532A4(v17, type metadata accessor for Metric);
        ++v27;
        v28 += v113;
        v5 += v113;
        if ((v111 & 1) != v30)
        {
          v18 = v27 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v31 = v113 * (v18 - 1);
          v32 = v18;
          v33 = v18 * v113;
          v111 = v18;
          v34 = v102;
          v35 = v102;
          v36 = v102 * v113;
          do
          {
            if (v34 != --v32)
            {
              v37 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v37 + v36;
              sub_10025323C(v37 + v36, v107, type metadata accessor for Metric);
              if (v36 < v31 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v31)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_10025323C(v107, v37 + v31, type metadata accessor for Metric);
            }

            ++v34;
            v31 -= v113;
            v33 -= v113;
            v36 += v113;
          }

          while (v34 < v32);
          v6 = v101;
          a4 = v103;
          v21 = v35;
          v18 = v111;
        }
      }
    }

    v38 = v114[1];
    if (v18 < v38)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v38)
        {
          v39 = v114[1];
        }

        else
        {
          v39 = v21 + a4;
        }

        if (v39 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v39)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_1001FA578(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v40 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v40 >> 1)
    {
      v20 = sub_1001FA578((v40 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v41 = &v20[16 * a4];
    *(v41 + 4) = v21;
    *(v41 + 5) = v19;
    v42 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v43 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v44 = *(v20 + 4);
          v45 = *(v20 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_52:
          if (v47)
          {
            goto LABEL_112;
          }

          v60 = &v20[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_115;
          }

          v66 = &v20[16 * v43 + 32];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_119;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v43 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v70 = &v20[16 * v5];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_66:
        if (v65)
        {
          goto LABEL_114;
        }

        v73 = &v20[16 * v43];
        v75 = *(v73 + 4);
        v74 = *(v73 + 5);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_117;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v43 - 1;
        if (v43 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v81 = v20;
        v82 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v43 + 40];
        sub_100252848(*v114 + *(v112 + 72) * v82, *v114 + *(v112 + 72) * *&v20[16 * v43 + 32], *v114 + *(v112 + 72) * v5, v42);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v82)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_1001FA564(v81);
        }

        if (a4 >= *(v81 + 2))
        {
          goto LABEL_109;
        }

        v83 = &v81[16 * a4];
        *(v83 + 4) = v82;
        *(v83 + 5) = v5;
        v118 = v81;
        sub_1001FA4D8(v43);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v48 = &v20[16 * v5 + 32];
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_110;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_111;
      }

      v55 = &v20[16 * v5];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_113;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_116;
      }

      if (v59 >= v51)
      {
        v77 = &v20[16 * v43 + 32];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v46 < v80)
        {
          v43 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v84 = v18;
  v85 = v21;
  v86 = *v114;
  v87 = *(v112 + 72);
  v88 = *v114 + v87 * (v18 - 1);
  v89 = -v87;
  v102 = v85;
  v90 = v85 - v18;
  v111 = v84;
  v105 = v87;
  v106 = v39;
  v5 = v86 + v84 * v87;
LABEL_85:
  v109 = v5;
  v110 = v90;
  v113 = v88;
  while (1)
  {
    a4 = type metadata accessor for Metric;
    sub_1002531D4(v5, v17, type metadata accessor for Metric);
    v91 = v116;
    sub_1002531D4(v88, v116, type metadata accessor for Metric);
    v92 = static Date.> infix(_:_:)();
    sub_1002532A4(v91, type metadata accessor for Metric);
    sub_1002532A4(v17, type metadata accessor for Metric);
    if ((v92 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v88 = v113 + v105;
      v90 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    a4 = type metadata accessor for Metric;
    v93 = v115;
    sub_10025323C(v5, v115, type metadata accessor for Metric);
    swift_arrayInitWithTakeFrontToBack();
    sub_10025323C(v93, v88, type metadata accessor for Metric);
    v88 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_100252280(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = a4;
  v55 = type metadata accessor for MetricSectional(0);
  __chkstk_darwin(v55);
  v54 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v48 - v9;
  __chkstk_darwin(v10);
  v12 = &v48 - v11;
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_72;
  }

  v19 = (a2 - a1) / v17;
  v59 = a1;
  v58 = v56;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (v56 < a2 || a2 + v21 <= v56)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = v56 + v21;
    if (v21 >= 1)
    {
      v32 = -v17;
      v33 = v56 + v21;
      do
      {
        v49 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v51 = v34;
        v52 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v59 = v34;
            v57 = v49;
            goto LABEL_69;
          }

          v36 = a3;
          v50 = v31;
          v37 = v32;
          v38 = v33 + v32;
          v39 = v33 + v32;
          v40 = v53;
          sub_1002531D4(v39, v53, type metadata accessor for MetricSectional);
          v41 = v54;
          sub_1002531D4(v35, v54, type metadata accessor for MetricSectional);
          v42 = *(v55 + 20);
          v43 = *(v40 + v42);
          v44 = *(v40 + v42 + 8);
          v45 = (v41 + v42);
          v46 = *v45 == v43 && v45[1] == v44;
          v47 = v46 ? 0 : _stringCompareWithSmolCheck(_:_:expecting:)();
          v32 = v37;
          a3 = v36 + v37;
          sub_1002532A4(v54, type metadata accessor for MetricSectional);
          sub_1002532A4(v53, type metadata accessor for MetricSectional);
          if (v47)
          {
            break;
          }

          v31 = v38;
          v35 = v52;
          if (v36 < v33 || a3 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v33 = v38;
          v34 = v51;
          if (v38 <= v56)
          {
            a2 = v51;
            goto LABEL_68;
          }
        }

        a2 = v52;
        if (v36 < v51 || a3 >= v51)
        {
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
        }

        else
        {
          v31 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v56);
    }

LABEL_68:
    v59 = a2;
    v57 = v31;
  }

  else
  {
    v20 = v19 * v17;
    if (v56 < a1 || a1 + v20 <= v56)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v56 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = v56 + v20;
    v57 = v56 + v20;
    if (v20 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_1002531D4(a2, v15, type metadata accessor for MetricSectional);
        sub_1002531D4(v56, v12, type metadata accessor for MetricSectional);
        v24 = *(v55 + 20);
        v25 = *&v15[v24];
        v26 = *&v15[v24 + 8];
        v27 = &v12[v24];
        if (*v27 == v25 && *(v27 + 1) == v26)
        {
          break;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1002532A4(v12, type metadata accessor for MetricSectional);
        sub_1002532A4(v15, type metadata accessor for MetricSectional);
        if ((v29 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v17)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v17;
LABEL_38:
        a1 += v17;
        v59 = a1;
        if (v56 >= v22 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1002532A4(v12, type metadata accessor for MetricSectional);
      sub_1002532A4(v15, type metadata accessor for MetricSectional);
LABEL_30:
      v30 = v56 + v17;
      if (a1 < v56 || a1 >= v30)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v56)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v58 = v30;
      v56 = v30;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_100252D7C(&v59, &v58, &v57, type metadata accessor for MetricSectional);
}

void sub_100252848(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for Metric(0);
  __chkstk_darwin(v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_1002531D4(v29, v42, type metadata accessor for Metric);
          v31 = v43;
          sub_1002531D4(v26, v43, type metadata accessor for Metric);
          v32 = static Date.> infix(_:_:)();
          sub_1002532A4(v31, type metadata accessor for Metric);
          sub_1002532A4(v30, type metadata accessor for Metric);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_1002531D4(a2, v42, type metadata accessor for Metric);
        v20 = v43;
        sub_1002531D4(a4, v43, type metadata accessor for Metric);
        v21 = static Date.> infix(_:_:)();
        sub_1002532A4(v20, type metadata accessor for Metric);
        sub_1002532A4(v19, type metadata accessor for Metric);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_100252D7C(&v47, &v46, &v45, type metadata accessor for Metric);
}

uint64_t sub_100252D7C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100252E64(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_1001A551C(&qword_1003772A0, &qword_1002F11B0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_100252F54()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100252F94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100252FCC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100253014()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10025307C()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100253110()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100253170()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002531D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025323C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002532A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

NSString sub_100253304(uint64_t a1)
{
  if (a1 <= 3)
  {
    if (a1 >= 0)
    {
      goto LABEL_5;
    }

LABEL_7:
    dispatch thunk of CustomStringConvertible.description.getter();
    goto LABEL_6;
  }

  if (a1 >= 8)
  {
    goto LABEL_7;
  }

LABEL_5:
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
LABEL_6:
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

Swift::Int sub_100253530()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002535C4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100253644(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002536D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100254064(*a1);
  *a2 = result;
  return result;
}

void sub_100253704(uint64_t *a1@<X8>)
{
  v2 = 0xE100000000000000;
  v3 = 80;
  v4 = 21328;
  if (*v1 != 2)
  {
    v4 = 21331;
  }

  if (*v1)
  {
    v3 = 83;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE200000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_100253754()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1002537C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10025383C()
{
  v1 = OBJC_IVAR____TtC11FTMInternal30FTMNetworkInfoDataStateChanged__stateChanged;
  v2 = sub_1001A551C(&qword_100376320, &qword_1002F4310);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11FTMInternal30FTMNetworkInfoDataStateChanged__networkInfoArray;
  v4 = sub_1001A551C(&qword_1003791C0, &qword_1002F4318);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_100253958(uint64_t a1)
{
  sub_100253E80(319, &qword_100376DE0, &type metadata for Bool, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100253A48(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100253A48(uint64_t a1)
{
  if (!qword_100378FE0)
  {
    sub_1001A55C8(&qword_100377BE8, &qword_1002F4170);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_100378FE0);
    }
  }
}

uint64_t sub_100253AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 84);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100253BAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = sub_1001A551C(&qword_100375738, &qword_1002EF900);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 84);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100253C7C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100253CB4(uint64_t a1)
{
  sub_100253E80(319, &qword_100379130, &type metadata for Int, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100253E80(319, &qword_100379138, &type metadata for DataTypeInfo, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100253E80(319, &qword_100379140, &type metadata for FTMRATCategories, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100253E80(319, &qword_100375AF8, &type metadata for String, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100253E80(319, &unk_100379148, &type metadata for Double, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_1001C1F1C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100253E80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_100253ED4()
{
  result = qword_1003791B8;
  if (!qword_1003791B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003791B8);
  }

  return result;
}

uint64_t sub_100253F28@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTMNetworkInfoDataStateChanged(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_100253F68(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t sub_100253FE8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t sub_100254064(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10031C7F8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002540C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);

  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  if (*(v0 + 32))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 32))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = v6;
  String.append(_:)(*&v5);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 40;
}

uint64_t sub_1002541C8()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_100375000 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:static NSNotificationName.numberOfSubsChanged object:0];

  v2 = OBJC_IVAR____TtC11FTMInternal23CarrierSegmentViewModel_id;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return v0;
}

uint64_t sub_1002542CC()
{
  sub_1002541C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CarrierSegmentViewModel(uint64_t a1)
{
  result = qword_1003791F0;
  if (!qword_1003791F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100254378(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10025443C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CarrierSegmentViewModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1002544A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11FTMInternal23CarrierSegmentViewModel_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100254530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100254600(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1001A551C(&qword_100375490, &unk_1002EF680);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SURLSessionRunningView(uint64_t a1)
{
  result = qword_1003793B0;
  if (!qword_1003793B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002546FC(uint64_t a1)
{
  sub_1002547B0(319);
  if (v1 <= 0x3F)
  {
    sub_100254844();
    if (v2 <= 0x3F)
    {
      sub_100254894(319);
      if (v3 <= 0x3F)
      {
        sub_1001ADD10(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002547B0(uint64_t a1)
{
  if (!qword_1003793C0)
  {
    type metadata accessor for SURLSessionRunningViewModel(255);
    sub_10025BC68(&qword_10037A450, type metadata accessor for SURLSessionRunningViewModel, &unk_1002F3A20);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_1003793C0);
    }
  }
}

void sub_100254844()
{
  if (!qword_1003793C8)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_1003793C8);
    }
  }
}

void sub_100254894(uint64_t a1)
{
  if (!qword_1003793D0)
  {
    sub_1001A55C8(&qword_1003751D0, &qword_1002EEF50);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_1003793D0);
    }
  }
}

void sub_100254914(void *a1)
{
  v2 = *(sub_1001A551C(&qword_1003772A0, &qword_1002F11B0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1001FC8B4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10025A7E8(v5);
  *a1 = v3;
}

uint64_t sub_1002549C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A551C(&qword_1003755D0, &qword_1002F44C0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SURLSessionRunningView(0);
  sub_1001AC934(v1 + *(v10 + 28), v9, &qword_1003755D0, &qword_1002F44C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100254BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = type metadata accessor for SURLSessionRunningView(0);
  v30 = *(v3 - 8);
  v29 = *(v30 + 64);
  __chkstk_darwin(v3 - 8);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001A551C(&qword_100379408, &qword_1002F4490);
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v32 = sub_1001A551C(&qword_100379410, &qword_1002F4498);
  __chkstk_darwin(v32);
  v9 = &v27 - v8;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v10 = sub_1001A551C(&qword_100379418, &qword_1002F44A0);
  sub_1002550F4(v2, &v7[*(v10 + 44)]);
  LocalizedStringKey.init(stringLiteral:)();
  sub_1001AD0C8(&qword_100379420, &qword_100379408, &qword_1002F4490, &protocol conformance descriptor for VStack<A>);
  View.navigationTitle(_:)();

  sub_1001AC99C(v7, &qword_100379408, &qword_1002F4490);
  v11 = [objc_opt_self() defaultCenter];
  v12 = sub_1001A551C(&qword_100379428, &qword_1002F44A8);
  NSNotificationCenter.publisher(for:object:)();

  v13 = *(v2 + 8);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_10025A074;
  *(v15 + 24) = v14;
  v16 = &v9[*(v12 + 56)];
  *v16 = sub_10025A0B4;
  v16[1] = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v18 = &v9[*(sub_1001A551C(&qword_100379430, &qword_1002F44B0) + 36)];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = sub_10025A0BC;
  *(v18 + 3) = v17;
  v19 = &v9[*(v32 + 36)];
  type metadata accessor for _TaskModifier();
  v20 = v13;
  static TaskPriority.userInitiated.getter();
  v21 = v28;
  sub_10025A0E0(v2, v28);
  v22 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v23 = swift_allocObject();
  sub_10025A144(v21, v23 + v22);
  *v19 = &unk_1002F44C8;
  *(v19 + 1) = v23;
  v30 = LocalizedStringKey.init(stringLiteral:)();
  LODWORD(v29) = v24;
  v25 = *(v2 + 24);
  v34 = *(v2 + 16);
  v35 = v25;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.projectedValue.getter();
  v33 = v2;
  sub_1001A551C(&qword_100375260, &qword_1002EF058);
  sub_10025A27C();
  sub_1001AD0C8(&qword_100375270, &qword_100375260, &qword_1002EF058, &protocol conformance descriptor for Button<A>);
  View.alert<A>(_:isPresented:actions:)();

  return sub_1001AC99C(v9, &qword_100379410, &qword_1002F4498);
}

uint64_t sub_1002550F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v31 = sub_1001A551C(&qword_100379458, &qword_1002F44D8);
  __chkstk_darwin(v31);
  v4 = &v29 - v3;
  v30 = sub_1001A551C(&qword_100379460, &qword_1002F44E0);
  __chkstk_darwin(v30);
  v6 = &v29 - v5;
  v37 = sub_1001A551C(&qword_100379468, &qword_1002F44E8);
  __chkstk_darwin(v37);
  v32 = &v29 - v7;
  v33 = sub_1001A551C(&qword_100379470, &qword_1002F44F0);
  __chkstk_darwin(v33);
  v36 = &v29 - v8;
  v9 = sub_1001A551C(&qword_100379478, &qword_1002F44F8);
  __chkstk_darwin(v9);
  v11 = &v29 - v10;
  v35 = sub_1001A551C(&qword_100379480, &qword_1002F4500);
  __chkstk_darwin(v35);
  v29 = &v29 - v12;
  v34 = sub_1001A551C(&qword_100379488, &qword_1002F4508);
  v13 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v29 - v14;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v17 = v39;
  v18 = v40;
  if (v40 <= 1)
  {
    if (v40)
    {
      if (v40 == 1)
      {
        ProgressView<>.init(label:)();
        v19 = v34;
        (*(v13 + 16))(v11, v15, v34);
        swift_storeEnumTagMultiPayload();
        sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508, &protocol conformance descriptor for ProgressView<A, B>);
        v20 = v29;
        _ConditionalContent<>.init(storage:)();
        sub_1001AC934(v20, v36, &qword_100379480, &qword_1002F4500);
        swift_storeEnumTagMultiPayload();
        sub_10025A4D4();
        sub_10025A584();
        _ConditionalContent<>.init(storage:)();
        sub_1001AC99C(v20, &qword_100379480, &qword_1002F4500);
        return (*(v13 + 8))(v15, v19);
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v40 != 2)
  {
    if (v40 != 3)
    {
LABEL_8:
      __chkstk_darwin(v16);
      *(&v29 - 2) = v17;
      *(&v29 - 1) = v18;
      ProgressView<>.init(label:)();
      v24 = v34;
      (*(v13 + 16))(v11, v15, v34);
      swift_storeEnumTagMultiPayload();
      sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508, &protocol conformance descriptor for ProgressView<A, B>);
      v25 = v29;
      _ConditionalContent<>.init(storage:)();
      sub_1001AC934(v25, v36, &qword_100379480, &qword_1002F4500);
      swift_storeEnumTagMultiPayload();
      sub_10025A4D4();
      sub_10025A584();
      _ConditionalContent<>.init(storage:)();
      sub_10025A4C0(v17, v18);
      sub_1001AC99C(v25, &qword_100379480, &qword_1002F4500);
      return (*(v13 + 8))(v15, v24);
    }

LABEL_7:
    sub_10025A4C0(v39, v40);
    *v4 = static HorizontalAlignment.center.getter();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v22 = sub_1001A551C(&qword_100379490, &qword_1002F4558);
    sub_10025677C(a1, &v4[*(v22 + 44)]);
    sub_1001AC934(v4, v6, &qword_100379458, &qword_1002F44D8);
    swift_storeEnumTagMultiPayload();
    sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1001AD0C8(&qword_1003794A0, &qword_100379458, &qword_1002F44D8, &protocol conformance descriptor for VStack<A>);
    v23 = v32;
    _ConditionalContent<>.init(storage:)();
    sub_1001AC934(v23, v36, &qword_100379468, &qword_1002F44E8);
    swift_storeEnumTagMultiPayload();
    sub_10025A4D4();
    sub_10025A584();
    _ConditionalContent<>.init(storage:)();
    sub_1001AC99C(v23, &qword_100379468, &qword_1002F44E8);
    return sub_1001AC99C(v4, &qword_100379458, &qword_1002F44D8);
  }

  ProgressView<>.init(label:)();
  v26 = v13;
  v27 = v34;
  (*(v13 + 16))(v6, v15, v34);
  swift_storeEnumTagMultiPayload();
  sub_1001AD0C8(&qword_100379498, &qword_100379488, &qword_1002F4508, &protocol conformance descriptor for ProgressView<A, B>);
  sub_1001AD0C8(&qword_1003794A0, &qword_100379458, &qword_1002F44D8, &protocol conformance descriptor for VStack<A>);
  v28 = v32;
  _ConditionalContent<>.init(storage:)();
  sub_1001AC934(v28, v36, &qword_100379468, &qword_1002F44E8);
  swift_storeEnumTagMultiPayload();
  sub_10025A4D4();
  sub_10025A584();
  _ConditionalContent<>.init(storage:)();
  sub_1001AC99C(v28, &qword_100379468, &qword_1002F44E8);
  return (*(v26 + 8))(v15, v27);
}

uint64_t sub_100255A10@<X0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

void sub_100255A70()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 isIdleTimerDisabled];

  if (v2)
  {
    v3 = [v0 sharedApplication];
    [v3 setIdleTimerDisabled:0];
  }
}

uint64_t sub_100255B2C(uint64_t a1, void (*a2)(uint64_t *))
{
  v4 = type metadata accessor for Notification();
  v7[3] = v4;
  v5 = sub_10025A454(v7);
  (*(*(v4 - 8) + 16))(v5, a1, v4);
  a2(v7);
  return sub_1001AC99C(v7, &qword_100375D68, &unk_1002F2370);
}

uint64_t sub_100255BD0(uint64_t a1)
{
  v1[13] = a1;
  type metadata accessor for MainActor();
  v1[14] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[15] = v3;
  v1[16] = v2;

  return _swift_task_switch(sub_100255C68, v3, v2);
}

uint64_t sub_100255C68()
{
  v1 = *(v0[13] + 8);
  sub_100234060();
  if (*(v1 + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration + 81) == 1)
  {
    v2 = swift_task_alloc();
    v0[17] = v2;
    *v2 = v0;
    v2[1] = sub_100255D80;

    return sub_100236D94();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[19] = v4;
    *v4 = v0;
    v4[1] = sub_100255F1C;

    return sub_100234504();
  }
}

uint64_t sub_100255D80()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_100256058;
  }

  else
  {
    v5 = sub_100255EBC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100255EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100255F1C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_1002562A0;
  }

  else
  {
    v5 = sub_10025BE00;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100256058()
{

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10021F6F4(v1, qword_100382528);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "There was an error running the tasks: %@", v4, 0xCu);
    sub_1001AC99C(v5, &unk_100379B60, &unk_1002F3B30);
  }

  v7 = *(v0 + 104);

  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  v9 = *(v7 + 48);
  *(v0 + 40) = *(v7 + 32);
  *(v0 + 56) = v9;
  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  sub_1001A551C(&qword_1003752D8, &qword_1002F44D0);
  State.wrappedValue.setter();
  v11 = *(v7 + 24);
  *(v0 + 80) = *(v7 + 16);
  *(v0 + 88) = v11;
  *(v0 + 168) = 1;

  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.setter();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002562A0()
{

  if (qword_100375038 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10021F6F4(v1, qword_100382528);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "There was an error running the tasks: %@", v4, 0xCu);
    sub_1001AC99C(v5, &unk_100379B60, &unk_1002F3B30);
  }

  v7 = *(v0 + 104);

  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  v9 = *(v7 + 48);
  *(v0 + 40) = *(v7 + 32);
  *(v0 + 56) = v9;
  *(v0 + 64) = v8;
  *(v0 + 72) = v10;
  sub_1001A551C(&qword_1003752D8, &qword_1002F44D0);
  State.wrappedValue.setter();
  v11 = *(v7 + 24);
  *(v0 + 80) = *(v7 + 16);
  *(v0 + 88) = v11;
  *(v0 + 168) = 1;

  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.setter();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1002564E8(uint64_t a1)
{
  v2 = type metadata accessor for SURLSessionRunningView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10025A0E0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10025A144(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return Button<>.init(_:action:)();
}

uint64_t sub_100256634(uint64_t a1)
{
  v2 = type metadata accessor for DismissAction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  LOBYTE(v10) = *(a1 + 16);
  *(&v10 + 1) = v6;
  LOBYTE(v9[0]) = 0;
  sub_1001A551C(&qword_100375298, &qword_1002EF0A0);
  State.wrappedValue.setter();
  v7 = *(a1 + 48);
  v10 = *(a1 + 32);
  v11 = v7;
  v9[0] = 0;
  v9[1] = 0;
  sub_1001A551C(&qword_1003752D8, &qword_1002F44D0);
  State.wrappedValue.setter();
  sub_1002549C8(v5);
  DismissAction.callAsFunction()();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10025677C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for GroupedListStyle();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001A551C(&qword_1003794B8, &qword_1002F4560);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  __chkstk_darwin(v7);
  v10 = &v38 - v9;
  v39 = sub_1001A551C(&qword_1003794C0, &qword_1002F4568);
  v11 = *(v39 - 8);
  __chkstk_darwin(v39);
  v40 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v38 - v14;
  v16 = sub_1001A551C(&qword_1003794C8, &qword_1002F4570);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  *v22 = static HorizontalAlignment.center.getter();
  *(v22 + 1) = 0x4008000000000000;
  v22[16] = 0;
  v23 = sub_1001A551C(&qword_1003794D0, &qword_1002F4578);
  sub_100256C28(a1, &v22[*(v23 + 44)]);
  v24 = static Font.subheadline.getter();
  KeyPath = swift_getKeyPath();
  v26 = &v22[*(sub_1001A551C(&qword_1003794D8, &qword_1002F45B0) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = static Edge.Set.horizontal.getter();
  v28 = &v22[*(v17 + 44)];
  *v28 = v27;
  *(v28 + 8) = 0u;
  *(v28 + 24) = 0u;
  v28[40] = 1;
  v46 = a1;
  sub_1001A551C(&qword_1003794E0, &qword_1002F45B8);
  sub_10025A728();
  List<>.init(content:)();
  GroupedListStyle.init()();
  sub_1001AD0C8(&qword_100379500, &qword_1003794B8, &qword_1002F4560, &protocol conformance descriptor for List<A, B>);
  v29 = v41;
  v30 = v43;
  View.listStyle<A>(_:)();
  (*(v44 + 8))(v6, v30);
  (*(v42 + 8))(v10, v29);
  v38 = v19;
  sub_1001AC934(v22, v19, &qword_1003794C8, &qword_1002F4570);
  v31 = *(v11 + 16);
  v32 = v39;
  v33 = v40;
  v31(v40, v15, v39);
  v34 = v45;
  sub_1001AC934(v19, v45, &qword_1003794C8, &qword_1002F4570);
  v35 = sub_1001A551C(&qword_100379508, &qword_1002F45C8);
  v31((v34 + *(v35 + 48)), v33, v32);
  v36 = *(v11 + 8);
  v36(v15, v32);
  sub_1001AC99C(v22, &qword_1003794C8, &qword_1002F4570);
  v36(v33, v32);
  return sub_1001AC99C(v38, &qword_1003794C8, &qword_1002F4570);
}

uint64_t sub_100256C28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = type metadata accessor for Divider();
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v60 - v6;
  v7 = *(a1 + 8) + OBJC_IVAR____TtC11FTMInternal27SURLSessionRunningViewModel_configuration;
  v8 = *(v7 + 48);
  v61 = a1;
  if (v8 == 1)
  {
    v65 = static VerticalAlignment.center.getter();
    LOBYTE(v137) = 1;
    sub_100257C00(&v158);
    *&v130[16] = v160;
    *&v130[32] = v161;
    *&v130[48] = v162;
    *v130 = v159;
    v129 = v158;
    *&v133[16] = v160;
    *&v133[32] = v161;
    *&v133[48] = v162;
    *v133 = v159;
    v132 = v158;
    sub_1001AC934(&v129, &v145, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v132, &qword_100379598, &qword_1002F4720);
    *&v76[23] = *v130;
    *&v76[39] = *&v130[16];
    *&v76[55] = *&v130[32];
    *&v76[71] = *&v130[48];
    *&v76[7] = v129;
    v9 = v137;
    v10 = static VerticalAlignment.center.getter();
    LOBYTE(v137) = 1;
    sub_100257E28(&v158);
    v88 = v160;
    v89 = v161;
    v90 = v162;
    v86 = v158;
    v87 = v159;
    v100[1] = v160;
    v100[2] = v161;
    v100[3] = v162;
    v100[0] = v159;
    v99 = v158;
    sub_1001AC934(&v86, &v145, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v99, &qword_100379598, &qword_1002F4720);
    *&v75[23] = v87;
    *&v75[39] = v88;
    *&v75[55] = v89;
    *&v75[71] = v90;
    *&v75[7] = v86;
    v11 = v65;
    v121 = v65;
    LOBYTE(v122[0]) = v9;
    *(v122 + 1) = *v76;
    *(&v122[1] + 1) = *&v76[16];
    *&v122[5] = *&v76[79];
    *(&v122[4] + 1) = *&v76[64];
    *(&v122[3] + 1) = *&v76[48];
    *(&v122[2] + 1) = *&v76[32];
    v68 = v65;
    v69 = v122[0];
    v72 = v122[3];
    v73 = v122[4];
    v70 = v122[1];
    v71 = v122[2];
    v123 = v10;
    LOBYTE(v124[0]) = v137;
    *(v124 + 1) = *v75;
    *(&v124[1] + 1) = *&v75[16];
    *&v124[5] = *(&v90 + 1);
    *(&v124[4] + 1) = *&v75[64];
    *(&v124[3] + 1) = *&v75[48];
    *(&v124[2] + 1) = *&v75[32];
    *(&v74[2] + 8) = v124[1];
    *(&v74[1] + 8) = v124[0];
    *(v74 + 8) = v10;
    *(&v74[5] + 8) = v124[4];
    *(&v74[4] + 8) = v124[3];
    *(&v74[3] + 8) = v124[2];
    *(&v136[1] + 1) = *&v75[16];
    *(v136 + 1) = *v75;
    *&v74[0] = *&v122[5];
    *(&v74[6] + 1) = *&v124[5];
    v135 = v10;
    LOBYTE(v136[0]) = v137;
    *&v136[5] = *(&v90 + 1);
    *(&v136[4] + 1) = *&v75[64];
    *(&v136[3] + 1) = *&v75[48];
    *(&v136[2] + 1) = *&v75[32];
    sub_1001AC934(&v121, &v158, &qword_100379558, &unk_1002F46B8);
    sub_1001AC934(&v123, &v158, &qword_100379558, &unk_1002F46B8);
    sub_1001AC99C(&v135, &qword_100379558, &unk_1002F46B8);
    v137 = v11;
    LOBYTE(v138[0]) = v9;
    *(&v138[2] + 1) = *&v76[32];
    *(&v138[3] + 1) = *&v76[48];
    *(&v138[4] + 1) = *&v76[64];
    *&v138[5] = *&v76[79];
    *(v138 + 1) = *v76;
    *(&v138[1] + 1) = *&v76[16];
    sub_1001AC99C(&v137, &qword_100379558, &unk_1002F46B8);
    v155 = v74[4];
    v156 = v74[5];
    v157 = v74[6];
    v151 = v74[0];
    v152 = v74[1];
    v154 = v74[3];
    v153 = v74[2];
    v147 = v70;
    v148 = v71;
    v150 = v73;
    v149 = v72;
    v146 = v69;
    v145 = v68;
    nullsub_1();
    v168 = v155;
    v169 = v156;
    v170 = v157;
    v164 = v151;
    v165 = v152;
    v167 = v154;
    v166 = v153;
    v160 = v147;
    v161 = v148;
    v163 = v150;
    v162 = v149;
    v159 = v146;
    v158 = v145;
  }

  else
  {
    sub_10025BD08(&v158);
  }

  if (*(v7 + 49) == 1)
  {
    v65 = static VerticalAlignment.center.getter();
    LOBYTE(v135) = 1;
    v12 = v61;
    sub_100257FEC(&v145);
    v128[1] = v147;
    v128[2] = v148;
    v128[3] = v149;
    v128[0] = v146;
    v127 = v145;
    *&v130[16] = v147;
    *&v130[32] = v148;
    *&v130[48] = v149;
    *v130 = v146;
    v129 = v145;
    sub_1001AC934(&v127, &v137, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v129, &qword_100379598, &qword_1002F4720);
    *&v85[23] = v128[0];
    *&v85[39] = v128[1];
    *&v85[55] = v128[2];
    *&v85[71] = v128[3];
    *&v85[7] = v127;
    v13 = v135;
    v14 = static VerticalAlignment.center.getter();
    LOBYTE(v135) = 1;
    sub_100258214(&v145);
    *&v133[16] = v147;
    *&v133[32] = v148;
    *&v133[48] = v149;
    *v133 = v146;
    v132 = v145;
    v88 = v147;
    v89 = v148;
    v90 = v149;
    v86 = v145;
    v87 = v146;
    sub_1001AC934(&v132, &v137, &qword_100379598, &qword_1002F4720);
    sub_1001AC99C(&v86, &qword_100379598, &qword_1002F4720);
    *&v84[23] = *v133;
    *&v84[39] = *&v133[16];
    *&v84[55] = *&v133[32];
    *&v84[71] = *&v133[48];
    *&v84[7] = v132;
    v15 = v65;
    v99 = v65;
    LOBYTE(v100[0]) = v13;
    *(v100 + 1) = *v85;
    *(&v100[1] + 1) = *&v85[16];
    *&v100[5] = *&v85[79];
    *(&v100[4] + 1) = *&v85[64];
    *(&v100[3] + 1) = *&v85[48];
    *(&v100[2] + 1) = *&v85[32];
    v77 = v65;
    v78 = v100[0];
    v81 = v100[3];
    v82 = v100[4];
    v79 = v100[1];
    v80 = v100[2];
    v121 = v14;
    LOBYTE(v122[0]) = v135;
    *(v122 + 1) = *v84;
    *(&v122[1] + 1) = *&v84[16];
    *&v122[5] = *&v133[56];
    *(&v122[4] + 1) = *&v84[64];
    *(&v122[3] + 1) = *&v84[48];
    *(&v122[2] + 1) = *&v84[32];
    *(&v83[2] + 8) = v122[1];
    *(&v83[1] + 8) = v122[0];
    *(v83 + 8) = v14;
    *(&v83[5] + 8) = v122[4];
    *(&v83[4] + 8) = v122[3];
    *(&v83[3] + 8) = v122[2];
    *(&v124[1] + 1) = *&v84[16];
    *(v124 + 1) = *v84;
    *&v83[0] = *&v100[5];
    *(&v83[6] + 1) = *&v122[5];
    v123 = v14;
    LOBYTE(v124[0]) = v135;
    *&v124[5] = *&v133[56];
    *(&v124[4] + 1) = *&v84[64];
    *(&v124[3] + 1) = *&v84[48];
    *(&v124[2] + 1) = *&v84[32];
    sub_1001AC934(&v99, &v145, &qword_100379558, &unk_1002F46B8);
    sub_1001AC934(&v121, &v145, &qword_100379558, &unk_1002F46B8);
    sub_1001AC99C(&v123, &qword_100379558, &unk_1002F46B8);
    v135 = v15;
    LOBYTE(v136[0]) = v13;
    *(&v136[2] + 1) = *&v85[32];
    *(&v136[3] + 1) = *&v85[48];
    *(&v136[4] + 1) = *&v85[64];
    *&v136[5] = *&v85[79];
    *(v136 + 1) = *v85;
    *(&v136[1] + 1) = *&v85[16];
    sub_1001AC99C(&v135, &qword_100379558, &unk_1002F46B8);
    v142 = v83[4];
    v143 = v83[5];
    v144 = v83[6];
    v138[5] = v83[0];
    v139 = v83[1];
    v141 = v83[3];
    v140 = v83[2];
    v138[1] = v79;
    v138[2] = v80;
    v138[4] = v82;
    v138[3] = v81;
    v138[0] = v78;
    v137 = v77;
    nullsub_1();
    v155 = v142;
    v156 = v143;
    v157 = v144;
    v151 = v138[5];
    v152 = v139;
    v154 = v141;
    v153 = v140;
    v147 = v138[1];
    v148 = v138[2];
    v150 = v138[4];
    v149 = v138[3];
    v146 = v138[0];
    v145 = v137;
  }

  else
  {
    sub_10025BD08(&v145);
    v12 = v61;
  }

  v16 = v62;
  Divider.init()();
  v65 = static VerticalAlignment.center.getter();
  LOBYTE(v123) = 1;
  sub_1002583D8(v12, &v137);
  v111 = v138[1];
  v112 = v138[2];
  v113 = v138[3];
  v110 = v138[0];
  v109 = v137;
  v114[2] = v138[1];
  v114[3] = v138[2];
  v114[4] = v138[3];
  v114[1] = v138[0];
  v114[0] = v137;
  sub_1001AC934(&v109, &v135, &qword_100379598, &qword_1002F4720);
  sub_1001AC99C(v114, &qword_100379598, &qword_1002F4720);
  *&v108[23] = v110;
  *&v108[39] = v111;
  *&v108[55] = v112;
  *&v108[71] = v113;
  *&v108[7] = v109;
  v64 = v123;
  v60 = static VerticalAlignment.center.getter();
  LOBYTE(v123) = 1;
  sub_100258678(&v137);
  v117 = v138[1];
  v118 = v138[2];
  v119 = v138[3];
  v116 = v138[0];
  v115 = v137;
  v120[2] = v138[1];
  v120[3] = v138[2];
  v120[4] = v138[3];
  v120[1] = v138[0];
  v120[0] = v137;
  sub_1001AC934(&v115, &v135, &qword_100379598, &qword_1002F4720);
  sub_1001AC99C(v120, &qword_100379598, &qword_1002F4720);
  *&v107[23] = v116;
  *&v107[39] = v117;
  *&v107[55] = v118;
  *&v107[71] = v119;
  *&v107[7] = v115;
  LODWORD(v61) = v123;
  v104 = v168;
  v105 = v169;
  v106 = v170;
  v100[5] = v164;
  v101 = v165;
  v103 = v167;
  v102 = v166;
  v100[1] = v160;
  v100[2] = v161;
  v100[4] = v163;
  v100[3] = v162;
  v100[0] = v159;
  v99 = v158;
  v96 = v155;
  v97 = v156;
  v98 = v157;
  v92 = v151;
  v93 = v152;
  v94 = v153;
  v95 = v154;
  v88 = v147;
  v89 = v148;
  v90 = v149;
  v91 = v150;
  v86 = v145;
  v87 = v146;
  v17 = v66;
  v18 = *(v67 + 16);
  v19 = v63;
  v18(v66, v16, v63);
  v20 = v105;
  v122[9] = v104;
  v122[10] = v105;
  v21 = v106;
  v122[11] = v106;
  v22 = v100[5];
  v23 = v101;
  v122[5] = v100[5];
  v122[6] = v101;
  v24 = v103;
  v25 = v102;
  v122[8] = v103;
  v122[7] = v102;
  v26 = v100[1];
  v27 = v100[2];
  v122[1] = v100[1];
  v122[2] = v100[2];
  v28 = v100[4];
  v29 = v100[3];
  v122[4] = v100[4];
  v122[3] = v100[3];
  v30 = v100[0];
  v31 = v99;
  v122[0] = v100[0];
  v121 = v99;
  *(a2 + 10) = v104;
  *(a2 + 11) = v20;
  *(a2 + 6) = v22;
  *(a2 + 7) = v23;
  *(a2 + 8) = v25;
  *(a2 + 9) = v24;
  *(a2 + 2) = v26;
  *(a2 + 3) = v27;
  *(a2 + 4) = v29;
  *(a2 + 5) = v28;
  *a2 = v31;
  *(a2 + 1) = v30;
  v32 = v96;
  v33 = v97;
  v124[9] = v96;
  v124[10] = v97;
  v34 = v98;
  v124[11] = v98;
  v35 = v92;
  v36 = v93;
  v124[5] = v92;
  v124[6] = v93;
  v37 = v94;
  v124[8] = v95;
  v124[7] = v94;
  v38 = v88;
  v39 = v89;
  v124[1] = v88;
  v124[2] = v89;
  v41 = v90;
  v40 = v91;
  v124[4] = v91;
  v124[3] = v90;
  v43 = v86;
  v42 = v87;
  v124[0] = v87;
  v123 = v86;
  *(a2 + 22) = v95;
  *(a2 + 23) = v32;
  *(a2 + 24) = v33;
  *(a2 + 25) = v34;
  *(a2 + 18) = v40;
  *(a2 + 19) = v35;
  *(a2 + 20) = v36;
  *(a2 + 21) = v37;
  *(a2 + 14) = v42;
  *(a2 + 15) = v38;
  *(a2 + 16) = v39;
  *(a2 + 17) = v41;
  *(a2 + 12) = v21;
  *(a2 + 13) = v43;
  v44 = sub_1001A551C(&qword_1003795A0, &qword_1002F4728);
  v18(&a2[v44[16]], v17, v19);
  v45 = &a2[v44[20]];
  v125[0] = v65;
  v125[1] = 0;
  v126[0] = v64;
  *&v126[1] = *v108;
  *&v126[17] = *&v108[16];
  *&v126[65] = *&v108[64];
  *&v126[80] = *&v108[79];
  *&v126[49] = *&v108[48];
  *&v126[33] = *&v108[32];
  v46 = *v126;
  *v45 = v65;
  *(v45 + 1) = v46;
  v47 = *&v126[16];
  v48 = *&v126[32];
  v49 = *&v126[48];
  v50 = *&v126[64];
  *(v45 + 12) = *&v126[80];
  *(v45 + 4) = v49;
  *(v45 + 5) = v50;
  *(v45 + 2) = v47;
  *(v45 + 3) = v48;
  v51 = &a2[v44[24]];
  v52 = v60;
  v127 = v60;
  LOBYTE(v44) = v61;
  LOBYTE(v128[0]) = v61;
  *(v128 + 1) = *v107;
  *(&v128[4] + 1) = *&v107[64];
  *&v128[5] = *&v107[79];
  *(&v128[1] + 1) = *&v107[16];
  *(&v128[3] + 1) = *&v107[48];
  *(&v128[2] + 1) = *&v107[32];
  v53 = v128[0];
  *v51 = v60;
  *(v51 + 1) = v53;
  v54 = v128[1];
  v55 = v128[2];
  v56 = v128[3];
  v57 = v128[4];
  *(v51 + 12) = *&v128[5];
  *(v51 + 4) = v56;
  *(v51 + 5) = v57;
  *(v51 + 2) = v54;
  *(v51 + 3) = v55;
  sub_1001AC934(&v121, &v137, &qword_1003795A8, &qword_1002F4730);
  sub_1001AC934(&v123, &v137, &qword_1003795A8, &qword_1002F4730);
  sub_1001AC934(v125, &v137, &qword_100379558, &unk_1002F46B8);
  sub_1001AC934(&v127, &v137, &qword_100379558, &unk_1002F46B8);
  v58 = *(v67 + 8);
  v58(v16, v19);
  *&v130[33] = *&v107[32];
  *&v130[49] = *&v107[48];
  *v131 = *&v107[64];
  *&v130[1] = *v107;
  v129 = v52;
  v130[0] = v44;
  *&v131[15] = *&v107[79];
  *&v130[17] = *&v107[16];
  sub_1001AC99C(&v129, &qword_100379558, &unk_1002F46B8);
  v132 = v65;
  v133[0] = v64;
  *&v133[33] = *&v108[32];
  *&v133[49] = *&v108[48];
  *v134 = *&v108[64];
  *&v134[15] = *&v108[79];
  *&v133[1] = *v108;
  *&v133[17] = *&v108[16];
  sub_1001AC99C(&v132, &qword_100379558, &unk_1002F46B8);
  v58(v66, v19);
  v136[9] = v96;
  v136[10] = v97;
  v136[11] = v98;
  v136[5] = v92;
  v136[6] = v93;
  v136[8] = v95;
  v136[7] = v94;
  v136[1] = v88;
  v136[2] = v89;
  v136[4] = v91;
  v136[3] = v90;
  v136[0] = v87;
  v135 = v86;
  sub_1001AC99C(&v135, &qword_1003795A8, &qword_1002F4730);
  v142 = v104;
  v143 = v105;
  v144 = v106;
  v138[5] = v100[5];
  v139 = v101;
  v141 = v103;
  v140 = v102;
  v138[1] = v100[1];
  v138[2] = v100[2];
  v138[4] = v100[4];
  v138[3] = v100[3];
  v138[0] = v100[0];
  v137 = v99;
  return sub_1001AC99C(&v137, &qword_1003795A8, &qword_1002F4730);
}