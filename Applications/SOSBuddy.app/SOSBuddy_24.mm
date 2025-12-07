void sub_10022AA7C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v11 + 24) & ~v11) + v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 == 0 || !v14)
  {
LABEL_20:
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  if (v13 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v16 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
  if (!HIWORD(v16))
  {
    if (v16 < 0x100)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_20;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_21:
    v18 = ~v10 + a2;
    if (v13 < 4)
    {
      v19 = (v18 >> (8 * v13)) + 1;
      if (v13)
      {
        v20 = v18 & ~(-1 << (8 * v13));
        bzero(a1, v13);
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *a1 = v20;
            if (v6 > 1)
            {
LABEL_62:
              if (v6 == 2)
              {
                *&a1[v13] = v19;
              }

              else
              {
                *&a1[v13] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v6 > 1)
            {
              goto LABEL_62;
            }
          }

          goto LABEL_59;
        }

        *a1 = v20;
        a1[2] = BYTE2(v20);
      }

      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

    else
    {
      bzero(a1, v13);
      *a1 = v18;
      v19 = 1;
      if (v6 > 1)
      {
        goto LABEL_62;
      }
    }

LABEL_59:
    if (v6)
    {
      a1[v13] = v19;
    }

    return;
  }

LABEL_30:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v13] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v13] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v6)
  {
    goto LABEL_36;
  }

  a1[v13] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if (v9 > 0x7FFFFFFE)
  {
    v22 = ((v21 + v11 + 16) & ~v11);
    if (v9 >= a2)
    {
      v26 = *(v7 + 56);
      v27 = a2 + 1;

      v26((v21 + v11 + 16) & ~v11, v27);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(v22, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *v22 = v24;
            v22[2] = BYTE2(v24);
          }

          else
          {
            *v22 = v24;
          }
        }

        else if (v25 == 1)
        {
          *v22 = v24;
        }

        else
        {
          *v22 = v24;
        }
      }
    }
  }

  else if (a2 > 0x7FFFFFFE)
  {
    *v21 = 0;
    v21[1] = 0;
    *v21 = a2 - 0x7FFFFFFF;
  }

  else
  {
    *v21 = a2;
  }
}

void sub_10022AD8C(uint64_t a1)
{
  if (!qword_1003690C8)
  {
    sub_100008CF0(&qword_1003690D0, qword_100292450);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003690C8);
    }
  }
}

uint64_t sub_10022ADF0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10022AE28()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10022AE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10022AE8C()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_10022AEBC(uint64_t a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_22:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a2 + 8 * v6 + 32);
    }

    if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24))
    {
      break;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_10022AFC0()
{
  v0 = sub_100256E34(&off_100322E90);
  sub_1000040A8(&qword_1003690E0, &qword_1002924F8);
  result = swift_arrayDestroy();
  qword_100381FE0 = v0;
  return result;
}

uint64_t sub_10022B01C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381E48);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36._countAndFlagsBits = a1;
    *v10 = 136446466;
    v36._object = a2;

    sub_1000040A8(&qword_1003566A0, &qword_100279AF0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v35);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v36._countAndFlagsBits = a3;
    v36._object = a4;

    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v35);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "languageRegionToInternalCode language: %{public}s, region: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (!a2)
  {
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134349056;
      v24 = 8;
      *(v27 + 4) = 8;
      v28 = "language == nil, code: %{public}lu";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v25, v26, v28, v27, 0xCu);

      goto LABEL_27;
    }

LABEL_26:
    v24 = 8;
    goto LABEL_27;
  }

  v17 = String.lowercased()();
  if (a4)
  {
    v18 = String.lowercased()();
    if (qword_100353B80 != -1)
    {
      swift_once();
    }

    v19 = qword_100381FE0;
    v36 = v17;

    v20._countAndFlagsBits = 45;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);

    String.append(_:)(v18);

    if (*(v19 + 16))
    {
      v21 = sub_100186A08(v36._countAndFlagsBits, v36._object);
      v23 = v22;

      if (v23)
      {

        v24 = *(*(v19 + 56) + 8 * v21);
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  if (qword_100353B80 != -1)
  {
    swift_once();
  }

  v29 = qword_100381FE0;
  if (!*(qword_100381FE0 + 16))
  {

LABEL_23:
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134349056;
      v24 = 8;
      *(v27 + 4) = 8;
      v28 = "Unsupported language, code: %{public}lu";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v30 = sub_100186A08(v17._countAndFlagsBits, v17._object);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_23;
  }

  v24 = *(*(v29 + 56) + 8 * v30);
LABEL_20:
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    *(v27 + 4) = v24;
    v28 = "language-region internal code: %{public}lu";
    goto LABEL_25;
  }

LABEL_27:

  return v24;
}

void sub_10022B4CC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Data.Iterator();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a2 + 16) & 1) == 0)
  {
    v7 = 0;
    goto LABEL_5;
  }

  if (*(a2 + 32))
  {
    v7 = 1;
LABEL_5:
    sub_1000F9DE0(v7, 2u);
    goto LABEL_8;
  }

  v8 = *(a2 + 24);
  sub_1000F9DE0(2, 2u);
  do
  {
    sub_1000F9DE0(v8 & 0x7F | ((v8 > 0x7F) << 7), 8u);
    v9 = v8 >= 0x80;
    v8 >>= 7;
  }

  while (v9);
LABEL_8:
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v15 = *(v10 + 16);
    v14 = *(v10 + 24);
    v13 = v14 - v15;
    if (!__OFSUB__(v14, v15))
    {
LABEL_17:
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_20;
      }

      __break(1u);
LABEL_19:
      v13 = 0;
      goto LABEL_20;
    }

    __break(1u);
LABEL_15:
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      __break(1u);
      return;
    }

    v13 = HIDWORD(v10) - v10;
    goto LABEL_17;
  }

  if (v12)
  {
    goto LABEL_15;
  }

  v13 = BYTE6(v11);
  do
  {
LABEL_20:
    if (v13 >= 0x40)
    {
      v16 = v13 & 0x3F | 0x40;
    }

    else
    {
      v16 = v13 & 0x3F;
    }

    sub_1000F9DE0(v16, 7u);
    v17 = v13 > 0x3F;
    v13 >>= 6;
  }

  while (v17);
  sub_10000F480(v10, v11);
  Data.Iterator.init(_:at:)();
  while (1)
  {
    LOWORD(v18) = Data.Iterator.next()();
    if ((v18 & 0x100) != 0)
    {
      break;
    }

    sub_1000F9DE0(v18, 8u);
  }

  (*(v4 + 8))(v6, v3);
}

unint64_t sub_10022B6F8(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for BitCollector();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100281A20;
  *(v5 + 32) = 0;
  v6 = a1[9];
  if (v6 >> 62)
  {
LABEL_130:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

    return v5;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    return v5;
  }

LABEL_3:
  v8 = 0;
  v129 = v6 & 0xFFFFFFFFFFFFFF8;
  v130 = v6 & 0xC000000000000001;
  v127 = a1;
  v128 = v6 + 32;
  v131 = v5;
  v122 = v7;
  v123 = v6;
  v121 = v3;
  while (1)
  {
    if (v130)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
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
        goto LABEL_130;
      }
    }

    else
    {
      if (v8 >= *(v129 + 16))
      {
        goto LABEL_126;
      }

      v9 = *(v128 + 8 * v8);

      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_125;
      }
    }

    v11 = *a1;
    if (!*(*a1 + 16) || (v12 = sub_1001921F0(), (v13 & 1) == 0))
    {
      _StringGuts.grow(_:)(43);

      v132 = 0x6E6F697473657551;
      v133 = 0xE900000000000020;
      v56 = *(v9 + 16);
      v55 = *(v9 + 24);

      v57._countAndFlagsBits = v56;
      v57._object = v55;
      String.append(_:)(v57);

      v58._object = 0x80000001002A5A90;
      v58._countAndFlagsBits = 0xD000000000000020;
      String.append(_:)(v58);
      goto LABEL_110;
    }

    v14 = *(v9 + 32);
    if (v14 == 3)
    {
      goto LABEL_10;
    }

    v15 = (*(v11 + 56) + 16 * v12);
    v16 = *v15;
    v17 = *(v15 + 1);
    if (*(*(v9 + 56) + 16))
    {
      if (*v15 > 2u)
      {
        if (v16 != 4)
        {

          _StringGuts.grow(_:)(45);

          v111 = *(v9 + 16);
          v110 = *(v9 + 24);

          v112._countAndFlagsBits = v111;
          v112._object = v110;
          String.append(_:)(v112);

          v113._countAndFlagsBits = 0xD000000000000018;
          v5 = v131;
          v113._object = 0x80000001002A5AE0;
          String.append(_:)(v113);
          sub_10022C4B4(v114, v115, v116);
          swift_allocError();
          *v117 = 0xD000000000000013;
          v117[1] = 0x80000001002A5AC0;
          swift_willThrow();

          goto LABEL_111;
        }

        goto LABEL_10;
      }

      if (v14 <= 1)
      {
        break;
      }

      goto LABEL_33;
    }

    if (v16 >= 3)
    {
      if (v16 == 3)
      {
        sub_1000F9DE0(0, 1u);
      }

      goto LABEL_10;
    }

    sub_1000F9DE0(1, 1u);
    v14 = *(v9 + 32);
    if (v14 <= 1)
    {
      break;
    }

LABEL_33:
    if (v14 == 2)
    {
      v3 = *(v9 + 40);
      if (v3 >> 62)
      {
        v30 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v30)
      {
        v31 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v5 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_127;
            }
          }

          else
          {
            if (v31 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_128;
            }

            v6 = *(v3 + 8 * v31 + 32);

            v5 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_127;
            }
          }

          if ((*(v6 + 40) & 1) == 0)
          {
            break;
          }

          v34 = a1[3];
          if (*(v34 + 16) && (v35 = sub_1001921F0(), (v36 & 1) != 0))
          {
            v37 = (*(v34 + 56) + 16 * v35);
            v32 = *v37;
            v33 = v37[1];
          }

          else
          {
            v32 = 0;
            v33 = 0xE000000000000000;
          }

          sub_1000088DC(a2, a2[3]);
          sub_1000C4434(v32, v33, v134);

          sub_10022B4CC(v131, v134);
          sub_10022C508(v134);

          ++v31;
          a1 = v127;
          if (v5 == v30)
          {
            goto LABEL_83;
          }
        }

        _StringGuts.grow(_:)(35);

        v80 = *(v6 + 16);
        v81 = *(v6 + 24);

        v82._countAndFlagsBits = v80;
        v82._object = v81;
        String.append(_:)(v82);

        sub_10022C4B4(v83, v84, v85);
        swift_allocError();
        *v86 = 0xD000000000000021;
        v86[1] = 0x80000001002A5B00;
        swift_willThrow();

        v5 = v131;

        goto LABEL_114;
      }

LABEL_83:

      v5 = v131;
      v3 = v121;
      goto LABEL_108;
    }

LABEL_10:

LABEL_11:
    if (v8 == v7)
    {
      return v5;
    }
  }

  if (v14)
  {
    if (v17)
    {
      _StringGuts.grow(_:)(67);
      v88._countAndFlagsBits = 0xD000000000000041;
      v88._object = 0x80000001002A5BA0;
      String.append(_:)(v88);
      v90 = *(v9 + 16);
      v89 = *(v9 + 24);

      v91._countAndFlagsBits = v90;
      v91._object = v89;
      String.append(_:)(v91);

      sub_10022C4B4(v92, v93, v94);
      swift_allocError();
      *v95 = 0;
      v95[1] = 0xE000000000000000;
      swift_willThrow();

      goto LABEL_114;
    }

    v38 = a1[1];
    if (!*(v38 + 16) || (v39 = sub_1001921F0(), (v40 & 1) == 0))
    {
      v132 = 0;
      v133 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v87._countAndFlagsBits = 0xD000000000000033;
      v87._object = 0x80000001002A5B30;
      String.append(_:)(v87);
LABEL_123:
      v119 = *(v9 + 16);
      v118 = *(v9 + 24);

      v120._countAndFlagsBits = v119;
      v120._object = v118;
      String.append(_:)(v120);

LABEL_110:
      sub_10022C4B4(v59, v60, v61);
      swift_allocError();
      *v62 = v132;
      v62[1] = v133;
      swift_willThrow();
LABEL_111:

LABEL_114:

      return v5;
    }

    v41 = *(*(v38 + 56) + 8 * v39);
    v42 = *(v9 + 40);
    if (v42 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() > 63)
      {
LABEL_121:
        _StringGuts.grow(_:)(40);

        v96 = 0x80000001002A5B70;
        v97 = 0xD000000000000026;
        goto LABEL_122;
      }
    }

    else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) > 63)
    {
      goto LABEL_121;
    }

    v43 = *(v9 + 40);
    if (v43 >> 62)
    {
      a1 = _CocoaArrayWrapper.endIndex.getter();
      if (a1)
      {
LABEL_57:
        v6 = v43 & 0xC000000000000001;
        v124 = v43 + 32;
        v125 = v43 & 0xFFFFFFFFFFFFFF8;
        v3 = v41 + 56;

        v44 = 0;
        while (1)
        {
          if (v6)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v10 = __OFADD__(v44++, 1);
            if (v10)
            {
              goto LABEL_124;
            }
          }

          else
          {
            if (v44 >= *(v125 + 16))
            {
              goto LABEL_129;
            }

            v46 = *(v124 + 8 * v44);

            v10 = __OFADD__(v44++, 1);
            if (v10)
            {
LABEL_124:
              __break(1u);
              goto LABEL_125;
            }
          }

          if ((v41 & 0xC000000000000001) != 0)
          {
            v45 = __CocoaSet.contains(_:)() & 1;
          }

          else if (*(v41 + 16) && (Hasher.init(_seed:)(), String.hash(into:)(), v47 = Hasher._finalize()(), v48 = -1 << *(v41 + 32), v49 = v47 & ~v48, ((*(v3 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) != 0))
          {
            v50 = ~v48;
            while (1)
            {
              v51 = *(*(v41 + 48) + 8 * v49);
              v52 = *(v51 + 16) == *(v46 + 16) && *(v51 + 24) == *(v46 + 24);
              if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v49 = (v49 + 1) & v50;
              if (((*(v3 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
              {
                v45 = 0;
                goto LABEL_79;
              }
            }

            v45 = 1;
LABEL_79:
            v5 = v131;
          }

          else
          {
            v45 = 0;
          }

          sub_1000F9DE0(v45, 1u);

          if (v44 == a1)
          {

            goto LABEL_107;
          }
        }
      }
    }

    else
    {
      a1 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a1)
      {
        goto LABEL_57;
      }
    }

LABEL_107:
    v3 = v121;
    a1 = v127;
    goto LABEL_108;
  }

  if (!v17)
  {
    _StringGuts.grow(_:)(43);

    v96 = 0x80000001002A5BF0;
    v97 = 0xD000000000000029;
LABEL_122:
    v132 = v97;
    v133 = v96;
    goto LABEL_123;
  }

  v18 = *(v9 + 40);

  v19 = sub_10022AEBC(v17, v18);
  v21 = v20;

  if (v21)
  {
    _StringGuts.grow(_:)(61);
    v98._countAndFlagsBits = 0x206E6F6974704FLL;
    v98._object = 0xE700000000000000;
    String.append(_:)(v98);
    v100 = *(v17 + 16);
    v99 = *(v17 + 24);

    v101._countAndFlagsBits = v100;
    v101._object = v99;
    String.append(_:)(v101);

    v102._countAndFlagsBits = 0xD000000000000032;
    v102._object = 0x80000001002A5C20;
    String.append(_:)(v102);
    v104 = *(v9 + 16);
    v103 = *(v9 + 24);

    v105._countAndFlagsBits = v104;
    v105._object = v103;
    String.append(_:)(v105);

    sub_10022C4B4(v106, v107, v108);
    swift_allocError();
    *v109 = 0;
    v109[1] = 0xE000000000000000;
    swift_willThrow();

LABEL_113:

    goto LABEL_114;
  }

  v22 = *(v9 + 40);
  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_23;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
LABEL_23:
    v24 = v17;
    a1 = v127;
    if (result > 0xFF)
    {
      goto LABEL_133;
    }

    if (result < 2)
    {
    }

    else
    {
      v25 = 1;
      do
      {
        v25 *= 2;
      }

      while ((v25 & 0xFEu) < result);
      v26 = v3;
      if (v25)
      {
        v27 = 0;
        v28 = v25;
        do
        {
          ++v27;
          v29 = v28;
          v28 >>= 1;
        }

        while (v29 > 1);
      }

      else
      {
        v27 = 0;
      }

      v53 = v27 - 1;
      if ((v53 & 0xFFFFFF00) != 0)
      {
        goto LABEL_134;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_135;
      }

      if (v19 > 0xFF)
      {
        goto LABEL_136;
      }

      v54 = v25 - result;
      if (v54 <= v19)
      {
        LODWORD(v19) = v19 + v54;
        if ((v19 & 0x100) != 0)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v53 = (v27 - 1) - 1;
        if ((v53 & 0xFFFFFF00) != 0)
        {
          goto LABEL_138;
        }
      }

      if (v53 > 7u || v19 >> v53)
      {
        _StringGuts.grow(_:)(86);
        v63._countAndFlagsBits = 0x206465646F636E45;
        v63._object = 0xEF20726577736E61;
        String.append(_:)(v63);
        v135 = v19;
        v64._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v64);

        v65._countAndFlagsBits = 0x74706F20726F6620;
        v65._object = 0xEC000000206E6F69;
        String.append(_:)(v65);
        v66 = *(v24 + 16);
        v67 = *(v24 + 24);

        v68._countAndFlagsBits = v66;
        v68._object = v67;
        String.append(_:)(v68);

        v69._countAndFlagsBits = 0x65757120726F6620;
        v69._object = 0xEE00206E6F697473;
        String.append(_:)(v69);
        v70 = *(v9 + 16);
        v71 = *(v9 + 24);

        v72._countAndFlagsBits = v70;
        v72._object = v71;
        String.append(_:)(v72);

        v73._object = 0x80000001002A5C60;
        v73._countAndFlagsBits = 0xD000000000000020;
        String.append(_:)(v73);
        v135 = v53;
        v74._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v74);

        v75._countAndFlagsBits = 0x7374696220;
        v75._object = 0xE500000000000000;
        String.append(_:)(v75);
        sub_10022C4B4(v76, v77, v78);
        swift_allocError();
        *v79 = 0;
        v79[1] = 0xE000000000000000;
        swift_willThrow();

        goto LABEL_113;
      }

      sub_1000F9DE0(v19, v53);

      v3 = v26;
    }

LABEL_108:
    v7 = v122;
    v6 = v123;
    goto LABEL_11;
  }

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
  return result;
}

unint64_t sub_10022C4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003690D8;
  if (!qword_1003690D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003690D8);
  }

  return result;
}

uint64_t sub_10022C538(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10022C58C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10022C604()
{
  sub_1000040A8(&qword_10035DBF0, &unk_1002902F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100279160;
  v1 = [objc_opt_self() mainBundle];
  v6._object = 0x80000001002A2C60;
  v2._countAndFlagsBits = 1954047310;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0xD000000000000050;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v6);

  *(v0 + 32) = v4;
  *(v0 + 48) = 4;
  return v0;
}

unint64_t sub_10022C7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003690E8;
  if (!qword_1003690E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003690E8);
  }

  return result;
}

unint64_t sub_10022C898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10022C8C0(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10022C8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003690F0;
  if (!qword_1003690F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003690F0);
  }

  return result;
}

