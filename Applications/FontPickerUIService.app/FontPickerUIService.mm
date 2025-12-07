__n128 sub_100001D18(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100001D24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001D44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_100001DF8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Int sub_100001E08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001E7C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100001ED0(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100001F4C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100001FD0@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100002018()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100002058(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_1000020C4(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_100002144@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100002170(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_1000021F8(uint64_t a1)
{
  v2 = sub_1000022FC(&qword_10009F440, type metadata accessor for ComponentKey, &unk_1000773D0);
  v3 = sub_1000022FC(&qword_10009F448, type metadata accessor for ComponentKey, &unk_100077370);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000022FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000023D8@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100002420(uint64_t a1)
{
  v2 = sub_1000022FC(&qword_10009F430, type metadata accessor for Key, &unk_100077534);
  v3 = sub_1000022FC(&qword_10009F438, type metadata accessor for Key, &unk_1000774D4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

__n128 initializeBufferWithCopyOfBuffer for TFComponentClipShape(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TFComponentClipShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TFComponentClipShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100002630(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

double sub_1000026D0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (*(a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_isInPopoverPresentation))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_hasParentViewController) ^ 1;
  }

  v6 = OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics;
  sub_10006864C(v5 & 1, *(a1 + OBJC_IVAR____TtC19FontPickerUIService19TextFormattingState_useReducedMetrics), v42, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v31 = sub_100068C8C(*(a1 + v6), v42, v7);
  v32 = static HorizontalAlignment.center.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  KeyPath = swift_getKeyPath();
  *&v38[23] = v43;
  *&v38[39] = v44;
  *&v38[55] = v45;
  *&v38[71] = v46;
  *&v38[7] = v42;
  type metadata accessor for TextFormattingState(0);
  sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
  v29 = static ObservableObject.environmentStore.getter();
  v28 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v8 = v42;
  v9 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  LOBYTE(v42) = 0;
  v18 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v40[2] = v44;
  v40[3] = v45;
  v41 = v46;
  v40[0] = v42;
  v40[1] = v43;
  sub_10000C824(v40);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v44 = v35;
  v45 = v36;
  v46 = v37;
  v42 = v33;
  v43 = v34;
  sub_10000C824(&v42);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v39[7] = v33;
  *&v39[23] = v34;
  *&v39[39] = v35;
  *(a2 + 8) = v31;
  *(a2 + 33) = *&v38[16];
  *(a2 + 49) = *&v38[32];
  *a2 = v32;
  *(a2 + 16) = 0;
  *(a2 + 65) = *&v38[48];
  *(a2 + 80) = *&v38[63];
  *(a2 + 17) = *v38;
  *(a2 + 96) = KeyPath;
  *(a2 + 104) = 0;
  *(a2 + 112) = v29;
  *(a2 + 120) = a1;
  *(a2 + 128) = v28;
  *(a2 + 136) = v8;
  *(a2 + 144) = v9;
  *(a2 + 152) = v11;
  *(a2 + 160) = v13;
  *(a2 + 168) = v15;
  *(a2 + 176) = v17;
  *(a2 + 184) = 0;
  *(a2 + 192) = v18;
  *(a2 + 200) = v20;
  *(a2 + 208) = v22;
  *(a2 + 216) = v24;
  *(a2 + 224) = v26;
  *(a2 + 232) = 0;
  *(a2 + 233) = *v39;
  *(a2 + 249) = *&v39[16];
  result = *&v39[32];
  *(a2 + 265) = *&v39[32];
  *(a2 + 280) = *(&v35 + 1);
  return result;
}

void *sub_100002B64@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C854();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100002C2C(uint64_t a1, double a2)
{
  LOBYTE(v3) = a1;
  v5 = [v2 components];
  sub_1000132E4(0, &qword_10009F580, UITextFormattingViewControllerComponent_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_196:
    v8 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  v10 = 0;
  while (v8 != v9)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v9 >= *(v7 + 16))
      {
        goto LABEL_180;
      }

      v11 = *(v6 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
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
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
      goto LABEL_196;
    }

    v13 = sub_100005858();

    ++v9;
    v14 = __OFADD__(v10, v13);
    v10 += v13;
    if (v14)
    {
      goto LABEL_181;
    }
  }

  v142 = _swiftEmptyArrayStorage;
  sub_10000DE74(0, 6, 0);
  v15 = v142;
  v17 = v10 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
  v19 = *(v142 + 2);
  v18 = *(v142 + 3);
  v20 = v18 >> 1;
  v21 = v19 + 1;
  if (v18 >> 1 <= v19)
  {
    sub_10000DE74((v18 > 1), v19 + 1, 1);
    v15 = v142;
    v18 = *(v142 + 3);
    v20 = v18 >> 1;
  }

  *(v15 + 2) = v21;
  v22 = &v15[3 * v19];
  *(v22 + 32) = 0;
  *(v22 + 5) = v10 / 4;
  *(v22 + 6) = v17;
  v23 = v19 + 2;
  if (v20 <= v21)
  {
    sub_10000DE74((v18 > 1), v23, 1);
    v15 = v142;
  }

  *(v15 + 2) = v23;
  v24 = &v15[3 * v21];
  *(v24 + 32) = 1;
  *(v24 + 5) = v10 / 5;
  *(v24 + 6) = v10 % 5;
  v26 = *(v15 + 2);
  v25 = *(v15 + 3);
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    sub_10000DE74((v25 > 1), v26 + 1, 1);
  }

  v28 = v142;
  *(v142 + 2) = v27;
  v29 = &v28[3 * v26];
  *(v29 + 32) = 2;
  *(v29 + 40) = v10 / 6;
  *(v29 + 48) = v10 % 6;
  v30 = v10 - (v29 & 0xFFFFFFFFFFFFFFF8);
  v31 = *(v28 + 3);
  v32 = v26 + 2;
  if (v27 >= v31 >> 1)
  {
    sub_10000DE74((v31 > 1), v32, 1);
    v28 = v142;
  }

  *(v28 + 2) = v32;
  v33 = &v28[3 * v27];
  *(v33 + 32) = 3;
  *(v33 + 5) = v10 / 8;
  *(v33 + 6) = v30;
  v35 = *(v28 + 2);
  v34 = *(v28 + 3);
  v36 = v34 >> 1;
  v37 = v35 + 1;
  if (v34 >> 1 <= v35)
  {
    sub_10000DE74((v34 > 1), v35 + 1, 1);
    v28 = v142;
    v34 = *(v142 + 3);
    v36 = v34 >> 1;
  }

  *(v28 + 2) = v37;
  v38 = &v28[3 * v35];
  *(v38 + 32) = 4;
  *(v38 + 5) = v10 / 10;
  *(v38 + 6) = v10 % 10;
  v39 = v10 / 12;
  v40 = v10 % 12;
  v41 = v35 + 2;
  if (v36 <= v37)
  {
    sub_10000DE74((v34 > 1), v35 + 2, 1);
  }

  v42 = v142;
  *(v142 + 2) = v41;
  v43 = &v42[3 * v37];
  *(v43 + 32) = 5;
  *(v43 + 5) = v39;
  *(v43 + 6) = v40;
  if (*(v42 + 2))
  {
    sub_1000130DC(&qword_10009F5D0, &unk_1000778B0);
    v44 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v44 = &_swiftEmptyDictionarySingleton;
  }

  v142 = v44;
  sub_10000C1D4(v42, 1, &v142);
  v6 = v142;
  v45 = *(v142 + 2);
  if (v45)
  {
    v140 = v3;
    v46 = sub_10000C144(v45, 0);
    v39 = sub_100011A94(&v142, (v46 + 4), v45, v6);
    v7 = v142;
    LOBYTE(v3) = v143;

    sub_100013128(v7);
    if (v39 != v45)
    {
      goto LABEL_223;
    }

    LOBYTE(v3) = v140;
  }

  else
  {

    v46 = _swiftEmptyArrayStorage;
  }

  v142 = v46;
  sub_10000DBF8(&v142);
  if (*(v142 + 2))
  {
    v47 = *(v142 + 32);

    v6 = qword_100078038[v47];
    if (v3 <= 1u)
    {
      v49 = 8.0;
      if (!v3)
      {
        if (qword_10009F368 != -1)
        {
          swift_once();
        }

        v49 = 16.0;
        if ((byte_1000A51D8 & 1) == 0)
        {
          if (qword_10009F370 != -1)
          {
            swift_once();
          }

          v49 = 14.0;
          if (byte_1000A51D9 == 1)
          {
            v48 = _UISolariumEnabled() == 0;
            v49 = 8.0;
            v50 = 10.0;
            goto LABEL_37;
          }
        }
      }

      goto LABEL_49;
    }

    if (v3 != 3)
    {
      v49 = 10.0;
      goto LABEL_49;
    }

    if (qword_10009F368 != -1)
    {
      goto LABEL_225;
    }

    while (1)
    {
      v48 = byte_1000A51D8 == 0;
      v49 = 10.0;
      v50 = 16.0;
LABEL_37:
      if (!v48)
      {
        v49 = v50;
      }

LABEL_49:
      a2 = v49 + a2;
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      if (a2 <= -9.22337204e18)
      {
        goto LABEL_198;
      }

      if (a2 >= 9.22337204e18)
      {
        goto LABEL_199;
      }

      sub_100068F00(v3, 9.22337204e18);
      if (v3 > 1u)
      {
        break;
      }

      v53 = 8.0;
      if (!v3)
      {
        if (qword_10009F368 != -1)
        {
          v130 = v51;
          swift_once();
          v51 = v130;
        }

        v53 = 16.0;
        if ((byte_1000A51D8 & 1) == 0)
        {
          if (qword_10009F370 != -1)
          {
            v131 = v51;
            swift_once();
            v51 = v131;
          }

          v53 = 14.0;
          if (byte_1000A51D9 == 1)
          {
            v55 = v51;
            v56 = _UISolariumEnabled();
            v51 = v55;
            v52 = v56 == 0;
            v53 = 8.0;
            v54 = 10.0;
LABEL_57:
            if (!v52)
            {
              v53 = v54;
            }
          }
        }
      }

LABEL_69:
      v57 = v51 + v53;
      if ((*&v57 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_200;
      }

      if (v57 <= -9.22337204e18)
      {
        goto LABEL_201;
      }

      if (v57 >= 9.22337204e18)
      {
        goto LABEL_202;
      }

      v58 = v57;
      if (!v57)
      {
        goto LABEL_203;
      }

      if (a2 == 0x8000000000000000 && v58 == -1)
      {
        goto LABEL_224;
      }

      if (v3 > 1u)
      {
        if (v3 - 2 >= 2)
        {
          v7 = 8;
        }

        else
        {
          v7 = 4;
        }

        goto LABEL_98;
      }

      v59 = a2 / v58;
      if (v3)
      {
        if (v59 >= 12)
        {
          v7 = 12;
        }

        else
        {
          v7 = a2 / v58;
        }
      }

      else
      {
        v60 = sub_100011E94(v6);
        if (v60 <= 2)
        {
          if (v60)
          {
            if (v60 == 1)
            {
              v61 = 5;
            }

            else
            {
              v61 = 6;
            }
          }

          else
          {
            v61 = 4;
          }

          goto LABEL_95;
        }

        if (v60 <= 4)
        {
          if (v60 == 3)
          {
            v61 = 8;
          }

          else
          {
            v61 = 10;
          }

          goto LABEL_95;
        }

        if (v60 == 5)
        {
          v61 = 12;
LABEL_95:
          if (v61 >= v59)
          {
            v7 = v59;
          }

          else
          {
            v7 = v61;
          }

          goto LABEL_98;
        }

        if (v59 >= 6)
        {
          v7 = 6;
        }

        else
        {
          v7 = v59;
        }
      }

LABEL_98:
      v6 = [v133 components];
      v39 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (!(v39 >> 62))
      {
        v3 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3)
        {
          goto LABEL_100;
        }

        goto LABEL_205;
      }

LABEL_204:
      v3 = _CocoaArrayWrapper.endIndex.getter();
      if (v3)
      {
LABEL_100:
        v62 = 0;
        v141 = v39 & 0xC000000000000001;
        v138 = v39 & 0xFFFFFFFFFFFFFF8;
        v63 = _swiftEmptyArrayStorage;
        v136 = v39;
        v132 = v7;
        v139 = v3;
        while (1)
        {
          if (v141)
          {
            v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v62 >= *(v138 + 16))
            {
              goto LABEL_184;
            }

            v65 = *(v39 + 8 * v62 + 32);
          }

          v6 = v65;
          v66 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_182;
          }

          v68 = v63 + 2;
          v67 = *(v63 + 2);
          if (!v67)
          {
            sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
            v89 = swift_allocObject();
            *(v89 + 16) = xmmword_100077630;
            *(v89 + 32) = v6;
            v6 = v6;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v63 = sub_10000BDBC(0, *(v63 + 2) + 1, 1, v63);
            }

            v91 = *(v63 + 2);
            v90 = *(v63 + 3);
            if (v91 >= v90 >> 1)
            {
              v63 = sub_10000BDBC((v90 > 1), v91 + 1, 1, v63);
            }

            *(v63 + 2) = v91 + 1;
            v92 = &v63[2 * v91];
            v92[4] = 0.0;
            *(v92 + 5) = v89;
            goto LABEL_103;
          }

          v69 = &v68[2 * v67];
          v70 = *v69;
          v3 = v69[1];

          v71 = sub_100005858();
          v72 = sub_100004AA8(v70, v3);
          if (__OFADD__(v72, v71))
          {
            goto LABEL_183;
          }

          if (v7 < v72 + v71)
          {
            break;
          }

          v93 = *(v63 + 2);
          v6 = v6;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v3 = v139;
            if (!v93)
            {
              goto LABEL_185;
            }
          }

          else
          {
            v63 = sub_10000E4EC(v63);
            v3 = v139;
            if (!v93)
            {
              goto LABEL_185;
            }
          }

          if (v93 > *(v63 + 2))
          {
            goto LABEL_186;
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*&v63[2 * v93 + 3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v63[2 * v93 + 3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

LABEL_103:
          ++v62;
          if (v66 == v3)
          {
            goto LABEL_206;
          }
        }

        v73 = v72;
        if (!(v3 >> 62))
        {
          v74 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v74)
          {
            goto LABEL_114;
          }

LABEL_149:

          v105 = *(v63 + 2);
          sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_100077630;
          *(v106 + 32) = v6;
          v6 = v6;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v63 = sub_10000BDBC(0, *(v63 + 2) + 1, 1, v63);
          }

          v3 = v139;
          v108 = *(v63 + 2);
          v107 = *(v63 + 3);
          if (v108 >= v107 >> 1)
          {
            v63 = sub_10000BDBC((v107 > 1), v108 + 1, 1, v63);
          }

          *(v63 + 2) = v108 + 1;
          v64 = &v63[2 * v108];
          *(v64 + 4) = v105;
          *(v64 + 5) = v106;
LABEL_102:
          v39 = v136;
          goto LABEL_103;
        }

        v74 = _CocoaArrayWrapper.endIndex.getter();
        if (!v74)
        {
          goto LABEL_149;
        }

LABEL_114:
        v75 = v74 - 1;
        if (__OFSUB__(v74, 1))
        {
          goto LABEL_187;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {

          v76 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            goto LABEL_188;
          }

          if (v75 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_190;
          }

          v76 = *(v3 + 8 * v75 + 32);
        }

        v137 = v76;
        v77 = sub_100005858();
        v14 = __OFSUB__(v73, v77);
        v78 = v73 - v77;
        if (v14)
        {
          goto LABEL_189;
        }

        if (sub_100005858() >= v78)
        {
          goto LABEL_148;
        }

        v134 = [v6 componentKey];
        v7 = [v133 components];
        v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        v80 = v79;
        if (v79 >> 62)
        {
          v81 = _CocoaArrayWrapper.endIndex.getter();
          if (!v81)
          {
LABEL_226:

            __break(1u);
            goto LABEL_227;
          }
        }

        else
        {
          v81 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v81)
          {
            goto LABEL_226;
          }
        }

        v82 = v81 - 1;
        if (__OFSUB__(v81, 1))
        {
          goto LABEL_191;
        }

        if ((v80 & 0xC000000000000001) != 0)
        {
          v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v82 & 0x8000000000000000) != 0)
          {
            goto LABEL_192;
          }

          if (v82 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_193;
          }

          v83 = *(v80 + 8 * v82 + 32);
        }

        v84 = v83;

        v85 = [v84 componentKey];

        v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v7 = v87;
        if (v86 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v88)
        {

          goto LABEL_143;
        }

        v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v7 = v132;
        if ((v94 & 1) == 0)
        {
LABEL_148:

          goto LABEL_149;
        }

LABEL_143:
        if (!*v68)
        {
          goto LABEL_194;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v95 = *(v63 + 2);
          if (!v95)
          {
            goto LABEL_195;
          }
        }

        else
        {
          v63 = sub_10000E4EC(v63);
          v95 = *(v63 + 2);
          if (!v95)
          {
            goto LABEL_195;
          }
        }

        *(v63 + 2) = v95 - 1;

        v96 = *(v63 + 2);
        v97 = sub_100011EB8(1, v3);
        v99 = v98;
        v101 = v100;
        v7 = v102;

        if ((v7 & 1) == 0)
        {
LABEL_147:
          sub_10000DC78(v97, v99, v101, v7, &qword_10009F580, UITextFormattingViewControllerComponent_ptr);
          v104 = v103;
          goto LABEL_159;
        }

        v135 = v96;
        LOBYTE(v3) = type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v109 = swift_dynamicCastClass();
        if (!v109)
        {
          swift_unknownObjectRelease();
          v109 = _swiftEmptyArrayStorage;
        }

        v39 = *(v109 + 2);

        if (__OFSUB__(v7 >> 1, v101))
        {
          goto LABEL_222;
        }

        if (v39 != (v7 >> 1) - v101)
        {
          swift_unknownObjectRelease();
          v96 = v135;
          goto LABEL_147;
        }

        v104 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        v96 = v135;
        if (!v104)
        {
          v104 = _swiftEmptyArrayStorage;
LABEL_159:
          swift_unknownObjectRelease();
        }

        v111 = *(v63 + 2);
        v110 = *(v63 + 3);
        v112 = v111 + 1;
        if (v111 >= v110 >> 1)
        {
          v63 = sub_10000BDBC((v110 > 1), v111 + 1, 1, v63);
        }

        *(v63 + 2) = v112;
        v113 = &v63[2 * v111];
        *(v113 + 4) = v96;
        *(v113 + 5) = v104;
        sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_100077620;
        *(v114 + 32) = v137;
        *(v114 + 40) = v6;
        v115 = *(v63 + 2);
        v116 = *(v63 + 3);
        v117 = v137;
        v118 = v6;
        if (v115 >= v116 >> 1)
        {
          v6 = v118;
          v63 = sub_10000BDBC((v116 > 1), v115 + 1, 1, v63);
          v118 = v6;
        }

        v3 = v139;

        *(v63 + 2) = v115 + 1;
        v119 = &v63[2 * v115];
        *(v119 + 4) = v112;
        *(v119 + 5) = v114;
        v7 = v132;
        goto LABEL_102;
      }

LABEL_205:
      v63 = _swiftEmptyArrayStorage;
LABEL_206:

      v120 = 0;
      v39 = *(v63 + 2);
      v7 = (v63 + 5);
      v6 = _swiftEmptyArrayStorage;
LABEL_207:
      v121 = (v7 + 16 * v120);
      while (1)
      {
        if (v39 == v120)
        {

          return v6;
        }

        if (v120 >= *(v63 + 2))
        {
          break;
        }

        v123 = *(v121 - 1);
        v122 = *v121;
        if (*v121 >> 62)
        {
          v124 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v124 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v120;
        v121 += 2;
        if (v124)
        {

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142 = v6;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10000DE54(0, *(v6 + 16) + 1, 1);
            v6 = v142;
          }

          v3 = *(v6 + 16);
          v126 = *(v6 + 24);
          if (v3 >= v126 >> 1)
          {
            sub_10000DE54((v126 > 1), v3 + 1, 1);
            v6 = v142;
          }

          *(v6 + 16) = v3 + 1;
          v127 = (v6 + 16 * v3);
          *(v127 + 4) = v123;
          *(v127 + 5) = v122;
          goto LABEL_207;
        }
      }

      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      swift_once();
    }

    if (v3 != 3)
    {
      v53 = 10.0;
      goto LABEL_69;
    }

    if (qword_10009F368 != -1)
    {
      v129 = v51;
      swift_once();
      v51 = v129;
    }

    v52 = byte_1000A51D8 == 0;
    v53 = 10.0;
    v54 = 16.0;
    goto LABEL_57;
  }

LABEL_227:

  __break(1u);
  swift_unexpectedError();
  __break(1u);

  __break(1u);
  return result;
}

