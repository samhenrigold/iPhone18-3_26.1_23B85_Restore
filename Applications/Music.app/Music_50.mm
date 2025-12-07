uint64_t sub_10059ED4C(char *__dst, char *__src, unint64_t a3, char *a4)
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
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v6 + 1) >> 14 < *(v4 + 1) >> 14)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
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

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
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

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 2) >> 14 < *(v6 - 2) >> 14)
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_10059EF90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10059F01C(v3);
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

uint64_t sub_10059F0D0(uint64_t a1, uint64_t a2)
{
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      if (BYTE1(a2) == 1)
      {
        if (a1 == 5)
        {
          if (a2 == 5)
          {
            return 1;
          }
        }

        else if (a2 != 5 && a2 == a1)
        {
          return 1;
        }
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        if (BYTE1(a2) == 2 && a2 == 1)
        {
          return 1;
        }
      }

      else if (BYTE1(a2) == 2 && a2 == 2)
      {
        return 1;
      }
    }

    else if (BYTE1(a2) == 2 && !a2)
    {
      return 1;
    }

    return 0;
  }

  if (BYTE1(a2))
  {
    return 0;
  }

  v3 = a2;
  v4 = Library.Menu.Identifier.rawValue.getter(a1);
  v6 = v5;
  if (v4 == Library.Menu.Identifier.rawValue.getter(v3) && v6 == v7)
  {

    return 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v8 & 1;
  }
}

uint64_t sub_10059F220(uint64_t a1, uint64_t a2)
{
  v2._countAndFlagsBits = 0x7469617274726F50;
  v2._object = 0xE800000000000000;
  if (String.hasSuffix(_:)(v2))
  {

    return 1;
  }

  else
  {
    v4._object = 0x8000000100E50C90;
    v4._countAndFlagsBits = 0xD000000000000012;
    if (String.hasSuffix(_:)(v4))
    {

      return 2;
    }

    else
    {
      v5._countAndFlagsBits = 0x70616373646E614CLL;
      v5._object = 0xE900000000000065;
      if (String.hasSuffix(_:)(v5))
      {

        return 3;
      }

      else
      {
        v6._object = 0xED00007466654C65;
        v6._countAndFlagsBits = 0x70616373646E614CLL;
        if (String.hasSuffix(_:)(v6))
        {

          return 4;
        }

        else
        {
          v7._object = 0xEE00746867695265;
          v7._countAndFlagsBits = 0x70616373646E614CLL;
          v8 = String.hasSuffix(_:)(v7);

          if (v8)
          {
            return 3;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }
}

void sub_10059F378(char *a1, char *a2)
{
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v5 = &v28 - v4;

  sub_10059E0E4(a1, a2);
  if (!v6)
  {
    v7 = static Library.Menu.Identifier.allCases.getter();
    v8 = v7[2];
    if (v8)
    {
      for (i = 0; v8 != i; ++i)
      {
        if (i >= v7[2])
        {
          __break(1u);
          return;
        }

        v10 = *(v7 + i + 32);
        if (v10 <= 3)
        {
          if (*(v7 + i + 32) > 1u)
          {
            if (v10 == 2)
            {
              v12 = 0xE700000000000000;
              v11 = 0x73747369747241;
            }

            else
            {
              if (v10 != 3)
              {
                continue;
              }

              v12 = 0xE600000000000000;
              v11 = 0x736D75626C41;
            }

            goto LABEL_26;
          }

          if (*(v7 + i + 32))
          {
            v11 = 0x7473696C79616C50;
LABEL_14:
            v12 = 0xE900000000000073;
            goto LABEL_26;
          }

          v11 = 0x796C746E65636552;
          v12 = 0xED00006465646441;
        }

        else
        {
          if (*(v7 + i + 32) <= 6u)
          {
            if (v10 == 4)
            {
              v12 = 0xE500000000000000;
              v11 = 0x73676E6F53;
            }

            else
            {
              if (v10 != 6)
              {
                continue;
              }

              v11 = 0x646956636973754DLL;
              v12 = 0xEB00000000736F65;
            }

            goto LABEL_26;
          }

          switch(v10)
          {
            case 7u:
              v12 = 0xE600000000000000;
              v11 = 0x7365726E6547;
              break;
            case 8u:
              v11 = 0x74616C69706D6F43;
              v12 = 0xEC000000736E6F69;
              break;
            case 9u:
              v11 = 0x7265736F706D6F43;
              goto LABEL_14;
            default:
              continue;
          }
        }

LABEL_26:
        v30 = a1;
        v31 = a2;
        v28 = v11;
        v29 = v12;
        v13 = type metadata accessor for Locale();
        (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
        sub_100009838();
        StringProtocol.range<A>(of:options:range:locale:)();
        v15 = v14;
        sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980);

        if ((v15 & 1) == 0)
        {

          return;
        }
      }
    }
  }

  v30 = a1;
  v31 = a2;
  v28 = 0xD000000000000010;
  v29 = 0x8000000100E50C50;
  v16 = type metadata accessor for Locale();
  v17 = *(*(v16 - 8) + 56);
  v17(v5, 1, 1, v16);
  sub_100009838();
  StringProtocol.range<A>(of:options:range:locale:)();
  v19 = v18;
  sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980);
  if (v19 & 1) != 0 && (v30 = a1, v31 = a2, v28 = 0xD000000000000013, v29 = 0x8000000100E50C70, v17(v5, 1, 1, v16), StringProtocol.range<A>(of:options:range:locale:)(), v21 = v20, sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980), (v21) && (v30 = a1, v31 = a2, v28 = 0x72616265646953, v29 = 0xE700000000000000, v17(v5, 1, 1, v16), StringProtocol.range<A>(of:options:range:locale:)(), v23 = v22, sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980), (v23) && (v30 = a1, v31 = a2, v28 = 0x6979616C50776F4ELL, v29 = 0xEA0000000000676ELL, v17(v5, 1, 1, v16), StringProtocol.range<A>(of:options:range:locale:)(), v25 = v24, sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980), (v25 & 1) == 0) && (v30 = a1, v31 = a2, v28 = 0x6575657551, v29 = 0xE500000000000000, v17(v5, 1, 1, v16), StringProtocol.range<A>(of:options:range:locale:)(), v27 = v26, sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980), (v27))
  {
    v30 = a1;
    v31 = a2;
    v28 = 0x73636972794CLL;
    v29 = 0xE600000000000000;
    v17(v5, 1, 1, v16);
    StringProtocol.range<A>(of:options:range:locale:)();
    sub_1000095E8(v5, &unk_101182EA0, &unk_100EBE980);
  }

  else
  {
  }
}

uint64_t sub_10059FAE0(void *a1, char *a2, char *a3, uint64_t a4)
{
  v63 = a4;
  v66 = a2;
  sub_10010FC20(&unk_101182EA0, &unk_100EBE980);
  __chkstk_darwin();
  v60 = &v57 - v6;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v62 = &v57 - v7;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v9 = &v57 - v8;
  v10 = type metadata accessor for URL();
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  __chkstk_darwin();
  v61 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v57 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_opt_self() mainRunLoop];
  Date.init(timeIntervalSinceNow:)();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v14 + 8))(v16, v13);
  [v17 runUntilDate:isa];

  if (!a1)
  {
    goto LABEL_30;
  }

  v19 = [a1 connectedScenes];
  sub_100009F78(0, &qword_1011839F0, UIScene_ptr);
  sub_100061F5C();
  v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100061FC4(v20);
  v22 = v21;

  if (!(v22 >> 62))
  {
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_27:

    goto LABEL_34;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_27;
  }

LABEL_4:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = sub_1007E90D4(0, v22);
    goto LABEL_7;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    goto LABEL_33;
  }

  v23 = *(v22 + 32);
LABEL_7:
  v24 = v23;

  v25 = [v24 delegate];

  if (!v25)
  {
    goto LABEL_32;
  }

  v67 = v25;
  sub_10010FC20(&unk_101184050, &unk_100EBFA30);
  sub_10010FC20(&unk_101184EB0, &qword_100ED56D0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_32;
  }

  if (!*(&v70 + 1))
  {
LABEL_33:
    sub_1000095E8(&v69, &unk_101184EA0, &unk_100EBFA20);
    goto LABEL_34;
  }

  v26 = v10;
  v27 = *(*sub_10000954C(&v69, *(&v70 + 1)) + OBJC_IVAR____TtC5Music17MainSceneDelegate_interfaceContext);

  sub_10000959C(&v69);
  v28 = v64;
  v29 = v65;
  if (v27)
  {
    if (a3)
    {

      static MusicUIPPT.destinationURLForTestName(_:)();
      if ((*(v28 + 48))(v9, 1, v10) == 1)
      {

        sub_1000095E8(v9, &qword_101183A20, &unk_100EBCF80);
      }

      else
      {
        v30 = *(v28 + 32);
        v30(v29, v9, v26);
        v31 = *(v27 + 16);
        if (v31)
        {
          v32 = type metadata accessor for TaskPriority();
          v33 = 1;
          (*(*(v32 - 8) + 56))(v62, 1, 1, v32);
          (*(v28 + 16))(v61, v29, v26);
          type metadata accessor for MainActor();
          v60 = v26;

          swift_retain_n();

          v57 = static MainActor.shared.getter();
          v58 = a3;
          v34 = *(v28 + 80);
          v35 = v28;
          v59 = v30;
          v36 = (v34 + 40) & ~v34;
          v37 = (v11 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
          v38 = (v37 + 23) & 0xFFFFFFFFFFFFFFF8;
          v39 = swift_allocObject();
          v39[2] = v57;
          v39[3] = &protocol witness table for MainActor;
          v39[4] = v31;
          v40 = v39 + v36;
          v41 = v60;
          v59(v40, v61, v60);
          v42 = (v39 + v37);
          v43 = v58;
          *v42 = v66;
          v42[1] = v43;
          *(v39 + v38) = v27;
          v44 = v62;
          *(v39 + ((v38 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
          sub_1001F4CB8(0, 0, v44, &unk_100ED56F0, v39);

          (*(v35 + 8))(v65, v41);
          return v33 & 1;
        }

        (*(v28 + 8))(v29, v26);
      }

      v45 = sub_100061BE0(v66, a3);
      if (v46 == 0xFF)
      {

        v33 = 0;
      }

      else
      {
        v47 = v45;
        v48 = v46;
        if (v46 == 2 && v45 == 3 && (*&v69 = v66, *(&v69 + 1) = a3, v67 = 0x7262694C6D6F7246, v68 = 0xEB00000000797261, v49 = type metadata accessor for Locale(), v50 = v60, (*(*(v49 - 8) + 56))(v60, 1, 1, v49), sub_100009838(), StringProtocol.range<A>(of:options:range:locale:)(), v52 = v51, sub_1000095E8(v50, &unk_101182EA0, &unk_100EBE980), (v52 & 1) == 0))
        {
          *&v69 = v66;
          *(&v69 + 1) = a3;

          String.removeSubrange(_:)();
          v54 = *(&v69 + 1);
          v53 = v69;
        }

        else
        {

          v53 = v66;
          v54 = a3;
        }

        sub_10059F378(v53, v54);
        v33 = sub_10059C1BC(v27, v66, a3, v47, v48 | (v55 << 8));
      }

      return v33 & 1;
    }

    goto LABEL_31;
  }

LABEL_34:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1005A036C(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_10002F3F4;

  return sub_10059B87C(a1, v7, v8, v9, v1 + v4, v11, v12, v13);
}

unint64_t sub_1005A04D4()
{
  result = qword_1011A4850;
  if (!qword_1011A4850)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A4850);
  }

  return result;
}

void sub_1005A05D8()
{
  v1 = *(v0 + 16);
  v3 = *(v0 + 52);
  v2 = *(v0 + 56);
  v4 = String._bridgeToObjectiveC()();
  [v1 _performScrollTest:v4 iterations:1 delta:v3 length:v2];
}

uint64_t sub_1005A064C()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for PerformanceTest.Destination(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 2)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6 ^ 0xFF;
  }

  return (v7 + 1);
}

uint64_t storeEnumTagSinglePayload for PerformanceTest.Destination(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = -a2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1005A07E4(unsigned __int8 *a1)
{
  if (a1[1] <= 1u)
  {
    return a1[1];
  }

  else
  {
    return *a1 + 2;
  }
}

_BYTE *sub_1005A07FC(_BYTE *result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  result[1] = a2;
  return result;
}

__n128 sub_1005A0824(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_1005A0838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
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

uint64_t sub_1005A0880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005A090C()
{
  result = qword_101196AA8;
  if (!qword_101196AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196AA8);
  }

  return result;
}

char *sub_1005A0994()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_activities] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_spacing] = 0x4020000000000000;
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground] = 0;
  *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView] = 0;
  v2 = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  *&v0[v2] = sub_10010D754(_swiftEmptyArrayStorage);
  v3 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  *&v0[v3] = sub_10010D874(_swiftEmptyArrayStorage);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 clearColor];
  [v6 setBackgroundColor:v7];

  [v6 setDirectionalLayoutMargins:{20.0, 30.0, 15.0, 30.0}];
  v8 = [v6 traitCollection];

  UITraitCollection.supportedMaterials.getter();
  LOBYTE(v8) = sub_100042A50();

  if ((v8 & 1) == 0)
  {
    v9 = [objc_opt_self() effectWithStyle:10];
    v10 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v9];

    v11 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v12 = [v5 secondarySystemBackgroundColor];
    [v11 setBackgroundColor:v12];

    v13 = [v10 contentView];
    [v13 addSubview:v11];

    v14 = *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView];
    *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView] = v11;
    v15 = v11;

    v16 = *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground];
    *&v6[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground] = v10;
    v17 = v10;

    sub_100009F78(0, &qword_101181620, UIView_ptr);
    if (static NSObject.== infix(_:_:)())
    {

      v21.receiver = v6;
      v21.super_class = ObjectType;
      objc_msgSendSuper2(&v21, "addSubview:", v17);
    }

    else
    {
      v18 = [v17 contentView];
      [v18 addSubview:v17];

      v15 = v17;
    }
  }

  v19 = [objc_allocWithZone(_UIScrollPocketInteraction) initWithStyle:0];
  [v6 addInteraction:v19];

  return v6;
}

void sub_1005A0CF0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *&v1[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground];
  if (!v4)
  {
    goto LABEL_4;
  }

  sub_100009F78(0, &qword_101181620, UIView_ptr);
  v5 = v4;
  if (static NSObject.== infix(_:_:)())
  {

LABEL_4:
    v7.receiver = v1;
    v7.super_class = ObjectType;
    objc_msgSendSuper2(&v7, "addSubview:", a1);
    return;
  }

  v6 = [v5 contentView];
  [v6 addSubview:a1];
}