id sub_10022C914(uint64_t a1, uint64_t a2)
{
  v51 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v48);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  *&v2[OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__manager] = 0;
  v52 = v2;
  v8 = &v2[OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__callback];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = objc_opt_self();
  v47 = a2;

  v45 = v9;
  v10 = [v9 mainBundle];
  v11 = [v10 bundleIdentifier];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;
  }

  else
  {
    v14 = 0x8000000100294A20;
    v12 = 0xD000000000000012;
  }

  v15 = sub_10000F574();
  v55 = v12;
  v56 = v14;

  v16._countAndFlagsBits = 0xD00000000000001FLL;
  v16._object = 0x80000001002A5EC0;
  String.append(_:)(v16);

  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  v17 = sub_10006BB2C(&unk_100355D50, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000040A8(&unk_10035BA20, &unk_100278D40);
  sub_1000112E8(&unk_100355D60, &unk_10035BA20, &unk_100278D40);
  v44 = v17;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v18 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v19 = *(v53 + 104);
  v53 += 104;
  v19(v50, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v46 = v15;
  *&v52[OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__callbackQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = [v45 mainBundle];
  v21 = [v20 bundleIdentifier];

  if (v21)
  {
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v24 = 0x8000000100294A20;
    v22 = 0xD000000000000012;
  }

  v55 = v22;
  v56 = v24;

  v25._countAndFlagsBits = 0xD000000000000017;
  v25._object = 0x80000001002A5EE0;
  String.append(_:)(v25);

  static DispatchQoS.unspecified.getter();
  v55 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v19(v50, v18, v51);
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v27 = v52;
  *&v52[OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__managerQueue] = v26;
  v28 = type metadata accessor for IdentityServicesAgent();
  v54.receiver = v27;
  v54.super_class = v28;
  v29 = objc_msgSendSuper2(&v54, "init");
  v30 = qword_100353A10;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000F53C(v32, qword_100381C80);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = 136446210;
    v37 = v31;
    v38 = [v37 description];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_10017C9E8(v39, v41, &v55);

    *(v35 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}s] init", v35, 0xCu);
    sub_100008964(v36);
  }

  else
  {
  }

  return v31;
}

id sub_10022CF20()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for IdentityServicesAgent();
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_10022D160()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v14 = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v21 = *(v1 + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__managerQueue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = *(v1 + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__callbackQueue);
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = ObjectType;
    aBlock[4] = sub_1002300C4;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100339CE0;
    v19 = _Block_copy(aBlock);
    v20 = v17;

    static DispatchQoS.unspecified.getter();
    v24 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);
    (*(v4 + 8))(v6, v3);
    (*(v22 + 8))(v9, v23);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10022D554(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(IDSOffGridStateManager);
  aBlock[0] = 0;
  v12 = a1;
  v13 = [v11 initWithQueue:v12 error:aBlock];
  v14 = aBlock[0];
  if (v13)
  {

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v16 = Strong;
      v41 = v7;
      v17 = *(Strong + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__manager);
      *(Strong + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__manager) = v13;
      v18 = v13;

      [v18 setDelegate:v16];
      if (qword_100353A70 != -1)
      {
        swift_once();
      }

      v40 = v8;
      v42 = v4;
      v19 = type metadata accessor for Logger();
      sub_10000F53C(v19, qword_100381DA0);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Fetching initial mode", v22, 2u);
      }

      v23 = sub_10022F630(0x6C616974696E49, 0xE700000000000000, [v18 offGridMode], objc_msgSend(v18, "publishStatus"));
      sub_10000F574();
      v39 = static OS_dispatch_queue.main.getter();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v25 = swift_allocObject();
      *(v25 + 16) = v24;
      *(v25 + 24) = v23;
      aBlock[4] = sub_100230108;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001D2438;
      aBlock[3] = &unk_100339D30;
      v26 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1000040A8(&unk_100355D70, &qword_100279D60);
      sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v27 = v39;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v26);

      (*(v42 + 8))(v6, v3);
      (*(v40 + 8))(v10, v41);
    }

    else
    {
    }
  }

  else
  {
    v28 = v14;
    v29 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100353A70 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_10000F53C(v30, qword_100381DA0);
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      aBlock[6] = v29;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
      v35 = String.init<A>(describing:)();
      v37 = sub_10017C9E8(v35, v36, aBlock);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Error initializing IDSOffGridStateManager: %{public}s", v33, 0xCu);
      sub_100008964(v34);
    }

    else
    {
    }
  }
}

char *sub_10022DBA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__callback];
    v5 = result;

    v4(a2);
  }

  return result;
}

uint64_t sub_10022DC30()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000F574();
  *v12 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v9);
  v13 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v18[1] = *&v1[OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__managerQueue];
    v15 = swift_allocObject();
    *(v15 + 16) = v1;
    aBlock[4] = sub_10023006C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100339C90;
    v16 = _Block_copy(aBlock);
    v17 = v1;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v16);
    (*(v3 + 8))(v5, v2);
    (*(v6 + 8))(v8, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10022DFD0(int a1, int a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v7) = a1;
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v44 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v42 = *(v11 - 8);
  v43 = v11;
  __chkstk_darwin(v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100353A70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381DA0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = a2;
    aBlock[0] = v18;
    *v17 = 136315394;
    if (v7)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    v38 = v7;
    if (v7)
    {
      v20 = 0xE400000000000000;
    }

    else
    {
      v20 = 0xE500000000000000;
    }

    v21 = sub_10017C9E8(v19, v20, aBlock);
    v37 = a3;
    v22 = v13;
    v23 = v10;
    v24 = v8;
    v25 = a4;
    v26 = v21;

    *(v17 + 4) = v26;
    *(v17 + 12) = 2080;
    LOBYTE(v45) = v39;
    v27 = String.init<A>(describing:)();
    v7 = sub_10017C9E8(v27, v28, aBlock);
    a4 = v25;
    v8 = v24;
    v10 = v23;
    v13 = v22;
    a3 = v37;

    *(v17 + 14) = v7;
    LOBYTE(v7) = v38;
    _os_log_impl(&_mh_execute_header, v15, v16, "setOffTheGridMode: on - %s, requester: %s", v17, 0x16u);
    swift_arrayDestroy();
    LOBYTE(a2) = v39;
  }

  v29 = v40;
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = *(v29 + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__callbackQueue);
  v32 = swift_allocObject();
  *(v32 + 16) = v30;
  *(v32 + 24) = a3;
  *(v32 + 32) = a4;
  *(v32 + 40) = v7 & 1;
  *(v32 + 41) = a2;
  v33 = ObjectType;
  *(v32 + 48) = v31;
  *(v32 + 56) = v33;
  aBlock[4] = sub_10022FED8;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100339B50;
  v34 = _Block_copy(aBlock);

  v35 = v31;
  static DispatchQoS.unspecified.getter();
  v45 = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v44 + 8))(v10, v8);
  (*(v42 + 8))(v13, v43);
}

void sub_10022E4C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, void *a6, uint64_t a7)
{
  v35 = a7;
  v36 = a6;
  v39 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v12 = *(v37 - 8);
  __chkstk_darwin(v37);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v16 = Strong, v17 = *(Strong + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__manager), v18 = v17, v16, v17))
  {
    if (a4)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v20 = [objc_allocWithZone(IDSOffGridModeOptions) init];
    v28 = String._bridgeToObjectiveC()();

    [v20 setEntryPointSource:v28];

    v29 = swift_allocObject();
    v30 = v36;
    v31 = v39;
    v29[2] = v36;
    v29[3] = v31;
    v32 = v35;
    v29[4] = a3;
    v29[5] = v32;
    v44 = sub_10022FF94;
    v45 = v29;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_10022F104;
    v43 = &unk_100339BF0;
    v33 = _Block_copy(&aBlock);
    v34 = v30;

    [v18 setOffGridMode:v19 options:v20 completion:v33];
    _Block_release(v33);
  }

  else
  {
    if (qword_100353A70 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000F53C(v21, qword_100381DA0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "_manager is down, ignoring setOffTheGridMode request", v24, 2u);
    }

    sub_10000F574();
    v25 = static OS_dispatch_queue.main.getter();
    v26 = swift_allocObject();
    *(v26 + 16) = v39;
    *(v26 + 24) = a3;
    v44 = sub_10022FF28;
    v45 = v26;
    aBlock = _NSConcreteStackBlock;
    v41 = 1107296256;
    v42 = sub_1001D2438;
    v43 = &unk_100339BA0;
    v27 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v38 + 8))(v11, v9);
    (*(v12 + 8))(v14, v37);
  }
}

uint64_t sub_10022EA28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a5;
  v61 = a7;
  v66 = a1;
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v65 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for DispatchQoS();
  v63 = *(v14 - 8);
  v64 = v14;
  __chkstk_darwin(v14);
  v62 = &v58[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v20 = a4;
  (*(v17 + 104))(v20, enum case for DispatchPredicate.onQueue(_:), v16, v18);
  v21 = a4;
  LOBYTE(a4) = _dispatchPreconditionTest(_:)();
  v23 = *(v17 + 8);
  v22 = v17 + 8;
  v23(v20, v16);
  if ((a4 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_9;
  }

  p_base_meths = &ConnectionClosedModel.base_meths;
  v22 = v66;
  if (a3)
  {
    swift_errorRetain();
    if (qword_100353A70 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000F53C(v25, qword_100381DA0);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v59 = v27;
      v29 = v28;
      v30 = swift_slowAlloc();
      v67 = a3;
      aBlock[0] = v30;
      *v29 = 136446210;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0, &unk_10027DCE0);
      v31 = String.init<A>(describing:)();
      v33 = a2;
      v34 = v13;
      v35 = v11;
      v36 = a6;
      v37 = sub_10017C9E8(v31, v32, aBlock);
      v22 = v66;

      *(v29 + 4) = v37;
      a6 = v36;
      v11 = v35;
      v13 = v34;
      a2 = v33;
      p_base_meths = (&ConnectionClosedModel + 32);
      _os_log_impl(&_mh_execute_header, v26, v59, "setOffGridMode failed: %{public}s", v29, 0xCu);
      sub_100008964(v30);
    }

    else
    {
    }
  }

  if (p_base_meths[334] != -1)
  {
    goto LABEL_13;
  }

LABEL_9:
  v38 = type metadata accessor for Logger();
  sub_10000F53C(v38, qword_100381DA0);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v67 = v22;
    aBlock[0] = v42;
    *v41 = 136446466;
    type metadata accessor for IDSOffGridMode(0);
    v43 = String.init<A>(describing:)();
    v45 = v13;
    v46 = v11;
    v47 = a6;
    v48 = sub_10017C9E8(v43, v44, aBlock);

    *(v41 + 4) = v48;
    *(v41 + 12) = 2082;
    v67 = a2;
    type metadata accessor for IDSOffGridModePublishStatus(0);
    v49 = String.init<A>(describing:)();
    v51 = sub_10017C9E8(v49, v50, aBlock);
    v22 = v66;

    *(v41 + 14) = v51;
    a6 = v47;
    v11 = v46;
    v13 = v45;
    _os_log_impl(&_mh_execute_header, v39, v40, "setOffGridMode returned: %{public}s, publishStatus: %{public}s", v41, 0x16u);
    swift_arrayDestroy();
  }

  sub_10000F574();
  v52 = static OS_dispatch_queue.main.getter();
  v53 = swift_allocObject();
  v54 = v61;
  v53[2] = v60;
  v53[3] = a6;
  v53[4] = v22;
  v53[5] = a2;
  v53[6] = v54;
  aBlock[4] = sub_10022FFD8;
  aBlock[5] = v53;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_100339C40;
  v55 = _Block_copy(aBlock);

  v56 = v62;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000040A8(&unk_100355D70, &qword_100279D60);
  sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v55);

  (*(v65 + 8))(v13, v11);
  return (*(v63 + 8))(v56, v64);
}

void sub_10022F104(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_10022F18C(unint64_t a1)
{
  if (a1 < 4)
  {
    return 1u >> (a1 & 0xF);
  }

  if (qword_100353A70 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381DA0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136446210;
    type metadata accessor for IDSOffGridModePublishStatus(0);
    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown publishStatus value: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  return 0;
}

char *sub_10022F34C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__callback];
    v7 = result;

    v8 = sub_10022F630(0xD000000000000012, 0x80000001002A5E40, a2, a3);
    v6(v8);
  }

  return result;
}

uint64_t sub_10022F4A0(uint64_t a1, unint64_t a2)
{
  v3 = sub_10022F18C(a2);
  if (!a1)
  {
    return 2;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      if (v3)
      {
        return 257;
      }

      else
      {
        return 1;
      }
    }

    if (qword_100353A70 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381DA0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      type metadata accessor for IDSOffGridMode(0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Unknown offGridMode value: %{public}s", v8, 0xCu);
      sub_100008964(v9);
    }

    return 2;
  }

  if (v3)
  {
    return 256;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10022F630(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_10022F4A0(a3, a4);
  if (qword_100353A70 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381DA0);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136446978;
    *(v10 + 4) = sub_10017C9E8(a1, a2, &v21);
    *(v10 + 12) = 2082;
    type metadata accessor for IDSOffGridMode(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v21);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2082;
    type metadata accessor for IDSOffGridModePublishStatus(0);
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v21);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2082;
    sub_1000040A8(&qword_100356098, &unk_100292830);
    v17 = String.init<A>(describing:)();
    v19 = sub_10017C9E8(v17, v18, &v21);

    *(v10 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: (mode: %{public}s, publishStatus: %{public}s) -> %{public}s", v10, 0x2Au);
    swift_arrayDestroy();
  }

  return v6;
}

uint64_t sub_10022F86C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A70 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000F53C(v14, qword_100381DA0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v43 = a1;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v42 = ObjectType;
    v19 = v18;
    v20 = swift_slowAlloc();
    v41 = v3;
    v49 = a1;
    aBlock[0] = v20;
    *v19 = 136315394;
    type metadata accessor for IDSOffGridMode(0);
    v21 = String.init<A>(describing:)();
    v23 = sub_10017C9E8(v21, v22, aBlock);
    v40 = v10;
    v24 = v7;
    v25 = v6;
    v26 = v23;

    *(v19 + 4) = v26;
    *(v19 + 12) = 2082;
    v49 = v48;
    type metadata accessor for IDSOffGridModePublishStatus(0);
    v27 = String.init<A>(describing:)();
    v29 = sub_10017C9E8(v27, v28, aBlock);

    *(v19 + 14) = v29;
    v6 = v25;
    v7 = v24;
    v10 = v40;
    _os_log_impl(&_mh_execute_header, v15, v16, "offGridMode update received: %s, publishStatus: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    v3 = v41;

    ObjectType = v42;
  }

  v30 = *(v3 + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__callbackQueue);
  *v13 = v30;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  result = (*(v11 + 8))(v13, v10);
  if (v30)
  {
    sub_10000F574();
    v33 = static OS_dispatch_queue.main.getter();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v36 = v43;
    v35[2] = v34;
    v35[3] = v36;
    v35[4] = v48;
    v35[5] = ObjectType;
    aBlock[4] = sub_10022FE6C;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001D2438;
    aBlock[3] = &unk_100339B00;
    v37 = _Block_copy(aBlock);

    v38 = v44;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10006BB2C(&qword_10035BB40, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000040A8(&unk_100355D70, &qword_100279D60);
    sub_1000112E8(&qword_10035BB50, &unk_100355D70, &qword_100279D60);
    v39 = v46;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v37);

    (*(v7 + 8))(v39, v6);
    return (*(v45 + 8))(v38, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10022FDFC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10022FE34()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10022FE78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10022FE90()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10022FEF0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022FF54()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10022FFA0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10022FFD8()
{
  v1 = v0[2];
  v2 = sub_10022F630(0x724766664F746573, 0xEE0065646F4D6469, v0[4], v0[5]);
  return v1(v2);
}

uint64_t sub_100230034()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10023006C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__manager);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy21IdentityServicesAgent__manager) = 0;
}

uint64_t sub_100230084()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1002300D0()
{

  return _swift_deallocObject(v0, 26, 7);
}

unint64_t sub_100230128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1003691B0;
  if (!qword_1003691B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003691B0);
  }

  return result;
}

double sub_1002301DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  swift_unknownObjectRelease();
  return result;
}

double sub_100230284(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      if (v5)
      {
        v6 = v5;
        sub_100231088(*(*(v4 + 48) + 64), *(*(v4 + 48) + 72));
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100230358()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v38);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] loadView", v5, 0xCu);
    sub_100008964(v6);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = sub_10011A8F0(v2);
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [objc_allocWithZone(UIView) init];
    [v20 addSubview:v13];
    [v20 addSubview:v15];
    [v20 addSubview:v17];
    [v20 addSubview:v19];
    v21 = v20;
    [v2 setView:v21];

    swift_unknownObjectRelease();
    v22 = &v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content];
    v23 = *&v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content];
    v24 = *&v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 8];
    v25 = *&v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 16];
    v26 = *&v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content + 24];
    *v22 = v13;
    v22[1] = v15;
    v22[2] = v17;
    v22[3] = v19;

    sub_10023475C(v23, v24, v25, v26);
  }

  else
  {
    v27 = v2;
    oslog = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v38 = v30;
      *v29 = 136446210;
      v31 = v27;
      v32 = [v31 description];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10017C9E8(v33, v35, &v38);

      *(v29 + 4) = v36;
      _os_log_impl(&_mh_execute_header, oslog, v28, "[%{public}s] contentProducer expired", v29, 0xCu);
      sub_100008964(v30);
    }
  }
}

void sub_100230748()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v17);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] viewDidLoad", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for SessionBannerViewController();
  v18.receiver = v2;
  v18.super_class = v13;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  [v2 setOverrideUserInterfaceStyle:2];
  v14 = *&v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_tapGesture];
  [v14 addTarget:v2 action:"didTap"];
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 addGestureRecognizer:v14];
  }

  else
  {
    __break(1u);
  }
}

id sub_100230A74(char a1, char *a2, SEL *a3, ...)
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CC8);
  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v11 = 136446210;
    v12 = v8;
    v13 = [v12 description];
    format = a2;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = a1;
    v17 = v16;

    v18 = sub_10017C9E8(v14, v17, &v23);
    a1 = v15;

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, format, v11, 0xCu);
    sub_100008964(v22);
  }

  v19 = type metadata accessor for SessionBannerViewController();
  v24.receiver = v8;
  v24.super_class = v19;
  return objc_msgSendSuper2(&v24, *a3, a1 & 1);
}

uint64_t sub_100230CC0()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}@] _canShowWhileLocked", v5, 0xCu);
    sub_100008FA0(v6, &qword_100359B00, &unk_100278D70);
  }

  return 1;
}

double sub_100230E30()
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381CC8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v17);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] didTap", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = &v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v13 + 1);
    ObjectType = swift_getObjectType();
    (*(v15 + 80))(v2, &off_100339E70, ObjectType, v15);

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_100231088(double a1, double a2)
{
  v3 = v2;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    v11 = sub_1000E45F8(a1, a2);
    v13 = sub_10017C9E8(v11, v12, &v17);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "updatePreferredBannerContentSize - %s", v9, 0xCu);
    sub_100008964(v10);
  }

  [v3 preferredContentSize];
  if (v15 != a1 || v14 != a2)
  {
    [v3 setPreferredContentSize:{a1, a2}];

    sub_10023124C();
  }
}

double sub_10023124C()
{
  v1 = v0;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CC8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Jindo: updateJindoElement", v5, 2u);
  }

  [objc_msgSend(v1 "systemApertureElementContext")];

  swift_unknownObjectRelease();
  return result;
}