double *sub_100003D98(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

LABEL_26:
  v25 = a1 & 0xFFFFFFFFFFFFFF8;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v3 = 0;
  v23 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v3; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *(v25 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * i + 32);
      }

      v6 = v5;
      v3 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v7 = [v5 components];
      sub_1000132E4(0, &qword_10009F580, UITextFormattingViewControllerComponent_ptr);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v9 = v8 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v9)
      {
        v10 = [v6 identifier];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        LOBYTE(v10) = sub_10000F868(&v24, v11, v13);

        if (v10)
        {
          break;
        }
      }

      if (v3 == v2)
      {
        return v23;
      }
    }

    v14 = [v6 identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_10000BA64(0, *(v23 + 2) + 1, 1, v23);
    }

    v20 = *(v23 + 2);
    v19 = *(v23 + 3);
    if (v20 >= v19 >> 1)
    {
      v23 = sub_10000BA64((v19 > 1), v20 + 1, 1, v23);
    }

    *(v23 + 2) = v20 + 1;
    v21 = &v23[2 * v20];
    *(v21 + 4) = v15;
    *(v21 + 5) = v17;
  }

  while (v3 != v2);
  return v23;
}

BOOL sub_100004028(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v4 = *(a2 + 8);
  v5 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  if ((sub_10000B514(*a1, *a2) & 1) == 0 || (sub_10000B758(v2, v4) & 1) == 0)
  {
    return 0;
  }

  v6 = static EdgeInsets.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && ((v3 ^ v5) & 1) == 0)
  {
    return v11 == v9 && v10 == v8;
  }

  return result;
}

uint64_t sub_10000411C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(a2 + 48);
  if (*(*a2 + 16) && (v7 = sub_10000C53C(*a1, a1[1]), (v8 & 1) != 0))
  {
    v9 = *(*(v5 + 56) + 8 * v7);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v10 = sub_10000A468(a2[9], *(a2 + 80));
  v12 = sub_100068C8C(v6 & 1, v10, v11);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = v12;
  *(a3 + 16) = 0;
  sub_1000130DC(&qword_10009F710, &qword_100077BE0);
  v18 = v9;
  v13 = swift_allocObject();
  v14 = *(a2 + 3);
  *(v13 + 48) = *(a2 + 2);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(a2 + 4);
  *(v13 + 96) = *(a2 + 80);
  v15 = *(a2 + 1);
  *(v13 + 16) = *a2;
  *(v13 + 32) = v15;
  sub_100013A6C(a2, v17);
  sub_1000130DC(&qword_10009F718, &qword_100077BE8);
  sub_1000130DC(&qword_10009F720, &qword_100077BF0);
  sub_100015A00(&qword_10009F728, &qword_10009F718, &qword_100077BE8, &protocol conformance descriptor for [A]);
  sub_100013AF8();
  sub_100013C3C();
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1000042DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000130DC(&qword_10009F750, &qword_100077C00);
  __chkstk_darwin(v6 - 8);
  v8 = &v74 - v7;
  v9 = sub_1000130DC(&qword_10009F740, &qword_100077BF8);
  __chkstk_darwin(v9);
  v11 = &v74 - v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a2 + 72);
  v15 = *(a2 + 80);
  v16 = sub_10000A468(v14, *(a2 + 80));
  if (v16 > 1)
  {
    if (v16 != 3)
    {
      v20 = 10.0;
      goto LABEL_18;
    }

    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v17 = byte_1000A51D8 == 0;
    v18 = 10.0;
    v19 = 16.0;
    goto LABEL_6;
  }

  v20 = 8.0;
  if (!v16)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v20 = 16.0;
    if ((byte_1000A51D8 & 1) == 0)
    {
      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      v20 = 14.0;
      if (byte_1000A51D9 == 1)
      {
        v17 = _UISolariumEnabled() == 0;
        v18 = 8.0;
        v19 = 10.0;
LABEL_6:
        if (v17)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }
      }
    }
  }