void sub_1005A0E40(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarActivityView.Activity(0);
  __chkstk_darwin();
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1005A4018(v2, v7, type metadata accessor for SidebarActivityView.Activity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v9 = *v7;
    if (EnumCaseMultiPayload == 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    Hasher._combine(_:)(v10);
    NSObject.hash(into:)();
  }

  else
  {
    sub_1005A3F00(v7, v5);
    Hasher._combine(_:)(0);
    sub_10054CE38(a1);
    sub_1005A3FB8(v5, type metadata accessor for LibraryImport.ViewModel);
  }
}

Swift::Int sub_1005A0FA8()
{
  Hasher.init(_seed:)();
  sub_1005A0E40(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1005A0FEC(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1005A0E40(v2);
  return Hasher._finalize()();
}

void sub_1005A102C(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v153 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for SidebarActivityView.Activity(0);
  v160 = *(v155 - 8);
  __chkstk_darwin();
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v162 = (&ObjectType - v7);
  __chkstk_darwin();
  v9 = &ObjectType - v8;
  v10 = OBJC_IVAR____TtC5Music19SidebarActivityView_activities;

  LOBYTE(a1) = sub_10047D7CC(v11, a1);

  if (a1)
  {
    return;
  }

  v12 = *&v2[v10];
  v13 = &off_101196000;
  v14 = *(v12 + 16);
  v161 = v2;
  v159 = v14;
  if (!v14)
  {
    v17 = _swiftEmptyDictionarySingleton;
    goto LABEL_37;
  }

  v158 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  v157 = v12 + ((*(v160 + 80) + 32) & ~*(v160 + 80));

  v16 = 0;
  v17 = _swiftEmptyDictionarySingleton;
  v156 = v15;
  do
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_105;
    }

    v20 = v160[9];
    sub_1005A4018(v157 + v20 * v16, v9, type metadata accessor for SidebarActivityView.Activity);
    v21 = v158;
    swift_beginAccess();
    v22 = *(v21 + v2);
    v23 = *(v22 + 16);
    v163 = v20;
    if (v23)
    {
      v24 = sub_1006BEB14(v9);
      if (v25)
      {
        v26 = *(*(v22 + 56) + 8 * v24);
        swift_endAccess();
        v27 = v26;
        goto LABEL_25;
      }
    }

    swift_endAccess();
    sub_1005A4018(v9, v162, type metadata accessor for SidebarActivityView.Activity);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v43 = v153;
      sub_1005A3F00(v162, v153);
      sub_10010FC20(&qword_101196BB8, &qword_100ED58C8);
      __chkstk_darwin();
      *(&ObjectType - 2) = v43;
      v27 = _UIHostingView.init(content:)(sub_1005A3F64);
      sub_1005A3FB8(v43, type metadata accessor for LibraryImport.ViewModel);
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v27 = *v162;
      goto LABEL_25;
    }

    v154 = *v162;
    v29 = type metadata accessor for AccountButtonWrapper();
    v30 = objc_allocWithZone(v29);
    *&v30[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = 0;
    v30[OBJC_IVAR____TtC5Music20AccountButtonWrapper_location] = 0;
    v164.receiver = v30;
    v164.super_class = v29;
    v27 = objc_msgSendSuper2(&v164, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v27 sizeToFit];
    v31 = AccessibilityIdentifier.accountButton.unsafeMutableAddressor();
    v32 = *v31;
    v33 = v31[1];
    v35 = v31[2];
    v34 = v31[3];

    v36 = v32;
    v37 = v154;
    UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v36, v33, v35, v34);

    v38 = OBJC_IVAR____TtC5Music20AccountButtonWrapper_button;
    v39 = *&v27[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button];
    *&v27[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = v37;
    if (!v39)
    {
      v44 = v37;
      v41 = 0;
LABEL_18:
      v45 = [v41 superview];
      if (v45)
      {
        v46 = v45;
        sub_100009F78(0, &qword_101181620, UIView_ptr);
        v47 = v27;
        v48 = static NSObject.== infix(_:_:)();

        if (v48)
        {
          [v41 removeFromSuperview];
        }
      }

      if (*&v27[v38])
      {
        [v27 addSubview:?];
      }

      [v27 setNeedsLayout];

      v49 = v154;
      goto LABEL_24;
    }

    sub_100009F78(0, &qword_101181620, UIView_ptr);
    v40 = v37;
    v41 = v39;
    v42 = static NSObject.== infix(_:_:)();

    if ((v42 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_24:
    v2 = v161;
LABEL_25:
    sub_1005A4018(v9, v6, type metadata accessor for SidebarActivityView.Activity);
    v50 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v17;
    v52 = sub_1006BEB14(v6);
    v54 = v17[2];
    v55 = (v53 & 1) == 0;
    v56 = __OFADD__(v54, v55);
    v57 = v54 + v55;
    if (v56)
    {
      goto LABEL_106;
    }

    v58 = v53;
    if (v17[3] < v57)
    {
      sub_1006C42BC(v57, isUniquelyReferenced_nonNull_native);
      v52 = sub_1006BEB14(v6);
      if ((v58 & 1) != (v59 & 1))
      {
        goto LABEL_114;
      }

LABEL_30:
      v17 = aBlock;
      if (v58)
      {
        goto LABEL_4;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_30;
    }

    v63 = v52;
    sub_1006CA4B8();
    v52 = v63;
    v17 = aBlock;
    if (v58)
    {
LABEL_4:
      v18 = v17[7];
      v19 = v18[v52];
      v18[v52] = v50;

      sub_1005A3FB8(v6, type metadata accessor for SidebarActivityView.Activity);
      sub_1005A3FB8(v9, type metadata accessor for SidebarActivityView.Activity);
      goto LABEL_5;
    }

LABEL_31:
    v17[(v52 >> 6) + 8] = (v17[(v52 >> 6) + 8] | (1 << v52));
    v60 = v52;
    sub_1005A4018(v6, v17[6] + v52 * v163, type metadata accessor for SidebarActivityView.Activity);
    *(v17[7] + v60) = v50;

    sub_1005A3FB8(v6, type metadata accessor for SidebarActivityView.Activity);
    sub_1005A3FB8(v9, type metadata accessor for SidebarActivityView.Activity);
    v61 = v17[2];
    v56 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v56)
    {
      goto LABEL_108;
    }

    v17[2] = v62;
LABEL_5:
    v16 = (v16 + 1);
    v15 = v156;
  }

  while (v159 != v16);

  v13 = &off_101196000;
LABEL_37:
  v64 = v13[347];
  swift_beginAccess();
  v65 = *&v64[v2];
  swift_bridgeObjectRetain_n();

  v158 = sub_1005A3D18(v66, v17);

  v67 = sub_1005A3D18(v17, v65);

  swift_bridgeObjectRelease_n();
  *&v64[v2] = v17;

  [v2 invalidateIntrinsicContentSize];
  [v2 setNeedsLayout];
  v68 = v2;
  v69 = v67;
  v70 = [v68 superview];
  [v70 setNeedsLayout];

  v71 = v67 + 8;
  v72 = 1 << *(v67 + 32);
  v73 = -1;
  if (v72 < 64)
  {
    v73 = ~(-1 << v72);
  }

  v74 = v73 & v67[8];
  v160 = OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground;
  v75 = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  v76 = (v72 + 63) >> 6;

  v77 = 0;
  v162 = v69;
  v163 = v75;
  v159 = v71;
LABEL_42:
  if (v74)
  {
    v80 = v161;
    goto LABEL_49;
  }

  v80 = v161;
  while (1)
  {
    v81 = v77 + 1;
    if (__OFADD__(v77, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    if (v81 >= v76)
    {
      break;
    }

    v74 = v71[v81];
    ++v77;
    if (v74)
    {
      v77 = v81;
LABEL_49:
      v82 = *(v69[7] + ((v77 << 9) | (8 * __clz(__rbit64(v74)))));
      if (([v82 isHidden] & 1) == 0)
      {
        if ([objc_opt_self() areAnimationsEnabled])
        {
          v83 = 0.0;
        }

        else
        {
          v83 = 1.0;
        }

        [v82 setAlpha:{v83, ObjectType}];
      }

      v84 = *(v160 + v80);
      if (v84)
      {
        sub_100009F78(0, &qword_101181620, UIView_ptr);
        v85 = v84;
        if (static NSObject.== infix(_:_:)())
        {

          goto LABEL_57;
        }

        v86 = [v85 contentView];
        [v86 addSubview:v82];
      }

      else
      {
LABEL_57:
        v172.receiver = v80;
        v172.super_class = ObjectType;
        objc_msgSendSuper2(&v172, "addSubview:", v82, ObjectType);
      }

      aBlock = v82;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v87 = v82;
      v88 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

      swift_beginAccess();
      v89 = *&v80[v75];
      if ((v89 & 0xC000000000000001) != 0)
      {
        if (v89 < 0)
        {
          v90 = *&v80[v75];
        }

        else
        {
          v90 = v89 & 0xFFFFFFFFFFFFFF8;
        }

        v91 = __CocoaDictionary.count.getter();
        if (__OFADD__(v91, 1))
        {
          goto LABEL_110;
        }

        v92 = sub_1005A32F4(v90, v91 + 1);
        v93 = v161;
        *&v161[v75] = v92;
      }

      else
      {
        v93 = v161;
      }

      v94 = v75;
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v171 = *&v93[v94];
      v96 = v171;
      *&v93[v94] = 0x8000000000000000;
      v98 = sub_1006BEB80(v87);
      v99 = v96[2];
      v100 = (v97 & 1) == 0;
      v101 = v99 + v100;
      if (__OFADD__(v99, v100))
      {
        goto LABEL_109;
      }

      v102 = v97;
      if (v96[3] >= v101)
      {
        if ((v95 & 1) == 0)
        {
          sub_1006CA358();
        }
      }

      else
      {
        sub_1006C4054(v101, v95);
        v103 = sub_1006BEB80(v87);
        if ((v102 & 1) != (v104 & 1))
        {
          goto LABEL_115;
        }

        v98 = v103;
      }

      v75 = v163;
      v105 = v171;
      if (v102)
      {
        v78 = v171[7];
        v79 = *(v78 + 8 * v98);
        *(v78 + 8 * v98) = v88;
      }

      else
      {
        v171[(v98 >> 6) + 8] |= 1 << v98;
        *(v105[6] + 8 * v98) = v87;
        *(v105[7] + 8 * v98) = v88;
        v106 = v105[2];
        v56 = __OFADD__(v106, 1);
        v107 = v106 + 1;
        if (v56)
        {
          goto LABEL_111;
        }

        v105[2] = v107;
      }

      v74 &= v74 - 1;
      *&v161[v75] = v105;
      swift_endAccess();

      v69 = v162;
      v71 = v159;
      goto LABEL_42;
    }
  }

  v108 = objc_opt_self();
  if ([v108 areAnimationsEnabled])
  {
    v110 = v69[2];
    if (v110)
    {
      v111 = sub_1003ADFE0();
      v112 = sub_100197ED8(&aBlock, v111 + 4, v110, v69);
      v113 = aBlock;

      v109 = sub_10005C9F8(v113);
      if (v112 != v110)
      {
        goto LABEL_113;
      }

      v80 = v161;
      v69 = v162;
    }

    else
    {
      v111 = _swiftEmptyArrayStorage;
    }

    [v80 bounds];
    sub_1005A2130(v111, v141, v142, v143, v144);

    v145 = swift_allocObject();
    v146 = v158;
    v145[2] = v158;
    v145[3] = v80;
    v145[4] = v69;
    v169 = sub_1005A3EEC;
    v170 = v145;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_10002BC98;
    v168 = &unk_1010B4810;
    v147 = _Block_copy(&aBlock);

    v148 = v80;

    v149 = swift_allocObject();
    *(v149 + 16) = v146;
    *(v149 + 24) = v148;
    v169 = sub_1005A3EF8;
    v170 = v149;
    aBlock = _NSConcreteStackBlock;
    v166 = 1107296256;
    v167 = sub_1005C3688;
    v168 = &unk_1010B4860;
    v150 = _Block_copy(&aBlock);

    v151 = v148;

    [v108 animateWithDuration:3 delay:v147 options:v150 animations:0.35 completion:0.0];

    _Block_release(v150);
    _Block_release(v147);
    return;
  }

  v114 = v158 + 8;
  v115 = 1 << *(v158 + 32);
  v116 = -1;
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  v117 = v116 & v158[8];
  v118 = (v115 + 63) >> 6;

  v119 = 0;
  while (2)
  {
    if (v117)
    {
LABEL_89:
      v121 = *(v158[7] + ((v119 << 9) | (8 * __clz(__rbit64(v117)))));
      [v121 removeFromSuperview];
      v122 = v161;
      swift_beginAccess();
      v123 = *&v122[v75];
      if ((v123 & 0xC000000000000001) != 0)
      {
        if (v123 < 0)
        {
          v124 = v123;
        }

        else
        {
          v124 = v123 & 0xFFFFFFFFFFFFFF8;
        }

        v125 = v121;
        if (__CocoaDictionary.lookup(_:)())
        {
          swift_unknownObjectRelease();

          v126 = __CocoaDictionary.count.getter();
          v127 = sub_1005A32F4(v124, v126);

          v128 = sub_1006BEB80(v125);
          v130 = v129;

          if ((v130 & 1) == 0)
          {
            goto LABEL_112;
          }

          v131 = *(*(v127 + 56) + 8 * v128);
          sub_100409DFC(v128, v127, v132);

          v75 = v163;
          *&v161[v163] = v127;

          goto LABEL_83;
        }
      }

      else
      {
        v125 = v121;
        v133 = sub_1006BEB80(v125);
        if (v134)
        {
          v135 = v133;
          v136 = v161;
          v137 = v163;
          v138 = swift_isUniquelyReferenced_nonNull_native();
          v139 = *&v136[v137];
          v171 = v139;
          if ((v138 & 1) == 0)
          {
            sub_1006CA358();
            v139 = v171;
          }

          v160 = *(*(v139 + 56) + 8 * v135);
          sub_100409DFC(v135, v139, v140);
          *&v136[v137] = v139;

          v75 = v137;
          goto LABEL_83;
        }
      }

      v75 = v163;
LABEL_83:
      v117 &= v117 - 1;
      swift_endAccess();

      continue;
    }

    break;
  }

  while (1)
  {
    v120 = v119 + 1;
    if (__OFADD__(v119, 1))
    {
      break;
    }

    if (v120 >= v118)
    {

      return;
    }

    v117 = v114[v120];
    ++v119;
    if (v117)
    {
      v119 = v120;
      goto LABEL_89;
    }
  }

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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_115:
  sub_100009F78(0, &qword_101181620, UIView_ptr);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_1005A2048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong invalidateIntrinsicContentSize];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setNeedsLayout];
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 superview];

    [v9 setNeedsLayout];
  }
}

void sub_1005A2130(unint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v40 = a1;
  ObjectType = swift_getObjectType();
  [v5 directionalLayoutMargins];
  [v5 effectiveUserInterfaceLayoutDirection];
  CGRect.inset(by:for:)();
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  v39 = CGRectGetWidth(v47);
  v11 = sub_1005A2B0C();
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v36 = OBJC_IVAR____TtC5Music19SidebarActivityView_spacing;
    v41 = OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground;
    v38 = v12 & 0xC000000000000001;
    v37 = v12 & 0xFFFFFFFFFFFFFF8;
    v15 = y;
    while (1)
    {
      if (v38)
      {
        v16 = sub_100062D50(v14, v12);
      }

      else
      {
        if (v14 >= *(v37 + 16))
        {
          goto LABEL_27;
        }

        v16 = *(v12 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v19 = i;
      [v16 sizeThatFits:{v39, 1.79769313e308}];
      v21 = v20;
      v23 = v22;
      v48.origin.x = x;
      v48.origin.y = y;
      v48.size.width = width;
      v48.size.height = height;
      v24 = CGRectGetWidth(v48);
      if (v24 < v21)
      {
        v21 = v24;
      }

      v43 = v17;
      __chkstk_darwin();
      v34[2] = &v43;
      if (sub_10044B140(sub_1005A410C, v34, v40))
      {
        CGRect.centeringAlong(axes:in:)(x, v15, v21, v23);
        v44 = 0u;
        v45 = 0u;
        v46 = 1;
        CGRect.applyingLayoutDirection(in:bounds:)();
        [v17 setFrame:?];
      }

      v49.origin.x = x;
      v49.origin.y = v15;
      v49.size.width = v21;
      v49.size.height = v23;
      MaxY = CGRectGetMaxY(v49);
      v26 = *&v6[v36];
      v27 = [v17 superview];
      v28 = *&v6[v41];
      if (v28 && (v29 = [v28 contentView]) != 0)
      {
        if (v27)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v29 = v6;
        if (v27)
        {
LABEL_18:
          sub_100009F78(0, &qword_101181620, UIView_ptr);
          v30 = static NSObject.== infix(_:_:)();

          if (v30)
          {
            goto LABEL_6;
          }

          goto LABEL_22;
        }
      }

LABEL_22:
      v31 = *&v6[v41];
      if (v31)
      {
        sub_100009F78(0, &qword_101181620, UIView_ptr);
        v32 = v31;
        if ((static NSObject.== infix(_:_:)() & 1) == 0)
        {
          v33 = [v32 contentView];
          [v33 addSubview:v17];

          goto LABEL_6;
        }
      }

      v42.receiver = v6;
      v42.super_class = ObjectType;
      objc_msgSendSuper2(&v42, "addSubview:", v17);
LABEL_6:
      v15 = MaxY + v26;

      ++v14;
      i = v19;
      if (v18 == v19)
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
}

void sub_1005A2540(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      [*(*(a1 + 56) + ((v12 << 9) | (8 * v13))) setAlpha:0.0];
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v14 = [a2 superview];
  [v14 layoutIfNeeded];

  [a2 layoutIfNeeded];
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;

  v19 = 0;
  while (v17)
  {
LABEL_20:
    v21 = *(*(a3 + 56) + ((v19 << 9) | (8 * __clz(__rbit64(v17)))));
    if (([v21 isHidden] & 1) == 0)
    {
      [v21 setAlpha:1.0];
    }

    v17 &= v17 - 1;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v18)
    {

      return;
    }

    v17 = *(a3 + 64 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_20;
    }
  }

LABEL_26:
  __break(1u);
}

void sub_1005A272C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  v18[4] = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  v20 = a2;

  v19 = v8;
  swift_beginAccess();
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
LABEL_10:
    v12 = *(a3 + v19);
    v21 = *(*(v20 + 56) + ((v9 << 9) | (8 * __clz(__rbit64(v7)))));
    __chkstk_darwin();
    v18[2] = &v21;
    v14 = v13;

    sub_10044B170(sub_1005A4080, v18, v12);
    v16 = v15;

    if ((v16 & 1) == 0)
    {
      [v14 removeFromSuperview];
      [v14 setAlpha:1.0];
      swift_beginAccess();
      v17 = v14;
      v14 = sub_1004084EC(v17);
      swift_endAccess();
    }

    v7 &= v7 - 1;
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1005A2988()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground];
  if (v9)
  {
    v10 = v9;
    [v10 frame];
    if (v6 != v12 || v8 != v11)
    {
      [v10 setFrame:{v2, v4, v6, v8}];
    }
  }

  v14 = *&v0[OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView];
  if (v14)
  {
    v15 = v14;
    v22.origin.x = v2;
    v22.origin.y = v4;
    v22.size.width = v6;
    v22.size.height = v8;
    Width = CGRectGetWidth(v22);
    v17 = [v0 traitCollection];
    [v17 displayScale];
    v19 = v18;

    [v15 setFrame:{0.0, 0.0, Width, 1.0 / fmax(v19, 1.0)}];
  }

  v20 = sub_1005A2B0C();
  sub_1005A2130(v20, v2, v4, v6, v8);
}

void *sub_1005A2B0C()
{
  v1 = v0;
  type metadata accessor for SidebarActivityView.Activity(0);
  __chkstk_darwin();
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_activities);
  v6 = _swiftEmptyArrayStorage;
  v18 = _swiftEmptyArrayStorage;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
    v9 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    v17[1] = v5;

    do
    {
      sub_1005A4018(v9, v4, type metadata accessor for SidebarActivityView.Activity);
      swift_beginAccess();
      v11 = *(v1 + v8);
      if (*(v11 + 16) && (v12 = sub_1006BEB14(v4), (v13 & 1) != 0))
      {
        v14 = *(*(v11 + 56) + 8 * v12);
        swift_endAccess();
        v15 = v14;
        LOBYTE(v14) = [v15 isHidden];
        sub_1005A3FB8(v4, type metadata accessor for SidebarActivityView.Activity);
        if (v14)
        {
        }

        else
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v6 = v18;
        }
      }

      else
      {
        swift_endAccess();
        sub_1005A3FB8(v4, type metadata accessor for SidebarActivityView.Activity);
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return v6;
}

void sub_1005A2DC0()
{
  v1 = sub_1005A2B0C();
  if (v1 >> 62)
  {
    goto LABEL_17;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (v2)
  {
    do
    {
      v3 = sub_1005A2B0C();
      v4 = v3;
      if (v3 >> 62)
      {
        v5 = _CocoaArrayWrapper.endIndex.getter();
        if (!v5)
        {
LABEL_20:

          v16 = sub_1005A2B0C();
          if (v16 >> 62)
          {
            v17 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (__OFSUB__(v17, 1))
          {
            __break(1u);
          }

          else
          {
            [v0 directionalLayoutMargins];
            NSDirectionalEdgeInsets.vertical.getter();
          }

          return;
        }
      }

      else
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_20;
        }
      }

      v6 = 0;
      v7 = 0.0;
      v8 = 0.0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = sub_100062D50(v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v4 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v9 intrinsicContentSize];
        if (v7 <= v12)
        {
          v7 = v12;
        }

        [v10 intrinsicContentSize];
        v14 = v13;

        v8 = v8 + v14;
        ++v6;
        if (v11 == v5)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    while (v15);
  }
}

void sub_1005A2FB0(double a1)
{
  [v1 directionalLayoutMargins];
  NSDirectionalEdgeInsets.horizontal.getter();
  v4 = v3;
  v5 = sub_1005A2B0C();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v4 = a1 - v4;
    v9 = 0.0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = sub_100062D50(v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      [v10 sizeThatFits:{v4, 1.79769313e308}];
      v14 = v13;

      v9 = v9 + v14;
      ++v8;
      if (v12 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v15 = sub_1005A2B0C();
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    [v1 directionalLayoutMargins];
    NSDirectionalEdgeInsets.vertical.getter();
  }
}

unint64_t sub_1005A329C()
{
  result = qword_101196BB0;
  if (!qword_101196BB0)
  {
    type metadata accessor for SidebarActivityView.Activity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101196BB0);
  }

  return result;
}

Swift::Int sub_1005A32F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10010FC20(&unk_1011804D0, &qword_100ED58D0);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100009F78(0, &qword_101181620, UIView_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for NSKeyValueObservation();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1006C4054(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return _swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t *sub_1005A3528(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1005A3A2C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1005A3628(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SidebarActivityView.Activity(0);
  __chkstk_darwin();
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v9 = (&v21 - v8);
  __chkstk_darwin();
  v11 = &v21 - v10;
  sub_10010FC20(&qword_101191950, &unk_100ED58E0);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1005A4018(a1, &v21 - v12, type metadata accessor for SidebarActivityView.Activity);
  sub_1005A4018(a2, &v13[v15], type metadata accessor for SidebarActivityView.Activity);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1005A4018(v13, v9, type metadata accessor for SidebarActivityView.Activity);
      v17 = *v9;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
LABEL_4:
        v18 = *&v13[v15];
        sub_100009F78(0, &qword_101197A30, NSObject_ptr);
        v19 = static NSObject.== infix(_:_:)();

LABEL_11:
        sub_1005A3FB8(v13, type metadata accessor for SidebarActivityView.Activity);
        return v19 & 1;
      }
    }

    else
    {
      sub_1005A4018(v13, v7, type metadata accessor for SidebarActivityView.Activity);
      v17 = *v7;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    sub_1005A4018(v13, v11, type metadata accessor for SidebarActivityView.Activity);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1005A3F00(&v13[v15], v5);
      v19 = sub_10054CE34(v11, v5);
      sub_1005A3FB8(v5, type metadata accessor for LibraryImport.ViewModel);
      sub_1005A3FB8(v11, type metadata accessor for LibraryImport.ViewModel);
      goto LABEL_11;
    }

    sub_1005A3FB8(v11, type metadata accessor for LibraryImport.ViewModel);
  }

  sub_1000095E8(v13, &qword_101191950, &unk_100ED58E0);
  v19 = 0;
  return v19 & 1;
}

void sub_1005A3964()
{
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_activities) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_spacing) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_magicBackground) = 0;
  *(v0 + OBJC_IVAR____TtC5Music19SidebarActivityView_separatorView) = 0;
  v1 = OBJC_IVAR____TtC5Music19SidebarActivityView_viewObservers;
  *(v0 + v1) = sub_10010D754(_swiftEmptyArrayStorage);
  v2 = OBJC_IVAR____TtC5Music19SidebarActivityView_activityViewsMap;
  *(v0 + v2) = sub_10010D874(_swiftEmptyArrayStorage);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005A3A2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a1;
  v35 = sub_10010FC20(&unk_101196BC0, &qword_100ED58D8);
  __chkstk_darwin();
  v7 = &v30 - v6;
  v34 = *(type metadata accessor for SidebarActivityView.Activity(0) - 8);
  __chkstk_darwin();
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v10 = 0;
  v36 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v37 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v10 << 6);
    v22 = v36;
    sub_1005A4018(*(v36 + 48) + *(v34 + 72) * v21, v9, type metadata accessor for SidebarActivityView.Activity);
    v23 = *(v22 + 56);
    v33 = v21;
    v24 = *(v23 + 8 * v21);
    sub_1005A4018(v9, v7, type metadata accessor for SidebarActivityView.Activity);
    *&v7[*(v35 + 48)] = v24;
    v25 = *(a4 + 16);
    v26 = v24;
    if (v25)
    {
      sub_1006BEB14(v7);
      v28 = v27;
      sub_1000095E8(v7, &unk_101196BC0, &qword_100ED58D8);

      sub_1005A3FB8(v9, type metadata accessor for SidebarActivityView.Activity);
      v16 = v37;
      if ((v28 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_1000095E8(v7, &unk_101196BC0, &qword_100ED58D8);

      sub_1005A3FB8(v9, type metadata accessor for SidebarActivityView.Activity);
      v16 = v37;
LABEL_15:
      *(v31 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
      if (__OFADD__(v32++, 1))
      {
        __break(1u);
LABEL_18:
        sub_1003BA6E8(v31, v30, v32, v36);
        return;
      }
    }
  }

  v19 = v10;
  while (1)
  {
    v10 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_18;
    }

    v20 = *(v12 + 8 * v10);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v37 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1005A3D18(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_1005A3528(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin();
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1005A3A2C((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v10 = v9;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1005A3F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryImport.ViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005A3F64@<X0>(uint64_t a1@<X8>)
{
  sub_1005A4018(*(v2 + 16), a1, type metadata accessor for LibraryImport.ViewModel);
  result = _s10ImportViewVMa(0);
  *(a1 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_1005A3FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1005A4018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1005A4128()
{
  v1 = OBJC_IVAR____TtC5Music24KeyboardShortcutsManager____lazy_storage____keyCommands;
  if (*(v0 + OBJC_IVAR____TtC5Music24KeyboardShortcutsManager____lazy_storage____keyCommands))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music24KeyboardShortcutsManager____lazy_storage____keyCommands);
  }

  else
  {
    sub_1005A418C();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_1005A418C()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String._bridgeToObjectiveC()();

  v1 = objc_opt_self();
  v2 = [v1 keyCommandWithInput:v0 modifierFlags:0x100000 action:"volumeUpAction:" upAction:"volumeKeyUpAction:"];

  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();

  v22 = v2;
  [v2 setDiscoverabilityTitle:v3];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = String._bridgeToObjectiveC()();

  v5 = [v1 keyCommandWithInput:v4 modifierFlags:0x100000 action:"volumeDownAction:" upAction:"volumeKeyUpAction:"];

  if (!v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v5 setDiscoverabilityTitle:v6];

  v7 = String._bridgeToObjectiveC()();
  v8 = [v1 keyCommandWithInput:v7 modifierFlags:0x100000 action:"newPlaylistAction:"];

  v9 = [v8 _nonRepeatableKeyCommand];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();

  [v9 setDiscoverabilityTitle:v10];

  v11 = String._bridgeToObjectiveC()();
  v12 = [v1 keyCommandWithInput:v11 modifierFlags:0 action:"playPauseAction:"];

  v13 = [v12 _nonRepeatableKeyCommand];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v14 = String._bridgeToObjectiveC()();

  [v13 setDiscoverabilityTitle:v14];

  v15 = [v1 keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0x100000 action:"nextTrackAction:"];
  v16 = [v15 _nonRepeatableKeyCommand];

  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = String._bridgeToObjectiveC()();

  [v16 setDiscoverabilityTitle:v17];

  v18 = [v1 keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0x100000 action:"previousTrackAction:"];
  v19 = [v18 _nonRepeatableKeyCommand];

  if (v19)
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v20 = String._bridgeToObjectiveC()();

    [v19 setDiscoverabilityTitle:v20];

    sub_10010FC20(&qword_101183990, &qword_100EBC750);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBEE70;
    *(v21 + 32) = v22;
    *(v21 + 40) = v5;
    *(v21 + 48) = v9;
    *(v21 + 56) = v13;
    *(v21 + 64) = v16;
    *(v21 + 72) = v19;
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1005A4808(uint64_t a1, uint64_t a2)
{
  sub_1000189C0(a2, v27);
  if (v28)
  {
    sub_10043F470();
    if (swift_dynamicCast())
    {
      v5 = v25;
      v6 = [v2 keyCommands];
      if (v6)
      {
        v7 = v6;
        v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v27[0] = v25;
        __chkstk_darwin();
        v23[2] = v27;
        v9 = sub_10044B2BC(sub_1005A5AFC, v23, v8);

        if (v9)
        {
          v10 = *(*&v2[OBJC_IVAR____TtC5Music24KeyboardShortcutsManager_interfaceContext] + 32);
          if (v10 >= 0)
          {
            v11 = *(*&v2[OBJC_IVAR____TtC5Music24KeyboardShortcutsManager_interfaceContext] + 32);
          }

          else
          {
            v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
          }

          v12 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
          v13 = [v11 firstResponder];

          if (!v13)
          {
            return 1;
          }

          v24[1] = &OBJC_PROTOCOL___UIKeyInput;
          v14 = swift_dynamicCastObjCProtocolConditional() == 0;

          return v14;
        }
      }
    }
  }

  else
  {
    sub_1000095E8(v27, &unk_101183F30, qword_100EBF960);
  }

  sub_1000189C0(a2, v27);
  v15 = v28;
  if (v28)
  {
    sub_10000954C(v27, v28);
    v16 = *(v15 - 8);
    v17 = __chkstk_darwin();
    v19 = v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v16 + 8))(v19, v15);
    sub_10000959C(v27);
  }

  else
  {
    v20 = 0;
  }

  v21 = type metadata accessor for KeyboardShortcutsManager();
  v26.receiver = v2;
  v26.super_class = v21;
  v14 = objc_msgSendSuper2(&v26, "canPerformAction:withSender:", a1, v20);
  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_1005A4B7C()
{
  v0 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  __chkstk_darwin();
  v6 = &v12 - v5;
  v7 = *(sub_10010FC20(&unk_10118A290, &unk_100EC73D0) + 48);
  v8 = type metadata accessor for SearchScope();
  *v6 = 0;
  *(v6 + 1) = 0;
  (*(*(v8 - 8) + 56))(&v6[v7], 1, 1, v8);
  swift_storeEnumTagMultiPayload();
  sub_100115B50(v6, v4);
  sub_100115B50(v4, v2);
  v9 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_100115BB4(v2, v10 + v9);

  sub_100706900(v4, sub_100139B24, v10);

  sub_100115C8C(v4);
  return sub_100115C8C(v6);
}

uint64_t sub_1005A4E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_1005A4F14, v6, v5);
}

uint64_t sub_1005A4F14()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v0[5] = &type metadata for Player.ChangeCommand;
  v0[6] = &protocol witness table for Player.ChangeCommand;
  v0[2] = 1;
  v0[12] = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  v0[10] = &type metadata for Player.CommandIssuerIdentity;
  v0[11] = &protocol witness table for Player.CommandIssuerIdentity;
  v0[7] = v3;
  v0[8] = v4;
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_10016B618;

  return PlaybackController.perform(_:route:intent:issuer:)((v0 + 2), 0, 0, (v0 + 7));
}

void sub_1005A5098(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = a1;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  sub_1001F524C(0, 0, v8, a5, v12);
}

uint64_t sub_1005A51C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a1;
  v4[14] = a4;
  type metadata accessor for MainActor();
  v4[15] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v6;
  v4[17] = v5;

  return _swift_task_switch(sub_1005A525C, v6, v5);
}

uint64_t sub_1005A525C()
{
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  *(v0 + 40) = &type metadata for Player.PlaybackCommand;
  *(v0 + 48) = &protocol witness table for Player.PlaybackCommand;
  *(v0 + 16) = 3;
  *(v0 + 96) = v1;
  v2 = v1;
  v3 = String.init<A>(reflecting:)();
  *(v0 + 80) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 88) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 56) = v3;
  *(v0 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_10016B304;

  return PlaybackController.perform(_:route:intent:issuer:)(v0 + 16, 0, 0, v0 + 56);
}

id sub_1005A5430(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for KeyboardShortcutsManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005A54D4()
{
  v0 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v16 - v3;
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = type metadata accessor for Playlist.Folder();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = type metadata accessor for PlaylistCreation.Context(0);
  v9 = &v6[v8[5]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = v8[6];
  v11 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  v12 = &v6[v8[7]];
  *v12 = 0;
  *(v12 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  sub_100115B50(v6, v4);
  sub_100115B50(v4, v2);
  v13 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_100115BB4(v2, v14 + v13);

  sub_100706900(v4, sub_100137E88, v14);

  sub_100115C8C(v4);
  return sub_100115C8C(v6);
}

double sub_1005A5734()
{
  v1 = v0;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v3 = &v12 - v2;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v4 = (*(*qword_101218AC8 + 432))();
  if (!v4 || (v5 = v4, v6 = [v4 state], v5, v6 != 5))
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v1;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v9;
    sub_1001F524C(0, 0, v3, &unk_100ED5918, v11);
  }

  return result;
}

uint64_t sub_1005A58E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_1005A51C4(a1, v4, v5, v6);
}

uint64_t sub_1005A5994(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100008F30;

  return sub_100318168(a1, v4, v5, v6);
}

uint64_t sub_1005A5A48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002F3F4;

  return sub_1005A4E7C(a1, v4, v5, v6);
}

uint64_t sub_1005A5B7C@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_1005C29E8(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.libraryLanding.unsafeMutableAddressor();
  sub_10003C9B0(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_10003C9B0(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

id sub_1005A5F8C()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
LABEL_9:
    v41 = v2;
    return v3;
  }

  v4 = v0;
  v5 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
  v6 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_10059913C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005A63A8;
  aBlock[3] = &unk_1010B4E20;
  v7 = _Block_copy(aBlock);
  v8 = [v6 initWithSectionProvider:v7 configuration:v5];

  _Block_release(v7);

  v9 = type metadata accessor for HIMetricsCollectionView();
  v10 = objc_allocWithZone(v9);
  v11 = v8;
  v12 = sub_100188F30(v11, 1, 0);
  result = [v4 view];
  if (result)
  {
    v14 = result;
    [result bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v43.receiver = v12;
    v43.super_class = v9;
    v23 = v12;
    objc_msgSendSuper2(&v43, "frame");
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v42.receiver = v23;
    v42.super_class = v9;
    objc_msgSendSuper2(&v42, "setFrame:", v16, v18, v20, v22);
    sub_1001891B4(v25, v27, v29, v31);
    [v23 setAutoresizingMask:18];

    result = [v4 view];
    if (result)
    {
      v32 = result;
      [result addSubview:v23];

      v33 = v23;
      [v33 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v33 setDataSource:v4];
      [v33 setDelegate:v4];
      [v33 setKeyboardDismissMode:1];
      [v33 setAllowsFocus:1];
      [v33 setRemembersLastFocusedIndexPath:1];

      if (sub_10049CB78())
      {
        v34 = AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor();
      }

      else
      {
        v34 = AccessibilityIdentifier.libraryView.unsafeMutableAddressor();
      }

      v35 = *v34;
      v36 = v34[1];
      v37 = v34[2];
      v38 = v34[3];

      v39 = UIView.withAccessibilityIdentifier(_:)(v35, v36, v37, v38);

      v40 = *&v4[v1];
      *&v4[v1] = v39;
      v3 = v39;

      v2 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1005A634C(uint64_t a1, uint64_t a2)
{
  sub_100217F14();
  dispatch thunk of UIMutableTraits.subscript.getter();
  return v3;
}

id sub_1005A63A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void sub_1005A6424()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v130 = sub_10010FC20(&qword_101196E60, &qword_100ED5990);
  v129 = *(v130 - 8);
  __chkstk_darwin();
  v128 = &v105 - v3;
  v114 = sub_10010FC20(&qword_10118BAF0, &qword_100EC7338);
  v113 = *(v114 - 8);
  __chkstk_darwin();
  v112 = &v105 - v4;
  sub_10010FC20(&unk_101197210, &unk_100ED5E70);
  __chkstk_darwin();
  v115 = &v105 - v5;
  v111 = sub_10010FC20(&qword_101196E80, &qword_100ED59A0);
  v110 = *(v111 - 8);
  __chkstk_darwin();
  v109 = &v105 - v6;
  v122 = sub_10010FC20(&qword_10118DF68, &qword_100EC9FA8);
  v121 = *(v122 - 8);
  __chkstk_darwin();
  v120 = &v105 - v7;
  v125 = sub_10010FC20(&unk_101197220, &unk_100ED5E80);
  v124 = *(v125 - 8);
  __chkstk_darwin();
  v123 = &v105 - v8;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v10 = &v105 - v9;
  v117 = sub_10010FC20(&unk_101197230, &qword_100ECD2D0);
  v116 = *(v117 - 8);
  __chkstk_darwin();
  v12 = &v105 - v11;
  v118 = sub_10010FC20(&qword_1011905E8, &qword_100ECD2D8);
  v119 = *(v118 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v105 - v14;
  v138.receiver = v1;
  v138.super_class = ObjectType;
  objc_msgSendSuper2(&v138, "viewDidLoad", v13);
  v16 = sub_1005A5F8C();
  v17 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController];
  [v16 setPrefetchDataSource:v17];

  v18 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView;
  v19 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
  v20 = sub_100189858();
  v22 = v21;

  v23 = (v17 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v24 = *(v17 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v25 = *(v17 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v23 = v20;
  v23[1] = v22;
  sub_100020438(v24, v25);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = (v17 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v28 = *(v17 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v29 = *(v17 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v27 = sub_1005C3150;
  v27[1] = v26;

  sub_100020438(v28, v29);

  [*&v1[v18] setAllowsSelectionDuringEditing:1];
  [*&v1[v18] setAllowsMultipleSelectionDuringEditing:1];
  v131 = v18;
  v30 = *&v1[v18];
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v32 = &v30[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v33 = *&v30[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v34 = *&v30[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
  *v32 = sub_1005C3158;
  v32[1] = v31;
  v35 = v30;

  sub_100020438(v33, v34);

  sub_1005A8B2C();

  sub_1005A8BAC(0);
  v36 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = *(*v36 + 128);
  v127 = v36;
  v39 = (v36 + v38);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  *v39 = sub_1005C3160;
  v39[1] = v37;

  sub_100020438(v40, v41);

  v42 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = *(v42 + 32);
  v45 = *(v42 + 40);
  *(v42 + 32) = sub_1005C3168;
  *(v42 + 40) = v43;
  v126 = v42;

  sub_100020438(v44, v45);

  if ((sub_10049CB78() & 1) == 0)
  {
    swift_beginAccess();
    sub_10010FC20(&unk_101197240, &unk_100ECD2C0);
    Published.projectedValue.getter();
    swift_endAccess();
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v46 = static OS_dispatch_queue.main.getter();
    v136 = v46;
    v47 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v48 = *(v47 - 8);
    v107 = *(v48 + 56);
    v108 = v48 + 56;
    v107(v10, 1, 1, v47);
    v106 = &protocol conformance descriptor for Published<A>.Publisher;
    sub_100020674(&qword_10118DF80, &unk_101197230, &qword_100ECD2D0, &protocol conformance descriptor for Published<A>.Publisher);
    v105 = sub_1000206BC();
    v49 = v117;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v10, &qword_101182140, &unk_100EBD2A0);

    (*(v116 + 8))(v12, v49);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_1011905F0, &qword_1011905E8, &qword_100ECD2D8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v50 = v118;
    Publisher<>.sink(receiveValue:)();

    (*(v119 + 8))(v15, v50);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    swift_beginAccess();
    sub_10010FC20(&unk_101197250, &qword_100EC9FC0);
    v51 = v120;
    Published.projectedValue.getter();
    swift_endAccess();
    v52 = static OS_dispatch_queue.main.getter();
    v136 = v52;
    v107(v10, 1, 1, v47);
    sub_100020674(&qword_10118DF98, &qword_10118DF68, &qword_100EC9FA8, v106);
    v53 = v123;
    v54 = v122;
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v10, &qword_101182140, &unk_100EBD2A0);

    (*(v121 + 8))(v51, v54);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&unk_101197260, &unk_101197220, &unk_100ED5E80, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v55 = v125;
    Publisher<>.sink(receiveValue:)();

    (*(v124 + 8))(v53, v55);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v56 = sub_10059B3FC();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v56))
    {
      v57 = v109;
      sub_1005AB368(v109);
      (*(v110 + 8))(v57, v111);
      sub_1005AADBC();
      v58 = [objc_opt_self() defaultCenter];
      type metadata accessor for LibraryPinsController();
      sub_10032E7E0();
      v59 = v112;
      NSNotificationCenter.BaseMessageIdentifier.init<A>()();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_100020674(&qword_10118BAF8, &qword_10118BAF0, &qword_100EC7338, &protocol conformance descriptor for NSNotificationCenter.BaseMessageIdentifier<A>);
      v60 = v115;
      v61 = v114;
      NSNotificationCenter.addObserver<A, B>(of:for:using:)();

      (*(v113 + 8))(v59, v61);
      v62 = type metadata accessor for NSNotificationCenter.ObservationToken();
      (*(*(v62 - 8) + 56))(v60, 0, 1, v62);
      v63 = OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsControllerToken;
      swift_beginAccess();
      sub_10006B010(v60, &v1[v63], &unk_101197210, &unk_100ED5E70);
      swift_endAccess();
    }
  }

  v64 = sub_1005AB840();
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = (v64 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  v67 = *(v64 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
  v68 = *(v64 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue + 8);
  *v66 = sub_1005C3180;
  v66[1] = v65;

  sub_100020438(v67, v68);

  v132[3] = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v69 = sub_10001C8B8(v132);
  sub_1005AC238(v69);
  v133[3] = sub_10010FC20(&qword_101196E70, &qword_100ED5998);
  v70 = sub_10001C8B8(v133);
  sub_1005AC4C0(v70);
  v134[3] = sub_10010FC20(&qword_101196E90, &qword_100ED59A8);
  v71 = sub_10001C8B8(v134);
  sub_1005AC738(v71);
  v135[3] = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  v72 = sub_10001C8B8(v135);
  sub_1005AC9A8(v72);
  swift_arrayDestroy();
  v73 = v128;
  sub_1005ACC20(v128);
  (*(v129 + 8))(v73, v130);
  v74 = *&v1[v131];
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v76 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v78 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v79 = swift_allocObject();
  *(v79 + 24) = 0u;
  *(v79 + 40) = 0u;
  *(v79 + 56) = 0u;
  *(v79 + 72) = 0u;
  *(v79 + 88) = 1;
  *(v79 + 96) = 0;
  v80 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v81 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v81 - 8) + 56))(v79 + v80, 1, 1, v81);
  *(v79 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v79 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v79 + 16) = v74;
  *(v79 + 24) = sub_1005C3188;
  *(v79 + 32) = v75;
  *(v79 + 40) = sub_1005C3190;
  v82 = *(v79 + 56);
  v83 = *(v79 + 64);
  *(v79 + 48) = v76;
  *(v79 + 56) = sub_1005C3198;
  *(v79 + 64) = v77;
  v84 = v74;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_100020438(v82, v83);
  v85 = *(v79 + 72);
  v86 = *(v79 + 80);
  *(v79 + 72) = sub_1005C31A0;
  *(v79 + 80) = v78;

  sub_100020438(v85, v86);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController] = v79;

  v87 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v88 = qword_10117F7C8;

  if (v88 != -1)
  {
    swift_once();
  }

  v89 = qword_1011921E8;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1005C31A8;
  *(v90 + 24) = v87;
  v136 = sub_100031C94;
  v137 = v90;

  sub_10010FC20(&qword_1011921F8, qword_100ED5E90);
  v91 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  objc_setAssociatedObject(v1, v89, v91, 3);
  swift_unknownObjectRelease();
  v92 = sub_10003169C();
  sub_100031928(v92);

  sub_1005AA3F8(2u);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  v93 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController];
  v94 = *(v93 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
  *(v93 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
  if (v94 != 1)
  {
    sub_10044D424();
  }

  v95 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController];
  v96 = *(v95 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
  *(v95 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
  if (v96 != 1)
  {

    sub_10016D6B8();
  }

  v97 = [v1 navigationItem];
  [v97 _manualScrollEdgeAppearanceProgress];
  v99 = v98;

  v100 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress];
  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] = v99;
  if (v99 != v100)
  {
    sub_1005AA3F8(2u);
  }

  v136 = *&v1[v131];
  v101 = v136;
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v102 = v101;
  v103 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v104 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_contentOffsetObservation];
  *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_contentOffsetObservation] = v103;
}

uint64_t sub_1005A7840@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v7 = &v24[-v6 - 8];
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v9 = &v24[-v8 - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v11 = Strong;
  v12 = sub_1005BF3BC(3u);
  if (v13)
  {
    goto LABEL_9;
  }

  if (IndexPath.section.getter() != v12)
  {
    goto LABEL_9;
  }

  v14 = IndexPath.item.getter();
  if (v14 == NSNotFound.getter())
  {
    goto LABEL_9;
  }

  sub_1000089F8(a1, v24, &unk_101183F30, qword_100EBF960);
  if (!v25)
  {

    sub_1000095E8(v24, &unk_101183F30, qword_100EBF960);
    goto LABEL_10;
  }

  sub_10010FC20(&qword_101196F80, &qword_100ED5C98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
  }

  else
  {
    v15 = v23;

    sub_1005A7C20(v15, v7);

    v16 = type metadata accessor for RecentlyAddedMusicItem();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v7, 1, v16) == 1)
    {

      sub_1000095E8(v7, &unk_101197040, &unk_100EDAE40);
    }

    else
    {
      RecentlyAddedMusicItem.artworkViewModel.getter(v9);

      (*(v17 + 8))(v7, v16);
      v20 = type metadata accessor for ArtworkImage.ViewModel(0);
      if ((*(*(v20 - 8) + 48))(v9, 1, v20) != 1)
      {
        v21 = type metadata accessor for Artwork();
        v22 = *(v21 - 8);
        (*(v22 + 16))(a4, v9, v21);
        sub_1005C3434(v9, type metadata accessor for ArtworkImage.ViewModel);
        return (*(v22 + 56))(a4, 0, 1, v21);
      }

      sub_1000095E8(v9, &unk_10118A5E0, &unk_100EBCD90);
    }
  }

LABEL_10:
  v18 = type metadata accessor for Artwork();
  return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
}

uint64_t sub_1005A7C20@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v90 = sub_10010FC20(&unk_1011A3E20, &qword_100EC8DA0);
  v96 = *(v90 - 8);
  __chkstk_darwin();
  v92 = &v79 - v6;
  v91 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v95 = *(v91 - 8);
  __chkstk_darwin();
  v8 = &v79 - v7;
  v9 = type metadata accessor for IndexPath();
  v88 = *(v9 - 8);
  v89 = v9;
  __chkstk_darwin();
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v13 = &v79 - v12;
  v14 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v93 = *(v14 - 8);
  v94 = v14;
  __chkstk_darwin();
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v79 - v17;
  v19 = sub_10059B3FC();
  v20 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v19);
  v21 = &unk_10109BAE0;
  if ((v20 & 1) == 0)
  {
    v21 = &unk_10109BB08;
  }

  v22 = *v21;
  if (!v22)
  {
LABEL_11:

    goto LABEL_12;
  }

  v23 = 0;
  if (v20)
  {
    v24 = &off_10109BAD0;
  }

  else
  {
    v24 = &off_10109BAF8;
  }

  v25 = v24 + 4;
  while (1)
  {
    if ((v22 & ~(v22 >> 63)) == v23)
    {
      __break(1u);
      goto LABEL_31;
    }

    if (*(v25 + v23) == 3)
    {
      break;
    }

    if (v22 == ++v23)
    {
      goto LABEL_11;
    }
  }

  v87 = v3;

  if (IndexPath.section.getter() >= v23)
  {
    v29 = IndexPath.item.getter();
    if (v29 != NSNotFound.getter())
    {
      if (a2)
      {
        v30 = a2;
        goto LABEL_20;
      }

      v30 = *(v87 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision);
      if (v30)
      {

LABEL_20:

        RequestResponse.Revision.content.getter(v13);
        v31 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
        if ((*(*(v31 - 8) + 48))(v13, 1, v31) == 1)
        {

          sub_1000095E8(v13, &unk_10118D090, &unk_100ED5CB0);
          goto LABEL_12;
        }

        v86 = v30;
        v33 = v93;
        v32 = v94;
        (*(v93 + 16))(v16, v13, v94);
        sub_1000095E8(v13, &unk_10118D0A0, &unk_100EC8DC8);
        v34 = v16;
        v35 = v32;
        (*(v33 + 32))(v18, v34, v32);
        IndexPath.item.getter();
        if (!__OFSUB__(IndexPath.section.getter(), v23))
        {
          IndexPath.init(item:section:)();
          v36 = IndexPath.section.getter();
          v37 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

          v38 = v90;
          if (v36 >= v37)
          {
            goto LABEL_40;
          }

          v39 = IndexPath.item.getter();
          v40 = MusicLibrarySectionedResponse.sections.getter();
          v41 = IndexPath.section.getter();
          if ((v41 & 0x8000000000000000) == 0)
          {
            v85 = v39;
            if (v41 < *(v40 + 16))
            {
              v42 = v95;
              v81 = (*(v42 + 80) + 32) & ~*(v42 + 80);
              v80 = *(v95 + 72);
              v43 = v91;
              v82 = *(v95 + 16);
              v83 = v95 + 16;
              v82(v8, v40 + v81 + v80 * v41, v91);

              v44 = v92;
              MusicLibrarySection.items.getter();
              v45 = *(v42 + 8);
              v95 = v42 + 8;
              v84 = v45;
              v45(v8, v43);
              sub_100020674(&unk_101197060, &unk_1011A3E20, &qword_100EC8DA0, &protocol conformance descriptor for MusicItemCollection<A>);
              dispatch thunk of Collection.startIndex.getter();
              dispatch thunk of Collection.endIndex.getter();
              v46 = dispatch thunk of Collection.distance(from:to:)();
              v47 = v44;
              v13 = *(v96 + 8);
              v96 += 8;
              (v13)(v47, v38);
              if (v85 >= v46)
              {
                goto LABEL_36;
              }

              v48 = v94;
              v49 = MusicLibrarySectionedResponse.sections.getter();
              v50 = IndexPath.section.getter();
              if ((v50 & 0x8000000000000000) == 0)
              {
                if (v50 < *(v49 + 16))
                {
                  v51 = v91;
                  v82(v8, v49 + v81 + v50 * v80, v91);

                  v52 = v92;
                  MusicLibrarySection.items.getter();
                  v84(v8, v51);
                  IndexPath.item.getter();
                  MusicItemCollection.subscript.getter();

                  (v13)(v52, v38);
                  (*(v88 + 8))(v11, v89);
                  (*(v93 + 8))(v18, v48);
                  v26 = 0;
                  goto LABEL_13;
                }

LABEL_35:
                __break(1u);
LABEL_36:
                a3 = v13;
                v35 = 0xD000000000000011;
                v99 = 0;
                v100 = 0xE000000000000000;
                _StringGuts.grow(_:)(154);
                v53._countAndFlagsBits = 0xD00000000000004ALL;
                v53._object = 0x8000000100E515E0;
                String.append(_:)(v53);
                v97 = IndexPath.section.getter();
                v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v54);

                v55._countAndFlagsBits = 0x207865646E49202ELL;
                v55._object = 0xEE00203A68746170;
                String.append(_:)(v55);
                sub_100029710(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v56._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v56);

                v57._countAndFlagsBits = 0xD000000000000013;
                v57._object = 0x8000000100E51630;
                String.append(_:)(v57);
                v58 = MusicLibrarySectionedResponse.sections.getter();
                v59 = IndexPath.section.getter();
                if ((v59 & 0x8000000000000000) == 0)
                {
                  if (v59 < v58[2])
                  {
                    goto LABEL_44;
                  }

                  __break(1u);
                }

                __break(1u);
LABEL_40:
                v99 = 0;
                v100 = 0xE000000000000000;
                _StringGuts.grow(_:)(146);
                v60._countAndFlagsBits = 0xD00000000000004FLL;
                v60._object = 0x8000000100E51530;
                String.append(_:)(v60);
                sub_100029710(&unk_101197050, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v61._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v61);

                v62._countAndFlagsBits = 0xD000000000000016;
                v62._object = 0x8000000100E51580;
                String.append(_:)(v62);
                v63 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

                v97 = v63;
                v58 = &protocol witness table for Int;
                v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v64);

                v65._object = 0x8000000100E515A0;
                v65._countAndFlagsBits = 0xD000000000000011;
                String.append(_:)(v65);
                v97 = *(v86 + *(*v86 + 112));
                v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                String.append(_:)(v66);

                v67._countAndFlagsBits = 0xD000000000000014;
                v67._object = 0x8000000100E515C0;
                String.append(_:)(v67);
                v68 = *(v87 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision);
                if (v68)
                {
                  v69 = *(v68 + *(*v68 + 112));
                }

                else
                {
                  v69 = 0;
                }

                while (1)
                {
                  v97 = v69;
                  v98 = v68 == 0;
                  sub_10010FC20(&qword_101184A70, &qword_100EC0680);
                  v70._countAndFlagsBits = String.init<A>(describing:)();
                  String.append(_:)(v70);

                  v59 = _assertionFailure(_:_:file:line:flags:)();
                  __break(1u);
LABEL_44:
                  v71 = v91;
                  v82(v8, v58 + v81 + v59 * v80, v91);

                  v72 = v92;
                  MusicLibrarySection.items.getter();
                  v84(v8, v71);
                  v73 = v90;
                  dispatch thunk of Collection.startIndex.getter();
                  dispatch thunk of Collection.endIndex.getter();
                  v74 = dispatch thunk of Collection.distance(from:to:)();
                  (a3)(v72, v73);
                  v97 = v74;
                  v58 = &protocol witness table for Int;
                  v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v75);

                  v76._object = 0x8000000100E515A0;
                  v76._countAndFlagsBits = 0xD000000000000011;
                  String.append(_:)(v76);
                  v97 = *(v86 + *(*v86 + 112));
                  v77._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                  String.append(_:)(v77);

                  v78._countAndFlagsBits = v35 + 3;
                  v78._object = 0x8000000100E515C0;
                  String.append(_:)(v78);
                  v68 = *(v87 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision);
                  if (v68)
                  {
                    v69 = *(v68 + *(*v68 + 112));
                  }

                  else
                  {
                    v69 = 0;
                  }
                }
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }
  }

LABEL_12:
  v26 = 1;
LABEL_13:
  v27 = type metadata accessor for RecentlyAddedMusicItem();
  return (*(*(v27 - 8) + 56))(a3, v26, 1, v27);
}

void sub_1005A88FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1005BF3BC(3u);
    if (v12 & 1) == 0 && ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v13 = v11;
      v14 = sub_1005A5F8C();
      sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_100EBC6B0;
      *(v15 + 32) = v13;
      v19 = v15;
      sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
      sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      IndexSet._bridgeToObjectiveC()(v16);
      v18 = v17;
      (*(v6 + 8))(v8, v5);
      [v14 reloadSections:v18];
    }
  }
}

uint64_t sub_1005A8B2C()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver;
  if (*&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportObserver];
  }

  else
  {
    type metadata accessor for LibraryImport.Observer(0);
    v3 = swift_allocObject();
    v2 = sub_1006CB13C(v0, v3);
    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1005A8BAC(char a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController];
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 48);
  v7 = *(v4 + 80);
  v38 = *(v4 + 64);
  v39 = v7;
  v37[1] = v5;
  v37[2] = v6;
  v8 = *(v4 + 16);
  v36 = *(v4 + 32);
  v37[0] = v8;
  v35 = *(v4 + 16);
  v9 = *(v4 + 57);
  *(v34 + 3) = *(v4 + 60);
  v34[0] = v9;
  sub_1003E1510(v37, &v28);
  v33 = sub_10010F828(&off_10109BB98);
  if ((a1 & 1) != 0 || (sub_10049CB78() & 1) == 0)
  {
    sub_1003B4C48(&v28, 12);
  }

  v22 = a1;
  if ((sub_10049CB78() & 1) == 0)
  {
    v10 = [v1 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    type metadata accessor for MusicLibrary();
    *&v24[0] = static MusicLibrary.shared.getter();
    sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    LOBYTE(v10) = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v10)
    {

      goto LABEL_8;
    }

    if ((a1 & 1) == 0)
    {

      v12 = *(&v38 + 1);
      v11 = v38;
      v14 = *(&v39 + 1);
      v13 = v39;
      v21 = v33;
LABEL_13:
      sub_1005BF344(v11, v12, v13, v14);
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      goto LABEL_14;
    }
  }

  sub_1003B4C48(&v28, 11);

LABEL_8:
  v12 = *(&v38 + 1);
  v11 = v38;
  v14 = *(&v39 + 1);
  v13 = v39;
  v21 = v33;
  if ((a1 & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = &v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu];
  swift_beginAccess();
  if (!*v15)
  {
    goto LABEL_13;
  }

  v16 = *(v15 + 2);
  v17 = *(v15 + 3);
  v18 = *(v15 + 4);
  v19 = *(v15 + 5);

  sub_1005BF344(v11, v12, v13, v14);
LABEL_14:
  *&v25 = v21;
  BYTE8(v25) = (v22 & 1) == 0;
  HIDWORD(v25) = *(v34 + 3);
  *(&v25 + 9) = v34[0];
  *&v26 = v16;
  *(&v26 + 1) = v17;
  *&v27 = v18;
  *(&v27 + 1) = v19;
  v30 = v25;
  v31 = v26;
  v32 = v27;
  v24[0] = v35;
  v24[1] = v36;
  v28 = v35;
  v29 = v36;
  sub_1003E1510(v24, v23);
  RequestResponse.Controller.request.setter(&v28);
  v28 = v35;
  v29 = v36;
  *&v30 = v21;
  BYTE8(v30) = (v22 & 1) == 0;
  *(&v30 + 9) = v34[0];
  HIDWORD(v30) = *(v34 + 3);
  *&v31 = v16;
  *(&v31 + 1) = v17;
  *&v32 = v18;
  *(&v32 + 1) = v19;
  return sub_100400A60(&v28);
}

void *sub_1005A8EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&unk_1011A4B90, &unk_100ED2800);
  __chkstk_darwin();
  v4 = &aBlock[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &aBlock[-v5];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
    swift_beginAccess();
    sub_1000089F8(v8 + v9, aBlock, &unk_101196F60, &qword_100ED5C80);
    sub_1005A9268(aBlock, v6);
    sub_1000095E8(aBlock, &unk_101196F60, &qword_100ED5C80);
    sub_1005A9A58();
    sub_1000089F8(v6, v4, &unk_1011A4B90, &unk_100ED2800);
    v10 = type metadata accessor for LibraryImport.ViewModel(0);
    if ((*(*(v10 - 8) + 48))(v4, 1, v10) == 1)
    {
      sub_1000095E8(v4, &unk_1011A4B90, &unk_100ED2800);
      memset(aBlock, 0, 32);
    }

    else
    {
      *&aBlock[24] = v10;
      v11 = sub_10001C8B8(aBlock);
      sub_1005C29E8(v4, v11, type metadata accessor for LibraryImport.ViewModel);
    }

    sub_1005BDE8C(aBlock, 0);

    RequestResponse.Revision.content.getter(aBlock);
    v12 = *aBlock;
    if (*aBlock)
    {
      v13 = v21;
      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      *(v14 + 24) = *&aBlock[8];
      *(v14 + 40) = *&aBlock[24];
      *(v14 + 56) = v13;
      v15 = &type metadata for Library.Menu;
    }

    else
    {
      memset(aBlock, 0, 24);
      v14 = 0;
      v15 = 0;
    }

    *aBlock = v14;
    *&aBlock[24] = v15;
    sub_1005BDE8C(aBlock, 2);

    v16 = [objc_opt_self() sharedApplication];
    v17 = swift_allocObject();
    *(v17 + 16) = v8;
    *&aBlock[32] = sub_1005C3410;
    v21 = v17;
    *aBlock = _NSConcreteStackBlock;
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_10002BC98;
    *&aBlock[24] = &unk_1010B5118;
    v18 = _Block_copy(aBlock);
    v19 = v8;

    [v16 _performBlockAfterCATransactionCommits:v18];
    _Block_release(v18);

    return sub_1000095E8(v6, &unk_1011A4B90, &unk_100ED2800);
  }

  return result;
}