void sub_100231364(void *a1, double a2, double a3)
{
  v4 = v3;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CC8);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315138;
    v13 = sub_1000E45F8(a2, a3);
    v15 = sub_10017C9E8(v13, v14, &v23);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "viewWillTransition to %s", v11, 0xCu);
    sub_100008964(v12);
  }

  v16 = type metadata accessor for SessionBannerViewController();
  v29.receiver = v4;
  v29.super_class = v16;
  objc_msgSendSuper2(&v29, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  v27 = sub_1002347EC;
  v28 = v18;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1002301DC;
  v26 = &unk_100339F10;
  v19 = _Block_copy(&v23);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  v27 = sub_100234810;
  v28 = v21;
  v23 = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1002301DC;
  v26 = &unk_100339F60;
  v22 = _Block_copy(&v23);

  [a1 animateAlongsideTransition:v19 completion:v22];
  _Block_release(v22);
  _Block_release(v19);
}

void sub_100231664(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1002317E8();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    sub_100231E4C(a1, a2);
  }
}

void sub_1002316FC(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_100231E4C(a1, a2);
  }
}

void sub_1002317E8()
{
  v1 = &v0[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content];
  v2 = *&v0[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content];
  if (!v2)
  {
    return;
  }

  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v5 = *(v1 + 1);
  v86 = v2;
  sub_100234704(v2, v5, v4, v3);
  sub_10023475C(v2, v5, v4, v3);
  v6 = *v1;
  if (!*v1)
  {
    goto LABEL_19;
  }

  v8 = *(v1 + 2);
  v7 = *(v1 + 3);
  v9 = *(v1 + 1);
  v85 = v9;
  sub_100234704(v6, v9, v8, v7);
  sub_10023475C(v6, v9, v8, v7);
  v10 = *v1;
  if (*v1)
  {
    v12 = *(v1 + 2);
    v11 = *(v1 + 3);
    v13 = *(v1 + 1);
    v84 = v12;
    sub_100234704(v10, v13, v12, v11);
    sub_10023475C(v10, v13, v12, v11);
    v14 = *v1;
    if (*v1)
    {
      v16 = *(v1 + 2);
      v15 = *(v1 + 3);
      v17 = *(v1 + 1);
      v18 = v15;
      sub_100234704(v14, v17, v16, v15);
      sub_10023475C(v14, v17, v16, v15);
      v19 = v86;
      p_ivar_base_size = &ConnectionAssistantRenderer.RenderPipelines.ivar_base_size;
      v21 = [v0 view];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 SBUISA_systemApertureLeadingViewLayoutGuide];

        [v23 layoutFrame];
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v31 = v30;

        [v19 setFrame:{v25, v27, v29, v31}];
        v32 = v19;
        v33 = &selRef_setShouldIgnoreDoNotDisturb_;
        [v32 setHidden:{objc_msgSend(v0, "activeLayoutMode") != 3}];

        if (qword_100353A28 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        sub_10000F53C(v34, qword_100381CC8);
        v86 = v32;
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v87 = v38;
          *v37 = 136315394;
          [v86 frame];
          v43 = sub_1000E8FF8(2, v39, v40, v41, v42);
          v45 = sub_10017C9E8(v43, v44, &v87);

          *(v37 + 4) = v45;
          v33 = &selRef_setShouldIgnoreDoNotDisturb_;
          *(v37 + 12) = 1024;
          v46 = [v86 isHidden];

          *(v37 + 14) = v46;
          p_ivar_base_size = (&ConnectionAssistantRenderer.RenderPipelines + 8);

          _os_log_impl(&_mh_execute_header, v35, v36, "Leading view frame = %s, isHidden = %{BOOL}d", v37, 0x12u);
          sub_100008964(v38);
        }

        else
        {
        }

        v48 = v85;
        v49 = [v0 *(p_ivar_base_size + 308)];
        if (v49)
        {
          v50 = v49;
          v51 = [v49 SBUISA_systemApertureTrailingViewLayoutGuide];

          [v51 layoutFrame];
          v53 = v52;
          v55 = v54;
          v57 = v56;
          v59 = v58;

          [v48 setFrame:{v53, v55, v57, v59}];
          v60 = v48;
          [v60 v33[275]];

          v61 = v84;
          [v61 v33[275]];

          v62 = [v0 *(p_ivar_base_size + 308)];
          if (v62)
          {
            v63 = v62;
            [v62 bounds];
            v65 = v64;
            v67 = v66;
            v69 = v68;
            v71 = v70;

            [v18 setFrame:{v65, v67, v69, v71}];
            v72 = v18;
            v73 = Logger.logObject.getter();
            v74 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v73, v74))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v87 = v76;
              *v75 = 136315138;
              [v72 frame];
              v81 = sub_1000E8FF8(2, v77, v78, v79, v80);
              v83 = sub_10017C9E8(v81, v82, &v87);

              *(v75 + 4) = v83;
              _os_log_impl(&_mh_execute_header, v73, v74, "Custom view frame = %s", v75, 0xCu);
              sub_100008964(v76);

              return;
            }

LABEL_19:
            v47 = v86;
            goto LABEL_20;
          }

LABEL_25:
          __break(1u);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_25;
    }

    v47 = v84;
  }

  else
  {

    v47 = v85;
  }

LABEL_20:
}

void sub_100231E4C(double a1, double a2)
{
  v5 = [v2 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = v5;
  v7 = [v5 SBUISA_systemApertureObstructedAreaLayoutGuide];

  [v7 layoutFrame];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v2 view];
  if (!v16)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v17 = v16;
  v18 = [v16 SBUISA_layoutMode];

  if ((v18 - 2) > 2)
  {
    v19 = &_swiftEmptySetSingleton;
  }

  else
  {
    v19 = sub_100234174(off_100339F88[(v18 - 2)], &qword_100369328, &qword_1002929A8);
  }

  v20 = &v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v20 + 1);
    ObjectType = swift_getObjectType();
    v23 = *&v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode] == 4;
    *v24 = a1;
    *&v24[1] = a2;
    v24[2] = v9;
    v24[3] = v11;
    v24[4] = v13;
    v24[5] = v15;
    v25 = v23;
    v26 = v19;
    (*(v21 + 96))(v24, ObjectType, v21);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

id sub_10023205C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SessionBannerViewController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1002321E8(uint64_t a1, double result)
{
  v3 = OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode;
  if (*&v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode] == a1)
  {
    return v19;
  }

  v4 = v2;
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CC8);
  v7 = v2;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v10 = 136446466;
    v62 = v61;
    type metadata accessor for SBUISystemApertureLayoutMode(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v62);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v62);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "activeLayoutMode changing from %{public}s to %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  v17 = *&v4[v3];
  *&v4[v3] = a1;
  v18 = &v7[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v20 = *(v18 + 1);
    ObjectType = swift_getObjectType();
    (*(v20 + 40))((a1 - 2) < 3, a1 == 4, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  v22 = *&v4[v3];
  if (v22 <= 0)
  {
    if (v22 == -1)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
        return v19;
      }

      v41 = *(v18 + 1);
      v42 = swift_getObjectType();
      (*(v41 + 64))(v7, &off_100339E70, v42, v41);
      goto LABEL_42;
    }

    if (!v22)
    {
      v26 = v7;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = 136315138;
        v62 = v30;
        type metadata accessor for SBUISystemApertureLayoutMode(0);
        v31 = String.init<A>(describing:)();
        v33 = sub_10017C9E8(v31, v32, &v62);

        *(v29 + 4) = v33;
        v34 = "Transition to %s mode is not expected, ignoring";
LABEL_28:
        _os_log_impl(&_mh_execute_header, v27, v28, v34, v29, 0xCu);
        sub_100008964(v30);
      }

LABEL_29:

      return v19;
    }

LABEL_26:
    v37 = v7;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315138;
      v62 = v30;
      type metadata accessor for SBUISystemApertureLayoutMode(0);
      v38 = String.init<A>(describing:)();
      v40 = sub_10017C9E8(v38, v39, &v62);

      *(v29 + 4) = v40;
      v34 = "Ignoring activeLayoutMode transition to %s";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if ((v22 - 1) < 3)
  {
    v23 = *&v7[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode];
    if (v23 != v22)
    {
      if (v22 == 1)
      {
        v22 = 3;
      }

      *&v7[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode] = v22;
      if (v23 == 4 && v17)
      {
        v24 = [objc_msgSend(v7 "systemApertureElementContext")];
        swift_unknownObjectRelease();
        if (v24)
        {
          v25 = [v24 isUserInitiated];
        }

        else
        {
          v25 = 2;
        }

        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v62 = v46;
          *v45 = 136446210;
          sub_1000040A8(&unk_1003655D0, &qword_100278BF0);
          v47 = String.init<A>(describing:)();
          v49 = sub_10017C9E8(v47, v48, &v62);

          *(v45 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v43, v44, "Element collapsed, requested by user: %{public}s", v45, 0xCu);
          sub_100008964(v46);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v50 = *(v18 + 1);
          v51 = swift_getObjectType();
          (*(v50 + 48))(v7, &off_100339E70, v25, v51, v50);
LABEL_42:
          swift_unknownObjectRelease();
          return v19;
        }
      }
    }

    return v19;
  }

  if (v22 != 4)
  {
    goto LABEL_26;
  }

  if (*&v7[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode] != 4)
  {
    *&v7[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode] = 4;
    if (v17)
    {
      v35 = [objc_msgSend(v7 "systemApertureElementContext")];
      swift_unknownObjectRelease();
      if (v35)
      {
        v36 = [v35 isUserInitiated];
      }

      else
      {
        v36 = 2;
      }

      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v62 = v55;
        *v54 = 136446210;
        sub_1000040A8(&unk_1003655D0, &qword_100278BF0);
        v56 = String.init<A>(describing:)();
        v58 = sub_10017C9E8(v56, v57, &v62);

        *(v54 + 4) = v58;
        _os_log_impl(&_mh_execute_header, v52, v53, "Element expanded, requested by user: %{public}s", v54, 0xCu);
        sub_100008964(v55);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v59 = *(v18 + 1);
        v60 = swift_getObjectType();
        (*(v59 + 56))(v7, &off_100339E70, v36, v60, v59);
        goto LABEL_42;
      }
    }
  }

  return v19;
}

void sub_100232A0C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode;
  if (*&v1[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode] != a1)
  {
    v3 = v1;
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381CC8);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 136446466;
      v17 = v10;
      type metadata accessor for SBUISystemApertureLayoutMode(0);
      v11 = String.init<A>(describing:)();
      v13 = sub_10017C9E8(v11, v12, &v17);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      v14 = String.init<A>(describing:)();
      v16 = sub_10017C9E8(v14, v15, &v17);

      *(v9 + 14) = v16;
      _os_log_impl(&_mh_execute_header, v7, v8, "preferredLayoutMode changing from %{public}s to %{public}s", v9, 0x16u);
      swift_arrayDestroy();
    }

    *&v3[v2] = a1;
  }
}

void sub_100232C2C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 SBUISA_systemApertureObstructedAreaLayoutGuide];

    [v3 layoutFrame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v0 preferredContentSize];
    v13 = v12;
    v14.origin.x = v5;
    v14.origin.y = v7;
    v14.size.width = v9;
    v14.size.height = v11;
    if (CGRectGetHeight(v14) < v13)
    {
      [v0 preferredContentSize];
      v15.origin.x = v5;
      v15.origin.y = v7;
      v15.size.width = v9;
      v15.size.height = v11;
      CGRectGetHeight(v15);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_100232F04(char a1)
{
  v2 = v1;
  if (a1)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (v3 != [v1 preferredLayoutMode])
  {
    if (qword_100353A28 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000F53C(v5, qword_100381CC8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136446210;
      type metadata accessor for SBUISystemApertureLayoutMode(0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "SessionBannerViewController.updateState requestedLayoutMode = %{public}s", v8, 0xCu);
      sub_100008964(v9);
    }

    [v2 setPreferredLayoutMode:v3];
    v13 = [v2 activeLayoutMode];
    if (v13 != [v2 preferredLayoutMode] && objc_msgSend(v2, "activeLayoutMode") >= 2)
    {
      [objc_msgSend(v2 "systemApertureElementContext")];
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_100233150(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_unknownObjectRetain();
  v6 = a1;
  a4();
  swift_unknownObjectRelease();
}

void sub_1002331F0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5(a4);
  swift_unknownObjectRelease();
}

char *sub_100233290(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v15 = result;
    v16 = objc_allocWithZone(type metadata accessor for SessionBannerViewController());
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    return sub_100233390(a1, a2, a3, a4, a5, v15, a6 & 1, a7, v16, ObjectType, a8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_100233390(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11)
{
  v66 = a5;
  v67 = a8;
  v65 = a1;
  v16 = sub_1000040A8(&unk_10035CF50, &unk_10027C800);
  __chkstk_darwin(v16 - 8);
  v61 = &v59 - v17;
  v18 = sub_1000040A8(&qword_1003560A0, &unk_10027A950);
  v63 = *(v18 - 8);
  v64 = v18;
  __chkstk_darwin(v18);
  v62 = &v59 - v19;
  v20 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__contentProducer];
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__contentProducer + 8] = 0;
  swift_unknownObjectWeakInit();
  v21 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content];
  *v22 = 0u;
  *(v22 + 1) = 0u;
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode] = 0;
  v23 = OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_tapGesture;
  *&a9[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_unknownObjectWeakInit();
  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_dismissalPreventionAssertion] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v24 = &_swiftEmptySetSingleton;
  }

  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__subscriptions] = v24;
  v25 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__requesterId];
  *v25 = v65;
  *(v25 + 1) = a2;
  v26 = &a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__requestId];
  *v26 = a3;
  *(v26 + 1) = a4;
  *(v20 + 1) = a6;
  swift_unknownObjectWeakAssign();
  v27 = 3;
  if (a7)
  {
    v27 = 4;
  }

  *&a9[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__preferredLayoutMode] = v27;
  *(v21 + 1) = a11;
  swift_unknownObjectWeakAssign();
  v28 = type metadata accessor for SessionBannerViewController();
  v69.receiver = a9;
  v69.super_class = v28;

  v29 = objc_msgSendSuper2(&v69, "initWithNibName:bundle:", 0, 0);
  v30 = qword_100353A28;
  v31 = v29;
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000F53C(v32, qword_100381CC8);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v59 = a3;
    v68[0] = v36;
    *v35 = 136446722;
    v37 = v31;
    v60 = v31;
    v38 = v37;
    v39 = [v37 description];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = sub_10017C9E8(v40, v42, v68);

    *(v35 + 4) = v43;
    *(v35 + 12) = 2080;
    v44 = sub_10017C9E8(v65, a2, v68);

    *(v35 + 14) = v44;
    *(v35 + 22) = 2080;
    v31 = v60;
    v45 = sub_10017C9E8(v59, a4, v68);

    *(v35 + 24) = v45;
    _os_log_impl(&_mh_execute_header, v33, v34, "[%{public}s] init for '%s' and %s", v35, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v46 = v66;
  v47 = *(v66 + 48);
  v48 = *(v47 + 64);
  v49 = *(v47 + 72);
  v50 = v31;
  [v50 setPreferredContentSize:{v48, v49}];
  v68[0] = *(v46 + 360);
  sub_10000F574();

  v51 = static OS_dispatch_queue.main.getter();
  v68[3] = v51;
  v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v53 = v61;
  (*(*(v52 - 8) + 56))(v61, 1, 1, v52);
  sub_1000040A8(&unk_100365610, &unk_100279630);
  sub_100009274(&qword_10035CF60, &unk_100365610, &unk_100279630, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_100233DB0(&qword_100365620, sub_10000F574, &protocol conformance descriptor for OS_dispatch_queue);
  v54 = v62;
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v53, &unk_10035CF50, &unk_10027C800);

  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v56 = swift_allocObject();
  *(v56 + 16) = sub_1000DC230;
  *(v56 + 24) = v55;
  sub_100009274(&qword_10035CF70, &qword_1003560A0, &unk_10027A950, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v57 = v64;
  Publisher<>.sink(receiveValue:)();

  (*(v63 + 8))(v54, v57);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v50;
}

uint64_t sub_100233AAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100233AE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100233B1C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000040A8(&qword_100369308, &unk_100292998);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    type metadata accessor for AnyCancellable();
    sub_100233DB0(&qword_100369310, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100233DB0(&unk_100369318, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(*(v3 + 6) + 8 * v12) = v8;
      v17 = *(v3 + 2);
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      *(v3 + 2) = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_100233DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100233DF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040A8(&qword_100369348, &qword_1002929B8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v26 = v7;
      String.hash(into:)();
      v8 = Hasher._finalize()();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
        if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

void sub_10023403C()
{
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__contentProducer + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = (v0 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__content);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__activeLayoutMode) = 0;
  v2 = OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_tapGesture;
  *(v0 + v2) = [objc_allocWithZone(UITapGestureRecognizer) init];
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_dismissalPreventionAssertion) = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_100233B1C(_swiftEmptyArrayStorage);
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  *(v0 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__subscriptions) = v3;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Int sub_100234174(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000040A8(a2, a3);
    v5 = static _SetStorage.allocate(capacity:)();
    v6 = 0;
    v7 = v5 + 56;
    v8 = a1 + 32;
    while (1)
    {
      v12 = *(v8 + v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v12);
      result = Hasher._finalize()();
      v14 = ~(-1 << *(v5 + 32));
      v15 = result & v14;
      v16 = (result & v14) >> 6;
      v17 = *(v7 + 8 * v16);
      v18 = 1 << (result & v14);
      v19 = *(v5 + 48);
      if ((v18 & v17) != 0)
      {
        while (*(v19 + v15) != v12)
        {
          v15 = (v15 + 1) & v14;
          v16 = v15 >> 6;
          v17 = *(v7 + 8 * (v15 >> 6));
          v18 = 1 << v15;
          if (((1 << v15) & v17) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v7 + 8 * v16) = v18 | v17;
        *(v19 + v15) = v12;
        v9 = *(v5 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v5 + 16) = v11;
      }

      if (++v6 == v3)
      {
        return v5;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

double sub_1002342A8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v0, &off_100339E70, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = [v0 presentableDismissalPreventionContext];
  if (v5)
  {
    v6 = v5;
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 acquireTransitionDismissalPreventionAssertionForReason:v7];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  *&v1[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_dismissalPreventionAssertion] = v8;

  swift_unknownObjectRelease();
  return result;
}

void sub_1002343B8()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v0, &off_100339E70, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v5 window];

  if (v7)
  {
    [v7 setAccessibilityViewIsModal:1];
  }

  v8 = [v1 view];
  if (!v8)
  {
    goto LABEL_13;
  }

  v9 = v8;
  v10 = [v8 window];

  if (v10)
  {
    [v10 setAccessibilityElementsHidden:0];
  }
}

id sub_100234520(uint64_t a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(v2, &off_100339E70, a1, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  result = *(v2 + OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController_dismissalPreventionAssertion);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

void sub_1002345E8(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC8SOSBuddy27SessionBannerViewController__delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    if (!a1)
    {
LABEL_11:
      __break(1u);
      return;
    }

    v5 = *(v4 + 1);
    ObjectType = swift_getObjectType();
    (*(v5 + 32))(v2, &off_100339E70, a1, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = [v2 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 window];

  if (v9)
  {
    [v9 setAccessibilityElementsHidden:1];
  }
}

id sub_100234704(id result, void *a2, void *a3, void *a4)
{
  if (result)
  {
    v6 = result;
    v7 = a2;
    v8 = a3;

    return a4;
  }

  return result;
}

void sub_10023475C(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_1002347B4()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1002347F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_100234830(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 2;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 88) = 0;
  *(v1 + 112) = 1;
  *(v1 + 113) = 3;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 192) = 1;
  v3 = OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_currentServiceOutages;
  v4 = type metadata accessor for ServiceOutages(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_currentIsTryOut) = 2;
  *(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_kExpiryTimerDurationSeconds) = 0x408C200000000000;
  *(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_expiryTimer) = 0;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100234930(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_100359798, &unk_100284020);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for LinkState(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006C20(a1, v5, &qword_100359798, &unk_100284020);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_100008FA0(v5, &qword_100359798, &unk_100284020);
  }

  sub_1002377D0(v5, v9, type metadata accessor for LinkState);
  v11 = *(v1 + 32);
  v12 = v9[1];
  if (v11 != 2 && ((v12 ^ v11) & 1) == 0)
  {
    return sub_100237838(v9, type metadata accessor for LinkState);
  }

  if ((v12 & 1) == 0 && !*(v1 + 24))
  {
    sub_100234D98(v11 == 2);
  }

  if (*(v1 + 24))
  {

    sub_10023668C(v9);
  }

  result = sub_100237838(v9, type metadata accessor for LinkState);
  *(v1 + 32) = v12 & 1;
  return result;
}

void sub_100234B4C(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_10035E268, &qword_100284010);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4];
  v6 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInSilencePeriodNow);
  if (v6 != 2 && (v6 & 1) != 0 || (v7 = *(a1 + 58), v7 != 2) && (v7 & 1) != 0 || (v8 = *(a1 + 56), v8 == 4))
  {
    LOBYTE(v8) = 3;
  }

  *(v1 + 113) = v8;
  if ((v6 == 2 || (v6 & 1) == 0) && ((v9 = *(a1 + 58), v9 == 2) || (v9 & 1) == 0))
  {
    v11 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing);
    v10 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 16);
    v12 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__correctedTargetRelativeBearing + 24);
  }

  else
  {
    v10 = 0;
    v11 = 0uLL;
    v12 = 1;
  }

  *(v1 + 88) = v11;
  *(v1 + 104) = v10;
  *(v1 + 112) = v12;
  *(v1 + 114) = sub_100071A54() & 1;
  v13 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedServiceOutages;
  swift_beginAccess();
  sub_100006C20(a1 + v13, v5, &qword_10035E268, &qword_100284010);
  v14 = OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_currentServiceOutages;
  swift_beginAccess();
  sub_1000C6F74(v5, v1 + v14, &qword_10035E268, &qword_100284010);
  swift_endAccess();
  if (*(v1 + 114))
  {
    if (*(v1 + 24))
    {

      sub_100236A98();
    }

    sub_100235A44();
  }
}