LABEL_18:
  v21 = *(a2 + 56);
  v22 = sub_100004AA8(v12, v13);
  if (__OFSUB__(v22, 1))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v77 = v22 - 1;
  v82 = v8;
  v76 = sub_100004AA8(v12, v13);
  v84 = a3;
  v83 = v11;
  v81 = v9;
  v80 = a2;
  v79 = v14;
  v78 = v15;
  if (v13 >> 62)
  {
LABEL_57:
    v86 = v13 & 0xFFFFFFFFFFFFFF8;
    v24 = _CocoaArrayWrapper.endIndex.getter();
    v23 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_21;
  }

  v86 = v13 & 0xFFFFFFFFFFFFFF8;
  v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v23;
LABEL_21:
  v25 = 0;
  v75 = v24;
  v85 = v24 == 1;
  v26 = v13 & 0xC000000000000001;
  while (1)
  {
    if (v23 == v25)
    {
      v85 = 0;
      goto LABEL_36;
    }

    if (v26)
    {
      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v86 + 16))
      {
        goto LABEL_55;
      }

      v27 = *(v13 + 8 * v25 + 32);
    }

    v28 = v27;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v29 = v13;
    v30 = [v27 componentKey];
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
    if (v31 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v33 == v34)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v25;
    v13 = v29;
    if (v36)
    {
      goto LABEL_36;
    }
  }

  v13 = v29;
LABEL_36:
  v37 = sub_10000A468(v79, v78);
  v38 = v82;
  v39 = v75;
  if (v37 > 1)
  {
    if (v37 != 3)
    {
      v43 = 10.0;
      goto LABEL_53;
    }

    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v40 = byte_1000A51D8 == 0;
    v41 = 10.0;
    v42 = 16.0;
    goto LABEL_41;
  }

  v43 = 8.0;
  if (!v37)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v43 = 16.0;
    if ((byte_1000A51D8 & 1) == 0)
    {
      if (qword_10009F370 != -1)
      {
        swift_once();
      }

      v43 = 14.0;
      if (byte_1000A51D9 == 1)
      {
        v40 = _UISolariumEnabled() == 0;
        v41 = 8.0;
        v42 = 10.0;
LABEL_41:
        if (v40)
        {
          v43 = v41;
        }

        else
        {
          v43 = v42;
        }
      }
    }
  }

LABEL_53:
  v44 = !v85;
  v45 = (v21 - v20 * v77) / v76;
  *v38 = static VerticalAlignment.center.getter();
  *(v38 + 8) = v43;
  *(v38 + 16) = 0;
  v86 = *(sub_1000130DC(&qword_10009F760, &qword_100077C08) + 44);
  v88 = sub_100011BF8(v13);
  swift_getKeyPath();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = v80;
  v48 = *(v80 + 48);
  *(v46 + 56) = *(v80 + 32);
  *(v46 + 72) = v48;
  *(v46 + 88) = *(v47 + 64);
  v49 = *(v47 + 16);
  *(v46 + 24) = *v47;
  *(v46 + 104) = *(v47 + 80);
  *(v46 + 40) = v49;
  *(v46 + 105) = v44;
  *(v46 + 106) = v39 == 1;
  sub_100013A6C(v47, v87);
  sub_1000130DC(&qword_10009F768, &qword_100077C30);
  sub_1000130DC(&qword_10009F770, &qword_100077C38);
  sub_100015A00(&qword_10009F778, &qword_10009F768, &qword_100077C30, &protocol conformance descriptor for [A]);
  sub_10001454C(&qword_10009F780, &qword_10009F770, &qword_100077C38, sub_100013CF0);
  ForEach<>.init(_:id:content:)();
  v50 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v83;
  sub_10001471C(v38, v83, &qword_10009F750, &qword_100077C00);
  v60 = v59 + *(v81 + 36);
  *v60 = v50;
  *(v60 + 8) = v52;
  *(v60 + 16) = v54;
  *(v60 + 24) = v56;
  *(v60 + 32) = v58;
  *(v60 + 40) = 0;
  v61 = static Edge.Set.trailing.getter();
  EdgeInsets.init(_all:)();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v59;
  v71 = v84;
  sub_10001471C(v70, v84, &qword_10009F740, &qword_100077BF8);
  result = sub_1000130DC(&qword_10009F720, &qword_100077BF0);
  v73 = v71 + *(result + 36);
  *v73 = v61;
  *(v73 + 8) = v63;
  *(v73 + 16) = v65;
  *(v73 + 24) = v67;
  *(v73 + 32) = v69;
  *(v73 + 40) = 0;
  return result;
}

uint64_t sub_100004AA8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = 0;
  while (v4 != v5)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v9 = sub_100005858();

    ++v5;
    v10 = __OFADD__(v6, v9);
    v6 += v9;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  return v6;
}

double sub_100004B7C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *(a2 + 72);
  v12 = *(a2 + 80);
  v13 = *(a1 + 8);
  v14 = sub_10000A468(v11, v12);
  v15 = sub_100004E54(v14, a6);
  v17 = v16;
  v18 = 0.0;
  if ((a3 & 1) == 0)
  {
    v18 = *(a2 + 24) + *(a2 + 40);
  }

  if (v17 < 1)
  {

    sub_100014270(&v44);
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    v19 = EnvironmentObject.init()();
    v31 = v20;
    v32 = v19;
    KeyPath = swift_getKeyPath();
    v29 = swift_getKeyPath();
    v21 = v13;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v22 = [v21 componentKey];

    *&v33 = v32;
    *(&v33 + 1) = v31;
    *&v34 = KeyPath;
    BYTE8(v34) = 0;
    BYTE9(v34) = 0;
    *&v35 = v29;
    BYTE8(v35) = 0;
    *&v36 = v21;
    *(&v39 + 1) = v22;
    *&v40 = swift_getKeyPath();
    *(&v40 + 1) = v17;
    LOBYTE(v41) = 0;
    *(&v41 + 1) = swift_getKeyPath();
    *&v42 = v15 + v18;
    *(&v42 + 1) = swift_getKeyPath();
    *&v43 = a6;
    *(&v43 + 1) = swift_getKeyPath();
    nullsub_1();
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v55 = a4 & 1;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    v51 = v40;
    v44 = v33;
    v45 = v34;
    v46 = v35;
    v47 = v36;
  }

  v23 = v53;
  *(a5 + 128) = v52;
  *(a5 + 144) = v23;
  *(a5 + 160) = v54;
  *(a5 + 176) = v55;
  v24 = v49;
  *(a5 + 64) = v48;
  *(a5 + 80) = v24;
  v25 = v51;
  *(a5 + 96) = v50;
  *(a5 + 112) = v25;
  v26 = v45;
  *a5 = v44;
  *(a5 + 16) = v26;
  result = *&v46;
  v28 = v47;
  *(a5 + 32) = v46;
  *(a5 + 48) = v28;
  return result;
}