uint64_t sub_1005A9268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v52 = a2;
  v5 = type metadata accessor for LibraryImport.ViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v44 - v8;
  __chkstk_darwin();
  v50 = &v44 - v9;
  v51 = *(sub_10010FC20(&unk_1011A4B90, &unk_100ED2800) - 8);
  __chkstk_darwin();
  v45 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v44 - v11;
  __chkstk_darwin();
  v47 = &v44 - v12;
  __chkstk_darwin();
  v14 = &v44 - v13;
  __chkstk_darwin();
  v16 = &v44 - v15;
  __chkstk_darwin();
  v18 = &v44 - v17;
  __chkstk_darwin();
  v20 = &v44 - v19;
  sub_1000089F8(a1, &v53, &unk_101196F60, &qword_100ED5C80);
  if (v53 == __PAIR128__(1, 0))
  {
    v21 = OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
    swift_beginAccess();
    sub_1000089F8(v3 + v21, v55, &unk_101196F60, &qword_100ED5C80);
    if (v53 != __PAIR128__(1, 0))
    {
      sub_1000095E8(&v53, &unk_101196F60, &qword_100ED5C80);
    }
  }

  else
  {
    sub_1005C277C(&v53, v55);
  }

  v22 = OBJC_IVAR____TtC5Music25LibraryMainViewController_viewModels;
  swift_beginAccess();
  sub_10006B010(v55, v3 + v22, &unk_101196F60, &qword_100ED5C80);
  swift_endAccess();
  sub_1000089F8(v3 + v22, v55, &unk_101196F60, &qword_100ED5C80);
  if (!v55[0] && v55[1] == 1)
  {
    sub_1000095E8(v55, &unk_101196F60, &qword_100ED5C80);
    return (*(v6 + 56))(v52, 1, 1, v5);
  }

  sub_1005C277C(v55, &v53);
  v24 = v5;
  v25 = *(v6 + 56);
  v25(v20, 1, 1, v24);
  if (sub_1005B93DC())
  {
    v26 = v54;
    if (*(v54 + 16) && (v27 = sub_1006CCC5C(), (v28 & 1) != 0))
    {
      sub_1000089F8(*(v26 + 56) + *(v51 + 72) * v27, v16, &unk_1011A4B90, &unk_100ED2800);
      sub_10003D17C(v16, v18, &unk_1011A4B90, &unk_100ED2800);
    }

    else
    {
      v25(v18, 1, 1, v24);
    }

    if ((*(v6 + 48))(v18, 1, v24) != 1)
    {
      sub_1000095E8(v20, &unk_1011A4B90, &unk_100ED2800);
      sub_10054F178(&v53);
      v39 = v50;
      sub_1005C29E8(v18, v50, type metadata accessor for LibraryImport.ViewModel);
      sub_1005C29E8(v39, v20, type metadata accessor for LibraryImport.ViewModel);
      v25(v20, 0, 1, v24);
      return sub_10003D17C(v20, v52, &unk_1011A4B90, &unk_100ED2800);
    }

    sub_1000095E8(v18, &unk_1011A4B90, &unk_100ED2800);
  }

  if (sub_1005B93DC())
  {
    v29 = v54;
    if (*(v54 + 16) && (v30 = sub_1006CCC5C(), (v31 & 1) != 0))
    {
      v32 = v47;
      sub_1000089F8(*(v29 + 56) + *(v51 + 72) * v30, v47, &unk_1011A4B90, &unk_100ED2800);
      sub_10003D17C(v32, v14, &unk_1011A4B90, &unk_100ED2800);
    }

    else
    {
      v25(v14, 1, 1, v24);
    }

    if ((*(v6 + 48))(v14, 1, v24) != 1)
    {
      sub_1000095E8(v20, &unk_1011A4B90, &unk_100ED2800);
      sub_10054F178(&v53);
      v40 = v25;
      v41 = v14;
      v42 = &v57;
      goto LABEL_34;
    }

    sub_1000095E8(v14, &unk_1011A4B90, &unk_100ED2800);
  }

  if (([v3 isEditing] & 1) == 0)
  {
    static ApplicationCapabilities.shared.getter(v55);
    sub_100014984(v55);
    if ((v55[0] & 0x100) != 0)
    {
      v33 = v54;
      if (*(v54 + 16) && (v34 = sub_1006CCC5C(), (v35 & 1) != 0))
      {
        v36 = v45;
        sub_1000089F8(*(v33 + 56) + *(v51 + 72) * v34, v45, &unk_1011A4B90, &unk_100ED2800);
        v37 = v36;
        v38 = v48;
        sub_10003D17C(v37, v48, &unk_1011A4B90, &unk_100ED2800);
      }

      else
      {
        v38 = v48;
        v25(v48, 1, 1, v24);
      }

      sub_10054F178(&v53);
      if ((*(v6 + 48))(v38, 1, v24) == 1)
      {
        sub_1000095E8(v38, &unk_1011A4B90, &unk_100ED2800);
        return sub_10003D17C(v20, v52, &unk_1011A4B90, &unk_100ED2800);
      }

      sub_1000095E8(v20, &unk_1011A4B90, &unk_100ED2800);
      v40 = v25;
      v41 = v38;
      v42 = &v56;
LABEL_34:
      v43 = *(v42 - 32);
      sub_1005C29E8(v41, v43, type metadata accessor for LibraryImport.ViewModel);
      sub_1005C29E8(v43, v20, type metadata accessor for LibraryImport.ViewModel);
      v40(v20, 0, 1, v24);
      return sub_10003D17C(v20, v52, &unk_1011A4B90, &unk_100ED2800);
    }
  }

  sub_10054F178(&v53);
  return sub_10003D17C(v20, v52, &unk_1011A4B90, &unk_100ED2800);
}