void sub_100234D24(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (*a1 != 5 || *(a1 + 17) != 1)
    {
      *(v1 + 32) = 2;
      sub_100235B24();
    }

    v3 = sub_100071A54() & 1;
  }

  else
  {
    v3 = 2;
    *(v1 + 32) = 2;
    sub_100235B24();
  }

  *(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_currentIsTryOut) = v3;
}

void sub_100234D98(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v81 = type metadata accessor for ServiceOutages.Outage(0);
  v84 = *(v81 - 8);
  __chkstk_darwin(v81);
  v85 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040A8(&qword_100356188, &unk_100283E60);
  __chkstk_darwin(v5 - 8);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v83 = &v64 - v8;
  __chkstk_darwin(v9);
  v82 = &v64 - v10;
  __chkstk_darwin(v11);
  v69 = &v64 - v12;
  v13 = type metadata accessor for Date();
  v80 = *(v13 - 8);
  __chkstk_darwin(v13);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v77 = &v64 - v16;
  __chkstk_darwin(v17);
  v79 = &v64 - v18;
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  v22 = sub_1000040A8(&qword_10035E268, &qword_100284010);
  __chkstk_darwin(v22 - 8);
  v24 = &v64 - v23;
  v25 = type metadata accessor for ServiceOutages(0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v78 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchTime();
  __chkstk_darwin(v28 - 8);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  v31 = *(v2 + 80);
  _s8SOSBuddy4DataCMa_1(0);
  swift_allocObject();
  *(v2 + 24) = sub_10023613C(v30, v3, (v31 & 1) == 0);

  v32 = *(v2 + 24);
  if (!v32)
  {
    goto LABEL_37;
  }

  *(v32 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_targetVisibility) = *(v2 + 113);
  v33 = *(v2 + 104);
  v34 = *(v2 + 112);
  v35 = v32 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_relativeBearing;
  *v35 = *(v2 + 88);
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  memmove((v32 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_deviceOrientation), (v2 + 120), 0x49uLL);
  v36 = OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_currentServiceOutages;
  swift_beginAccess();
  sub_100006C20(v2 + v36, v24, &qword_10035E268, &qword_100284010);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_100008FA0(v24, &qword_10035E268, &qword_100284010);
    goto LABEL_8;
  }

  v37 = v78;
  sub_1002377D0(v24, v78, type metadata accessor for ServiceOutages);
  Date.init()();
  v38 = sub_100237714();
  if (dispatch thunk of static Comparable.< infix(_:_:)() & 1) != 0 || (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    (*(v80 + 8))(v21, v13);
    v39 = v37;
LABEL_7:
    sub_100237838(v39, type metadata accessor for ServiceOutages);
    goto LABEL_8;
  }

  v74 = v38;
  v40 = *(v80 + 56);
  v66 = v80 + 56;
  v65 = v40;
  v40(v69, 1, 1, v13);
  v75 = *(v37 + *(v25 + 24));
  v76 = v21;
  v42 = v82;
  v41 = v83;
  v72 = *(v75 + 16);
  v43 = v85;
  if (v72)
  {
    v44 = 0;
    v71 = v75 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
    v45 = (v80 + 48);
    v73 = (v80 + 32);
    v70 = (v80 + 8);
    while (v44 < *(v75 + 16))
    {
      sub_10023776C(v71 + *(v84 + 72) * v44, v43);
      sub_100006C20(v43, v42, &qword_100356188, &unk_100283E60);
      v46 = *v45;
      if ((*v45)(v42, 1, v13) == 1)
      {
        sub_100008FA0(v42, &qword_100356188, &unk_100283E60);
      }

      else
      {
        v47 = v42;
        v48 = *v73;
        v49 = v79;
        (*v73)(v79, v47, v13);
        if ((dispatch thunk of static Comparable.< infix(_:_:)() & 1) == 0)
        {
          sub_100237838(v85, type metadata accessor for ServiceOutages.Outage);
LABEL_26:
          v51 = v69;
          sub_100008FA0(v69, &qword_100356188, &unk_100283E60);
          v48(v51, v49, v13);
          v65(v51, 0, 1, v13);
          goto LABEL_27;
        }

        (*v70)(v49, v13);
        v42 = v82;
        v41 = v83;
      }

      v43 = v85;
      sub_100006C20(v85 + *(v81 + 20), v41, &qword_100356188, &unk_100283E60);
      if (v46(v41, 1, v13) == 1)
      {
        sub_100237838(v43, type metadata accessor for ServiceOutages.Outage);
        sub_100008FA0(v41, &qword_100356188, &unk_100283E60);
      }

      else
      {
        v48 = *v73;
        v49 = v77;
        (*v73)(v77, v41, v13);
        v50 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_100237838(v43, type metadata accessor for ServiceOutages.Outage);
        if ((v50 & 1) == 0)
        {
          goto LABEL_26;
        }

        (*v70)(v49, v13);
        v42 = v82;
        v41 = v83;
      }

      if (v72 == ++v44)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_27:
  v52 = v69;
  v53 = v68;
  sub_100006C20(v69, v68, &qword_100356188, &unk_100283E60);
  v54 = v80;
  if ((*(v80 + 48))(v53, 1, v13) == 1)
  {
    sub_100008FA0(v52, &qword_100356188, &unk_100283E60);
    (*(v54 + 8))(v76, v13);
    sub_100237838(v78, type metadata accessor for ServiceOutages);
    sub_100008FA0(v53, &qword_100356188, &unk_100283E60);
  }

  else
  {
    v55 = v67;
    (*(v54 + 32))(v67, v53, v13);
    v56 = *(v2 + 24);
    if (!v56)
    {
      v63 = *(v54 + 8);
      v63(v55, v13);
      sub_100008FA0(v52, &qword_100356188, &unk_100283E60);
      v63(v76, v13);
      v39 = v78;
      goto LABEL_7;
    }

    v57 = v76;
    Date.distance(to:)();
    v59 = floor(v58);
    v60 = *(v54 + 8);
    v60(v55, v13);
    sub_100008FA0(v52, &qword_100356188, &unk_100283E60);
    v60(v57, v13);
    sub_100237838(v78, type metadata accessor for ServiceOutages);
    if ((*&v59 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_35;
    }

    v61 = fabs(v59);
    if (v61 >= 1.84467441e19)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    v62 = v56 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_nextStatusChangeAtStart;
    *v62 = v61;
    *(v62 + 8) = 0;
  }

LABEL_8:
  sub_100235C44();
  if (*(v2 + 114) == 1)
  {
    if (*(v2 + 24))
    {

      sub_100236A98();
    }

    sub_100235A44();
  }
}

void sub_100235864()
{
  v0 = type metadata accessor for DispatchPredicate();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v3 = static OS_dispatch_queue.main.getter();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = _dispatchPreconditionTest(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    if (qword_100353A08 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381C68);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SatelliteConnectionAttempt: timer expired", v8, 2u);
  }

  sub_100235A44();
}

void sub_100235A44()
{
  v1 = v0;
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v1 + 72);
    v4 = *(v1 + 80);
    v5 = v2 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_currentTarget;
    v6 = *(v1 + 56);
    *v5 = *(v1 + 40);
    *(v5 + 16) = v6;
    *(v5 + 32) = v3;
    *(v5 + 40) = v4;
    *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_currentIsTryOut) = *(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_currentIsTryOut);

    v7 = sub_100236E9C();

    sub_10017EEA8(1, v7);

    *(v1 + 24) = 0;
  }

  v8 = OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_expiryTimer;
  [*(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_expiryTimer) invalidate];
  v9 = *(v1 + v8);
  *(v1 + v8) = 0;
}

void sub_100235B24()
{
  v1 = v0;
  if (*(v0 + 24))
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000F53C(v2, qword_100381C68);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "SatelliteConnectionAttempt: canceling event", v5, 2u);
    }

    *(v1 + 24) = 0;
  }

  v6 = OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_expiryTimer;
  [*(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_expiryTimer) invalidate];
  v7 = *(v1 + v6);
  *(v1 + v6) = 0;
}

void sub_100235C44()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_expiryTimer;
    [*(v1 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_expiryTimer) invalidate];
    v8 = *(v1 + v7);
    *(v1 + v7) = 0;

    v9 = objc_opt_self();
    v10 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_1002376F4;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10008137C;
    aBlock[3] = &unk_10033A050;
    v11 = _Block_copy(aBlock);

    v12 = [v9 scheduledTimerWithTimeInterval:0 repeats:v11 block:900.0];
    _Block_release(v11);
    v13 = *(v1 + v7);
    *(v1 + v7) = v12;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100235E74(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100235864();
  }

  return result;
}

uint64_t sub_100235ECC()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy35AnalyticsSatelliteConnectionAttempt_currentServiceOutages, &qword_10035E268, &qword_100284010);

  return swift_deallocClassInstance();
}

void sub_100235F88(uint64_t a1)
{
  sub_100237668(319, &qword_10035E2F0, type metadata accessor for ServiceOutages);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 sub_10023609C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  *(v2 + 40) = *a1;
  *(v2 + 56) = v3;
  result = *(a1 + 25);
  *(v2 + 65) = result;
  return result;
}

uint64_t sub_10023613C(uint64_t a1, int a2, int a3)
{
  v4 = v3;
  LODWORD(v42) = a3;
  v7 = type metadata accessor for DispatchTime();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v40 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v39 - v11;
  v12 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_nextStatusChangeAtStart;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_caLatency;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_syncLatency;
  *v17 = 0;
  *(v17 + 8) = 1;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_targetVisibility) = 3;
  v18 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_deviceOrientation;
  *(v18 + 64) = 0;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 72) = 1;
  v19 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_relativeBearing;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *v19 = 0;
  *(v19 + 24) = 1;
  v20 = v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_currentTarget;
  *(v20 + 32) = 0;
  *v20 = 0u;
  *(v20 + 16) = 0u;
  *(v20 + 40) = 1;
  *(v3 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_currentIsTryOut) = 2;
  v46 = 1;
  v21 = *(v8 + 56);
  v21(v4 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingCALatencySince, 1, 1, v7);
  v21(v4 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingSyncLatencySince, 1, 1, v7);
  v44 = v8;
  v22 = *(v8 + 16);
  v22(v4 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_startTimestamp, a1, v7);
  v41 = a2;
  *(v4 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_newConnection) = a2;
  *(v4 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_inServiceAtStart) = v42;
  v22(v14, a1, v7);
  v21(v14, 0, 1, v7);
  v23 = OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingCALatencySince;
  swift_beginAccess();
  sub_1000C6F74(v14, v4 + v23, &qword_100356518, &qword_1002797E0);
  swift_endAccess();
  v22(v14, a1, v7);
  v21(v14, 0, 1, v7);
  v24 = OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingSyncLatencySince;
  swift_beginAccess();
  sub_1000C6F74(v14, v4 + v24, &qword_100356518, &qword_1002797E0);
  swift_endAccess();
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_10000F53C(v25, qword_100381C68);
  v26 = v43;
  v22(v43, a1, v7);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v42 = a1;
    v31 = v30;
    v45[0] = v30;
    *v29 = 67109378;
    *(v29 + 4) = v41 & 1;
    *(v29 + 8) = 2080;
    v22(v40, v26, v7);
    v32 = String.init<A>(describing:)();
    v33 = v26;
    v35 = v34;
    v44 = *(v44 + 8);
    (v44)(v33, v7);
    v36 = sub_10017C9E8(v32, v35, v45);

    *(v29 + 10) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "SatelliteConnectionAttempt: started tracking newConnection = %{BOOL}d at %s", v29, 0x12u);
    sub_100008964(v31);

    (v44)(v42, v7);
  }

  else
  {

    v37 = *(v44 + 8);
    v37(a1, v7);
    v37(v26, v7);
  }

  return v4;
}

void sub_10023668C(uint64_t a1)
{
  v36 = a1;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v5 - 8);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingSyncLatencySince;
  swift_beginAccess();
  sub_100006C20(v1 + v13, v12, &qword_100356518, &qword_1002797E0);
  v34 = v3;
  v14 = *(v3 + 48);
  v15 = v14(v12, 1, v2);
  sub_100008FA0(v12, &qword_100356518, &qword_1002797E0);
  if (v15 == 1)
  {
    return;
  }

  v16 = *(v36 + 1);
  if (v16 == 2 || (v16 & 1) == 0)
  {
    return;
  }

  v17 = v35;
  static DispatchTime.now()();
  v18 = v1;
  sub_100006C20(v1 + v13, v9, &qword_100356518, &qword_1002797E0);
  if (v14(v9, 1, v2) == 1)
  {
    goto LABEL_16;
  }

  v19 = DispatchTime.uptimeNanoseconds.getter();
  v20 = DispatchTime.uptimeNanoseconds.getter();
  v21 = v34;
  if (v20 < v19)
  {
    v22 = DispatchTime.uptimeNanoseconds.getter();
    v23 = DispatchTime.uptimeNanoseconds.getter();
    v24 = *(v21 + 8);
    v24(v17, v2);
    v25 = v22 - v23;
    if (v22 >= v23)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v24 = *(v34 + 8);
  v24(v17, v2);
  v25 = 0;
LABEL_9:
  v26 = v25;
  v24(v9, v2);
  v27 = v18 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_syncLatency;
  *v27 = v26 / 0x3B9ACA00;
  *(v27 + 8) = 0;
  v28 = v33;
  (*(v21 + 56))(v33, 1, 1, v2);
  swift_beginAccess();
  sub_1000C6F74(v28, v18 + v13, &qword_100356518, &qword_1002797E0);
  swift_endAccess();
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000F53C(v29, qword_100381C68);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "SatelliteConnectionAttempt: detected link synced", v32, 2u);
  }
}

void sub_100236A98()
{
  v1 = type metadata accessor for DispatchTime();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000040A8(&qword_100356518, &qword_1002797E0);
  __chkstk_darwin(v4 - 8);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  v12 = OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingCALatencySince;
  swift_beginAccess();
  sub_100006C20(v0 + v12, v11, &qword_100356518, &qword_1002797E0);
  v35 = v2;
  v13 = *(v2 + 48);
  v14 = v13(v11, 1, v1);
  sub_100008FA0(v11, &qword_100356518, &qword_1002797E0);
  if (v14 == 1)
  {
    return;
  }

  v15 = v34;
  static DispatchTime.now()();
  sub_100006C20(v0 + v12, v8, &qword_100356518, &qword_1002797E0);
  if (v13(v8, 1, v1) == 1)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v16 = v0;
  v17 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v17)
  {
    v23 = v35;
    v24 = v15;
    v21 = *(v35 + 8);
    v21(v24, v1);
    v22 = 0;
    goto LABEL_7;
  }

  v18 = DispatchTime.uptimeNanoseconds.getter();
  v19 = DispatchTime.uptimeNanoseconds.getter();
  v20 = v15;
  v21 = *(v35 + 8);
  v21(v20, v1);
  v22 = v18 - v19;
  if (v18 < v19)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v35;
LABEL_7:
  v25 = v22;
  v21(v8, v1);
  v26 = v16 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_caLatency;
  *v26 = v25 / 0x3B9ACA00;
  *(v26 + 8) = 0;
  v27 = v33;
  (*(v23 + 56))(v33, 1, 1, v1);
  swift_beginAccess();
  sub_1000C6F74(v27, v16 + v12, &qword_100356518, &qword_1002797E0);
  swift_endAccess();
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000F53C(v28, qword_100381C68);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "SatelliteConnectionAttempt: detected CA in proper orientation", v31, 2u);
  }
}