double sub_100004E54(uint64_t a1, double a2)
{
  v2 = a1;
  v4 = sub_100005858();
  if (v2 <= 1u)
  {
    v8 = 8.0;
    if (!v2)
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      v8 = 16.0;
      if ((byte_1000A51D8 & 1) == 0)
      {
        if (qword_10009F370 != -1)
        {
          swift_once();
        }

        v8 = 14.0;
        if (byte_1000A51D9 == 1)
        {
          v5 = _UISolariumEnabled() == 0;
          v6 = 8.0;
          v7 = 10.0;
          goto LABEL_5;
        }
      }
    }

    goto LABEL_17;
  }

  if (v2 != 3)
  {
    v8 = 10.0;
    goto LABEL_17;
  }

  if (qword_10009F368 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = byte_1000A51D8 == 0;
    v6 = 10.0;
    v7 = 16.0;
LABEL_5:
    v8 = v5 ? v6 : v7;
LABEL_17:
    v9 = sub_100005858();
    if (!__OFSUB__(v9, 1))
    {
      break;
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v10 = v4 * a2 + v8 * (v9 - 1);
  sub_100013130(v2, v10);
  return v10;
}

void *sub_100004FD4@<X0>(uint64_t a1@<X8>)
{
  sub_100014390();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

double sub_100005080@<D0>(double *a1@<X8>)
{
  sub_10001433C();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

void *sub_10000511C@<X0>(_BYTE *a1@<X8>)
{
  sub_100014294();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1000051B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000130DC(&qword_10009F6E8, &unk_100077BA8);
  __chkstk_darwin(v3);
  v6 = &KeyPath - v5;
  v7 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v20 = v7;
  v21 = *(v1 + 64);
  v22 = *(v1 + 80);
  v9 = *v1;
  v8 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v8;
  v9.n128_u64[0] = *(&v20 + 1);
  if (*(&v20 + 1) <= 0.0)
  {
    v14 = *(v4 + 56);

    return v14(a1, 1, 1, v3, v9);
  }

  else
  {
    v23 = *(&v19[0] + 1);
    v18 = *(&v19[0] + 1);
    v16 = v4;
    KeyPath = swift_getKeyPath();
    v10 = swift_allocObject();
    v11 = *(v1 + 48);
    *(v10 + 48) = *(v1 + 32);
    *(v10 + 64) = v11;
    *(v10 + 80) = *(v1 + 64);
    *(v10 + 96) = *(v1 + 80);
    v12 = *(v1 + 16);
    *(v10 + 16) = *v1;
    *(v10 + 32) = v12;
    sub_100015AC0(&v23, v17, &qword_10009F6F0, &qword_100077BD0);
    sub_100013A6C(v19, v17);
    sub_1000130DC(&qword_10009F6F0, &qword_100077BD0);
    sub_1000130DC(&qword_10009F6F8, &qword_100077BD8);
    sub_100015A00(&qword_10009F700, &qword_10009F6F0, &qword_100077BD0, &protocol conformance descriptor for [A]);
    sub_100015A00(&qword_10009F708, &qword_10009F6F8, &qword_100077BD8, &protocol conformance descriptor for VStack<A>);
    ForEach<>.init(_:id:content:)();
    (*(v16 + 32))(a1, v6, v3);
    return (*(v16 + 56))(a1, 0, 1, v3);
  }
}

double sub_1000054A0(unsigned __int8 a1, uint64_t a2, double a3)
{
  if (qword_10009F370 != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (byte_1000A51D9 == 1)
  {
    v4 = _UISolariumEnabled();
    v5 = 35.0;
    if (!v4)
    {
      v5 = 30.0;
    }

    return v5 * a2;
  }

  if (a1 <= 1u)
  {
    if (a1)
    {
      *&v18 = 44.0;
    }

    else
    {
      if (qword_10009F368 != -1)
      {
        swift_once();
      }

      if (byte_1000A51D8)
      {
        *&v18 = 50.0;
      }

      else
      {
        if (byte_1000A51D9 == 1)
        {
          v6 = _UISolariumEnabled() == 0;
          v5 = 22.0;
          v7 = 24.0;
LABEL_12:
          if (!v6)
          {
            v5 = v7;
          }

          return v5 * a2;
        }

        *&v18 = 45.0;
      }
    }

    v5 = *&v18;
    return v5 * a2;
  }

  if (a1 == 3)
  {
    if (qword_10009F368 != -1)
    {
      swift_once();
    }

    v6 = byte_1000A51D8 == 0;
    v5 = 44.0;
    v7 = 50.0;
    goto LABEL_12;
  }

  v8 = [objc_opt_self() mainScreen];
  [v8 _referenceBounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v21.origin.x = v10;
  v21.origin.y = v12;
  v21.size.width = v14;
  v21.size.height = v16;
  v17 = CGRectGetHeight(v21) > 667.0;
  v5 = 50.0;
  if (!v17)
  {
    v5 = 45.0;
  }

  return v5 * a2;
}

__n128 sub_100005758(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000577C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000057C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100005858()
{
  if ([v0 preferredSize])
  {
    v1 = [v0 preferredSize];
  }

  else
  {
    v1 = sub_1000059FC();
  }

  v2 = v1;
  sub_1000130DC(&qword_10009F608, &qword_1000778E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100077640;

  *(inited + 32) = 1;
  *(inited + 40) = v2;
  v4 = sub_100011DE8(inited);
  swift_setDeallocating();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_10000C0C0(*(v4 + 16), 0);
    v7 = sub_100011994(&v12, v6 + 4, v5, v4);
    v8 = v12;

    sub_100013128(v8);
    if (v7 != v5)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v12 = v6;
  sub_10000DAC0(&v12);
  v9 = *(v12 + 2);
  if (v9)
  {
    v10 = v12[v9 + 3];

    return *&v10;
  }

LABEL_11:

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1000059FC()
{
  v1 = [v0 componentKey];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return 5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {

    return 5;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    return 4;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {

    return 4;
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
  {
    goto LABEL_18;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_20;
  }

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;
  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
    goto LABEL_23;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
    goto LABEL_25;
  }

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  if (v25 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v27 == v28)
  {
    goto LABEL_18;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
LABEL_20:

    return 3;
  }

  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;
  if (v30 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v32 == v33)
  {
    goto LABEL_31;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v34)
  {
    goto LABEL_33;
  }

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;
  if (v35 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v37 == v38)
  {
LABEL_31:

    return 1;
  }

  v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v39)
  {
    goto LABEL_33;
  }

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;
  if (v40 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v42 == v43)
  {
    goto LABEL_23;
  }

  v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v44)
  {
    goto LABEL_25;
  }

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v46;
  if (v45 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v47 == v48)
  {
    goto LABEL_31;
  }

  v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v49)
  {
    goto LABEL_33;
  }

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;
  if (v50 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v52 == v53)
  {
LABEL_18:

    return 3;
  }

  v54 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v54)
  {
    goto LABEL_20;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
    goto LABEL_23;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    goto LABEL_25;
  }

  v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v61;
  if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
  {
    goto LABEL_31;
  }

  v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v64)
  {
    goto LABEL_33;
  }

  v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v67 = v66;
  if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
  {
    goto LABEL_23;
  }

  v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v69)
  {
    goto LABEL_25;
  }

  v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;
  if (v70 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v72 == v73)
  {
    goto LABEL_31;
  }

  v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v74)
  {
LABEL_33:

    return 1;
  }

  v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v77 = v76;
  if (v75 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v77 == v78)
  {
    goto LABEL_23;
  }

  v79 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v79)
  {
LABEL_25:

    return 2;
  }

  v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v82 = v81;
  if (v80 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v82 == v83)
  {
    goto LABEL_31;
  }

  v84 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v84)
  {
    goto LABEL_33;
  }

  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v87 = v86;
  if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
  {
LABEL_23:

    return 2;
  }

  v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v89)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1000061A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000130DC(&qword_10009F840, &qword_100077E58);
  __chkstk_darwin(v3 - 8);
  v5 = v13 - v4;
  sub_1000063A0((v13 - v4));
  if (*v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v6 = v13[1];
    v7 = [*(v1 + 48) componentKey];
    v8 = sub_100009D7C(v7, v6);

    KeyPath = swift_getKeyPath();
    v10 = swift_allocObject();
    *(v10 + 16) = v8 & 1;
    sub_10001471C(v5, a1, &qword_10009F840, &qword_100077E58);
    result = sub_1000130DC(&qword_10009F848, &qword_100077ED8);
    v12 = (a1 + *(result + 36));
    *v12 = KeyPath;
    v12[1] = sub_100014704;
    v12[2] = v10;
  }

  else
  {
    type metadata accessor for TextFormattingState(0);
    sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000063A0@<X0>(void *a1@<X8>)
{
  v288 = a1;
  v268 = sub_1000130DC(&qword_10009F850, &qword_100077EE0);
  __chkstk_darwin(v268);
  v269 = (&v267 - v2);
  v276 = sub_1000130DC(&qword_10009F858, &qword_100077EE8);
  __chkstk_darwin(v276);
  v270 = &v267 - v3;
  v272 = type metadata accessor for TFTextAlignmentControl(0);
  __chkstk_darwin(v272);
  v271 = &v267 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_1000130DC(&qword_10009F860, &qword_100077EF0);
  __chkstk_darwin(v273);
  v275 = &v267 - v5;
  v6 = sub_1000130DC(&qword_10009F868, &qword_100077EF8);
  __chkstk_darwin(v6);
  v8 = (&v267 - v7);
  v274 = sub_1000130DC(&qword_10009F870, &qword_100077F00);
  __chkstk_darwin(v274);
  v10 = &v267 - v9;
  v279 = sub_1000130DC(&qword_10009F878, &qword_100077F08);
  __chkstk_darwin(v279);
  v277 = &v267 - v11;
  v284 = sub_1000130DC(&qword_10009F880, &qword_100077F10);
  __chkstk_darwin(v284);
  v287 = (&v267 - v12);
  v281 = sub_1000130DC(&qword_10009F888, &qword_100077F18);
  __chkstk_darwin(v281);
  v283 = &v267 - v13;
  v278 = sub_1000130DC(&qword_10009F890, &qword_100077F20);
  __chkstk_darwin(v278);
  v15 = (&v267 - v14);
  v282 = sub_1000130DC(&qword_10009F898, &qword_100077F28);
  __chkstk_darwin(v282);
  v280 = &v267 - v16;
  v286 = sub_1000130DC(&qword_10009F8A0, &qword_100077F30);
  __chkstk_darwin(v286);
  v285 = &v267 - v17;
  v18 = *(v1 + 48);
  v19 = [v18 componentKey];
  v20 = UITextFormattingViewControllerComponentKey._parentComponentKey.getter();

  if (!v20)
  {
    v20 = [v18 componentKey];
  }

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;
  if (v21 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v23 != v24)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {

      goto LABEL_8;
    }

    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    if (v37 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v39 == v40)
    {

LABEL_18:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v42 = EnvironmentObject.init()();
      v277 = v42;
      v44 = v43;
      KeyPath = swift_getKeyPath();
      v46 = swift_getKeyPath();
      v47 = swift_getKeyPath();
      v309 = 0;
      v308 = 0;
      v307 = 0;
      LOBYTE(v310[0]) = 1;
      v300.n128_u64[0] = v42;
      v300.n128_u64[1] = v44;
      v301.n128_u64[0] = KeyPath;
      v276 = KeyPath;
      v301.n128_u16[4] = 0;
      v302.n128_u64[0] = v46;
      v302.n128_u8[8] = 0;
      *&v303[0] = v47;
      BYTE8(v303[0]) = 0;
      BYTE8(v304[1]) = 1;
      sub_100014AE8();
      sub_100014B3C();

      _ConditionalContent<>.init(storage:)();
      v297[1] = v292[1];
      *v298 = v293[0];
      *&v298[9] = *(v293 + 9);
      v294 = v289;
      v295 = v290;
      v296 = v291;
      v297[0] = v292[0];
      v312.n128_u8[0] = 0;
      v299 = 0;
      sub_1000130DC(&qword_10009F900, &qword_100077F58);
      sub_1000130DC(&qword_10009F920, &qword_100077F60);
      sub_100014A5C();
      sub_100014B90();
      _ConditionalContent<>.init(storage:)();
      v48 = v304[0];
      v15[4] = v303[1];
      v15[5] = v48;
      *(v15 + 90) = *(v304 + 10);
      v49 = v301;
      *v15 = v300;
      v15[1] = v49;
      v50 = v303[0];
      v15[2] = v302;
      v15[3] = v50;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
      sub_1000149D0();
      sub_100014CC4();
      v51 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v51, v283, &qword_10009F898, &qword_100077F28);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v52 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v51, &qword_10009F898, &qword_100077F28);
      sub_100015AC0(v52, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v33 = v52;
      v34 = &qword_10009F8A0;
      v35 = &qword_100077F30;
      return sub_1000156F8(v33, v34, v35);
    }

    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v41)
    {

      goto LABEL_18;
    }

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
    if (v53 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v55 == v56)
    {

LABEL_24:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v58 = EnvironmentObject.init()();
      v60 = v59;
      v61 = swift_getKeyPath();
      v62 = swift_getKeyPath();
      LOBYTE(v310[0]) = 0;
      v309 = 0;
      v308 = 0;
      v300.n128_u64[0] = v58;
      v300.n128_u64[1] = v60;
      v277 = v58;
      v301.n128_u64[0] = v61;
      v301.n128_u16[4] = 0;
      v302.n128_u64[0] = v62;
      v302.n128_u8[8] = 0;
      BYTE1(v304[0]) = 0;
      sub_100014C1C();
      sub_100014C70();

      _ConditionalContent<>.init(storage:)();
      v296 = v291;
      v297[0] = v292[0];
      v297[1] = v292[1];
      *v298 = v293[0];
      v294 = v289;
      v295 = v290;
      v312.n128_u8[0] = 1;
      v299 = 1;
      sub_1000130DC(&qword_10009F900, &qword_100077F58);
      sub_1000130DC(&qword_10009F920, &qword_100077F60);
      sub_100014A5C();
      sub_100014B90();
      _ConditionalContent<>.init(storage:)();
      v63 = v304[0];
      v15[4] = v303[1];
      v15[5] = v63;
      *(v15 + 90) = *(v304 + 10);
      v64 = v301;
      *v15 = v300;
      v15[1] = v64;
      v65 = v303[0];
      v15[2] = v302;
      v15[3] = v65;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
      sub_1000149D0();
      sub_100014CC4();
      v66 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v66, v283, &qword_10009F898, &qword_100077F28);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v67 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v66, &qword_10009F898, &qword_100077F28);
      sub_100015AC0(v67, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v33 = v67;
      v34 = &qword_10009F8A0;
      v35 = &qword_100077F30;
      return sub_1000156F8(v33, v34, v35);
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v57)
    {

      goto LABEL_24;
    }

    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;
    if (v68 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v70 == v71)
    {

LABEL_30:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v73 = EnvironmentObject.init()();
      v75 = v74;
      v76 = swift_getKeyPath();
      v300.n128_u8[0] = 0;
      v77 = swift_getKeyPath();
      v294.n128_u8[0] = 0;
      v78 = swift_getKeyPath();
      v289.n128_u8[0] = 0;
      v79 = swift_getKeyPath();
      LOBYTE(v310[0]) = 0;
      v312.n128_u8[0] = 0;
      v312.n128_u64[1] = v73;
      v313.n128_u64[0] = v75;
      v313.n128_u64[1] = v76;
      v314.n128_u8[0] = 0;
      v314.n128_u8[1] = v300.n128_u8[0];
      v314.n128_u64[1] = v77;
      v315[0] = v294.n128_u8[0];
      *&v315[8] = v78;
      v315[16] = v289.n128_u8[0];
      *&v315[24] = v79;
      LOBYTE(v316) = 0;
      v302 = v314;
      v303[0] = *v315;
      v303[1] = *&v315[16];
      LOWORD(v304[0]) = 256;
      v300 = v312;
      v301 = v313;
      v309 = 1;
      sub_100015758(&v312, &v294);
      sub_100014C1C();
      sub_100014C70();
      _ConditionalContent<>.init(storage:)();
      v296 = v291;
      v297[0] = v292[0];
      v297[1] = v292[1];
      *v298 = v293[0];
      v294 = v289;
      v295 = v290;
      LOBYTE(v310[0]) = 1;
      v299 = 1;
      sub_1000130DC(&qword_10009F900, &qword_100077F58);
      sub_1000130DC(&qword_10009F920, &qword_100077F60);
      sub_100014A5C();
      sub_100014B90();
      _ConditionalContent<>.init(storage:)();
      v80 = v304[0];
      v15[4] = v303[1];
      v15[5] = v80;
      *(v15 + 90) = *(v304 + 10);
      v81 = v301;
      *v15 = v300;
      v15[1] = v81;
      v82 = v303[0];
      v15[2] = v302;
      v15[3] = v82;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
      sub_1000149D0();
      sub_100014CC4();
      v83 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v83, v283, &qword_10009F898, &qword_100077F28);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v30 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v83, &qword_10009F898, &qword_100077F28);
      v31 = &qword_10009F8A0;
      v32 = &qword_100077F30;
      sub_100015AC0(v30, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      v84 = &v312;
LABEL_31:
      sub_1000157B4(v84);
      goto LABEL_9;
    }

    v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v72)
    {

      goto LABEL_30;
    }

    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
    if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
    {

LABEL_37:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v90 = EnvironmentObject.init()();
      v92 = v91;
      v93 = swift_getKeyPath();
      v94 = swift_getKeyPath();
      v95 = swift_getKeyPath();
      v96 = swift_getKeyPath();
      v300.n128_u8[0] = 1;
      v300.n128_u64[1] = v90;
      v301.n128_u64[0] = v92;
      v301.n128_u64[1] = v93;
      v302.n128_u16[0] = 0;
      v302.n128_u64[1] = v94;
      LOBYTE(v303[0]) = 0;
      *(&v303[0] + 1) = v95;
      LOBYTE(v303[1]) = 0;
      *(&v303[1] + 1) = v96;
      LOBYTE(v304[0]) = 0;
      v8[5].n128_u8[0] = 0;
      v97 = v303[0];
      v8[2] = v302;
      v8[3] = v97;
      v8[4] = v303[1];
      v98 = v301;
      *v8 = v300;
      v8[1] = v98;
      swift_storeEnumTagMultiPayload();
      sub_100015758(&v300, &v294);
      sub_100014C70();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl, &unk_100079B1C);
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v10, v275, &qword_10009F870, &qword_100077F00);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v99 = v277;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v10, &qword_10009F870, &qword_100077F00);
      sub_100015AC0(v99, v15, &qword_10009F878, &qword_100077F08);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
      sub_1000149D0();
      sub_100014CC4();
      v100 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v99, &qword_10009F878, &qword_100077F08);
      sub_100015AC0(v100, v283, &qword_10009F898, &qword_100077F28);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v30 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v100, &qword_10009F898, &qword_100077F28);
      v31 = &qword_10009F8A0;
      v32 = &qword_100077F30;
      sub_100015AC0(v30, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      v84 = &v300;
      goto LABEL_31;
    }

    v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v89)
    {

      goto LABEL_37;
    }

    v101 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v103 = v102;
    if (v101 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v103 == v104)
    {

LABEL_43:
      v106 = v271;
      *v271 = 0;
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      *(v106 + 8) = EnvironmentObject.init()();
      *(v106 + 16) = v107;
      *(v106 + 24) = swift_getKeyPath();
      *(v106 + 32) = 0;
      v108 = v272;
      v109 = *(v272 + 28);
      *(v106 + v109) = swift_getKeyPath();
      sub_1000130DC(&qword_10009FA00, &unk_100078000);
      swift_storeEnumTagMultiPayload();
      v110 = v106 + *(v108 + 32);
      *v110 = swift_getKeyPath();
      *(v110 + 8) = 0;
      sub_100015638(v106, v8);
      swift_storeEnumTagMultiPayload();
      sub_100014C70();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl, &unk_100079B1C);
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v10, v275, &qword_10009F870, &qword_100077F00);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v111 = v277;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v10, &qword_10009F870, &qword_100077F00);
      sub_100015AC0(v111, v15, &qword_10009F878, &qword_100077F08);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
      sub_1000149D0();
      sub_100014CC4();
      v112 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v111, &qword_10009F878, &qword_100077F08);
      sub_100015AC0(v112, v283, &qword_10009F898, &qword_100077F28);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v113 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v112, &qword_10009F898, &qword_100077F28);
      sub_100015AC0(v113, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v113, &qword_10009F8A0, &qword_100077F30);
      return sub_10001569C(v106);
    }

    v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v105)
    {

      goto LABEL_43;
    }

    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;
    if (v114 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v116 == v117)
    {

LABEL_49:
      v119 = v271;
      *v271 = 1;
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      *(v119 + 8) = EnvironmentObject.init()();
      *(v119 + 16) = v120;
      *(v119 + 24) = swift_getKeyPath();
      *(v119 + 32) = 0;
      v121 = v272;
      v122 = *(v272 + 28);
      *(v119 + v122) = swift_getKeyPath();
      sub_1000130DC(&qword_10009FA00, &unk_100078000);
      swift_storeEnumTagMultiPayload();
      v123 = v119 + *(v121 + 32);
      *v123 = swift_getKeyPath();
      *(v123 + 8) = 0;
      sub_100015638(v119, v269);
      swift_storeEnumTagMultiPayload();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl, &unk_100079B1C);
      sub_100014F10();
      v124 = v270;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v124, v275, &qword_10009F858, &qword_100077EE8);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v125 = v277;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v124, &qword_10009F858, &qword_100077EE8);
      sub_100015AC0(v125, v15, &qword_10009F878, &qword_100077F08);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
      sub_1000149D0();
      sub_100014CC4();
      v126 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v125, &qword_10009F878, &qword_100077F08);
      sub_100015AC0(v126, v283, &qword_10009F898, &qword_100077F28);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v127 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v126, &qword_10009F898, &qword_100077F28);
      sub_100015AC0(v127, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v127, &qword_10009F8A0, &qword_100077F30);
      return sub_10001569C(v119);
    }

    v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v118)
    {

      goto LABEL_49;
    }

    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v130 = v129;
    if (v128 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v130 == v131)
    {

LABEL_55:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v133 = EnvironmentObject.init()();
      v135 = v134;
      v136 = swift_getKeyPath();
      v137 = v269;
      *v269 = v133;
      v137[1] = v135;
      v137[2] = v136;
      *(v137 + 12) = 0;
      swift_storeEnumTagMultiPayload();
      sub_100014E0C(&qword_10009F948, type metadata accessor for TFTextAlignmentControl, &unk_100079B1C);
      sub_100014F10();

      v138 = v270;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v138, v275, &qword_10009F858, &qword_100077EE8);
      swift_storeEnumTagMultiPayload();
      sub_100014D50();
      sub_100014E54();
      v139 = v277;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v138, &qword_10009F858, &qword_100077EE8);
      sub_100015AC0(v139, v15, &qword_10009F878, &qword_100077F08);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
      sub_1000149D0();
      sub_100014CC4();
      v140 = v280;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v139, &qword_10009F878, &qword_100077F08);
      sub_100015AC0(v140, v283, &qword_10009F898, &qword_100077F28);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v141 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_1000156F8(v140, &qword_10009F898, &qword_100077F28);