uint64_t sub_1005A9A58()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer;
  if (*&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___updateCoalescer];
  }

  else
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_10010FC20(&qword_101196F78, &qword_100ED5C90);
    swift_allocObject();
    v5 = v0;
    v2 = sub_1005BDBEC(sub_1005BEEFC, v3, sub_1005BEF04, v4, 1.0);
    *&v0[v1] = v2;
  }

  return v2;
}

void sub_1005A9B68()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1005BF3BC(2u);
  if (v6)
  {
    return;
  }

  v7 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
  if (v7 != 2 && (v7 & 1) == 0)
  {
    v22 = (v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu);
    swift_beginAccess();
    v23 = *v22;
    if (*v22)
    {
      v24 = v22[1];
      v25 = v22[2];
      v26 = v22[3];
      v27 = v22[4];
      v28 = v22[5];
      v54 = *v22;
      v55 = v24;
      v56 = v25;
      v57 = v26;
      v58 = v27;
      v59 = v28;
      v29 = *(v23 + 16);
      if (v29)
      {
        v51 = v25;
        v52 = v24;
        v49 = v27;
        v50 = v26;
        v48 = v28;
        sub_100400AB4(v23, v24, v25, v26, v27, v28);

        for (i = 0; i != v29; ++i)
        {
          if (!Library.Menu.selectionState(for:)(*(v23 + i + 32)))
          {
            v31 = sub_1005A5F8C();
            IndexPath.init(item:section:)();
            isa = IndexPath._bridgeToObjectiveC()().super.isa;
            (*(v3 + 8))(v5, v2);
            [v31 selectItemAtIndexPath:isa animated:0 scrollPosition:0];
          }
        }

        swift_bridgeObjectRelease_n();
      }

      else
      {
        v33 = v24;
        sub_100400AB4(v23, v24, v25, v26, v27, v28);
      }
    }

    return;
  }

  v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier;
  v52 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier);
  v10 = v52;
  v11 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (!v12)
  {
    return;
  }

  v51 = *(v12 + 16);
  if (!v51)
  {
    return;
  }

  v41[0] = v9;

  v13 = 0;
  v49 = "LibraryView.Playlists";
  v50 = "LibraryView.RecentlyAdded";
  v47 = "LibraryView.Albums";
  v48 = "LibraryView.Artists";
  v45 = "LibraryView.MadeForYou";
  v46 = "LibraryView.Songs";
  v43 = "LibraryView.Genres";
  v44 = "LibraryView.MusicVideos";
  v42 = "LibraryView.Compilations";
  v41[3] = "LibraryView.Composers";
  v41[2] = "LibraryView.Shows";
  v41[1] = "LibraryView.Downloaded";
  while (2)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      return;
    }

    v14 = 0xD000000000000029;
    v15 = "nt";
    switch(*(v12 + v13 + 32))
    {
      case 1:
        v14 = 0xD000000000000025;
        v15 = v50;
        break;
      case 2:
        v14 = 0xD000000000000023;
        v15 = v49;
        break;
      case 3:
        v14 = 0xD000000000000022;
        v15 = v48;
        break;
      case 4:
        v14 = 0xD000000000000021;
        v15 = v47;
        break;
      case 5:
        v14 = 0xD000000000000026;
        v15 = v46;
        break;
      case 6:
        v14 = 0xD000000000000027;
        v15 = v45;
        break;
      case 7:
        v14 = 0xD000000000000022;
        v15 = v44;
        break;
      case 8:
        v14 = 0xD000000000000028;
        v15 = v43;
        break;
      case 9:
        v14 = 0xD000000000000025;
        v15 = v42;
        break;
      case 0xA:
        v14 = 0xD000000000000021;
        v16 = &v62;
        goto LABEL_23;
      case 0xB:
        v14 = 0xD000000000000026;
        v16 = &v61;
        goto LABEL_23;
      case 0xC:
        v14 = 0xD000000000000027;
        v16 = &v60;
LABEL_23:
        v15 = *(v16 - 32);
        break;
      default:
        break;
    }

    v17 = v15 | 0x8000000000000000;
    v18 = 0xD000000000000029;
    v19 = "nt";
    switch(v10)
    {
      case 0:
        goto LABEL_39;
      case 1:
        v18 = 0xD000000000000025;
        v19 = v50;
        goto LABEL_39;
      case 2:
        v18 = 0xD000000000000023;
        v19 = v49;
        goto LABEL_39;
      case 3:
        v18 = 0xD000000000000022;
        v19 = v48;
        goto LABEL_39;
      case 4:
        v18 = 0xD000000000000021;
        v19 = v47;
        goto LABEL_39;
      case 5:
        v18 = 0xD000000000000026;
        v19 = v46;
        goto LABEL_39;
      case 6:
        v18 = 0xD000000000000027;
        v19 = v45;
        goto LABEL_39;
      case 7:
        v18 = 0xD000000000000022;
        v19 = v44;
        goto LABEL_39;
      case 8:
        v18 = 0xD000000000000028;
        v19 = v43;
        goto LABEL_39;
      case 9:
        v18 = 0xD000000000000025;
        v19 = v42;
        goto LABEL_39;
      case 10:
        v18 = 0xD000000000000021;
        v20 = &v62;
        goto LABEL_37;
      case 11:
        v18 = 0xD000000000000026;
        v20 = &v61;
        goto LABEL_37;
      case 12:
        v18 = 0xD000000000000027;
        v20 = &v60;
LABEL_37:
        v19 = *(v20 - 32);
LABEL_39:
        if (v14 != v18 || v17 != (v19 | 0x8000000000000000))
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_53;
          }

          if (v51 == ++v13)
          {

            return;
          }

          continue;
        }

LABEL_53:

        v34 = sub_1005A5F8C();
        v35 = [v34 indexPathsForSelectedItems];

        if (v35)
        {
          v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          IndexPath.init(item:section:)();
          v37 = sub_100503B90(v5, v36);

          v38 = *(v3 + 8);
          v38(v5, v2);
          if (!v37)
          {
            v39 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView);
            IndexPath.init(item:section:)();
            v40 = IndexPath._bridgeToObjectiveC()().super.isa;
            v38(v5, v2);
            [v39 selectItemAtIndexPath:v40 animated:0 scrollPosition:0];
          }
        }

        *(v1 + v41[0]) = 13;
        return;
      default:
        return;
    }
  }
}

void sub_1005AA224(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
    if (v4 != 2 && (v4 & 1) == 0)
    {
    }

    else
    {
      v6 = Strong;
      sub_1005A9A58();
      v7[3] = sub_10010FC20(&qword_101196F80, &qword_100ED5C98);
      v7[0] = a1;

      sub_1005BDE8C(v7, 3);
    }
  }
}

void sub_1005AA2E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1005AA3F8(2u);
    v4 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v6.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v6, 0, sub_1005C3510, v5).super.super.isa;

    [v4 setMenu:isa];
  }
}

double sub_1005AA3F8(unsigned __int8 a1)
{
  v2 = v1;
  v12 = _swiftEmptyArrayStorage;
  if (sub_10049CB78())
  {
    goto LABEL_15;
  }

  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE270;
  *(inited + 32) = sub_1005B3C58();
  *(inited + 40) = [v1 editButtonItem];
  *(inited + 48) = sub_1005AA634();
  sub_1001240B4(inited);
  if (a1 == 2)
  {
    a1 = [v1 isEditing];
  }

  v5 = sub_10003169C();
  if (v5)
  {
    if (v5[2])
    {

      MusicPageProvider.accountButtonCoordinator.getter();
      v6 = dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();

      goto LABEL_9;
    }
  }

  v6 = 0;
LABEL_9:
  v7 = *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem];
  if (a1)
  {
    [v7 setHidden:1];
    v8 = [v2 editButtonItem];
    [v8 setHidden:0];

    [*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem] setHidden:1];
  }

  else
  {
    v9 = (v6 & 1) == 0 || *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] >= 1.0;
    [v7 setHidden:v9];
    v10 = [v2 editButtonItem];
    [v10 setHidden:1];

    [*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem] setHidden:*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] >= 1.0];
  }

LABEL_15:
  sub_1005BD4A8(&v12, v2);

  return result;
}

id sub_1005AA634()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v7 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1005BF474, v4, v6);

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1005AA718(void ***a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v50 = *(v7 - 8);
  __chkstk_darwin();
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v9 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = v6;
    v11 = Strong;
    v12 = [v11 traitCollection];
    v47 = sub_100137E8C();
    UITraitCollection.subscript.getter();

    *&v56[0] = v9;
    type metadata accessor for MusicLibrary();
    sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    LOBYTE(v12) = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v12)
    {
    }

    else
    {
      v45 = v3;
      v46 = v4;
      v13 = *(*&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController] + 48);
      swift_beginAccess();
      v14 = *(v13 + 16);
      v15 = *(v13 + 32);
      v16 = *(v13 + 48);
      v17 = *(v13 + 64);
      v18 = *(v13 + 96);
      v56[4] = *(v13 + 80);
      v56[5] = v18;
      v57 = *(v13 + 112);
      v56[2] = v16;
      v56[3] = v17;
      v56[0] = v14;
      v56[1] = v15;
      v44 = v7;
      v19 = v14;
      v20 = *(v13 + 48);
      v59 = *(v13 + 32);
      v60 = v20;
      v21 = *(v13 + 64);
      v22 = *(v13 + 80);
      v23 = *(v13 + 96);
      v64 = *(v13 + 112);
      v62 = v22;
      v63 = v23;
      v61 = v21;

      sub_10003D868(v56, v55);

      v58[0] = v19;
      v58[1] = v9;
      sub_100379FBC(v58);
      v24 = *&v11[OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController];
      Library.Menu.Request.MediaLibrarySource.init(_:)();
      v26 = v25;
      v28 = v27;
      swift_beginAccess();
      v29 = v24[2];
      *v55 = v24[1];
      *&v55[16] = v29;
      v30 = v24[4];
      *&v55[32] = v24[3];
      *&v55[48] = v30;
      *&v55[64] = v24[5];
      v31 = *v55;
      LOBYTE(v19) = v55[8];

      sub_1003E1510(v55, &v51);
      sub_1003E156C(v31, v19);
      v54 = v28 & 1;
      v51 = v26;
      v52[0] = v28 & 1;
      *&v52[17] = *&v55[25];
      *&v52[33] = *&v55[41];
      v53[0] = *&v55[57];
      *(v53 + 15) = *&v55[72];
      *&v52[1] = *&v55[9];
      RequestResponse.Controller.request.setter(&v51);
      v32 = sub_1005AA634();
      sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
      v33 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v34.value = 0;
      isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v34, 0, sub_1005C3510, v33).super.super.isa;

      [v32 setMenu:isa];

      UIViewController.traitOverrides.getter();
      v51 = v9;

      dispatch thunk of UIMutableTraits.subscript.setter();
      UIViewController.traitOverrides.setter();

      sub_1005AADBC();
      sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
      v36 = static OS_dispatch_queue.main.getter();
      v37 = swift_allocObject();
      *(v37 + 16) = v11;
      *&v52[24] = sub_1005C3408;
      *&v52[32] = v37;
      v51 = _NSConcreteStackBlock;
      *v52 = 1107296256;
      *&v52[8] = sub_10002BC98;
      *&v52[16] = &unk_1010B50C8;
      v38 = _Block_copy(&v51);
      v39 = v11;

      v40 = v49;
      static DispatchQoS.unspecified.getter();
      v51 = _swiftEmptyArrayStorage;
      sub_100029710(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10010FC20(&qword_101182970, &qword_100EBD250);
      sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
      v41 = v48;
      v42 = v45;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v46 + 8))(v41, v42);
      (*(v50 + 8))(v40, v44);
    }
  }
}

uint64_t sub_1005AADBC()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v16 - v2;
  v4 = sub_10010FC20(&unk_101197280, &unk_100ED5ED0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_10049CB78();
  v9 = v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_pinsObserver;
  if (v8)
  {
    swift_beginAccess();
    if (*(v9 + 24))
    {
      sub_100008FE4(v9, &v20);
      sub_10000954C(&v20, *(&v21 + 1));
      dispatch thunk of Cancellable.cancel()();
      sub_10000959C(&v20);
    }

    v22 = 0;
    v20 = 0u;
    v21 = 0u;
  }

  else
  {
    v17 = v5;
    v18 = v4;
    swift_beginAccess();
    if (*(v9 + 24))
    {
      sub_100008FE4(v9, &v20);
      sub_10000954C(&v20, *(&v21 + 1));
      dispatch thunk of Cancellable.cancel()();
      sub_10000959C(&v20);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v20);

    MusicLibrary.pinsObserver.getter();

    v10 = dispatch thunk of MusicLibraryPinsObserver.pinsPublisher.getter();

    *&v20 = v10;
    sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
    v11 = static OS_dispatch_queue.main.getter();
    v19 = v11;
    v12 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_10010FC20(&qword_10118BFE8, &qword_100ECBCC0);
    sub_100020674(&unk_101197290, &qword_10118BFE8, &qword_100ECBCC0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    sub_1000206BC();
    Publisher.receive<A>(on:options:)();
    sub_1000095E8(v3, &qword_101182140, &unk_100EBD2A0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_100020674(&qword_10118BFF0, &unk_101197280, &unk_100ED5ED0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v13 = v18;
    v14 = Publisher<>.sink(receiveValue:)();

    (*(v17 + 8))(v7, v13);
    *(&v21 + 1) = type metadata accessor for AnyCancellable();
    v22 = &protocol witness table for AnyCancellable;
    *&v20 = v14;
  }

  swift_beginAccess();
  sub_10006B010(&v20, v9, &qword_10118D380, &qword_100EBDE20);
  return swift_endAccess();
}

void sub_1005AB21C()
{
  sub_1005BF3BC(2u);
  if ((v0 & 1) == 0)
  {
    v1 = sub_1005A5F8C();
    sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
    type metadata accessor for IndexPath();
    *(swift_allocObject() + 16) = xmmword_100EBC6B0;
    IndexPath.init(index:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 reloadItemsAtIndexPaths:isa];
  }
}

uint64_t sub_1005AB368@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011970C8, &qword_100ED5D88);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___pinCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011970C8, &qword_100ED5D88);
  v8 = sub_10010FC20(&qword_101196E80, &qword_100ED59A0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011970C8, &qword_100ED5D88);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  _s22PinsCollectionViewCellCMa();
  type metadata accessor for MusicPin();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011970C8, &qword_100ED5D88);
  return swift_endAccess();
}

void sub_1005AB5D0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for IndexSet();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (qword_10117F678 != -1)
    {
      swift_once();
    }

    v8 = sub_10010BA00(&off_10109BBC0);
    sub_1003C6340(v8);

    v9 = sub_1005BF3BC(1u);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      v12 = sub_1005A5F8C();
      sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100EBC6B0;
      *(v13 + 32) = v11;
      v17 = v13;
      sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
      sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      IndexSet._bridgeToObjectiveC()(v14);
      v16 = v15;
      (*(v3 + 8))(v5, v2);
      [v12 reloadSections:v16];

      v7 = v16;
    }
  }
}