unint64_t sub_100236E9C()
{
  v1 = v0;
  sub_1000040A8(&qword_100358320, &qword_10027C9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002929D0;
  *(inited + 32) = 0x6174537472617473;
  *(inited + 40) = 0xEB00000000737574;
  sub_10001D630(0, &qword_100358330, NSString_ptr);
  *(inited + 48) = NSString.init(stringLiteral:)();
  *(inited + 56) = 0x65707954646E65;
  *(inited + 64) = 0xE700000000000000;
  v3 = v0 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_caLatency;
  *(inited + 72) = NSString.init(stringLiteral:)();
  *(inited + 80) = 0x7373656E6E65706FLL;
  *(inited + 88) = 0xE800000000000000;
  v4 = String._bridgeToObjectiveC()();

  *(inited + 96) = v4;
  *(inited + 104) = 0x74617453636E7973;
  *(inited + 112) = 0xEA00000000007375;
  v5 = v0 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_syncLatency;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  *(inited + 128) = 1701869940;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 144) = NSString.init(stringLiteral:)();
  strcpy((inited + 152), "is_tryout_mode");
  *(inited + 167) = -18;
  *(inited + 168) = Bool._bridgeToObjectiveC()();
  v6 = sub_10025663C(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_100358328, &unk_10027D7F0);
  swift_arrayDestroy();
  if ((*(v3 + 8) & 1) == 0)
  {
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(isa, 0x636E6574614C6163, 0xEA00000000004D79, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v5 + 8) & 1) == 0)
  {
    v9 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(v9, 0x6574614C636E7973, 0xEC0000004D79636ELL, v10);
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_deviceOrientation + 72) & 1) == 0)
  {
    v11 = Double._bridgeToObjectiveC()().super.super.isa;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(v11, 0x7461746E6569726FLL, 0xEF736261686E6F69, v12);
    v13 = Double._bridgeToObjectiveC()().super.super.isa;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(v13, 0x7461746E6569726FLL, 0xEF736261766E6F69, v14);
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_relativeBearing + 24) & 1) == 0)
  {
    v15 = Double._bridgeToObjectiveC()().super.super.isa;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(v15, 0x7461746E6569726FLL, 0xEC000000686E6F69, v16);
    v17 = Double._bridgeToObjectiveC()().super.super.isa;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(v17, 0x7461746E6569726FLL, 0xEC000000766E6F69, v18);
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_nextStatusChangeAtStart + 8) & 1) == 0)
  {
    v19 = UInt64._bridgeToObjectiveC()().super.super.isa;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(v19, 0xD000000000000019, 0x80000001002A3000, v20);
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_currentTarget + 40) & 1) == 0)
  {
    v21 = Int64._bridgeToObjectiveC()().super.super.isa;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001894D4(v21, 0x4449746153, 0xE500000000000000, v22);
  }

  return v6;
}

uint64_t sub_10023742C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_startTimestamp;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingCALatencySince, &qword_100356518, &qword_1002797E0);
  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddyP33_29181C57CEC753861365ABD310953A9D4Data_trackingSyncLatencySince, &qword_100356518, &qword_1002797E0);

  return swift_deallocClassInstance();
}

void sub_100237538(uint64_t a1)
{
  type metadata accessor for DispatchTime();
  if (v1 <= 0x3F)
  {
    sub_100237668(319, &qword_100362DE0, &type metadata accessor for DispatchTime);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_100237668(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1002376BC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_1002376FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100237714()
{
  result = qword_10035E408;
  if (!qword_10035E408)
  {
    type metadata accessor for Date();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E408);
  }

  return result;
}

uint64_t sub_10023776C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceOutages.Outage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002377D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100237838(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002378BC()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000015;
  v70._countAndFlagsBits = 0xD00000000000002CLL;
  v70._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6950;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v70);

  v66 = v5;
  *&v67 = 0;
  *(&v67 + 1) = 0xE000000000000000;
  *&v68 = &off_100323CF0;
  *(&v68 + 1) = &off_100323D18;
  v69 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100292B20;
  v7 = [v0 mainBundle];
  v8._countAndFlagsBits = 0xD000000000000012;
  v71._object = 0x80000001002A7190;
  v8._object = 0x80000001002A7170;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v71._countAndFlagsBits = 0xD000000000000037;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v71);

  v12 = static Color.clear.getter();
  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 48) = xmmword_100292B30;
  *(v13 + 64) = v12;
  type metadata accessor for Option();
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  v14 = swift_allocObject();
  strcpy((v14 + 16), "TYPE_MEDICAL");
  *(v14 + 29) = 0;
  *(v14 + 30) = -5120;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v6 + 32) = v14;
  v15 = [v0 mainBundle];
  v72._object = 0x80000001002A7190;
  v16._countAndFlagsBits = 0x656D697243;
  v16._object = 0xE500000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v72._countAndFlagsBits = 0xD000000000000037;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v72);

  v20 = static Color.clear.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 48) = xmmword_100292B40;
  *(v21 + 64) = v20;
  *(v21 + 32) = 0;
  *(v21 + 40) = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = 0x4C4F505F45505954;
  *(v22 + 24) = 0xEB00000000454349;
  *(v22 + 32) = v21;
  *(v22 + 40) = 0;
  *(v22 + 48) = 40;
  *(v6 + 40) = v22;
  v23 = [v0 mainBundle];
  v73._object = 0x80000001002A7190;
  v24._countAndFlagsBits = 1701996870;
  v24._object = 0xE400000000000000;
  v25.value._countAndFlagsBits = 0x636E656772656D45;
  v25.value._object = 0xEE00796464754279;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0xD000000000000037;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v73);

  v28 = static Color.clear.getter();
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 48) = xmmword_100292B50;
  *(v29 + 64) = v28;
  *(v29 + 32) = 0;
  *(v29 + 40) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = 0x5249465F45505954;
  *(v30 + 24) = 0xE900000000000045;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  *(v30 + 48) = 40;
  *(v6 + 48) = v30;
  v31 = [v0 mainBundle];
  v74._object = 0x80000001002A7190;
  v32._countAndFlagsBits = 0x20726F2074736F4CLL;
  v32._object = 0xEF64657070617254;
  v33.value._countAndFlagsBits = 0x636E656772656D45;
  v33.value._object = 0xEE00796464754279;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  v74._countAndFlagsBits = 0xD000000000000037;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v33, v31, v34, v74);

  v36 = static Color.clear.getter();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 48) = xmmword_100292B60;
  *(v37 + 64) = v36;
  *(v37 + 32) = 0;
  *(v37 + 40) = 0;
  v38 = swift_allocObject();
  *(v38 + 16) = 0x524E535F45505954;
  *(v38 + 24) = 0xE800000000000000;
  *(v38 + 32) = v37;
  *(v38 + 40) = 0;
  *(v38 + 48) = 40;
  *(v6 + 56) = v38;
  v39 = [v0 mainBundle];
  v40._countAndFlagsBits = 0xD000000000000014;
  v75._object = 0x80000001002A7190;
  v40._object = 0x80000001002A71D0;
  v41.value._countAndFlagsBits = 0x636E656772656D45;
  v41.value._object = 0xEE00796464754279;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  v75._countAndFlagsBits = 0xD000000000000037;
  v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v40, v41, v39, v42, v75);

  v44 = static Color.clear.getter();
  v45 = swift_allocObject();
  *(v45 + 16) = v43;
  *(v45 + 48) = xmmword_100292B70;
  *(v45 + 64) = v44;
  *(v45 + 32) = 0;
  *(v45 + 40) = 0;
  v46 = swift_allocObject();
  *(v46 + 16) = 0x4142435F45505954;
  *(v46 + 24) = 0xE800000000000000;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  *(v46 + 48) = 40;
  *(v6 + 64) = v46;
  type metadata accessor for NoPrerequisites();
  v47 = swift_allocObject();
  type metadata accessor for Question();
  v48 = swift_allocObject();
  v49 = v67;
  *(v48 + 72) = v66;
  *(v48 + 88) = v49;
  v50 = v69;
  *(v48 + 104) = v68;
  *(v48 + 16) = 1162893652;
  *(v48 + 24) = 0xE400000000000000;
  *(v48 + 32) = 0;
  *(v48 + 40) = v6;
  *(v48 + 48) = v47;
  *(v48 + 56) = &off_100323D88;
  *(v48 + 64) = 8;
  *(v48 + 120) = v50;

  sub_1000B4E30(&v66, v65);
  v51 = sub_1000924D0(v6, &v66);
  *(v48 + 136) = v51;
  if (*(&v68 + 1))
  {
    v52 = v51;
    v53 = _swiftEmptyArrayStorage;
    v65[0] = _swiftEmptyArrayStorage;
    v54 = *(v51 + 2);
    v55 = 0;
    v56 =  + 40;
LABEL_3:
    v57 = (v56 + 16 * v55);
    while (1)
    {
      if (v54 == v55)
      {

        goto LABEL_12;
      }

      if (v55 >= *(v52 + 2))
      {
        break;
      }

      ++v55;
      v58 = *v57;
      v57 += 16;
      if (v58 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v53 = v65[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v53 = v6;
LABEL_12:
    *(v48 + 144) = v53;
    v59 = *(&v69 + 1);
    if (*(&v69 + 1))
    {
      v60 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v60)
      {
        v61 = 0;
        v62 = v69;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v61 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v63 = *(v6 + 8 * v61 + 32);
          }

          v64 = *(v63 + 16) == v62 && v59 == *(v63 + 24);
          if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v61;

          if (v60 == v61)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v66);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v66);

        v63 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v66);
      v63 = 0;
    }

    *(v48 + 152) = v63;
  }
}

uint64_t sub_100238130()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v42._object = 0x80000001002A6540;
  v2._countAndFlagsBits = 0xD000000000000038;
  v2._object = 0x800000010029B990;
  v3.value._object = 0x800000010029B460;
  v42._countAndFlagsBits = 0xD00000000000002CLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v42);

  v6 = [v0 mainBundle];
  v43._object = 0x800000010029BA00;
  v7._countAndFlagsBits = 0xD00000000000002FLL;
  v7._object = 0x800000010029B9D0;
  v8.value._object = 0x800000010029B460;
  v43._countAndFlagsBits = 0xD00000000000005ALL;
  v8.value._countAndFlagsBits = 0xD000000000000017;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v43);

  v38 = v5;
  v39 = v10;
  *&v40 = _swiftEmptyArrayStorage;
  *(&v40 + 1) = 0;
  v41 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100292B80;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v12 = swift_allocObject();
  *(v12 + 16) = 0x4142435F45505954;
  *(v12 + 24) = 0xE800000000000000;
  *(v11 + 32) = v12;
  type metadata accessor for BuiltInCondition();
  v13 = swift_allocObject();
  *(v13 + 16) = 2;
  *(v11 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = 5;
  type metadata accessor for NotCondition();
  v15 = swift_allocObject();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100281610;
  *(v16 + 32) = v14;
  *(v15 + 16) = 2;
  *(v15 + 24) = v16;
  *(v11 + 48) = v15;
  type metadata accessor for AndCondition();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = v11;
  type metadata accessor for Question();
  v18 = swift_allocObject();
  v19 = v39;
  *(v18 + 72) = v38;
  *(v18 + 88) = v19;
  v20 = v41;
  *(v18 + 104) = v40;
  strcpy((v18 + 16), "ROADSIDE_FORK");
  *(v18 + 30) = -4864;
  *(v18 + 32) = 3;
  *(v18 + 40) = _swiftEmptyArrayStorage;
  *(v18 + 48) = v17;
  *(v18 + 56) = &off_100323DB0;
  *(v18 + 64) = 1;
  *(v18 + 120) = v20;
  sub_1000B4E30(&v38, v37);
  v21 = sub_1000924D0(_swiftEmptyArrayStorage, &v38);
  *(v18 + 136) = v21;
  if (*(&v40 + 1))
  {
    v22 = v21;
    v37[0] = _swiftEmptyArrayStorage;
    v23 = *(v21 + 2);
    v24 = 0;
    v25 =  + 40;
    v26 = _swiftEmptyArrayStorage;
LABEL_3:
    v27 = (v25 + 16 * v24);
    while (1)
    {
      if (v23 == v24)
      {

        goto LABEL_12;
      }

      if (v24 >= *(v22 + 2))
      {
        break;
      }

      ++v24;
      v28 = *v27;
      v27 += 16;
      if (v28 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v26 = v37[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    v26 = _swiftEmptyArrayStorage;
LABEL_12:
    *(v18 + 144) = v26;
    v26 = *(&v41 + 1);
    if (!*(&v41 + 1))
    {

      sub_1000B4E8C(&v38);
LABEL_16:
      v29 = 0;
LABEL_17:
      *(v18 + 152) = v29;
      return v18;
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:
      sub_1000B4E8C(&v38);

      goto LABEL_16;
    }
  }

  v31 = v41;
  v32 = _CocoaArrayWrapper.endIndex.getter();
  if (!v32)
  {
    goto LABEL_14;
  }

  v33 = v32;
  v34 = 0;
  while (1)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v29 = result;
    v36 = *(result + 16) == v31 && v26 == *(result + 24);
    if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000B4E8C(&v38);
      goto LABEL_17;
    }

    ++v34;
    if (v35 == v33)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002385D8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v39._object = 0x80000001002A6540;
  v2._countAndFlagsBits = 0xD00000000000002ELL;
  v2._object = 0x80000001002A70A0;
  v3.value._object = 0x800000010029B460;
  v39._countAndFlagsBits = 0xD00000000000002CLL;
  v3.value._countAndFlagsBits = 0xD000000000000017;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v39);

  v6 = [v0 mainBundle];
  v40._object = 0x80000001002A7120;
  v7._countAndFlagsBits = 0xD000000000000047;
  v7._object = 0x80000001002A70D0;
  v8.value._object = 0x800000010029B460;
  v40._countAndFlagsBits = 0xD000000000000046;
  v8.value._countAndFlagsBits = 0xD000000000000017;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v40);

  v35 = v5;
  v36 = v10;
  *&v37 = _swiftEmptyArrayStorage;
  *(&v37 + 1) = 0;
  v38 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002811B0;
  type metadata accessor for QuestionCondition();
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  strcpy((v12 + 24), "ROADSIDE_FORK");
  *(v12 + 38) = -4864;
  *(v11 + 32) = v12;
  type metadata accessor for BuiltInCondition();
  v13 = swift_allocObject();
  *(v13 + 16) = 3;
  *(v11 + 40) = v13;
  type metadata accessor for AndCondition();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v11;
  type metadata accessor for Question();
  v15 = swift_allocObject();
  v16 = v36;
  *(v15 + 72) = v35;
  *(v15 + 88) = v16;
  v17 = v38;
  *(v15 + 104) = v37;
  *(v15 + 16) = 0xD000000000000012;
  *(v15 + 24) = 0x80000001002A64D0;
  *(v15 + 32) = 3;
  *(v15 + 40) = _swiftEmptyArrayStorage;
  *(v15 + 48) = v14;
  *(v15 + 56) = &off_100323DD8;
  *(v15 + 64) = 2;
  *(v15 + 120) = v17;
  sub_1000B4E30(&v35, v34);
  v18 = sub_1000924D0(_swiftEmptyArrayStorage, &v35);
  *(v15 + 136) = v18;
  if (*(&v37 + 1))
  {
    v19 = v18;
    v34[0] = _swiftEmptyArrayStorage;
    v20 = *(v18 + 2);
    v21 = 0;
    v22 =  + 40;
    v23 = _swiftEmptyArrayStorage;
LABEL_3:
    v24 = (v22 + 16 * v21);
    while (1)
    {
      if (v20 == v21)
      {

        goto LABEL_12;
      }

      if (v21 >= *(v19 + 2))
      {
        break;
      }

      ++v21;
      v25 = *v24;
      v24 += 16;
      if (v25 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v23 = v34[0];
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = _swiftEmptyArrayStorage;
LABEL_12:
    *(v15 + 144) = v23;
    v23 = *(&v38 + 1);
    if (!*(&v38 + 1))
    {

      sub_1000B4E8C(&v35);
LABEL_16:
      v26 = 0;
LABEL_17:
      *(v15 + 152) = v26;
      return v15;
    }

    if (!(_swiftEmptyArrayStorage >> 62))
    {
LABEL_14:
      sub_1000B4E8C(&v35);

      goto LABEL_16;
    }
  }

  v28 = v38;
  v29 = _CocoaArrayWrapper.endIndex.getter();
  if (!v29)
  {
    goto LABEL_14;
  }

  v30 = v29;
  v31 = 0;
  while (1)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v32 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    v26 = result;
    v33 = *(result + 16) == v28 && v23 == *(result + 24);
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      sub_1000B4E8C(&v35);
      goto LABEL_17;
    }

    ++v31;
    if (v32 == v30)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_100238A1C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v51._countAndFlagsBits = 0xD00000000000002CLL;
  v51._object = 0x80000001002A6540;
  v2._countAndFlagsBits = 0x6465656E206F6857;
  v2._object = 0xEF3F706C65682073;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v51);

  v47 = v5;
  *&v48 = 0;
  *(&v48 + 1) = 0xE000000000000000;
  *&v49 = _swiftEmptyArrayStorage;
  *(&v49 + 1) = 0;
  v50 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100292B80;
  v7 = [v0 mainBundle];
  v52._object = 0x80000001002A7060;
  v8._countAndFlagsBits = 25933;
  v8._object = 0xE200000000000000;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0xD000000000000031;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v52);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0x454D5F4F4857;
  *(v13 + 24) = 0xE600000000000000;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v53._object = 0x80000001002A7060;
  v15._countAndFlagsBits = 0x20656E6F656D6F53;
  v15._object = 0xEC00000065736C45;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000031;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v53);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x4548544F5F4F4857;
  *(v20 + 24) = 0xE900000000000052;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v54._object = 0x80000001002A7060;
  v22._countAndFlagsBits = 0x656C7069746C754DLL;
  v22._object = 0xEF656C706F655020;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0xD000000000000031;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v54);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0x594E414D5F4F4857;
  *(v27 + 24) = 0xE800000000000000;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  type metadata accessor for QuestionCondition();
  v28 = swift_allocObject();
  *(v28 + 16) = 1;
  *(v28 + 24) = 1162893652;
  *(v28 + 32) = 0xE400000000000000;
  type metadata accessor for Question();
  v29 = swift_allocObject();
  v30 = v48;
  *(v29 + 72) = v47;
  *(v29 + 88) = v30;
  v31 = v50;
  *(v29 + 104) = v49;
  *(v29 + 16) = 5195863;
  *(v29 + 24) = 0xE300000000000000;
  *(v29 + 32) = 0;
  *(v29 + 40) = v6;
  *(v29 + 48) = v28;
  *(v29 + 56) = &off_100323E00;
  *(v29 + 64) = 8;
  *(v29 + 120) = v31;

  sub_1000B4E30(&v47, v46);
  v32 = sub_1000924D0(v6, &v47);
  *(v29 + 136) = v32;
  if (*(&v49 + 1))
  {
    v33 = v32;
    v34 = _swiftEmptyArrayStorage;
    v46[0] = _swiftEmptyArrayStorage;
    v35 = *(v32 + 2);
    v36 = 0;
    v37 =  + 40;
LABEL_3:
    v38 = (v37 + 16 * v36);
    while (1)
    {
      if (v35 == v36)
      {

        goto LABEL_12;
      }

      if (v36 >= *(v33 + 2))
      {
        break;
      }

      ++v36;
      v39 = *v38;
      v38 += 16;
      if (v39 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v34 = v46[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v34 = v6;
LABEL_12:
    *(v29 + 144) = v34;
    v40 = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      v41 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        v42 = 0;
        v43 = v50;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v42 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v44 = *(v6 + 8 * v42 + 32);
          }

          v45 = *(v44 + 16) == v43 && v40 == *(v44 + 24);
          if (v45 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v42;

          if (v41 == v42)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v47);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v47);

        v44 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v47);
      v44 = 0;
    }

    *(v29 + 152) = v44;
  }
}

