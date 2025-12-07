void sub_10089900C(uint64_t *a2@<X8>)
{
  v3 = sub_100895F38();

  *a2 = v3;
}

uint64_t sub_10089904C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1008990A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void ActionList.init(_:lookup:resolver:excluding:)(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  v4 = a4;
  v37 = a3;
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v36 = a4;
    *&v38 = a2;
    v41 = _swiftEmptyArrayStorage;
    sub_100899EA0(0, v7, 0);
    v8 = _swiftEmptyArrayStorage;
    v9 = a1 + 32;
    do
    {
      sub_10000DD18(v9, v40);
      sub_10000DD18(v40, v39);
      sub_10010FC20(&qword_1011A7B50, &qword_100EEBAF0);
      v10 = String.init<A>(describing:)();
      v12 = String.components(wrappedToLineLength:bullet:)(80, 62, 0xE100000000000000, v10, v11);

      sub_10000959C(v40);
      v41 = v8;
      v14 = v8[2];
      v13 = v8[3];
      if (v14 >= v13 >> 1)
      {
        sub_100899EA0((v13 > 1), v14 + 1, 1);
        v8 = v41;
      }

      v8[2] = v14 + 1;
      v8[v14 + 4] = v12;
      v9 += 32;
      --v7;
    }

    while (v7);
    v5 = v38;
    v4 = v36;
  }

  v40[0] = v8;
  __chkstk_darwin();
  v35[2] = a1;
  v35[3] = v37;
  v35[4] = v4;
  v35[5] = v40;
  v36 = sub_1008995F0(sub_100899EC0, v35, v5);

  v35[7] = v40[0];
  v15 = Array<A>.asciiBoxed()(v40[0]);
  v17 = v15;
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v20 = (v15 + 40);
    v21 = &off_1011A6000;
    *&v16 = 136446210;
    v38 = v16;
    while (v19 < *(v17 + 2))
    {
      v22 = *(v20 - 1);
      v23 = *v20;
      v24 = v21[233];

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_1000060E4(v25, static Logger.actions);

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = v21;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v31 = v22;
        v32 = v17;
        v33 = v18;
        v34 = v30;
        v39[0] = v30;
        *v29 = v38;
        *(v29 + 4) = sub_100010678(v31, v23, v39);
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s", v29, 0xCu);
        sub_10000959C(v34);
        v18 = v33;
        v17 = v32;

        v21 = v28;
      }

      ++v19;
      v20 += 2;
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    sub_10000959C(v37);
  }
}