uint64_t sub_1005AB840()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController;
  if (*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___downloadsController);
  }

  else
  {
    type metadata accessor for LibraryDownloadsController(0);
    v2 = swift_allocObject();
    type metadata accessor for Track();
    MusicItemCollection.init(arrayLiteral:)();
    v3 = (v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_didUpdateDownloadQueue);
    *v3 = 0;
    v3[1] = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_viewModel) = 0;
    v4 = v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_downloadQueueSubscription;
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
    *(v2 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_itemStateCache) = _swiftEmptyDictionarySingleton;
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1005AB940(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v42 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v59 = v4;
    v12 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    v13 = dispatch thunk of Collection.distance(from:to:)();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v13 == dispatch thunk of Collection.distance(from:to:)() || (v57 = v6, v14 = (v11 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu), swift_beginAccess(), (v15 = *v14) == 0))
    {
    }

    else
    {
      v55 = v8;
      v56 = v3;
      v17 = v14[4];
      v16 = v14[5];
      v18 = v14[2];
      v19 = v14[3];
      v20 = v14[1];
      v58 = v15;

      v21 = v20;

      v22 = sub_1005BF3BC(2u);
      if (v23)
      {
      }

      else
      {
        v52 = v16;
        v53 = v17;
        v54 = v19;
        v49 = v21;
        v50 = v11;
        v51 = v18;
        v24 = *(v58 + 16);
        v25 = v58;
        if (v24)
        {
          v42[1] = v22;
          v60 = 0x8000000100E3C2C0;
          v48 = 0x8000000100E3C260;
          v47 = 0x8000000100E3C230;
          v46 = 0x8000000100E3C200;
          v45 = 0x8000000100E3C1D0;
          v44 = 0x8000000100E3C1A0;
          v43 = 0x8000000100E3C170;
          v42[5] = 0x8000000100E3C140;
          v42[4] = 0x8000000100E3C110;
          v42[3] = 0x8000000100E3C0E0;
          v42[2] = 0x8000000100E3C0B0;
          v61 = 0x8000000100E3C080;

          v26 = v25;
          v27 = 0;
          while (2)
          {
            if (v27 >= *(v26 + 16))
            {
              __break(1u);
LABEL_55:
              __break(1u);
LABEL_56:
              v12 = sub_100499724(0, v12[2] + 1, 1, v12);
LABEL_48:
              v39 = v12[2];
              v38 = v12[3];
              if (v39 >= v38 >> 1)
              {
                v12 = sub_100499724((v38 > 1), v39 + 1, 1, v12);
              }

              v12[2] = v39 + 1;
              (*(v11 + 32))(v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v39, v57, v56);
            }

            else
            {
              v21 = v61;
              v28 = 0x8000000100E3C290;
              switch(v27[v26 + 32])
              {
                case 1:
                  v29 = &v64;
                  goto LABEL_26;
                case 2:
                  v29 = &v65;
                  goto LABEL_26;
                case 3:
                  v29 = &v66;
                  goto LABEL_26;
                case 4:
                  v30 = &v67;
                  goto LABEL_15;
                case 5:
                  v28 = v43;
                  goto LABEL_22;
                case 6:
                  v29 = &v68;
                  goto LABEL_26;
                case 7:
                  v29 = &v69;
                  goto LABEL_26;
                case 8:
                  v29 = &v70;
                  goto LABEL_26;
                case 9:
                  v29 = &v71;
LABEL_26:
                  v21 = *(v29 - 32);
                  goto LABEL_27;
                case 10:
                  v30 = &v72;
LABEL_15:
                  v21 = *(v30 - 32);
                  goto LABEL_27;
                case 11:
LABEL_22:
                  if (0x8000000100E3C290 == v28)
                  {

LABEL_32:

                    dispatch thunk of Collection.startIndex.getter();
                    dispatch thunk of Collection.endIndex.getter();
                    v11 = v63 == v62;
                    dispatch thunk of Collection.startIndex.getter();
                    dispatch thunk of Collection.endIndex.getter();
                    v31 = v55;
                    if ((v11 ^ (v63 != v62)))
                    {
                      v12 = _swiftEmptyArrayStorage;
                    }

                    else
                    {
                      IndexPath.init(item:section:)();
                      v12 = sub_100499724(0, 1, 1, _swiftEmptyArrayStorage);
                      v33 = v12[2];
                      v32 = v12[3];
                      v11 = v59;
                      if (v33 >= v32 >> 1)
                      {
                        v12 = sub_100499724((v32 > 1), v33 + 1, 1, v12);
                      }

                      v34 = v56;
                      v12[2] = v33 + 1;
                      (*(v11 + 32))(v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v33, v31, v34);
                    }

                    v24 = *(v25 + 16);
                    if (v24)
                    {
                      goto LABEL_38;
                    }

                    goto LABEL_46;
                  }

                  v21 = v28;
LABEL_27:
                  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v11)
                  {
                    goto LABEL_32;
                  }

                  ++v27;
                  v26 = v25;
                  if (v24 != v27)
                  {
                    continue;
                  }

                  v12 = _swiftEmptyArrayStorage;
                  v24 = *(v25 + 16);
                  if (!v24)
                  {
                    goto LABEL_46;
                  }

LABEL_38:

                  v35 = v25;
                  v21 = 0;
                  while (2)
                  {
                    if (v21 >= *(v35 + 16))
                    {
                      goto LABEL_55;
                    }

                    v36 = v60;
                    switch(v21[v35 + 32])
                    {
                      case 6:
                        v36 = v44;
                        goto LABEL_42;
                      case 12:
LABEL_42:
                        if (v60 != v36)
                        {
                          goto LABEL_43;
                        }

                        goto LABEL_47;
                      default:
LABEL_43:
                        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v11)
                        {
LABEL_47:

                          IndexPath.init(item:section:)();
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v24 = v49;
                          v21 = v50;
                          v11 = v59;
                          if (isUniquelyReferenced_nonNull_native)
                          {
                            goto LABEL_48;
                          }

                          goto LABEL_56;
                        }

                        ++v21;
                        v35 = v25;
                        if (v24 != v21)
                        {
                          continue;
                        }

                        break;
                    }

                    break;
                  }

LABEL_46:
                  v24 = v49;
                  v21 = v50;
                  break;
                case 12:
                  v21 = v60;
                  goto LABEL_27;
                default:
                  goto LABEL_27;
              }
            }

            break;
          }
        }

        else
        {
          v24 = v49;
          v21 = v50;
        }

        v40 = sub_1005A5F8C();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v40 reconfigureItemsAtIndexPaths:isa];
      }
    }
  }

  return result;
}

uint64_t sub_1005AC238@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1005AC4C0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011970A0, &qword_100ED5D78);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___libraryImportCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011970A0, &qword_100ED5D78);
  v8 = sub_10010FC20(&qword_101196E70, &qword_100ED5998);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_1011970A0, &qword_100ED5D78);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for LibraryImport.ViewModel(0);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_1011970A0, &qword_100ED5D78);
  return swift_endAccess();
}

uint64_t sub_1005AC738@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_101197108, &qword_100ED5DF0);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___menuCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_101197108, &qword_100ED5DF0);
  v8 = sub_10010FC20(&qword_101196E90, &qword_100ED59A8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_101197108, &qword_100ED5DF0);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_101197108, &qword_100ED5DF0);
  return swift_endAccess();
}

uint64_t sub_1005AC9A8@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101197170, &qword_100ED5E18);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___recentCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101197170, &qword_100ED5E18);
  v8 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101197170, &qword_100ED5E18);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for RecentlyAddedMusicItem();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101197170, &qword_100ED5E18);
  return swift_endAccess();
}

uint64_t sub_1005ACC20@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101197098, &qword_100ED5D70);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___inlineBubbleTipRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101197098, &qword_100ED5D70);
  v8 = sub_10010FC20(&qword_101196E60, &qword_100ED5990);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101197098, &qword_100ED5D70);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for InlineBubbleTipCell();
  type metadata accessor for InlineBubbleTipProvider.InlineBubbleTip();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101197098, &qword_100ED5D70);
  return swift_endAccess();
}

char *sub_1005ACE88(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v4 = &v53 - v3;
  v5 = type metadata accessor for RecentlyAddedMusicItem();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin();
  v62 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPin.Action();
  v60 = *(v7 - 8);
  v61 = v7;
  __chkstk_darwin();
  v56 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v55 = &v53 - v9;
  v59 = type metadata accessor for MusicPin.Item();
  v57 = *(v59 - 8);
  __chkstk_darwin();
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v53 - v14;
  v15 = type metadata accessor for MusicPin();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v53 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v65 = result;
  if (result)
  {
    v54 = v20;
    v22 = IndexPath.section.getter();
    sub_1005BF47C(v22);
    if (v23 > 1u)
    {
      if (v23 != 2)
      {
        v39 = v65;
        sub_1005A7C20(0, v4);
        v41 = v63;
        v40 = v64;
        if ((*(v63 + 48))(v4, 1, v64) != 1)
        {
          v42 = v62;
          (*(v41 + 32))(v62, v4, v40);
          v43 = *(*&v39[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController] + 48);
          swift_beginAccess();
          v44 = *(v43 + 80);
          v67[3] = *(v43 + 64);
          v67[4] = v44;
          v67[5] = *(v43 + 96);
          v68 = *(v43 + 112);
          v45 = *(v43 + 32);
          v67[0] = *(v43 + 16);
          v67[1] = v45;
          v67[2] = *(v43 + 48);
          sub_10003D868(v67, &v66);
          sub_100455348(v42, v13);
          sub_10003D90C(v67);
          v46 = type metadata accessor for MusicPlaybackIntentDescriptor();
          v47 = *(v46 - 8);
          if ((*(v47 + 48))(v13, 1, v46) == 1)
          {
            sub_1000095E8(v13, &unk_10118CDB0, &unk_100EC0360);
            v48 = 0;
          }

          else
          {
            v48 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
            (*(v47 + 8))(v13, v46);
          }

          v52 = v62;
          v51 = sub_1007989EC(v48, &off_10109BBE8);

          (*(v41 + 8))(v52, v40);
          return v51;
        }

        sub_1000095E8(v4, &unk_101197040, &unk_100EDAE40);
        return 0;
      }
    }

    else if (v23)
    {
      v24 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
      v25 = v65;
      swift_beginAccess();
      v26 = *&v25[v24];
      if (v26)
      {
        v27 = IndexPath.item.getter();
        if ((v27 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v28 = v54;
          if (v27 < *(v26 + 16))
          {
            a1 = v15;
            v15 = v16;
            (*(v16 + 16))(v18, v26 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v27, a1);
            swift_endAccess();
            (*(v16 + 32))(v28, v18, a1);
            if (qword_10117F6D8 == -1)
            {
LABEL_8:
              v64 = qword_101218C40;
              MusicPin.item.getter();
              v29 = v55;
              MusicPin.action.getter();
              v31 = v60;
              v30 = v61;
              v32 = v56;
              (*(v60 + 104))(v56, enum case for MusicPin.Action.shuffle(_:), v61);
              v33 = static MusicPin.Action.== infix(_:_:)();
              v34 = *(v31 + 8);
              v34(v32, v30);
              v34(v29, v30);
              v35 = v58;
              sub_10042BAAC(v11, v33 & 1, v58);
              (*(v57 + 8))(v11, v59);
              v36 = type metadata accessor for MusicPlaybackIntentDescriptor();
              v37 = *(v36 - 8);
              if ((*(v37 + 48))(v35, 1, v36) == 1)
              {
                sub_1000095E8(v35, &unk_10118CDB0, &unk_100EC0360);
                v38 = 0;
              }

              else
              {
                v38 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
                (*(v37 + 8))(v35, v36);
              }

              v49 = v65;
              v50 = v54;
              v51 = sub_100798374(v38, _swiftEmptyArrayStorage);

              (*(v15 + 8))(v50, a1);
              return v51;
            }

LABEL_26:
            swift_once();
            goto LABEL_8;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      swift_endAccess();

      return 0;
    }

    return 0;
  }

  return result;
}

unint64_t sub_1005AD678@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for MusicPin();
  v51 = *(v5 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin();
  v50 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = v44 - v7;
  __chkstk_darwin();
  v49 = v44 - v8;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v52 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = v44 - v14;
  __chkstk_darwin();
  v17 = v44 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  v19 = result;
  v45 = v5;
  v47 = a1;
  sub_1000089F8(a1, v17, &unk_10118BCE0, &qword_100EC6450);
  v20 = *(v10 + 48);
  if (v20(v17, 1, v9) == 1)
  {
    sub_1000095E8(v17, &unk_10118BCE0, &qword_100EC6450);
LABEL_7:
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v53);

    v25 = v53[0];
    (*(v10 + 56))(v13, 1, 1, v9);
    a3[3] = &type metadata for DragDropToLibrary.Destination;
    a3[4] = sub_1005C31E4();
    v26 = swift_allocObject();
    *a3 = v26;
    sub_100376BCC(v13, (v26 + 24));

    result = sub_1000095E8(v13, &unk_10118BCE0, &qword_100EC6450);
    *(v26 + 16) = v25;
    return result;
  }

  v21 = IndexPath.section.getter();
  v46 = a3;
  v22 = v21;
  v44[0] = *(v10 + 8);
  v44[1] = v10 + 8;
  (v44[0])(v17, v9);
  v23 = v22;
  a3 = v46;
  sub_1005BF47C(v23);
  if (v24 != 1)
  {
    goto LABEL_7;
  }

  sub_1000089F8(v47, v15, &unk_10118BCE0, &qword_100EC6450);
  if (v20(v15, 1, v9) == 1)
  {

    result = sub_1000095E8(v15, &unk_10118BCE0, &qword_100EC6450);
LABEL_13:
    a3[4] = 0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
    return result;
  }

  v27 = v52;
  (*(v10 + 32))(v52, v15, v9);
  v28 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  v29 = *&v19[v28];
  if (!v29)
  {
    swift_endAccess();

    result = (v44[0])(v27, v9);
    goto LABEL_13;
  }

  result = IndexPath.item.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v30 = v51;
    if (result < *(v29 + 16))
    {
      v31 = *(v51 + 80);
      v32 = v29 + ((v31 + 32) & ~v31) + *(v51 + 72) * result;
      v33 = *(v51 + 16);
      v34 = v48;
      v35 = v45;
      v33(v48, v32, v45);
      swift_endAccess();
      (v44[0])(v52, v9);
      v36 = *(v30 + 32);
      v37 = v49;
      v36(v49, v34, v35);
      v52 = type metadata accessor for DragDropPins.Destination(0);
      v38 = v46;
      v46[3] = v52;
      v38[4] = sub_100029710(&qword_101189638, type metadata accessor for DragDropPins.Destination, &unk_100EC5040);
      v39 = sub_10001C8B8(v38);
      v33(v39, v37, v35);
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v41 = v50;
      v36(v50, v37, v35);
      v42 = swift_allocObject();
      *(v42 + 16) = v40;
      result = (v36)(v42 + ((v31 + 24) & ~v31), v41, v35);
      v43 = (v39 + *(v52 + 5));
      *v43 = &unk_100ED5EE8;
      v43[1] = v42;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1005ADCC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1005ADD5C, v5, v4);
}

uint64_t sub_1005ADD5C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    v4 = *&v2[v3];
    if (!v4 || (v5 = v0[14], v6 = swift_task_alloc(), *(v6 + 16) = v5, , v7 = sub_1007356C4(sub_1005C3514, v6, v4), v9 = v8, , , (v9 & 1) != 0) || (v10 = *&v2[v3]) == 0 || (v11 = v0[16], v12 = swift_task_alloc(), *(v12 + 16) = v11, , v13 = sub_1007356C4(sub_1005C33DC, v12, v10), v15 = v14, , , (v15 & 1) != 0) || (v16 = sub_1005BF3BC(1u), (v17 & 1) != 0))
    {
    }

    else
    {
      v20 = v16;
      v21 = sub_1005A5F8C();
      v22 = swift_allocObject();
      v22[2] = v2;
      v22[3] = v7;
      v22[4] = v13;
      v22[5] = v20;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1005C33FC;
      *(v23 + 24) = v22;
      v0[6] = sub_100029B94;
      v0[7] = v23;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100029B9C;
      v0[5] = &unk_1010B5078;
      v24 = _Block_copy(v0 + 2);
      v25 = v2;

      [v21 performBatchUpdates:v24 completion:0];
      _Block_release(v24);
    }
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_1005ADFEC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicPin();
  sub_100029710(&qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  sub_100029710(qword_1011972F0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

void sub_1005AE0B4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a4;
  sub_10010FC20(&unk_1011972E0, &qword_100ED5EF0);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = type metadata accessor for MusicPin();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1005AE3F0(v26);
  v15 = *v13;
  v24 = a3;
  if (!v15)
  {
    v14(v26, 0);
    goto LABEL_6;
  }

  v16 = v13;
  sub_1004F41FC(a2, v12);
  if (*(*v16 + 16) < a3)
  {
    __break(1u);
  }

  else if ((a3 & 0x8000000000000000) == 0)
  {
    (*(v10 + 16))(v8, v12, v9);
    sub_1003AE2DC(a3, a3, v8);
    (*(v10 + 8))(v12, v9);
    v14(v26, 0);
LABEL_6:
    v17 = sub_1005A5F8C();
    sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
    type metadata accessor for IndexPath();
    v18 = swift_allocObject();
    v23 = xmmword_100EBC6B0;
    *(v18 + 16) = xmmword_100EBC6B0;
    IndexPath.init(item:section:)();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v17 deleteItemsAtIndexPaths:isa];

    v20 = *(a1 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView);
    *(swift_allocObject() + 16) = v23;
    v21 = v20;
    IndexPath.init(item:section:)();
    v22 = Array._bridgeToObjectiveC()().super.isa;

    [v21 insertItemsAtIndexPaths:v22];

    return;
  }

  __break(1u);
}

void (*sub_1005AE3F0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1005AE454;
}

void sub_1005AE454(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1005B4E14();
  }
}

void sub_1005AE488(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong editButtonItem];
    [v5 setEnabled:a1 == 0];

    v6 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v8.value = 0;
    isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v8, 0, sub_1005C3510, v7).super.super.isa;

    [v6 setMenu:isa];
  }
}

double sub_1005AE5C4(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118B910, L"b\v\a");
  __chkstk_darwin();
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v21[-v5];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v8 = Strong;
  sub_1000089F8(a1, v6, &unk_10118B910, L"b\v\a");
  v9 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  v10 = *(*(v9 - 8) + 48);
  v11 = v10(v6, 1, v9);
  sub_1000095E8(v6, &unk_10118B910, L"b\v\a");
  if (v11 != 1)
  {
    sub_1000089F8(a1, v4, &unk_10118B910, L"b\v\a");
    if (v10(v4, 1, v9) != 1)
    {
      v13 = v4[1];
      sub_1005C3434(v4, type metadata accessor for CollectionViewDragDropController.DropContext);
      v14 = [v13 operation];

      v12 = v14 == 2;
      goto LABEL_7;
    }

    sub_1000095E8(v4, &unk_10118B910, L"b\v\a");
  }

  v12 = 0;
LABEL_7:
  v15 = v8[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView];
  v8[OBJC_IVAR____TtC5Music25LibraryMainViewController_isActiveDropSessionInsideView] = v12;
  sub_1005B9B9C(v15);

LABEL_8:
  swift_beginAccess();
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v18 = v16;

    v19 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
    v20 = (*(*(v19 - 8) + 48))(a1, 1, v19) != 1;
    RequestResponse.Controller.isPaused.setter(v20);
  }

  return result;
}

double sub_1005AE870(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for PlacementID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SocialProfileButtonDisplayStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v14 = Strong;
  if (!a1)
  {
    goto LABEL_8;
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    goto LABEL_8;
  }

  v51 = v4;

  v16 = v15;

  v17 = sub_100674BE4(0);

  v52 = v17;
  if (v17)
  {
    if (sub_10049CB78())
    {

      goto LABEL_7;
    }

    v50 = v5;
    v26 = *&v14[OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton];
    (*(v9 + 104))(v11, enum case for SocialProfileButtonDisplayStyle.iconOnly(_:), v8);
    v27 = v26;
    v49[1] = v16;
    v28 = MusicPageProvider.accountButton(displayStyle:stackAuthority:)();
    (*(v9 + 8))(v11, v8);
    v29 = *&v27[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button];
    v30 = OBJC_IVAR____TtC5Music20AccountButtonWrapper_button;
    *&v27[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = v28;
    if (v29)
    {
      sub_100009F78(0, &qword_101181620, UIView_ptr);
      v31 = v28;
      v32 = v29;
      v33 = static NSObject.== infix(_:_:)();

      if (v33)
      {
LABEL_27:

        v39 = MusicPageProvider.accountButtonCoordinator.getter();
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        __chkstk_darwin();
        v49[-4] = v39;
        v49[-3] = sub_1005C31D4;
        v49[-2] = v40;

        withObservationTracking<A>(_:onChange:)();
        dispatch thunk of AccountButtonCoordinator.isAccountButtonAvailable.getter();
        swift_beginAccess();
        v41 = swift_unknownObjectWeakLoadStrong();
        if (v41)
        {
          v42 = v41;
          sub_1005AA3F8(2u);
        }

        else
        {
        }

        static PlacementID.InlineBubbleTip.libraryPage.getter();
        sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_100EBC6B0;
        *(inited + 32) = 0x6C65694665676170;
        *(inited + 40) = 0xEA00000000007364;
        v44 = OBJC_IVAR____TtC5Music25LibraryMainViewController_bubbleTipPageFields;
        v45 = type metadata accessor for MusicMetrics.PageFields();
        *(inited + 72) = v45;
        v46 = sub_10001C8B8((inited + 48));
        (*(*(v45 - 8) + 16))(v46, &v14[v44], v45);
        sub_10010BC60(inited);
        swift_setDeallocating();
        sub_1000095E8(inited + 32, &unk_1011927D0, &unk_100EBA560);
        v47 = MusicPageProvider.inlineBubbleTipProvider(for:context:)();

        (*(v50 + 8))(v7, v51);
        v48 = OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider;
        *&v14[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider] = v47;

        *(sub_1005A8B2C() + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider) = *&v14[v48];
        swift_retain_n();

        sub_10054E11C();

        return result;
      }
    }

    else
    {
      v34 = v28;
      v32 = 0;
    }

    v35 = [v32 superview];
    if (v35)
    {
      v36 = v35;
      sub_100009F78(0, &qword_101181620, UIView_ptr);
      v37 = v27;
      v38 = static NSObject.== infix(_:_:)();

      if (v38)
      {
        [v32 removeFromSuperview];
      }
    }

    if (*&v27[v30])
    {
      [v27 addSubview:?];
    }

    [v27 setNeedsLayout];
    v31 = v28;
    goto LABEL_27;
  }

LABEL_7:

LABEL_8:
  v18 = *&v14[OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton];
  v19 = OBJC_IVAR____TtC5Music20AccountButtonWrapper_button;
  v20 = *&v18[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button];
  *&v18[OBJC_IVAR____TtC5Music20AccountButtonWrapper_button] = 0;
  if (v20)
  {
    v21 = v18;
    v22 = [v20 superview];
    if (v22)
    {
      v23 = v22;
      sub_100009F78(0, &qword_101181620, UIView_ptr);
      v24 = v21;
      v25 = static NSObject.== infix(_:_:)();

      if (v25)
      {
        [v20 removeFromSuperview];
      }
    }

    if (*&v18[v19])
    {
      [v21 addSubview:?];
    }

    [v21 setNeedsLayout];
  }

  *&v14[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider] = 0;

  *(sub_1005A8B2C() + OBJC_IVAR____TtCO5Music13LibraryImport8Observer_inlineBubbleTipProvider) = 0;

  sub_10054E11C();

  return result;
}

void sub_1005AEF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1005AA3F8(2u);
  }
}

double sub_1005AEFE0(uint64_t a1, __n128 a2)
{
  v3 = a1;
  v4 = a1 & 1;
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(a1);
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(v3);
  v5 = *(v2 + OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController);
  v6 = *(v5 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
  *(v5 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = v3;
  if (v6 != v4)
  {
    if (v3)
    {
      sub_10044D424();
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
      v7 = OBJC_IVAR____TtC5Music25SharedLibrariesController_autoupdatingResponseSubscription;
      swift_beginAccess();
      sub_10006B010(v9, v5 + v7, &qword_10118D380, &qword_100EBDE20);
      swift_endAccess();
    }
  }

  sub_1005AB840();
  sub_10016DB90(v4);

  return result;
}

void sub_1005AF0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong navigationItem];
    [v5 _manualScrollEdgeAppearanceProgress];
    v7 = v6;

    v8 = *&v4[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress];
    *&v4[OBJC_IVAR____TtC5Music25LibraryMainViewController_scrollEdgeAppearanceProgress] = v7;
    if (v7 != v8)
    {
      sub_1005AA3F8(2u);
    }
  }
}