void sub_100239058()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000028;
  v46._countAndFlagsBits = 0xD00000000000002CLL;
  v46._object = 0x80000001002A6540;
  v2._object = 0x80000001002A7030;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v46);

  v42 = v5;
  *&v43 = 0;
  *(&v43 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v44 = _swiftEmptyArrayStorage;
  *(&v44 + 1) = 0;
  v45 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v47._object = 0x800000010029B660;
  v9._countAndFlagsBits = 7562585;
  v9._object = 0xE300000000000000;
  v10.value._countAndFlagsBits = 0x636E656772656D45;
  v10.value._object = 0xEE00796464754279;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD00000000000002DLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v47);

  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v12;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x45595F434F4C5441;
  *(v14 + 24) = 0xE900000000000053;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v7 + 32) = v14;
  v15 = [v0 mainBundle];
  v48._object = 0x800000010029B660;
  v16._countAndFlagsBits = 28494;
  v16._object = 0xE200000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD00000000000002DLL;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v48);

  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4F4E5F434F4C5441;
  *(v21 + 24) = 0xE800000000000000;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 40;
  *(v7 + 40) = v21;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x454D5F4F4857;
  *(v22 + 24) = 0xE600000000000000;
  type metadata accessor for NotCondition();
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100281610;
  *(v24 + 32) = v22;
  *(v23 + 16) = 2;
  *(v23 + 24) = v24;
  type metadata accessor for Question();
  v25 = swift_allocObject();
  v26 = v43;
  *(v25 + 72) = v42;
  *(v25 + 88) = v26;
  v27 = v45;
  *(v25 + 104) = v44;
  *(v25 + 16) = 0x434F4C5441;
  *(v25 + 24) = 0xE500000000000000;
  *(v25 + 32) = 0;
  *(v25 + 40) = v7;
  *(v25 + 48) = v23;
  *(v25 + 56) = &off_100323E28;
  *(v25 + 64) = 8;
  *(v25 + 120) = v27;

  sub_1000B4E30(&v42, v41);
  v28 = sub_1000924D0(v7, &v42);
  *(v25 + 136) = v28;
  if (*(&v44 + 1))
  {
    v29 = v28;
    v41[0] = _swiftEmptyArrayStorage;
    v30 = *(v28 + 2);
    v31 = 0;
    v32 =  + 40;
LABEL_3:
    v33 = (v32 + 16 * v31);
    while (1)
    {
      if (v30 == v31)
      {

        goto LABEL_12;
      }

      if (v31 >= *(v29 + 2))
      {
        break;
      }

      ++v31;
      v34 = *v33;
      v33 += 16;
      if (v34 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v41[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v25 + 144) = v6;
    v35 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v36 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v36)
      {
        v37 = 0;
        v38 = v45;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v37 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v39 = *(v7 + 8 * v37 + 32);
          }

          v40 = *(v39 + 16) == v38 && v35 == *(v39 + 24);
          if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v37;

          if (v36 == v37)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v42);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v42);

        v39 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v42);
      v39 = 0;
    }

    *(v25 + 152) = v39;
  }
}

void sub_1002395F8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000016;
  v47._countAndFlagsBits = 0xD00000000000002CLL;
  v47._object = 0x80000001002A6540;
  v2._object = 0x80000001002A7010;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v47);

  v43 = v5;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  *&v45 = _swiftEmptyArrayStorage;
  *(&v45 + 1) = 0;
  v46 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1002811B0;
  v7 = [v0 mainBundle];
  v48._object = 0x80000001002A6FD0;
  v8._countAndFlagsBits = 0x796C6C616D726F4ELL;
  v8._object = 0xE800000000000000;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD00000000000003ELL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v48);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000010;
  *(v13 + 24) = 0x80000001002A68D0;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v49._object = 0x80000001002A6FD0;
  v15._countAndFlagsBits = 0x6669442068746957;
  v15._object = 0xEF79746C75636966;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD00000000000003ELL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v49);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000013;
  *(v20 + 24) = 0x80000001002A68B0;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1002811B0;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v22 = swift_allocObject();
  strcpy((v22 + 16), "TYPE_MEDICAL");
  *(v22 + 29) = 0;
  *(v22 + 30) = -5120;
  *(v21 + 32) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = 0x454D5F4F4857;
  *(v23 + 24) = 0xE600000000000000;
  *(v21 + 40) = v23;
  type metadata accessor for AndCondition();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = v21;
  v25 = _swiftEmptyArrayStorage;
  type metadata accessor for Question();
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 72) = v43;
  *(v26 + 88) = v27;
  v28 = v46;
  *(v26 + 104) = v45;
  *(v26 + 16) = 0x4D45485441455242;
  *(v26 + 24) = 0xE900000000000045;
  *(v26 + 32) = 0;
  *(v26 + 40) = v6;
  *(v26 + 48) = v24;
  *(v26 + 56) = _swiftEmptyArrayStorage;
  *(v26 + 64) = 8;
  *(v26 + 120) = v28;

  sub_1000B4E30(&v43, v42);
  v29 = sub_1000924D0(v6, &v43);
  *(v26 + 136) = v29;
  if (*(&v45 + 1))
  {
    v30 = v29;
    v42[0] = _swiftEmptyArrayStorage;
    v31 = *(v29 + 2);
    v32 = 0;
    v33 =  + 40;
LABEL_3:
    v34 = (v33 + 16 * v32);
    while (1)
    {
      if (v31 == v32)
      {

        goto LABEL_12;
      }

      if (v32 >= *(v30 + 2))
      {
        break;
      }

      ++v32;
      v35 = *v34;
      v34 += 16;
      if (v35 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v25 = v42[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v25 = v6;
LABEL_12:
    *(v26 + 144) = v25;
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v37 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        v38 = 0;
        v39 = v46;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v40 = *(v6 + 8 * v38 + 32);
          }

          v41 = *(v40 + 16) == v39 && v36 == *(v40 + 24);
          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v38;

          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v43);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v43);

        v40 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v43);
      v40 = 0;
    }

    *(v26 + 152) = v40;
  }
}

void sub_100239C0C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000017;
  v56._countAndFlagsBits = 0xD00000000000002CLL;
  v56._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6FB0;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v56);

  v52 = v5;
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  *&v54 = _swiftEmptyArrayStorage;
  *(&v54 + 1) = 0;
  v55 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100292B80;
  v7 = [v0 mainBundle];
  v57._object = 0x80000001002A6FD0;
  v8._countAndFlagsBits = 0x796C6C616D726F4ELL;
  v8._object = 0xE800000000000000;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD00000000000003ELL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v57);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000013;
  *(v13 + 24) = 0x80000001002A6890;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v58._object = 0x80000001002A6FD0;
  v15._countAndFlagsBits = 0x6669442068746957;
  v15._object = 0xEF79746C75636966;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0xD00000000000003ELL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v58);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000016;
  *(v20 + 24) = 0x80000001002A6870;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v59._object = 0x80000001002A6FD0;
  v22._countAndFlagsBits = 0x6165724220746F4ELL;
  v22._object = 0xED0000676E696874;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD00000000000003ELL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v59);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD000000000000010;
  *(v27 + 24) = 0x80000001002A6850;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002811B0;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v29 = swift_allocObject();
  strcpy((v29 + 16), "TYPE_MEDICAL");
  *(v29 + 29) = 0;
  *(v29 + 30) = -5120;
  *(v28 + 32) = v29;
  v30 = swift_allocObject();
  *(v30 + 16) = 0x454D5F4F4857;
  *(v30 + 24) = 0xE600000000000000;
  type metadata accessor for NotCondition();
  v31 = swift_allocObject();
  v32 = _swiftEmptyArrayStorage;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100281610;
  *(v33 + 32) = v30;
  *(v31 + 16) = 2;
  *(v31 + 24) = v33;
  *(v28 + 40) = v31;
  type metadata accessor for AndCondition();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v28;
  type metadata accessor for Question();
  v35 = swift_allocObject();
  v36 = v53;
  *(v35 + 72) = v52;
  *(v35 + 88) = v36;
  v37 = v55;
  *(v35 + 104) = v54;
  strcpy((v35 + 16), "BREATHEOTHER");
  *(v35 + 29) = 0;
  *(v35 + 30) = -5120;
  *(v35 + 32) = 0;
  *(v35 + 40) = v6;
  *(v35 + 48) = v34;
  *(v35 + 56) = _swiftEmptyArrayStorage;
  *(v35 + 64) = 8;
  *(v35 + 120) = v37;

  sub_1000B4E30(&v52, v51);
  v38 = sub_1000924D0(v6, &v52);
  *(v35 + 136) = v38;
  if (*(&v54 + 1))
  {
    v39 = v38;
    v51[0] = _swiftEmptyArrayStorage;
    v40 = *(v38 + 2);
    v41 = 0;
    v42 =  + 40;
LABEL_3:
    v43 = (v42 + 16 * v41);
    while (1)
    {
      if (v40 == v41)
      {

        goto LABEL_12;
      }

      if (v41 >= *(v39 + 2))
      {
        break;
      }

      ++v41;
      v44 = *v43;
      v43 += 16;
      if (v44 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v51[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v32 = v6;
LABEL_12:
    *(v35 + 144) = v32;
    v45 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      v46 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        v47 = 0;
        v48 = v55;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v47 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v49 = *(v6 + 8 * v47 + 32);
          }

          v50 = *(v49 + 16) == v48 && v45 == *(v49 + 24);
          if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v47;

          if (v46 == v47)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v52);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v52);

        v49 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v52);
      v49 = 0;
    }

    *(v35 + 152) = v49;
  }
}

void sub_10023A348()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000013;
  v56._countAndFlagsBits = 0xD00000000000002CLL;
  v56._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6F50;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v56);

  v52 = v5;
  *&v53 = 0;
  *(&v53 + 1) = 0xE000000000000000;
  *&v54 = _swiftEmptyArrayStorage;
  *(&v54 + 1) = 0;
  v55 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100292B80;
  v7 = [v0 mainBundle];
  v57._object = 0x800000010029B660;
  v8._countAndFlagsBits = 7562585;
  v8._object = 0xE300000000000000;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD00000000000002DLL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v57);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  strcpy((v13 + 16), "CONSCIOUS_YES");
  *(v13 + 30) = -4864;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v58._object = 0x80000001002A6F70;
  v15._countAndFlagsBits = 0x74616877656D6F53;
  v58._countAndFlagsBits = 0xD000000000000035;
  v15._object = 0xE800000000000000;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v58);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000012;
  *(v20 + 24) = 0x80000001002A6830;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v59._object = 0x800000010029B660;
  v22._countAndFlagsBits = 28494;
  v22._object = 0xE200000000000000;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD00000000000002DLL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v59);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  strcpy((v27 + 16), "CONSCIOUS_NO");
  *(v27 + 29) = 0;
  *(v27 + 30) = -5120;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002811B0;
  type metadata accessor for QuestionCondition();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  strcpy((v29 + 24), "BREATHEOTHER");
  *(v29 + 37) = 0;
  *(v29 + 38) = -5120;
  *(v28 + 32) = v29;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v30 = swift_allocObject();
  *(v30 + 16) = 0xD000000000000010;
  *(v30 + 24) = 0x80000001002A6850;
  type metadata accessor for NotCondition();
  v31 = swift_allocObject();
  v32 = _swiftEmptyArrayStorage;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100281610;
  *(v33 + 32) = v30;
  *(v31 + 16) = 2;
  *(v31 + 24) = v33;
  *(v28 + 40) = v31;
  type metadata accessor for AndCondition();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v28;
  type metadata accessor for Question();
  v35 = swift_allocObject();
  v36 = v53;
  *(v35 + 72) = v52;
  *(v35 + 88) = v36;
  v37 = v55;
  *(v35 + 104) = v54;
  *(v35 + 16) = 0x554F4943534E4F43;
  *(v35 + 24) = 0xE900000000000053;
  *(v35 + 32) = 0;
  *(v35 + 40) = v6;
  *(v35 + 48) = v34;
  *(v35 + 56) = _swiftEmptyArrayStorage;
  *(v35 + 64) = 8;
  *(v35 + 120) = v37;

  sub_1000B4E30(&v52, v51);
  v38 = sub_1000924D0(v6, &v52);
  *(v35 + 136) = v38;
  if (*(&v54 + 1))
  {
    v39 = v38;
    v51[0] = _swiftEmptyArrayStorage;
    v40 = *(v38 + 2);
    v41 = 0;
    v42 =  + 40;
LABEL_3:
    v43 = (v42 + 16 * v41);
    while (1)
    {
      if (v40 == v41)
      {

        goto LABEL_12;
      }

      if (v41 >= *(v39 + 2))
      {
        break;
      }

      ++v41;
      v44 = *v43;
      v43 += 16;
      if (v44 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v51[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v32 = v6;
LABEL_12:
    *(v35 + 144) = v32;
    v45 = *(&v55 + 1);
    if (*(&v55 + 1))
    {
      v46 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v46)
      {
        v47 = 0;
        v48 = v55;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v47 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v49 = *(v6 + 8 * v47 + 32);
          }

          v50 = *(v49 + 16) == v48 && v45 == *(v49 + 24);
          if (v50 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v47;

          if (v46 == v47)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v52);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v52);

        v49 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v52);
      v49 = 0;
    }

    *(v35 + 152) = v49;
  }
}

void sub_10023AA6C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000022;
  v80._countAndFlagsBits = 0xD00000000000002CLL;
  v80._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6A40;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v80);

  v76 = v5;
  *&v77 = 0;
  *(&v77 + 1) = 0xE000000000000000;
  *&v78 = _swiftEmptyArrayStorage;
  *(&v78 + 1) = 0;
  v79 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100281630;
  v7 = [v0 mainBundle];
  v81._object = 0x80000001002A6EC0;
  v8._countAndFlagsBits = 0x6150207473656843;
  v8._object = 0xEA00000000006E69;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v81._countAndFlagsBits = 0xD000000000000067;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v81);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  strcpy((v13 + 16), "MEDTYPE_CHEST");
  *(v13 + 30) = -4864;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v15._countAndFlagsBits = 0xD000000000000010;
  v82._object = 0x80000001002A6EC0;
  v15._object = 0x80000001002A6F30;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v82._countAndFlagsBits = 0xD000000000000067;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v82);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  strcpy((v20 + 16), "MEDTYPE_TRAUM");
  *(v20 + 30) = -4864;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v83._object = 0x80000001002A6EC0;
  v22._countAndFlagsBits = 0x7373656E6B636953;
  v22._object = 0xE800000000000000;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v83._countAndFlagsBits = 0xD000000000000067;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v83);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  strcpy((v27 + 16), "MEDTYPE_SICKN");
  *(v27 + 30) = -4864;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  v28 = [v0 mainBundle];
  v84._object = 0x80000001002A6EC0;
  v29._countAndFlagsBits = 0x656B6F727453;
  v29._object = 0xE600000000000000;
  v30.value._countAndFlagsBits = 0x636E656772656D45;
  v30.value._object = 0xEE00796464754279;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v84._countAndFlagsBits = 0xD000000000000067;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v84);

  v33 = swift_allocObject();
  v33[1] = v32;
  v33[3]._countAndFlagsBits = 0;
  v33[3]._object = 0;
  v33[4]._countAndFlagsBits = static Color.clear.getter();
  v33[2]._countAndFlagsBits = 0;
  v33[2]._object = 0;
  v34 = swift_allocObject();
  strcpy((v34 + 16), "MEDTYPE_STROK");
  *(v34 + 30) = -4864;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  *(v34 + 48) = 40;
  *(v6 + 56) = v34;
  v35 = [v0 mainBundle];
  v85._object = 0x80000001002A6EC0;
  v36._countAndFlagsBits = 0x676E696E776F7244;
  v36._object = 0xE800000000000000;
  v37.value._countAndFlagsBits = 0x636E656772656D45;
  v37.value._object = 0xEE00796464754279;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v85._countAndFlagsBits = 0xD000000000000067;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v85);

  v40 = swift_allocObject();
  v40[1] = v39;
  v40[3]._countAndFlagsBits = 0;
  v40[3]._object = 0;
  v40[4]._countAndFlagsBits = static Color.clear.getter();
  v40[2]._countAndFlagsBits = 0;
  v40[2]._object = 0;
  v41 = swift_allocObject();
  strcpy((v41 + 16), "MEDTYPE_DROWN");
  *(v41 + 30) = -4864;
  *(v41 + 32) = v40;
  *(v41 + 40) = 0;
  *(v41 + 48) = 40;
  *(v6 + 64) = v41;
  v42 = [v0 mainBundle];
  v86._countAndFlagsBits = 0xD000000000000066;
  v86._object = 0x800000010029B8F0;
  v43._countAndFlagsBits = 0x726568744FLL;
  v43._object = 0xE500000000000000;
  v44.value._countAndFlagsBits = 0x636E656772656D45;
  v44.value._object = 0xEE00796464754279;
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  v46 = NSLocalizedString(_:tableName:bundle:value:comment:)(v43, v44, v42, v45, v86);

  v47 = swift_allocObject();
  v47[1] = v46;
  v47[3]._countAndFlagsBits = 0;
  v47[3]._object = 0;
  v47[4]._countAndFlagsBits = static Color.clear.getter();
  v47[2]._countAndFlagsBits = 0;
  v47[2]._object = 0;
  v48 = swift_allocObject();
  strcpy((v48 + 16), "MEDTYPE_OTHER");
  *(v48 + 30) = -4864;
  *(v48 + 32) = v47;
  *(v48 + 40) = 0;
  *(v48 + 48) = 40;
  *(v6 + 72) = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100292B80;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v50 = swift_allocObject();
  strcpy((v50 + 16), "TYPE_MEDICAL");
  *(v50 + 29) = 0;
  *(v50 + 30) = -5120;
  *(v49 + 32) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = 0xD000000000000010;
  *(v51 + 24) = 0x80000001002A6850;
  type metadata accessor for NotCondition();
  v52 = swift_allocObject();
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100281610;
  *(v53 + 32) = v51;
  *(v52 + 16) = 2;
  *(v52 + 24) = v53;
  *(v49 + 40) = v52;
  v54 = swift_allocObject();
  strcpy((v54 + 16), "CONSCIOUS_NO");
  *(v54 + 29) = 0;
  *(v54 + 30) = -5120;
  v55 = swift_allocObject();
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100281610;
  *(v56 + 32) = v54;
  *(v55 + 16) = 2;
  v57 = _swiftEmptyArrayStorage;
  *(v55 + 24) = v56;
  *(v49 + 48) = v55;
  type metadata accessor for AndCondition();
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = v49;
  type metadata accessor for Question();
  v59 = swift_allocObject();
  v60 = v77;
  *(v59 + 72) = v76;
  *(v59 + 88) = v60;
  v61 = v79;
  *(v59 + 104) = v78;
  *(v59 + 16) = 0x4550595444454DLL;
  *(v59 + 24) = 0xE700000000000000;
  *(v59 + 32) = 0;
  *(v59 + 40) = v6;
  *(v59 + 48) = v58;
  *(v59 + 56) = _swiftEmptyArrayStorage;
  *(v59 + 64) = 8;
  *(v59 + 120) = v61;

  sub_1000B4E30(&v76, v75);
  v62 = sub_1000924D0(v6, &v76);
  *(v59 + 136) = v62;
  if (*(&v78 + 1))
  {
    v63 = v62;
    v75[0] = _swiftEmptyArrayStorage;
    v64 = *(v62 + 2);
    v65 = 0;
    v66 =  + 40;
LABEL_3:
    v67 = (v66 + 16 * v65);
    while (1)
    {
      if (v64 == v65)
      {

        goto LABEL_12;
      }

      if (v65 >= *(v63 + 2))
      {
        break;
      }

      ++v65;
      v68 = *v67;
      v67 += 16;
      if (v68 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v57 = v75[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v57 = v6;
LABEL_12:
    *(v59 + 144) = v57;
    v69 = *(&v79 + 1);
    if (*(&v79 + 1))
    {
      v70 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v70)
      {
        v71 = 0;
        v72 = v79;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v73 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v71 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v73 = *(v6 + 8 * v71 + 32);
          }

          v74 = *(v73 + 16) == v72 && v69 == *(v73 + 24);
          if (v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v71;

          if (v70 == v71)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v76);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v76);

        v73 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v76);
      v73 = 0;
    }

    *(v59 + 152) = v73;
  }
}