LABEL_65:
      sub_100015AC0(v141, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v33 = v141;
      v34 = &qword_10009F8A0;
      v35 = &qword_100077F30;
      return sub_1000156F8(v33, v34, v35);
    }

    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v132)
    {

      goto LABEL_55;
    }

    v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v144 = v143;
    if (v142 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v144 == v145)
    {

LABEL_61:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v147 = EnvironmentObject.init()();
      v149 = v148;
      v150 = swift_getKeyPath();
      v294.n128_u64[0] = v147;
      v294.n128_u64[1] = v149;
      v295 = v150;
      v296.n128_u16[0] = 0;
      v296.n128_u8[2] = 0;
LABEL_62:
      sub_100015108();
      sub_10001515C();

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v310[0]) = v302.n128_u8[2];
      v309 = 0;
      BYTE9(v303[1]) = 0;
      sub_1000130DC(&qword_10009F988, &qword_100077F78);
      sub_1000130DC(&qword_10009F9A8, &qword_100077F80);
      sub_10001507C();
      sub_1000151B0();
      _ConditionalContent<>.init(storage:)();
      v296 = v291;
      v297[0] = v292[0];
      *(v297 + 10) = *(v292 + 10);
      v294 = v289;
      v295 = v290;
      v312.n128_u8[0] = 0;
LABEL_63:
      v298[18] = 0;
      sub_1000130DC(&qword_10009F978, &qword_100077F70);
      sub_1000130DC(&qword_10009F9C0, &qword_100077F88);
      sub_100014FF0();
      sub_100015290();
      _ConditionalContent<>.init(storage:)();
      v151 = v304[0];
      v152 = v283;
      *(v283 + 64) = v303[1];
      *(v152 + 80) = v151;
      v153 = *(v304 + 15);
LABEL_64:
      *(v152 + 95) = v153;
      v154 = v301;
      *v152 = v300;
      *(v152 + 16) = v154;
      v155 = v303[0];
      *(v152 + 32) = v302;
      *(v152 + 48) = v155;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v141 = v285;
      _ConditionalContent<>.init(storage:)();
      goto LABEL_65;
    }

    v146 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v146)
    {

      goto LABEL_61;
    }

    v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;
    if (v156 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v158 == v159)
    {

LABEL_71:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v161 = EnvironmentObject.init()();
      v163 = v162;
      v164 = swift_getKeyPath();
      v294.n128_u64[0] = 0;
      v294.n128_u64[1] = v161;
      v295.n128_u64[0] = v163;
      v295.n128_u64[1] = v164;
      v296.n128_u16[0] = 0;
      v296.n128_u8[2] = 1;
      goto LABEL_62;
    }

    v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v160)
    {

      goto LABEL_71;
    }

    v165 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v167 = v166;
    if (v165 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v167 == v168)
    {

LABEL_77:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v170 = EnvironmentObject.init()();
      v172 = v171;
      v173 = swift_getKeyPath();
      v308 = 0;
      v307 = 0;
      v300.n128_u8[0] = 1;
      v300.n128_u64[1] = v170;
      v301.n128_u64[0] = v172;
      v301.n128_u64[1] = v173;
      v302.n128_u16[0] = 0;
      BYTE8(v303[1]) = 0;
      sub_10001515C();
      sub_10001523C();

      _ConditionalContent<>.init(storage:)();
      v302 = v314;
      v303[0] = *v315;
      *(v303 + 9) = *&v315[9];
      v300 = v312;
      v301 = v313;
      v309 = 1;
      BYTE9(v303[1]) = 1;
      sub_1000130DC(&qword_10009F988, &qword_100077F78);
      sub_1000130DC(&qword_10009F9A8, &qword_100077F80);
      sub_10001507C();
      sub_1000151B0();
      _ConditionalContent<>.init(storage:)();
      v296 = v291;
      v297[0] = v292[0];
      *(v297 + 10) = *(v292 + 10);
      v294 = v289;
      v295 = v290;
      LOBYTE(v310[0]) = 0;
      goto LABEL_63;
    }

    v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v169)
    {

      goto LABEL_77;
    }

    v174 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v176 = v175;
    if (v174 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v176 == v177)
    {

LABEL_83:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v179 = EnvironmentObject.init()();
      v181 = v180;
      v182 = swift_getKeyPath();
      v183 = swift_getKeyPath();
      v184 = swift_getKeyPath();
      v307 = 0;
      v306 = 0;
      v305 = 0;
      v308 = 1;
      v300.n128_u64[0] = v179;
      v300.n128_u64[1] = v181;
      v280 = v179;
      v301.n128_u64[0] = v182;
      v301.n128_u16[4] = 0;
      v302.n128_u64[0] = v183;
      v302.n128_u8[8] = 0;
      *&v303[0] = v184;
      BYTE8(v303[0]) = 0;
      *&v303[1] = 0x403C000000000000;
      BYTE8(v303[1]) = 1;
      sub_10001515C();
      sub_10001523C();

      _ConditionalContent<>.init(storage:)();
      v302 = v314;
      v303[0] = *v315;
      *(v303 + 9) = *&v315[9];
      v300 = v312;
      v301 = v313;
      v309 = 1;
      BYTE9(v303[1]) = 1;
      sub_1000130DC(&qword_10009F988, &qword_100077F78);
      sub_1000130DC(&qword_10009F9A8, &qword_100077F80);
      sub_10001507C();
      sub_1000151B0();
      _ConditionalContent<>.init(storage:)();
      v296 = v291;
      v297[0] = v292[0];
      *(v297 + 10) = *(v292 + 10);
      v294 = v289;
      v295 = v290;
      LOBYTE(v310[0]) = 0;
      v298[18] = 0;
      sub_1000130DC(&qword_10009F978, &qword_100077F70);
      sub_1000130DC(&qword_10009F9C0, &qword_100077F88);
      sub_100014FF0();
      sub_100015290();
      _ConditionalContent<>.init(storage:)();
      v185 = v304[0];
      v186 = v283;
      *(v283 + 64) = v303[1];
      *(v186 + 80) = v185;
      *(v186 + 95) = *(v304 + 15);
      v187 = v301;
      *v186 = v300;
      *(v186 + 16) = v187;
      v188 = v303[0];
      *(v186 + 32) = v302;
      *(v186 + 48) = v188;
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F968, &qword_100077F68);
      sub_100014944();
      sub_100014F64();
      v189 = v285;
      _ConditionalContent<>.init(storage:)();
      sub_100015AC0(v189, v287, &qword_10009F8A0, &qword_100077F30);
      swift_storeEnumTagMultiPayload();
      sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
      sub_1000148B8();
      sub_1000154D4();
      _ConditionalContent<>.init(storage:)();

      v33 = v189;
      v34 = &qword_10009F8A0;
      v35 = &qword_100077F30;
      return sub_1000156F8(v33, v34, v35);
    }

    v178 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v178)
    {

      goto LABEL_83;
    }

    v190 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v192 = v191;
    if (v190 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v192 == v193)
    {

LABEL_89:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v195 = EnvironmentObject.init()();
      v197 = v196;
      v198 = swift_getKeyPath();
      v294.n128_u64[0] = v195;
      v294.n128_u64[1] = v197;
      v295.n128_u64[0] = v198;
      v295.n128_u16[4] = 0;
      v295.n128_u8[10] = 0;
      sub_1000153A8();
      sub_1000153FC();

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v310[0]) = v301.n128_u8[10];
      v309 = 0;
      BYTE1(v304[1]) = 0;
      sub_1000130DC(&qword_10009F9D0, &qword_100077F90);
      sub_1000130DC(&qword_10009F9F0, &qword_100077F98);
      sub_10001531C();
      sub_100015450();
      _ConditionalContent<>.init(storage:)();
      v297[1] = v292[1];
      *v298 = v293[0];
      *&v298[16] = v293[1];
      v294 = v289;
      v295 = v290;
      v296 = v291;
      v297[0] = v292[0];
      v312.n128_u8[0] = 1;
      v298[18] = 1;