void sub_1005AF1C8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for MusicMetrics.PageFields();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20.receiver = v2;
  v20.super_class = ObjectType;
  objc_msgSendSuper2(&v20, "viewWillAppear:", a1 & 1, v7);
  v10 = sub_1005A5F8C();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_pendingSelectedIdentifier] = 13;
  sub_1005A9B68();
  v11 = [v2 transitionCoordinator];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1005C3148;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1007E9F28;
    aBlock[3] = &unk_1010B4F88;
    v14 = _Block_copy(aBlock);

    [v12 animateAlongsideTransition:0 completion:v14];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    v15 = *&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController];
    v16 = *(v15 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
    *(v15 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
    if (v16 != 1)
    {
      sub_10044D424();
    }

    v17 = sub_1005AB840();
    v18 = *(v17 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
    *(v17 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
    if (v18 != 1)
    {
      sub_10016D6B8();
    }
  }

  if (*&v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider])
  {
    (*(v6 + 16))(v9, &v2[OBJC_IVAR____TtC5Music25LibraryMainViewController_bubbleTipPageFields], v5);

    dispatch thunk of InlineBubbleTipProvider.onAppear(pageFields:)();

    (*(v6 + 8))(v9, v5);
  }
}

double sub_1005AF4CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
    v5 = *&v4[OBJC_IVAR____TtC5Music25LibraryMainViewController_sharedLibrariesController];
    v6 = *(v5 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled);
    *(v5 + OBJC_IVAR____TtC5Music25SharedLibrariesController_isAutomaticReloadingEnabled) = 1;
    if (v6 != 1)
    {
      sub_10044D424();
    }

    v7 = sub_1005AB840();
    v8 = *(v7 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled);
    *(v7 + OBJC_IVAR____TtC5Music26LibraryDownloadsController_isAutomaticReloadingEnabled) = 1;
    if ((v8 & 1) == 0)
    {
      sub_10016D6B8();
    }
  }

  return result;
}

id sub_1005AF604(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18.receiver = v1;
  v18.super_class = ObjectType;
  result = objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v4);
  *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges) = 1;
  if (qword_10117F630 != -1)
  {
    result = swift_once();
  }

  if ((*(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics) & 1) == 0)
  {
    v8 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8) != 0;
    v9 = *MetricsReportingController.shared.unsafeMutableAddressor();
    sub_10003CD38(v8, v6);
    v10 = sub_10053771C();
    v12 = v11;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v13 = qword_101218AD0;
    v14 = GroupActivitiesManager.hasJoined.getter();
    v15 = GroupActivitiesManager.participantsCount.getter();
    v16 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v9) + 0xA0))(v6, v10, v12, v14 & 1, v15, *(v13 + v16));

    return sub_1005C3434(v6, type metadata accessor for MetricsEvent.Page);
  }

  return result;
}

double sub_1005AF87C(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges] = 0;
  v3 = OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics;
  v4 = v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics];
  v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics] = 1;
  sub_1005AF920(0, 0);
  v1[v3] = v4;
  if (*&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_inlineBubbleTipProvider])
  {

    dispatch thunk of InlineBubbleTipProvider.onDisappear()();
  }

  return result;
}

void sub_1005AF920(char a1, char a2)
{
  v3 = v2;
  v6 = a1 & 1;
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  __chkstk_darwin();
  v64 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for IndexSet();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v63 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v15 = &v61 - v14;
  type metadata accessor for MetricsEvent.Click(0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v3 isEditing] == v6)
  {
    return;
  }

  v61 = v10;
  v62 = v9;
  v19 = sub_1005A5F8C();
  [v19 cancelInteractiveMovement];

  v66.receiver = v3;
  v66.super_class = ObjectType;
  objc_msgSendSuper2(&v66, "setEditing:animated:", v6, a2 & 1);
  sub_1005AA3F8(v6);
  v20 = OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext;
  v21 = v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
  if (v21 == 2)
  {
    if (a1)
    {
      v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext] = 0;
      sub_1005AF920(1, 1);
LABEL_16:
      if (*&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_dragDropController])
      {

        sub_10032234C((a1 & 1) == 0);
      }

      [*&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView] setEditing:a1 & 1];
      sub_1005A8BAC(a1 & 1);
      if (a1)
      {
        v51 = 2;
      }

      else
      {
        if (qword_10117F630 != -1)
        {
          swift_once();
        }

        v51 = *(qword_101218B28 + OBJC_IVAR____TtCO5Music3MLI8Observer_sessionID + 8) != 0;
      }

      if ((v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_shouldSkipRecordingPageMetrics] & 1) == 0)
      {
        v52 = *MetricsReportingController.shared.unsafeMutableAddressor();
        v53 = v64;
        sub_10003CD38(v51, v64);
        v54 = sub_10053771C();
        v56 = v55;
        if (qword_10117F600 != -1)
        {
          swift_once();
        }

        v57 = qword_101218AD0;
        v58 = GroupActivitiesManager.hasJoined.getter();
        v59 = GroupActivitiesManager.participantsCount.getter();
        v60 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
        swift_beginAccess();
        (*((swift_isaMask & *v52) + 0xA0))(v53, v54, v56, v58 & 1, v59, *(v57 + v60));

        sub_1005C3434(v53, type metadata accessor for MetricsEvent.Page);
      }

      return;
    }

LABEL_13:
    v43 = &v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu];
    swift_beginAccess();
    v44 = *v43;
    if (*v43)
    {
      v46 = *(v43 + 4);
      v45 = *(v43 + 5);
      v48 = *(v43 + 2);
      v47 = *(v43 + 3);
      v49 = *(v43 + 1);
      v67 = v44;
      v68 = v49;
      v69 = v48;
      v70 = v47;
      v71 = v46;
      v72 = v45;

      v50 = v49;

      Library.Menu.persist()();
    }

    v3[v20] = 2;
    goto LABEL_16;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if ((a1 & 1) == 0)
  {
    v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext] = 2;
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
    sub_10003C9B0(&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties], v13, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(1701736260, 0xE400000000000000, 5, 19, v15, 0, 0, 12, v18, 0, 0, 0xFF00u, v13, 0);
    v23 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v24 = sub_10053771C();
    v26 = v25;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v27 = qword_101218AD0;
    v28 = GroupActivitiesManager.hasJoined.getter();
    v29 = GroupActivitiesManager.participantsCount.getter();
    v30 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v23) + 0xB8))(v18, v24, v26, v28 & 1, v29, *(v27 + v30));

    sub_1005C3434(v18, type metadata accessor for MetricsEvent.Click);
  }

  v31 = sub_1005BF3BC(1u);
  v32 = v61;
  v33 = v62;
  if ((v34 & 1) == 0)
  {
    v35 = v31;
    v36 = *&v3[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView];
    sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100EBC6B0;
    *(v37 + 32) = v35;
    v65 = v37;
    sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v38 = v36;
    sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
    sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
    v39 = v63;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    IndexSet._bridgeToObjectiveC()(v40);
    v42 = v41;
    (*(v32 + 8))(v39, v33);
    [v38 reloadSections:v42];
  }
}

void sub_1005B0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10010FC20(&qword_1011971C0, &qword_100ED5E50);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v28 - v10;
  __chkstk_darwin();
  v13 = v28 - v12;
  __chkstk_darwin();
  v15 = v28 - v14;
  __chkstk_darwin();
  v17 = v28 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = IndexPath.section.getter();
    sub_1005BF47C(v20);
    if (v21 > 1u)
    {
      v28[0] = a1;
      if (v21 == 2)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(v29);

        v22 = v29[0];
        sub_10010FC20(&qword_1011971C8, &qword_100ED5E58);
        sub_1005C2FD4();
        UIHostingConfiguration<>.init(content:)();
        static Edge.Set.horizontal.getter();
        UIHostingConfiguration.margins(_:_:)();
        v23 = *(v7 + 8);
        v23(v13, v6);
        static Edge.Set.top.getter();
        UIHostingConfiguration.margins(_:_:)();
        v23(v15, v6);
        static Edge.Set.bottom.getter();
        v29[0] = v22;
        type metadata accessor for MusicLibrary();
        v28[1] = static MusicLibrary.shared.getter();
        sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
        dispatch thunk of static Equatable.== infix(_:_:)();

        v30 = v6;
        v31 = sub_100020674(&unk_101197200, &qword_1011971C0, &qword_100ED5E50, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
        sub_10001C8B8(v29);
        UIHostingConfiguration.margins(_:_:)();
        v23(v17, v6);
        UICollectionViewCell.contentConfiguration.setter();

        return;
      }

      v24 = v19[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
      v26 = (v24 == 2 || (v24 & 1) != 0) && sub_1005B0C28();
      __chkstk_darwin();
      LOBYTE(v28[-2]) = v26;
      v28[-1] = v19;
      sub_10010FC20(&qword_1011971C8, &qword_100ED5E58);
      sub_1005C2FD4();
      UIHostingConfiguration<>.init(content:)();
      static Edge.Set.horizontal.getter();
      UIHostingConfiguration.margins(_:_:)();
      v27 = *(v7 + 8);
      v27(v15, v6);
      static Edge.Set.top.getter();
      swift_beginAccess();
      UIHostingConfiguration.margins(_:_:)();
      v27(v9, v6);
      static Edge.Set.bottom.getter();
      v30 = v6;
      v31 = sub_100020674(&unk_101197200, &qword_1011971C0, &qword_100ED5E50, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
      sub_10001C8B8(v29);
      UIHostingConfiguration.margins(_:_:)();
      v27(v11, v6);
      UICollectionViewCell.contentConfiguration.setter();
    }
  }
}

uint64_t sub_1005B07C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessibilityTraits();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011971E0, &qword_100ED5E60);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - v10;
  v23 = a1;
  type metadata accessor for MusicLibrary();
  v34 = static MusicLibrary.shared.getter();
  sub_100029710(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
  v12 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v12)
  {
    return (*(v9 + 56))(a2, 1, 1, v8);
  }

  v14 = static VerticalAlignment.center.getter();
  sub_1005B0AC0(&v23);
  v15 = v24;
  v20 = v23;
  v21 = v4;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  LOBYTE(v34) = 1;
  v33 = v25;
  v32 = v28;
  v23 = v14;
  v24 = 0;
  v25 = 1;
  v26 = v20;
  v27 = v15;
  v28 = v33;
  v29 = v17;
  v30 = v18;
  v31 = v32;
  static AccessibilityTraits.isHeader.getter();
  sub_10010FC20(&unk_1011971F0, &qword_100ED5E68);
  v22 = v8;
  sub_100020674(&qword_1011971E8, &unk_1011971F0, &qword_100ED5E68, &protocol conformance descriptor for HStack<A>);
  View.accessibilityAddTraits(_:)();
  (*(v5 + 8))(v7, v21);
  sub_10011895C(v20, v15, v16);

  sub_10003D17C(v11, a2, &qword_1011971E0, &qword_100ED5E60);
  return (*(v9 + 56))(a2, 0, 1, v22);
}

double sub_1005B0AC0@<D0>(uint64_t a1@<X8>)
{
  MusicLibrary.name.getter();
  sub_100009838();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.body.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10011895C(v3, v5, v7 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10011895C(v8, v10, v12 & 1);

  *a1 = v13;
  *(a1 + 8) = v15;
  v17 &= 1u;
  *(a1 + 16) = v17;
  *(a1 + 24) = v19;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_10021D0C0(v13, v15, v17);

  sub_10011895C(v13, v15, v17);

  return result;
}

BOOL sub_1005B0C28()
{
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  v3 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v10 - v5;
  if (!*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision))
  {
    return 0;
  }

  RequestResponse.Revision.content.getter(v2);

  v7 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v7 - 8) + 48))(v2, 1, v7) == 1)
  {
    sub_1000095E8(v2, &unk_10118D090, &unk_100ED5CB0);
    return 0;
  }

  (*(v4 + 16))(v6, v2, v3);
  sub_1000095E8(v2, &unk_10118D0A0, &unk_100EC8DC8);
  v9 = MusicLibrarySectionedResponse.totalItemCount.getter();
  (*(v4 + 8))(v6, v3);
  return v9 > 0;
}

uint64_t sub_1005B0E24@<X0>(char a1@<W0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for AccessibilityTraits();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&qword_1011971E0, &qword_100ED5E60);
  v11 = __chkstk_darwin();
  v13 = &v20 - v12;
  if (a1)
  {
    v23 = v10;
    v14 = static VerticalAlignment.center.getter();
    sub_1005B10EC(&v24);
    v21 = v25;
    v22 = v24;
    v15 = v26;
    v16 = v27;
    v17 = v28;
    v35 = 1;
    v34 = v26;
    v33 = v29;
    v24 = v14;
    v25 = 0;
    v26 = 1;
    v27 = v22;
    v28 = v21;
    v29 = v34;
    v30 = v16;
    v31 = v17;
    v32 = v33;
    static AccessibilityTraits.isHeader.getter();
    sub_10010FC20(&unk_1011971F0, &qword_100ED5E68);
    sub_100020674(&qword_1011971E8, &unk_1011971F0, &qword_100ED5E68, &protocol conformance descriptor for HStack<A>);
    View.accessibilityAddTraits(_:)();
    (*(v6 + 8))(v8, v5);
    sub_10011895C(v22, v21, v15);

    sub_10003D17C(v13, a3, &qword_1011971E0, &qword_100ED5E60);
    return (*(v23 + 56))(a3, 0, 1, v9);
  }

  else
  {
    v19 = *(v10 + 56);

    return v19(a3, 1, 1, v9, v11);
  }
}

double sub_1005B10EC@<D0>(uint64_t a2@<X8>)
{

  sub_1005B12BC();

  sub_100009838();
  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.title2.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10011895C(v3, v5, v7 & 1);

  static Font.Weight.semibold.getter();
  v13 = Text.fontWeight(_:)();
  v15 = v14;
  v17 = v16;
  sub_10011895C(v8, v10, v12 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v18 = Text.foregroundStyle<A>(_:)();
  v20 = v19;
  LOBYTE(v10) = v21;
  v23 = v22;
  sub_10011895C(v13, v15, v17 & 1);

  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v23;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_10021D0C0(v18, v20, v10 & 1);

  sub_10011895C(v18, v20, v10 & 1);

  return result;
}

uint64_t sub_1005B12BC()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  sub_10049CB78();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

void sub_1005B13F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    dispatch thunk of InlineBubbleTipCell.configure(with:)();
  }
}

void sub_1005B1460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011970B0, &qword_100ED5D80);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v11 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    __chkstk_darwin();
    v11[-2] = a3;
    _s10ImportViewVMa(0);
    sub_100029710(&qword_1011970B8, _s10ImportViewVMa, &unk_100ED88EC);
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v11[3] = v5;
    v11[4] = sub_100020674(&qword_1011970C0, &qword_1011970B0, &qword_100ED5D80, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v11);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

void sub_1005B1664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MusicPin();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = sub_1005A5F8C();
    v12 = type metadata accessor for HIMetricsCollectionView();
    v28.receiver = v11;
    v28.super_class = v12;
    objc_msgSendSuper2(&v28, "frame");
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v29.origin.x = v14;
    v29.origin.y = v16;
    v29.size.width = v18;
    v29.size.height = v20;
    Width = CGRectGetWidth(v29);
    v22 = *(*&v10[OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 16);
    v23 = (Width - (v22 + v22) + -24.0) / 3.0;
    (*(v7 + 16))(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v10;
    (*(v7 + 32))(v25 + v24, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
    v26 = v10;
    UICollectionViewCell.configurationUpdateHandler.setter();
    [a1 setZPosition:10.0];
  }
}

uint64_t sub_1005B1890(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10010FC20(&qword_1011970D0, &qword_100ED5D90);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v14[-v11];
  v15 = a4;
  v16 = a3;
  v17 = a5;
  v18 = a1;
  _s7PinCellVMa(0);
  sub_100029710(&qword_1011970D8, _s7PinCellVMa, &unk_100EDD490);
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v19[3] = v9;
  v19[4] = sub_100020674(&unk_1011970E0, &qword_1011970D0, &qword_100ED5D90, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(v19);
  UIHostingConfiguration.margins(_:_:)();
  (*(v10 + 8))(v12, v9);
  return UICollectionViewCell.contentConfiguration.setter();
}

uint64_t sub_1005B1A64@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, double a4@<D0>)
{
  v39 = a2;
  v40 = type metadata accessor for MusicPin();
  v7 = *(v40 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v41 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v38 = &v38 - v9;
  v10 = type metadata accessor for UICellConfigurationState.DragState();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v38 - v14;
  v16 = a1;
  if (a1[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext] & 1) != 0 && (UICellConfigurationState.cellDragState.getter(), (*(v11 + 104))(v13, enum case for UICellConfigurationState.DragState.none(_:), v10), v17 = static UICellConfigurationState.DragState.== infix(_:_:)(), v18 = *(v11 + 8), v18(v13, v10), v18(v15, v10), (v17))
  {
    v19 = swift_allocObject();
    v20 = a1;
    swift_unknownObjectWeakInit();
    v22 = v38;
    v21 = v39;
    v23 = v40;
    (*(v7 + 16))(v38, v39, v40);
    v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    (*(v7 + 32))(v25 + v24, v22, v23);
    v26 = v21;
    v27 = &unk_100ED5DD8;
    v28 = v41;
  }

  else
  {
    v27 = 0;
    v25 = 0;
    v23 = v40;
    v28 = v41;
    v20 = v16;
    v26 = v39;
  }

  (*(v7 + 16))(v28, v26, v23);
  v29 = sub_1005A5F8C();
  v30 = v29[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 24];

  if (v30)
  {
    v31 = 1;
  }

  else
  {
    v32 = [v20 traitCollection];
    v33 = [v32 userInterfaceIdiom];

    v31 = v33 == 6;
  }

  (*(v7 + 32))(a3, v28, v23);
  v34 = _s7PinCellVMa(0);
  *(a3 + v34[5]) = a4;
  *(a3 + v34[6]) = v31;
  v35 = (a3 + v34[7]);
  *v35 = v27;
  v35[1] = v25;
  v36 = v34[8];
  *(a3 + v36) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005B1E40(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  v3 = type metadata accessor for MusicPin();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  type metadata accessor for Actions.MetricsReportingContext(0);
  v2[19] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v2[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[22] = v5;
  v2[23] = v4;

  return _swift_task_switch(sub_1005B1F98, v5, v4);
}

uint64_t sub_1005B1F98()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = [v2 traitCollection];
    sub_100137E8C();
    UITraitCollection.subscript.getter();

    v0[25] = v0[12];
    v4 = swift_task_alloc();
    v0[26] = v4;
    v5 = sub_100029710(&unk_1011970F0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    *v4 = v0;
    v4[1] = sub_1005B2130;
    v6 = v0[15];
    v7 = v0[16];

    return MusicLibrary.unpin<A>(_:)(v6, v7, v5);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1005B2130()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1005B2470;
  }

  else
  {

    v3 = *(v2 + 176);
    v4 = *(v2 + 184);
    v5 = sub_1005B224C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1005B224C()
{
  v20 = v0[24];
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[16];

  sub_100029710(&qword_101197100, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
  v19 = MusicItem.metricsTargetIdentifier.getter(v3);
  v5 = v4;
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  sub_10010FC20(&qword_10118BE78, &unk_100ED5DE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = MusicItem.metricsContentType.getter(v3);
  *(inited + 40) = v8;
  *(inited + 48) = 0;
  v9 = MetricsEvent.Click.ActionDetails.init(_:)(inited);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = BYTE1(v14);
  sub_1005A5B7C(v2);
  static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(v19, v5, 16, 30, v1, v9, v11, v13, v15, v2);
  sub_100344B1C(v9, v11, v13, v15, v16);

  sub_1005C3434(v2, type metadata accessor for Actions.MetricsReportingContext);
  sub_1000095E8(v1, &qword_101183A20, &unk_100EBCF80);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1005B2470()
{
  v25 = v0;
  v1 = v0[24];

  if (qword_10117F750 != -1)
  {
    swift_once();
  }

  v3 = v0[17];
  v2 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, static Logger.libraryView);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[27];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[16];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 136315394;
    sub_100029710(&qword_10118BB00, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000105AC(v15, v17, &v24);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[13] = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v19 = String.init<A>(describing:)();
    v21 = sub_1000105AC(v19, v20, &v24);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v7, v8, "Could not unpin item=%s error=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = v0[1];

  return v22();
}

void sub_1005B275C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_101197118, &qword_100ED5DF8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v17 - v9;
  __chkstk_darwin();
  v12 = v17 - v11;
  v13 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    __chkstk_darwin();
    LOBYTE(v17[-2]) = v13;
    sub_10010FC20(&qword_101197120, &qword_100ED5E00);
    sub_1005C2CBC();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.leading.getter();

    UIHostingConfiguration.margins(_:_:)();
    v16 = *(v6 + 8);
    v16(v8, v5);
    static Edge.Set.trailing.getter();
    UIHostingConfiguration.margins(_:_:)();
    v16(v10, v5);
    static Edge.Set.vertical.getter();
    v17[3] = v5;
    v17[4] = sub_100020674(&qword_101197150, &qword_101197118, &qword_100ED5DF8, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v17);
    UIHostingConfiguration.margins(_:_:)();
    v16(v12, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1005B2A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v50 = a2;
  v48 = sub_10010FC20(&unk_101197158, &qword_100ED5E10);
  __chkstk_darwin();
  v49 = &v38 - v3;
  v4 = type metadata accessor for SymbolEffectOptions();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PulseSymbolEffect();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin();
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v39 = &v38 - v8;
  v52 = sub_10010FC20(&unk_101197138, &qword_100ED5E08);
  __chkstk_darwin();
  v51 = &v38 - v9;
  v47 = type metadata accessor for Font.TextStyle();
  v10 = *(v47 - 8);
  __chkstk_darwin();
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8TextCellVMa(0);
  __chkstk_darwin();
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v46) = v2;
  v16 = Library.Menu.Identifier.symbolName(for:)(2, v2);
  v18 = v17;
  v19 = Library.Menu.Identifier.name(for:)(2, v2);
  v21 = v20;
  v22 = UIFontTextStyleBody;
  static SymbolRenderingMode.monochrome.getter();
  *v15 = v16;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v21;
  v15[4] = v22;
  v53 = 0x4040000000000000;
  v23 = *(v10 + 104);
  v24 = v47;
  v23(v12, enum case for Font.TextStyle.title(_:), v47);
  sub_100363C0C();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v53 = 0x402E000000000000;
  v23(v12, enum case for Font.TextStyle.body(_:), v24);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v47 = v13;
  v25 = *(v13 + 40);
  *(v15 + v25) = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  if (Library.Menu.Identifier.rawValue.getter(v46) == 0xD000000000000027 && 0x8000000100E3C2C0 == v26)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {
      sub_10003C9B0(v15, v49, _s8TextCellVMa);
      swift_storeEnumTagMultiPayload();
      sub_1005C2D78();
      sub_100029710(&qword_10118DE90, _s8TextCellVMa, &unk_100ED7538);
      _ConditionalContent<>.init(storage:)();
      return sub_1005C3434(v15, _s8TextCellVMa);
    }
  }

  v28 = v39;
  PulseSymbolEffect.init()();
  v29 = v40;
  PulseSymbolEffect.wholeSymbol.getter();
  v30 = v42;
  v46 = *(v41 + 8);
  v46(v28, v42);
  v31 = v43;
  static SymbolEffectOptions.default.getter();
  v32 = v51 + *(v52 + 36);
  v33 = type metadata accessor for _IndefiniteSymbolEffectModifier();
  v35 = v44;
  v34 = v45;
  (*(v44 + 16))(v32 + *(v33 + 20), v31, v45);
  sub_100029710(&qword_101197168, &type metadata accessor for PulseSymbolEffect, &protocol conformance descriptor for PulseSymbolEffect);
  dispatch thunk of SymbolEffect.configuration.getter();
  (*(v35 + 8))(v31, v34);
  v46(v29, v30);
  *(v32 + *(v33 + 24)) = 1;
  v36 = v51;
  sub_10003C9B0(v15, v51, _s8TextCellVMa);
  sub_1000089F8(v36, v49, &unk_101197138, &qword_100ED5E08);
  swift_storeEnumTagMultiPayload();
  sub_1005C2D78();
  sub_100029710(&qword_10118DE90, _s8TextCellVMa, &unk_100ED7538);
  _ConditionalContent<>.init(storage:)();
  sub_1000095E8(v36, &unk_101197138, &qword_100ED5E08);
  return sub_1005C3434(v15, _s8TextCellVMa);
}

void sub_1005B30FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&qword_101197178, &qword_100ED5E20);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = v17 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v17[1] = a1;
    v14 = sub_1005A5F8C();
    v15 = v14[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    __chkstk_darwin();
    LOBYTE(v17[-4]) = v15;
    v17[-3] = a3;
    v17[-2] = v13;
    sub_10010FC20(&qword_101197180, &qword_100ED5E28);
    sub_1005C2E78();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();
    UIHostingConfiguration.margins(_:_:)();
    v16 = *(v7 + 8);
    v16(v9, v6);
    static Edge.Set.vertical.getter();
    v18[3] = v6;
    v18[4] = sub_100020674(&unk_1011971A0, &qword_101197178, &qword_100ED5E20, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v18);
    UIHostingConfiguration.margins(_:_:)();
    v16(v11, v6);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1005B3390@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v35 = a4;
  v33 = _s21RecentlyAddedGridCellVMa(0);
  __chkstk_darwin();
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10010FC20(&unk_1011A3DE0, &qword_100ED5E30);
  v31[0] = *(v34 - 8);
  __chkstk_darwin();
  v9 = v31 - v8;
  v31[1] = sub_10010FC20(&qword_1011971B0, &qword_100ED5E38);
  __chkstk_darwin();
  v11 = v31 - v10;
  v12 = _s21RecentlyAddedListCellVMa(0);
  __chkstk_darwin();
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10010FC20(&qword_1011971B8, &unk_100ED5E40);
  v15 = *(v32 - 8);
  __chkstk_darwin();
  v17 = v31 - v16;
  v18 = type metadata accessor for RecentlyAddedMusicItem();
  v19 = *(*(v18 - 8) + 16);
  if (a1)
  {
    v19(v14, a2, v18);
    *&v14[*(v12 + 20)] = vdupq_n_s64(0x4050000000000000uLL);
    sub_100029710(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
    v20 = sub_100029710(&qword_101197190, _s21RecentlyAddedListCellVMa, &unk_100EBCCB8);

    View.artworkCaching(owner:)();

    sub_1005C3434(v14, _s21RecentlyAddedListCellVMa);
    v21 = v32;
    (*(v15 + 16))(v11, v17, v32);
    swift_storeEnumTagMultiPayload();
    v36 = v12;
    v37 = v20;
    swift_getOpaqueTypeConformance2();
    v22 = sub_100029710(&qword_101197198, _s21RecentlyAddedGridCellVMa, &unk_100EBCD08);
    v36 = v33;
    v37 = v22;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v15 + 8))(v17, v21);
  }

  else
  {
    v19(v7, a2, v18);
    v24 = sub_1005A5F8C();
    v25 = *&v24[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

    v26 = v33;
    *&v7[*(v33 + 20)] = v25;
    sub_100029710(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
    v27 = sub_100029710(&qword_101197198, _s21RecentlyAddedGridCellVMa, &unk_100EBCD08);

    View.artworkCaching(owner:)();

    sub_1005C3434(v7, _s21RecentlyAddedGridCellVMa);
    v28 = v31[0];
    v29 = v34;
    (*(v31[0] + 16))(v11, v9, v34);
    swift_storeEnumTagMultiPayload();
    v30 = sub_100029710(&qword_101197190, _s21RecentlyAddedListCellVMa, &unk_100EBCCB8);
    v36 = v12;
    v37 = v30;
    swift_getOpaqueTypeConformance2();
    v36 = v26;
    v37 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v28 + 8))(v9, v29);
  }
}

Swift::Int sub_1005B39C4(Swift::Int a1)
{
  type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  result = sub_100190474(a1, *&v1[OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryFilter]);
  if ((result & 1) == 0)
  {
    sub_10049CB78();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v4 = String._bridgeToObjectiveC()();

    [v1 setTitle:v4];

    v5 = String._bridgeToObjectiveC()();

    [v1 setPlayActivityFeatureName:v5];

    UIViewController.traitOverrides.getter();
    sub_100217F14();
    dispatch thunk of UIMutableTraits.subscript.setter();
    return UIViewController.traitOverrides.setter();
  }

  return result;
}

id sub_1005B3C58()
{
  v1 = OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController____lazy_storage___accountBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:*(v0 + OBJC_IVAR____TtC5Music25LibraryMainViewController_accountButton)];
    v5 = v0;
    v6 = UIBarButtonItem.plastify()();

    v7 = *(v5 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void *sub_1005B3CFC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = Strong;
  sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4.value = 0;
  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v4, 0, sub_1005C3510, v3).super.super.isa;

  v6 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

void *sub_1005B3E38(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v6 = (v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v8 = v37 - v7;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v12 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v13 = Strong;
    v37[1] = v4;
    v37[2] = v2;
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_10003C9B0(v13 + OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties, v6, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(0x4D7972617262694CLL, 0xEB00000000756E65, 5, 44, v8, 0, 0, 12, v10, 0, 0, 0xFF00u, v6, 0);
    v15 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v16 = sub_10053771C();
    v18 = v17;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v19 = qword_101218AD0;
    v20 = GroupActivitiesManager.hasJoined.getter();
    v21 = GroupActivitiesManager.participantsCount.getter();
    v22 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v15) + 0xB8))(v10, v16, v18, v20 & 1, v21, *(v19 + v22));

    v38 = _swiftEmptyArrayStorage;
    sub_10044D0C4();
    if (v23)
    {
      v24 = v23;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v12 = v38;
    }

    v25 = sub_10059B3FC();
    if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v25))
    {
      swift_beginAccess();
      if (sub_100042A50())
      {
        sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
        String.LocalizationValue.init(stringLiteral:)();
        static Locale.current.getter();
        String.init(localized:table:bundle:locale:comment:)();
        v26 = String._bridgeToObjectiveC()();
        v27 = [objc_opt_self() systemImageNamed:v26];

        swift_allocObject();
        swift_unknownObjectWeakInit();
        v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v29 = String._bridgeToObjectiveC()();
        [v28 setAccessibilityIdentifier:v29];

        v30 = v28;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v12 = v38;
      }
    }

    swift_beginAccess();
    if (sub_100042A50())
    {
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v31 = String._bridgeToObjectiveC()();
      v32 = [objc_opt_self() systemImageNamed:v31];

      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v34 = String._bridgeToObjectiveC()();
      [v33 setAccessibilityIdentifier:v34];

      v35 = v33;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_1005C3434(v10, type metadata accessor for MetricsEvent.Click);
      return v38;
    }

    else
    {
      sub_1005C3434(v10, type metadata accessor for MetricsEvent.Click);
    }
  }

  return v12;
}

