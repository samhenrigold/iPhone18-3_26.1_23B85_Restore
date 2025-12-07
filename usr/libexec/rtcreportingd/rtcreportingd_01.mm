void sub_1000160CC(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10004E7B8(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10004F5E8(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v16 = Hasher._finalize()();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == result && v18[1] == a2;
        if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        v16 = a3 + 1;
      }
    }

    sub_10004F210();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = result;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_100016260(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = sub_1000228D4(&unk_10008F2F0, &qword_10006FFF0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = type metadata accessor for EventValue(0);
  __chkstk_darwin(v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.init(cString:)();
  v14 = swift_unknownObjectRetain();
  XPCObject.init(_:)(v14, v4);
  v15 = type metadata accessor for XPCObject(0);
  result = sub_100002694(v4, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000B09C(v4, v10);
    result = sub_100002694(v10, 1, v11);
    if (result != 1)
    {
      sub_10000B670();
      sub_1000096D4();
      sub_1000026BC(v8, 0, 1, v11);
      sub_10000B810();
      sub_10000A80C(v13, type metadata accessor for EventValue);
      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1000164A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F380;
  if (!qword_10008F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F380);
  }

  return result;
}

uint64_t sub_1000164F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008F370, &qword_10006E358);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100016564()
{
  sub_1000054BC();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_100003BC0(v3, v1);
  sub_100009B4C();
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v7;
  v11 = v8;
  sub_1000228D4(&qword_10008F2E8, &unk_10006FAD0);
  v12 = sub_100003CC0();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v12, v13))
  {
    goto LABEL_5;
  }

  v14 = sub_100007C1C();
  v16 = sub_100003BC0(v14, v15);
  if ((v11 & 1) != (v17 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v10 = v16;
LABEL_5:
  if (v11)
  {
    v18 = type metadata accessor for EventValue(0);
    sub_100001D80(v18);
    sub_10000FF94();
    sub_100045B58();
    sub_10000CE54();
  }

  else
  {
    sub_10000B9D0(v10, v4, v2, v6, *v0);
    sub_10000CE54();
  }
}

uint64_t sub_1000166B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016724()
{
}

void *sub_10001673C(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t sub_10001676C(uint64_t a1)
{

  return Error.localizedDescription.getter();
}

void sub_100016788(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v60._countAndFlagsBits = a1;
  v60._object = a2;
  type metadata accessor for JSONEncoder.OutputFormatting();
  sub_100001EDC();
  __chkstk_darwin(v8);
  sub_100001EAC();
  type metadata accessor for String.Encoding();
  sub_100001EDC();
  v61 = v9;
  v62 = v10;
  __chkstk_darwin(v9);
  sub_100001EAC();
  v13 = v12 - v11;
  v14 = type metadata accessor for Date();
  sub_100001EDC();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_100001EAC();
  v20 = v19 - v18;
  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  if (byte_100095B00 == 1)
  {
    if (qword_10008DDD0 != -1)
    {
      swift_once();
    }

    if (byte_100095B10 == 1)
    {
      v58 = v5;
      v59 = a5;
      _StringGuts.grow(_:)(25);

      v64 = 40;
      v65 = 0xE100000000000000;
      static Date.now.getter();
      v21 = Date.description.getter();
      v23 = v22;
      (*(v16 + 8))(v20, v14);
      v24._countAndFlagsBits = v21;
      v24._object = v23;
      String.append(_:)(v24);

      v25._countAndFlagsBits = 5972009;
      v25._object = 0xE300000000000000;
      String.append(_:)(v25);
      String.append(_:)(v60);
      v26._object = 0x8000000100071820;
      v26._countAndFlagsBits = 0xD000000000000011;
      String.append(_:)(v26);
      static String.Encoding.utf8.getter();
      v27 = String.data(using:allowLossyConversion:)();
      v29 = v28;
      v30 = *(v62 + 8);
      v30(v13, v61);
      if (v29 >> 60 == 15)
      {

        sub_10002A810(v31, v32, v33);
        swift_allocError();
        sub_100001D34();
      }

      else
      {
        v64 = v27;
        v65 = v29;
        type metadata accessor for JSONEncoder();
        swift_allocObject();
        JSONEncoder.init()();
        sub_1000228D4(&qword_10008E6B0, &qword_10006DC00);
        *(swift_allocObject() + 16) = xmmword_10006CAD0;
        static JSONEncoder.OutputFormatting.prettyPrinted.getter();
        sub_10002C5B4(&qword_10008E6B8, &type metadata accessor for JSONEncoder.OutputFormatting, &protocol conformance descriptor for JSONEncoder.OutputFormatting);
        sub_1000228D4(&qword_10008E6C0, &qword_10006DC08);
        sub_10000F978(&qword_10008E6C8, &qword_10008E6C0, &qword_10006DC08);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v34 = dispatch thunk of JSONEncoder.outputFormatting.setter();
        v63[0] = v59;
        sub_10002A864(v34, v35, v36);

        dispatch thunk of JSONEncoder.encode<A>(_:)();
        if (v6)
        {

          sub_100005954(v64, v65);
        }

        else
        {

          sub_1000043D8();
          Data.append(_:)();
          static String.Encoding.utf8.getter();
          v37 = String.data(using:allowLossyConversion:)();
          v39 = v38;
          v30(v13, v61);
          if (v39 >> 60 == 15)
          {
            __break(1u);
          }

          else
          {

            Data.append(_:)();
            sub_100022E50(v37, v39);
            v40 = *(v58 + 120);
            v63[0] = v64;
            v63[1] = v65;
            v41 = v40;
            v42 = sub_100003D28();
            v44 = sub_100025CD8(v42, v43);
            sub_10002A8B8(v44, v45, v46);
            NSFileHandle.write<A>(contentsOf:)();
            sub_100005954(v64, v65);

            v47 = *(v58 + 120);
            v63[0] = 0;
            if ([v47 synchronizeAndReturnError:v63])
            {
              v48 = v63[0];
              v49 = sub_100003D28();
              sub_100005954(v49, v50);
              v51 = sub_1000043D8();
              sub_100005954(v51, v52);
            }

            else
            {
              v53 = v63[0];
              _convertNSErrorToError(_:)();

              swift_willThrow();
              v54 = sub_1000043D8();
              sub_100005954(v54, v55);

              v56 = sub_100003D28();
              sub_100005954(v56, v57);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100016DD4()
{
  sub_100002624();
  v1 = v0[2];
  v2 = *(v1 + 136);
  v0[10] = v2;
  v3 = *(v2 + 16);
  v0[11] = v3;
  v0[12] = 0;
  v0[13] = 0;

  if (v3)
  {
    if (*(v4 + 16))
    {
      sub_1000020A0();
      v4 = sub_100006EAC();
      v7 = qword_100095AF8;
      v0[14] = qword_100095AF8;
      if (v7)
      {
        sub_1000616D4();
        sub_1000020A0();
        sub_100006EAC();
        sub_100009A9C();
        sub_100061634();

        sub_100004D7C();
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }

  if (!*(*(v1 + 136) + 16))
  {
    v10 = qword_100095AF8;
    v0[18] = qword_100095AF8;
    if (v10)
    {

LABEL_5:
      sub_1000614E8();

      return _swift_task_switch(v4, v5, v6);
    }

LABEL_16:
    __break(1u);
    return _swift_task_switch(v4, v5, v6);
  }

  sub_100001D4C();

  return v8();
}

uint64_t sub_100016F4C()
{
  sub_100002624();
  v1 = *(v0 + 96);
  sub_100016788(*(v0 + 120), *(v0 + 128), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  *(v0 + 136) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);

    v3 = sub_10005E49C;
  }

  else
  {
    v2 = *(v0 + 16);

    v3 = sub_1000172C0;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100017018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100003F58();
  sub_100005464();
  swift_task_alloc();
  sub_100008D5C();
  *(v10 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_100010C30;
  sub_100008E70();

  return sub_1000171C4(v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_1000170E0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1 + 32);
  sub_100008DE4((v1 + a1), *(v1 + a1 + 24));
  return v2 + 8;
}

uint64_t sub_10001710C()
{
  v6 = *(v2 + 152);
  *(v0 + 16) = v1;
  v7 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v4;

  return sub_1000385C4(v6, v7);
}

uint64_t sub_100017144(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10002211C(0x54494D4D4F43, 0xE600000000000000, a3);
}

uint64_t sub_1000171C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for SessionConfiguration.BackendHTTP(0);
  v7[6] = swift_task_alloc();
  v7[7] = *(type metadata accessor for SessionConfiguration.Backend(0) - 8);
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100016DD4, a4, 0);
}

uint64_t sub_1000172C0()
{
  sub_100002624();
  sub_100004500();
  v3 = sub_10000A864(v1, v2);
  v6 = v0[13] + 1;
  v0[12] = v0[17];
  v0[13] = v6;
  if (v6 != v0[11])
  {
    if (v6 >= *(v0[10] + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1000020A0();
      v3 = sub_100006EAC();
      v10 = qword_100095AF8;
      v0[14] = qword_100095AF8;
      if (v10)
      {
        sub_1000616D4();
        sub_1000020A0();
        sub_100006EAC();
        sub_100009A9C();
        sub_100061634();

        sub_100004D7C();
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return _swift_task_switch(v3, v4, v5);
  }

  v7 = v0[2];

  if (!*(*(v7 + 136) + 16))
  {
    v11 = qword_100095AF8;
    v0[18] = qword_100095AF8;
    if (v11)
    {

LABEL_11:
      sub_1000614E8();

      return _swift_task_switch(v3, v4, v5);
    }

    goto LABEL_16;
  }

  sub_100001D4C();

  return v8();
}

uint64_t sub_100017458()
{
  sub_100004680();
  sub_1000183A8(*(v0 + 144), (v0 + 16));
  *(v0 + 120) = *(v0 + 64);
  sub_1000026E4(v0 + 120, &unk_100090270, &qword_10006D778);
  *(v0 + 104) = *(v0 + 80);
  sub_10000D9BC(v0 + 104);
  *(v0 + 128) = *(v0 + 96);
  sub_1000026E4(v0 + 128, &qword_10008E568, &qword_10006D770);
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 136);
  *v5 = *(v0 + 16);
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  sub_100001D4C();

  return v6();
}

uint64_t sub_100017530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100017598(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_10002282C(a1, a2, a3);
}

uint64_t sub_1000175B0()
{

  return swift_slowAlloc();
}

uint64_t sub_1000175DC(float a1)
{
  *v1 = a1;
}

uint64_t sub_100017640()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
    v7 = sub_100016754();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100005284((v3 + 64));
    v10 = *(v3 + 56);
    v11 = *(v3 + 40);
    v12 = *(v3 + 48);
    v13 = *(v3 + 32);
    v14 = *(v3 + 104);
    *v14 = *(v3 + 16);
    *(v14 + 16) = v13;
    *(v14 + 24) = v11;
    *(v14 + 32) = v12;
    *(v14 + 40) = v10;
    sub_100001D4C();

    return v15();
  }
}

void sub_100017780(void *a1, uint64_t a2, char a3)
{
  v7 = ~a3;
  v61 = type metadata accessor for EventValue(0);
  v8 = *(v61 - 8);
  __chkstk_darwin(v61);
  v10 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v7)
  {
    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    sub_100017ED4(a1, a2, 0);
    goto LABEL_8;
  }

  sub_100059EF0(a1, a2, *(v3 + 32));
  if (v12 == 255)
  {
    goto LABEL_6;
  }

  a1 = v11;
  if (v12)
  {
    sub_1000260D4(v11, v12);
LABEL_6:
    a1 = _swiftEmptyArrayStorage;
  }

LABEL_8:
  sub_100017F24();
  v57 = v13;
  v14 = a1[2];
  if (!v14)
  {
LABEL_75:

    return;
  }

  v15 = 0;
  v16 = a1 + 4;
  v53 = 0x8000000100071720;
  v17 = v14;
  v56 = a1;
  v55 = v14;
  v54 = a1 + 4;
  while (v15 < v17)
  {
    memcpy(__dst, &v16[11 * v15], sizeof(__dst));
    if (__dst[7])
    {
      goto LABEL_29;
    }

    v18 = __dst[1];
    sub_100020478(__dst, v62);

    v59 = sub_100051058(v19);
    v20 = *(v18 + 16);
    if (v20)
    {
      v62[0] = _swiftEmptyArrayStorage;
      sub_100060BA4(0, v20, 0);
      v21 = v62[0];
      v22 = (v18 + 40);
      do
      {
        v23 = *v22;
        *v10 = *(v22 - 1);
        v10[1] = v23;
        swift_storeEnumTagMultiPayload();
        v62[0] = v21;
        v25 = v21[2];
        v24 = v21[3];

        if (v25 >= v24 >> 1)
        {
          sub_100060BA4((v24 > 1), v25 + 1, 1);
          v21 = v62[0];
        }

        v21[2] = v25 + 1;
        sub_100017530(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25, type metadata accessor for EventValue);
        v22 += 2;
        --v20;
      }

      while (v20);
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v26 = __dst[4];
    v27 = __dst[5];

    v29 = sub_1000182BC(v28);

    v31 = sub_1000182BC(v30);
    v32 = v26 == 0x776F6C6C61 && v27 == 0xE500000000000000;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = &unk_100087E30;
      v34 = &off_1000881C8;
LABEL_25:
      v60 = v34;
      v35 = v31;
      v36 = v29;
      sub_1000204EC(__dst);
      goto LABEL_26;
    }

    v44 = v26 == 0x65766F6D6572 && v27 == 0xE600000000000000;
    if (v44 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = &unk_100087EB0;
      v34 = &off_1000881E8;
      goto LABEL_25;
    }

    v45 = v26 == 0x363532616873 && v27 == 0xE600000000000000;
    if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = &unk_100087F30;
      v34 = &off_100088208;
      goto LABEL_25;
    }

    v46 = v26 == 0x73696C6574696877 && v27 == 0xEF7365756C615674;
    if (v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = &unk_100087FB0;
      v34 = &off_100088228;
      goto LABEL_25;
    }

    v47 = v26 == 0x73696C6B63616C62 && v27 == 0xEF7365756C615674;
    if (v47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = &unk_100088030;
      v34 = &off_100088248;
      goto LABEL_25;
    }

    v48 = v26 == 0xD000000000000018 && v53 == v27;
    if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = &unk_1000880B0;
      v34 = &off_100088268;
      goto LABEL_25;
    }

    v49 = v26 == 0x646E65707061 && v27 == 0xE600000000000000;
    if (v49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v33 = &unk_100088130;
      v34 = &off_100088288;
      goto LABEL_25;
    }

    if (v26 == 0x646E6570657270 && v27 == 0xE700000000000000)
    {
      v33 = &unk_1000881B0;
      v34 = &off_1000882A8;
      goto LABEL_25;
    }

    v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1000204EC(__dst);
    if ((v51 & 1) == 0)
    {

      a1 = v56;
      v14 = v55;
      v16 = v54;
      goto LABEL_29;
    }

    v35 = v31;
    v36 = v29;
    v33 = &unk_1000881B0;
    v60 = &off_1000882A8;
LABEL_26:
    v37 = v60;
    v38 = v60[1];
    v62[3] = v33;
    v62[4] = v60;
    v58 = sub_100025FDC(v62);
    v39 = v38(v59, v21, v36, v35, v33, v37);
    v64 = v57;
    v40 = *(v57 + 16);
    if (v40 >= *(v57 + 24) >> 1)
    {
      sub_100017F24();
      v57 = v39;
      v64 = v39;
    }

    __chkstk_darwin(v39);
    v42 = &v52 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v43 + 16))(v42, v58, v33);
    sub_10002603C(v40, v42, &v64, v33, v60);
    sub_100005284(v62);
    a1 = v56;
    v14 = v55;
    v16 = v54;
LABEL_29:
    if (++v15 == v14)
    {
      goto LABEL_75;
    }

    v17 = a1[2];
  }

  __break(1u);
}

void sub_100017EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

void sub_100017F24()
{
  sub_100007BB0();
  if ((v3 & 1) == 0 || (sub_100001E9C(), v4 == v5))
  {
LABEL_6:
    sub_1000043B0();
    if (v2)
    {
      sub_1000228D4(&qword_10008E230, &qword_10006CC90);
      v6 = swift_allocObject();
      v7 = j__malloc_size(v6);
      sub_10000BBA0(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_10000511C();
        sub_10005FD40(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1000228D4(&qword_10008E238, &qword_10006CC98);
    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100003D10();
  if (!v4)
  {
    sub_100009798();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_100018000(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000228D4(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000180FC()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100003F30(v2, v5, &qword_10008E228, &qword_10006CC88);
  v8 = sub_100008F24();
  type metadata accessor for SessionConfiguration.Backend(v8);
  sub_10000B6C4();
  sub_1000170D4();
  if (v1)
  {
    v10 = sub_10000CD40(v9);
    sub_10005FD80(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

uint64_t sub_1000181C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018228(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, void))
{
  v6 = Set.init(minimumCapacity:)();
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      a4(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

BOOL sub_1000182F8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1000183A8(void *a1@<X0>, void *a2@<X8>)
{
  v170 = a2;
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  v163 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  sub_100001EAC();
  v162 = v6 - v5;
  v161 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  __chkstk_darwin(v161);
  sub_100001EAC();
  v167 = (v8 - v7);
  v9 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  __chkstk_darwin(v9 - 8);
  v184 = &v158 - v10;
  v187 = type metadata accessor for URL();
  sub_100001EDC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_10000286C();
  v166 = v14 - v15;
  __chkstk_darwin(v16);
  v165 = &v158 - v17;
  v191 = type metadata accessor for Locale();
  sub_100001EDC();
  v19 = v18;
  __chkstk_darwin(v20);
  sub_10000286C();
  v186 = (v21 - v22);
  __chkstk_darwin(v23);
  v188 = &v158 - v24;
  v25 = a1[3];
  v26 = a1[4];
  sub_100008DE4(a1, v25);
  v192 = (*(v26 + 16))(v25, v26);
  v28 = v27;
  v29 = a1[3];
  v30 = a1[4];
  v185 = a1;
  sub_100008DE4(a1, v29);
  v200 = (*(v30 + 24))(v29, v30);
  v171 = v2;
  v32 = *v2;
  v33 = *(*v2 + 64);
  v178 = *v2 + 64;
  v34 = 1 << *(v32 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v190 = v19 + 8;
  v164 = (v12 + 32);
  v159 = (v12 + 8);
  v160 = (v12 + 16);
  v38 = v31;

  v39 = v36;
  v40 = v37;
  v41 = 0;
  v199 = 0;
  v172 = 2;
  *&v42 = 136446466;
  v168 = v42;
  *&v42 = 136315138;
  v174 = v42;
  v173 = _swiftEmptyArrayStorage;
  v189 = v28;
  v198 = v38;
  v175 = v37;
  v176 = v32;
  while (v39)
  {
LABEL_9:
    v44 = __clz(__rbit64(v39));
    v39 &= v39 - 1;
    v45 = v44 | (v41 << 6);
    v46 = (*(v32 + 56) + 24 * v45);
    v47 = v46[1];
    if (v47)
    {
      v48 = v46[2];
      v196 = *(v48 + 16);
      if (v196)
      {
        v182 = v41;
        v183 = v39;
        v49 = (*(v32 + 48) + 16 * v45);
        v50 = v49[1];
        v169 = *v49;
        v51 = *v46;
        v195 = v48 + 32;
        v179 = v50;

        v180 = v51;
        v181 = v47;
        sub_10001BBF0(v51, v47, v48);
        v52 = 0;
        v197 = v48;
        while (1)
        {
          if (v52 >= *(v48 + 16))
          {
            goto LABEL_110;
          }

          memcpy(v207, (v195 + 240 * v52), 0xE9uLL);
          if (!v207[1])
          {
            break;
          }

          v203 = v207[0];
          v204 = v207[1];
          v201 = 44;
          v202 = 0xE100000000000000;
          v53 = sub_10001F54C(v207, &v205);
          sub_10001F5A8(v53, v54, v55);
          v56 = StringProtocol.components<A>(separatedBy:)();
          v205 = v192;
          v206 = v28;
          __chkstk_darwin(v56);
          sub_100009AE0(&v158);
          v58 = sub_1000182F8(sub_10001F5FC, v57, v56);
          sub_1000038F4();

          if (v58)
          {
            v38 = v198;
            goto LABEL_17;
          }

          sub_100019404(v207);
          v38 = v198;
LABEL_72:
          if (++v52 == v196)
          {

            sub_100017EE0(v180, v181, v48);
LABEL_75:
            v32 = v176;
            goto LABEL_86;
          }
        }

        v59 = sub_10001F54C(v207, &v205);
LABEL_17:
        if (v207[3])
        {
          v205 = v207[2];
          v206 = v207[3];
          v203 = 44;
          v204 = 0xE100000000000000;
          sub_10001F5A8(v59, v60, v61);
          v62 = StringProtocol.components<A>(separatedBy:)();
          v63 = v62 + 40;
          v30 = -*(v62 + 16);
          v64 = -1;
          while (1)
          {
            if (v30 + v64 == -1)
            {

              sub_100019404(v207);
              goto LABEL_71;
            }

            if (++v64 >= *(v62 + 16))
            {
              break;
            }

            v65 = v63 + 16;

            v66 = sub_10000CD50();
            v68 = sub_10001F618(v66, v67, v200, v38);

            v63 = v65;
            if (v68)
            {

              v48 = v197;
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_109;
        }

LABEL_23:
        v70 = (v207[27] & 1) == 0 && LOBYTE(v207[27]) != 2;
        if ((DiagnosticLogSubmissionEnabled() & 1) == 0 && !v70)
        {
          sub_100019404(v207);

          if (qword_10008DD18 != -1)
          {
            sub_1000097C8();
            swift_once();
          }

          v117 = type metadata accessor for Logger();
          sub_1000050E4(v117, qword_100095990);

          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.debug.getter();

          v120 = os_log_type_enabled(v118, v119);
          v32 = v176;
          if (v120)
          {
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            v123 = sub_10000287C(v122);
            *(v121 + 14) = sub_100009004(v123);
            v124 = v119;
            v125 = v118;
            v126 = "skipping %{public}s:%{public}s: dnu disabled";
            goto LABEL_84;
          }

LABEL_85:

          sub_100017EE0(v180, v181, v48);
LABEL_86:
          v40 = v175;
          v41 = v182;
          v39 = v183;
          continue;
        }

        v71 = LOBYTE(v207[29]);
        if (sub_10000CB08() && v71 != 2 && (v71 & 1) == 0)
        {
          sub_100019404(v207);

          if (qword_10008DD18 != -1)
          {
            sub_1000097C8();
            swift_once();
          }

          v127 = type metadata accessor for Logger();
          sub_1000050E4(v127, qword_100095990);

          v118 = Logger.logObject.getter();
          v128 = static os_log_type_t.debug.getter();

          v129 = os_log_type_enabled(v118, v128);
          v32 = v176;
          if (v129)
          {
            v121 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            v131 = sub_10000287C(v130);
            *(v121 + 14) = sub_100009004(v131);
            v124 = v128;
            v125 = v118;
            v126 = "skipping %{public}s:%{public}s: PE disabled";
LABEL_84:
            _os_log_impl(&_mh_execute_header, v125, v124, v126, v121, 0x16u);
            swift_arrayDestroy();
            sub_100001D1C(v30);
            sub_100001D1C(v121);
          }

          goto LABEL_85;
        }

        v72 = String._bridgeToObjectiveC()();
        v73 = MGCopyAnswer();

        if (!v73)
        {
          goto LABEL_112;
        }

        v74 = v207[13];
        type metadata accessor for CFString(0);
        v30 = swift_dynamicCastUnknownClassUnconditional();
        v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v77 = v76;

        v79 = v199;
        if (v74)
        {
          v205 = v75;
          v206 = v77;
          __chkstk_darwin(v78);
          sub_100009AE0(&v158);

          v30 = sub_1000182F8(sub_10001F5FC, (&v158 - 4), v74);

          if ((v30 & 1) == 0)
          {
            sub_1000038F4();
            goto LABEL_54;
          }
        }

        v80 = v207[12];
        if (v207[12])
        {
          v30 = &v158;
          v205 = v75;
          v206 = v77;
          __chkstk_darwin(v78);
          sub_100009AE0(&v158);

          v81 = sub_1000182F8(sub_10001F5FC, (&v158 - 4), v80);

          v199 = v79;
          if (v81)
          {
LABEL_55:
            sub_100019404(v207);
LABEL_70:
            v38 = v198;
LABEL_71:
            v48 = v197;
            goto LABEL_72;
          }
        }

        else
        {
          sub_1000038F4();
        }

        v82 = v207[26];
        if (v207[26])
        {

          v83 = v188;
          static Locale.current.getter();
          v84 = Locale.regionCode.getter();
          v85 = sub_100007BBC();
          v87 = v86(v85);
          if (v83)
          {
            v30 = &v158;
            v205 = v84;
            v206 = v83;
            __chkstk_darwin(v87);
            sub_100009AE0(&v158);
            v89 = sub_1000182F8(sub_10001F5FC, v88, v82);
            sub_1000038F4();

            if (!v89)
            {
              goto LABEL_55;
            }

            goto LABEL_47;
          }

LABEL_54:

          goto LABEL_55;
        }

LABEL_47:
        v30 = v197;
        v90 = v207[28];
        v91 = v186;
        static Locale.current.getter();
        v92 = v91;
        v194 = Locale.regionCode.getter();
        v93 = sub_100007BBC();
        v95 = v94(v93);
        v177 = v70;
        if (v91)
        {
          v96 = v199;
          if (v90)
          {
            v97 = 0;
            v193 = *(v90 + 16);
            for (i = (v90 + 40); ; i += 2)
            {
              if (v193 == v97)
              {
                v30 = v197;
                goto LABEL_58;
              }

              if (v97 >= *(v90 + 16))
              {
                goto LABEL_111;
              }

              v99 = *(i - 1);
              v100 = *i;
              v205 = v194;
              v206 = v92;
              __chkstk_darwin(v95);
              sub_100009AE0(&v158);
              swift_bridgeObjectRetain_n();
              v101 = sub_1000182F8(sub_100014E24, (&v158 - 4), v99);

              if (v101)
              {
                break;
              }

              ++v97;
            }

            v28 = v189;
            v30 = v197;
            goto LABEL_62;
          }

LABEL_58:

          v28 = v189;
        }

        else
        {
          v28 = v189;
          v96 = v199;
        }

        if (LOBYTE(v207[7]))
        {
          v100 = 1.0;
        }

        else
        {
          v100 = *&v207[6];
        }

LABEL_62:
        v199 = v96;
        sub_100008DE4(v185, v185[3]);
        v102 = sub_100003D1C();
        if (v103(v102) >= v100)
        {

          sub_100019404(v207);
          sub_100017EE0(v180, v181, v30);
          v38 = v198;
          goto LABEL_75;
        }

        LODWORD(v193) = BYTE1(v207[25]);
        v104 = v207[20];
        v105 = v207[21];
        v106 = v207[22];
        v107 = BYTE1(v207[19]);
        v30 = v207[17];
        v108 = v207[16];
        v109 = v207[5];
        v110 = v184;
        v194 = v207[4];
        URL.init(string:)();
        if (sub_100002694(v110, 1, v187) != 1)
        {
          v196 = v108;
          v132 = v165;
          v133 = v110;
          v134 = v187;
          v135 = *v164;
          (*v164)(v165, v133, v187);
          if (v107 == 2)
          {
            v136 = v172;
          }

          else
          {
            v136 = v107 & 1;
          }

          v172 = v136;
          sub_100017780(v104, v105, v106);
          v138 = v137;
          (*v160)(v166, v132, v134);
          if (v193 == 2)
          {
            v139 = 0;
            v140 = v162;
            v38 = v198;
            v141 = v30;
            if (!v30)
            {
              v142 = _swiftEmptyArrayStorage;
              goto LABEL_98;
            }

LABEL_96:
            v30 = v135;
            v142 = v141;
          }

          else
          {
            v139 = (v193 & 1) == 0;
            v38 = v198;
            v141 = v30;
            if (v30)
            {
              v140 = v162;
              goto LABEL_96;
            }

            v142 = _swiftEmptyArrayStorage;
            v140 = v162;
LABEL_98:
            v30 = v135;
          }

          v143 = sub_1000182BC(v142);
          v144 = v196;
          if (v196)
          {
          }

          else
          {
            v144 = _swiftEmptyArrayStorage;
          }

          sub_100019404(v207);
          v145 = sub_1000182BC(v144);
          v146 = v166;
          v147 = v167;
          v148 = v179;
          *v167 = v169;
          *(v147 + 1) = v148;
          v147[2] = v100;
          v149 = v161;
          (v30)(v147 + *(v161 + 24), v146, v187);
          *(v147 + v149[7]) = v138;
          *(v147 + v149[8]) = v139;
          *(v147 + v149[9]) = v143;
          *(v147 + v149[10]) = v145;
          *(v147 + v149[11]) = v177;
          sub_1000181C4(v147, v140);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000180FC();
            v173 = v153;
          }

          v28 = v189;
          v32 = v176;
          v150 = v197;
          v151 = v173[2];
          if (v151 >= v173[3] >> 1)
          {
            sub_1000180FC();
            v173 = v154;
          }

          sub_100017EE0(v180, v181, v150);
          sub_10001969C(v167);
          (*v159)(v165, v187);
          v152 = v173;
          v173[2] = v151 + 1;
          sub_100017530(v140, v152 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v151, type metadata accessor for SessionConfiguration.Backend);
          goto LABEL_86;
        }

        sub_100025F74(v110);
        if (qword_10008DD18 != -1)
        {
          sub_1000097C8();
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_1000050E4(v111, qword_100095990);
        sub_10001F54C(v207, &v205);
        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.error.getter();
        sub_100019404(v207);
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = swift_slowAlloc();
          v205 = v115;
          *v114 = v174;

          sub_100019404(v207);
          v116 = sub_1000053A0(v194, v109, &v205);

          *(v114 + 4) = v116;
          _os_log_impl(&_mh_execute_header, v112, v113, "invalid URL %s", v114, 0xCu);
          sub_100005284(v115);
          sub_100001D1C(v115);
          sub_100001D1C(v114);
        }

        else
        {

          sub_100019404(v207);
        }

        v28 = v189;
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v43 >= v40)
    {

      v155 = v171[2];

      v157 = v170;
      *v170 = v173;
      v157[1] = _swiftEmptyArrayStorage;
      *(v157 + 16) = 0;
      v157[3] = v155;
      v157[4] = v156;
      *(v157 + 40) = v172;
      return;
    }

    v39 = *(v178 + 8 * v43);
    ++v41;
    if (v39)
    {
      v41 = v43;
      goto LABEL_9;
    }
  }

LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
}

uint64_t sub_100019458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_100019478(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_1000194D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100019510(a1, a2, a3, *v3, &qword_10008FD78, &qword_100070068, &unk_10008FD80, &qword_100070070);
  *v3 = result;
  return result;
}

void *sub_100019510(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000228D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 8);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || &a4[v14 + 4] <= v16 + 4)
    {
      v19 = sub_1000132F8();
      memmove(v19, v20, v21);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000228D4(a7, a8);
    sub_1000132F8();
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_100019638(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionConfiguration.Backend(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001969C(uint64_t a1)
{
  v2 = type metadata accessor for SessionConfiguration.BackendHTTP(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000196F8(uint64_t result)
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
      result = sub_100019C80(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))), &qword_10008F8B0, &qword_10006FBB8, &type metadata for Int);
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

unint64_t sub_10001980C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_19:
    v34 = 0;
    v20 = 0;
    v21 = 1 << *(a3 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(a3 + 56);
    v24 = (v21 + 63) >> 6;
LABEL_23:
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_30:
      v28 = v25 | (v20 << 6);
      v29 = *(*(a3 + 48) + 8 * v28);
      result = static Hasher._hash(seed:_:)();
      v30 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v31 = result & v30;
        if (((*(a4 + 56 + (((result & v30) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v30)) & 1) == 0)
        {
          break;
        }

        result = v31 + 1;
        if (*(*(a4 + 48) + 8 * v31) == v29)
        {
          *(v33 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
          v19 = __OFADD__(v34++, 1);
          if (!v19)
          {
            goto LABEL_23;
          }

          __break(1u);
          goto LABEL_36;
        }
      }
    }

    v26 = v20;
    while (1)
    {
      v20 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v20 >= v24)
      {
        goto LABEL_36;
      }

      v27 = *(a3 + 56 + 8 * v20);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v23 = (v27 - 1) & v27;
        goto LABEL_30;
      }
    }
  }

  else
  {
    v34 = 0;
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
LABEL_6:
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v14 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
      result = static Hasher._hash(seed:_:)();
      v15 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v16 = result & v15;
        v17 = (result & v15) >> 6;
        v18 = 1 << (result & v15);
        if ((v18 & *(a3 + 56 + 8 * v17)) == 0)
        {
          break;
        }

        result = v16 + 1;
        if (*(*(a3 + 48) + 8 * v16) == v14)
        {
          v33[v17] |= v18;
          v19 = __OFADD__(v34++, 1);
          if (!v19)
          {
            goto LABEL_6;
          }

          __break(1u);
          goto LABEL_19;
        }
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_36:

        return sub_100019A9C(v33, a2, v34, a3);
      }

      v13 = *(a4 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100019A9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000228D4(&qword_10008F8B0, &qword_10006FBB8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = static Hasher._hash(seed:_:)();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_100019C80(unint64_t *a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9 = v5;
  v12 = *v5;
  v13 = static Hasher._hash(seed:_:)();
  v14 = ~(-1 << *(v12 + 32));
  while (1)
  {
    v15 = v13 & v14;
    v16 = (1 << (v13 & v14)) & *(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v16)
    {
      break;
    }

    if (*(*(v12 + 48) + 8 * v15) == a2)
    {
      goto LABEL_6;
    }

    v13 = v15 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v9;
  sub_10004EF28(a2, v15, isUniquelyReferenced_nonNull_native, a3, a4, a5);
  *v9 = v19;
LABEL_6:
  result = v16 == 0;
  *a1 = a2;
  return result;
}

void sub_100019D78(Swift::String a1)
{

  String.append(_:)(a1);
}

uint64_t sub_100019D90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10006FE20;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_100019DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000228D4(&qword_10008F360, &qword_100070A20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100019E64(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1000228D4(&unk_100090280, &qword_1000709F8), sub_100003F24(), v2 = static _SetStorage.allocate(capacity:)(), v3 = v2, (v25 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v23 = v1;
    v24 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v24 + 8 * v4++);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v26 = v6;
      String.hash(into:)();
      v7 = Hasher._finalize()();

      sub_100005B84();
      v9 = ~v8;
      while (1)
      {
        v10 = v7 & v9;
        v11 = (v7 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v7 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
        if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
        {

          goto LABEL_17;
        }

        sub_1000680A8();
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {

          goto LABEL_17;
        }

        v7 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v22;
LABEL_17:
      v1 = v23;
      if (v4 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

uint64_t sub_10001A058()
{
  if (qword_10008DDC8 != -1)
  {
    swift_once();
  }

  v0 = qword_100095B08;
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 integerForKey:v1];

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = sub_1000244F8(v2);
  if (v3 == 4)
  {
    if (qword_10008DD18 != -1)
    {
      sub_1000097C8();
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000050E4(v4, qword_100095990);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = v2;
      _os_log_impl(&_mh_execute_header, v5, v6, "invalid environmentType override from defaults: %{public}ld", v7, 0xCu);
      sub_100001D1C(v7);
    }

LABEL_10:
    if (qword_10008DDC0 != -1)
    {
      sub_100001EBC(&qword_10008DDC0);
    }

    if (byte_100095B00)
    {
      return 1;
    }

    else
    {
      return 3;
    }
  }

  v8 = v3;
  if (qword_10008DD18 != -1)
  {
    sub_1000097C8();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000050E4(v9, qword_100095990);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136446466;
    v14 = String.init<A>(describing:)();
    v16 = sub_1000053A0(v14, v15, &v18);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2050;
    *(v12 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v10, v11, "overriding environmentType to %{public}s (%{public}ld) from defaults", v12, 0x16u);
    sub_100005284(v13);
    sub_100001D1C(v13);
    sub_100001D1C(v12);
  }

  return v8;
}

uint64_t sub_10001A320@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  v7 = PropertyListDecoder.init()();
  sub_10001ABB8(v7, v8, v9);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:format:)();
  if (v4)
  {

    v10 = sub_10000CD50();
    return sub_100005954(v10, v11);
  }

  else
  {
    v13 = v24;
    v14 = v26;
    sub_10001F378(a3, v27);
    if (!v15)
    {
      v15 = Dictionary.init(dictionaryLiteral:)();
    }

    v16 = v15;
    if (v25)
    {
      v13 = 86400;
    }

    if (v26)
    {

      v17 = v23;

      v18 = sub_10000CD50();
      sub_100005954(v18, v19);
    }

    else
    {
      v17 = v23;

      v14 = Dictionary.init(dictionaryLiteral:)();

      v20 = sub_10000CD50();
      sub_100005954(v20, v21);
    }

    *a4 = v16;
    *(a4 + 8) = v13;
    *(a4 + 16) = v22;
    *(a4 + 24) = v17;
    *(a4 + 32) = v14;
  }

  return result;
}

uint64_t sub_10001A508(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A550@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000228D4(&qword_10008E558, &qword_10006D768);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - v7;
  v9 = sub_100008DE4(a1, a1[3]);
  sub_10001DD84(v9, v10, v11);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005284(a1);
  }

  v50 = 4;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v41 = v12;
  v49 = 5;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v40 = v14;
  sub_1000228D4(&qword_10008E568, &qword_10006D770);
  v48 = 6;
  sub_10001C654(&qword_10008E570, &qword_10008E568, &qword_10006D770, sub_100026680);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v36 = v46;
  v37 = v6;
  v38 = v5;
  v16 = KeyedDecodingContainer.allKeys.getter();
  v17 = *(v16 + 16);
  v35 = v16;
  if (v17)
  {
    v18 = (v16 + 32);
    v19 = _swiftEmptyArrayStorage;
    v43 = a2;
    while (1)
    {
      v20 = *v18;
      v44 = v18 + 1;
      v45 = v19;
      v21 = 1;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      switch(v20)
      {
        case 1:
          v23 = 0;
          v22 = 1;
          v24 = 1;
          goto LABEL_12;
        case 2:
          v22 = 0;
          v23 = 1;
          v24 = 1;
          goto LABEL_12;
        case 3:
          v22 = 0;
          v23 = 0;
          v21 = 0;
          v24 = 0;
          goto LABEL_12;
        case 4:
          goto LABEL_12;
        case 5:
          v22 = 0;
          v23 = 0;
          v24 = 1;
          goto LABEL_12;
        case 6:
          v22 = 0;
          v23 = 0;
          v24 = 1;
LABEL_12:
          v42 = v24;
          v47 = v21;
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
          LOBYTE(v20) = (v25 & 1) == 0;
          if (v25 & 1) != 0 || (v22)
          {
            goto LABEL_24;
          }

          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
          LOBYTE(v20) = (v26 & 1) != 0 ? 1 : 2;
          if ((v26 | v23))
          {
            goto LABEL_24;
          }

          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            LOBYTE(v20) = 2;
LABEL_24:

            a2 = v43;
            v19 = v45;
            goto LABEL_25;
          }

          if ((v47 | v42) != 1)
          {
            LOBYTE(v20) = 3;
            goto LABEL_24;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v19 = v45;
          if ((v27 & 1) == 0)
          {
            a2 = v43;
            goto LABEL_30;
          }

          LOBYTE(v20) = 3;
          a2 = v43;
LABEL_25:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_10001E0C8();
            v19 = v29;
          }

          v28 = v19[2];
          if (v28 >= v19[3] >> 1)
          {
            sub_10001E0C8();
            v19 = v30;
          }

          v19[2] = v28 + 1;
          *(v19 + v28 + 32) = v20;
LABEL_30:
          v18 = v44;
          if (!--v17)
          {
            goto LABEL_34;
          }

          break;
        default:
          goto LABEL_24;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_34:

  __chkstk_darwin(v31);
  *(&v35 - 2) = v8;
  v32 = sub_10001C920(sub_10001E184, (&v35 - 4), v19);

  v33 = sub_10001E740(v32);
  (*(v37 + 8))(v8, v38);
  result = sub_100005284(a1);
  v34 = v40;
  *a2 = v41;
  *(a2 + 8) = v34;
  BYTE4(v34) = BYTE4(v39);
  *(a2 + 16) = v39;
  *(a2 + 20) = BYTE4(v34) & 1;
  *(a2 + 24) = v36;
  *(a2 + 32) = v33;
  return result;
}

double sub_10001AB70@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10001A550(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_10001ABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E4F8;
  if (!qword_10008E4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4F8);
  }

  return result;
}

uint64_t sub_10001AC0C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return sub_100001F2C(sub_10001AC2C, v2);
}

uint64_t sub_10001AC2C()
{
  v1 = v0[18];
  v2 = v1[3];
  v3 = v1[4];
  sub_100008DE4(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  sub_10000DD08(v4, v5);
  v7 = v6;

  v0[20] = v7;
  if (v7)
  {
    v8 = swift_task_alloc();
    v0[21] = v8;
    *v8 = v0;
    v8[1] = sub_10001BA98;

    return sub_10001ADD8();
  }

  else
  {
    v10 = v0[17];
    *v10 = _swiftEmptyArrayStorage;
    *(v10 + 8) = _swiftEmptyArrayStorage;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1701736302;
    *(v10 + 32) = 0xE400000000000000;
    *(v10 + 40) = 2;
    sub_100001D4C();

    return v11();
  }
}

uint64_t sub_10001ADD8()
{
  sub_100002624();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v5 = sub_1000228D4(&unk_100090260, &qword_10006DC48);
  sub_100001D80(v5);
  v1[35] = sub_100003D60();
  v6 = type metadata accessor for URLResourceValues();
  v1[36] = v6;
  sub_10000392C(v6);
  v1[37] = v7;
  v1[38] = sub_100003D60();
  v8 = type metadata accessor for Date();
  v1[39] = v8;
  sub_10000392C(v8);
  v1[40] = v9;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v1[44] = v10;
  sub_10000392C(v10);
  v1[45] = v11;
  v1[46] = sub_100003D60();
  v12 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v12);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v13 = type metadata accessor for CachedStorebag(0);
  v1[49] = v13;
  sub_100001D80(v13);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();

  return _swift_task_switch(sub_10001B018, v0, 0);
}

uint64_t sub_10001B018()
{
  v90 = v0;
  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  sub_10000EF4C();
  if (sub_100002694(v6, 1, v5) != 1)
  {
    v11 = *(v0 + 408);
    sub_10001C114(*(v0 + 384), v11);
    v88 = *(v11 + 8);
    v12 = *(v11 + 24);
    v86 = *(v11 + 16);
    v87 = *v11;
    v13 = *(v11 + 32);

    v85 = v12;

    v84 = v13;

    sub_1000099D0();
    sub_10001BA40(v11, v14);
LABEL_5:
    v15 = *(v0 + 248);

    *v15 = v87;
    *(v15 + 8) = v88;
    *(v15 + 16) = v86;
    *(v15 + 24) = v85;
    *(v15 + 32) = v84;
    sub_100001D4C();
    goto LABEL_6;
  }

  sub_100005000(*(v0 + 384), &unk_10008F390, &qword_10006EED0);
  v7 = sub_100005394();
  sub_10000F2FC(v7, v8);
  v9 = URL.checkResourceIsReachable()();
  if (v10)
  {

LABEL_11:
    *(v0 + 120) = &unk_100086700;
    *(v0 + 128) = &off_100086940;
    v20 = swift_task_alloc();
    *(v0 + 416) = v20;
    *v20 = v0;
    v20[1] = sub_100065348;
    sub_100017624();

    return sub_1000661E8();
  }

  if (!v9)
  {
    goto LABEL_11;
  }

  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLContentModificationDateKey;
  v19 = NSURLContentModificationDateKey;
  sub_100019E64(inited);
  URL.resourceValues(forKeys:)();
  sub_100068150();
  URLResourceValues.contentModificationDate.getter();
  v22 = sub_10000B798();
  v23(v22, v1);
  result = sub_100002694(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v25 = sub_100012360();
  v26(v25);
  v27 = Data.init(contentsOf:options:)();
  v29 = v28;
  v30 = sub_10001A058();
  sub_100006F6C(v30);
  sub_100011D18(v31);
  static Date.now.getter();
  sub_10000534C();
  static Date.< infix(_:_:)();
  v32 = sub_100008FBC();
  v3(v32);
  if ((v27 & 1) == 0)
  {
    v88 = v1;
    v83 = v3;
    v52 = *(v0 + 392);
    v51 = *(v0 + 400);
    v53 = *(v0 + 376);
    v54 = *(v0 + 272);
    v55 = *(v0 + 56);
    v56 = *(v0 + 80);
    v86 = *(v0 + 72);
    v57 = *(v0 + 88);
    (*(*(v0 + 320) + 16))(v51 + *(v52 + 20), *(v0 + 336), *(v0 + 312));
    v58 = *(v0 + 88);
    v59 = *(v0 + 72);
    *v51 = *(v0 + 56);
    *(v51 + 16) = v59;
    *(v51 + 32) = v58;
    sub_10000525C();
    sub_10001B9E0(v51, v53, v60);
    sub_1000026BC(v53, 0, 1, v52);
    sub_10000277C(v54 + OBJC_IVAR____TtC13rtcreportingd13StorebagCache_cache, v0 + 176);

    v85 = v56;

    sub_10001F3E0();
    swift_endAccess();
    if (qword_10008DDF8 != -1)
    {
      sub_1000020EC(&qword_10008DDF8);
    }

    v84 = v57;
    v87 = v55;
    v61 = type metadata accessor for Logger();
    sub_1000050E4(v61, qword_100095B38);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 400);
    v66 = *(v0 + 360);
    v68 = *(v0 + 344);
    v67 = *(v0 + 352);
    v82 = *(v0 + 336);
    v69 = *(v0 + 312);
    if (v64)
    {
      v79 = *(v0 + 264);
      v81 = *(v0 + 368);
      v70 = *(v0 + 256);
      v80 = *(v0 + 352);
      v71 = sub_100004D20();
      v72 = sub_100004F18();
      sub_1000680F0(v72);
      *v71 = 136446210;
      *(v71 + 4) = sub_1000053A0(v70, v79, &v89);
      _os_log_impl(&_mh_execute_header, v62, v63, "storing storebag %{public}s in cache", v71, 0xCu);
      sub_10000393C();
      sub_100001D1C(v71);

      sub_1000099D0();
      sub_10001BA40(v65, v73);
      (v83)(v82, v69);
      (v83)(v68, v69);
      (*(v66 + 8))(v81, v80);
    }

    else
    {

      sub_1000099D0();
      sub_10001BA40(v65, v75);
      (v83)(v82, v69);
      v76 = sub_1000132F8();
      v83(v76);
      v77 = sub_10000B798();
      v78(v77, v67);
    }

    goto LABEL_5;
  }

  *(v0 + 216) = *(v0 + 56);
  sub_100005000(v0 + 216, &unk_100090270, &qword_10006D778);
  *(v0 + 200) = *(v0 + 72);
  sub_10000D9BC(v0 + 200);
  *(v0 + 224) = *(v0 + 88);
  sub_100005000(v0 + 224, &qword_10008E568, &qword_10006D770);
  if (qword_10008DDF8 != -1)
  {
    sub_1000020EC(&qword_10008DDF8);
  }

  v33 = type metadata accessor for Logger();
  sub_1000050E4(v33, qword_100095B38);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v29 = *(v0 + 256);
    v36 = sub_100004D20();
    v37 = sub_100004F18();
    sub_1000680F0(v37);
    *v36 = 136446210;
    v38 = sub_100005394();
    *(v36 + 4) = sub_1000053A0(v38, v39, v40);
    sub_100038750(&_mh_execute_header, v41, v42, "removing expired storebag %{public}s");
    sub_10000393C();
    sub_100001D1C(v36);
  }

  v43 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v44);
  v46 = v45;
  *(v0 + 240) = 0;
  v47 = [v43 removeItemAtURL:v45 error:v0 + 240];

  if (!v47)
  {
    v74 = sub_100005328();
    _convertNSErrorToError(_:)();

    swift_willThrow();
    (v3)(v29, v4);
    (v3)(v2, v4);
    v43[1]();
    sub_100004518();

    sub_100001D4C();
LABEL_6:
    sub_100017624();

    __asm { BRAA            X1, X16 }
  }

  v48 = *(v0 + 240);
  v49 = swift_task_alloc();
  *(v0 + 448) = v49;
  *v49 = v0;
  sub_100002A38(v49);
  sub_100017624();

  return sub_10001ADD8();
}

uint64_t sub_10001B9E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100003C44();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001BA40(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003C44();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10001BA98()
{
  v2 = *v1;
  sub_100001D58();
  *v3 = v2;
  v4 = *v1;
  sub_100001D58();
  *v5 = v4;

  if (v0)
  {
    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2 + 152);

    return _swift_task_switch(sub_100017458, v8, 0);
  }
}

double sub_10001BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10001BCD4()
{
  sub_100002618();
  sub_100005BD0();
  swift_task_alloc();
  sub_100008D5C();
  *(v0 + 16) = v1;
  *v1 = v2;
  sub_1000091A0(v1);
  sub_100008E44();

  return sub_10001C304(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10001BD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for EventValue(0);
  sub_100001EDC();
  __chkstk_darwin(v4);
  sub_10000286C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  sub_100004CD0();
  __chkstk_darwin(v9);
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100003BC0(0x646F6874656D5FLL, 0xE700000000000000);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  sub_1000098A8();
  sub_1000096D4();
  sub_10000B670();
  sub_10000B670();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return *v7;
    }

    sub_100001FE8();
    sub_10000A80C(v7, v13);
    return 0;
  }

  result = *v7;
  if ((*v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001BF00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001BFF4()
{
  sub_100004680();
  sub_100003B0C();
  v3 = v2;
  sub_100002928();
  *v4 = v3;
  v5 = *v1;
  sub_1000043E4();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
    v7 = *(v3 + 88);

    return _swift_task_switch(sub_10005E598, v7, 0);
  }

  else
  {

    sub_100001D4C();

    return v8();
  }
}

uint64_t sub_10001C114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedStorebag(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C178()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10001C1B8()
{
  sub_100002624();
  v1 = *(v0 + 96);
  sub_100016788(0x6B6E756C7073, 0xE600000000000000, *(v0 + 24), *(v0 + 32), *(v0 + 40));
  *(v0 + 152) = v1;
  if (v1)
  {
    v2 = *(v0 + 16);

    return _swift_task_switch(sub_10005E51C, v2, 0);
  }

  else
  {

    sub_100001D4C();

    return v3();
  }
}

uint64_t sub_10001C2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  return (_swift_task_switch)(sub_10001C330, 0);
}

uint64_t sub_10001C330()
{
  sub_100005464();
  v1 = v0[8];
  ObjectType = swift_getObjectType();
  sub_1000228D4(&unk_10008FD30, &qword_100070028);
  v3 = swift_allocObject();
  v0[12] = v3;
  sub_100011A04(v3, xmmword_10006CAD0);

  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_10001BFF4;
  v5 = v0[7];

  return v7(v3, ObjectType, v5);
}

uint64_t sub_10001C494@<X0>(uint64_t a1@<X8>)
{
  *v1 = a1;
  v1[1] = 0xE700000000000000;
  *(v1 + v2) = 0;

  return type metadata accessor for EventValue(0);
}

char *sub_10001C4B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000228D4(&unk_10008FD30, &qword_100070028);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10001C5CC(char *a1, int64_t a2, char a3)
{
  result = sub_10001C4B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10001C5EC(uint64_t a1)
{
  v2 = type metadata accessor for EventValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C654(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C6D8(uint64_t a1, unint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else
  {
    v7 = a1 == 0x5F68736572666572 && a2 == 0xED0000656C637963;
    if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 5;
    }

    else
    {
      v8 = a1 == 0x765F646572616873 && a2 == 0xEC00000073656C61;
      if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 6;
      }

      else
      {
        v9 = 0;
        while (1)
        {
          v5 = *(&off_100085AF8 + v9++ + 32);
          v10 = 0xE700000000000000;
          v11 = 0x657361656C6572;
          switch(v5)
          {
            case 1:
              v11 = 0x6E695F656C707061;
              v10 = 0xEE006C616E726574;
              break;
            case 2:
              v10 = 0xE400000000000000;
              v11 = 1684366707;
              break;
            case 3:
              break;
            default:
              v11 = 0x6D706F6C65766564;
              v10 = 0xEB00000000746E65;
              break;
          }

          if (v11 == a1 && v10 == a2)
          {
            break;
          }

          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            goto LABEL_33;
          }

          if (v9 == 4)
          {

            return 7;
          }
        }

LABEL_33:
      }
    }
  }

  return v5;
}

void *sub_10001C920(void (*a1)(uint64_t *__return_ptr, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = (a3 + 32);
  v6 = _swiftEmptyArrayStorage;
  if (v4)
  {
    while (1)
    {
      v17 = *v5;
      a1(&v15, &v17, a2);
      if (v3)
      {
        break;
      }

      v7 = v16;
      if (v16)
      {
        v8 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10001EF18();
          v6 = v11;
        }

        v9 = v6[2];
        if (v9 >= v6[3] >> 1)
        {
          sub_10001EF18();
          v6 = v12;
        }

        v6[2] = v9 + 1;
        v10 = &v6[2 * v9];
        *(v10 + 32) = v8;
        v10[5] = v7;
      }

      ++v5;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

void *sub_10001CA44@<X0>(char *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1000228D4(&qword_10008E558, &qword_10006D768);
  sub_10001CB74(v5, v6, v7);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v2)
  {

    sub_1000228D4(&unk_100090270, &qword_10006D778);
    sub_10001C654(&qword_10008E588, &unk_100090270, &qword_10006D778, sub_1000266D4);
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    *a2 = v4;
    a2[1] = v9;
  }

  else
  {
    result = sub_100005954(v9, v10);
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

unint64_t sub_10001CB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E580;
  if (!qword_10008E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E580);
  }

  return result;
}

uint64_t sub_10001CBC8(void *a1)
{
  sub_100008DE4(a1, a1[3]);
  v3 = dispatch thunk of Decoder.codingPath.getter();
  sub_10001CDEC(v3, v20);

  if (v21)
  {
    sub_100008DE4(v20, v21);
    v5 = dispatch thunk of CodingKey.stringValue.getter();
    v7 = v6;
    sub_100005284(v20);
    v8 = v5 == 0x6F7A6E6F67 && v7 == 0xE500000000000000;
    if (v8 || (sub_100009850(0x6F7A6E6F67, 0xE500000000000000) & 1) != 0 || ((v9 = sub_100001F54(), v5 == v9) ? (v10 = v7 == 0xE600000000000000) : (v10 = 0), v10 || (sub_100009850(v9, 0xE600000000000000) & 1) != 0 || ((v11 = sub_100001F54() & 0xFFFFFFFFFFFFLL | 0x685F000000000000, v5 == v11) ? (v13 = v7 == v12) : (v13 = 0), v13 || (sub_100009850(v11, v12) & 1) != 0 || ((v14 = sub_100001F54() & 0xFFFFFFFFFFFFLL | 0x615F000000000000, v5 == v14) ? (v16 = v7 == v15) : (v16 = 0), v16 || (sub_100009850(v14, 0xEA00000000007674) & 1) != 0 || (v5 == 0xD000000000000012 ? (v17 = 0x8000000100071BA0 == v7) : (v17 = 0), v17)))))
    {
    }

    else
    {
      v18 = sub_100009850(0xD000000000000012, 0x8000000100071BA0);

      if ((v18 & 1) == 0)
      {
        v7 = 0;
LABEL_31:
        sub_100005284(a1);
        return v7;
      }
    }

    sub_100009658(a1, v20);
    v19 = sub_10001CE18(v20);
    if (!v1)
    {
      v7 = v19;
    }

    goto LABEL_31;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CDBC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10001CBC8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

double sub_10001CDEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100009658(a1 + 40 * v2 - 8, a2);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10001CE18(void *a1)
{
  v3 = sub_1000228D4(&qword_10008EBD8, &qword_10006E5D0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14[-1] - v5;
  v7 = a1[4];
  v8 = sub_100008DE4(a1, a1[3]);
  sub_10001D044(v8, v9, v10);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005284(a1);
    return v7;
  }

  sub_100008DE4(a1, a1[3]);
  v11 = dispatch thunk of Decoder.codingPath.getter();
  sub_10001CDEC(v11, v14);

  if (v15)
  {
    sub_100008DE4(v14, v15);
    v7 = dispatch thunk of CodingKey.stringValue.getter();
    sub_100005284(v14);
    sub_1000228D4(&qword_10008EBE8, &qword_10006E5D8);
    sub_1000336E0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_100005284(a1);
    return v7;
  }

  __break(1u);
  return result;
}

unint64_t sub_10001D044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008EBE0;
  if (!qword_10008EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008EBE0);
  }

  return result;
}

_BYTE *sub_10001D0B4(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10001D150);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_10001D180@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000228D4(&qword_10008F490, &qword_10006F248);
  sub_100001EDC();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v53 - v9;
  v11 = a1[3];
  v80 = a1;
  v12 = sub_100008DE4(a1, v11);
  sub_10001E35C(v12, v13, v14);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v146 = v2;
    LODWORD(v10) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v5 = 0;
    LODWORD(v17) = 0;
    v18 = 0;
    LODWORD(a2) = 0;
    LODWORD(v81) = 0;
    LODWORD(v82) = 0;
    LODWORD(v83) = 0;
    LODWORD(v84) = 0;
  }

  else
  {
    v18 = v7;
    LOBYTE(v86) = 0;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v79 = v20;
    sub_1000029B0(1);
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v78 = v22;
    sub_1000029B0(2);
    v84 = KeyedDecodingContainer.decode(_:forKey:)();
    v77 = v23;
    sub_1000029B0(3);
    v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v145 = v24 & 1;
    sub_1000029B0(4);
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v76 = v25;
    sub_1000029B0(5);
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v146 = 0;
    v64 = v26;
    v143 = v27 & 1;
    LOBYTE(v85[0]) = 6;
    sub_10001E3BC(v26, v27, v28);
    sub_100007014();
    sub_10000CDB0();
    v81 = v29;
    sub_100001DDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v146 = 0;
    v63 = v86;
    v15 = sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
    LOBYTE(v85[0]) = 7;
    sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370, &protocol witness table for String);
    sub_100007014();
    v66 = v30;
    sub_100001DDC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v75 = v86;
    LOBYTE(v85[0]) = 8;
    sub_100007014();
    v65 = v15;
    LODWORD(v17) = v10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v146 = 0;
    v73 = v86;
    sub_1000029B0(9);
    v31 = v146;
    v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v74 = v32;
    v146 = v31;
    if (v31)
    {
      v33 = sub_100009B60();
      v34(v33);
      sub_1000044A0();
      sub_100002000();
    }

    else
    {
      v17 = &qword_10008F4B0;
      v15 = sub_1000228D4(&qword_10008F4B0, &qword_100070600);
      LOBYTE(v85[0]) = 10;
      sub_10001E418(&qword_10008F4B8, &qword_10008F4B0, &qword_100070600, &protocol witness table for Int);
      sub_100007014();
      v71 = v15;
      LODWORD(v15) = v35;
      sub_100001DDC();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v146 = 0;
      v72 = v86;
      LOBYTE(v85[0]) = 11;
      sub_100007014();
      sub_10000CDB0();
      sub_100001DDC();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v146 = 0;
      v71 = v86;
      sub_1000029B0(12);
      v36 = v146;
      v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v146 = v36;
      if (v36)
      {
        v38 = sub_100009B60();
        v39(v38);
        LODWORD(v83) = 0;
        LODWORD(v84) = 0;
        LODWORD(v10) = 1;
        sub_1000098C0();
        LODWORD(v82) = v40;
      }

      else
      {
        v140 = v37 & 1;
        LOBYTE(v85[0]) = 13;
        sub_1000090A0(&unk_100087B80);
        v146 = 0;
        v60 = v86;
        LOBYTE(v85[0]) = 14;
        sub_1000090A0(&unk_100087B80);
        v146 = 0;
        v59 = v86;
        LODWORD(v17) = sub_1000228D4(&qword_10008F4C0, &qword_10006F250);
        LOBYTE(v85[0]) = 15;
        sub_10004662C();
        sub_100007014();
        sub_100001DDC();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v146 = 0;
        v69 = v87;
        v70 = v86;
        v68 = v88;
        sub_1000029B0(16);
        v41 = v146;
        v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v67 = v42;
        v146 = v41;
        if (!v41)
        {
          LOBYTE(v85[0]) = 17;
          sub_1000090A0(&unk_100087B80);
          v146 = 0;
          v57 = v86;
          LOBYTE(v85[0]) = 18;
          sub_1000090A0(&unk_100087B80);
          v146 = 0;
          v56 = v86;
          LOBYTE(v85[0]) = 19;
          sub_100007014();
          sub_10000CDB0();
          sub_100001DDC();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v146 = 0;
          v66 = v86;
          LOBYTE(v85[0]) = 20;
          sub_1000090A0(&unk_100087B80);
          v146 = 0;
          v46 = v86;
          LOBYTE(v85[0]) = 21;
          sub_1000090A0(&unk_100087B80);
          v146 = 0;
          v55 = v86;
          sub_1000228D4(&qword_10008F4D0, &qword_10006F258);
          LOBYTE(v85[0]) = 22;
          sub_10001EE8C();
          sub_100007014();
          sub_100001DDC();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v146 = 0;
          v65 = v86;
          v131 = 23;
          sub_10000CDB0();
          sub_100001DDC();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v146 = 0;
          v47 = sub_100009B60();
          v48(v47);
          v54 = v132;
          v85[0] = v16;
          v85[1] = v79;
          v85[2] = v21;
          v85[3] = v78;
          v85[4] = v84;
          v85[5] = v77;
          v85[6] = v83;
          LODWORD(v81) = v145;
          LOBYTE(v85[7]) = v145;
          *(&v85[7] + 1) = *v144;
          HIDWORD(v85[7]) = *&v144[3];
          v85[8] = v82;
          v85[9] = v76;
          v85[10] = v64;
          *(&v85[19] + 3) = v138;
          HIDWORD(v85[22]) = *&v137[3];
          *(&v85[22] + 1) = *v137;
          *(&v85[25] + 2) = v135;
          *(&v85[27] + 2) = v133;
          HIDWORD(v53) = v143;
          LOBYTE(v85[11]) = v143;
          BYTE1(v85[11]) = v63;
          *(&v85[11] + 2) = v141;
          HIWORD(v85[11]) = v142;
          v85[12] = v75;
          v85[13] = v73;
          v85[14] = v62;
          v85[15] = v74;
          v85[16] = v72;
          v85[17] = v71;
          v85[18] = v61;
          HIBYTE(v85[19]) = v139;
          HIWORD(v85[25]) = v136;
          HIWORD(v85[27]) = v134;
          v49 = v140;
          LOBYTE(v85[19]) = v140;
          v50 = v59;
          v51 = v60;
          BYTE1(v85[19]) = v60;
          BYTE2(v85[19]) = v59;
          v52 = v69;
          v85[20] = v70;
          v85[21] = v69;
          LOBYTE(v85[22]) = v68;
          v85[23] = v58;
          v85[24] = v67;
          LOBYTE(v85[25]) = v57;
          BYTE1(v85[25]) = v56;
          v85[26] = v66;
          LOBYTE(v85[27]) = v46;
          BYTE1(v85[27]) = v55;
          v85[28] = v65;
          LOBYTE(v85[29]) = v132;
          sub_10001F54C(v85, &v86);
          sub_100005284(v80);
          v86 = v16;
          v87 = v79;
          v88 = v21;
          v89 = v78;
          v90 = v84;
          v91 = v77;
          v92 = v83;
          v93 = v81;
          *v94 = *v144;
          *&v94[3] = *&v144[3];
          v95 = v82;
          v96 = v76;
          v97 = v64;
          v98 = BYTE4(v53);
          v99 = v63;
          v101 = v142;
          v100 = v141;
          v102 = v75;
          v103 = v73;
          v104 = v62;
          v105 = v74;
          v106 = v72;
          v107 = v71;
          v108 = v61;
          v109 = v49;
          v110 = v51;
          v111 = v50;
          v112 = v138;
          v113 = v139;
          v114 = v70;
          v115 = v52;
          v116 = v68;
          *&v117[3] = *&v137[3];
          *v117 = *v137;
          v118 = v58;
          v119 = v67;
          v120 = v57;
          v121 = v56;
          v123 = v136;
          v122 = v135;
          v124 = v66;
          v125 = v46;
          v126 = v55;
          v128 = v134;
          v127 = v133;
          v129 = v65;
          v130 = v54;
          sub_100019404(&v86);
          return memcpy(a2, v85, 0xE9uLL);
        }

        v43 = sub_100009B60();
        v44(v43);
        LODWORD(v84) = 0;
        LODWORD(v10) = 1;
        sub_1000098C0();
        LODWORD(v82) = v45;
        LODWORD(v83) = v45;
      }
    }
  }

  result = sub_100005284(v80);
  if (v10)
  {

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
LABEL_6:

    if ((v16 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

  if (!v16)
  {
LABEL_7:
    if (v5)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:

  if (v5)
  {
LABEL_8:

    if ((v17 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  if (!v17)
  {
LABEL_9:
    if (v18)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:

  if (v18)
  {
LABEL_10:

    if ((a2 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!a2)
  {
LABEL_11:
    if (v81)
    {
      goto LABEL_12;
    }

    goto LABEL_23;
  }

LABEL_22:

  if (v81)
  {
LABEL_12:

    if ((v82 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v82)
  {
LABEL_13:
    if (v83)
    {
      goto LABEL_14;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (v83)
  {
LABEL_14:
    result = sub_100046608(v70, v69, v68);
    if ((v84 & 1) == 0)
    {
      return result;
    }
  }

LABEL_25:
  if (v84)
  {
  }

  return result;
}

unint64_t sub_10001DD84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E560;
  if (!qword_10008E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E560);
  }

  return result;
}

uint64_t sub_10001DDD8(char a1)
{
  result = 0x6E6F6973726576;
  switch(a1)
  {
    case 1:
      result = 0x6E695F656C707061;
      break;
    case 2:
      result = 1684366707;
      break;
    case 3:
      result = 0x657361656C6572;
      break;
    case 4:
      return result;
    case 5:
      result = 0x5F68736572666572;
      break;
    case 6:
      result = 0x765F646572616873;
      break;
    default:
      result = 0x6D706F6C65766564;
      break;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x10001DFB4);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10001DFDC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10001C6D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Storebag._StorebagRoot.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 6;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x10001E0B4);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

void sub_10001E0C8()
{
  sub_100007BB0();
  if ((v4 & 1) == 0 || (sub_100001E9C(), v5 == v6))
  {
LABEL_6:
    sub_1000043B0();
    if (v3)
    {
      sub_1000228D4(&qword_10008E338, &qword_10006D180);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * v8 - 64;
      if (v1)
      {
LABEL_8:
        v9 = sub_10000511C();
        sub_10005FD18(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = sub_100007A14();
    memcpy(v12, v13, v14);
    goto LABEL_11;
  }

  sub_100003D10();
  if (!v5)
  {
    sub_100009798();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_10001E1A0()
{
  sub_100004680();
  sub_100003B0C();
  v3 = *(v2 + 88);
  v4 = *v1;
  sub_1000043E4();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_100035CB4;
  }

  else
  {
    v7 = sub_100035878;
  }

  return _swift_task_switch(v7, v3, 0);
}

uint64_t getEnumTagSinglePayload for BackendGroup.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

void *sub_10001E308@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001D180(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0xE9uLL);
  }

  return result;
}

unint64_t sub_10001E35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F498;
  if (!qword_10008F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F498);
  }

  return result;
}

unint64_t sub_10001E3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F4A0;
  if (!qword_10008F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4A0);
  }

  return result;
}

uint64_t sub_10001E418(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001E480(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE9)
  {
    if (a2 + 23 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 23) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 24;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v5 = v6 - 24;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10001E508@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v25 = a4;
  v21 = type metadata accessor for StorebagSectionMaybeShared(0, a2, a3, a5);
  sub_100001EDC();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v20 = (&v20 - v13);
  sub_100008DE4(a1, a1[3]);
  sub_100003E74();
  dispatch thunk of Decoder.singleValueContainer()();
  if (v5)
  {

    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_100063B5C(v22);
    sub_100009658(a1, v24);
    dispatch thunk of Decodable.init(from:)();
    v15 = v21;
    swift_storeEnumTagMultiPayload();
    v16 = *(v8 + 32);
    v17 = v20;
    v16(v20, v12, v15);
  }

  else
  {
    sub_1000096BC(v22, v24);
    sub_100008DE4(v24, v24[3]);
    sub_100003E74();
    v14 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v17 = v20;
    v15 = v21;
    *v20 = v14;
    v17[1] = v18;
    swift_storeEnumTagMultiPayload();
    sub_100005284(v24);
    v16 = *(v8 + 32);
  }

  v16(v25, v17, v15);
  return sub_100005284(a1);
}

void *sub_10001E740(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000228D4(&unk_10008FDF0, &qword_10006E8E0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v2;
  sub_10001EFFC(a1, 1, &v4);
  return v4;
}

unint64_t sub_10001E7E8(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  v2 = Hasher._finalize()();

  return sub_10001F2C4(v1, v2);
}

unint64_t sub_10001E858()
{
  result = qword_10008E790;
  if (!qword_10008E790)
  {
    type metadata accessor for EventValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E790);
  }

  return result;
}

uint64_t sub_10001E8B0(uint64_t result, int a2, int a3)
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

uint64_t sub_10001E8EC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

__n128 sub_10001E92C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10001E938()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_10001E968(char a1)
{
  result = 0x746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x65636976726573;
      break;
    case 2:
      result = 0x6C72755F74736F70;
      break;
    case 3:
    case 14:
    case 18:
      result = 0xD000000000000012;
      break;
    case 4:
    case 5:
    case 21:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x5F64656C62616E65;
      break;
    case 10:
      result = 0x6C625F746E657665;
      break;
    case 11:
      result = 0x68775F746E657665;
      break;
    case 12:
      result = 0x68745F746E657665;
      break;
    case 13:
      result = 0x6574696465707865;
      break;
    case 15:
      result = 0x737265746C6966;
      break;
    case 16:
      result = 0x635F646568736168;
      break;
    case 17:
      result = 0x6863726172656968;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x656469727265766FLL;
      break;
    case 22:
      result = 0xD00000000000001FLL;
      break;
    case 23:
      result = 0x5F656C6261736964;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_10001EC54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
        JUMPOUT(0x10001ED20);
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_10001ED48(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001EE14);
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

unint64_t sub_10001EE8C()
{
  result = qword_10008F4D8;
  if (!qword_10008F4D8)
  {
    v1 = sub_100025D78(&qword_10008F4D0, &qword_10006F258);
    sub_100046690(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F4D8);
  }

  return result;
}

void sub_10001EF18()
{
  sub_100007BB0();
  if ((v3 & 1) == 0 || (sub_100001E9C(), v4 == v5))
  {
LABEL_6:
    sub_1000043B0();
    if (v2)
    {
      v6 = sub_1000228D4(&qword_10008E340, &qword_10006D188);
      v7 = sub_10000FF3C(v6);
      v8 = j__malloc_size(v7);
      sub_100004604(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000511C();
        sub_10001EFDC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1000228D4(&qword_10008E348, &qword_10006D190);
    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100003D10();
  if (!v4)
  {
    sub_100009798();
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_10001EFDC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

uint64_t sub_10001EFFC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v27 == v5)
    {
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_22;
    }

    v8 = *i;
    v7 = *(i - 8);
    v9 = *a3;
    v10 = sub_10001E7E8(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    v16 = v11;
    v17 = v9[3];

    if (v17 < v14)
    {
      break;
    }

    if (a2)
    {
      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1000228D4(&qword_10008EE30, &qword_10006E8E8);
      _NativeDictionary.copy()();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v20 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v20[6] + v15) = v7;
    *(v20[7] + 8 * v15) = v8;
    v21 = v20[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    v20[2] = v23;
    ++v5;
    a2 = 1;
  }

  sub_10005FFC0(v14, a2 & 1);
  v18 = sub_10001E7E8(v7);
  if ((v16 & 1) != (v19 & 1))
  {
    goto LABEL_21;
  }

  v15 = v18;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  swift_allocError();
  swift_willThrow();

  swift_errorRetain();
  sub_1000228D4(&unk_10008E6E0, &qword_10006F890);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

LABEL_22:
  _StringGuts.grow(_:)(30);
  v25._object = 0x8000000100071D70;
  v25._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v25);
  _print_unlocked<A, B>(_:_:)();
  v26._countAndFlagsBits = 39;
  v26._object = 0xE100000000000000;
  String.append(_:)(v26);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_10001F2C4(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_10001F324(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

__n128 sub_10001F364(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_10001F378(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_10001E7E8(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_10001F3C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_10001F3E0()
{
  sub_1000054BC();
  sub_100002654();
  v3 = sub_1000228D4(&unk_10008F390, &qword_10006EED0);
  sub_100001D80(v3);
  sub_100003EC8();
  __chkstk_darwin(v4);
  v5 = sub_100005B54();
  type metadata accessor for CachedStorebag(v5);
  sub_100003C44();
  __chkstk_darwin(v6);
  sub_100001EAC();
  if (sub_100002694(v0, 1, v7) == 1)
  {
    v8 = sub_10000BF10();
    sub_100005000(v8, v9, &qword_10006EED0);
    sub_10000B728();
    v10 = sub_10000C6AC();
    sub_1000456C4(v10, v11, v12, v13);

    sub_100005000(v2, &unk_10008F390, &qword_10006EED0);
  }

  else
  {
    sub_10000BF10();
    sub_10000B670();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_1000119A4();
    sub_100045954(v14, v15, v16, v17);

    *v1 = v18;
  }

  sub_10000CE54();
}

unint64_t sub_10001F5A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E500;
  if (!qword_10008E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E500);
  }

  return result;
}

uint64_t sub_10001F618(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{

  do
  {
    while (1)
    {
      v4 = String.Iterator.next()();
      if (!v4.value._object)
      {

        object = String.Iterator.next()().value._object;

        if (object)
        {
          goto LABEL_15;
        }

        return 1;
      }

      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (v4.value._countAndFlagsBits != v5.value._countAndFlagsBits || v4.value._object != v5.value._object)
      {
        break;
      }
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  while ((v7 & 1) != 0);

LABEL_15:

  return 0;
}

uint64_t sub_10001F75C(void *a1)
{
  v3 = sub_100009658(a1, v9);
  sub_10001F844(v3, v4, v5);
  v6 = Array<A>.init(from:)();
  if (v1)
  {

    sub_100009658(a1, v9);
    v7 = Array<A>.init(from:)();
  }

  else
  {
    v7 = v6;
  }

  sub_100005284(a1);
  return v7;
}

unint64_t sub_10001F844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F5E8;
  if (!qword_10008F5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F5E8);
  }

  return result;
}

void *sub_10001F898@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000228D4(&qword_10008FF10, &unk_1000705F0);
  sub_100001EDC();
  __chkstk_darwin(v5);
  v73 = a1;
  v6 = sub_100008DE4(a1, a1[3]);
  sub_10001FFD4(v6, v7, v8);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100005284(a1);
  }

  v71 = a2;
  v85 = _swiftEmptyArrayStorage;
  sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
  LOBYTE(v74[0]) = 0;
  sub_10001E418(&qword_10008F4A8, &qword_10008E4E8, &qword_10006D370, &protocol witness table for String);
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v75[0])
  {
    sub_100062F04(v75[0]);
  }

  LOBYTE(v74[0]) = 1;
  sub_1000099AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100062F04(v75[0]);
  sub_1000047E8(1);
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = v10;
  v11 = v9;
  v12 = v85;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000039D8();
    sub_100020328();
    v12 = v44;
  }

  v14 = v12[2];
  v13 = v12[3];
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    sub_100009128(v13);
    sub_100020328();
    v15 = v65;
    v12 = v45;
  }

  v12[2] = v15;
  v16 = &v12[2 * v14];
  v16[4] = v11;
  v16[5] = v67;
  v85 = v12;
  v84 = _swiftEmptyArrayStorage;
  LOBYTE(v74[0]) = 2;
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v75[0])
  {
    sub_100062F04(v75[0]);
  }

  LOBYTE(v74[0]) = 3;
  sub_1000099AC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100062F04(v75[0]);
  sub_1000047E8(3);
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = v18;
  v68 = v17;
  v20 = v84;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1000039D8();
    sub_100020328();
    v20 = v46;
  }

  v21 = v20[2];
  if (v21 >= v20[3] >> 1)
  {
    sub_100020328();
    v20 = v47;
  }

  v20[2] = v21 + 1;
  v22 = &v20[2 * v21];
  v22[4] = v68;
  v22[5] = v19;
  v84 = v20;
  v83 = _swiftEmptyArrayStorage;
  sub_1000228D4(&qword_10008F4B0, &qword_100070600);
  LOBYTE(v74[0]) = 4;
  sub_10001E418(&qword_10008F4B8, &qword_10008F4B0, &qword_100070600, &protocol witness table for Int);
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v75[0])
  {
    sub_100062FC4(v75[0]);
  }

  sub_1000047E8(5);
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if ((v24 & 1) == 0)
  {
    v69 = v23;
    v25 = v83;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = sub_1000039D8();
      sub_10002325C(v48, v49, v50, v83);
      v25 = v51;
    }

    v27 = v25[2];
    v26 = v25[3];
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v52 = sub_100009128(v26);
      sub_10002325C(v52, v53, v54, v25);
      v28 = v65;
      v25 = v55;
    }

    v25[2] = v28;
    v25[v27 + 4] = v69;
    v83 = v25;
  }

  v82 = _swiftEmptyArrayStorage;
  LOBYTE(v74[0]) = 6;
  sub_1000099AC();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v75[0])
  {
    sub_100062FC4(v75[0]);
  }

  sub_1000047E8(7);
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v82;
  if ((v32 & 1) == 0)
  {
    v33 = v30;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1000039D8();
      sub_10002325C(v56, v57, v58, v82);
      v31 = v59;
    }

    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      sub_10002325C(v34 > 1, v35 + 1, 1, v31);
      v31 = v60;
    }

    v31[2] = v35 + 1;
    v31[v35 + 4] = v33;
    v82 = v31;
  }

  v70 = v85;
  v37 = v83;
  v36 = v84;
  sub_1000047E8(8);
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v39;
  v64 = v38;
  v76 = 9;
  sub_100020424(v38, v39, v40);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = sub_1000020D8();
  v42(v41);
  v72 = v77;
  v62 = v79;
  v63 = v78;
  v61 = v80;
  v43 = v81;
  v74[0] = v70;
  v74[1] = v36;
  v74[2] = v37;
  v74[3] = v31;
  v74[4] = v64;
  v74[5] = v66;
  v74[6] = v77;
  v74[7] = v78;
  v74[8] = v79;
  v74[9] = v80;
  v74[10] = v81;
  sub_100020478(v74, v75);
  sub_100005284(v73);
  v75[0] = v70;
  v75[1] = v36;
  v75[2] = v37;
  v75[3] = v31;
  v75[4] = v64;
  v75[5] = v66;
  v75[6] = v72;
  v75[7] = v63;
  v75[8] = v62;
  v75[9] = v61;
  v75[10] = v43;
  sub_1000204EC(v75);
  return memcpy(v71, v74, 0x58uLL);
}

void *sub_10001FF88@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001F898(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

unint64_t sub_10001FFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FF18;
  if (!qword_10008FF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008FF18);
  }

  return result;
}

uint64_t sub_100020028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10001F75C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100020058(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100020094(char a1)
{
  result = 1937335659;
  switch(a1)
  {
    case 1:
      result = 7955819;
      break;
    case 2:
      result = 0x7365756C6176;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x69726F6765746163;
      break;
    case 5:
      result = 0x79726F6765746163;
      break;
    case 6:
      result = 0x7365707974;
      break;
    case 7:
      result = 1701869940;
      break;
    case 8:
      result = 0x6E6F69746361;
      break;
    case 9:
      result = 0x6F697469646E6F63;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_1000201AC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
        JUMPOUT(0x100020278);
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000202A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void sub_100020328()
{
  sub_100007BB0();
  if ((v3 & 1) == 0 || (sub_100001E9C(), v4 == v5))
  {
LABEL_6:
    sub_1000043B0();
    if (v2)
    {
      v6 = sub_1000228D4(&unk_10008FD90, &qword_10006CC48);
      v7 = sub_10000FF3C(v6);
      v8 = j__malloc_size(v7);
      sub_100004604(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000511C();
        sub_10001EFDC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100003D10();
  if (!v4)
  {
    sub_100009798();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1000203DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001FFD4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

unint64_t sub_100020424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008FF20[0];
  if (!qword_10008FF20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10008FF20);
  }

  return result;
}

uint64_t sub_1000204D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100020548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000205AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100003F58();
  sub_100005464();
  sub_10001605C();
  v10 = swift_task_alloc();
  v11 = sub_100003900(v10);
  *v11 = v12;
  sub_100001F7C(v11);
  sub_1000127DC();
  sub_100008E70();

  return sub_10002063C(v13, v14, v15, v16, v17, v18);
}

uint64_t sub_10002063C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v7 = swift_task_alloc();
  v6[14] = v7;
  *v7 = v6;
  v7[1] = sub_10001E1A0;

  return static Task<>.sleep(nanoseconds:)(1000000000);
}

uint64_t sub_100020714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100002694(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002075C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();

  return sub_1000026BC(a1, v5, a3, v6);
}

uint64_t sub_1000207E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002448C(*v1);
  *a1 = result;
  return result;
}

BOOL sub_10002081C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100085D40, v2);

  return v3 != 0;
}

BOOL sub_100020864(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100085D78, v2);

  return v3 != 0;
}

uint64_t sub_10002097C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000209B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020A20()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020AB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020AEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020B2C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100020B7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100020BDC()
{
  type metadata accessor for Date();
  sub_100003C44();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100020D4C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100020D94()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100020DD4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020E8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100020ECC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100020F54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_1000047D8(a3, result);
  }

  return result;
}

uint64_t sub_100020F9C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002107C()
{
  swift_unknownObjectRelease();

  sub_100005284((v0 + 64));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000210CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = sub_100002694(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100021114(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for URL();

  return sub_1000026BC(a1, v5, a3, v6);
}

uint64_t sub_1000211D0()
{
  v1 = sub_1000228D4(&unk_1000904F0, &qword_100070D40);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

const char *sub_1000212C0(int a1, uint64_t a2, unint64_t a3)
{
  v4 = 0x6F727245204C5153;
  if (a3)
  {
    v4 = a2;
  }

  v11 = v4;

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);

  result = sqlite3_errstr(a1);
  if (result)
  {
    v7 = String.init(cString:)();
    v9 = v8;

    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000213CC(char a1)
{
  switch(a1)
  {
    case 1:
      sub_100009AC8();
      break;
    case 2:
    case 3:
      return;
    default:
      sub_100001D10();
      break;
  }
}

void sub_100021444(char a1)
{
  switch(a1)
  {
    case 1:
      sub_100009AC8();
      break;
    case 2:
    case 3:
      return;
    default:
      sub_100001D10();
      break;
  }
}

Swift::Int sub_1000214E4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_100021548(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10002159C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  sub_100001EAC();
  v6 = v5 - v4;
  v7 = type metadata accessor for SQLiteDB.Location(0);
  __chkstk_darwin(v7 - 8);
  sub_100001EAC();
  v10 = v9 - v8;
  sub_1000234A4(v1, v9 - v8);
  if (sub_100002694(v10, 1, v2) == 1)
  {
    return 0x3A79726F6D656D3ALL;
  }

  (*(v3 + 32))(v6, v10, v2);
  v11 = URL.path.getter();
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t *sub_100021704(uint64_t a1)
{
  v2 = v1;
  *(v2 + 24) = 0;
  v12 = 0;
  sub_10002159C();
  v4 = String.utf8CString.getter();

  v5 = sqlite3_open_v2((v4 + 32), &v12, 32774, 0);

  v9 = v12;
  if (!v12 || v5)
  {
    sub_10002282C(v6, v7, v8);
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = 0xD000000000000017;
    *(v10 + 16) = 0x8000000100071450;
    swift_willThrow();
    sub_100023508(a1, type metadata accessor for SQLiteDB.Location);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_100023508(a1, type metadata accessor for SQLiteDB.Location);
    *(v2 + 16) = v9;
  }

  return v2;
}

uint64_t sub_100021888()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    *(v0 + 24) = 1;
    return sqlite3_close_v2(*(v0 + 16));
  }

  return result;
}

uint64_t sub_1000218A4()
{
  sub_100021888();

  return _swift_deallocClassInstance(v0, 25, 7);
}

uint64_t sub_1000218D8()
{
  v1 = sqlite3_expanded_sql(*(v0 + 16));
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = String.init(cString:)();
  sqlite3_free(v2);
  return v3;
}

uint64_t sub_100021934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v47 = a2;
  v48 = a4;
  v49 = type metadata accessor for EventValue(0);
  __chkstk_darwin(v49);
  v50 = (&v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v53);
  v52 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = (v9 + 8);
  while (1)
  {
    v10 = sub_10000C50C();
    if (v5)
    {
    }

    v11 = v10;
    if (!v10)
    {
    }

    v12 = *(v10 + 16);

    if (!sqlite3_column_text(v12, 1))
    {

      sub_100022DA8(v35, v36, v37);
      swift_allocError();
      *v38 = 0;
      swift_willThrow();
      goto LABEL_18;
    }

    String.init(cString:)();

    v13 = sqlite3_column_int64(*(v11 + 16), 0);
    v14 = a3;

    v15 = v52;
    static String.Encoding.utf8.getter();
    v16 = String.data(using:allowLossyConversion:)();
    v18 = v17;

    (*v51)(v15, v53);
    if (v18 >> 60 == 15)
    {

      sub_100022DFC(v39, v40, v41);
      swift_allocError();
      swift_willThrow();
      goto LABEL_18;
    }

    v19 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v54 = 0;
    v21 = [v19 JSONObjectWithData:isa options:0 error:&v54];

    v22 = v54;
    if (!v21)
    {
      v42 = v22;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      sub_100022E50(v16, v18);
      goto LABEL_18;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    v23 = v50;
    sub_1000440BC(v55, v50);
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      break;
    }

    sub_100005284(v55);
    sub_100022E50(v16, v18);
    v24 = *v23;
    v25 = v48;
    v26 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100014E70(0, *(v26 + 16) + 1, 1, v26, &unk_10008E1D0, &unk_10006CC30, &type metadata for CachedEvent, sub_10005FE9C);
      v26 = v32;
      *v48 = v32;
    }

    v29 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_100014E70(v28 > 1, v29 + 1, 1, v26, &unk_10008E1D0, &unk_10006CC30, &type metadata for CachedEvent, sub_10005FE9C);
      v26 = v33;
      *v48 = v33;
    }

    *(v26 + 16) = v29 + 1;
    v30 = (v26 + 32 * v29);
    v31 = v47;
    v30[4] = v13;
    v30[5] = v31;
    a3 = v14;
    v30[6] = v14;
    v30[7] = v24;
  }

  v43 = sub_100023508(v23, type metadata accessor for EventValue);
  sub_100022DFC(v43, v44, v45);
  swift_allocError();
  swift_willThrow();
  sub_100022E50(v16, v18);
  sub_100005284(v55);
LABEL_18:
}

uint64_t (*sub_100021E98(uint64_t a1, uint64_t (*a2)(uint64_t)))(uint64_t)
{
  v4 = sub_10000C50C();
  if (!v2)
  {
    if (v4)
    {
      a2 = a2(v4);
      if (sub_10000C50C())
      {
        do
        {
        }

        while (sub_10000C50C());
        v12 = sub_100022880(0, v10, v11);
        v13 = sub_100004F00(&type metadata for DBError, v12);
        sub_100009728(v13, v14);
      }
    }

    else
    {
      v7 = sub_100022880(0, v5, v6);
      sub_100004F00(&type metadata for DBError, v7);
      *v8 = 0;
      swift_willThrow();
    }
  }

  return a2;
}

uint64_t sub_100021F80(uint64_t a1)
{
  v1 = sqlite3_column_count(*(a1 + 16));
  if (v1 == 1)
  {

    return sub_100022758(v4, 0);
  }

  else
  {
    sub_100022880(v1, v2, v3);
    swift_allocError();
    *v6 = 2;
    return swift_willThrow();
  }
}

sqlite3_int64 sub_100021FFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sqlite3_column_count(v1);
  if (v2 == 1)
  {
    return sqlite3_column_int64(v1, 0);
  }

  sub_100022880(v2, v3, v4);
  swift_allocError();
  *v6 = 2;
  return swift_willThrow();
}

uint64_t sub_100022084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 24))
  {
    v5 = sub_10002282C(a1, a2, a3);
    sub_100004F00(&type metadata for SQLError, v5);
    *v6 = 1;
    *(v6 + 8) = 0xD00000000000001DLL;
    *(v6 + 16) = 0x8000000100071310;
    return swift_willThrow();
  }

  else
  {
    v8 = sub_100008CE4();
    result = sub_10002211C(v8, v9, v10);
    if (!v4)
    {
      *(v3 + 24) = 1;
    }
  }

  return result;
}

uint64_t sub_10002211C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 112);
  if (*(v4 + 24))
  {
    v5 = sub_100022880(a1, a2, a3);
    sub_100004F00(&type metadata for DBError, v5);
    *v6 = 3;
  }

  else
  {
    v7 = *(v4 + 16);
    v8 = String.utf8CString.getter();
    LODWORD(v7) = sub_100003AF0(v7, (v8 + 32));

    if (!v7)
    {
      return result;
    }

    v12 = sub_10002282C(result, v10, v11);
    v13 = sub_100004F00(&type metadata for SQLError, v12);
    sub_10000BE84(v13, v14);
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1000221C4()
{

  sub_10000C644();

  return _swift_deallocClassInstance(v0, v1, v2);
}

void *sub_1000221F8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SQLiteDB.Location(0);
  __chkstk_darwin(v5 - 8);
  sub_100001EAC();
  v8 = v7 - v6;
  swift_defaultActor_initialize();
  sub_1000234A4(a1, v8);
  type metadata accessor for SQLiteDB.DBHandle();
  sub_10000C644();
  swift_allocObject();
  v9 = sub_100021704(v8);
  if (!v2)
  {
    v10 = v9;
    v11 = 0xD000000000000013;
    v12 = sub_100003AF0(v9[2], "PRAGMA journal_mode=WAL;");
    if (v12)
    {
      v15 = v12;
      v16 = "PRAGMA journal_mode=WAL;";
      v11 = 0xD000000000000014;
    }

    else
    {
      v12 = sub_100003AF0(v10[2], "PRAGMA foreign_keys=ON;");
      if (!v12)
      {
        sub_100008FDC();
        *(v3 + 112) = v10;
        return v3;
      }

      v15 = v12;
      v16 = "PRAGMA foreign_keys=ON;";
    }

    v17 = v16 | 0x8000000000000000;
    v18 = sub_10002282C(v12, v13, v14);
    sub_100004F00(&type metadata for SQLError, v18);
    *v19 = v15;
    *(v19 + 8) = v11;
    *(v19 + 16) = v17;
    swift_willThrow();
  }

  swift_defaultActor_destroy();
  sub_100008FDC();
  swift_deallocPartialClassInstance();
  return v3;
}

void *sub_1000223A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_100009400(a1, a2, a3);
  if (v7)
  {
  }

  v14 = v12;
  sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAC0;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &off_1000862B0;
  *(inited + 32) = a4;
  *(inited + 40) = a5;
  *(inited + 96) = &type metadata for Int64;
  *(inited + 104) = &off_100086270;
  *(inited + 72) = a6;
  *(inited + 136) = &type metadata for Int64;
  *(inited + 144) = &off_100086270;
  *(inited + 112) = a7;

  sub_100009524(inited);
  swift_setDeallocating();
  sub_10000C4AC();
  v16 = _swiftEmptyArrayStorage;

  sub_100021934(v14, a4, a5, &v16);

  return v16;
}

void *sub_10002252C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  sub_100009400(a1, a2, a3);
  if (!v5)
  {
    sub_1000228D4(&qword_10008FDB0, &qword_1000700B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006CAD0;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &off_100086250;
    *(inited + 32) = a4;
    sub_100009524(inited);
    swift_setDeallocating();
    sub_10000C4AC();
    v7 = sub_10003D6C8();
  }

  return v7;
}

uint64_t sub_100022640(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SQLiteDB.Transaction();
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  *(inited + 16) = a1;

  sub_10002211C(0xD000000000000011, 0x80000001000712D0, v6);
  if (!v2)
  {
    sub_10003E2B8(inited, a2, v7);
    if ((*(inited + 24) & 1) == 0)
    {
      v9 = sub_100008CE4();
      sub_10002211C(v9, v10, v11);
    }
  }
}

uint64_t sub_100022720()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100022758(uint64_t result, uint64_t a2)
{
  if (a2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a2 <= 0x7FFFFFFF)
  {
    v2 = sqlite3_column_int(*(result + 16), a2);

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_10002282C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E1A8;
  if (!qword_10008E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1A8);
  }

  return result;
}

unint64_t sub_100022880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E1B0;
  if (!qword_10008E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1B0);
  }

  return result;
}

uint64_t sub_1000228D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

Swift::Int sub_1000229C0(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100022A38(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_100022AB4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

NSString sub_100022B34@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_100023AA8(a2);
  *a1 = result;
  return result;
}

uint64_t sub_100022B64(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String.hashValue.getter();

  return v1;
}

uint64_t sub_100022BA4(uint64_t a1, uint64_t a2)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t sub_100022C00(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_100022C78@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_100022CC0@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100022CEC(uint64_t a1)
{
  v2 = sub_100023988(&qword_10008E358, type metadata accessor for URLResourceKey, &unk_10006D028);
  v3 = sub_100023988(&unk_10008E360, type metadata accessor for URLResourceKey, &unk_10006CFC8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

unint64_t sub_100022DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E1C0;
  if (!qword_10008E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E1C0);
  }

  return result;
}

unint64_t sub_100022DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008F2E0;
  if (!qword_10008F2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008F2E0);
  }

  return result;
}

uint64_t sub_100022E50(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100005954(result, a2);
  }

  return result;
}

void sub_100022E64()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100003F30(v2, v5, &qword_10008FDE0, &qword_1000700E0);
  sub_100008F24();
  type metadata accessor for URL();
  sub_10000B6C4();
  sub_1000170D4();
  if (v1)
  {
    v9 = sub_10000CD40(v8);
    sub_10005FE5C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

void sub_100022F2C()
{
  sub_100007BB0();
  if ((v4 & 1) == 0 || (sub_100001E9C(), v5 == v6))
  {
LABEL_6:
    sub_1000043B0();
    if (v3)
    {
      v7 = sub_1000228D4(&unk_10008E240, &unk_10006CCA0);
      v8 = sub_10000FF3C(v7);
      v9 = j__malloc_size(v8);
      sub_100004604(v9);
      if (v1)
      {
LABEL_8:
        v10 = sub_10000511C();
        sub_10001EFDC(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v8 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  sub_100003D10();
  if (!v5)
  {
    sub_100009798();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100022FE0()
{
  sub_100007BB0();
  if ((v3 & 1) == 0 || (sub_100001E9C(), v4 == v5))
  {
LABEL_6:
    sub_1000043B0();
    if (v2)
    {
      v6 = sub_1000228D4(&qword_10008E200, &qword_10006CC60);
      v7 = sub_10000FF3C(v6);
      v8 = j__malloc_size(v7);
      sub_100004604(v8);
      if (v1)
      {
LABEL_8:
        v9 = sub_10000511C();
        sub_10001EFDC(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_1000228D4(&qword_10008E208, &qword_10006CC68);
    sub_100007A14();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_100003D10();
  if (!v4)
  {
    sub_100009798();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1000230A4()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100003F30(v2, v5, &qword_10008E1F0, &qword_10006CC50);
  v8 = sub_100008F24();
  type metadata accessor for CachedSession(v8);
  sub_10000B6C4();
  sub_1000170D4();
  if (v1)
  {
    v10 = sub_10000CD40(v9);
    sub_10005FFA8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

void sub_10002316C()
{
  sub_100006F8C();
  if (v4)
  {
    sub_100001D00();
    if (v6 != v7)
    {
      sub_10001171C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000038DC();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_100003F30(v2, v5, &unk_10008FDC0, &unk_1000700C0);
  v8 = sub_100008F24();
  type metadata accessor for EventValue(v8);
  sub_10000B6C4();
  sub_1000170D4();
  if (v1)
  {
    v10 = sub_10000CD40(v9);
    sub_10005FD68(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000282C();
  }
}

void sub_100023284(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100001E9C();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_1000228D4(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  sub_100003D10();
  if (!v11)
  {
    sub_100009798();
    goto LABEL_7;
  }

  __break(1u);
}

void *sub_100023370(uint64_t a1, uint64_t a2)
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

  sub_1000228D4(&unk_10008E1E0, &qword_10006CC40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1000233F0(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E210, &qword_10006CC70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for SQLiteDB.Location(uint64_t a1)
{
  result = qword_10008E2C0;
  if (!qword_10008E2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000234A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SQLiteDB.Location(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100023594(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t _s9ZLibErrorOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9ZLibErrorOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DBError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DBError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000237CC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000237E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_100023834(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1000238A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E308;
  if (!qword_10008E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E308);
  }

  return result;
}

uint64_t sub_100023988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

NSString sub_100023AA8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  return v1;
}

uint64_t sub_100023B00(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100023B40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023BB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_100023BF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023C54()
{
  v1 = type metadata accessor for EventValue(0);
  v2 = __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (v21 - v5);
  sub_1000228D4(&qword_10008E4A0, &unk_100070080);
  v7 = (sub_1000228D4(&qword_10008E4A8, &qword_10006D2D0) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10006D1B0;
  v11 = (v10 + v9);
  v12 = v7[14];
  *v11 = 0xD000000000000011;
  v11[1] = 0x8000000100071530;
  v25 = *(v0 + 24);
  *(v11 + v12) = v25;
  sub_1000043C0(v11 + v12);
  v13 = (v11 + v8);
  v14 = v7[14];
  *v13 = 0xD000000000000012;
  v13[1] = 0x8000000100071550;
  v24 = *(v0 + 40);
  *(v13 + v14) = v24;
  sub_1000043C0(v11 + v8 + v14);
  v15 = (v11 + 2 * v8);
  v16 = v7[14];
  *v15 = 0xD000000000000014;
  v15[1] = 0x8000000100071570;
  *(v15 + v16) = *v0;
  swift_storeEnumTagMultiPayload();
  v17 = v11 + 3 * v8;
  v18 = v7[14];
  strcpy(v17, "X-RTC-Sender");
  v17[13] = 0;
  *(v17 + 7) = -5120;
  v23 = *(v0 + 8);
  *&v17[v18] = v23;
  sub_1000043C0(&v17[v18]);
  sub_100005CC0(&v25, &v22);
  sub_100005CC0(&v24, &v22);
  sub_100005CC0(&v23, &v22);
  v19 = Dictionary.init(dictionaryLiteral:)();
  if (*(v0 + 56))
  {
    v22 = *(v0 + 64);
    *v6 = v22;
    sub_1000043C0(v6);
    sub_1000166B4(v6, v4);
    sub_100005CC0(&v22, v21);
    swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v19;
    sub_100016564();
    return v21[0];
  }

  return v19;
}

uint64_t sub_100023F3C()
{
  v0 = 960051513;
  v1 = [objc_opt_self() mainBundle];
  v2 = sub_1000242E8(v1);
  if (v2)
  {
    sub_100059E8C(0x656C646E75424643, 0xEF6E6F6973726556, v2, &v5);

    if (v6)
    {
      sub_1000243C8(&v5, v7);
      sub_1000243C8(v7, &v5);
      if (swift_dynamicCast())
      {
        return v4;
      }
    }

    else
    {
      sub_100024360(&v5);
    }
  }

  return v0;
}

void sub_100024028(uint64_t *a1@<X8>)
{
  v2 = MobileGestalt_get_current_device();
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  v4 = MobileGestalt_copy_deviceName_obj();
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = MobileGestalt_copy_marketingProductName_obj();
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = MobileGestalt_copy_productType_obj();
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = MobileGestalt_copy_productVersion_obj();
  if (!v19)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v20 = v19;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v22;
  v43 = v21;

  v23 = MobileGestalt_copy_supplementalBuildVersion_obj();
  if (!v23)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v26;
  v39 = v25;

  if (qword_10008DDC0 != -1)
  {
    swift_once();
  }

  v40 = v18;
  v41 = v16;
  v27 = v13;
  v28 = v11;
  if (byte_100095B00 != 1)
  {
    v31 = v8;
    v32 = 0;
    v34 = 0xE000000000000000;
    goto LABEL_13;
  }

  v29 = MobileGestalt_copy_serialNumber_obj();
  if (v29)
  {
    v30 = v29;
    v31 = v8;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

LABEL_13:
    v35 = sub_100023F3C();
    v37 = v36;

    *a1 = v6;
    a1[1] = v31;
    a1[2] = v28;
    a1[3] = v27;
    a1[4] = v41;
    a1[5] = v40;
    a1[6] = v43;
    a1[7] = v42;
    a1[8] = v39;
    a1[9] = v38;
    a1[10] = v35;
    a1[11] = v37;
    a1[12] = v32;
    a1[13] = v34;
    return;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_100024254()
{

  sub_10000D9BC(v0 + 352);
  sub_10000D9BC(v0 + 368);
  sub_10000D9BC(v0 + 384);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000242E8(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_100024360(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E4B0, &qword_10006D2D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_1000243C8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000243D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100024418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10002446C(unint64_t a1)
{
  if (a1 >= 4)
  {
    return 3;
  }

  else
  {
    return 0x2010003u >> (8 * a1);
  }
}

uint64_t sub_1000244BC@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002446C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000244F8(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

id sub_10002451C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v62[1] = a2;
  v3 = type metadata accessor for SHA256();
  sub_100001EDC();
  v64 = v4;
  __chkstk_darwin(v5);
  sub_100001EAC();
  v8 = v7 - v6;
  *&v71 = type metadata accessor for String.Encoding();
  sub_100001EDC();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_100001EAC();
  v14 = (v13 - v12);
  type metadata accessor for SHA256Digest();
  sub_100001EDC();
  v66 = v16;
  v67 = v15;
  __chkstk_darwin(v15);
  sub_10000286C();
  v63 = v17 - v18;
  __chkstk_darwin(v19);
  v65 = v62 - v20;
  v21 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  __chkstk_darwin(v21 - 8);
  sub_10000286C();
  v24 = v22 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = v62 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = v62 - v30;
  v32 = __chkstk_darwin(v29);
  v34 = v62 - v33;
  __chkstk_darwin(v32);
  v36 = v62 - v35;
  type metadata accessor for URL();
  sub_100001EDC();
  v69 = v38;
  v70 = v37;
  __chkstk_darwin(v37);
  sub_100001EAC();
  v68 = v40 - v39;
  switch(a1)
  {
    case 1:
      goto LABEL_10;
    case 2:
      goto LABEL_4;
    case 3:
      goto LABEL_8;
    default:
      URL.init(string:)();
      if (sub_100006F9C(v36) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_4:
      a1 = v70;
      if (qword_10008DDC0 == -1)
      {
        goto LABEL_5;
      }

      break;
  }

  while (1)
  {
    sub_100001EBC(&qword_10008DDC0);
LABEL_5:
    if (byte_100095B00 == 1)
    {
      URL.init(string:)();
      v36 = v31;
      if (sub_100002694(v31, 1, a1) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_8:
      URL.init(string:)();
      v36 = v24;
      if (sub_100006F9C(v24) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_10:
      URL.init(string:)();
      v36 = v34;
      if (sub_100006F9C(v34) != 1)
      {
        goto LABEL_13;
      }

      __break(1u);
    }

    URL.init(string:)();
    result = sub_100002694(v28, 1, a1);
    v36 = v28;
    if (result == 1)
    {
      goto LABEL_33;
    }

LABEL_13:
    (*(v69 + 32))(v68, v36, a1);
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      break;
    }

    v42 = result;
    result = MobileGestalt_copy_marketingProductName_obj();
    if (!result)
    {
      goto LABEL_31;
    }

    v43 = result;
    v62[0] = v42;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    static String.Encoding.utf8.getter();
    v28 = String.data(using:allowLossyConversion:)();
    v31 = v44;
    result = (*(v10 + 8))(v14, v71);
    if (v31 >> 60 == 15)
    {
      goto LABEL_32;
    }

    v24 = sub_100025D30(&qword_10008E4D0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    dispatch thunk of HashFunction.init()();
    v45 = sub_100003D1C();
    sub_100025CD8(v45, v46);
    v47 = sub_100003D1C();
    sub_100025C3C(v47, v48, v8);
    v49 = sub_100003D1C();
    sub_100022E50(v49, v50);
    v51 = v65;
    dispatch thunk of HashFunction.finalize()();
    (*(v64 + 8))(v8, v3);
    v52 = sub_100003D1C();
    sub_100022E50(v52, v53);
    (*(v66 + 16))(v63, v51, v67);
    sub_100025D30(&qword_10008E4D8, &type metadata accessor for SHA256Digest, &protocol conformance descriptor for SHA256Digest);
    dispatch thunk of Sequence.makeIterator()();
    v54 = v72;
    v3 = v73;
    v10 = v72[2];
    v14 = _swiftEmptyArrayStorage;
    if (v73 == v10)
    {
LABEL_17:

      v72 = v14;
      sub_1000228D4(&qword_10008E4E8, &qword_10006D370);
      sub_100026538(&qword_10008E4F0, &qword_10008E4E8, &qword_10006D370, &protocol conformance descriptor for [A]);
      BidirectionalCollection<>.joined(separator:)();

      v55 = v68;
      URL.appendingPathComponent(_:isDirectory:)();

      (*(v66 + 8))(v65, v67);
      return (*(v69 + 8))(v55, v70);
    }

    a1 = v72 + 4;
    v71 = xmmword_10006CAD0;
    v8 = v73;
    while ((v3 & 0x8000000000000000) == 0)
    {
      if (v8 >= v54[2])
      {
        goto LABEL_28;
      }

      v56 = *(a1 + v8);
      sub_1000228D4(&qword_10008E4E0, &unk_10006FAE0);
      v57 = swift_allocObject();
      *(v57 + 16) = v71;
      *(v57 + 56) = &type metadata for UInt8;
      *(v57 + 64) = &protocol witness table for UInt8;
      *(v57 + 32) = v56;
      v31 = String.init(format:_:)();
      v24 = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100020328();
        v14 = v60;
      }

      v28 = v14[2];
      v34 = (v28 + 1);
      if (v28 >= v14[3] >> 1)
      {
        sub_100020328();
        v14 = v61;
      }

      ++v8;
      v14[2] = v34;
      v59 = &v14[2 * v28];
      v59[4] = v31;
      v59[5] = v24;
      if (v10 == v8)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_100024D2C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000244F8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100024D68()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_100095990);
  sub_1000050E4(v0, qword_100095990);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100024E08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100024DE0();
  *a1 = result;
  return result;
}

uint64_t sub_100024E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001DD84(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100024E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10001DD84(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

unint64_t sub_100024EA8(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      return 0xD000000000000025;
    }

    else
    {
      return 0xD00000000000001DLL;
    }
  }

  else
  {
    _StringGuts.grow(_:)(19);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return 0xD000000000000011;
  }
}

SecKeyRef sub_100024F8C()
{
  result = sub_100024FAC();
  qword_10008E4B8 = result;
  return result;
}

SecKeyRef sub_100024FAC()
{
  v0 = type metadata accessor for Data.Deallocator();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  size[0] = 0;
  v4 = _NSGetMachExecuteHeader();
  if (getsectiondata(v4, "__TEXT", "__info_plist", size) && size[0])
  {
    if ((size[0] & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    (*(v1 + 104))(v3, enum case for Data.Deallocator.none(_:), v0);
    v5 = Data.init(bytesNoCopy:count:deallocator:)();
    v7 = v6;
    type metadata accessor for PropertyListDecoder();
    swift_allocObject();
    PropertyListDecoder.init()();
    v31 = 100;
    v8 = objc_autoreleasePoolPush();
    sub_100025B84(v8, v9, v10);
    v29 = v7;
    v30 = v5;
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:format:)();
    objc_autoreleasePoolPop(v8);
    v11 = size[9];
    v12 = size[10];
    sub_1000228D4(&qword_10008E4C8, &qword_10006D358);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10006D1D0;
    *(inited + 32) = kSecAttrKeyType;
    *(inited + 40) = kSecAttrKeyTypeRSA;
    *(inited + 48) = kSecAttrKeyClass;
    *(inited + 56) = kSecAttrKeyClassPublic;
    type metadata accessor for CFString(0);
    sub_100025D30(&qword_10008E310, type metadata accessor for CFString, &unk_10006D0B8);
    v14 = kSecAttrKeyType;
    v15 = kSecAttrKeyTypeRSA;
    v16 = kSecAttrKeyClass;
    v17 = kSecAttrKeyClassPublic;
    Dictionary.init(dictionaryLiteral:)();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = Dictionary._bridgeToObjectiveC()().super.isa;
    v20 = SecKeyCreateWithData(isa, v19, 0);

    if (v20)
    {

      sub_100005954(v30, v29);

      sub_100005954(v11, v12);
      return v20;
    }

    if (qword_10008DD18 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000050E4(v26, qword_100095990);
    v23 = Logger.logObject.getter();
    v27 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v23, v27, "unable to parse storebag key", v28, 2u);
    }
  }

  else
  {
    if (qword_10008DD18 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000050E4(v22, qword_100095990);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "unable to load Info.plist section", v25, 2u);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *sub_1000255D8(void *a1)
{
  v3 = sub_1000228D4(&qword_10008E540, &qword_10006D760);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = sub_100008DE4(a1, a1[3]);
  sub_1000265D8(v7, v8, v9);
  v10 = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005284(a1);
  }

  else
  {
    sub_10002662C(v10, v11, v12);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v14;
    sub_100005284(a1);
  }

  return v7;
}

void *sub_10002574C(void *a1)
{
  v3 = sub_1000228D4(&qword_10008E5C0, &qword_10006DA40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - v5;
  v7 = sub_100008DE4(a1, a1[3]);
  sub_1000269D4(v7, v8, v9);
  v10 = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100005284(a1);
  }

  else
  {
    sub_10001CB74(v10, v11, v12);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v14;
    sub_100005284(a1);
  }

  return v7;
}

BOOL sub_1000258D0@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002081C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100025904@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000255B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100025930@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_10002081C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100025978@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000255B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000259A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000265D8(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1000259E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000265D8(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void *sub_100025A1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000255D8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

BOOL sub_100025A54@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100020864(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100025A88@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000208AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_100025AB4@<W0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100020864(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100025AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000269D4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_100025B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000269D4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

void *sub_100025B58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_10002574C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_100025B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E4C0;
  if (!qword_10008E4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E4C0);
  }

  return result;
}

uint64_t *sub_100025BD8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100025C3C(uint64_t result, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = result >> 32;
      if (result >> 32 < result)
      {
        goto LABEL_11;
      }

      result = result;
      v6 = v7;
      goto LABEL_9;
    case 2uLL:
      v5 = *(result + 24);
      result = *(result + 16);
      v6 = v5;
LABEL_9:
      result = sub_100025E94(result, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 3uLL:
      result = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_100025DC0(result, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
      }

      return result;
  }
}

uint64_t sub_100025CD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100025D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100025D78(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100025DC0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SHA256();
  sub_100025D30(&qword_10008E4D0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_100025E94(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_100025D30(&qword_10008E4D0, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100025F74(uint64_t a1)
{
  v2 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100025FDC(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_10002603C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_100025FDC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1000096BC(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1000260D4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

_BYTE *sub_100026104(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000261DC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100026208(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026228(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_100026258(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100026274(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SessionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_100026328(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100026448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E518;
  if (!qword_10008E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E518);
  }

  return result;
}

unint64_t sub_1000264A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E520;
  if (!qword_10008E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E520);
  }

  return result;
}

uint64_t sub_100026538(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100025D78(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100026584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E538;
  if (!qword_10008E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E538);
  }

  return result;
}

unint64_t sub_1000265D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E548;
  if (!qword_10008E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E548);
  }

  return result;
}

unint64_t sub_10002662C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E550;
  if (!qword_10008E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E550);
  }

  return result;
}

unint64_t sub_100026680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E578;
  if (!qword_10008E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E578);
  }

  return result;
}

unint64_t sub_1000266D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E590;
  if (!qword_10008E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E590);
  }

  return result;
}

uint64_t sub_100026728(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10002673C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

uint64_t sub_100026774(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1000267C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_100026820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E598;
  if (!qword_10008E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E598);
  }

  return result;
}

unint64_t sub_100026878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5A0;
  if (!qword_10008E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5A0);
  }

  return result;
}

unint64_t sub_1000268D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5A8;
  if (!qword_10008E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5A8);
  }

  return result;
}

unint64_t sub_100026928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5B0;
  if (!qword_10008E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5B0);
  }

  return result;
}

unint64_t sub_100026980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5B8;
  if (!qword_10008E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5B8);
  }

  return result;
}

unint64_t sub_1000269D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5C8;
  if (!qword_10008E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5C8);
  }

  return result;
}

_BYTE *sub_100026A28(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_100026AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5D0;
  if (!qword_10008E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5D0);
  }

  return result;
}

unint64_t sub_100026B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5D8;
  if (!qword_10008E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5D8);
  }

  return result;
}

unint64_t sub_100026B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_10008E5E0;
  if (!qword_10008E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10008E5E0);
  }

  return result;
}

uint64_t sub_100026BF4(uint64_t a1, const char *a2)
{
  v4 = type metadata accessor for CocoaError();
  sub_100001EDC();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_100001EAC();
  v10 = v9 - v8;
  v11 = type metadata accessor for Logger();
  sub_100001EDC();
  v13 = v12;
  __chkstk_darwin(v14);
  sub_100001EAC();
  v17 = v16 - v15;
  Logger.init()();
  (*(v6 + 16))(v10, a1, v4);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v35 = v13;
    v20 = swift_slowAlloc();
    v33 = a2;
    v21 = swift_slowAlloc();
    v36 = v21;
    *v20 = 136446210;
    sub_100004634();
    sub_10002C5B4(v22, v23, &protocol conformance descriptor for CocoaError);
    v24 = Error.localizedDescription.getter();
    v34 = v11;
    v26 = v25;
    v27 = sub_100009AEC();
    v28(v27);
    v29 = sub_1000053A0(v24, v26, &v36);

    *(v20 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v18, v19, v33, v20, 0xCu);
    sub_100005284(v21);
    sub_100001D1C(v21);
    sub_100001D1C(v20);

    return (*(v35 + 8))(v17, v34);
  }

  else
  {

    v31 = sub_100009AEC();
    v32(v31);
    return (*(v13 + 8))(v17, v11);
  }
}

uint64_t sub_100026E88(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  sub_100001EDC();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_100001EAC();
  v7 = v6 - v5;
  Logger.init()();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136446210;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = sub_1000053A0(v12, v13, &v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "unable to access transparency log (UNKNOWN): %{public}s", v10, 0xCu);
    sub_100005284(v11);
    sub_100001D1C(v11);
    sub_100001D1C(v10);
  }

  return (*(v3 + 8))(v7, v1);
}

uint64_t sub_100027084()
{
  v0 = type metadata accessor for Logger();
  sub_100025BD8(v0, qword_1000959A8);
  sub_1000050E4(v0, qword_1000959A8);
  return Logger.init(subsystem:category:)();
}

id sub_100027104@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000228D4(&qword_10008E758, &qword_10006DC38);
  __chkstk_darwin(v2 - 8);
  v4 = &v38 - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v38 - v10;
  v12 = NSHomeDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
  v13 = a1;

  URL.appendingPathComponent(_:isDirectory:)();
  v39 = *(v6 + 8);
  v40 = v5;
  v39(v11, v5);
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLIsDirectoryKey;
  v15 = NSURLIsDirectoryKey;
  sub_100019E64(inited);
  v16 = v38;
  URL.resourceValues(forKeys:)();
  if (v16)
  {

    v17 = type metadata accessor for URLResourceValues();
    sub_1000026BC(v4, 1, 1, v17);
    sub_1000026E4(v4, &qword_10008E758, &qword_10006DC38);
  }

  else
  {

    v18 = type metadata accessor for URLResourceValues();
    sub_1000026BC(v4, 0, 1, v18);
    v19 = URLResourceValues.isDirectory.getter();
    result = (*(*(v18 - 8) + 8))(v4, v18);
    if (v19 != 2)
    {
      v21 = v40;
      if (v19)
      {
        return result;
      }

      goto LABEL_5;
    }
  }

  v21 = v40;
LABEL_5:
  if (qword_10008DD28 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000050E4(v22, qword_1000959A8);
  (*(v6 + 16))(v9, a1, v21);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = a1;
    v27 = v26;
    v41 = v26;
    *v25 = 136446210;
    v28 = URL.path.getter();
    v30 = v29;
    v39(v9, v40);
    v31 = sub_1000053A0(v28, v30, &v41);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "creating log directory at %{public}s", v25, 0xCu);
    sub_100005284(v27);
    v13 = v38;

    v21 = v40;
  }

  else
  {

    v39(v9, v21);
  }

  v32 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v33);
  v35 = v34;
  v41 = 0;
  v36 = [v32 createDirectoryAtURL:v34 withIntermediateDirectories:1 attributes:0 error:&v41];

  if (v36)
  {
    return v41;
  }

  v37 = v41;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return (v39)(v13, v21);
}

void sub_100027634(uint64_t a1@<X8>)
{
  v139 = a1;
  v1 = sub_1000228D4(&unk_100090260, &qword_10006DC48);
  __chkstk_darwin(v1 - 8);
  v135 = &v127 - v2;
  v152 = type metadata accessor for URLResourceValues();
  v134 = *(v152 - 1);
  __chkstk_darwin(v152);
  v138 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for Date();
  v136 = *(v137 - 8);
  v4 = __chkstk_darwin(v137);
  v131 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v132 = &v127 - v6;
  v7 = sub_1000228D4(&qword_10008E700, &unk_10006D360);
  v8 = __chkstk_darwin(v7 - 8);
  v140 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v141 = &v127 - v10;
  v145 = type metadata accessor for URL();
  v11 = *(v145 - 8);
  v12 = __chkstk_darwin(v145);
  v130 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v127 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v127 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v127 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = (&v127 - v24);
  __chkstk_darwin(v23);
  v27 = &v127 - v26;
  v28 = objc_opt_self();
  v29 = [v28 defaultManager];
  v30 = v151;
  sub_100027104(v27);
  v143 = v30;
  if (v30)
  {

    return;
  }

  *&v133 = v19;
  v146 = v22;
  v144 = v28;
  v128 = v16;
  URL._bridgeToObjectiveC()(&v153);
  v32 = v31;
  v33 = v27;
  v34 = v145;
  v150 = *(v11 + 1);
  v151 = v11 + 8;
  v150(v33, v145);
  v154[0] = 0;
  v35 = sub_10002C218(v32, _swiftEmptyArrayStorage, 0, v154, v29);

  v36 = v154[0];
  if (!v35)
  {
    v67 = v154[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return;
  }

  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v36;

  v39 = 0;
  v148 = *(v37 + 16);
  v149 = (v11 + 16);
  v147 = "yyyy-MM-dd-HH-mm-ss";
  v129 = (v11 + 32);
  v142 = _swiftEmptyArrayStorage;
  while (1)
  {
    v40 = v152;
    if (v148 == v39)
    {
      break;
    }

    if (v39 >= *(v37 + 16))
    {
      __break(1u);
LABEL_50:

      (v152)(v132, v19);
      v115 = v128;
LABEL_51:
      v124 = v145;
      v150(v115, v145);
      v125 = v37;
      goto LABEL_52;
    }

    v41 = (v11[80] + 32) & ~v11[80];
    v19 = *(v11 + 9);
    (*(v11 + 2))(v25, v37 + v41 + v19 * v39, v34);
    v42 = URL.lastPathComponent.getter();
    v44 = sub_10001F618(0xD000000000000018, (v147 | 0x8000000000000000), v42, v43);

    if (v44)
    {
      v45 = v133;
      v127 = *v129;
      v127(v133, v25, v34);
      v46 = v142;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v154[0] = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100060BFC();
        v46 = v154[0];
      }

      v48 = v46[2];
      v49 = (v48 + 1);
      if (v48 >= v46[3] >> 1)
      {
        v142 = (v48 + 1);
        sub_100060BFC();
        v49 = v142;
        v46 = v154[0];
      }

      ++v39;
      v46[2] = v49;
      v142 = v46;
      v50 = v46 + v41 + v48 * v19;
      v34 = v145;
      v127(v50, v45, v145);
    }

    else
    {
      v150(v25, v34);
      ++v39;
    }
  }

  v51 = v142;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_10003A808();
    v51 = v126;
  }

  v52 = v143;
  p_type = &stru_10008CFF0.type;
  v54 = v146;
  v55 = v51[2];
  v154[0] = v51 + ((v11[80] + 32) & ~v11[80]);
  v154[1] = v55;
  sub_10002AA08(v154);
  v56 = v52;

  v57 = sub_100028778(1, v51);
  v62 = v61 >> 1;
  v142 = v51;
  v127 = v57;
  if (v61 >> 1 == v59)
  {
    v11 = v144;
  }

  else
  {
    v68 = v62 - v59;
    if (v62 <= v59)
    {
      __break(1u);
LABEL_54:
      swift_once();
      goto LABEL_41;
    }

    v69 = *(v11 + 9);
    v147 = *(v11 + 2);
    v148 = v69;
    v70 = v58 + v59 * v69;
    *&v60 = 136446210;
    v133 = v60;
    v11 = v144;
    do
    {
      (v147)(v54, v70, v34);
      v71 = [v11 p_type[335]];
      URL._bridgeToObjectiveC()(v72);
      v74 = v73;
      v150(v54, v34);
      v154[0] = 0;
      v75 = [v71 removeItemAtURL:v74 error:v154];

      if (v75)
      {
        v76 = v154[0];
      }

      else
      {
        v77 = v154[0];
        _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_10008DD28 != -1)
        {
          swift_once();
        }

        v56 = 0;
        v78 = type metadata accessor for Logger();
        sub_1000050E4(v78, qword_1000959A8);
        swift_errorRetain();
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v143 = swift_slowAlloc();
          v154[0] = v143;
          *v81 = v133;
          swift_getErrorValue();
          v82 = Error.localizedDescription.getter();
          v84 = sub_1000053A0(v82, v83, v154);

          *(v81 + 4) = v84;
          v56 = 0;
          _os_log_impl(&_mh_execute_header, v79, v80, "failed to erase old log: %{public}s", v81, 0xCu);
          sub_100005284(v143);

          v34 = v145;
        }

        else
        {
        }

        v11 = v144;
      }

      v40 = v152;
      v70 += v148;
      --v68;
      p_type = (&stru_10008CFF0 + 16);
      v54 = v146;
    }

    while (v68);
  }

  swift_unknownObjectRelease();
  v37 = v141;
  sub_100033A0C(v142, v141);

  v63 = v140;
  sub_10002C404(v37, v140);
  if (sub_100002694(v63, 1, v34) == 1)
  {
    v64 = &qword_10008E700;
    v65 = &unk_10006D360;
LABEL_20:
    sub_1000026E4(v63, v64, v65);
    v66 = v139;
LABEL_21:
    sub_10002C474(v37, v66);
    return;
  }

  v54 = v128;
  (*v129)(v128, v63, v34);
  sub_1000228D4(&qword_10008E760, &qword_10006DC40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10006CAD0;
  *(inited + 32) = NSURLCreationDateKey;
  v86 = NSURLCreationDateKey;
  sub_100019E64(inited);
  v87 = v138;
  URL.resourceValues(forKeys:)();
  if (v56)
  {

    v150(v54, v34);
    sub_1000026E4(v37, &qword_10008E700, &unk_10006D360);
    return;
  }

  v63 = v135;
  URLResourceValues.creationDate.getter();
  (*(v134 + 8))(v87, v40);
  v88 = v137;
  if (sub_100002694(v63, 1, v137) == 1)
  {
    v150(v54, v34);
    v64 = &unk_100090260;
    v65 = &qword_10006DC48;
    goto LABEL_20;
  }

  v89 = v136;
  v90 = v132;
  (*(v136 + 32))(v132, v63, v88);
  v91 = v131;
  static Date.now.getter();
  Date.distance(to:)();
  v93 = v92;
  v96 = *(v89 + 8);
  v94 = v89 + 8;
  v95 = v96;
  v96(v91, v88);
  v66 = v139;
  if (v93 <= 604800.0)
  {
    v95(v90, v88);
    v150(v54, v145);
    goto LABEL_21;
  }

  v152 = v95;
  v136 = v94;
  if (qword_10008DD28 != -1)
  {
    goto LABEL_54;
  }

LABEL_41:
  v97 = type metadata accessor for Logger();
  v98 = sub_1000050E4(v97, qword_1000959A8);
  v99 = v130;
  v100 = v145;
  (*v149)(v130, v54, v145);
  v149 = v98;
  v101 = Logger.logObject.getter();
  v102 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v154[0] = v104;
    *v103 = 136446210;
    v105 = URL.lastPathComponent.getter();
    v107 = v106;
    v150(v99, v100);
    v108 = sub_1000053A0(v105, v107, v154);
    v11 = v144;

    *(v103 + 4) = v108;
    _os_log_impl(&_mh_execute_header, v101, v102, "aging out log file: %{public}s", v103, 0xCu);
    sub_100005284(v104);
    v37 = v141;
  }

  else
  {

    v150(v99, v100);
  }

  v19 = v137;
  v109 = [v11 defaultManager];
  v110 = v128;
  URL._bridgeToObjectiveC()(&v153);
  v112 = v111;
  v154[0] = 0;
  v113 = [v109 removeItemAtURL:v111 error:v154];

  if (v113)
  {
    v114 = v154[0];
    (v152)(v132, v19);
    v115 = v110;
    goto LABEL_51;
  }

  v116 = v154[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v117 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v25, v117))
  {
    goto LABEL_50;
  }

  v118 = v19;
  v119 = swift_slowAlloc();
  v120 = swift_slowAlloc();
  v154[0] = v120;
  *v119 = 136446210;
  swift_getErrorValue();
  v121 = Error.localizedDescription.getter();
  v123 = sub_1000053A0(v121, v122, v154);

  *(v119 + 4) = v123;
  _os_log_impl(&_mh_execute_header, v25, v117, "failed to erase old log: %{public}s", v119, 0xCu);
  sub_100005284(v120);

  (v152)(v132, v118);
  v124 = v145;
  v150(v128, v145);
  v125 = v141;
LABEL_52:
  sub_1000026E4(v125, &qword_10008E700, &unk_10006D360);
  sub_1000026BC(v139, 1, 1, v124);
}