LABEL_90:
      sub_1000130DC(&qword_10009F978, &qword_100077F70);
      sub_1000130DC(&qword_10009F9C0, &qword_100077F88);
      sub_100014FF0();
      sub_100015290();
      _ConditionalContent<>.init(storage:)();
      v199 = v304[0];
      v152 = v283;
      *(v283 + 64) = v303[1];
      *(v152 + 80) = v199;
      v153 = *(v304 + 15);
      goto LABEL_64;
    }

    v194 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v194)
    {

      goto LABEL_89;
    }

    v200 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v202 = v201;
    if (v200 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v202 == v203)
    {

LABEL_96:
      type metadata accessor for TextFormattingState(0);
      sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
      v205 = EnvironmentObject.init()();
      v207 = v206;
      v208 = swift_getKeyPath();
      v294.n128_u64[0] = v205;
      v294.n128_u64[1] = v207;
      v295.n128_u64[0] = v208;
      v295.n128_u16[4] = 0;
      v295.n128_u8[10] = 1;
      sub_1000153A8();
      sub_1000153FC();

      _ConditionalContent<>.init(storage:)();
      LOBYTE(v310[0]) = v301.n128_u8[10];
      v309 = 0;
      BYTE1(v304[1]) = 0;
      sub_1000130DC(&qword_10009F9D0, &qword_100077F90);
      sub_1000130DC(&qword_10009F9F0, &qword_100077F98);
      sub_10001531C();
      sub_100015450();
      _ConditionalContent<>.init(storage:)();
      v297[1] = v292[1];
      *v298 = v293[0];
      *&v298[16] = v293[1];
      v294 = v289;
      v295 = v290;
      v296 = v291;
      v297[0] = v292[0];
      v312.n128_u8[0] = 1;
      v298[18] = 1;
      goto LABEL_90;
    }

    v204 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v204)
    {

      goto LABEL_96;
    }

    v209 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v211 = v210;
    if (v209 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v211 == v212)
    {
    }

    else
    {
      v213 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v213 & 1) == 0)
      {
        v221 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v223 = v222;
        if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v223 == v224)
        {
        }

        else
        {
          v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v225 & 1) == 0)
          {
            v237 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v239 = v238;
            if (v237 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v239 == v240)
            {
            }

            else
            {
              v241 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if ((v241 & 1) == 0)
              {
                objc_opt_self();
                v253 = swift_dynamicCastObjCClass();
                if (v253)
                {
                  v254 = v253;
                  type metadata accessor for TextFormattingState(0);
                  sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
                  v255 = EnvironmentObject.init()();
                  v257 = v256;
                  v258 = swift_getKeyPath();
                  v259 = swift_getKeyPath();
                  v309 = 0;
                  v308 = 0;
                  v289.n128_u8[0] = 0;
                  v294.n128_u64[0] = v254;
                  v294.n128_u64[1] = v255;
                  v295.n128_u64[0] = v257;
                  v295.n128_u64[1] = v258;
                  v296.n128_u16[0] = 0;
                  v296.n128_u64[1] = v259;
                  LOWORD(v297[0]) = 0;
                }

                else
                {

                  v289.n128_u8[0] = 1;
                  BYTE1(v297[0]) = 1;
                }

                sub_100014784();
                _ConditionalContent<>.init(storage:)();
                v310[0] = v300;
                v310[1] = v301;
                v310[2] = v302;
                v311 = v303[0];
                v312 = v300;
                v313 = v301;
                v314 = v302;
                *v315 = v303[0];
                v309 = 1;
                LOBYTE(v304[1]) = 1;
                sub_100015AC0(&v312, &v294, &qword_10009F8B0, &qword_100077F38);
                v31 = &qword_10009F8B8;
                v32 = &qword_100077F40;
                sub_100015AC0(v310, &v294, &qword_10009F8B8, &qword_100077F40);
                sub_1000130DC(&qword_10009F8B8, &qword_100077F40);
                sub_1000147D8();
                sub_10001482C();
                _ConditionalContent<>.init(storage:)();
                v260 = v297[1];
                v261 = *v298;
                v303[1] = v297[1];
                v304[0] = *v298;
                v262 = v298[16];
                LOBYTE(v304[1]) = v298[16];
                v263 = v295;
                v300 = v294;
                v301 = v295;
                v265 = v296;
                v264 = v297[0];
                v302 = v296;
                v303[0] = v297[0];
                v266 = v287;
                *v287 = v294;
                v266[1] = v263;
                v266[4] = v260;
                v266[5] = v261;
                v266[2] = v265;
                v266[3] = v264;
                v266[6].n128_u8[0] = v262;
                swift_storeEnumTagMultiPayload();
                sub_100015AC0(&v300, &v289, &qword_10009F8D0, &qword_100077F48);
                sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
                sub_1000148B8();
                sub_1000154D4();
                _ConditionalContent<>.init(storage:)();
                sub_1000156F8(&v312, &qword_10009F8B0, &qword_100077F38);
                sub_1000156F8(&v300, &qword_10009F8D0, &qword_100077F48);
                v33 = v310;
                goto LABEL_10;
              }
            }

            type metadata accessor for TextFormattingState(0);
            sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
            v242 = EnvironmentObject.init()();
            v244 = v243;
            v245 = swift_getKeyPath();
            v246 = swift_getKeyPath();
            v247 = swift_getKeyPath();
            v248 = swift_getKeyPath();
            v289.n128_u16[0] = 1;
            v289.n128_u64[1] = v242;
            v290.n128_u64[0] = v244;
            v290.n128_u64[1] = v245;
            v291.n128_u16[0] = 0;
            v291.n128_u64[1] = v246;
            LOBYTE(v292[0]) = 0;
            *(&v292[0] + 1) = v247;
            LOBYTE(v292[1]) = 0;
            *(&v292[1] + 1) = v248;
            LOBYTE(v293[0]) = 0;
            *(&v293[0] + 1) = 0x4062C00000000000;
            v296 = v291;
            v297[0] = v292[0];
            v297[1] = v292[1];
            *v298 = v293[0];
            v294 = v289;
            v295 = v290;
            v312.n128_u8[0] = 0;
            v298[16] = 0;
            sub_100015560(&v289, &v300);
            sub_1000130DC(&qword_10009F8B8, &qword_100077F40);
            sub_1000147D8();
            sub_10001482C();
            _ConditionalContent<>.init(storage:)();
            v249 = v304[0];
            v250 = v287;
            v287[4] = v303[1];
            v250[5] = v249;
            v250[6].n128_u8[0] = v304[1];
            v251 = v301;
            *v250 = v300;
            v250[1] = v251;
            v252 = v303[0];
            v250[2] = v302;
            v250[3] = v252;
            swift_storeEnumTagMultiPayload();
            sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
            sub_1000148B8();
            sub_1000154D4();
            _ConditionalContent<>.init(storage:)();
            return sub_1000155BC(&v289);
          }
        }

        type metadata accessor for TextFormattingState(0);
        sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
        v226 = EnvironmentObject.init()();
        v228 = v227;
        v229 = swift_getKeyPath();
        v230 = swift_getKeyPath();
        v231 = swift_getKeyPath();
        v232 = swift_getKeyPath();
        v312.n128_u16[0] = 0;
        v312.n128_u64[1] = v226;
        v313.n128_u64[0] = v228;
        v313.n128_u64[1] = v229;
        v314.n128_u16[0] = 0;
        v314.n128_u64[1] = v230;
        v315[0] = 0;
        *&v315[8] = v231;
        v315[16] = 0;
        *&v315[24] = v232;
        LOBYTE(v316) = 0;
        *(&v316 + 1) = 0x4062C00000000000;
        v302 = v314;
        v303[0] = *v315;
        v303[1] = *&v315[16];
        v304[0] = v316;
        v300 = v312;
        v301 = v313;
        v308 = 1;
        LOBYTE(v304[1]) = 1;
        sub_100015560(&v312, &v294);
        sub_1000147D8();
        _ConditionalContent<>.init(storage:)();
        v303[1] = v297[1];
        v304[0] = *v298;
        LOBYTE(v304[1]) = v298[16];
        v300 = v294;
        v301 = v295;
        v302 = v296;
        v303[0] = v297[0];
        goto LABEL_109;
      }
    }

    type metadata accessor for TextFormattingState(0);
    sub_100014E0C(&qword_10009F588, type metadata accessor for TextFormattingState, &unk_1000785D0);
    v214 = EnvironmentObject.init()();
    v216 = v215;
    v217 = swift_getKeyPath();
    v218 = swift_getKeyPath();
    v219 = swift_getKeyPath();
    v220 = swift_getKeyPath();
    v312.n128_u16[0] = 257;
    v312.n128_u64[1] = v214;
    v313.n128_u64[0] = v216;
    v313.n128_u64[1] = v217;
    v314.n128_u16[0] = 0;
    v314.n128_u64[1] = v218;
    v315[0] = 0;
    *&v315[8] = v219;
    v315[16] = 0;
    *&v315[24] = v220;
    LOBYTE(v316) = 0;
    *(&v316 + 1) = 0x4062C00000000000;
    v302 = v314;
    v303[0] = *v315;
    v303[1] = *&v315[16];
    v304[0] = v316;
    v300 = v312;
    v301 = v313;
    v308 = 0;
    LOBYTE(v304[1]) = 0;
    sub_100015560(&v312, &v294);
    sub_1000147D8();
    _ConditionalContent<>.init(storage:)();
    v303[1] = v297[1];
    v304[0] = *v298;
    LOBYTE(v304[1]) = v298[16];
    v300 = v294;
    v301 = v295;
    v302 = v296;
    v303[0] = v297[0];
LABEL_109:
    v309 = 1;
    BYTE1(v304[1]) = 1;
    sub_1000130DC(&qword_10009F9D0, &qword_100077F90);
    sub_1000130DC(&qword_10009F9F0, &qword_100077F98);
    sub_10001531C();
    sub_100015450();
    _ConditionalContent<>.init(storage:)();
    v297[1] = v292[1];
    *v298 = v293[0];
    *&v298[16] = v293[1];
    v294 = v289;
    v295 = v290;
    v296 = v291;
    v297[0] = v292[0];
    LOBYTE(v310[0]) = 1;
    v298[18] = 1;
    sub_1000130DC(&qword_10009F978, &qword_100077F70);
    sub_1000130DC(&qword_10009F9C0, &qword_100077F88);
    sub_100014FF0();
    sub_100015290();
    _ConditionalContent<>.init(storage:)();
    v233 = v304[0];
    v234 = v283;
    *(v283 + 64) = v303[1];
    *(v234 + 80) = v233;
    *(v234 + 95) = *(v304 + 15);
    v235 = v301;
    *v234 = v300;
    *(v234 + 16) = v235;
    v236 = v303[0];
    *(v234 + 32) = v302;
    *(v234 + 48) = v236;
    swift_storeEnumTagMultiPayload();
    sub_1000130DC(&qword_10009F968, &qword_100077F68);
    sub_100014944();
    sub_100014F64();
    v30 = v285;
    _ConditionalContent<>.init(storage:)();
    v31 = &qword_10009F8A0;
    v32 = &qword_100077F30;
    sub_100015AC0(v30, v287, &qword_10009F8A0, &qword_100077F30);
    swift_storeEnumTagMultiPayload();
    sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
    sub_1000148B8();
    sub_1000154D4();
    _ConditionalContent<>.init(storage:)();
    sub_1000155BC(&v312);
    goto LABEL_9;
  }