void *sub_1005B4690(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MetricsPageProperties(0);
  __chkstk_darwin();
  v3 = &v22[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v5 = &v22[-v4];
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *(result + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
    *(result + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) = 1;
    if ((v10 & 1) == 0)
    {
      sub_1005AF920(1, 1);
    }

    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    sub_10003C9B0(v9 + OBJC_IVAR____TtC5Music25LibraryMainViewController_metricsPageProperties, v3, type metadata accessor for MetricsPageProperties);
    MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(0x7262694C74696445, 0xEF736E6950797261, 5, 20, v5, 0, 0, 12, v7, 0, 0, 0xFF00u, v3, 0);
    v12 = *MetricsReportingController.shared.unsafeMutableAddressor();
    v13 = sub_10053771C();
    v15 = v14;
    if (qword_10117F600 != -1)
    {
      swift_once();
    }

    v16 = qword_101218AD0;
    v17 = GroupActivitiesManager.hasJoined.getter();
    v18 = GroupActivitiesManager.participantsCount.getter();
    v19 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
    swift_beginAccess();
    (*((swift_isaMask & *v12) + 0xB8))(v7, v13, v15, v17 & 1, v18, *(v16 + v19));

    if (([v9 isEditing] & 1) != 0 && UIAccessibilityIsVoiceOverRunning())
    {
      v20 = UIAccessibilityLayoutChangedNotification;
      v21 = [v9 editButtonItem];
      UIAccessibilityPostNotification(v20, v21);

      v9 = v21;
    }

    return sub_1005C3434(v7, type metadata accessor for MetricsEvent.Click);
  }

  return result;
}

void sub_1005B4A10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
    *(Strong + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext) = 0;
    if (v4 == 2 || (v4 & 1) != 0)
    {
      sub_1005AF920(1, 1);
    }
  }
}

uint64_t sub_1005B4A8C(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v10;
  *(v3 + 2) = a1[2];
  sub_1000089F8(a1, &v28, &qword_101196FA8, &unk_100ED5CC0);
  sub_100400B30(v4, v5, v6, v7, v8, v9);
  v11 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
  if (v11 != 2 && (v11 & 1) == 0)
  {
    v12 = *(v1 + OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController);
    if (*v3)
    {
      v13 = v3[2];
      v14 = v3[3];
      v15 = v3[4];
      v16 = v3[5];
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
    }

    swift_beginAccess();
    v18 = v12[2];
    v17 = v12[3];
    v19 = v12[5];
    v31 = v12[4];
    v32 = v19;
    v29 = v18;
    v30 = v17;
    v28 = v12[1];
    v20 = v31;
    v21 = v19;
    sub_1003E1510(&v28, v23);
    sub_1005BF344(v20, *(&v20 + 1), v21, *(&v21 + 1));
    v23[0] = v28;
    v23[1] = v29;
    v23[2] = v30;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    RequestResponse.Controller.request.setter(v23);
  }

  return sub_1000095E8(a1, &qword_101196FA8, &unk_100ED5CC0);
}

void (*sub_1005B4C3C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC8uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
  *(v3 + 184) = v1;
  *(v3 + 192) = v4;
  swift_beginAccess();
  return sub_1005B4CC4;
}

void sub_1005B4CC4(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[23];
    v5 = *(v4 + OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext);
    if (v5 != 2 && (v5 & 1) == 0)
    {
      v7 = (v4 + v3[24]);
      v8 = *(v4 + OBJC_IVAR____TtC5Music25LibraryMainViewController_menuResponseController);
      if (*v7)
      {
        v9 = v7[2];
        v10 = v7[3];
        v11 = v7[4];
        v12 = v7[5];
      }

      else
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 0;
      }

      swift_beginAccess();
      v13 = v8[2];
      v14 = v8[3];
      v15 = v8[5];
      *(v3 + 3) = v8[4];
      *(v3 + 4) = v15;
      v16 = v8[1];
      *(v3 + 1) = v13;
      *(v3 + 2) = v14;
      *v3 = v16;
      v17 = v3[6];
      v18 = v3[7];
      v19 = v3[8];
      v20 = v3[9];
      sub_1003E1510(v3, (v3 + 10));
      sub_1005BF344(v17, v18, v19, v20);
      v21 = *(v3 + 1);
      *(v3 + 5) = *v3;
      *(v3 + 6) = v21;
      *(v3 + 7) = *(v3 + 2);
      v3[16] = v9;
      v3[17] = v10;
      v3[18] = v11;
      v3[19] = v12;
      RequestResponse.Controller.request.setter((v3 + 10));
    }
  }

  free(v3);
}

void sub_1005B4E14()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 && *(v3 + 16))
  {
    v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts;
    swift_beginAccess();
    v13 = *(v1 + v4);

    sub_10003E5E0(&v15, 1);
    v5 = *(v1 + v4);
    *(v1 + v4) = v13;
    LOBYTE(v4) = sub_100190588(v13, v5);

    if (v4)
    {
      return;
    }

    v6 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v8 = sub_1005BF3A4;
  }

  else
  {
    v9 = OBJC_IVAR____TtC5Music25LibraryMainViewController_availableEditingContexts;
    swift_beginAccess();
    v14 = *(v1 + v9);

    sub_100195EF0(1);
    v10 = *(v1 + v9);
    *(v1 + v9) = v14;
    LOBYTE(v9) = sub_100190588(v14, v10);

    if (v9)
    {
      return;
    }

    v6 = sub_1005AA634();
    sub_100009F78(0, &unk_1011845F0, UIMenu_ptr);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v8 = sub_1005C3510;
  }

  v11.value = 0;
  isa = static UIMenu.lazy(title:image:options:cached:childrenProvider:)(0, 0, 0, v11, 0, v8, v7).super.super.isa;

  [v6 setMenu:isa];
}

void sub_1005B503C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10010FC20(&unk_1011972A0, &qword_100ECBC60);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13[-1] - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    sub_100020674(&qword_10118BF98, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
    v9 = dispatch thunk of Sequence._copyToContiguousArray()();
    *&v8[OBJC_IVAR____TtC5Music25LibraryMainViewController_pinnedItems] = v9;

    sub_1005A9A58();
    v13[3] = sub_10010FC20(&qword_101196F88, &unk_100ED5CA0);
    v13[0] = v9;
    sub_1005BDE8C(v13, 1);

    if (qword_10117F678 != -1)
    {
      swift_once();
    }

    v10 = sub_10010BA00(&off_10109BC10);
    sub_1003C6340(v10);

    sub_100020674(&qword_1011972B0, &unk_1011972A0, &qword_100ECBC60, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v13[0] == v12)
    {
      v11 = v8[OBJC_IVAR____TtC5Music25LibraryMainViewController_editingContext];
      if (v11 != 2 && (v11 & 1) != 0)
      {
        sub_1005AF920(0, 1);
      }
    }
  }
}

void sub_1005B52B4(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void (*a6)(uint64_t), uint64_t a7)
{
  LODWORD(v10) = a5;
  v271 = a4;
  v259 = a2;
  v265 = a1;
  v11 = a3[1];
  v239 = *a3;
  v238 = v11;
  v12 = a3[3];
  v237 = a3[2];
  v236 = v12;
  v235 = a3[4];
  v266 = a3;
  v234 = a3[5];
  v257 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v13 = *(v257 - 8);
  __chkstk_darwin();
  v272 = (&v208 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v16 = &v208 - v15;
  __chkstk_darwin();
  v18 = &v208 - v17;
  __chkstk_darwin();
  v20 = (&v208 - v19);
  __chkstk_darwin();
  v220 = &v208 - v21;
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v23 = &v208 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v216 = &v208 - v24;
  __chkstk_darwin();
  v224 = &v208 - v25;
  __chkstk_darwin();
  v233 = &v208 - v26;
  v256 = *(sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0) - 8);
  v27 = *(v256 + 64);
  __chkstk_darwin();
  v217 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v218 = &v208 - v28;
  __chkstk_darwin();
  v247 = &v208 - v29;
  __chkstk_darwin();
  v255 = &v208 - v30;
  __chkstk_darwin();
  v267 = &v208 - v31;
  v260 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v222 = &v208 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = &v208 - v33;
  __chkstk_darwin();
  v264 = &v208 - v34;
  __chkstk_darwin();
  v263 = &v208 - v35;
  __chkstk_darwin();
  v227 = &v208 - v36;
  __chkstk_darwin();
  v226 = &v208 - v37;
  __chkstk_darwin();
  v245 = &v208 - v38;
  __chkstk_darwin();
  v244 = &v208 - v39;
  v254 = *(sub_10010FC20(&unk_1011A4B90, &unk_100ED2800) - 8);
  __chkstk_darwin();
  v230 = &v208 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v232 = &v208 - v41;
  __chkstk_darwin();
  v253 = &v208 - v42;
  v231 = v43;
  __chkstk_darwin();
  v252 = &v208 - v44;
  v262 = type metadata accessor for LibraryImport.ViewModel(0);
  v258 = *(v262 - 8);
  __chkstk_darwin();
  v251 = &v208 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v250 = &v208 - v46;
  __chkstk_darwin();
  v249 = &v208 - v47;
  __chkstk_darwin();
  v248 = &v208 - v48;
  v273 = v7;
  if (v7[OBJC_IVAR____TtC5Music25LibraryMainViewController_allowsAnimatedChanges] != 1)
  {
    if (qword_10117F750 != -1)
    {
      swift_once();
    }

    v175 = type metadata accessor for Logger();
    sub_1000060E4(v175, static Logger.libraryView);
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&_mh_execute_header, v176, v177, "[LibraryMainViewController] [non-animated] Applying updates", v178, 2u);
    }

    v179 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
    v180 = v273;
    swift_beginAccess();
    sub_10054EB04(v265, &v180[v179]);
    swift_endAccess();
    v181 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    swift_beginAccess();
    *&v180[v181] = v259;

    sub_1005B4E14();
    v182 = v266;
    sub_1000089F8(v266, v276, &qword_101196FA8, &unk_100ED5CC0);
    sub_1005B4A8C(v182);
    v183 = v271;
    if (v271)
    {

      RequestResponse.Revision.content.getter(v23);
      v184 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
      if ((*(*(v184 - 8) + 48))(v23, 1, v184) == 1)
      {

        sub_1000095E8(v23, &unk_10118D090, &unk_100ED5CB0);
      }

      else
      {
        v189 = v13[2];
        v190 = v18;
        v191 = v257;
        v189(v16, v23, v257);
        sub_1000095E8(v23, &unk_10118D0A0, &unk_100EC8DC8);
        (v13[4])(v190, v16, v191);
        v192 = v272;
        v193 = v190;
        v189(v272, v190, v191);

        v194 = Logger.logObject.getter();
        v195 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v194, v195))
        {
          v196 = swift_slowAlloc();
          *v196 = 134218240;
          *(v196 + 4) = *(v183 + *(*v183 + 112));

          *(v196 + 12) = 2048;
          v197 = MusicLibrarySectionedResponse.totalItemCount.getter();
          v198 = v13[1];
          v198(v192, v191);
          *(v196 + 14) = v197;
          _os_log_impl(&_mh_execute_header, v194, v195, "[LibraryMainViewController] [non-animated path] applying new revision with ID %ld and count %ld", v196, 0x16u);

          v198(v193, v191);
        }

        else
        {
          v199 = v13[1];
          v199(v192, v191);

          v199(v190, v191);
        }
      }
    }

    v200 = v273;
    *&v273[OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision] = v183;

    v201 = *&v200[OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController];
    if (v183)
    {
      v202 = sub_10010FC20(&qword_101196F80, &qword_100ED5C98);
      v203 = v183;
    }

    else
    {
      v203 = 0;
      v202 = 0;
      v276[1] = 0;
      v276[2] = 0;
    }

    v276[0] = v203;
    v276[3] = v202;
    v204 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
    swift_beginAccess();

    sub_10006B010(v276, v201 + v204, &unk_101183F30, qword_100EBF960);
    swift_endAccess();
    v205 = sub_1005A5F8C();
    [v205 reloadData];

    return;
  }

  v214 = a6;
  v215 = a7;
  if (qword_10117F750 != -1)
  {
    goto LABEL_120;
  }