uint64_t sub_1008994A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char **a6@<X8>)
{
  v10 = *a1;
  v19 = _swiftEmptyArrayStorage;
  sub_100008FE4(a3, v18);
  v17[2] = &v19;
  v17[3] = a4;
  v17[4] = a2;
  v17[5] = v18;
  v11 = sub_10089972C(sub_10089AB00, v17, v10);
  if (!*(v11 + 2))
  {

    v11 = 0;
  }

  sub_10000959C(v18);
  v12 = v19;
  v13 = *a5;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v13;
  if ((result & 1) == 0)
  {
    result = sub_10089C2BC(0, v13[2] + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    result = sub_10089C2BC((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
    *a5 = result;
  }

  v13[2] = v16 + 1;
  v13[v16 + 4] = v12;
  *a6 = v11;
  return result;
}

char *sub_1008995F0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = (a3 + 32);
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10089C178(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_10089C178((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_10089972C(void (*a1)(__int128 *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = _swiftEmptyArrayStorage;
  v7 = (a3 + 32);
  while (1)
  {
    v8 = *v7++;
    v41[0] = v8;
    (a1)(&v32, v41, a2);
    if (v3)
    {
      break;
    }

    v31[6] = v38;
    v31[7] = v39;
    v31[8] = v40;
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[5] = v37;
    v31[0] = v32;
    v31[1] = v33;
    if (sub_10089AB20(v31) == 1)
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      sub_1000095E8(&v22, &qword_1011A7C08, &qword_100EEC0E0);
    }

    else
    {
      v28 = v38;
      v29 = v39;
      v30 = v40;
      v24 = v34;
      v25 = v35;
      v26 = v36;
      v27 = v37;
      v22 = v32;
      v23 = v33;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_10089C194(0, *(v6 + 2) + 1, 1, v6);
      }

      v10 = *(v6 + 2);
      v9 = *(v6 + 3);
      if (v10 >= v9 >> 1)
      {
        v6 = sub_10089C194((v9 > 1), v10 + 1, 1, v6);
      }

      v15 = v24;
      v16 = v25;
      v20 = v29;
      v21 = v30;
      v18 = v27;
      v19 = v28;
      v17 = v26;
      v13 = v22;
      v14 = v23;
      *(v6 + 2) = v10 + 1;
      v11 = &v6[144 * v10];
      *(v11 + 2) = v13;
      *(v11 + 5) = v16;
      *(v11 + 6) = v17;
      *(v11 + 3) = v14;
      *(v11 + 4) = v15;
      *(v11 + 9) = v20;
      *(v11 + 10) = v21;
      *(v11 + 7) = v18;
      *(v11 + 8) = v19;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

void *sub_10089993C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v32 = a2;
  sub_10010FC20(&qword_1011A7BF8, &qword_100EF3430);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for AttributedString();
  __chkstk_darwin();
  v31 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v29 = &v25 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return _swiftEmptyArrayStorage;
  }

  v14 = (a3 + 32);
  v15 = (v10 + 48);
  v28 = v10;
  v30 = (v10 + 32);
  v16 = _swiftEmptyArrayStorage;
  v26 = v8;
  v27 = a1;
  v25 = (v10 + 48);
  while (1)
  {
    v33 = *v14;
    a1(&v33, v11);
    if (v3)
    {
      break;
    }

    if ((*v15)(v7, 1, v8) == 1)
    {
      sub_1000095E8(v7, &qword_1011A7BF8, &qword_100EF3430);
    }

    else
    {
      v17 = v29;
      v18 = *v30;
      (*v30)(v29, v7, v8);
      v18(v31, v17, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_10089CDC0(0, v16[2] + 1, 1, v16);
      }

      v20 = v16[2];
      v19 = v16[3];
      v21 = v28;
      if (v20 >= v19 >> 1)
      {
        v23 = sub_10089CDC0((v19 > 1), v20 + 1, 1, v16);
        v21 = v28;
        v16 = v23;
      }

      v16[2] = v20 + 1;
      v22 = v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v20;
      v8 = v26;
      v18(v22, v31, v26);
      a1 = v27;
      v15 = v25;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

__n128 sub_100899C14@<Q0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a1;
  if ((1 << v6) & 0xF8FFFFD7FFE7FLL) != 0 || ((v20 = a3, ((1 << v6) & 0x700000000180) == 0) ? (LOBYTE(v28[0]) = 2, v21 = sub_100898600(), v22 = &type metadata for Feature.MediaPlayer) : (v21 = sub_100898654(), v22 = &type metadata for Feature.MusicKit), v23 = FeatureFlagsKey.isEnabled.getter(v22, v21), a3 = v20, (v23))
  {
    if (!sub_1009F9398(v6, a3))
    {
      sub_100008FE4(a5, v27);

      sub_100897BF4(v6, a4, v27, a2, v28);
      goto LABEL_7;
    }

    _StringGuts.grow(_:)(24);
    v11 = ActionType.rawValue.getter(v6);
    v13 = v12;

    *&v28[0] = v11;
    *(&v28[0] + 1) = v13;
    v14 = 0x8000000100E5A7D0;
    v15 = 0xD000000000000016;
  }

  else
  {
    if (qword_1011A70E8 != -1)
    {
      swift_once();
    }

    if (static DeviceCapabilities.isInternalInstall != 1)
    {
      goto LABEL_5;
    }

    _StringGuts.grow(_:)(32);
    v24 = ActionType.rawValue.getter(v6);
    v26 = v25;

    *&v28[0] = v24;
    *(&v28[0] + 1) = v26;
    v15 = 0xD00000000000001ELL;
    v14 = 0x8000000100E5A7B0;
  }

  String.append(_:)(*&v15);
  Array<A>.appendStringComponents(_:lineLength:bullet:)(*&v28[0], *(&v28[0] + 1), 80, 120, 0xE100000000000000);

LABEL_5:
  sub_1008985E4(v28);
LABEL_7:
  v16 = v28[7];
  *(a6 + 96) = v28[6];
  *(a6 + 112) = v16;
  *(a6 + 128) = v28[8];
  v17 = v28[3];
  *(a6 + 32) = v28[2];
  *(a6 + 48) = v17;
  v18 = v28[5];
  *(a6 + 64) = v28[4];
  *(a6 + 80) = v18;
  result = v28[1];
  *a6 = v28[0];
  *(a6 + 16) = result;
  return result;
}

void *sub_100899E80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100899EA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100899F00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A374(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100899F20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A49C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100899F40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A5D8(a1, a2, a3, *v3, &unk_1011ACA30, &unk_100EEC4D0, &qword_1011ACA60, &qword_100EF6ED0);
  *v3 = result;
  return result;
}

char *sub_100899F80(char *a1, int64_t a2, char a3)
{
  result = sub_10066EBA8(a1, a2, a3, *v3, &qword_1011A7BE8, &qword_100EEC0D0);
  *v3 = result;
  return result;
}

void *sub_100899FB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A5D8(a1, a2, a3, *v3, &qword_1011A7BE0, &qword_100EEC0C8, &qword_1011AD9E0, &unk_100EF82B0);
  *v3 = result;
  return result;
}

char *sub_100899FF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A720(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10089A010(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A824(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10089A030(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10089A928(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10089A050(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011A77F8, &unk_100EEC510);
  v10 = *(sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_10089A240(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011A7C10, &qword_100EEC0E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089A374(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_1011A7E80, &unk_100EEC4F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089A49C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10089A5D8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10010FC20(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10089A720(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7BC8, &qword_100EEC0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10089A824(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7BD8, &qword_100EEC0C0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_10089A928(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011A7BC0, &qword_100EEC0B0);
  v10 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for SharePlayTogetherSession.Participant(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10089AB20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ActionType.isHidden.getter(char a1)
{
  if (((1 << a1) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    return 0;
  }

  if (((1 << a1) & 0x700000000180) != 0)
  {
    v2 = sub_100898654();
    v3 = &type metadata for Feature.MusicKit;
  }

  else
  {
    v2 = sub_100898600();
    v3 = &type metadata for Feature.MediaPlayer;
  }

  return (FeatureFlagsKey.isEnabled.getter(v3, v2) ^ 1) & 1;
}

uint64_t sub_10089ABE8(char a1)
{
  result = 0x6C6576654C706F74;
  switch(a1)
  {
    case 1:
      result = 0x7463416B63697571;
      break;
    case 2:
      result = 7368564;
      break;
    case 3:
      result = 0x7972617262696CLL;
      break;
    case 4:
    case 11:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0x6574736174;
      break;
    case 8:
      result = 0x6E6974726F706572;
      break;
    case 9:
      result = 0x6F697463416E6970;
      break;
    case 10:
      result = 0x7463757274736564;
      break;
    case 12:
      result = 1867804519;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MenuType.title.getter(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  if (a1 == 9)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (qword_1011A6740 == -1)
    {
      goto LABEL_7;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  if (a1 != 12 && a1 != 11)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (qword_1011A6740 != -1)
  {
    goto LABEL_10;
  }

LABEL_7:
  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

id MenuType.image.getter(char a1)
{
  if (a1 != 9 && a1 != 12 && a1 != 11)
  {
    return 0;
  }

  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() systemImageNamed:v1];

  return v2;
}

uint64_t MenuType.style.getter(char a1)
{
  switch(a1)
  {
    case 11:
      goto LABEL_6;
    default:
      v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v1)
      {
        goto LABEL_3;
      }

      v3 = MenuType.description.getter();
      v5 = v4;
      if (v3 == 1867804519 && v4 == 0xE400000000000000)
      {
        goto LABEL_6;
      }

      v7 = v3;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
LABEL_3:
        v2 = 1;
      }

      else if (v7 == 0x6F697463416E6970 && v5 == 0xE90000000000006ELL)
      {
LABEL_6:

        v2 = 1;
      }

      else
      {
        v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      return v2 & 1;
  }
}

UIMenuElementSize __swiftcall MenuType.size(for:)(Swift::Int a1)
{
  switch(v1)
  {
    case 1:

      if (a1 <= 1)
      {
        return 2;
      }

      return 1;
    default:
      v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v3 & 1) != 0 && a1 > 1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
  }
}

unint64_t sub_10089B554@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10089B584@<X0>(uint64_t *a1@<X8>)
{
  result = MenuType.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void ActionType.mutuallyExclusiveActions.getter(unsigned __int8 a1)
{
  if (a1 <= 0x18u)
  {
    if (a1 > 7u)
    {
      switch(a1)
      {
        case 8u:
          v1 = &off_1010C5858;
          break;
        case 0x17u:
          v1 = &off_1010C58D0;
          break;
        case 0x18u:
          v1 = &off_1010C58F8;
          break;
        default:
          return;
      }
    }

    else
    {
      switch(a1)
      {
        case 2u:
          v1 = &off_1010C5948;
          break;
        case 3u:
          v1 = &off_1010C5970;
          break;
        case 7u:
          v1 = &off_1010C5830;
          break;
        default:
          return;
      }
    }

    goto LABEL_27;
  }

  if (a1 <= 0x2Fu)
  {
    switch(a1)
    {
      case 0x19u:
        v1 = &off_1010C5920;
        break;
      case 0x24u:
        v1 = &off_1010C5998;
        break;
      case 0x25u:
        v1 = &off_1010C59C0;
        break;
      default:
        return;
    }

    goto LABEL_27;
  }

  if (a1 == 48)
  {
    v1 = &off_1010C58A8;
LABEL_27:
    sub_10089D784(v1);
    return;
  }

  if (a1 == 49)
  {
    v1 = &off_1010C5880;
    goto LABEL_27;
  }
}

uint64_t ActionType.rawValue.getter(char a1)
{
  result = 0x62694C6F54646461;
  switch(a1)
  {
    case 1:
      return 0x64616F6C6E776F64;
    case 2:
      return 0x657469726F766166;
    case 3:
      return 0x6F7661466F646E75;
    case 4:
      return 0x6572616873;
    case 5:
      return 2036427888;
    case 6:
      return 0x656C6666756873;
    case 7:
      return 7235952;
    case 8:
      return 0x6E69706E75;
    case 9:
      return 0x6C50657461657263;
    case 10:
      v3 = 1634038371;
      goto LABEL_34;
    case 11:
      return 0x616C506F54646461;
    case 12:
      return 0x7473696C79616C70;
    case 13:
      return 0x726F62616C6C6F63;
    case 14:
    case 41:
      return 0xD000000000000015;
    case 15:
      return 0xD000000000000011;
    case 16:
    case 29:
    case 47:
      return 0xD000000000000012;
    case 17:
      return 0xD000000000000011;
    case 18:
    case 46:
      return 0xD000000000000017;
    case 19:
      v4 = 0x656D616E6572;
      goto LABEL_42;
    case 20:
      v4 = 0x6F5465766F6DLL;
      goto LABEL_42;
    case 21:
      return 0x766F4D6575657571;
    case 22:
      return 0x7478654E79616C70;
    case 23:
      return 0x6575516F54646461;
    case 24:
      return 0x7473614C79616C70;
    case 25:
      return 0x6574664179616C70;
    case 26:
      return 0xD000000000000010;
    case 27:
      return 0x7453657461657263;
    case 28:
      return 0x79616C506F546F67;
    case 30:
      return 0x75626C416F546F67;
    case 31:
      return 0x697472416F546F67;
    case 32:
      v5 = 2003789939;
      goto LABEL_48;
    case 33:
      return 0x6C6C754677656976;
    case 34:
      return 0x72794C6572616873;
    case 35:
      return 0x6C436E496E65706FLL;
    case 36:
      return 0x4C74736567677573;
    case 37:
      return 0x676775536F646E75;
    case 38:
      v5 = 1702125938;
LABEL_48:
      result = v5 | 0x676E6F5300000000;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 40:
    case 42:
    case 44:
      result = 0xD000000000000013;
      break;
    case 43:
      result = 0xD00000000000001BLL;
      break;
    case 45:
      result = 0xD000000000000016;
      break;
    case 48:
      result = 0x6F4465766F6D6572;
      break;
    case 49:
      result = 0xD000000000000011;
      break;
    case 50:
      v3 = 1701602660;
LABEL_34:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
LABEL_42:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F46000000000000;
      break;
    case 51:
      result = 0x65766F6D6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10089BD0C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

unint64_t sub_10089BDA0@<X0>(Swift::String *a1@<X0>, MusicCore::ActionType_optional *a2@<X8>)
{
  result = _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10089BDD0@<X0>(uint64_t *a1@<X8>)
{
  result = ActionType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int sub_10089BE24(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_10089BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  String.hash(into:)();

  return result;
}

Swift::Int sub_10089BF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10089BF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_10089C2E0(isUniquelyReferenced_nonNull_native, v9, 1, v3, &qword_1011A7C18, &qword_100EEC0F0, &type metadata for ActionLookup.Group);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t static ActionLookupBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_10010FC20(&qword_1011A7C18, &qword_100EEC0F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 32) = a1;

  return v2;
}

void *static ActionLookupBuilder.buildOptional(_:)(void *a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  return v1;
}

char *sub_10089C194(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7D88, &qword_100EEC528);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089C2E0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    sub_10010FC20(a5, a6);
    v13 = swift_allocObject();
    v14 = j__malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10089C3EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7D70, &unk_100EEC500);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10089C4F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_1011AAAB0, &unk_100EF3570);
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

char *sub_10089C604(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&unk_1011A7E80, &unk_100EEC4F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089C72C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089C854(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7C50, &unk_100EEC390);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_10089C9A8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011A7D28, &qword_100EFCA50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for ICURLBagKey(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089CAD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7C00, &qword_100EEC4A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10089CC68(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011A7D48, &unk_100EEC4B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10089CE0C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011A7D08, &qword_100EEC458);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089CF88(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7BC8, &qword_100EEC0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10089D08C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7CA8, &qword_100EEC400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10089D1B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7BD8, &qword_100EEC0C0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

void *sub_10089D304(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_10089D4E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7C90, &qword_100EEC3E0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10089D634(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011A7C68, &qword_100EEC3B8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

unint64_t _s9MusicCore8MenuTypeO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C56A8, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

void sub_10089D784(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A7D78, &qword_100EF5920);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    while (1)
    {
      v6 = *(v25 + v4);
      Hasher.init(_seed:)();
      v7 = ActionType.rawValue.getter(v6);
      v9 = v8;
      String.hash(into:)();

      v10 = Hasher._finalize()();
      v11 = -1 << *(v3 + 32);
      v12 = v10 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v23 = v6;
        v16 = ~v11;
        do
        {
          if (ActionType.rawValue.getter(*(*(v3 + 48) + v12)) == v7 && v17 == v9)
          {

            goto LABEL_4;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_4;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while (((1 << v12) & v14) != 0);
        v6 = v23;
      }

      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + v12) = v6;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        break;
      }

      *(v3 + 16) = v22;
LABEL_4:
      if (++v4 == v24)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t _s9MusicCore10ActionTypeO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x34)
  {
    return 52;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_10089D9C4()
{
  result = qword_1011A7C30;
  if (!qword_1011A7C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7C30);
  }

  return result;
}

unint64_t sub_10089DA4C()
{
  result = qword_1011A7C48;
  if (!qword_1011A7C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7C48);
  }

  return result;
}

uint64_t _s4MenuV10IdentifierOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s4MenuV10IdentifierOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCD)
  {
    goto LABEL_17;
  }

  if (a2 + 51 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 51) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 51;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 51;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 51;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x34;
  v8 = v6 - 52;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 51 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 51) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCD)
  {
    v4 = 0;
  }

  if (a2 > 0xCC)
  {
    v5 = ((a2 - 205) >> 8) + 1;
    *result = a2 + 51;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 51;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10089DD70(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&qword_1011A7CF0, &qword_100EEC450);
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
    sub_10089ED88(&qword_1011A7CF8, &protocol conformance descriptor for AnyCancellable);
    v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << v3[32];
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_10089ED88(&qword_1011A7D00, &protocol conformance descriptor for AnyCancellable);
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

void sub_10089DFDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A7CE8, &qword_100EEC448);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v21 = v1;
    v22 = a1 + 32;
    while (1)
    {
      v6 = *(v22 + v4++);
      Hasher.init(_seed:)();
      String.hash(into:)();

      v7 = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v9))
          {
            if (*(*(v3 + 48) + v9) == 1)
            {
              v13 = 0x657469726F766166;
            }

            else
            {
              v13 = 0x64616F6C6E776F64;
            }

            v14 = 0xE900000000000073;
            if (!v6)
            {
LABEL_10:
              v15 = 0xE300000000000000;
              if (v13 != 7105633)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }
          }

          else
          {
            v14 = 0xE300000000000000;
            v13 = 7105633;
            if (!v6)
            {
              goto LABEL_10;
            }
          }

          if (v6 == 1)
          {
            v16 = 0x657469726F766166;
          }

          else
          {
            v16 = 0x64616F6C6E776F64;
          }

          v15 = 0xE900000000000073;
          if (v13 != v16)
          {
            goto LABEL_19;
          }

LABEL_18:
          if (v14 == v15)
          {

            goto LABEL_4;
          }

LABEL_19:
          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
        }

        while ((v11 & (1 << v9)) != 0);
      }

      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        break;
      }

      *(v3 + 16) = v20;
LABEL_4:
      if (v4 == v21)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_10089E24C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A7CD8, &unk_100EEC430);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v22 = a1 + 32;
    do
    {
      v23 = v4;
      v6 = *(v22 + v4);
      Hasher.init(_seed:)();
      Library.Menu.Identifier.rawValue.getter(v6);
      String.hash(into:)();

      v7 = Hasher._finalize()();
      v8 = ~(-1 << *(v3 + 32));
      v9 = v7 & v8;
      v10 = (v7 & v8) >> 6;
      v11 = *(v5 + 8 * v10);
      v12 = 1 << (v7 & v8);
      if ((v12 & v11) != 0)
      {
        while (1)
        {
          v13 = 0xD000000000000029;
          v14 = "nt";
          switch(*(*(v3 + 48) + v9))
          {
            case 1:
              v13 = 0xD000000000000025;
              v14 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v13 = 0xD000000000000023;
              v14 = "LibraryView.Playlists";
              break;
            case 3:
              v13 = 0xD000000000000022;
              v14 = "LibraryView.Artists";
              break;
            case 4:
              v13 = 0xD000000000000021;
              v14 = "LibraryView.Albums";
              break;
            case 5:
              v13 = 0xD000000000000026;
              v14 = "LibraryView.Songs";
              break;
            case 6:
              v13 = 0xD000000000000027;
              v14 = "LibraryView.MadeForYou";
              break;
            case 7:
              v13 = 0xD000000000000022;
              v14 = "LibraryView.MusicVideos";
              break;
            case 8:
              v13 = 0xD000000000000028;
              v14 = "LibraryView.Genres";
              break;
            case 9:
              v13 = 0xD000000000000025;
              v14 = "LibraryView.Compilations";
              break;
            case 0xA:
              v13 = 0xD000000000000021;
              v14 = "LibraryView.Composers";
              break;
            case 0xB:
              v13 = 0xD000000000000026;
              v14 = "LibraryView.Shows";
              break;
            case 0xC:
              v13 = 0xD000000000000027;
              v14 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          v15 = v14 | 0x8000000000000000;
          v16 = 0xD000000000000029;
          v17 = "nt";
          switch(v6)
          {
            case 1:
              v16 = 0xD000000000000025;
              v17 = "LibraryView.RecentlyAdded";
              break;
            case 2:
              v16 = 0xD000000000000023;
              v17 = "LibraryView.Playlists";
              break;
            case 3:
              v16 = 0xD000000000000022;
              v17 = "LibraryView.Artists";
              break;
            case 4:
              v16 = 0xD000000000000021;
              v17 = "LibraryView.Albums";
              break;
            case 5:
              v16 = 0xD000000000000026;
              v17 = "LibraryView.Songs";
              break;
            case 6:
              v16 = 0xD000000000000027;
              v17 = "LibraryView.MadeForYou";
              break;
            case 7:
              v16 = 0xD000000000000022;
              v17 = "LibraryView.MusicVideos";
              break;
            case 8:
              v16 = 0xD000000000000028;
              v17 = "LibraryView.Genres";
              break;
            case 9:
              v16 = 0xD000000000000025;
              v17 = "LibraryView.Compilations";
              break;
            case 10:
              v16 = 0xD000000000000021;
              v17 = "LibraryView.Composers";
              break;
            case 11:
              v16 = 0xD000000000000026;
              v17 = "LibraryView.Shows";
              break;
            case 12:
              v16 = 0xD000000000000027;
              v17 = "LibraryView.Downloaded";
              break;
            default:
              break;
          }

          if (v13 == v16 && v15 == (v17 | 0x8000000000000000))
          {
            break;
          }

          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v18)
          {
            goto LABEL_4;
          }

          v9 = (v9 + 1) & v8;
          v10 = v9 >> 6;
          v11 = *(v5 + 8 * (v9 >> 6));
          v12 = 1 << v9;
          if ((v11 & (1 << v9)) == 0)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_36:
        *(v5 + 8 * v10) = v11 | v12;
        *(*(v3 + 48) + v9) = v6;
        v19 = *(v3 + 16);
        v20 = __OFADD__(v19, 1);
        v21 = v19 + 1;
        if (v20)
        {
          __break(1u);
          return;
        }

        *(v3 + 16) = v21;
      }

LABEL_4:
      v4 = v23 + 1;
    }

    while (v23 + 1 != v1);
  }
}

Swift::Int sub_10089E644(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011A7CC8, &qword_100EEC420);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v20 = a1 + 32;
    while (1)
    {
      v6 = *(v20 + v4);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v8 = -1 << *(v3 + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) != 0)
      {
        break;
      }

LABEL_21:
      *(v5 + 8 * v10) = v11 | v12;
      *(*(v3 + 48) + v9) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v19;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v13 = ~v8;
    while (1)
    {
      v14 = *(*(v3 + 48) + v9);
      v15 = v14 >> 6;
      if (v14 >> 6 > 1)
      {
        if (v15 != 2 && v14 == 192 && v6 == 192)
        {
          goto LABEL_3;
        }
      }

      else if (v15)
      {
        if (v6 >> 6 == 1)
        {
          if (((v14 ^ v6) & 0x3F) == 0)
          {
            goto LABEL_3;
          }

          goto LABEL_7;
        }
      }

      else if (v6 < 0x40)
      {
        if (((v14 ^ v6) & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_7;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();

      v16 = Hasher._finalize()();
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      if (v16 == result)
      {
        goto LABEL_3;
      }

LABEL_7:
      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v5 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if ((v11 & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_10089ED88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnyCancellable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void ActionList.menu.getter(uint64_t a1)
{
  v69 = _swiftEmptyArrayStorage;
  v1 = *(a1 + 16);
  if (!v1)
  {
    v54 = _swiftEmptyArrayStorage;
    goto LABEL_47;
  }

  v2 = 0;
  v57 = *(a1 + 16);
  v58 = a1 + 32;
  v54 = _swiftEmptyArrayStorage;
LABEL_3:
  v3 = v2;
  do
  {
    if (v3 >= v1)
    {
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_53;
    }

    v4 = *(v58 + 8 * v3);
    v68 = _swiftEmptyArrayStorage;
    v5 = *(v4 + 16);

    v62 = v5;
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 32;
      v8 = _swiftEmptyArrayStorage;
      v61 = v2;
      v63 = v4;
      v56 = v4 + 32;
      while (1)
      {
        v59 = v8;
        v9 = v62 - v6;
        v10 = (v7 + 144 * v6);
        while (1)
        {
          if (v6 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_52;
          }

          v70 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          v73 = v10[3];
          v74 = v13;
          v71 = v11;
          v72 = v12;
          v14 = v10[5];
          v15 = v10[6];
          v16 = v10[8];
          v77 = v10[7];
          v78 = v16;
          v75 = v14;
          v76 = v15;
          v17 = *(v10 + 56);
          v18 = *(v10 + 40);
          v80 = *(v10 + 24);
          v81 = v18;
          v82 = v17;
          v19 = *(&v80 + 1);
          if (*(&v80 + 1) == 1)
          {
            goto LABEL_9;
          }

          v20 = v75;
          if (!v75)
          {
            __break(1u);
            return;
          }

          v64 = v9;
          v21 = v80;
          v22 = v81;
          v23 = v82;
          v24 = BYTE8(v82);
          sub_1008983A4(&v70, &v66);
          v25 = sub_1000089F8(&v80, &v66, &qword_1011A7B58, &qword_100EEBAF8);
          v26 = v20(v25);
          if (v27 == 1)
          {
            break;
          }

          sub_10089840C(v26, v27);
          sub_1008983DC(&v70);
          v83[0] = v21;
          v83[1] = v19;
          sub_1000095E8(v83, &unk_1011ACB70, &qword_100EEEF60);
          v84 = v22;
          sub_1000095E8(&v84, &unk_1011ACB70, &qword_100EEEF60);
          v85 = v23;
          sub_1000095E8(&v85, &qword_1011A7DA0, &qword_100EEC788);
          v4 = v63;
          v9 = v64;
LABEL_9:
          v10 += 9;
          ++v6;
          if (!--v9)
          {
            v1 = v57;
            v8 = v59;
            v2 = v61;
            goto LABEL_36;
          }
        }

        v60 = v21;
        v28 = *(&v74 + 1);
        v79 = *(&v74 + 1);
        v55 = v19;
        if (*(&v74 + 1))
        {
          v2 = v61;
          v29 = v23;
          goto LABEL_29;
        }

        if (v24)
        {
          if ((v24 & 2) == 0)
          {
            v30 = 1;
            if ((v24 & 4) == 0)
            {
              goto LABEL_28;
            }

            goto LABEL_27;
          }

          v30 = 3;
          if ((v24 & 4) != 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if ((v24 & 2) != 0)
          {
            v30 = 2;
            if ((v24 & 4) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v30 = 0;
            if ((v24 & 4) == 0)
            {
              goto LABEL_28;
            }
          }

LABEL_27:
          v30 |= 4uLL;
        }

LABEL_28:
        sub_100009F78(0, &qword_1011A7D90, UIAction_ptr);
        v31 = swift_allocObject();
        v32 = v77;
        v31[7] = v76;
        v31[8] = v32;
        v31[9] = v78;
        v33 = v73;
        v31[3] = v72;
        v31[4] = v33;
        v34 = v75;
        v31[5] = v74;
        v31[6] = v34;
        v35 = v71;
        v31[1] = v70;
        v31[2] = v35;
        sub_1008983A4(&v70, &v66);
        v29 = v23;
        v36 = v23;

        v53._rawValue = v30;
        v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        v2 = v61;
LABEL_29:
        v66 = 0x2E736E6F69746341;
        v67 = 0xE800000000000000;
        v37 = ActionType.rawValue.getter(v70);
        v39 = v38;
        sub_1000089F8(&v79, v65, &qword_1011A7D98, &qword_100EEC780);
        v40 = v28;
        v41._countAndFlagsBits = v37;
        v41._object = v39;
        String.append(_:)(v41);

        v43 = v66;
        v42 = v67;
        if (qword_1011A6B58 != -1)
        {
          swift_once();
        }

        v66 = qword_1011AFC00;
        v67 = *algn_1011AFC08;

        v44._countAndFlagsBits = 46;
        v44._object = 0xE100000000000000;
        String.append(_:)(v44);

        v45._countAndFlagsBits = v43;
        v45._object = v42;
        String.append(_:)(v45);

        v46 = String._bridgeToObjectiveC()();

        [v40 setAccessibilityIdentifier:v46];
        sub_1008983DC(&v70);

        v86[0] = v60;
        v86[1] = v55;
        sub_1000095E8(v86, &unk_1011ACB70, &qword_100EEEF60);
        v87 = v22;
        sub_1000095E8(&v87, &unk_1011ACB70, &qword_100EEEF60);
        v88 = v29;
        sub_1000095E8(&v88, &qword_1011A7DA0, &qword_100EEC788);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v6;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v8 = v68;
        v4 = v63;
        v7 = v56;
        v1 = v57;
        if (v64 == 1)
        {
LABEL_36:
          if (v8 >> 62)
          {
            goto LABEL_41;
          }

LABEL_37:
          if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
          {
            goto LABEL_38;
          }

LABEL_42:
          preferredElementSize = v8;
          sub_100009F78(0, &qword_1011A7DA8, UIMenu_ptr);
          v50._countAndFlagsBits = 0;
          v50._object = 0xE000000000000000;
          v89.value.super.isa = 0;
          v89.is_nil = 0;
          UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v50, 0, v89, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v53);

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v54 = v69;
          if (v2 == v1)
          {
            goto LABEL_47;
          }

          goto LABEL_3;
        }
      }
    }

    v8 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_37;
    }

LABEL_41:
    v47 = v8;
    v48 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v47;
    if (v48 > 0)
    {
      goto LABEL_42;
    }

LABEL_38:

    v3 = v2;
  }

  while (v2 != v1);
LABEL_47:
  if (!(v54 >> 62))
  {
    if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &qword_1011A7DB0, UIMenuElement_ptr);
      v51 = v54;
LABEL_50:

      sub_100009F78(0, &qword_1011A7DA8, UIMenu_ptr);
      v52._countAndFlagsBits = 0;
      v52._object = 0xE000000000000000;
      v90.value.super.isa = 0;
      v90.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v52, 0, v90, 0, 0xFFFFFFFFFFFFFFFFLL, v51, v53);
      return;
    }

    goto LABEL_56;
  }

LABEL_54:
  if (_CocoaArrayWrapper.endIndex.getter() > 0)
  {
    sub_100009F78(0, &qword_1011A7DB0, UIMenuElement_ptr);

    v51 = _bridgeCocoaArray<A>(_:)();

    goto LABEL_50;
  }

LABEL_56:
}

Class ActionGroup.menu.getter(Class result)
{
  preferredElementSize = _swiftEmptyArrayStorage;
  v45 = _swiftEmptyArrayStorage;
  v2 = *(result + 2);
  if (!v2)
  {
    goto LABEL_30;
  }

  v3 = 0;
  v4 = result + 32;
  v39 = result + 32;
  v41 = *(result + 2);
  do
  {
    v40 = preferredElementSize;
    v5 = &v4[144 * v3];
    v6 = v3;
    while (1)
    {
      if (v6 >= v2)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v7 = *(v5 + 7);
      v52 = *(v5 + 6);
      v53 = v7;
      v54 = *(v5 + 8);
      v8 = *(v5 + 3);
      v48 = *(v5 + 2);
      v49 = v8;
      v9 = *(v5 + 5);
      v50 = *(v5 + 4);
      v51 = v9;
      v10 = *(v5 + 1);
      v46 = *v5;
      v47 = v10;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_34;
      }

      if (v48 != 1)
      {
        break;
      }

LABEL_4:
      ++v6;
      v5 += 144;
      if (v11 == v2)
      {
        preferredElementSize = v40;
        goto LABEL_30;
      }
    }

    v12 = v51;
    if (!v51)
    {
      __break(1u);
      return result;
    }

    v14 = *(&v49 + 1);
    v13 = v50;
    sub_1008983A4(&v46, &v43);
    preferredElementSize = v14;

    v16 = v12(v15);
    if (v17 != 1)
    {
      sub_10089840C(v16, v17);

      result = sub_1008983DC(&v46);
      v2 = v41;
      v11 = v6 + 1;
      goto LABEL_4;
    }

    v18 = *(&v50 + 1);
    v55 = *(&v50 + 1);
    if (*(&v50 + 1))
    {
      v2 = v41;
      v3 = v6 + 1;
      v19 = preferredElementSize;
    }

    else
    {
      v3 = v6 + 1;
      if (v13)
      {
        v2 = v41;
        v19 = preferredElementSize;
        if ((v13 & 2) != 0)
        {
          v20 = 3;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v2 = v41;
        v19 = preferredElementSize;
        if ((v13 & 2) != 0)
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }
      }

      if ((v13 & 4) != 0)
      {
        v20 |= 4uLL;
      }

      sub_100009F78(0, &qword_1011A7D90, UIAction_ptr);
      v21 = swift_allocObject();
      v22 = v53;
      v21[7] = v52;
      v21[8] = v22;
      v21[9] = v54;
      v23 = v49;
      v21[3] = v48;
      v21[4] = v23;
      v24 = v51;
      v21[5] = v50;
      v21[6] = v24;
      v25 = v47;
      v21[1] = v46;
      v21[2] = v25;
      sub_1008983A4(&v46, &v43);

      v26 = v19;
      v38._rawValue = v20;
      v18 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    }

    v43 = 0x2E736E6F69746341;
    v44 = 0xE800000000000000;
    v27 = ActionType.rawValue.getter(v46);
    v29 = v28;
    sub_1000089F8(&v55, v42, &qword_1011A7D98, &qword_100EEC780);
    v30 = v18;
    v31._countAndFlagsBits = v27;
    v31._object = v29;
    String.append(_:)(v31);

    v33 = v43;
    v32 = v44;
    if (qword_1011A6B58 != -1)
    {
      swift_once();
    }

    v43 = qword_1011AFC00;
    v44 = *algn_1011AFC08;

    v34._countAndFlagsBits = 46;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);

    v35._countAndFlagsBits = v33;
    v35._object = v32;
    String.append(_:)(v35);

    v36 = String._bridgeToObjectiveC()();

    [v30 setAccessibilityIdentifier:v36];

    sub_1008983DC(&v46);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    preferredElementSize = v45;
    v4 = v39;
  }

  while (v3 != v2);
LABEL_30:
  if (preferredElementSize >> 62)
  {
LABEL_35:
    if (_CocoaArrayWrapper.endIndex.getter() <= 0)
    {
      goto LABEL_36;
    }

LABEL_32:
    sub_100009F78(0, &qword_1011A7DA8, UIMenu_ptr);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    v56.value.super.isa = 0;
    v56.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v37, 0, v56, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v38).super.super.isa;
  }

  else
  {
    if (*((preferredElementSize & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
    {
      goto LABEL_32;
    }

LABEL_36:

    return 0;
  }
}

id ActionList.contextMenuConfiguration(identifier:previewProvider:)(uint64_t a1, void *(*a2)(), uint64_t a3, uint64_t a4)
{
  ActionList.menu.getter(a4);
  v8 = v7;
  if (v7)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v10 = objc_opt_self();
    v18 = a2;
    v19 = a3;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_100747E6C;
    v17 = &unk_1010CA058;
    v11 = _Block_copy(&v14);
    swift_unknownObjectRetain();
    swift_retain_n();

    v18 = NowPlaying.TrackMetadata.underlyingItem.getter;
    v19 = v9;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1008A0494;
    v17 = &unk_1010CA080;
    v12 = _Block_copy(&v14);

    v8 = [v10 configurationWithIdentifier:a1 previewProvider:v11 actionProvider:v12];
    swift_unknownObjectRelease();

    _Block_release(v12);
    _Block_release(v11);
  }

  return v8;
}

void AnyAction.menuElement.getter()
{
  if (*(v0 + 32) != 1)
  {
    v1 = v0;
    v2 = *(v0 + 80);
    if (v2)
    {
      v3 = *(v0 + 56);

      v5 = v2(v4);
      if (v6 == 1)
      {
        v7 = *(v0 + 72);
        v27 = v7;
        if (!v7)
        {
          sub_100009F78(0, &qword_1011A7D90, UIAction_ptr);
          v8 = swift_allocObject();
          v9 = *(v1 + 112);
          v8[7] = *(v1 + 96);
          v8[8] = v9;
          v8[9] = *(v1 + 128);
          v10 = *(v1 + 48);
          v8[3] = *(v1 + 32);
          v8[4] = v10;
          v11 = *(v1 + 80);
          v8[5] = *(v1 + 64);
          v8[6] = v11;
          v12 = *(v1 + 16);
          v8[1] = *v1;
          v8[2] = v12;

          v13 = v3;
          sub_1008983A4(v1, &v25);
          v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        }

        v25 = 0x2E736E6F69746341;
        v26 = 0xE800000000000000;
        v14 = ActionType.rawValue.getter(*v1);
        v16 = v15;
        sub_1000089F8(&v27, v24, &qword_1011A7D98, &qword_100EEC780);
        v17 = v7;
        v18._countAndFlagsBits = v14;
        v18._object = v16;
        String.append(_:)(v18);

        v20 = v25;
        v19 = v26;
        if (qword_1011A6B58 != -1)
        {
          swift_once();
        }

        v25 = qword_1011AFC00;
        v26 = *algn_1011AFC08;

        v21._countAndFlagsBits = 46;
        v21._object = 0xE100000000000000;
        String.append(_:)(v21);

        v22._countAndFlagsBits = v20;
        v22._object = v19;
        String.append(_:)(v22);

        v23 = String._bridgeToObjectiveC()();

        [v17 setAccessibilityIdentifier:v23];
      }

      else
      {
        sub_10089840C(v5, v6);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_10089FEFC(uint64_t a1, _OWORD *a2)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v4 = &v13[-v3];
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  type metadata accessor for MainActor();
  sub_1008983A4(a2, v13);
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = &protocol witness table for MainActor;
  v8 = a2[7];
  *(v7 + 128) = a2[6];
  *(v7 + 144) = v8;
  *(v7 + 160) = a2[8];
  v9 = a2[3];
  *(v7 + 64) = a2[2];
  *(v7 + 80) = v9;
  v10 = a2[5];
  *(v7 + 96) = a2[4];
  *(v7 + 112) = v10;
  v11 = a2[1];
  *(v7 + 32) = *a2;
  *(v7 + 48) = v11;
  sub_100969440(0, 0, v4, &unk_100EEC7A0, v7);

  return result;
}

uint64_t sub_1008A004C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a4;
  v4[22] = type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v5 = swift_task_alloc();
  v4[24] = v5;
  *v5 = v4;
  v5[1] = sub_1008A0100;

  return AnyAction.execute()();
}

uint64_t sub_1008A0100()
{
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_1008A025C;
  }

  else
  {
    v4 = sub_1003ED758;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1008A025C()
{
  v18 = v0;

  if (qword_1011A6748 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = type metadata accessor for Logger();
  sub_1000060E4(v2, static Logger.actions);
  sub_1008983A4(v1, (v0 + 2));
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  sub_1008983DC(v1);

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  if (v5)
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = ActionType.rawValue.getter(*v7);
    v11 = sub_100010678(v9, v10, &v17);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v0[20] = v6;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v12 = String.init<A>(describing:)();
    v14 = sub_100010678(v12, v13, &v17);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Action %{public}s failed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

id sub_1008A0494(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_100009F78(0, &qword_1011A7DB0, UIMenuElement_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = v2(v3);

  return v4;
}

uint64_t sub_1008A0524()
{

  if (*(v0 + 48) != 1)
  {
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  if (*(v0 + 144))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1008A05C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002F3F4;

  return sub_1008A004C(a1, v4, v5, v1 + 32);
}

int *Action.init(_:id:waitLogInterval:supportedStatus:perform:finish:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12)
{
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  result = type metadata accessor for Action(0, a11, a12, v21);
  *(a9 + result[9]) = a2;
  *(a9 + result[11]) = a10;
  v23 = (a9 + result[10]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + result[12]);
  *v24 = a5;
  v24[1] = a6;
  v25 = (a9 + result[13]);
  *v25 = a7;
  v25[1] = a8;
  return result;
}

{
  v20 = swift_allocObject();
  v20[2] = a11;
  v20[3] = a12;
  v20[4] = a5;
  v20[5] = a6;
  (*(*(a11 - 8) + 32))(a9, a1, a11);
  result = type metadata accessor for Action(0, a11, a12, v21);
  *(a9 + result[9]) = a2;
  *(a9 + result[11]) = a10;
  v23 = (a9 + result[10]);
  *v23 = a3;
  v23[1] = a4;
  v24 = (a9 + result[12]);
  *v24 = &unk_100EEC7F0;
  v24[1] = v20;
  v25 = (a9 + result[13]);
  *v25 = a7;
  v25[1] = a8;
  return result;
}

uint64_t Action.execute(checkSupportedStatus:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 357) = a2;
  *(v4 + 56) = a1;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  *(v4 + 80) = swift_task_alloc();
  v6 = *(a3 + 24);
  *(v4 + 88) = v6;
  v7 = *(v6 - 8);
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 + 64);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  *(v4 + 136) = swift_task_alloc();
  v8 = *(a3 - 8);
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 + 64);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v4 + 208) = v9;
  *(v4 + 216) = *(v9 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = swift_task_alloc();

  return _swift_task_switch(sub_1008A0A6C, 0, 0);
}

uint64_t sub_1008A0A6C()
{
  v115 = v0;
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 72) + *(v1 + 36));
  if (((1 << v2) & 0xF8FFFFD7FFE7FLL) != 0)
  {
    goto LABEL_2;
  }

  if (((1 << v2) & 0x700000000180) != 0)
  {
    v75 = sub_100898654();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MusicKit, v75) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    *(v0 + 356) = 2;
    v76 = sub_100898600();
    if ((FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.MediaPlayer, v76) & 1) == 0)
    {
LABEL_21:
      if (qword_1011A70E8 != -1)
      {
        swift_once();
      }

      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        if (qword_1011A6750 != -1)
        {
          swift_once();
        }

        v77 = *(v0 + 232);
        v78 = *(v0 + 208);
        v79 = *(v0 + 216);
        v80 = *(v0 + 168);
        v81 = *(v0 + 144);
        v83 = *(v0 + 64);
        v82 = *(v0 + 72);
        v84 = sub_1000060E4(v78, qword_1011A7DB8);
        (*(v79 + 16))(v77, v84, v78);
        (*(v81 + 16))(v80, v82, v83);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.error.getter();
        v87 = os_log_type_enabled(v85, v86);
        v88 = *(v0 + 232);
        v90 = *(v0 + 208);
        v89 = *(v0 + 216);
        v91 = *(v0 + 168);
        v92 = *(v0 + 144);
        v93 = *(v0 + 64);
        if (v87)
        {
          v113 = *(v0 + 232);
          v94 = swift_slowAlloc();
          v110 = v90;
          v95 = swift_slowAlloc();
          v114[0] = v95;
          *v94 = 136446210;
          v96 = *(v91 + *(v1 + 36));
          (*(v92 + 8))(v91, v93);
          v97 = ActionType.rawValue.getter(v96);
          v99 = sub_100010678(v97, v98, v114);

          *(v94 + 4) = v99;
          _os_log_impl(&_mh_execute_header, v85, v86, "%{public}s: attempted to execute but identifier is hidden", v94, 0xCu);
          sub_10000959C(v95);

          (*(v89 + 8))(v113, v110);
        }

        else
        {
          (*(v92 + 8))(*(v0 + 168), *(v0 + 64));

          (*(v89 + 8))(v88, v90);
        }
      }

      v48 = 0x8000000100E5A870;
      v67 = 0xD000000000000014;
      goto LABEL_30;
    }
  }

LABEL_2:
  if (*(v0 + 357) != 1 || (v3 = (*(*(v0 + 72) + *(*(v0 + 64) + 40)))(), v4 == 1))
  {
    if (qword_1011A6750 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 248);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    v8 = *(v0 + 192);
    v9 = *(v0 + 144);
    v11 = *(v0 + 64);
    v10 = *(v0 + 72);
    v12 = sub_1000060E4(v6, qword_1011A7DB8);
    *(v0 + 264) = v12;
    v13 = *(v7 + 16);
    *(v0 + 272) = v13;
    *(v0 + 280) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v5, v12, v6);
    v14 = *(v9 + 16);
    *(v0 + 288) = v14;
    *(v0 + 296) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v108 = v14;
    v14(v8, v10, v11);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 248);
    v20 = *(v0 + 208);
    v19 = *(v0 + 216);
    v21 = *(v0 + 192);
    v22 = *(v0 + 144);
    v23 = *(v0 + 64);
    if (v17)
    {
      v104 = *(v0 + 248);
      v24 = swift_slowAlloc();
      v102 = v20;
      v25 = swift_slowAlloc();
      v114[0] = v25;
      *v24 = 136446210;
      v26 = *(v21 + *(v1 + 36));
      (*(v22 + 8))(v21, v23);
      v27 = ActionType.rawValue.getter(v26);
      v29 = sub_100010678(v27, v28, v114);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: performing…", v24, 0xCu);
      sub_10000959C(v25);

      (*(v19 + 8))(v104, v102);
    }

    else
    {
      (*(v22 + 8))(*(v0 + 192), *(v0 + 64));

      (*(v19 + 8))(v18, v20);
    }

    v30 = *(v0 + 184);
    v31 = *(v0 + 144);
    v32 = *(v0 + 136);
    v105 = *(v0 + 88);
    v34 = *(v0 + 64);
    v33 = *(v0 + 72);
    sub_1008A3F7C();
    v35 = [objc_opt_self() mainRunLoop];
    v36 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
    v37 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_1000095E8(v32, &qword_1011A7DD0, &qword_100EEC7C0);
    *(v0 + 32) = v37;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_1008A3FC8();
    v38 = ConnectablePublisher.autoconnect()();

    *(v0 + 40) = v38;
    v108(v30, v33, v34);
    v39 = *(v31 + 80);
    *(v0 + 352) = v39;
    v40 = (v39 + 32) & ~v39;
    v41 = swift_allocObject();
    v42 = *(v34 + 16);
    *(v0 + 304) = v42;
    *(v41 + 16) = v42;
    *(v41 + 24) = v105;
    v43 = *(v31 + 32);
    *(v0 + 312) = v43;
    *(v0 + 320) = (v31 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v43(v41 + v40, v30, v34);
    sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
    sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    *(v0 + 328) = Publisher<>.sink(receiveValue:)();

    v111 = (*(v33 + *(v34 + 48)) + **(v33 + *(v34 + 48)));
    v44 = swift_task_alloc();
    *(v0 + 336) = v44;
    *v44 = v0;
    v44[1] = sub_1008A1608;
    v45 = *(v0 + 72);
    v46 = *(v0 + 56);

    return v111(v46, v45);
  }

  v48 = v4;
  v112 = v3;
  v106 = v1;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v49 = *(v0 + 256);
  v51 = *(v0 + 208);
  v50 = *(v0 + 216);
  v52 = *(v0 + 200);
  v53 = *(v0 + 144);
  v55 = *(v0 + 64);
  v54 = *(v0 + 72);
  v56 = sub_1000060E4(v51, qword_1011A7DB8);
  (*(v50 + 16))(v49, v56, v51);
  (*(v53 + 16))(v52, v54, v55);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  sub_10089840C(v112, v48);
  v59 = os_log_type_enabled(v57, v58);
  v60 = *(v0 + 256);
  v61 = *(v0 + 216);
  v109 = *(v0 + 208);
  v62 = *(v0 + 200);
  v63 = *(v0 + 144);
  v64 = *(v0 + 64);
  if (v59)
  {
    v103 = *(v0 + 256);
    v65 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v65 = 136446466;
    v66 = *(v106 + 36);
    v107 = v58;
    v67 = v112;
    v68 = *(v62 + v66);
    (*(v63 + 8))(v62, v64);
    v69 = ActionType.rawValue.getter(v68);
    v71 = sub_100010678(v69, v70, v114);

    *(v65 + 4) = v71;
    *(v65 + 12) = 2082;
    *(v0 + 16) = v112;
    *(v0 + 24) = v48;

    sub_10010FC20(&unk_1011ACB70, &qword_100EEEF60);
    v72 = String.init<A>(describing:)();
    v74 = sub_100010678(v72, v73, v114);

    *(v65 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v57, v107, "%{public}s: attempted to execute but was unsupported for reason: %{public}s", v65, 0x16u);
    swift_arrayDestroy();

    (*(v61 + 8))(v103, v109);
  }

  else
  {
    (*(v63 + 8))(*(v0 + 200), *(v0 + 64));

    (*(v61 + 8))(v60, v109);
    v67 = v112;
  }

LABEL_30:
  sub_1008A4190();
  swift_allocError();
  *v100 = v67;
  v100[1] = v48;
  swift_willThrow();

  v101 = *(v0 + 8);

  return v101();
}

uint64_t sub_1008A1608()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_1008A1D00;
  }

  else
  {
    v2 = sub_1008A171C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008A171C()
{
  v68 = v0;
  v64 = *(v0 + 288);
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 176);
  v6 = *(v0 + 96);
  v60 = *(v0 + 88);
  v62 = *(v0 + 128);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v59 = *(v0 + 56);
  AnyCancellable.cancel()();
  v1(v3, v2, v4);
  v64(v5, v7, v8);
  v9 = *(v6 + 16);
  v9(v62, v59, v60);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v65 = v9;
  if (os_log_type_enabled(v10, v11))
  {
    v61 = v11;
    v63 = v10;
    v12 = *(v0 + 176);
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v58 = *(v0 + 128);
    v15 = *(v0 + 88);
    v16 = *(v0 + 64);
    v17 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v17 = 136446466;
    v18 = *(v12 + *(v16 + 36));
    (*(v13 + 8))(v12, v16);
    v19 = ActionType.rawValue.getter(v18);
    v21 = sub_100010678(v19, v20, &v66);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v9(v14, v58, v15);
    v22 = 0xE000000000000000;
    if (swift_dynamicCast())
    {
      v23 = 0;
    }

    else
    {
      v30 = *(v0 + 128);
      v31 = *(v0 + 112);
      v32 = *(v0 + 88);
      v67[0] = 0;
      v67[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v67, " with result: ");
      HIBYTE(v67[1]) = -18;
      v9(v31, v30, v32);
      v33._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v33);

      v23 = v67[0];
      v22 = v67[1];
    }

    v34 = *(v0 + 240);
    v35 = *(v0 + 208);
    v36 = *(v0 + 216);
    (*(*(v0 + 96) + 8))(*(v0 + 128), *(v0 + 88));
    v37 = sub_100010678(v23, v22, &v66);

    *(v17 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v63, v61, "%{public}s: perform success%{public}s", v17, 0x16u);
    swift_arrayDestroy();

    (*(v36 + 8))(v34, v35);
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 208);
    v26 = *(v0 + 216);
    v27 = *(v0 + 128);
    v28 = *(v0 + 88);
    v29 = *(v0 + 96);
    (*(*(v0 + 144) + 8))(*(v0 + 176), *(v0 + 64));

    (*(v29 + 8))(v27, v28);
    (*(v26 + 8))(v24, v25);
  }

  v56 = *(v0 + 304);
  v57 = *(v0 + 312);
  v38 = *(v0 + 352);
  v54 = *(v0 + 288);
  v39 = *(v0 + 184);
  v53 = *(v0 + 152);
  v40 = *(v0 + 112);
  v41 = *(v0 + 96);
  v42 = *(v0 + 80);
  v43 = *(v0 + 88);
  v55 = v42;
  v45 = *(v0 + 64);
  v44 = *(v0 + 72);
  v46 = *(v0 + 56);
  v47 = type metadata accessor for TaskPriority();
  (*(*(v47 - 8) + 56))(v42, 1, 1, v47);
  v54(v39, v44, v45);
  v65(v40, v46, v43);
  v48 = (v38 + 48) & ~v38;
  v49 = (v53 + v48 + *(v41 + 80)) & ~*(v41 + 80);
  v50 = swift_allocObject();
  *(v50 + 2) = 0;
  *(v50 + 3) = 0;
  *(v50 + 4) = v56;
  *(v50 + 5) = v43;
  v57(&v50[v48], v39, v45);
  (*(v41 + 32))(&v50[v49], v40, v43);
  sub_1008A3074(0, 0, v55, &unk_100EEC7E0, v50);

  sub_1000095E8(v55, &qword_1011A7F00, &qword_100EEDE10);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_1008A1D00()
{
  v32 = v0;
  v28 = v0[36];
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[28];
  v4 = v0[26];
  v5 = v0[20];
  v7 = v0[8];
  v6 = v0[9];

  v1(v3, v2, v4);
  v28(v5, v6, v7);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[43];
    v27 = v0[27];
    v29 = v0[26];
    v30 = v0[28];
    v11 = v0[20];
    v12 = v0[18];
    v13 = v0[8];
    v14 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v14 = 136446466;
    v15 = *(v11 + *(v13 + 36));
    (*(v12 + 8))(v11, v13);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100010678(v16, v17, v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[6] = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v19 = String.init<A>(describing:)();
    v21 = sub_100010678(v19, v20, v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: perform failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v30, v29);
  }

  else
  {
    v23 = v0[27];
    v22 = v0[28];
    v24 = v0[26];
    (*(v0[18] + 8))(v0[20], v0[8]);

    (*(v23 + 8))(v22, v24);
  }

  swift_willThrow();

  v25 = v0[1];

  return v25();
}

uint64_t sub_1008A2064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  sub_10010FC20(&qword_1011A7DD0, &qword_100EEC7C0);
  v7[9] = swift_task_alloc();
  v11 = type metadata accessor for Action(0, a6, a7, v10);
  v7[10] = v11;
  v12 = *(v11 - 8);
  v7[11] = v12;
  v7[12] = *(v12 + 64);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v7[17] = v13;
  v7[18] = *(v13 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();

  return _swift_task_switch(sub_1008A2210, 0, 0);
}

uint64_t sub_1008A2210()
{
  v47 = v0;
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  v7 = *(v0 + 40);
  v8 = sub_1000060E4(v2, qword_1011A7DB8);
  *(v0 + 176) = v8;
  v9 = *(v3 + 16);
  *(v0 + 184) = v9;
  *(v0 + 192) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v1, v8, v2);
  v10 = *(v6 + 16);
  *(v0 + 200) = v10;
  *(v0 + 208) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v44 = v10;
  v10(v4, v7, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 168);
  v16 = *(v0 + 136);
  v15 = *(v0 + 144);
  v17 = *(v0 + 128);
  v19 = *(v0 + 80);
  v18 = *(v0 + 88);
  if (v13)
  {
    v42 = *(v0 + 168);
    v20 = swift_slowAlloc();
    v41 = v16;
    v21 = swift_slowAlloc();
    v46 = v21;
    *v20 = 136446210;
    v22 = *(v17 + *(v19 + 36));
    (*(v18 + 8))(v17, v19);
    v23 = ActionType.rawValue.getter(v22);
    v25 = sub_100010678(v23, v24, &v46);

    *(v20 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s: finishing…", v20, 0xCu);
    sub_10000959C(v21);

    (*(v15 + 8))(v42, v41);
  }

  else
  {
    (*(v18 + 8))(*(v0 + 128), *(v0 + 80));

    (*(v15 + 8))(v14, v16);
  }

  v26 = *(v0 + 120);
  v27 = *(v0 + 88);
  v29 = *(v0 + 72);
  v28 = *(v0 + 80);
  v30 = *(v0 + 40);
  sub_1008A3F7C();
  v43 = *(v0 + 56);
  v31 = [objc_opt_self() mainRunLoop];
  v32 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v32 - 8) + 56))(v29, 1, 1, v32);
  v33 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_1000095E8(v29, &qword_1011A7DD0, &qword_100EEC7C0);
  *(v0 + 16) = v33;
  type metadata accessor for NSTimer.TimerPublisher();
  sub_1008A3FC8();
  v34 = ConnectablePublisher.autoconnect()();

  *(v0 + 24) = v34;
  v44(v26, v30, v28);
  v35 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v43;
  (*(v27 + 32))(v36 + v35, v26, v28);
  sub_10010FC20(&qword_1011A7DE8, &qword_100EEC7C8);
  sub_100020674(&qword_1011A7DF0, &qword_1011A7DE8, &qword_100EEC7C8, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  *(v0 + 216) = Publisher<>.sink(receiveValue:)();

  v45 = (*(v30 + *(v28 + 52)) + **(v30 + *(v28 + 52)));
  v37 = swift_task_alloc();
  *(v0 + 224) = v37;
  *v37 = v0;
  v37[1] = sub_1008A270C;
  v39 = *(v0 + 40);
  v38 = *(v0 + 48);

  return v45(v39, v38);
}

uint64_t sub_1008A270C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1008A2A8C;
  }

  else
  {
    v2 = sub_1008A2820;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1008A2820()
{
  v29 = v0;
  v25 = v0[25];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[5];
  AnyCancellable.cancel()();
  v2(v3, v1, v4);
  v25(v5, v7, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[20];
  v13 = v0[17];
  v12 = v0[18];
  v14 = v0[14];
  v16 = v0[10];
  v15 = v0[11];
  if (v10)
  {
    v27 = v0[17];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136446210;
    v26 = v11;
    v19 = *(v14 + *(v16 + 36));
    (*(v15 + 8))(v14, v16);
    v20 = ActionType.rawValue.getter(v19);
    v22 = sub_100010678(v20, v21, &v28);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish success", v17, 0xCu);
    sub_10000959C(v18);

    (*(v12 + 8))(v26, v27);
  }

  else
  {
    (*(v15 + 8))(v0[14], v0[10]);

    (*(v12 + 8))(v11, v13);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1008A2A8C()
{
  v32 = v0;
  v28 = v0[25];
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[19];
  v4 = v0[17];
  v5 = v0[13];
  v6 = v0[10];
  v7 = v0[5];

  v2(v3, v1, v4);
  v28(v5, v7, v6);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[29];
    v27 = v0[18];
    v29 = v0[17];
    v30 = v0[19];
    v11 = v0[13];
    v13 = v0[10];
    v12 = v0[11];
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = *(v11 + *(v13 + 36));
    (*(v12 + 8))(v11, v13);
    v16 = ActionType.rawValue.getter(v15);
    v18 = sub_100010678(v16, v17, &v31);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v0[4] = v10;
    swift_errorRetain();
    sub_10010FC20(&qword_1011AB640, L"D\v\a");
    v19 = String.init<A>(describing:)();
    v21 = sub_100010678(v19, v20, &v31);

    *(v14 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s: finish failed: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v27 + 8))(v30, v29);
  }

  else
  {
    v23 = v0[18];
    v22 = v0[19];
    v24 = v0[17];
    (*(v0[11] + 8))(v0[13], v0[10]);

    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_1008A2D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v7 = type metadata accessor for Action(0, a3, a4, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v27 - v9;
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1011A6750 != -1)
  {
    swift_once();
  }

  v15 = sub_1000060E4(v11, qword_1011A7DB8);
  (*(v12 + 16))(v14, v15, v11);
  (*(v8 + 16))(v10, a2, v7);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v28 = a5;
    v21 = v20;
    v30 = v20;
    *v19 = 136446210;
    v22 = v10[*(v7 + 36)];
    (*(v8 + 8))(v10, v7);
    v23 = ActionType.rawValue.getter(v22);
    v25 = sub_100010678(v23, v24, &v30);

    *(v19 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, v28, v19, 0xCu);
    sub_10000959C(v21);

    return (*(v12 + 8))(v14, v29);
  }

  else
  {
    (*(v8 + 8))(v10, v7);

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1008A3074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10002094C(a3, v24 - v9);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000095E8(v10, &qword_1011A7F00, &qword_100EEDE10);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t static ActionSupportedStatus.allSupported(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0;
    v4 = a1 + 32;
    v22 = a1 + 32;
    v5 = 2;
    v21 = *(a1 + 16);
    while (1)
    {
      v6 = *(v4 + 16 * v3);
      v7 = *(v4 + 16 * v3 + 8);
      if (v5 == 2)
      {
        v2 = *(v4 + 16 * v3);
        sub_1008988C0(v2, *(v4 + 16 * v3 + 8));
        goto LABEL_4;
      }

      if (v5 == 1 && v7 == 1)
      {
        v23 = *(v4 + 16 * v3);
        sub_1008A41F4(v2, 1);
        v2 = v23;
        goto LABEL_4;
      }

      v25 = v2;
      v26 = v5;
      v8 = v6;
      v27 = v6;
      sub_1008988C0(v6, v7);
      v24 = v8;
      sub_1008988C0(v8, v7);
      sub_1008A41E4(v2, v5);
      v9 = 0;
      v10 = _swiftEmptyArrayStorage;
      do
      {
        v11 = &v26 + 2 * v9++;
        while (1)
        {
          v12 = *v11;
          if (*v11 != 1)
          {
            break;
          }

LABEL_11:
          v11 += 2;
          if (++v9 == 3)
          {
            goto LABEL_20;
          }
        }

        v13 = *(v11 - 1);
        if (!v12)
        {
          sub_10089840C(*(v11 - 1), 0);
          goto LABEL_11;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_10089C4F8(0, *(v10 + 2) + 1, 1, v10);
        }

        v15 = *(v10 + 2);
        v14 = *(v10 + 3);
        if (v15 >= v14 >> 1)
        {
          v10 = sub_10089C4F8((v14 > 1), v15 + 1, 1, v10);
        }

        *(v10 + 2) = v15 + 1;
        v16 = &v10[16 * v15];
        *(v16 + 4) = v13;
        *(v16 + 5) = v12;
        v1 = v21;
      }

      while (v9 != 2);
LABEL_20:
      swift_arrayDestroy();
      sub_10010FC20(&unk_1011A9FA0, &unk_100EEC490);
      sub_100020674(&qword_1011AAA30, &unk_1011A9FA0, &unk_100EEC490, &protocol conformance descriptor for [A]);
      v17 = BidirectionalCollection<>.joined(separator:)();
      v19 = v18;
      sub_10089840C(v24, v7);
      sub_1008A41F4(v2, v5);

      v2 = v17;
      v7 = v19;
      v4 = v22;
LABEL_4:
      ++v3;
      v5 = v7;
      if (v3 == v1)
      {
        goto LABEL_22;
      }
    }
  }

  v2 = 0;
  v7 = 2;
LABEL_22:
  if (v7 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}

unint64_t ActionError.description.getter(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(34);

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE700000000000000;
    a1 = 0x6E776F6E6B6E75;
  }

  v5._countAndFlagsBits = a1;
  v5._object = v4;
  String.append(_:)(v5);

  return 0xD000000000000020;
}

uint64_t static ActionError.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      if (a1 == a3 && a2 == a4)
      {
        return 1;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1008A3838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1008A3860, 0, 0);
}

uint64_t sub_1008A3860()
{
  v1 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 48);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1008A395C;
  v5 = *(v0 + 56);
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD00000000000003ALL, 0x8000000100E5A8E0, sub_1008A4834, v2, v5);
}

uint64_t sub_1008A395C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1008A3A98, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1008A3A98()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1008A3AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v32 = a5;
  v33 = a4;
  v35 = a2;
  v36 = a3;
  v34 = a1;
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v31 = a6;
  v8 = type metadata accessor for CheckedContinuation();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  v13 = type metadata accessor for Action(0, a5, a6, v12);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = &v29 - v16;
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v19 = &v29 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v17, v33, v13);
  v21 = v11;
  v22 = v8;
  (*(v9 + 16))(v21, v34, v8);
  v23 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v24 = (v15 + v23 + *(v9 + 80)) & ~*(v9 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  v26 = v31;
  *(v25 + 4) = v32;
  *(v25 + 5) = v26;
  v27 = v36;
  *(v25 + 6) = v35;
  *(v25 + 7) = v27;
  (*(v14 + 32))(&v25[v23], v17, v13);
  (*(v9 + 32))(&v25[v24], v30, v22);

  sub_100A5932C(0, 0, v19, &unk_100EEC9B0, v25);

  return result;
}

uint64_t sub_1008A3E00(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v7 + 16) = v10;
  *v10 = v7;
  v10[1] = sub_10002F3F4;

  return v12(a6, a7);
}

uint64_t sub_1008A3F08()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_1011A7DB8);
  sub_1000060E4(v0, qword_1011A7DB8);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1008A3F7C()
{
  result = qword_1011A7DD8;
  if (!qword_1011A7DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A7DD8);
  }

  return result;
}

unint64_t sub_1008A3FC8()
{
  result = qword_1011A7DE0;
  if (!qword_1011A7DE0)
  {
    type metadata accessor for NSTimer.TimerPublisher();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7DE0);
  }

  return result;
}

uint64_t sub_1008A402C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  v10 = *(type metadata accessor for Action(0, v9, v8, a4) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v13 = v4[2];
  v14 = v4[3];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_10002F3F4;

  return sub_1008A2064(a1, v13, v14, v4 + v11, v4 + v12, v9, v8);
}

unint64_t sub_1008A4190()
{
  result = qword_1011A7DF8[0];
  if (!qword_1011A7DF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1011A7DF8);
  }

  return result;
}

double sub_1008A41E4(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1008988C0(a1, a2);
  }

  return result;
}

double sub_1008A41F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10089840C(a1, a2);
  }

  return result;
}

BOOL _s9MusicCore21ActionSupportedStatusO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 1)
  {
    return a4 == 1;
  }

  if (a4 == 1)
  {
    return 0;
  }

  if (a2)
  {
    if (!a4)
    {
      return 0;
    }

    return a1 == a3 && a2 == a4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  else
  {
    return !a4;
  }
}

uint64_t sub_1008A4280(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10002F3F4;

  return sub_1008A3838(a1, a2, v9, v8, v6, v7);
}

unint64_t sub_1008A434C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_10001F838();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1008A43E8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = (((((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1008A4534(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = &result[v8] & 0xFFFFFFFFFFFFFFF8;
        if ((a2 & 0x80000000) != 0)
        {
          *(v19 + 8) = a2 & 0x7FFFFFFF;
          *(v19 + 16) = 0;
        }

        else
        {
          *(v19 + 8) = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if ((((((((v8 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, (((((((v8 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1008A4708(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t sub_1008A472C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1008A4788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1008A47E4(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1008A4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for Action(0, v4[4], v4[5], a4) - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  sub_1001109D0(&qword_1011AB640, L"D\v\a");
  v10 = *(type metadata accessor for CheckedContinuation() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[6];
  v15 = v4[7];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_100008F30;

  return sub_1008A3E00(a1, v12, v13, v14, v15, v4 + v8, v4 + v11);
}

uint64_t sub_1008A49EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_1008A4B0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, ...)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  return sub_1008A2D88(a1, v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v8, a2);
}

uint64_t sub_1008A4B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v11 = &v23[-1] - v10;
  v23[5] = a4;
  v23[6] = a5;
  sub_10002094C(a3, &v23[-1] - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10001CC48(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter();
      sub_1008A6BD4(v19 + 32, v23);

      v20 = v23[0];
      sub_10001CC48(a3);

      return v20;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001CC48(a3);
  if (v18 | v16)
  {
    v23[1] = 0;
    v23[2] = 0;
    v23[3] = v16;
    v23[4] = v18;
  }

  return swift_task_create();
}

uint64_t ActionMenu.Element.id.getter()
{
  v1 = *v0;
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return ActionType.rawValue.getter(v1);
  }

  v3 = *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

  return v3;
}

uint64_t ActionMenu.Element.parentMenu.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &unk_100EECBBE + *((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  }

  else
  {
    v2 = &unk_100EECB8A + v1;
  }

  return *v2;
}

uint64_t ActionMenu.Element.priority.getter()
{
  v1 = *v0;
  if (*v0 < 0)
  {
    v2 = &qword_100EECD70[*((v1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v2 = &qword_100EECBD0[v1];
  }

  return *v2;
}

BOOL static ActionMenu.Element.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 < 0)
  {
    v3 = &qword_100EECD70[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v3 = &qword_100EECBD0[v2];
  }

  v4 = *v3;
  v5 = *a2;
  if (*a2 < 0)
  {
    v6 = &qword_100EECD70[*((v5 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
  }

  else
  {
    v6 = &qword_100EECBD0[v5];
  }

  return v4 < *v6;
}

void sub_1008A4EF8(uint64_t *a1@<X8>)
{
  v3 = *v1;
  if (*v1 < 0)
  {
    v4 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  }

  else
  {
    v4 = ActionType.rawValue.getter(v3);
    v6 = v5;
  }

  *a1 = v4;
  a1[1] = v6;
}

uint64_t sub_1008A4F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

BOOL sub_1008A4F9C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_100EECD70[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_100EECD70[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_100EECBD0[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100EECBD0[v3];
  return v4 < *v5;
}

BOOL sub_1008A5004(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_100EECD70[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_100EECD70[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_100EECBD0[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100EECBD0[v2];
  return v4 >= *v5;
}

BOOL sub_1008A506C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < 0)
  {
    v4 = qword_100EECD70[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_100EECD70[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 >= *v5;
  }

  v4 = qword_100EECBD0[v2];
  if (v3 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100EECBD0[v3];
  return v4 >= *v5;
}

BOOL sub_1008A50D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a2 < 0)
  {
    v4 = qword_100EECD70[*((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = &qword_100EECD70[*((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20)];
    return v4 < *v5;
  }

  v4 = qword_100EECBD0[v3];
  if (v2 < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = &qword_100EECBD0[v2];
  return v4 < *v5;
}

void sub_1008A5140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_10089C604(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t static ActionMenu.ElementBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a2;
  v6 = type metadata accessor for Action(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v31 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = v27 - v9;
  v11 = v10;
  __chkstk_darwin();
  v13 = v27 - v12;
  v28 = v27 - v12;
  sub_10010FC20(&unk_1011A7E80, &unk_100EEC4F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  v15 = *(v6 + 36);
  v33 = a1;
  v30 = *(a1 + v15);
  v35 = *(v7 + 16);
  v35(v13, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27[1] = v11;
  v17 = swift_allocObject();
  v19 = v36;
  v18 = v37;
  *(v17 + 2) = a2;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  v32 = *(v7 + 32);
  v32(&v17[v16], v28, v6);
  v20 = v29;
  v35(v29, v33, v6);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = v19;
  v22 = v37;
  *(v21 + 4) = v37;
  v32(&v21[v16], v20, v6);
  v23 = v31;
  v35(v31, v33, v6);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 2) = v34;
  *(v24 + 3) = v25;
  *(v24 + 4) = v22;
  v32(&v24[v16], v23, v6);
  *(v14 + 32) = v30;
  *(v14 + 40) = sub_1008A73F0;
  *(v14 + 48) = v17;
  *(v14 + 56) = sub_1008A73F4;
  *(v14 + 64) = v21;
  *(v14 + 72) = &unk_100EEC9D0;
  *(v14 + 80) = v24;
  return v14;
}

uint64_t sub_1008A5570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action(0, a2, a3, a4);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008A5674, 0, 0);
}

uint64_t sub_1008A5674()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for TaskPriority();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1008A4B9C(0, 0, v1, &unk_100EECB80, v9, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1008A57FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  v12 = type metadata accessor for Action(0, a5, a6, v11);
  *v10 = v6;
  v10[1] = sub_10002F3F4;

  return Action.execute(checkSupportedStatus:)(a1, 1, v12);
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)(uint64_t a1)
{
  sub_10010FC20(&unk_1011A7E80, &unk_100EEC4F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 32) = a1 | 0x8000000000000000;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;

  return v2;
}

uint64_t static ActionMenu.ElementBuilder.buildExpression(_:)()
{
  sub_10010FC20(&qword_1011A7C78, &unk_100EEDBB0);
  sub_100020674(&unk_1011A7E90, &qword_1011A7C78, &unk_100EEDBB0, &protocol conformance descriptor for [A]);
  return Sequence.flatMap<A>(_:)();
}

double sub_1008A59F0@<D0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v2;
  v4 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v4;
  *(a2 + 48) = v3;

  return result;
}

uint64_t static ActionBuilder.buildExpression<A, B>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v34 = a2;
  v6 = type metadata accessor for Action(0, a2, a3, a4);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v31 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = v27 - v9;
  v11 = v10;
  __chkstk_darwin();
  v13 = v27 - v12;
  v28 = v27 - v12;
  sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBC6B0;
  v15 = *(v6 + 36);
  v33 = a1;
  v30 = *(a1 + v15);
  v35 = *(v7 + 16);
  v35(v13, a1, v6);
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27[1] = v11;
  v17 = swift_allocObject();
  v19 = v36;
  v18 = v37;
  *(v17 + 2) = a2;
  *(v17 + 3) = v19;
  *(v17 + 4) = v18;
  v32 = *(v7 + 32);
  v32(&v17[v16], v28, v6);
  v20 = v29;
  v35(v29, v33, v6);
  v21 = swift_allocObject();
  *(v21 + 2) = v34;
  *(v21 + 3) = v19;
  v22 = v37;
  *(v21 + 4) = v37;
  v32(&v21[v16], v20, v6);
  v23 = v31;
  v35(v31, v33, v6);
  v24 = swift_allocObject();
  v25 = v36;
  *(v24 + 2) = v34;
  *(v24 + 3) = v25;
  *(v24 + 4) = v22;
  v32(&v24[v16], v23, v6);
  *(v14 + 32) = v30;
  *(v14 + 40) = sub_1008A7E64;
  *(v14 + 48) = v17;
  *(v14 + 56) = sub_1008A7E5C;
  *(v14 + 64) = v21;
  *(v14 + 72) = &unk_100EEC9E0;
  *(v14 + 80) = v24;
  return v14;
}

uint64_t sub_1008A5D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Action(0, a2, a3, a4);
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v4[8] = *(v6 + 64);
  v4[9] = swift_task_alloc();
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1008A5E5C, 0, 0);
}

uint64_t sub_1008A5E5C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 48);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for TaskPriority();
  v12 = *(v0 + 32);
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v6;
  *(v9 + 40) = v12;
  (*(v3 + 32))(v9 + v8, v2, v4);
  sub_1008A4B9C(0, 0, v1, &unk_100EECB70, v9, v12);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1008A5FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  v12 = type metadata accessor for Action(0, a5, a6, v11);
  *v10 = v6;
  v10[1] = sub_100008F30;

  return Action.execute(checkSupportedStatus:)(a1, 1, v12);
}

uint64_t static ActionBuilder.buildExpression(_:)(__int128 *a1)
{
  sub_10010FC20(&qword_1011A7D68, &qword_100EEDB70);
  v2 = swift_allocObject();
  v3 = *(a1 + 6);
  v4 = *a1;
  *(v2 + 16) = xmmword_100EBC6B0;
  *(v2 + 32) = v4;
  v5 = a1[2];
  *(v2 + 48) = a1[1];
  *(v2 + 64) = v5;
  *(v2 + 80) = v3;

  return v2;
}

void sub_1008A6144(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10089C604(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
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
}

void sub_1008A623C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10089CBF8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&qword_1011ACA60, &qword_100EF6ED0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1008A6344(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_10089C4F8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
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
}

void sub_1008A6490(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_1008A65D4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10089C4F8(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = (v9 - v11);
  v13 = sub_1008A6AF4(&v30, &v4[16 * v11 + 32], v9 - v11, a1);
  if (v13 < v3)
  {
    goto LABEL_15;
  }

  if (v13)
  {
    v14 = *(v4 + 2);
    v15 = __OFADD__(v14, v13);
    v16 = v13 + v14;
    if (v15)
    {
      __break(1u);
      goto LABEL_32;
    }

    *(v4 + 2) = v16;
  }

  if (v13 != v12)
  {
LABEL_13:

    *v1 = v4;
    return;
  }

LABEL_16:
  if (!v31)
  {
    goto LABEL_13;
  }

  v17 = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
LABEL_34:
    __break(1u);
  }

  else if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = v30;
    if (v17 < *(v30 + 16))
    {
      v19 = *(v4 + 2);
      v20 = v30 + 16 * v17;
      v22 = *(v20 + 32);
      v21 = *(v20 + 40);

      while (1)
      {
LABEL_22:
        v23 = *(v4 + 3);
        v24 = v23 >> 1;
        if ((v23 >> 1) < v19 + 1)
        {
          v4 = sub_10089C4F8((v23 > 1), v19 + 1, 1, v4);
          v24 = *(v4 + 3) >> 1;
          v25 = v19 - v24;
          if (v19 < v24)
          {
LABEL_24:
            v29 = v24;
            v2 = 0;
            v26 = (v18 + 24 + 16 * v17);
            v28 = v19;
            v27 = &v4[16 * v19 + 40];
            while (1)
            {
              *(v27 - 1) = v22;
              *v27 = v21;
              if (!(v17 + v2))
              {
                break;
              }

              if ((v17 + v2 - 1) >= *(v18 + 16))
              {
                __break(1u);
                goto LABEL_34;
              }

              v22 = *(v26 - 1);
              v21 = *v26;

              --v2;
              v26 -= 2;
              v27 += 16;
              if (v25 == v2)
              {
                v17 += v2;
                v19 = v29;
                *(v4 + 2) = v29;
                goto LABEL_22;
              }
            }

LABEL_32:
            *(v4 + 2) = v28 - v2 + 1;
            goto LABEL_13;
          }
        }

        else
        {
          v25 = v19 - v24;
          if (v19 < v24)
          {
            goto LABEL_24;
          }
        }

        *(v4 + 2) = v19;
      }
    }

    goto LABEL_36;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1008A6818(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(_CocoaArrayWrapper.endIndex.getter(), v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v8 = *v3;
  v9 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v3 = v8;
    return;
  }

  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (!v13)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1008A6918(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10089D1B4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[32 * v8 + 32], (a1 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1008A6A04(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    if (!__OFADD__(*((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10), v3))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(_CocoaArrayWrapper.endIndex.getter(), v3))
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000BF94();
  v4 = *v1;
  v5 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1008A717C(v5 + 8 * *(v5 + 0x10) + 32, (*(v5 + 0x18) >> 1) - *(v5 + 0x10), a1);
  v7 = v6;

  if (v7 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v7 < 1)
  {
LABEL_9:
    *v1 = v4;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v7);
  v10 = v8 + v7;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void *sub_1008A6AF4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(a4 + 16);
  if (!a2)
  {
    v13 = *(a4 + 16);
    v6 = 0;
LABEL_14:
    *v5 = a4;
    v5[1] = v13;
    return v6;
  }

  if (!a3)
  {
    v13 = *(a4 + 16);
LABEL_13:
    v6 = a3;
    goto LABEL_14;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (v6)
    {
      v8 = a2;
      v9 = 0;
      v10 = a3 - 1;
      v11 = (a4 + 16 * v6 + 24);
      while (v6 + v9 <= *(a4 + 16))
      {
        v12 = *v11;
        *v8 = *(v11 - 1);
        v8[1] = v12;
        if (!(v10 + v9))
        {

          v13 = v6 + v9 - 1;
          goto LABEL_13;
        }

        --v9;
        v11 -= 2;
        v8 += 2;
        v13 = v6 + v9;
        if (!(v6 + v9))
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A6BD4@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1008A6C90(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_1011A7EF8, &qword_1011A7EF0, &qword_100EECB60, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011A7EF0, &qword_100EECB60);
            v9 = sub_100AA5324(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for Whitetail.Binding();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A6E34(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&unk_1011A7EE0, &qword_1011A7ED8, &qword_100EECB58, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011A7ED8, &qword_100EECB58);
            v9 = sub_100AA53A4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for BagProvider.Observer();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A6FD8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_1011A7ED0, &qword_1011AD970, &unk_100EF8140, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011AD970, &unk_100EF8140);
            v9 = sub_100AA5424(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1008A7AC0();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1008A717C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_1011A7EB8, &qword_1011A7EB0, &qword_100EECB50, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011A7EB0, &qword_100EECB50);
            v9 = sub_100AA54A4(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10010FC20(&qword_1011AEFF0, &qword_100EECB48);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s9MusicCore10ActionMenuC7ElementO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    v10 = *a1;
    v2 = *(a1 + 3);
    v11 = *(a1 + 1);
    v12 = v2;
    v13 = *(a1 + 5);
    if ((*a2 & 0x8000000000000000) == 0)
    {
      v6 = *a2;
      v7 = *(a2 + 1);
      v8 = *(a2 + 3);
      v9 = *(a2 + 5);
      v3 = static ActionMenu.Item.== infix(_:_:)(&v10, &v6);
      return v3 & 1;
    }

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  if ((*a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  if (*((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) && *((*a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18) == *((*a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18))
  {
    v3 = 1;
    return v3 & 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1008A73F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_10002F3F4;

  return sub_1008A5570(v4 + v10, v6, v7, v8);
}

void sub_1008A74F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (a1 + 32);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *v2;
    v5 = *(*v2 + 16);
    v6 = *(v3 + 2);
    v7 = v6 + v5;
    if (__OFADD__(v6, v5))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v7 <= *(v3 + 3) >> 1)
    {
      if (*(v4 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v6 <= v7)
      {
        v9 = v6 + v5;
      }

      else
      {
        v9 = v6;
      }

      v3 = sub_10089C72C(isUniquelyReferenced_nonNull_native, v9, 1, v3);
      if (*(v4 + 16))
      {
LABEL_14:
        if ((*(v3 + 3) >> 1) - *(v3 + 2) < v5)
        {
          goto LABEL_21;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v10 = *(v3 + 2);
          v11 = __OFADD__(v10, v5);
          v12 = v10 + v5;
          if (v11)
          {
            goto LABEL_22;
          }

          *(v3 + 2) = v12;
        }

        goto LABEL_4;
      }
    }

    if (v5)
    {
      goto LABEL_20;
    }

LABEL_4:
    ++v2;
    if (!--v1)
    {
      return;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1008A7630@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 2);
  v5 = *(v2 + 4);
  v6 = *(type metadata accessor for Action(0, v4, *(v2 + 3), a1) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  a2[3] = v4;
  a2[4] = v5;
  v8 = sub_10001C8B8(a2);
  v9 = *(*(v4 - 8) + 16);

  return v9(v8, &v2[v7], v4);
}

uint64_t sub_1008A774C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 40) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_1008A7860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = v4[3];
  v8 = v4[4];
  v9 = *(type metadata accessor for Action(0, v6, v7, a4) - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100008F30;

  return sub_1008A5D58(v4 + v10, v6, v7, v8);
}

unint64_t sub_1008A795C()
{
  result = qword_1011A7EA0;
  if (!qword_1011A7EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A7EA0);
  }

  return result;
}

uint64_t sub_1008A79BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF && *(a1 + 56))
  {
    return (*a1 + 15);
  }

  v3 = (((*a1 >> 60) >> 3) & 0xFFFFFFF1 | (2 * ((*a1 >> 60) & 7))) ^ 0xF;
  if (v3 >= 0xE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1008A7A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 15;
    if (a3 >= 0xF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 1) & 7) - 8 * a2) << 60;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = 0u;
    }
  }

  return result;
}

unint64_t sub_1008A7AC0()
{
  result = qword_1011A7EC0;
  if (!qword_1011A7EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A7EC0);
  }

  return result;
}

uint64_t sub_1008A7B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_100008F30;

  return sub_1008A5FE4(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t sub_1008A7C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 32);
  v6 = *(type metadata accessor for Action(0, v5, *(v4 + 40), a4) - 8);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(*(v5 - 8) + 8))(v4 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1008A7D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for Action(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_100008F30;

  return sub_1008A57FC(a1, v11, v12, v4 + v10, v7, v8);
}

uint64_t Actions.MetricsReportingContext.actionContext.getter()
{
  v1 = *v0;
  sub_100633490(*v0, *(v0 + 8));
  return v1;
}

void Actions.MetricsReportingContext.actionContext.setter(uint64_t a1, uint64_t a2)
{
  sub_1008A7ED4(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

double sub_1008A7ED4(uint64_t a1, unint64_t a2)
{
  if (a2 != 12)
  {
    return sub_1008A7EE4(a1, a2);
  }

  return result;
}

double sub_1008A7EE4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xC)
  {
  }

  return result;
}

uint64_t Actions.MetricsReportingContext.page.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 20);

  return sub_1008A7F84(a1, v3);
}

uint64_t sub_1008A7F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.MetricsReportingContext.pageContext.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  return v1;
}

void Actions.MetricsReportingContext.pageContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.MetricsReportingContext(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

double Actions.MetricsReportingContext.locations.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);

  return result;
}

void Actions.MetricsReportingContext.locations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 28);

  *(v1 + v3) = a1;
}

double Actions.MetricsReportingContext.impressions.getter()
{
  type metadata accessor for Actions.MetricsReportingContext(0);

  return result;
}

void Actions.MetricsReportingContext.impressions.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Actions.MetricsReportingContext(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t Actions.MetricsReportingContext.sharedListeningContext.setter(char a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for Actions.MetricsReportingContext(0);
  v8 = v3 + *(result + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3;
  return result;
}

uint64_t Actions.MetricsReportingContext.init(actionContext:page:pageContext:locations:impressions:sharedListeningContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = type metadata accessor for Actions.MetricsReportingContext(0);
  v17 = v16[5];
  v18 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[6]];
  v21 = v16[8];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_1008A7F84(a3, &a9[v17]);
  *v20 = a4;
  *(v20 + 1) = a5;
  *&a9[v19] = a6;
  *&a9[v21] = a7;
  v23 = &a9[v16[9]];
  *v23 = a8;
  *(v23 + 1) = a10;
  *(v23 + 2) = a11;
  return result;
}

uint64_t static Actions.reportClickEvent(targetIdentifier:targetType:actionType:actionURL:actionDetails:reportingContext:)(unsigned int (*a1)(uint64_t, uint64_t, int *), uint64_t a2, int a3, int a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int16 a9, uint64_t *a10)
{
  v87 = a7;
  v88 = a8;
  v86 = a6;
  LODWORD(v89) = a4;
  LODWORD(v78) = a3;
  v84 = a2;
  v72 = a1;
  v85 = a9;
  sub_10010FC20(&qword_1011A7F08, &unk_100EECDE0);
  __chkstk_darwin();
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v72 - v12;
  __chkstk_darwin();
  v77 = &v72 - v13;
  __chkstk_darwin();
  v76 = &v72 - v14;
  __chkstk_darwin();
  v75 = &v72 - v15;
  __chkstk_darwin();
  v73 = &v72 - v16;
  __chkstk_darwin();
  v18 = (&v72 - v17);
  __chkstk_darwin();
  v20 = &v72 - v19;
  sub_10010FC20(&qword_1011A77F0, &unk_100EEAA20);
  __chkstk_darwin();
  v74 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v72 - v22;
  v24 = type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v72 - v27;
  sub_1000089F8(a5, v23, &qword_1011A77F0, &unk_100EEAA20);
  v28 = type metadata accessor for Actions.MetricsReportingContext(0);
  v29 = *(a10 + v28[7]);
  v31 = *a10;
  v30 = a10[1];
  sub_1000089F8(a10 + v28[5], v20, &qword_1011A7F08, &unk_100EECDE0);
  v79 = v28;
  v32 = v28[8];
  v83 = a10;
  v33 = *(a10 + v32);
  v26[v24[19]] = 0;
  v34 = &v26[v24[20]];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = v84;
  *v26 = v72;
  *(v26 + 1) = v35;
  v26[16] = v78;
  v26[17] = v89;
  sub_10003D17C(v23, &v26[v24[7]], &qword_1011A77F0, &unk_100EEAA20);
  *&v26[v24[8]] = v29;
  v36 = &v26[v24[9]];
  *v36 = v31;
  v36[1] = v30;
  v37 = &v26[v24[10]];
  v38 = v87;
  *v37 = v86;
  *(v37 + 1) = v38;
  *(v37 + 2) = v88;
  *(v37 + 12) = v85;
  v78 = v20;
  sub_1000089F8(v20, v18, &qword_1011A7F08, &unk_100EECDE0);
  v39 = type metadata accessor for MetricsEvent.Page(0);
  v40 = *(v39 - 1);
  v72 = *(v40 + 48);
  v89 = v40 + 48;
  if (v72(v18, 1, v39) == 1)
  {

    sub_100633490(v31, v30);

    sub_1005EA588(v86, v87, v88, v85);
    sub_1000095E8(v18, &qword_1011A7F08, &unk_100EECDE0);
    v41 = v33;
    v42 = 0;
    v43 = 0;
  }

  else
  {
    v44 = v33;
    v42 = *v18;
    v43 = v18[1];

    sub_100633490(v31, v30);

    sub_1005EA588(v86, v87, v88, v85);

    sub_100561920(v18, type metadata accessor for MetricsEvent.Page);
    v41 = v44;
  }

  v45 = &v26[v24[12]];
  *v45 = v42;
  *(v45 + 1) = v43;
  v46 = v78;
  v47 = v73;
  sub_1000089F8(v78, v73, &qword_1011A7F08, &unk_100EECDE0);
  v48 = v72;
  v49 = v72(v47, 1, v39);
  v50 = v77;
  if (v49 == 1)
  {
    sub_1000095E8(v47, &qword_1011A7F08, &unk_100EECDE0);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v51 = *(v47 + 16);
    v52 = *(v47 + 24);

    sub_100561920(v47, type metadata accessor for MetricsEvent.Page);
  }

  v53 = &v26[v24[13]];
  *v53 = v51;
  *(v53 + 1) = v52;
  v54 = v75;
  v55 = v76;
  sub_1000089F8(v46, v75, &qword_1011A7F08, &unk_100EECDE0);
  if (v48(v54, 1, v39) == 1)
  {
    sub_1000095E8(v54, &qword_1011A7F08, &unk_100EECDE0);
    v56 = type metadata accessor for URL();
    v57 = v74;
    (*(*(v56 - 8) + 56))(v74, 1, 1, v56);
  }

  else
  {
    v58 = v74;
    sub_1000089F8(v54 + v39[6], v74, &qword_1011A77F0, &unk_100EEAA20);
    v59 = v54;
    v57 = v58;
    sub_100561920(v59, type metadata accessor for MetricsEvent.Page);
  }

  v60 = v80;
  sub_10003D17C(v57, &v26[v24[14]], &qword_1011A77F0, &unk_100EEAA20);
  sub_1000089F8(v46, v55, &qword_1011A7F08, &unk_100EECDE0);
  if (v48(v55, 1, v39) == 1)
  {
    sub_1000095E8(v55, &qword_1011A7F08, &unk_100EECDE0);
    v61 = 0;
  }

  else
  {
    v61 = *(v55 + v39[7]);

    sub_100561920(v55, type metadata accessor for MetricsEvent.Page);
  }

  *&v26[v24[15]] = v61;
  sub_1000089F8(v46, v50, &qword_1011A7F08, &unk_100EECDE0);
  if (v48(v50, 1, v39) == 1)
  {
    sub_1000095E8(v50, &qword_1011A7F08, &unk_100EECDE0);
    v62 = 1;
  }

  else
  {
    v62 = *(v50 + v39[9]);
    sub_100561920(v50, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[16]] = v62;
  sub_1000089F8(v46, v60, &qword_1011A7F08, &unk_100EECDE0);
  if (v48(v60, 1, v39) == 1)
  {
    sub_1000095E8(v60, &qword_1011A7F08, &unk_100EECDE0);
    v63 = 0;
    v64 = 0;
  }

  else
  {
    v65 = (v60 + v39[8]);
    v63 = *v65;
    v64 = v65[1];

    sub_100561920(v60, type metadata accessor for MetricsEvent.Page);
  }

  v66 = &v26[v24[18]];
  *v66 = v63;
  *(v66 + 1) = v64;
  v67 = v82;
  sub_10003D17C(v46, v82, &qword_1011A7F08, &unk_100EECDE0);
  if (v48(v67, 1, v39) == 1)
  {
    sub_1000095E8(v67, &qword_1011A7F08, &unk_100EECDE0);
    v69 = 2;
  }

  else
  {
    v69 = *(v67 + v39[11]);
    sub_100561920(v67, type metadata accessor for MetricsEvent.Page);
  }

  v26[v24[17]] = v69;
  *&v26[v24[11]] = v41;
  v70 = v81;
  sub_1008A8DAC(v26, v81, v68);
  if (qword_1011A6810 != -1)
  {
    swift_once();
  }

  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v70, *(v83 + v79[6]), *(v83 + v79[6] + 8), *(v83 + v79[9]), *(v83 + v79[9] + 8), *(v83 + v79[9] + 16));
  return sub_100561920(v70, type metadata accessor for MetricsEvent.Click);
}

uint64_t sub_1008A8DAC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MetricsEvent.Click(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6008, v2);

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

uint64_t MetricsEvent.Click.ActionDetails.Key.DestinationType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x7473696C79616C70;
  }

  else
  {
    return 0x7972617262696CLL;
  }
}

uint64_t sub_1008A8E9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7473696C79616C70;
  }

  else
  {
    v3 = 0x7972617262696CLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7473696C79616C70;
  }

  else
  {
    v5 = 0x7972617262696CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1008A8F44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1008A8FC8(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1008A9038(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1008A90B8(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6008, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1008A9118(uint64_t *a1@<X8>)
{
  v2 = 0x7972617262696CLL;
  if (*v1)
  {
    v2 = 0x7473696C79616C70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL MetricsEvent.Click.ActionDetails.Key.PlayType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6058, v2);

  return v3 != 0;
}

Swift::Int sub_1008A91C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1008A9248(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1008A92A4(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C6090, *a1);

  *a2 = v3 != 0;
}

uint64_t MetricsEvent.Click.ActionDetails.Key.NavigationType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6D75626C41;
  v2 = 0x7473696C79616C50;
  if (a1 != 2)
  {
    v2 = 0x434174726F706552;
  }

  if (a1)
  {
    v1 = 0x747369747241;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_1008A93B0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1008A9478(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1008A952C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1008A95F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyO14NavigationTypeO8rawValueAKSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_1008A9620(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6D75626C41;
  v4 = 0xE800000000000000;
  v5 = 0x7473696C79616C50;
  if (*v1 != 2)
  {
    v5 = 0x434174726F706552;
    v4 = 0xEE006E7265636E6FLL;
  }

  if (*v1)
  {
    v3 = 0x747369747241;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void *MetricsEvent.Click.ActionDetails.init(_:)(uint64_t a1)
{
  v1 = sub_1008AC260(a1);

  return v1;
}

uint64_t MusicItem.metricsContentType.getter(uint64_t a1)
{
  v3 = __chkstk_darwin();
  (*(v5 + 16))(v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1, v3);
  sub_10010FC20(&qword_1011A7F10, &qword_100EECDF0);
  if (swift_dynamicCast())
  {
    sub_100059A8C(v21, v23);
    v6 = v24;
    v7 = v25;
    sub_10000954C(v23, v24);
    v8 = (*(v7 + 8))(v6, v7);
    sub_10000959C(v23);
    return v8;
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1000095E8(v21, &qword_1011A7F18, &qword_100EECDF8);
    v23[0] = swift_getDynamicType();
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_1005442F0(1, v10, v11);
    v13 = Substring.lowercased()();

    v14 = sub_1008AC654(1uLL, v10, v12);
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21[0] = v13;
    v23[0] = v14;
    v23[1] = v16;
    v23[2] = v18;
    v24 = v20;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    return *&v21[0];
  }
}

uint64_t MusicItem.metricsTargetIdentifier.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin();
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v7 = *(v3 + 16);
  v7(v17 - v8, v1, a1, v6);
  sub_10010FC20(&qword_1011A7F10, &qword_100EECDF0);
  if (!swift_dynamicCast())
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_1000095E8(v17, &qword_1011A7F18, &qword_100EECDF8);
    (v7)(v5, v1, a1);
    sub_10010FC20(&qword_1011A7F28, &unk_100EECE00);
    if (swift_dynamicCast())
    {
      v12 = *(&v20 + 1);
      v13 = v21;
      sub_10000954C(&v19, *(&v20 + 1));
      v11 = (*(v13 + 8))(v12, v13);
      if (v14)
      {
        goto LABEL_5;
      }

      sub_10000959C(&v19);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      sub_1000095E8(&v19, &unk_1011AD930, &qword_100EEEF90);
    }

    return 0x497972617262694CLL;
  }

  sub_100059A8C(v17, &v19);
  v9 = *(&v20 + 1);
  v10 = v21;
  sub_10000954C(&v19, *(&v20 + 1));
  v11 = (*(v10 + 16))(v9, v10);
LABEL_5:
  v15 = v11;
  sub_10000959C(&v19);
  return v15;
}

uint64_t sub_1008A9B80()
{
  v0 = type metadata accessor for UploadedVideo();
  v89 = *(v0 - 8);
  v90 = v0;
  __chkstk_darwin();
  v88 = &v88 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for UploadedAudio();
  v92 = *(v2 - 8);
  v93 = v2;
  __chkstk_darwin();
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v95 = *(v4 - 8);
  v96 = v4;
  __chkstk_darwin();
  v94 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicMovie();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v99 = *(v10 - 8);
  __chkstk_darwin();
  v98 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Song();
  v97 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Playlist.Entry.InternalItem();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  Playlist.Entry.internalItem.getter();
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v16 + 96))(v18, v15);
    (*(v7 + 32))(v9, v18, v6);
    v100 = v6;
    sub_10010FC20(&qword_1011A8060, &qword_100EED168);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    sub_1005442F0(1, v20, v21);
    v23 = Substring.lowercased()();

    v24 = sub_1008AC654(1uLL, v20, v22);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v104 = v23;
    v100 = v24;
    v101 = v26;
    v102 = v28;
    v103 = v30;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v7 + 8))(v9, v6);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v16 + 96))(v18, v15);
    v33 = v98;
    v32 = v99;
    (*(v99 + 32))(v98, v18, v10);
    v100 = v10;
    sub_10010FC20(&qword_1011A8030, &qword_100EED138);
    v34 = String.init<A>(describing:)();
    v36 = v35;
    sub_1005442F0(1, v34, v35);
    v37 = Substring.lowercased()();

    v38 = sub_1008AC654(1uLL, v34, v36);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v104 = v37;
    v100 = v38;
    v101 = v40;
    v102 = v42;
    v103 = v44;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v32 + 8))(v33, v10);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v16 + 96))(v18, v15);
    v45 = v97;
    (*(v97 + 32))(v14, v18, v12);
    v100 = v12;
    sub_10010FC20(&qword_1011A8020, &qword_100EED128);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    sub_1005442F0(1, v46, v47);
    v49 = Substring.lowercased()();

    v50 = sub_1008AC654(1uLL, v46, v48);
    v52 = v51;
    v54 = v53;
    v56 = v55;

    v104 = v49;
    v100 = v50;
    v101 = v52;
    v102 = v54;
    v103 = v56;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v45 + 8))(v14, v12);
  }

  else if (v19 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v16 + 96))(v18, v15);
    v58 = v94;
    v57 = v95;
    v59 = v96;
    (*(v95 + 32))(v94, v18, v96);
    v100 = v59;
    sub_10010FC20(&qword_1011A8058, &qword_100EED160);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    sub_1005442F0(1, v60, v61);
    v63 = Substring.lowercased()();

    v64 = sub_1008AC654(1uLL, v60, v62);
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v104 = v63;
    v100 = v64;
    v101 = v66;
    v102 = v68;
    v103 = v70;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v57 + 8))(v58, v59);
  }

  else
  {
    if (v19 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
    {
      (*(v16 + 96))(v18, v15);
      v72 = v91;
      v71 = v92;
      v73 = v93;
      (*(v92 + 32))(v91, v18, v93);
      v100 = v73;
      v74 = &unk_1011A8050;
      v75 = &unk_100EED158;
    }

    else
    {
      if (v19 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        (*(v16 + 8))(v18, v15);
        return 1735290739;
      }

      (*(v16 + 96))(v18, v15);
      v72 = v88;
      v71 = v89;
      v73 = v90;
      (*(v89 + 32))(v88, v18, v90);
      v100 = v73;
      v74 = &unk_1011A8048;
      v75 = &unk_100EED150;
    }

    sub_10010FC20(v74, v75);
    v76 = String.init<A>(describing:)();
    v78 = v77;
    sub_1005442F0(1, v76, v77);
    v79 = Substring.lowercased()();

    v80 = sub_1008AC654(1uLL, v76, v78);
    v82 = v81;
    v84 = v83;
    v86 = v85;

    v104 = v79;
    v100 = v80;
    v101 = v82;
    v102 = v84;
    v103 = v86;
    sub_1008AC704();
    String.append<A>(contentsOf:)();

    countAndFlagsBits = v104._countAndFlagsBits;
    (*(v71 + 8))(v72, v73);
  }

  return countAndFlagsBits;
}