LABEL_8:
  sub_10004D03C(&v312);
  v303[1] = *&v315[16];
  v304[0] = v316;
  *&v304[1] = v317;
  v300 = v312;
  v301 = v313;
  v302 = v314;
  v303[0] = *v315;
  v309 = 0;
  BYTE8(v304[1]) = 0;
  sub_100015808(&v312, &v294);
  sub_100014AE8();
  sub_100014B3C();
  _ConditionalContent<>.init(storage:)();
  v297[1] = v292[1];
  *v298 = v293[0];
  *&v298[9] = *(v293 + 9);
  v294 = v289;
  v295 = v290;
  v296 = v291;
  v297[0] = v292[0];
  LOBYTE(v310[0]) = 0;
  v299 = 0;
  sub_1000130DC(&qword_10009F900, &qword_100077F58);
  sub_1000130DC(&qword_10009F920, &qword_100077F60);
  sub_100014A5C();
  sub_100014B90();
  _ConditionalContent<>.init(storage:)();
  v26 = v304[0];
  v15[4] = v303[1];
  v15[5] = v26;
  *(v15 + 90) = *(v304 + 10);
  v27 = v301;
  *v15 = v300;
  v15[1] = v27;
  v28 = v303[0];
  v15[2] = v302;
  v15[3] = v28;
  swift_storeEnumTagMultiPayload();
  sub_1000130DC(&qword_10009F8F0, &qword_100077F50);
  sub_1000149D0();
  sub_100014CC4();
  v29 = v280;
  _ConditionalContent<>.init(storage:)();
  sub_100015AC0(v29, v283, &qword_10009F898, &qword_100077F28);
  swift_storeEnumTagMultiPayload();
  sub_1000130DC(&qword_10009F968, &qword_100077F68);
  sub_100014944();
  sub_100014F64();
  v30 = v285;
  _ConditionalContent<>.init(storage:)();
  sub_1000156F8(v29, &qword_10009F898, &qword_100077F28);
  v31 = &qword_10009F8A0;
  v32 = &qword_100077F30;
  sub_100015AC0(v30, v287, &qword_10009F8A0, &qword_100077F30);
  swift_storeEnumTagMultiPayload();
  sub_1000130DC(&qword_10009F8D0, &qword_100077F48);
  sub_1000148B8();
  sub_1000154D4();
  _ConditionalContent<>.init(storage:)();
  sub_100015864(&v312);
LABEL_9:
  v33 = v30;
LABEL_10:
  v34 = v31;
  v35 = v32;
  return sub_1000156F8(v33, v34, v35);
}