void sub_10023B48C()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000010;
  v47._countAndFlagsBits = 0xD00000000000002CLL;
  v47._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6EA0;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v47);

  v43 = v5;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v45 = _swiftEmptyArrayStorage;
  *(&v45 + 1) = 0;
  v46 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v48._object = 0x80000001002A6E60;
  v9._countAndFlagsBits = 0x6C4F20726F203533;
  v9._object = 0xEB00000000726564;
  v10.value._countAndFlagsBits = 0x636E656772656D45;
  v10.value._object = 0xEE00796464754279;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD000000000000038;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v48);

  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v12;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  strcpy((v14 + 16), "AGEME_35PLUS");
  *(v14 + 29) = 0;
  *(v14 + 30) = -5120;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v7 + 32) = v14;
  v15 = [v0 mainBundle];
  v49._object = 0x80000001002A6E60;
  v16._countAndFlagsBits = 0x3533207265646E55;
  v16._object = 0xE800000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD000000000000038;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v49);

  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  strcpy((v21 + 16), "AGEME_BELOW35");
  *(v21 + 30) = -4864;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 40;
  *(v7 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002811B0;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v23 = swift_allocObject();
  *(v23 + 16) = 0x454D5F4F4857;
  *(v23 + 24) = 0xE600000000000000;
  *(v22 + 32) = v23;
  v24 = swift_allocObject();
  strcpy((v24 + 16), "MEDTYPE_CHEST");
  *(v24 + 30) = -4864;
  *(v22 + 40) = v24;
  type metadata accessor for AndCondition();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = v22;
  type metadata accessor for Question();
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 72) = v43;
  *(v26 + 88) = v27;
  v28 = v46;
  *(v26 + 104) = v45;
  *(v26 + 16) = 0x454D454741;
  *(v26 + 24) = 0xE500000000000000;
  *(v26 + 32) = 0;
  *(v26 + 40) = v7;
  *(v26 + 48) = v25;
  *(v26 + 56) = _swiftEmptyArrayStorage;
  *(v26 + 64) = 8;
  *(v26 + 120) = v28;

  sub_1000B4E30(&v43, v42);
  v29 = sub_1000924D0(v7, &v43);
  *(v26 + 136) = v29;
  if (*(&v45 + 1))
  {
    v30 = v29;
    v42[0] = _swiftEmptyArrayStorage;
    v31 = *(v29 + 2);
    v32 = 0;
    v33 =  + 40;
LABEL_3:
    v34 = (v33 + 16 * v32);
    while (1)
    {
      if (v31 == v32)
      {

        goto LABEL_12;
      }

      if (v32 >= *(v30 + 2))
      {
        break;
      }

      ++v32;
      v35 = *v34;
      v34 += 16;
      if (v35 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v42[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v26 + 144) = v6;
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v37 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        v38 = 0;
        v39 = v46;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v40 = *(v7 + 8 * v38 + 32);
          }

          v41 = *(v40 + 16) == v39 && v36 == *(v40 + 24);
          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v38;

          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v43);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v43);

        v40 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v43);
      v40 = 0;
    }

    *(v26 + 152) = v40;
  }
}

void sub_10023BA90()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000011;
  v49._countAndFlagsBits = 0xD00000000000002CLL;
  v49._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6E40;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v49);

  v45 = v5;
  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v47 = _swiftEmptyArrayStorage;
  *(&v47 + 1) = 0;
  v48 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v50._object = 0x80000001002A6E60;
  v9._countAndFlagsBits = 0x6C4F20726F203533;
  v9._object = 0xEB00000000726564;
  v10.value._countAndFlagsBits = 0x636E656772656D45;
  v10.value._object = 0xEE00796464754279;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0xD000000000000038;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v50);

  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v12;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x524548544F454741;
  *(v14 + 24) = 0xEF53554C5035335FLL;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v7 + 32) = v14;
  v15 = [v0 mainBundle];
  v51._object = 0x80000001002A6E60;
  v16._countAndFlagsBits = 0x3533207265646E55;
  v16._object = 0xE800000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0xD000000000000038;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v51);

  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0xD000000000000010;
  *(v21 + 24) = 0x80000001002A6810;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 40;
  *(v7 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002811B0;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v23 = swift_allocObject();
  *(v23 + 16) = 0x454D5F4F4857;
  *(v23 + 24) = 0xE600000000000000;
  type metadata accessor for NotCondition();
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100281610;
  *(v25 + 32) = v23;
  *(v24 + 16) = 2;
  *(v24 + 24) = v25;
  *(v22 + 32) = v24;
  v26 = swift_allocObject();
  strcpy((v26 + 16), "MEDTYPE_CHEST");
  *(v26 + 30) = -4864;
  *(v22 + 40) = v26;
  type metadata accessor for AndCondition();
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v22;
  type metadata accessor for Question();
  v28 = swift_allocObject();
  v29 = v46;
  *(v28 + 72) = v45;
  *(v28 + 88) = v29;
  v30 = v48;
  *(v28 + 104) = v47;
  *(v28 + 16) = 0x524548544F454741;
  *(v28 + 24) = 0xE800000000000000;
  *(v28 + 32) = 0;
  *(v28 + 40) = v7;
  *(v28 + 48) = v27;
  *(v28 + 56) = _swiftEmptyArrayStorage;
  *(v28 + 64) = 8;
  *(v28 + 120) = v30;

  sub_1000B4E30(&v45, v44);
  v31 = sub_1000924D0(v7, &v45);
  *(v28 + 136) = v31;
  if (*(&v47 + 1))
  {
    v32 = v31;
    v44[0] = _swiftEmptyArrayStorage;
    v33 = *(v31 + 2);
    v34 = 0;
    v35 =  + 40;
LABEL_3:
    v36 = (v35 + 16 * v34);
    while (1)
    {
      if (v33 == v34)
      {

        goto LABEL_12;
      }

      if (v34 >= *(v32 + 2))
      {
        break;
      }

      ++v34;
      v37 = *v36;
      v36 += 16;
      if (v37 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v44[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v28 + 144) = v6;
    v38 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v39 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        v40 = 0;
        v41 = v48;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v40 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v42 = *(v7 + 8 * v40 + 32);
          }

          v43 = *(v42 + 16) == v41 && v38 == *(v42 + 24);
          if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v40;

          if (v39 == v40)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v45);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v45);

        v42 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v45);
      v42 = 0;
    }

    *(v28 + 152) = v42;
  }
}

void sub_10023C0E4()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  v44._countAndFlagsBits = 0xD00000000000002CLL;
  v44._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6E20;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v44);

  v40 = v5;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  *(&v42 + 1) = 0;
  v43 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v45._object = 0x800000010029B660;
  v9._countAndFlagsBits = 7562585;
  v9._object = 0xE300000000000000;
  v10.value._countAndFlagsBits = 0x636E656772656D45;
  v10.value._object = 0xEE00796464754279;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0xD00000000000002DLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v45);

  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v12;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  strcpy((v14 + 16), "IMNTDNGR_YES");
  *(v14 + 29) = 0;
  *(v14 + 30) = -5120;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v7 + 32) = v14;
  v15 = [v0 mainBundle];
  v46._object = 0x800000010029B660;
  v16._countAndFlagsBits = 28494;
  v16._object = 0xE200000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0xD00000000000002DLL;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v46);

  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0x52474E44544E4D49;
  *(v21 + 24) = 0xEB000000004F4E5FLL;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 40;
  *(v7 + 40) = v21;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x4C4F505F45505954;
  *(v22 + 24) = 0xEB00000000454349;
  type metadata accessor for Question();
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 72) = v40;
  *(v23 + 88) = v24;
  v25 = v43;
  *(v23 + 104) = v42;
  *(v23 + 16) = 0x52474E44544E4D49;
  *(v23 + 24) = 0xE800000000000000;
  *(v23 + 32) = 0;
  *(v23 + 40) = v7;
  *(v23 + 48) = v22;
  *(v23 + 56) = _swiftEmptyArrayStorage;
  *(v23 + 64) = 8;
  *(v23 + 120) = v25;

  sub_1000B4E30(&v40, v39);
  v26 = sub_1000924D0(v7, &v40);
  *(v23 + 136) = v26;
  if (*(&v42 + 1))
  {
    v27 = v26;
    v39[0] = _swiftEmptyArrayStorage;
    v28 = *(v26 + 2);
    v29 = 0;
    v30 =  + 40;
LABEL_3:
    v31 = (v30 + 16 * v29);
    while (1)
    {
      if (v28 == v29)
      {

        goto LABEL_12;
      }

      if (v29 >= *(v27 + 2))
      {
        break;
      }

      ++v29;
      v32 = *v31;
      v31 += 16;
      if (v32 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v39[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v23 + 144) = v6;
    v33 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        v35 = 0;
        v36 = v43;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v35 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v37 = *(v7 + 8 * v35 + 32);
          }

          v38 = *(v37 + 16) == v36 && v33 == *(v37 + 24);
          if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v35;

          if (v34 == v35)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v40);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v40);

        v37 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v40);
      v37 = 0;
    }

    *(v23 + 152) = v37;
  }
}

void sub_10023C624()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000015;
  v44._countAndFlagsBits = 0xD00000000000002CLL;
  v44._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6E00;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v44);

  v40 = v5;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  *(&v42 + 1) = 0;
  v43 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v45._object = 0x800000010029B660;
  v9._countAndFlagsBits = 7562585;
  v9._object = 0xE300000000000000;
  v10.value._countAndFlagsBits = 0x636E656772656D45;
  v10.value._object = 0xEE00796464754279;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0xD00000000000002DLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v45);

  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v12;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x595F4E4F50414557;
  *(v14 + 24) = 0xEA00000000005345;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v7 + 32) = v14;
  v15 = [v0 mainBundle];
  v46._object = 0x800000010029B660;
  v16._countAndFlagsBits = 28494;
  v16._object = 0xE200000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0xD00000000000002DLL;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v46);

  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4E5F4E4F50414557;
  *(v21 + 24) = 0xE90000000000004FLL;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 40;
  *(v7 + 40) = v21;
  type metadata accessor for QuestionCondition();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0x52474E44544E4D49;
  *(v22 + 32) = 0xE800000000000000;
  type metadata accessor for Question();
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 72) = v40;
  *(v23 + 88) = v24;
  v25 = v43;
  *(v23 + 104) = v42;
  *(v23 + 16) = 0x4E4F50414557;
  *(v23 + 24) = 0xE600000000000000;
  *(v23 + 32) = 0;
  *(v23 + 40) = v7;
  *(v23 + 48) = v22;
  *(v23 + 56) = _swiftEmptyArrayStorage;
  *(v23 + 64) = 8;
  *(v23 + 120) = v25;

  sub_1000B4E30(&v40, v39);
  v26 = sub_1000924D0(v7, &v40);
  *(v23 + 136) = v26;
  if (*(&v42 + 1))
  {
    v27 = v26;
    v39[0] = _swiftEmptyArrayStorage;
    v28 = *(v26 + 2);
    v29 = 0;
    v30 =  + 40;
LABEL_3:
    v31 = (v30 + 16 * v29);
    while (1)
    {
      if (v28 == v29)
      {

        goto LABEL_12;
      }

      if (v29 >= *(v27 + 2))
      {
        break;
      }

      ++v29;
      v32 = *v31;
      v31 += 16;
      if (v32 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v39[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v23 + 144) = v6;
    v33 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        v35 = 0;
        v36 = v43;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v35 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v37 = *(v7 + 8 * v35 + 32);
          }

          v38 = *(v37 + 16) == v36 && v33 == *(v37 + 24);
          if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v35;

          if (v34 == v35)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v40);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v40);

        v37 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v40);
      v37 = 0;
    }

    *(v23 + 152) = v37;
  }
}

void sub_10023CB74()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000022;
  v65._countAndFlagsBits = 0xD00000000000002CLL;
  v65._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6A40;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v65);

  v61 = v5;
  *&v62 = 0;
  *(&v62 + 1) = 0xE000000000000000;
  *&v63 = _swiftEmptyArrayStorage;
  *(&v63 + 1) = 0;
  v64 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100292B20;
  v7 = [v0 mainBundle];
  v66._object = 0x80000001002A6D80;
  v8._countAndFlagsBits = 0x746C7561737341;
  v8._object = 0xE700000000000000;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v66._countAndFlagsBits = 0xD00000000000005ALL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v66);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000010;
  *(v13 + 24) = 0x80000001002A67F0;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v67._object = 0x80000001002A6D80;
  v15._countAndFlagsBits = 0x656D737361726148;
  v15._object = 0xEA0000000000746ELL;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v67._countAndFlagsBits = 0xD00000000000005ALL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v67);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000011;
  *(v20 + 24) = 0x80000001002A67D0;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v68._object = 0x80000001002A6D80;
  v22._countAndFlagsBits = 0x7265647572746E49;
  v22._object = 0xE800000000000000;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0xD00000000000005ALL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v68);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  *(v27 + 16) = 0xD000000000000013;
  *(v27 + 24) = 0x80000001002A6790;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  v28 = [v0 mainBundle];
  v69._object = 0x80000001002A6D80;
  v29._object = 0x80000001002A6DE0;
  v29._countAndFlagsBits = 0xD000000000000013;
  v30.value._countAndFlagsBits = 0x636E656772656D45;
  v30.value._object = 0xEE00796464754279;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v69._countAndFlagsBits = 0xD00000000000005ALL;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v69);

  v33 = swift_allocObject();
  v33[1] = v32;
  v33[3]._countAndFlagsBits = 0;
  v33[3]._object = 0;
  v33[4]._countAndFlagsBits = static Color.clear.getter();
  v33[2]._countAndFlagsBits = 0;
  v33[2]._object = 0;
  v34 = swift_allocObject();
  *(v34 + 16) = 0xD000000000000013;
  *(v34 + 24) = 0x80000001002A67B0;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  *(v34 + 48) = 40;
  *(v6 + 56) = v34;
  v35 = [v0 mainBundle];
  v70._object = 0x800000010029B8F0;
  v36._countAndFlagsBits = 0x726568744FLL;
  v70._countAndFlagsBits = 0xD000000000000066;
  v36._object = 0xE500000000000000;
  v37.value._countAndFlagsBits = 0x636E656772656D45;
  v37.value._object = 0xEE00796464754279;
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, v37, v35, v38, v70);

  v40 = swift_allocObject();
  v40[1] = v39;
  v41 = _swiftEmptyArrayStorage;
  v40[3]._countAndFlagsBits = 0;
  v40[3]._object = 0;
  v40[4]._countAndFlagsBits = static Color.clear.getter();
  v40[2]._countAndFlagsBits = 0;
  v40[2]._object = 0;
  v42 = swift_allocObject();
  *(v42 + 16) = 0xD000000000000010;
  *(v42 + 24) = 0x80000001002A6770;
  *(v42 + 32) = v40;
  *(v42 + 40) = 0;
  *(v42 + 48) = 40;
  *(v6 + 64) = v42;
  type metadata accessor for QuestionCondition();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0x4E4F50414557;
  *(v43 + 32) = 0xE600000000000000;
  type metadata accessor for Question();
  v44 = swift_allocObject();
  v45 = v62;
  *(v44 + 72) = v61;
  *(v44 + 88) = v45;
  v46 = v64;
  *(v44 + 104) = v63;
  *(v44 + 16) = 0x59544543494C4F50;
  *(v44 + 24) = 0xEA00000000004550;
  *(v44 + 32) = 0;
  *(v44 + 40) = v6;
  *(v44 + 48) = v43;
  *(v44 + 56) = _swiftEmptyArrayStorage;
  *(v44 + 64) = 8;
  *(v44 + 120) = v46;

  sub_1000B4E30(&v61, v60);
  v47 = sub_1000924D0(v6, &v61);
  *(v44 + 136) = v47;
  if (*(&v63 + 1))
  {
    v48 = v47;
    v60[0] = _swiftEmptyArrayStorage;
    v49 = *(v47 + 2);
    v50 = 0;
    v51 =  + 40;
LABEL_3:
    v52 = (v51 + 16 * v50);
    while (1)
    {
      if (v49 == v50)
      {

        goto LABEL_12;
      }

      if (v50 >= *(v48 + 2))
      {
        break;
      }

      ++v50;
      v53 = *v52;
      v52 += 16;
      if (v53 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v41 = v60[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v41 = v6;
LABEL_12:
    *(v44 + 144) = v41;
    v54 = *(&v64 + 1);
    if (*(&v64 + 1))
    {
      v55 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
        v56 = 0;
        v57 = v64;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v56 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v58 = *(v6 + 8 * v56 + 32);
          }

          v59 = *(v58 + 16) == v57 && v54 == *(v58 + 24);
          if (v59 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v56;

          if (v55 == v56)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v61);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v61);

        v58 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v61);
      v58 = 0;
    }

    *(v44 + 152) = v58;
  }
}

void sub_10023D3AC()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v47._countAndFlagsBits = 0xD00000000000002CLL;
  v47._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6D60;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v47);

  v43 = v5;
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v45 = _swiftEmptyArrayStorage;
  *(&v45 + 1) = 0;
  v46 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v48._object = 0x800000010029B660;
  v9._countAndFlagsBits = 7562585;
  v9._object = 0xE300000000000000;
  v10.value._countAndFlagsBits = 0x636E656772656D45;
  v10.value._object = 0xEE00796464754279;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD00000000000002DLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v48);

  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v12;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  strcpy((v14 + 16), "DOMESTIC_YES");
  *(v14 + 29) = 0;
  *(v14 + 30) = -5120;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v7 + 32) = v14;
  v15 = [v0 mainBundle];
  v49._object = 0x800000010029B660;
  v16._countAndFlagsBits = 28494;
  v16._object = 0xE200000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0xD00000000000002DLL;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v49);

  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0x43495453454D4F44;
  *(v21 + 24) = 0xEB000000004F4E5FLL;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 40;
  *(v7 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1002811B0;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v23 = swift_allocObject();
  *(v23 + 16) = 0xD000000000000010;
  *(v23 + 24) = 0x80000001002A67F0;
  *(v22 + 32) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = 0xD000000000000011;
  *(v24 + 24) = 0x80000001002A67D0;
  *(v22 + 40) = v24;
  type metadata accessor for OrCondition();
  v25 = swift_allocObject();
  *(v25 + 16) = 1;
  *(v25 + 24) = v22;
  type metadata accessor for Question();
  v26 = swift_allocObject();
  v27 = v44;
  *(v26 + 72) = v43;
  *(v26 + 88) = v27;
  v28 = v46;
  *(v26 + 104) = v45;
  *(v26 + 16) = 0x43495453454D4F44;
  *(v26 + 24) = 0xE800000000000000;
  *(v26 + 32) = 0;
  *(v26 + 40) = v7;
  *(v26 + 48) = v25;
  *(v26 + 56) = _swiftEmptyArrayStorage;
  *(v26 + 64) = 8;
  *(v26 + 120) = v28;

  sub_1000B4E30(&v43, v42);
  v29 = sub_1000924D0(v7, &v43);
  *(v26 + 136) = v29;
  if (*(&v45 + 1))
  {
    v30 = v29;
    v42[0] = _swiftEmptyArrayStorage;
    v31 = *(v29 + 2);
    v32 = 0;
    v33 =  + 40;
LABEL_3:
    v34 = (v33 + 16 * v32);
    while (1)
    {
      if (v31 == v32)
      {

        goto LABEL_12;
      }

      if (v32 >= *(v30 + 2))
      {
        break;
      }

      ++v32;
      v35 = *v34;
      v34 += 16;
      if (v35 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v42[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v26 + 144) = v6;
    v36 = *(&v46 + 1);
    if (*(&v46 + 1))
    {
      v37 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        v38 = 0;
        v39 = v46;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v40 = *(v7 + 8 * v38 + 32);
          }

          v41 = *(v40 + 16) == v39 && v36 == *(v40 + 24);
          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v38;

          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v43);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v43);

        v40 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v43);
      v40 = 0;
    }

    *(v26 + 152) = v40;
  }
}