LABEL_3:
  v213 = v10;
  v49 = type metadata accessor for Logger();
  sub_1000060E4(v49, static Logger.libraryView);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();
  v52 = os_log_type_enabled(v50, v51);
  v212 = v20;
  if (v52)
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "[LibraryMainViewController] [animated] Applying updates", v53, 2u);
  }

  v270 = sub_10059B3FC();
  v54 = (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v270) & 1) == 0;
  v55 = &unk_10109BB08;
  if (!v54)
  {
    v55 = &unk_10109BAE0;
  }

  v56 = *v55;

  v269 = v56;
  if (v56)
  {
    v219 = OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision;
    v57 = OBJC_IVAR____TtC5Music25LibraryMainViewController_currentMenu;
    v58 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
    v242 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
    swift_beginAccess();
    v225 = v58;
    swift_beginAccess();
    v243 = v57;
    swift_beginAccess();
    v59 = 0;
    v223 = (v13 + 2);
    v241 = (v13 + 7);
    v246 = (v13 + 6);
    v229 = (v13 + 1);
    v240 = v27 + 7;
    v261 = (v258 + 48);
    v228 = v231 + 7;
    v13 = &off_10109BC60;
    v272 = _swiftEmptyArrayStorage;
    v20 = _swiftEmptyArrayStorage;
    v27 = v271;
    while (1)
    {
      v62 = FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v270);
      if (v62)
      {
        v63 = &off_10109BC38;
      }

      else
      {
        v63 = &off_10109BC60;
      }

      if (v59 >= v63[2])
      {
        __break(1u);
LABEL_120:
        swift_once();
        goto LABEL_3;
      }

      v64 = &unk_10109BC80;
      if (v62)
      {
        v64 = &unk_10109BC58;
      }

      v65 = *(v59 + v64);

      if (v65 > 1)
      {
        v268 = v20;
        if (v65 == 2)
        {
          v69 = *&v273[v243];
          if (v69)
          {
          }

          else
          {
            v69 = _swiftEmptyArrayStorage;
          }

          v118 = v266;
          v119 = *v266;
          if (*v266)
          {
            v121 = v266[4];
            v120 = v266[5];
            v123 = v266[2];
            v122 = v266[3];
            v124 = v266[1];

            v125 = v238;

            v118 = v266;
            v280 = v123;
            sub_1000095E8(&v280, &qword_10118DFB8, &qword_100ECA038);
            v279 = v122;
            sub_1000095E8(&v279, &qword_101196FE0, &qword_100ED5CD0);
            v278 = v121;
            sub_1000095E8(&v278, &qword_10118DFB8, &qword_100ECA038);
            v277 = v120;
            sub_1000095E8(&v277, &qword_101196FE0, &qword_100ED5CD0);
          }

          else
          {
            v119 = _swiftEmptyArrayStorage;
          }

          v127 = v273;
          v128 = sub_1005A5F8C();
          v274 = v119;
          v275 = v69;
          v129 = swift_allocObject();
          *(v129 + 16) = v127;
          v130 = v118[1];
          *(v129 + 24) = *v118;
          *(v129 + 40) = v130;
          *(v129 + 56) = v118[2];
          v131 = v127;
          sub_1000089F8(v118, v276, &qword_101196FA8, &unk_100ED5CC0);
          v10 = sub_10010FC20(&qword_10118DFB8, &qword_100ECA038);
          sub_100020674(&qword_101196FD0, &qword_10118DFB8, &qword_100ECA038, &protocol conformance descriptor for [A]);
          sub_1005BF174();
          v132 = v263;
          UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(&v275, &v274, v59, sub_1005BF124, v129, 0, 0, 0, v263, 0, v10);

          sub_10003C9B0(v132, v264, type metadata accessor for AIDiffingUpdate);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v272 = sub_10049A5D0(0, v272[2] + 1, 1, v272);
          }

          v27 = v271;
          v13 = &off_10109BC60;
          v134 = v272[2];
          v133 = v272[3];
          v20 = v268;
          if (v134 >= v133 >> 1)
          {
            v272 = sub_10049A5D0((v133 > 1), v134 + 1, 1, v272);
          }

          sub_1005C3434(v263, type metadata accessor for AIDiffingUpdate);
          v135 = v272;
          v272[2] = v134 + 1;
          v82 = v135 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v134;
          v83 = &v281;
          goto LABEL_76;
        }

        if (v27)
        {
          v84 = v233;
          RequestResponse.Revision.content.getter(v233);
          v85 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
          if ((*(*(v85 - 8) + 48))(v84, 1, v85) == 1)
          {
            sub_1000095E8(v84, &unk_10118D090, &unk_100ED5CB0);
            v86 = 1;
            v87 = v257;
          }

          else
          {
            v87 = v257;
            (*v223)(v267, v84, v257);
            sub_1000095E8(v84, &unk_10118D0A0, &unk_100EC8DC8);
            v86 = 0;
          }

          v126 = v255;
        }

        else
        {
          v86 = 1;
          v87 = v257;
          v126 = v255;
        }

        v136 = v267;
        (*v241)(v267, v86, 1, v87);
        sub_1000089F8(v136, v126, &qword_101196FA0, &unk_100EE3EA0);
        v137 = *v246;
        v138 = (*v246)(v126, 1, v87);
        v20 = v268;
        if (v138 == 1)
        {
          sub_1000095E8(v126, &qword_101196FA0, &unk_100EE3EA0);
        }

        else
        {
          v139 = v126;
          v140 = MusicLibrarySectionedResponse.totalItemCount.getter();
          v141 = *v229;
          (*v229)(v139, v87);
          if (v140 && *&v273[v219])
          {

            v142 = v224;
            RequestResponse.Revision.content.getter(v224);
            v143 = v142;

            v144 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
            v145 = *(*(v144 - 8) + 48);
            if (v145(v143, 1, v144) == 1)
            {
              sub_1000095E8(v143, &unk_10118D090, &unk_100ED5CB0);
              v20 = v268;
            }

            else
            {
              v211 = v145;
              v146 = v143;
              v147 = v220;
              v209 = *v223;
              v209(v220, v146, v87);
              sub_1000095E8(v146, &unk_10118D0A0, &unk_100EC8DC8);
              v148 = MusicLibrarySectionedResponse.totalItemCount.getter();
              v141(v147, v87);
              v20 = v268;
              if (v148)
              {
                v149 = v273;
                v210 = sub_1005A5F8C();
                if (!*&v149[v219])
                {
                  goto LABEL_89;
                }

                v150 = v216;
                RequestResponse.Revision.content.getter(v216);

                if (v211(v150, 1, v144) == 1)
                {
                  sub_1000095E8(v150, &unk_10118D090, &unk_100ED5CB0);
LABEL_89:
                  v151 = _swiftEmptyArrayStorage;
                  v152 = _swiftEmptyArrayStorage;
                  v153 = v218;
                }

                else
                {
                  v161 = v212;
                  v209(v212, v150, v87);
                  sub_1000095E8(v150, &unk_10118D0A0, &unk_100EC8DC8);
                  v152 = MusicLibrarySectionedResponse.sections.getter();
                  v141(v161, v87);
                  v153 = v218;
                  v151 = _swiftEmptyArrayStorage;
                }

                sub_1000089F8(v267, v153, &qword_101196FA0, &unk_100EE3EA0);
                if (v137(v153, 1, v87) == 1)
                {
                  sub_1000095E8(v153, &qword_101196FA0, &unk_100EE3EA0);
                }

                else
                {
                  v151 = MusicLibrarySectionedResponse.sections.getter();
                  v141(v153, v87);
                }

                v162 = v217;
                sub_1000089F8(v267, v217, &qword_101196FA0, &unk_100EE3EA0);
                v163 = (*(v256 + 80) + 24) & ~*(v256 + 80);
                v164 = (v240 + v163) & 0xFFFFFFFFFFFFFFF8;
                v165 = swift_allocObject();
                v166 = v271;
                *(v165 + 16) = v271;
                sub_10003D17C(v162, v165 + v163, &qword_101196FA0, &unk_100EE3EA0);
                v167 = v273;
                *(v165 + v164) = v273;
                v27 = v166;
                v168 = v167;

                v169 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
                v170 = sub_1005BF070();
                v207 = v169;
                v10 = v221;
                v171 = v210;
                UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v152, v151, v59, 0, 1, sub_1005BEFD4, v165, sub_1005B929C, v221, 0, sub_10011F028, 0, v207, v170);

                sub_10003C9B0(v10, v222, type metadata accessor for AIDiffingUpdate);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v272 = sub_10049A5D0(0, v272[2] + 1, 1, v272);
                }

                v13 = &off_10109BC60;
                v173 = v272[2];
                v172 = v272[3];
                if (v173 >= v172 >> 1)
                {
                  v272 = sub_10049A5D0((v172 > 1), v173 + 1, 1, v272);
                }

                sub_1005C3434(v221, type metadata accessor for AIDiffingUpdate);
                sub_1000095E8(v267, &qword_101196FA0, &unk_100EE3EA0);
                v174 = v272;
                v272[2] = v173 + 1;
                v82 = v174 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v173;
                v83 = &v254;
                goto LABEL_76;
              }
            }
          }
        }

        v154 = v247;
        sub_1000089F8(v267, v247, &qword_101196FA0, &unk_100EE3EA0);
        v155 = (*(v256 + 80) + 24) & ~*(v256 + 80);
        v156 = (v240 + v155) & 0xFFFFFFFFFFFFFFF8;
        v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        v88[2] = v271;
        sub_10003D17C(v154, v88 + v155, &qword_101196FA0, &unk_100EE3EA0);
        v158 = v273;
        *(v88 + v156) = v273;
        v27 = v271;
        *(v88 + v157) = v59;
        v159 = v158;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10006429C(0, v20[2] + 1, 1, v20);
        }

        v13 = &off_10109BC60;
        v10 = v20[2];
        v160 = v20[3];
        if (v10 >= v160 >> 1)
        {
          v20 = sub_10006429C((v160 > 1), v10 + 1, 1, v20);
        }

        sub_1000095E8(v267, &qword_101196FA0, &unk_100EE3EA0);
        v20[2] = v10 + 1;
        v60 = &v20[2 * v10];
        v61 = sub_1005BEF14;
      }

      else
      {
        if (!v65)
        {
          v66 = v252;
          sub_1000089F8(&v273[v242], v252, &unk_1011A4B90, &unk_100ED2800);
          v67 = *v261;
          if ((*v261)(v66, 1, v262) == 1)
          {
            sub_1000095E8(v66, &unk_1011A4B90, &unk_100ED2800);
            v68 = _swiftEmptyArrayStorage;
          }

          else
          {
            v92 = v66;
            v93 = v248;
            sub_1005C29E8(v92, v248, type metadata accessor for LibraryImport.ViewModel);
            sub_10003C9B0(v93, v249, type metadata accessor for LibraryImport.ViewModel);
            v68 = sub_10049A9EC(0, 1, 1, _swiftEmptyArrayStorage);
            v95 = v68[2];
            v94 = v68[3];
            if (v95 >= v94 >> 1)
            {
              v68 = sub_10049A9EC((v94 > 1), v95 + 1, 1, v68);
            }

            sub_1005C3434(v248, type metadata accessor for LibraryImport.ViewModel);
            v68[2] = v95 + 1;
            sub_1005C29E8(v249, v68 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v95, type metadata accessor for LibraryImport.ViewModel);
          }

          v96 = v253;
          sub_1000089F8(v265, v253, &unk_1011A4B90, &unk_100ED2800);
          if (v67(v96, 1, v262) == 1)
          {
            sub_1000095E8(v96, &unk_1011A4B90, &unk_100ED2800);
            v97 = _swiftEmptyArrayStorage;
            if (!v68[2])
            {
              goto LABEL_60;
            }

LABEL_54:
            if (!v97[2])
            {
              goto LABEL_60;
            }

            v102 = sub_1005A5F8C();
            v276[0] = v68;
            v275 = v97;
            v103 = v230;
            sub_1000089F8(v265, v230, &unk_1011A4B90, &unk_100ED2800);
            v104 = (*(v254 + 80) + 24) & ~*(v254 + 80);
            v105 = swift_allocObject();
            *(v105 + 16) = v273;
            sub_10003D17C(v103, v105 + v104, &unk_1011A4B90, &unk_100ED2800);
            v106 = v273;

            v107 = sub_10010FC20(&qword_101196FF8, &qword_100ED5CD8);
            sub_100020674(&qword_101197000, &qword_101196FF8, &qword_100ED5CD8, &protocol conformance descriptor for [A]);
            sub_100029710(&qword_101197008, type metadata accessor for LibraryImport.ViewModel, &unk_100ED270C);
            v10 = v244;
            UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v276, &v275, v59, sub_1005BF228, v105, sub_1005B7B00, 0, sub_10054CE34, v244, 0, v107);

            sub_10003C9B0(v10, v245, type metadata accessor for AIDiffingUpdate);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v272 = sub_10049A5D0(0, v272[2] + 1, 1, v272);
            }

            v27 = v271;
            v109 = v272[2];
            v108 = v272[3];
            if (v109 >= v108 >> 1)
            {
              v272 = sub_10049A5D0((v108 > 1), v109 + 1, 1, v272);
            }

            sub_1005C3434(v244, type metadata accessor for AIDiffingUpdate);
            v110 = v272;
            v272[2] = v109 + 1;
            sub_1005C29E8(v245, v110 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v109, type metadata accessor for AIDiffingUpdate);
          }

          else
          {
            v98 = v96;
            v99 = v250;
            sub_1005C29E8(v98, v250, type metadata accessor for LibraryImport.ViewModel);
            sub_10003C9B0(v99, v251, type metadata accessor for LibraryImport.ViewModel);
            v97 = sub_10049A9EC(0, 1, 1, _swiftEmptyArrayStorage);
            v101 = v97[2];
            v100 = v97[3];
            if (v101 >= v100 >> 1)
            {
              v97 = sub_10049A9EC((v100 > 1), v101 + 1, 1, v97);
            }

            sub_1005C3434(v250, type metadata accessor for LibraryImport.ViewModel);
            v97[2] = v101 + 1;
            sub_1005C29E8(v251, v97 + ((*(v258 + 80) + 32) & ~*(v258 + 80)) + *(v258 + 72) * v101, type metadata accessor for LibraryImport.ViewModel);
            if (v68[2])
            {
              goto LABEL_54;
            }

LABEL_60:

            v111 = v232;
            sub_1000089F8(v265, v232, &unk_1011A4B90, &unk_100ED2800);
            v112 = (*(v254 + 80) + 24) & ~*(v254 + 80);
            v113 = (v228 + v112) & 0xFFFFFFFFFFFFFFF8;
            v114 = swift_allocObject();
            *(v114 + 16) = v273;
            sub_10003D17C(v111, v114 + v112, &unk_1011A4B90, &unk_100ED2800);
            *(v114 + v113) = v59;
            v115 = v273;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v20 = sub_10006429C(0, v20[2] + 1, 1, v20);
            }

            v27 = v271;
            v10 = v20[2];
            v116 = v20[3];
            if (v10 >= v116 >> 1)
            {
              v20 = sub_10006429C((v116 > 1), v10 + 1, 1, v20);
            }

            v20[2] = v10 + 1;
            v117 = &v20[2 * v10];
            v117[4] = sub_1005BF298;
            v117[5] = v114;
          }

          v13 = &off_10109BC60;
          goto LABEL_11;
        }

        v70 = v259;
        if (v259)
        {
          if (v259[2])
          {
            v71 = *&v273[v225];
            if (v71)
            {
              if (*(v71 + 16))
              {
                v72 = v273;
                v73 = v259;
                v74 = sub_1005A5F8C();
                if (*&v72[v225])
                {
                  v75 = *&v72[v225];
                }

                else
                {
                  v75 = _swiftEmptyArrayStorage;
                }

                v276[0] = v75;
                v275 = v70;
                v76 = swift_allocObject();
                *(v76 + 16) = v72;
                *(v76 + 24) = v73;
                swift_bridgeObjectRetain_n();
                v77 = v72;

                v78 = sub_10010FC20(&qword_101196F88, &unk_100ED5CA0);
                sub_100020674(&qword_101196FE8, &qword_101196F88, &unk_100ED5CA0, &protocol conformance descriptor for [A]);
                sub_100029710(&qword_101196FF0, &type metadata accessor for MusicPin, &protocol conformance descriptor for MusicPin);
                v206 = v78;
                v10 = v226;
                UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v276, &v275, v59, sub_1005BF220, v76, sub_1002940EC, 0, sub_1005B7F38, v226, 0, v206);

                sub_10003C9B0(v10, v227, type metadata accessor for AIDiffingUpdate);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v272 = sub_10049A5D0(0, v272[2] + 1, 1, v272);
                }

                v80 = v272[2];
                v79 = v272[3];
                v13 = &off_10109BC60;
                v27 = v271;
                if (v80 >= v79 >> 1)
                {
                  v272 = sub_10049A5D0((v79 > 1), v80 + 1, 1, v272);
                }

                sub_1005C3434(v226, type metadata accessor for AIDiffingUpdate);
                v81 = v272;
                v272[2] = v80 + 1;
                v82 = v81 + ((*(v260 + 80) + 32) & ~*(v260 + 80)) + *(v260 + 72) * v80;
                v83 = &v259;
LABEL_76:
                sub_1005C29E8(*(v83 - 32), v82, type metadata accessor for AIDiffingUpdate);
                goto LABEL_11;
              }
            }
          }
        }

        v88 = swift_allocObject();
        v89 = v273;
        v88[2] = v273;
        v88[3] = v70;
        v88[4] = v59;
        v90 = v89;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_10006429C(0, v20[2] + 1, 1, v20);
        }

        v10 = v20[2];
        v91 = v20[3];
        if (v10 >= v91 >> 1)
        {
          v20 = sub_10006429C((v91 > 1), v10 + 1, 1, v20);
        }

        v20[2] = v10 + 1;
        v60 = &v20[2 * v10];
        v61 = sub_1005BF1C8;
      }

      v60[4] = v61;
      v60[5] = v88;
LABEL_11:
      v59 = (v59 + 1);
      if (v269 == v59)
      {
        goto LABEL_111;
      }
    }
  }

  v272 = _swiftEmptyArrayStorage;
  v20 = _swiftEmptyArrayStorage;
LABEL_111:
  v185 = v273;
  v186 = sub_1005A5F8C();
  v187 = swift_allocObject();
  *(v187 + 16) = v20;
  *(v187 + 24) = v185;
  v188 = v185;
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v272, v213 & 1, sub_1005BEFCC, v187, v214, v215);
}

void sub_1005B788C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  swift_beginAccess();
  sub_10054EB04(a2, a1 + v10);
  swift_endAccess();
  v11 = sub_1005A5F8C();
  sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  *(v12 + 32) = a3;
  v16[1] = v12;
  sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
  sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  [v11 reloadSections:v15];
}

uint64_t sub_1005B7A9C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_libraryImportViewModel;
  swift_beginAccess();
  sub_10054EB04(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1005B7B00(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LibraryImport.ViewModel(0);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v17 - v6;
  sub_10003C9B0(a1, &v17 - v6, type metadata accessor for LibraryImport.ViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1005C3434(v7, type metadata accessor for LibraryImport.ViewModel);
  sub_10003C9B0(a2, v5, type metadata accessor for LibraryImport.ViewModel);
  v9 = swift_getEnumCaseMultiPayload();
  sub_1005C3434(v5, type metadata accessor for LibraryImport.ViewModel);
  if (EnumCaseMultiPayload >= 2)
  {
    v10 = 0x7542656E696C6E69;
  }

  else
  {
    v10 = 0xD000000000000011;
  }

  if (EnumCaseMultiPayload >= 2)
  {
    v11 = 0xEF706954656C6262;
  }

  else
  {
    v11 = 0x8000000100E51400;
  }

  if (v9 >= 2)
  {
    v12 = 0x7542656E696C6E69;
  }

  else
  {
    v12 = 0xD000000000000011;
  }

  if (v9 >= 2)
  {
    v13 = 0xEF706954656C6262;
  }

  else
  {
    v13 = 0x8000000100E51400;
  }

  if (v10 == v12 && v11 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

void sub_1005B7CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IndexSet();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  *(a1 + v10) = a2;

  sub_1005B4E14();
  v11 = sub_1005A5F8C();
  sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100EBC6B0;
  *(v12 + 32) = a3;
  v16 = v12;
  sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
  sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v13);
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  [v11 reloadSections:v15];
}

void sub_1005B7ECC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC5Music25LibraryMainViewController_displayedPinnedItems;
  swift_beginAccess();
  *(a1 + v4) = a2;

  sub_1005B4E14();
}

uint64_t sub_1005B7F38(uint64_t a1, uint64_t a2)
{
  v80 = a2;
  sub_10010FC20(&qword_101188C20, &qword_100EC2030);
  __chkstk_darwin();
  v67 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v65 = &v63 - v4;
  v5 = type metadata accessor for MusicPin.Item();
  v78 = *(v5 - 8);
  v79 = v5;
  __chkstk_darwin();
  v71 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = &v63 - v7;
  v8 = type metadata accessor for Artist();
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin();
  v66 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v64 = &v63 - v10;
  v11 = type metadata accessor for MusicPin.Action();
  v75 = *(v11 - 8);
  v76 = v11;
  __chkstk_darwin();
  v74 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v63 - v13;
  v14 = type metadata accessor for Artwork();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v72 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&unk_101191420, &unk_100EC9120) - 8;
  __chkstk_darwin();
  v19 = &v63 - v18;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v63 - v22;
  __chkstk_darwin();
  v25 = &v63 - v24;
  v77 = a1;
  MusicPin.artwork.getter();
  MusicPin.artwork.getter();
  v26 = *(v17 + 56);
  sub_1000089F8(v25, v19, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v23, &v19[v26], &unk_101188920, &qword_100EBCC50);
  v27 = *(v15 + 48);
  if (v27(v19, 1, v14) == 1)
  {
    sub_1000095E8(v23, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v25, &unk_101188920, &qword_100EBCC50);
    if (v27(&v19[v26], 1, v14) == 1)
    {
      sub_1000095E8(v19, &unk_101188920, &qword_100EBCC50);
      goto LABEL_8;
    }

LABEL_6:
    sub_1000095E8(v19, &unk_101191420, &unk_100EC9120);
    return 0;
  }

  sub_1000089F8(v19, v21, &unk_101188920, &qword_100EBCC50);
  if (v27(&v19[v26], 1, v14) == 1)
  {
    sub_1000095E8(v23, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v25, &unk_101188920, &qword_100EBCC50);
    (*(v15 + 8))(v21, v14);
    goto LABEL_6;
  }

  v29 = v72;
  (*(v15 + 32))(v72, &v19[v26], v14);
  sub_100029710(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v30 = dispatch thunk of static Equatable.== infix(_:_:)();
  v31 = *(v15 + 8);
  v31(v29, v14);
  sub_1000095E8(v23, &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v25, &unk_101188920, &qword_100EBCC50);
  v31(v21, v14);
  sub_1000095E8(v19, &unk_101188920, &qword_100EBCC50);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v32 = MusicPin.title.getter();
  v34 = v33;
  if (v32 == MusicPin.title.getter() && v34 == v35)
  {

    v37 = v78;
    v36 = v79;
    goto LABEL_12;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v37 = v78;
  v36 = v79;
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v39 = v73;
  MusicPin.action.getter();
  v40 = v74;
  MusicPin.action.getter();
  v41 = static MusicPin.Action.== infix(_:_:)();
  v42 = *(v75 + 8);
  v43 = v40;
  v44 = v76;
  v42(v43, v76);
  v42(v39, v44);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

  v45 = v68;
  MusicPin.item.getter();
  v46 = *(v37 + 88);
  v47 = v46(v45, v36);
  v48 = enum case for MusicPin.Item.artist(_:);
  if (v47 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v37 + 96))(v45, v36);
    v49 = v69;
    v50 = v64;
    v51 = v45;
    v52 = v70;
    (*(v69 + 32))(v64, v51, v70);
    v53 = v65;
    Artist.libraryAddedDate.getter();
    (*(v49 + 8))(v50, v52);
    v54 = type metadata accessor for Date();
    v55 = (*(*(v54 - 8) + 48))(v53, 1, v54) == 1;
    sub_1000095E8(v53, &qword_101188C20, &qword_100EC2030);
  }

  else
  {
    (*(v37 + 8))(v45, v36);
    v55 = 0;
  }

  v56 = v71;
  MusicPin.item.getter();
  if (v46(v56, v36) == v48)
  {
    (*(v37 + 96))(v56, v36);
    v58 = v69;
    v57 = v70;
    v59 = v66;
    (*(v69 + 32))(v66, v56, v70);
    v60 = v67;
    Artist.libraryAddedDate.getter();
    (*(v58 + 8))(v59, v57);
    v61 = type metadata accessor for Date();
    v62 = (*(*(v61 - 8) + 48))(v60, 1, v61) == 1;
    sub_1000095E8(v60, &qword_101188C20, &qword_100EC2030);
  }

  else
  {
    (*(v37 + 8))(v56, v36);
    v62 = 0;
  }

  return v55 ^ v62 ^ 1u;
}

void sub_1005B88C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v7 = type metadata accessor for IndexSet();
  v43 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0);
  __chkstk_darwin();
  v11 = &v37 - v10;
  v12 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v37 - v16;
  if (a1)
  {
    sub_1000089F8(a2, v11, &qword_101196FA0, &unk_100EE3EA0);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1000095E8(v11, &qword_101196FA0, &unk_100EE3EA0);
    }

    else
    {
      (*(v13 + 32))(v17, v11, v12);
      v18 = qword_10117F750;

      if (v18 != -1)
      {
        swift_once();
      }

      v41 = v7;
      v19 = type metadata accessor for Logger();
      sub_1000060E4(v19, static Logger.libraryView);
      (*(v13 + 16))(v15, v17, v12);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v40 = v20;
        v23 = v22;
        *v22 = 134218240;
        *(v22 + 4) = *(a1 + *(*a1 + 112));

        *(v23 + 12) = 2048;
        v38 = MusicLibrarySectionedResponse.totalItemCount.getter();
        v39 = v21;
        v24 = *(v13 + 8);
        v24(v15, v12);
        v25 = v24;
        *(v23 + 14) = v38;
        v26 = v40;
        _os_log_impl(&_mh_execute_header, v40, v39, "[LibraryMainViewController] applying new revision with ID %ld and count %ld", v23, 0x16u);
      }

      else
      {
        v27 = *(v13 + 8);
        v27(v15, v12);
        v25 = v27;
      }

      v25(v17, v12);
      v7 = v41;
    }
  }

  *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision) = a1;

  v28 = *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController);
  if (a1)
  {
    v29 = sub_10010FC20(&qword_101196F80, &qword_100ED5C98);
    v30 = a1;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    v44[1] = 0;
    v44[2] = 0;
  }

  v44[0] = v30;
  v44[3] = v29;
  v31 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();

  sub_10006B010(v44, v28 + v31, &unk_101183F30, qword_100EBF960);
  swift_endAccess();
  v32 = sub_1005A5F8C();
  sub_10010FC20(&unk_101191400, &qword_100ED5CE0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100EBC6B0;
  *(v33 + 32) = v42;
  v44[0] = v33;
  sub_100029710(&unk_10118A630, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  sub_10010FC20(&unk_101191410, &unk_100EC5EC0);
  sub_100020674(&unk_10118A640, &unk_101191410, &unk_100EC5EC0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  IndexSet._bridgeToObjectiveC()(v34);
  v36 = v35;
  (*(v43 + 8))(v9, v7);
  [v32 reloadSections:v36];
}

uint64_t sub_1005B8E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v27 - v12;
  if (a1)
  {
    sub_1000089F8(a2, v7, &qword_101196FA0, &unk_100EE3EA0);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1000095E8(v7, &qword_101196FA0, &unk_100EE3EA0);
    }

    else
    {
      (*(v9 + 32))(v13, v7, v8);
      v14 = qword_10117F750;

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000060E4(v15, static Logger.libraryView);
      (*(v9 + 16))(v11, v13, v8);

      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v29 = v16;
        v19 = v18;
        *v18 = 134218240;
        *(v18 + 4) = *(a1 + *(*a1 + 112));

        *(v19 + 12) = 2048;
        v28 = MusicLibrarySectionedResponse.totalItemCount.getter();
        v20 = *(v9 + 8);
        v20(v11, v8);
        v21 = v29;
        *(v19 + 14) = v28;
        _os_log_impl(&_mh_execute_header, v21, v17, "[LibraryMainViewController] applying new revision with ID %ld and count %ld", v19, 0x16u);
      }

      else
      {
        v20 = *(v9 + 8);
        v20(v11, v8);
      }

      v20(v13, v8);
    }
  }

  *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedRevision) = a1;

  v22 = *(a3 + OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController);
  if (a1)
  {
    v23 = sub_10010FC20(&qword_101196F80, &qword_100ED5C98);
    v24 = a1;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    v30[1] = 0;
    v30[2] = 0;
  }

  v30[0] = v24;
  v30[3] = v23;
  v25 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();

  sub_10006B010(v30, v22 + v25, &unk_101183F30, qword_100EBF960);
  return swift_endAccess();
}

uint64_t sub_1005B929C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecentlyAddedMusicItem();
  sub_100029710(&qword_101197010, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  sub_100029710(&qword_101197018, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

id sub_1005B935C(uint64_t a1, id a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return [a2 setNeedsUpdateContentUnavailableConfiguration];
}

uint64_t sub_1005B93DC()
{
  v1 = v0;
  if ([v0 isEditing] & 1) != 0 || (type metadata accessor for MusicLibrary(), swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(v8), , , static MusicLibrary.shared.getter(), v2 = static MusicLibrary.== infix(_:_:)(), , , (v2 & 1) == 0) || (v3 = objc_msgSend(v1, "traitCollection"), sub_100217F14(), UITraitCollection.subscript.getter(), v3, v4 = sub_10049CB78(), , (v4))
  {
    v5 = 0;
  }

  else
  {
    UIViewController.contentUnavailableConfiguration.getter();
    v7 = sub_1005B954C();
    sub_1000095E8(v8, &unk_10119E410, &qword_100ED5D30);
    v5 = v7 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1005B954C()
{
  v1 = v0;
  sub_10010FC20(&qword_101197020, &qword_100ED5D38);
  __chkstk_darwin();
  v3 = &v12[-v2 - 8];
  v4 = type metadata accessor for UIContentUnavailableConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1000089F8(v1, v12, &unk_10119E410, &qword_100ED5D30);
  if (!v13)
  {
    sub_1000095E8(v12, &unk_10119E410, &qword_100ED5D30);
    (*(v5 + 56))(v3, 1, 1, v4);
    goto LABEL_8;
  }

  sub_10010FC20(&qword_101197028, &unk_100ED5D40);
  v8 = swift_dynamicCast();
  (*(v5 + 56))(v3, v8 ^ 1u, 1, v4);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_8:
    sub_1000095E8(v3, &qword_101197020, &qword_100ED5D38);
    v9 = 0;
    return v9 & 1;
  }

  (*(v5 + 32))(v7, v3, v4);
  if (qword_10117F730 != -1)
  {
    swift_once();
  }

  sub_1000060E4(v4, qword_101218D08);
  if (static UIContentUnavailableConfiguration.== infix(_:_:)())
  {
    v9 = 1;
  }

  else
  {
    if (qword_10117F738 != -1)
    {
      swift_once();
    }

    sub_1000060E4(v4, qword_101218D20);
    v9 = static UIContentUnavailableConfiguration.== infix(_:_:)();
  }

  (*(v5 + 8))(v7, v4);
  return v9 & 1;
}