uint64_t sub_100009D7C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (static String._unconditionallyBridgeFromObjectiveC(_:)(), Hasher.init(_seed:)(), String.hash(into:)(), v3 = Hasher._finalize()(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

Swift::Int sub_100009F38()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100078038[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100009FC0(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100078038[v2]);
  return Hasher._finalize()();
}

uint64_t sub_10000A00C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011E94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000A060(void *a1, void *a2)
{
  if (*a1 == *a2)
  {
    return sub_10000B7FC(a1[1], a2[1], &qword_10009F580, UITextFormattingViewControllerComponent_ptr) & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_10000A0B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

__n128 sub_10000A0F4@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v7;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  *(a2 + 64) = v8;
  *a2 = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_10000A198(__int128 *a1, uint64_t *a2)
{
  v3 = a1[3];
  v14[2] = a1[2];
  v14[3] = v3;
  v15 = *(a1 + 8);
  v4 = a1[1];
  v14[0] = *a1;
  v14[1] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1[3];
  v11 = a1[2];
  v12 = v5;
  v13 = *(a1 + 8);
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  sub_10000C8A8(v14, v8);

  return static Published.subscript.setter();
}

uint64_t sub_10000A250@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t sub_10000A2D0(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  return sub_10001CDD4();
}

uint64_t sub_10000A348(uint64_t a1)
{
  v2 = type metadata accessor for LayoutDirection();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.layoutDirection.setter();
}

uint64_t sub_10000A410@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000A468(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(0x666E6F4349554654, 0xEA00000000006769, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100013A58(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

void *sub_10000A634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x100) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(0xD000000000000035, 0x800000010007C530, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100015A48(a1, a2, 0);
    (*(v5 + 8))(v7, v4);
    return v13;
  }

  return a1;
}

uint64_t sub_10000A814(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(1819242306, 0xE400000000000000, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100013A58(a1, 0);
    (*(v5 + 8))(v7, v4);
    LOBYTE(a1) = v14;
  }

  return a1 & 1;
}

double sub_10000A9D4(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = static os_log_type_t.fault.getter();
  v10 = static Log.runtimeIssuesLog.getter();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100018298(0x74616F6C464743, 0xE700000000000000, &v14);
    _os_log_impl(&_mh_execute_header, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    sub_1000143E4(v12);
  }

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100013A58(a1, 0);
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_10000ABA0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000130DC(&qword_10009FA00, &unk_100078000);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100015AC0(v2, &v17 - v9, &qword_10009FA00, &unk_100078000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for LayoutDirection();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100018298(0x694474756F79614CLL, 0xEF6E6F6974636572, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_1000143E4(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000AE2C(uint64_t a1, char a2)
{
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    v8 = static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100018298(0x6C616E6F6974704FLL, 0xEE003E6C6F6F423CLL, &v13);
      _os_log_impl(&_mh_execute_header, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      sub_1000143E4(v11);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100013A58(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v14;
  }

  return a1;
}

uint64_t sub_10000B000@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000130DC(&qword_1000A16B0, qword_100078020);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100015AC0(v2, &v17 - v9, &qword_1000A16B0, qword_100078020);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for ColorScheme();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100018298(0x686353726F6C6F43, 0xEB00000000656D65, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_1000143E4(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000B288@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000130DC(&qword_10009FA38, &qword_100079FE0);
  __chkstk_darwin(v8);
  v10 = &v17 - v9;
  sub_100015AC0(v2, &v17 - v9, &qword_10009FA38, &qword_100079FE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DynamicTypeSize();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_100018298(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&_mh_execute_header, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      sub_1000143E4(v16);
    }

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10000B514(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  v31 = v9;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v32 = (v8 - 1) & v8;
LABEL_12:
      v13 = v10 | (v4 << 6);
      v14 = (*(v3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v3 + 56) + 8 * v13);

      v18 = sub_10000C53C(v15, v16);
      v20 = v19;

      if ((v20 & 1) == 0 || (v21 = *(*(v2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
      {
LABEL_29:

        return 0;
      }

      if (v22 && v21 != v17)
      {
        break;
      }

LABEL_19:

      v9 = v31;
      v8 = v32;
      if (!v32)
      {
        goto LABEL_7;
      }
    }

    v29 = v3;
    v30 = v2;

    v24 = 0;
    v25 = 0;
    while (v25 < *(v21 + 16))
    {
      if (v25 >= *(v17 + 16))
      {
        goto LABEL_33;
      }

      if (*(v21 + v24 + 32) != *(v17 + v24 + 32) || (v26 = *(v21 + v24 + 40), v27 = *(v17 + v24 + 40), , , v28 = sub_10000B7FC(v26, v27, &qword_10009F580, UITextFormattingViewControllerComponent_ptr), , result = , (v28 & 1) == 0))
      {

        goto LABEL_29;
      }

      ++v25;
      v24 += 16;
      if (v22 == v25)
      {

        v3 = v29;
        v2 = v30;
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return 1;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v32 = (v12 - 1) & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_10000B758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_10000B7FC(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1000132E4(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v19 = v18;
        v20 = static NSObject.== infix(_:_:)();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = static NSObject.== infix(_:_:)();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

double *sub_10000BA64(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5A8, &qword_100077888);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000BB70(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5C0, &qword_1000778A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    sub_1000130DC(&qword_10009F5C8, &qword_1000778A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000BCB8(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5E8, &qword_1000778C8);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

double *sub_10000BDBC(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5B8, &qword_100077898);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000BEC8(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5A0, &qword_100077880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_10000BFCC(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009FA28, &qword_100078010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

double *sub_10000C0C0(uint64_t a1, uint64_t a2)
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

  sub_1000130DC(&qword_10009F608, &qword_1000778E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

double *sub_10000C144(uint64_t a1, uint64_t a2)
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

  sub_1000130DC(&qword_10009F5F0, &qword_1000778D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_10000C1D4(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  v38 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *a3;
  v9 = sub_10000C5B4(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v10;
  if (v8[3] < v14)
  {
    sub_10000D2B8(v14, a2 & 1);
    v9 = sub_10000C5B4(v7);
    if ((v15 & 1) != (v16 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v15)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v18 = v9;
  sub_10000CBD4();
  v9 = v18;
  if (v15)
  {
LABEL_9:
    swift_allocError();
    swift_willThrow();

    swift_errorRetain();
    sub_1000130DC(&qword_10009F5F8, &qword_1000778D8);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_27;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v19[6] + v9) = v7;
  *(v19[7] + 16 * v9) = v38;
  v20 = v19[2];
  v13 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v13)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    _StringGuts.grow(_:)(30);
    v36._object = 0x800000010007C510;
    v36._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v36);
    _print_unlocked<A, B>(_:_:)();
    v37._countAndFlagsBits = 39;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v19[2] = v21;
  if (v4 != 1)
  {
    v22 = (a1 + 64);
    v23 = 1;
    while (v23 < *(a1 + 16))
    {
      v39 = *v22;
      v24 = *(v22 - 8);
      v25 = *a3;
      v26 = sub_10000C5B4(v24);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v13 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v13)
      {
        goto LABEL_24;
      }

      v31 = v27;
      if (v25[3] < v30)
      {
        sub_10000D2B8(v30, 1);
        v26 = sub_10000C5B4(v24);
        if ((v31 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v31)
      {
        goto LABEL_9;
      }

      v33 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      *(v33[6] + v26) = v24;
      *(v33[7] + 16 * v26) = v39;
      v34 = v33[2];
      v13 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v13)
      {
        goto LABEL_25;
      }

      ++v23;
      v33[2] = v35;
      v22 = (v22 + 24);
      if (v4 == v23)
      {
      }
    }

    goto LABEL_26;
  }
}

unint64_t sub_10000C53C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10000C6C0(a1, a2, v4);
}

unint64_t sub_10000C5B4(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_100078038[v1]);
  v2 = Hasher._finalize()();

  return sub_10000C8E0(v1, v2);
}

unint64_t sub_10000C62C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_10000C960(a1, v2);
}

unint64_t sub_10000C6C0(uint64_t a1, uint64_t a2, uint64_t a3)
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

void *sub_10000C788@<X0>(_BYTE *a1@<X8>)
{
  sub_10000C854();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_10000C854()
{
  result = qword_10009F590;
  if (!qword_10009F590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10009F590);
  }

  return result;
}

unint64_t sub_10000C8E0(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (qword_100078038[*(*(v2 + 48) + result)] == qword_100078038[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10000C960(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_10000CA64()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F598, &qword_100077878);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_10000CBD4()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F5D0, &unk_1000778B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

id sub_10000CD24()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F628, &qword_100077900);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

        result = v20;
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

id sub_10000CE90()
{
  v1 = v0;
  sub_1000130DC(&qword_10009FA30, &qword_100078018);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100015A54(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100015AB0(v19, (*(v4 + 56) + 32 * v17));
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

Swift::Int sub_10000D010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000130DC(&qword_10009F598, &qword_100077878);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_10000D2B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000130DC(&qword_10009F5D0, &unk_1000778B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v4;
    v35 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = (v21 + 16 * v20);
      v25 = *v23;
      v24 = v23[1];
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100078038[v22]);
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v25;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

Swift::Int sub_10000D54C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000130DC(&qword_10009F628, &qword_100077900);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10000D7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000130DC(&qword_10009FA30, &qword_100078018);
  v35 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100015AB0(v22, v36);
      }

      else
      {
        sub_100015A54(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_100015AB0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int sub_10000DAC0(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100011B98(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*&v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
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
      type metadata accessor for ComponentSize(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 2) = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_10000E6B4(v16, v17, v18, v5);
    v7[2] = 0.0;
  }

  *a1 = v2;
  return result;
}

char *sub_10000DBF8(double **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100011BAC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_10000E500(v5);
  *a1 = v2;
  return result;
}

void sub_10000DC78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_1000132E4(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1000130DC(&qword_10009F5D8, &qword_1000789F0);
      v11 = swift_allocObject();
      v12 = j__malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_10000DD74(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
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
        goto LABEL_5;
      }
    }

    else
    {
      sub_1000130DC(&qword_10009FA28, &qword_100078010);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      *(v8 + 2) = v5;
      *(v8 + 3) = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

double *sub_10000DE34(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000DEC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10000DE54(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E0CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10000DE74(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E1D8(a1, a2, a3, *v3, &qword_10009F600, &qword_1000778E0);
  *v3 = result;
  return result;
}

double *sub_10000DEA4(double *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10000E2EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *sub_10000DEC4(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5A0, &qword_100077880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_10000DFC8(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F608, &qword_1000778E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double *sub_10000E0CC(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5B8, &qword_100077898);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000E1D8(double *result, int64_t a2, char a3, double *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000130DC(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = (v12 + 4);
  v15 = (a4 + 4);
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v14, v15, 24 * v10);
  }

  return v12;
}

double *sub_10000E2EC(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009F5A8, &qword_100077888);
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
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double *sub_10000E3F8(double *result, int64_t a2, char a3, double *a4)
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
    sub_1000130DC(&qword_10009FA28, &qword_100078010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = (v10 + 4);
  v13 = (a4 + 4);
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    a4[2] = 0.0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10000E500(uint64_t *a1)
{
  v2 = a1[1];
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
        sub_1000130DC(&qword_10009F5E0, &qword_1000778C0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v5 + 2) = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_10000EC00(v7, v8, a1, v4);
      v6[2] = 0.0;
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
    return sub_10000E608(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10000E608(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 24 * a3 + 16);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *(v9 - 8);
      if (v7 == v10)
      {
        if (*(v9 + 8) >= *(v9 - 16))
        {
          goto LABEL_4;
        }
      }

      else if (v7)
      {
        if (!v10 || v10 >= v7)
        {
LABEL_4:
          ++a3;
          v5 += 24;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v4)
      {
        break;
      }

      v12 = *v9;
      v13 = *(v9 + 8);
      *v9 = *(v9 - 24);
      *(v9 + 16) = *(v9 - 8);
      *(v9 - 16) = v13;
      *(v9 - 8) = v7;
      *(v9 - 24) = v12;
      v9 -= 24;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10000E6B4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_10000F75C(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_10000F254((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
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
        *(v77 + 1) = v80;
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
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
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

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
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
      result = sub_10000BCB8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_10000BCB8((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    *(v32 + 1) = v7;
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
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
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
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
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
        v60 = *(v59 + 1);
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
        v63 = *(v62 + 1);
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
        v73 = *(v72 + 1);
        sub_10000F254((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
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
      v45 = *(v44 + 1);
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
        v67 = *(v66 + 1);
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
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
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

    *v26 = v24;
    v26[1] = v27;
    --v26;
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

uint64_t sub_10000EC00(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v94 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_117:
    v6 = *v94;
    if (!*v94)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v89 = *(v8 + 2);
      if (v89 >= 2)
      {
        while (*a3)
        {
          v90 = v8[2 * v89];
          v91 = v8[2 * v89 + 3];
          sub_10000F448((*a3 + 24 * *&v90), (*a3 + 24 * *&v8[2 * v89 + 2]), *a3 + 24 * *&v91, v6);
          if (v4)
          {
          }

          if (*&v91 < *&v90)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_10000F75C(v8);
          }

          if (v89 - 2 >= *(v8 + 2))
          {
            goto LABEL_143;
          }

          v92 = &v8[2 * v89];
          *v92 = v90;
          v92[1] = v91;
          result = sub_10000F6D0(v89 - 1);
          v89 = *(v8 + 2);
          if (v89 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_10000F75C(v8);
    v8 = result;
    goto LABEL_119;
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = *a3 + 24 * v7;
      v11 = *(v10 + 16);
      v12 = *a3 + 24 * v9;
      v13 = *(v12 + 16);
      if (v11 == v13)
      {
        v14 = *(v10 + 8) < *(v12 + 8);
      }

      else
      {
        if (v13)
        {
          v15 = v13 < v11;
        }

        else
        {
          v15 = 0;
        }

        v14 = v15;
        if (!v11)
        {
          v14 = 1;
        }
      }

      v7 = v9 + 2;
      if (v9 + 2 < v5)
      {
        v16 = *a3 + 24 * v9 + 64;
        v17 = v16;
        while (1)
        {
          v18 = v11;
          v19 = *v17;
          v17 += 3;
          v11 = v19;
          if (v19 == v18)
          {
            break;
          }

          if (v11)
          {
            if (v18)
            {
              v20 = v18 < v11;
LABEL_24:
              v21 = v20;
              if (v14 != v21)
              {
                goto LABEL_32;
              }

              goto LABEL_18;
            }

            if (v14)
            {
              goto LABEL_33;
            }
          }

          else if ((v14 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_18:
          ++v7;
          v16 = v17;
          if (v5 == v7)
          {
            v7 = v5;
            goto LABEL_32;
          }
        }

        v20 = *(v16 - 8) < *(v16 - 32);
        goto LABEL_24;
      }

LABEL_32:
      if (v14)
      {
LABEL_33:
        if (v7 < v9)
        {
          goto LABEL_148;
        }

        if (v9 < v7)
        {
          v22 = 0;
          v23 = 24 * v7;
          v24 = 24 * v9;
          v25 = v9;
          do
          {
            if (v25 != v7 + v22 - 1)
            {
              v26 = *a3;
              if (!*a3)
              {
                goto LABEL_152;
              }

              v27 = (v26 + v24);
              v28 = v26 + v23;
              v29 = *v27;
              v30 = *(v27 + 8);
              v31 = *(v28 - 24);
              *(v27 + 2) = *(v28 - 8);
              *v27 = v31;
              *(v28 - 24) = v29;
              *(v28 - 16) = v30;
            }

            ++v25;
            --v22;
            v23 -= 24;
            v24 += 24;
          }

          while (v25 < v7 + v22);
          v5 = a3[1];
        }
      }
    }

LABEL_41:
    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_145;
      }

      if (v7 - v9 < v6)
      {
        break;
      }
    }

LABEL_66:
    if (v7 < v9)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000BCB8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_10000BCB8((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v45;
    v46 = &v8[2 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *v94;
    if (!*v94)
    {
      goto LABEL_154;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_86:
          if (v52)
          {
            goto LABEL_133;
          }

          v65 = &v8[2 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_136;
          }

          v71 = &v8[2 * v48 + 4];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_140;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v75 = &v8[2 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_100:
        if (v70)
        {
          goto LABEL_135;
        }

        v78 = &v8[2 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_138;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_107:
        v6 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*a3)
        {
          goto LABEL_151;
        }

        v86 = v8[2 * v6 + 4];
        v87 = v8[2 * v48 + 5];
        sub_10000F448((*a3 + 24 * *&v86), (*a3 + 24 * *&v8[2 * v48 + 4]), *a3 + 24 * *&v87, v47);
        if (v4)
        {
        }

        if (*&v87 < *&v86)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10000F75C(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_130;
        }

        v88 = &v8[2 * v6];
        v88[4] = v86;
        v88[5] = v87;
        result = sub_10000F6D0(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[2 * v45 + 4];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_131;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_132;
      }

      v60 = &v8[2 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_134;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_137;
      }

      if (v64 >= v56)
      {
        v82 = &v8[2 * v48 + 4];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_141;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_117;
    }
  }

  if (__OFADD__(v9, v6))
  {
    goto LABEL_146;
  }

  if (v9 + v6 < v5)
  {
    v5 = v9 + v6;
  }

  if (v5 < v9)
  {
LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v7 == v5)
  {
    goto LABEL_66;
  }

  v32 = *a3;
  v33 = *a3 + 24 * v7;
  v34 = v9 - v7;
LABEL_51:
  v35 = *(v32 + 24 * v7 + 16);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    v38 = *(v37 - 8);
    if (v35 != v38)
    {
      if (!v35)
      {
        goto LABEL_61;
      }

      if (v38 && v38 < v35)
      {
        goto LABEL_61;
      }

LABEL_50:
      ++v7;
      v33 += 24;
      --v34;
      if (v7 == v5)
      {
        v7 = v5;
        goto LABEL_66;
      }

      goto LABEL_51;
    }

    if (*(v37 + 8) >= *(v37 - 16))
    {
      goto LABEL_50;
    }

LABEL_61:
    if (!v32)
    {
      break;
    }

    v40 = *v37;
    v41 = *(v37 + 8);
    *v37 = *(v37 - 24);
    *(v37 + 16) = *(v37 - 8);
    *(v37 - 16) = v41;
    *(v37 - 8) = v35;
    *(v37 - 24) = v40;
    v37 -= 24;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}

uint64_t sub_10000F254(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10000F448(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_45;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = *(v6 + 2);
      v17 = *(v4 + 2);
      if (v16 == v17)
      {
        if (*(v6 + 1) >= *(v4 + 1))
        {
          goto LABEL_19;
        }
      }

      else if (v16)
      {
        if (!v17 || v17 >= v16)
        {
LABEL_19:
          v13 = v4;
          v14 = v7 == v4;
          v4 += 24;
          if (v14)
          {
            goto LABEL_9;
          }

LABEL_8:
          v15 = *v13;
          *(v7 + 2) = *(v13 + 2);
          *v7 = v15;
          goto LABEL_9;
        }
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_27:
    v5 -= 24;
    do
    {
      v19 = *(v12 - 1);
      v20 = *(v6 - 1);
      if (v19 == v20)
      {
        if (*(v12 - 2) < *(v6 - 2))
        {
          goto LABEL_39;
        }
      }

      else if (!v19 || (v20 ? (v21 = v20 < v19) : (v21 = 0), v21))
      {
LABEL_39:
        v24 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v25 = *v24;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v25;
        }

        if (v12 <= v4 || (v6 -= 24, v24 <= v7))
        {
          v6 = v24;
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v22 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v23 = *v22;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v23;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v22 > v4);
    v12 = v22;
  }

LABEL_45:
  v26 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v27 = (v26 >> 2) + (v26 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v27])
  {
    memmove(v6, v4, 24 * v27);
  }

  return 1;
}

uint64_t sub_10000F6D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10000F75C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10000F770(Swift::UInt *a1, Swift::UInt a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1000105B8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10000F868(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100010714(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10000F9B8(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_100010894(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_10000FB64(double *a1, double a2)
{
  v5 = *v2;
  v6 = static Hasher._hash(seed:_:)();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_100010A7C(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int sub_10000FC58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000130DC(&qword_10009F618, &qword_1000778F0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v17);
      result = Hasher._finalize()();
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

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

Swift::Int sub_10000FEA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000130DC(&qword_10009F5B0, &qword_100077890);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100010108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000130DC(&qword_10009F620, &qword_1000778F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v18 = Hasher._finalize()();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100010384(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1000130DC(&qword_10009F638, &qword_100077908);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      result = static Hasher._hash(seed:_:)();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1000105B8(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000FC58(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_100010BA8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1000110D4(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(result);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for ComponentSize(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100010714(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000FEA8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100010CE8();
      goto LABEL_16;
    }

    sub_1000112F4(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100010894(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_100010108(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_100010E44();
      goto LABEL_16;
    }

    sub_10001152C(v7 + 1);
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ComponentKey(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_100010A7C(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_100010384(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_100010F94();
      result = v7;
      goto LABEL_12;
    }

    sub_100011780(v5 + 1);
  }

  v8 = *v3;
  v9 = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100010BA8()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F618, &qword_1000778F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100010CE8()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F5B0, &qword_100077890);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_100010E44()
{
  v1 = v0;
  sub_1000130DC(&qword_10009F620, &qword_1000778F8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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