void sub_10023D978()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000012;
  v44._countAndFlagsBits = 0xD00000000000002CLL;
  v44._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6D40;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v44);

  v40 = v5;
  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  v6 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  *(&v42 + 1) = 0;
  v43 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002811B0;
  v8 = [v0 mainBundle];
  v45._object = 0x800000010029B660;
  v9._countAndFlagsBits = 7562585;
  v9._object = 0xE300000000000000;
  v10.value._countAndFlagsBits = 0x636E656772656D45;
  v10.value._object = 0xEE00796464754279;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v45._countAndFlagsBits = 0xD00000000000002DLL;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v45);

  type metadata accessor for OptionPresentation();
  v13 = swift_allocObject();
  v13[1] = v12;
  v13[3]._countAndFlagsBits = 0;
  v13[3]._object = 0;
  v13[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v13[2]._countAndFlagsBits = 0;
  v13[2]._object = 0;
  v14 = swift_allocObject();
  *(v14 + 16) = 0x595F455249464E4FLL;
  *(v14 + 24) = 0xEA00000000005345;
  *(v14 + 32) = v13;
  *(v14 + 40) = 0;
  *(v14 + 48) = 40;
  *(v7 + 32) = v14;
  v15 = [v0 mainBundle];
  v46._object = 0x800000010029B660;
  v16._countAndFlagsBits = 28494;
  v16._object = 0xE200000000000000;
  v17.value._countAndFlagsBits = 0x636E656772656D45;
  v17.value._object = 0xEE00796464754279;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0xD00000000000002DLL;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v46);

  v20 = swift_allocObject();
  v20[1] = v19;
  v20[3]._countAndFlagsBits = 0;
  v20[3]._object = 0;
  v20[4]._countAndFlagsBits = static Color.clear.getter();
  v20[2]._countAndFlagsBits = 0;
  v20[2]._object = 0;
  v21 = swift_allocObject();
  *(v21 + 16) = 0x4E5F455249464E4FLL;
  *(v21 + 24) = 0xE90000000000004FLL;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  *(v21 + 48) = 40;
  *(v7 + 40) = v21;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v22 = swift_allocObject();
  *(v22 + 16) = 0x5249465F45505954;
  *(v22 + 24) = 0xE900000000000045;
  type metadata accessor for Question();
  v23 = swift_allocObject();
  v24 = v41;
  *(v23 + 72) = v40;
  *(v23 + 88) = v24;
  v25 = v43;
  *(v23 + 104) = v42;
  *(v23 + 16) = 0x455249464E4FLL;
  *(v23 + 24) = 0xE600000000000000;
  *(v23 + 32) = 0;
  *(v23 + 40) = v7;
  *(v23 + 48) = v22;
  *(v23 + 56) = _swiftEmptyArrayStorage;
  *(v23 + 64) = 8;
  *(v23 + 120) = v25;

  sub_1000B4E30(&v40, v39);
  v26 = sub_1000924D0(v7, &v40);
  *(v23 + 136) = v26;
  if (*(&v42 + 1))
  {
    v27 = v26;
    v39[0] = _swiftEmptyArrayStorage;
    v28 = *(v26 + 2);
    v29 = 0;
    v30 =  + 40;
LABEL_3:
    v31 = (v30 + 16 * v29);
    while (1)
    {
      if (v28 == v29)
      {

        goto LABEL_12;
      }

      if (v29 >= *(v27 + 2))
      {
        break;
      }

      ++v29;
      v32 = *v31;
      v31 += 16;
      if (v32 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v39[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v6 = v7;
LABEL_12:
    *(v23 + 144) = v6;
    v33 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v34 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        v35 = 0;
        v36 = v43;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v35 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v37 = *(v7 + 8 * v35 + 32);
          }

          v38 = *(v37 + 16) == v36 && v33 == *(v37 + 24);
          if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v35;

          if (v34 == v35)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v40);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v40);

        v37 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v40);
      v37 = 0;
    }

    *(v23 + 152) = v37;
  }
}

void sub_10023DEC8()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000012;
  v54._countAndFlagsBits = 0xD00000000000002CLL;
  v54._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6930;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v54);

  v50 = v5;
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  *&v52 = _swiftEmptyArrayStorage;
  *(&v52 + 1) = 0;
  v53 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100292B80;
  v7 = [v0 mainBundle];
  v55._object = 0x800000010029B660;
  v8._countAndFlagsBits = 7562585;
  v8._object = 0xE300000000000000;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0xD00000000000002DLL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v55);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0x5F44455050415254;
  *(v13 + 24) = 0xEB00000000534559;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v56._object = 0x800000010029B660;
  v15._countAndFlagsBits = 28494;
  v15._object = 0xE200000000000000;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0xD00000000000002DLL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v56);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x5F44455050415254;
  *(v20 + 24) = 0xEA00000000004F4ELL;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v57._object = 0x80000001002A6D00;
  v22._countAndFlagsBits = 0x657275736E55;
  v57._countAndFlagsBits = 0xD000000000000034;
  v22._object = 0xE600000000000000;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v57);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  strcpy((v27 + 16), "TRAPPED_UNSURE");
  *(v27 + 31) = -18;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1002811B0;
  type metadata accessor for QuestionCondition();
  v29 = swift_allocObject();
  *(v29 + 16) = 2;
  *(v29 + 24) = 0x455249464E4FLL;
  *(v29 + 32) = 0xE600000000000000;
  *(v28 + 32) = v29;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v30 = swift_allocObject();
  *(v30 + 16) = 0x4E5F455249464E4FLL;
  *(v30 + 24) = 0xE90000000000004FLL;
  *(v28 + 40) = v30;
  type metadata accessor for OrCondition();
  v31 = swift_allocObject();
  *(v31 + 16) = 1;
  *(v31 + 24) = v28;
  v32 = _swiftEmptyArrayStorage;
  type metadata accessor for Question();
  v33 = swift_allocObject();
  v34 = v51;
  *(v33 + 72) = v50;
  *(v33 + 88) = v34;
  v35 = v53;
  *(v33 + 104) = v52;
  *(v33 + 16) = 0x44455050415254;
  *(v33 + 24) = 0xE700000000000000;
  *(v33 + 32) = 0;
  *(v33 + 40) = v6;
  *(v33 + 48) = v31;
  *(v33 + 56) = _swiftEmptyArrayStorage;
  *(v33 + 64) = 8;
  *(v33 + 120) = v35;

  sub_1000B4E30(&v50, v49);
  v36 = sub_1000924D0(v6, &v50);
  *(v33 + 136) = v36;
  if (*(&v52 + 1))
  {
    v37 = v36;
    v49[0] = _swiftEmptyArrayStorage;
    v38 = *(v36 + 2);
    v39 = 0;
    v40 =  + 40;
LABEL_3:
    v41 = (v40 + 16 * v39);
    while (1)
    {
      if (v38 == v39)
      {

        goto LABEL_12;
      }

      if (v39 >= *(v37 + 2))
      {
        break;
      }

      ++v39;
      v42 = *v41;
      v41 += 16;
      if (v42 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v32 = v49[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v32 = v6;
LABEL_12:
    *(v33 + 144) = v32;
    v43 = *(&v53 + 1);
    if (*(&v53 + 1))
    {
      v44 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v44)
      {
        v45 = 0;
        v46 = v53;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v45 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v47 = *(v6 + 8 * v45 + 32);
          }

          v48 = *(v47 + 16) == v46 && v43 == *(v47 + 24);
          if (v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v45;

          if (v44 == v45)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v50);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v50);

        v47 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v50);
      v47 = 0;
    }

    *(v33 + 152) = v47;
  }
}

void sub_10023E574()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000018;
  v62._countAndFlagsBits = 0xD00000000000002CLL;
  v62._object = 0x80000001002A6540;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v2._object = 0x80000001002A6C60;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v62);

  v58 = v5;
  *&v59 = 0;
  *(&v59 + 1) = 0xE000000000000000;
  *&v60 = _swiftEmptyArrayStorage;
  *(&v60 + 1) = 0;
  v61 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100281640;
  v7 = [v0 mainBundle];
  v63._object = 0x80000001002A6CA0;
  v8._object = 0x80000001002A6C80;
  v8._countAndFlagsBits = 0xD000000000000011;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v63._countAndFlagsBits = 0xD00000000000003ALL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v63);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  strcpy((v13 + 16), "FIRETYPE_BLDG");
  *(v13 + 30) = -4864;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v64._object = 0x80000001002A6CA0;
  v15._countAndFlagsBits = 0x4220726F20726143;
  v15._object = 0xEB0000000074616FLL;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v64._countAndFlagsBits = 0xD00000000000003ALL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v64);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0xD000000000000010;
  *(v20 + 24) = 0x80000001002A6750;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v65._object = 0x80000001002A6CA0;
  v22._object = 0x80000001002A6CE0;
  v22._countAndFlagsBits = 0xD000000000000011;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v65._countAndFlagsBits = 0xD00000000000003ALL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v65);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  strcpy((v27 + 16), "FIRETYPE_WILD");
  *(v27 + 30) = -4864;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  v28 = [v0 mainBundle];
  v66._object = 0x800000010029B8F0;
  v29._countAndFlagsBits = 0x726568744FLL;
  v66._countAndFlagsBits = 0xD000000000000066;
  v29._object = 0xE500000000000000;
  v30.value._countAndFlagsBits = 0x636E656772656D45;
  v30.value._object = 0xEE00796464754279;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v66);

  v33 = swift_allocObject();
  v33[1] = v32;
  v33[3]._countAndFlagsBits = 0;
  v33[3]._object = 0;
  v33[4]._countAndFlagsBits = static Color.clear.getter();
  v33[2]._countAndFlagsBits = 0;
  v33[2]._object = 0;
  v34 = swift_allocObject();
  strcpy((v34 + 16), "FIRETYPE_OTHER");
  *(v34 + 31) = -18;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  *(v34 + 48) = 40;
  *(v6 + 56) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100292B80;
  type metadata accessor for QuestionCondition();
  v36 = swift_allocObject();
  *(v36 + 16) = 2;
  *(v36 + 24) = 0x44455050415254;
  *(v36 + 32) = 0xE700000000000000;
  *(v35 + 32) = v36;
  _s8SOSBuddy14OptionSelectedCMa_0();
  v37 = swift_allocObject();
  *(v37 + 16) = 0x5F44455050415254;
  *(v37 + 24) = 0xEA00000000004F4ELL;
  *(v35 + 40) = v37;
  v38 = swift_allocObject();
  strcpy((v38 + 16), "TRAPPED_UNSURE");
  *(v38 + 31) = -18;
  *(v35 + 48) = v38;
  type metadata accessor for OrCondition();
  v39 = swift_allocObject();
  *(v39 + 16) = 1;
  *(v39 + 24) = v35;
  v40 = _swiftEmptyArrayStorage;
  type metadata accessor for Question();
  v41 = swift_allocObject();
  v42 = v59;
  *(v41 + 72) = v58;
  *(v41 + 88) = v42;
  v43 = v61;
  *(v41 + 104) = v60;
  *(v41 + 16) = 0x4550595445524946;
  *(v41 + 24) = 0xE800000000000000;
  *(v41 + 32) = 0;
  *(v41 + 40) = v6;
  *(v41 + 48) = v39;
  *(v41 + 56) = _swiftEmptyArrayStorage;
  *(v41 + 64) = 8;
  *(v41 + 120) = v43;

  sub_1000B4E30(&v58, v57);
  v44 = sub_1000924D0(v6, &v58);
  *(v41 + 136) = v44;
  if (*(&v60 + 1))
  {
    v45 = v44;
    v57[0] = _swiftEmptyArrayStorage;
    v46 = *(v44 + 2);
    v47 = 0;
    v48 =  + 40;
LABEL_3:
    v49 = (v48 + 16 * v47);
    while (1)
    {
      if (v46 == v47)
      {

        goto LABEL_12;
      }

      if (v47 >= *(v45 + 2))
      {
        break;
      }

      ++v47;
      v50 = *v49;
      v49 += 16;
      if (v50 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v40 = v57[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v40 = v6;
LABEL_12:
    *(v41 + 144) = v40;
    v51 = *(&v61 + 1);
    if (*(&v61 + 1))
    {
      v52 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v52)
      {
        v53 = 0;
        v54 = v61;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v53 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v55 = *(v6 + 8 * v53 + 32);
          }

          v56 = *(v55 + 16) == v54 && v51 == *(v55 + 24);
          if (v56 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v53;

          if (v52 == v53)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v58);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v58);

        v55 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v58);
      v55 = 0;
    }

    *(v41 + 152) = v55;
  }
}

void sub_10023ED74()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2._countAndFlagsBits = 0xD000000000000022;
  v58._countAndFlagsBits = 0xD00000000000002CLL;
  v58._object = 0x80000001002A6540;
  v2._object = 0x80000001002A6A40;
  v3.value._countAndFlagsBits = 0x636E656772656D45;
  v3.value._object = 0xEE00796464754279;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v3, v1, v4, v58);

  v54 = v5;
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  *&v56 = _swiftEmptyArrayStorage;
  *(&v56 + 1) = 0;
  v57 = 0uLL;
  sub_1000040A8(&qword_1003681A0, qword_100281690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100281640;
  v7 = [v0 mainBundle];
  v59._object = 0x80000001002A6C00;
  v8._countAndFlagsBits = 0x6465646E61727453;
  v8._object = 0xE800000000000000;
  v9.value._countAndFlagsBits = 0x636E656772656D45;
  v9.value._object = 0xEE00796464754279;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v59._countAndFlagsBits = 0xD00000000000005CLL;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v59);

  type metadata accessor for OptionPresentation();
  v12 = swift_allocObject();
  v12[1] = v11;
  v12[3]._countAndFlagsBits = 0;
  v12[3]._object = 0;
  v12[4]._countAndFlagsBits = static Color.clear.getter();
  type metadata accessor for Option();
  v12[2]._countAndFlagsBits = 0;
  v12[2]._object = 0;
  v13 = swift_allocObject();
  *(v13 + 16) = 0xD000000000000010;
  *(v13 + 24) = 0x80000001002A6730;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  *(v13 + 48) = 40;
  *(v6 + 32) = v13;
  v14 = [v0 mainBundle];
  v60._object = 0x80000001002A6C00;
  v15._countAndFlagsBits = 0x64657070617254;
  v15._object = 0xE700000000000000;
  v16.value._countAndFlagsBits = 0x636E656772656D45;
  v16.value._object = 0xEE00796464754279;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v60._countAndFlagsBits = 0xD00000000000005CLL;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, v16, v14, v17, v60);

  v19 = swift_allocObject();
  v19[1] = v18;
  v19[3]._countAndFlagsBits = 0;
  v19[3]._object = 0;
  v19[4]._countAndFlagsBits = static Color.clear.getter();
  v19[2]._countAndFlagsBits = 0;
  v19[2]._object = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0x5F45505954524E53;
  *(v20 + 24) = 0xEF44455050415254;
  *(v20 + 32) = v19;
  *(v20 + 40) = 0;
  *(v20 + 48) = 40;
  *(v6 + 40) = v20;
  v21 = [v0 mainBundle];
  v61._object = 0x80000001002A6C00;
  v22._countAndFlagsBits = 1953722188;
  v22._object = 0xE400000000000000;
  v23.value._countAndFlagsBits = 0x636E656772656D45;
  v23.value._object = 0xEE00796464754279;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v61._countAndFlagsBits = 0xD00000000000005CLL;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v61);

  v26 = swift_allocObject();
  v26[1] = v25;
  v26[3]._countAndFlagsBits = 0;
  v26[3]._object = 0;
  v26[4]._countAndFlagsBits = static Color.clear.getter();
  v26[2]._countAndFlagsBits = 0;
  v26[2]._object = 0;
  v27 = swift_allocObject();
  strcpy((v27 + 16), "SNRTYPE_LOST");
  *(v27 + 29) = 0;
  *(v27 + 30) = -5120;
  *(v27 + 32) = v26;
  *(v27 + 40) = 0;
  *(v27 + 48) = 40;
  *(v6 + 48) = v27;
  v28 = [v0 mainBundle];
  v62._object = 0x800000010029B8F0;
  v29._countAndFlagsBits = 0x726568744FLL;
  v62._countAndFlagsBits = 0xD000000000000066;
  v29._object = 0xE500000000000000;
  v30.value._countAndFlagsBits = 0x636E656772656D45;
  v30.value._object = 0xEE00796464754279;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v29, v30, v28, v31, v62);

  v33 = swift_allocObject();
  v33[1] = v32;
  v34 = _swiftEmptyArrayStorage;
  v33[3]._countAndFlagsBits = 0;
  v33[3]._object = 0;
  v33[4]._countAndFlagsBits = static Color.clear.getter();
  v33[2]._countAndFlagsBits = 0;
  v33[2]._object = 0;
  v35 = swift_allocObject();
  strcpy((v35 + 16), "SNRTYPE_OTHER");
  *(v35 + 30) = -4864;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  *(v35 + 48) = 40;
  *(v6 + 56) = v35;
  type metadata accessor for QuestionCondition();
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0x52554A4E49524E53;
  *(v36 + 32) = 0xEA00000000004445;
  type metadata accessor for Question();
  v37 = swift_allocObject();
  v38 = v55;
  *(v37 + 72) = v54;
  *(v37 + 88) = v38;
  v39 = v57;
  *(v37 + 104) = v56;
  *(v37 + 16) = 0x45505954524E53;
  *(v37 + 24) = 0xE700000000000000;
  *(v37 + 32) = 0;
  *(v37 + 40) = v6;
  *(v37 + 48) = v36;
  *(v37 + 56) = _swiftEmptyArrayStorage;
  *(v37 + 64) = 8;
  *(v37 + 120) = v39;

  sub_1000B4E30(&v54, v53);
  v40 = sub_1000924D0(v6, &v54);
  *(v37 + 136) = v40;
  if (*(&v56 + 1))
  {
    v41 = v40;
    v53[0] = _swiftEmptyArrayStorage;
    v42 = *(v40 + 2);
    v43 = 0;
    v44 =  + 40;
LABEL_3:
    v45 = (v44 + 16 * v43);
    while (1)
    {
      if (v42 == v43)
      {

        goto LABEL_12;
      }

      if (v43 >= *(v41 + 2))
      {
        break;
      }

      ++v43;
      v46 = *v45;
      v45 += 16;
      if (v46 == 1)
      {

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v34 = v53[0];
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

    v34 = v6;
LABEL_12:
    *(v37 + 144) = v34;
    v47 = *(&v57 + 1);
    if (*(&v57 + 1))
    {
      v48 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
        v49 = 0;
        v50 = v57;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v49 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_31;
            }

            v51 = *(v6 + 8 * v49 + 32);
          }

          v52 = *(v51 + 16) == v50 && v47 == *(v51 + 24);
          if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v49;

          if (v48 == v49)
          {
            goto LABEL_27;
          }
        }

        sub_1000B4E8C(&v54);
      }

      else
      {
LABEL_27:
        sub_1000B4E8C(&v54);

        v51 = 0;
      }
    }

    else
    {

      sub_1000B4E8C(&v54);
      v51 = 0;
    }

    *(v37 + 152) = v51;
  }
}