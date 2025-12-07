uint64_t sub_103D74()
{
  result = *(v0 + 127);
  if (result == 6)
  {
    result = sub_103DA0();
    *(v0 + 127) = result;
  }

  return result;
}

uint64_t sub_103DA0()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_142688();
  if (!v3)
  {
    return 5;
  }

  sub_10152C(0xD000000000000010, 0x800000000018E430, v3, v2);

  v4 = sub_169724();
  if (sub_9E2C(v2, 1, v4) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
    return 5;
  }

  sub_169704();
  v7 = v6;
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = 5;
  if (v7)
  {
    v8 = sub_83BDC();
    if (v8 == 6)
    {
      return 5;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

uint64_t sub_103F00()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_103F34();
    *(v0 + 128) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_103F34()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  sub_142688();
  if (!v3)
  {
    goto LABEL_6;
  }

  sub_10152C(0xD000000000000011, 0x800000000018E7D0, v3, v2);

  v4 = sub_169724();
  if (sub_9E2C(v2, 1, v4) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
LABEL_6:
    v9 = 1;
    return v9 & 1;
  }

  v5 = sub_169704();
  v7 = v6;
  (*(*(v4 - 8) + 8))(v2, v4);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = sub_83D50(v5, v7);
  v9 = (v8 == 2) | v8;
  return v9 & 1;
}

uint64_t sub_104098()
{
  result = *(v0 + 129);
  if (result == 3)
  {
    result = sub_1040C4();
    *(v0 + 129) = result;
  }

  return result;
}

uint64_t sub_1040C4()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_1416D0();
  if (!v3)
  {
    return 2;
  }

  sub_10152C(0xD000000000000016, 0x800000000018E7B0, v3, v2);

  v4 = sub_169724();
  if (sub_9E2C(v2, 1, v4) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
    return 2;
  }

  sub_169704();
  v7 = v6;
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = 2;
  if (v7)
  {
    v8 = sub_83CD0();
    if (v8 == 3)
    {
      return 2;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

uint64_t sub_104224()
{
  v1 = *(v0 + 130);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_104258();
    *(v0 + 130) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_104258()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  sub_142688();
  if (!v3)
  {
    goto LABEL_6;
  }

  sub_10152C(0x746553656E6F6870, 0xEC000000676E6974, v3, v2);

  v4 = sub_169724();
  if (sub_9E2C(v2, 1, v4) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
LABEL_6:
    v9 = 1;
    return v9 & 1;
  }

  v5 = sub_169704();
  v7 = v6;
  (*(*(v4 - 8) + 8))(v2, v4);
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = sub_83D8C(v5, v7);
  v9 = (v8 == 2) | v8;
  return v9 & 1;
}

uint64_t sub_1043C0()
{
  result = *(v0 + 131);
  if (result == 3)
  {
    result = sub_1043EC();
    *(v0 + 131) = result;
  }

  return result;
}

uint64_t sub_1043EC()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_142688();
  if (!v3)
  {
    return 2;
  }

  sub_10152C(0xD000000000000017, 0x800000000017EDC0, v3, v2);

  v4 = sub_169724();
  if (sub_9E2C(v2, 1, v4) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
    return 2;
  }

  sub_169704();
  v7 = v6;
  (*(*(v4 - 8) + 8))(v2, v4);
  v5 = 2;
  if (v7)
  {
    v8 = sub_82D24();
    if (v8 == 3)
    {
      return 2;
    }

    else
    {
      return v8;
    }
  }

  return v5;
}

uint64_t sub_1045B0(uint64_t a1)
{
  v2 = *(v1 + 133);
  if (v2 == 2)
  {
    v3 = sub_104B2C();
    sub_96E4(29, v3);
    sub_48350();
    *(v1 + 133) = 0;
  }

  return v2 & 1;
}

uint64_t sub_104604()
{
  v1 = *(v0 + 134);
  if (v1 == 2)
  {
    LOBYTE(v1) = 115;
    v2 = sub_103A44();
    sub_82168(v2, v3, v4);
    sub_93B94();
    v7 = v7 && v6 == 0xED00006572757373;
    if (v7)
    {

      LOBYTE(v1) = 1;
    }

    else
    {
      sub_93AB0(v5);
      sub_93DFC();
    }

    *(v0 + 134) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_104754()
{
  v1 = *(v0 + 137);
  if (v1 == 2)
  {
    sub_104788();
    *(v0 + 137) = v1 & 1;
  }

  return v1 & 1;
}

void sub_104788()
{
  v0 = sub_169724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1697C4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1416D0();
  if (!v8)
  {
    return;
  }

  v25 = *(v8 + 16);
  if (!v25)
  {
LABEL_25:

    return;
  }

  v9 = 0;
  v31 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v29 = v4;
  v30 = v5 + 16;
  v33 = v1 + 16;
  v10 = (v1 + 8);
  v26 = (v5 + 8);
  v27 = v8;
  v28 = v7;
  v24 = v5;
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      goto LABEL_30;
    }

    v11 = *(v5 + 72);
    v32 = v9;
    (*(v5 + 16))(v7, v31 + v11 * v9, v4);
    v12 = sub_169764();
    v13 = v12;
    v14 = *(v12 + 16);
    if (v14)
    {
      break;
    }

LABEL_24:
    v9 = v32 + 1;

    v7 = v28;
    v4 = v29;
    (*v26)(v28, v29);
    v5 = v24;
    v8 = v27;
    if (v9 == v25)
    {
      goto LABEL_25;
    }
  }

  v15 = 0;
  v16 = v12 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  while (v15 < *(v13 + 16))
  {
    (*(v1 + 16))(v3, v16 + *(v1 + 72) * v15, v0);
    if (sub_169714() == 0x656D614E726163 && v17 == 0xE700000000000000)
    {
    }

    else
    {
      v19 = sub_16AE54();

      if ((v19 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v20 = sub_169704();
    if (!v21)
    {
LABEL_22:
      (*v10)(v3, v0);
      goto LABEL_23;
    }

    if (v20 == 0x646E617242726163 && v21 == 0xE800000000000000)
    {

      (*v10)(v3, v0);
LABEL_27:

      (*v26)(v28, v29);
      return;
    }

    v23 = sub_16AE54();

    (*v10)(v3, v0);
    if (v23)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v14 == ++v15)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

void *sub_104B2C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_104B8C();
    *(v0 + 144) = v1;
  }

  return v1;
}

void *sub_104B8C()
{
  sub_1416D0();
  if (v0)
  {
    sub_101F70(v0);
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_104BF4()
{
  v1 = *(v0 + 152);
  if (v1 == 2)
  {
    sub_104C28();
    *(v0 + 152) = v1 & 1;
  }

  return v1 & 1;
}

void sub_104C28()
{
  v0 = sub_169724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1697C4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_143214(v6);
  if (!v9)
  {
    return;
  }

  v27 = *(v9 + 16);
  if (!v27)
  {
LABEL_25:

    return;
  }

  v10 = 0;
  v33 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v31 = v4;
  v32 = v5 + 16;
  v11 = (v1 + 8);
  v35 = 0x80000000001863C0;
  v36 = v1 + 16;
  v28 = (v5 + 8);
  v29 = v9;
  v30 = v8;
  v26 = v5;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      goto LABEL_30;
    }

    v12 = *(v5 + 72);
    v34 = v10;
    (*(v5 + 16))(v8, v33 + v12 * v10, v4);
    v13 = sub_169764();
    v14 = v13;
    v15 = *(v13 + 16);
    if (v15)
    {
      break;
    }

LABEL_24:
    v10 = v34 + 1;

    v8 = v30;
    v4 = v31;
    (*v28)(v30, v31);
    v5 = v26;
    v9 = v29;
    if (v10 == v27)
    {
      goto LABEL_25;
    }
  }

  v16 = 0;
  v17 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  while (v16 < *(v14 + 16))
  {
    (*(v1 + 16))(v3, v17 + *(v1 + 72) * v16, v0);
    if (sub_169714() == 0x656D614E707061 && v18 == 0xE700000000000000)
    {
    }

    else
    {
      v20 = sub_16AE54();

      if ((v20 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v21 = sub_169704();
    if (!v22)
    {
LABEL_22:
      (*v11)(v3, v0);
      goto LABEL_23;
    }

    if (v21 == 0xD000000000000016 && v22 == v35)
    {

      (*v11)(v3, v0);
LABEL_27:

      (*v28)(v30, v31);
      return;
    }

    v24 = sub_16AE54();

    (*v11)(v3, v0);
    if (v24)
    {
      goto LABEL_27;
    }

LABEL_23:
    if (v15 == ++v16)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_104FD4()
{
  result = *(v0 + 153);
  if (result == 13)
  {
    result = sub_105000();
    *(v0 + 153) = result;
  }

  return result;
}

uint64_t sub_105000()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  if (sub_103904())
  {
    return 0;
  }

  sub_1416D0();
  if (!v4)
  {
    return 12;
  }

  sub_10152C(0x5474616553726163, 0xEB00000000657079, v4, v2);

  v5 = sub_169724();
  if (sub_9E2C(v2, 1, v5) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
    return 12;
  }

  sub_169704();
  v7 = v6;
  (*(*(v5 - 8) + 8))(v2, v5);
  v3 = 12;
  if (v7)
  {
    v8 = sub_82A84();
    if (v8 == 13)
    {
      return 12;
    }

    else
    {
      return v8;
    }
  }

  return v3;
}

uint64_t sub_105174()
{
  v1 = *(v0 + 154);
  if (v1 == 2)
  {
    v2 = sub_103A44();
    sub_82168(v2, v3, v4);
    v6 = v5;
    sub_10C060();
    if (v7 == 0xD000000000000011 && v9 == v8)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_10C29C(v7, v6, 17, v9);
    }

    *(v0 + 154) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1051FC()
{
  v1 = *(v0 + 155);
  if (v1 == 2)
  {
    if (sub_105294() == 2)
    {
      LOBYTE(v1) = 108;
      v2 = sub_103A44();
      sub_82168(v2, v3, v4);
      sub_93B94();
      v7 = v7 && v6 == 0xEE006E6F6974616CLL;
      if (!v7)
      {
        sub_93AB0(v5);
        sub_93DFC();
LABEL_10:
        *(v0 + 155) = v1 & 1;
        return v1 & 1;
      }
    }

    LOBYTE(v1) = 1;
    goto LABEL_10;
  }

  return v1 & 1;
}

uint64_t sub_105294()
{
  result = *(v0 + 156);
  if (result == 3)
  {
    result = sub_1052C0();
    *(v0 + 156) = result;
  }

  return result;
}

uint64_t sub_1052C0()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_169724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_142688();
  if (!v7)
  {
    return 2;
  }

  sub_10152C(0xD000000000000015, 0x800000000017EDA0, v7, v2);

  if (sub_9E2C(v2, 1, v3) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
    return 2;
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = sub_169704();
  if (!v9)
  {
    (*(v4 + 8))(v6, v3);
    return 2;
  }

  v10 = sub_82DBC(v8, v9);
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_10549C(uint64_t a1)
{
  v2 = *(v1 + 157);
  if (v2 == 2)
  {
    LOBYTE(v2) = sub_105AC0() != 5;
    *(v1 + 157) = v2;
  }

  return v2 & 1;
}

void *sub_1054D4()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v1 = sub_105534();
    *(v0 + 160) = v1;
  }

  return v1;
}

void *sub_105534()
{
  v0 = sub_169724();
  v47 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_142688();
  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v46 = v3;
    v48 = _swiftEmptyArrayStorage;
    sub_146878(0, 13, 0);
    v5 = 0;
    v6 = v48;
    v7 = 0x800000000017EE80;
    v8 = 0x800000000017EE60;
    v9 = 0x800000000017EE40;
    v10 = 0x800000000017EE20;
    v11 = 0x800000000017EE00;
    v12 = 0x800000000017EDE0;
    v13 = 0x800000000017EDC0;
    v14 = 0x800000000017EDA0;
    v15 = 0xD000000000000015;
    do
    {
      v16 = 0xE700000000000000;
      v17 = 0x656D614E726163;
      switch(*(&off_1D24D8 + v5 + 32))
      {
        case 1:
          v17 = 0xD000000000000017;
          v16 = v13;
          break;
        case 2:
          v17 = 0xD000000000000017;
          v16 = v12;
          break;
        case 3:
          v17 = 0xD000000000000018;
          v16 = v11;
          break;
        case 4:
          v17 = 0xD000000000000018;
          v16 = v10;
          break;
        case 5:
          v17 = 0xD000000000000017;
          v16 = v9;
          break;
        case 6:
          v17 = 0xD000000000000019;
          v16 = v8;
          break;
        case 7:
          v17 = 0xD000000000000010;
          v16 = v7;
          break;
        case 8:
          break;
        case 9:
          v16 = 0xEB00000000657079;
          v17 = 0x5474616553726163;
          break;
        case 0xA:
          v17 = 0x6D6572757361656DLL;
          v16 = 0xEF74696E55746E65;
          break;
        case 0xB:
          v17 = 0x74617265706D6574;
          v16 = 0xEF74696E55657275;
          break;
        case 0xC:
          v17 = 0x4D746E6556726163;
          v16 = 0xEB0000000065646FLL;
          break;
        default:
          v17 = v15;
          v16 = v14;
          break;
      }

      v48 = v6;
      v19 = *(v6 + 16);
      v18 = *(v6 + 24);
      if (v19 >= v18 >> 1)
      {
        v39 = v13;
        v40 = v12;
        v37 = v15;
        v38 = v14;
        v44 = v8;
        v45 = v7;
        v42 = v10;
        v43 = v9;
        v41 = v11;
        sub_146878(v18 > 1, v19 + 1, 1);
        v15 = v37;
        v14 = v38;
        v13 = v39;
        v12 = v40;
        v11 = v41;
        v10 = v42;
        v9 = v43;
        v8 = v44;
        v7 = v45;
        v6 = v48;
      }

      ++v5;
      *(v6 + 16) = v19 + 1;
      v20 = v6 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
    }

    while (v5 != 13);
    v21 = sub_1017A4(v6, v46);

    v22 = v21[2];
    if (v22)
    {
      v23 = v47 + 16;
      v47 = *(v47 + 16);
      v24 = *(v23 + 64);
      v45 = v21;
      v25 = v21 + ((v24 + 32) & ~v24);
      v26 = *(v23 + 56);
      v27 = (v23 - 8);
      v4 = _swiftEmptyArrayStorage;
      v46 = v0;
      do
      {
        (v47)(v2, v25, v0);
        v28 = sub_169714();
        v30 = v29;
        v31._rawValue = &off_1D2380;
        v49._countAndFlagsBits = v28;
        v49._object = v30;
        v32 = sub_16ADE4(v31, v49);

        if (v32 >= 0xD)
        {
          (*v27)(v2, v0);
        }

        else
        {
          (*v27)(v2, v0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_108D9C();
            v4 = v34;
          }

          v33 = v4[2];
          if (v33 >= v4[3] >> 1)
          {
            sub_108D9C();
            v4 = v35;
          }

          v4[2] = v33 + 1;
          *(v4 + v33 + 32) = v32;
          v0 = v46;
        }

        v25 += v26;
        --v22;
      }

      while (v22);
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

unint64_t sub_105AC0()
{
  result = *(v0 + 168);
  if (result == 6)
  {
    result = sub_105AEC();
    *(v0 + 168) = result;
  }

  return result;
}

unint64_t sub_105AEC()
{
  v0 = sub_5758(&qword_1ED140, &qword_178228);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_169724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_142688();
  if (!v7)
  {
    return 5;
  }

  sub_10152C(0x4D746E6556726163, 0xEB0000000065646FLL, v7, v2);

  if (sub_9E2C(v2, 1, v3) == 1)
  {
    sub_109A0(v2, &qword_1ED140, &qword_178228);
    return 5;
  }

  (*(v4 + 32))(v6, v2, v3);
  sub_169704();
  if (!v8)
  {
    (*(v4 + 8))(v6, v3);
    return 5;
  }

  v9 = sub_82DFC();
  (*(v4 + 8))(v6, v3);
  return v9;
}

void sub_105D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_10C274();
  a17 = v18;
  a18 = v19;
  v20 = sub_1697C4();
  sub_9F48();
  v22 = v21;
  __chkstk_darwin(v23);
  v25 = &a9 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_5758(&unk_1EC980, &qword_178180);
  v27 = sub_D414(v26);
  __chkstk_darwin(v27);
  v29 = &a9 - v28;
  v30 = sub_16A664();
  v32 = v31;
  sub_106294();
  if (sub_9E2C(v29, 1, v20))
  {

    sub_109A0(v29, &unk_1EC980, &qword_178180);
  }

  else
  {
    (*(v22 + 16))(v25, v29, v20);
    sub_109A0(v29, &unk_1EC980, &qword_178180);
    sub_A867C(v30, v32);

    (*(v22 + 8))(v25, v20);
  }

  sub_10C288();
}

void sub_106080()
{
  sub_10C274();
  sub_10BCAC();
  if (v1)
  {
    sub_1060DC();
    sub_10C06C();
    *(v0 + 256) = v2;
    *(v0 + 264) = v3;

    sub_10C234();
  }

  sub_10BBF8();
  sub_10C288();
}

uint64_t sub_1060DC()
{
  v0 = sub_5758(&qword_1E8FA8, &qword_1720D8);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_169AD4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14330C(v5);
  if (!v8)
  {
    sub_5370(v2, 1, 1, v3);
    goto LABEL_5;
  }

  sub_169AA4();

  if (sub_9E2C(v2, 1, v3) == 1)
  {
LABEL_5:
    sub_109A0(v2, &qword_1E8FA8, &qword_1720D8);
    return 0;
  }

  (*(v4 + 32))(v7, v2, v3);
  v9 = sub_169AC4();
  (*(v4 + 8))(v7, v3);
  return v9;
}

void sub_106294()
{
  sub_10C274();
  v2 = v1;
  v3 = sub_10B98();
  v5 = sub_5758(v3, v4);
  v6 = sub_D414(v5);
  __chkstk_darwin(v6);
  sub_A128();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  v13 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___preferredRadioEntitySpan;
  swift_beginAccess();
  sub_D4DC4(v0 + v13, v12, &qword_1ED148, &unk_178230);
  v14 = sub_5758(&unk_1EC980, &qword_178180);
  if (sub_9E2C(v12, 1, v14) == 1)
  {
    sub_109A0(v12, &qword_1ED148, &unk_178230);
    sub_106420(v0, v2);
    sub_D4DC4(v2, v9, &unk_1EC980, &qword_178180);
    sub_5370(v9, 0, 1, v14);
    swift_beginAccess();
    sub_10BA1C(v9, v0 + v13);
    swift_endAccess();
  }

  else
  {
    sub_10BA8C(v12, v2);
  }

  sub_10C288();
}

uint64_t sub_106420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v4 = sub_169724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1697C4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v48 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v39 - v12;
  v13 = a1;
  v14 = sub_106A80();
  v15 = 0;
  v46 = v14[2];
  v44 = v9 + 16;
  v55 = v5 + 16;
  v54 = IdentifierNamespaceRadioStationChannel;
  v16 = (v5 + 8);
  v47 = (v9 + 32);
  v45 = v9;
  v40 = (v9 + 8);
  v49 = _swiftEmptyArrayStorage;
  v42 = v8;
  v43 = a1;
  v41 = v14;
LABEL_2:
  if (v15 != v46)
  {
    if (v15 < v14[2])
    {
      v51 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v50 = *(v45 + 72);
      v13 = v53;
      (*(v45 + 16))(v53, v14 + v51 + v50 * v15, v8);
      v52 = v15 + 1;
      v15 = sub_169764();
      v2 = 0;
      v17 = *(v15 + 16);
      while (1)
      {
        if (v17 == v2)
        {
          v8 = v42;
          (*v40)(v53, v42);

          a1 = v43;
          goto LABEL_20;
        }

        if (v2 >= *(v15 + 16))
        {
          break;
        }

        (*(v5 + 16))(v7, v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v2, v4);
        v18 = sub_169714();
        v20 = v19;
        v21 = sub_16A664();
        v13 = v22;
        if (v18 == v21 && v20 == v22)
        {

          (*v16)(v7, v4);
LABEL_15:

          v25 = *v47;
          v8 = v42;
          (*v47)(v48, v53, v42);
          v13 = v49;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_146820(0, *(v13 + 16) + 1, 1);
            v13 = v56;
          }

          a1 = v43;
          v2 = *(v13 + 16);
          v27 = *(v13 + 24);
          if (v2 >= v27 >> 1)
          {
            sub_146820(v27 > 1, v2 + 1, 1);
            v13 = v56;
          }

          *(v13 + 16) = v2 + 1;
          v49 = v13;
          v25((v13 + v51 + v2 * v50), v48, v8);
LABEL_20:
          v14 = v41;
          v15 = v52;
          goto LABEL_2;
        }

        ++v2;
        v24 = sub_16AE54();

        (*v16)(v7, v4);
        if (v24)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  v2 = 0xD000000000000018;

  v5 = v49;
  if (v49[2])
  {
    v15 = "eChange: {\n        ";
    v4 = "ommandsNlv4Task.swift";
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_16ACF4(97);
    v58._countAndFlagsBits = 0xD00000000000005FLL;
    v58._object = 0x800000000018E6F0;
    sub_16A744(v58);
    v59._countAndFlagsBits = sub_16A7E4();
    sub_16A744(v59);

    v13 = v56;
    v16 = v57;
    if (qword_1E58E8 == -1)
    {
LABEL_23:
      v28 = sub_16A584();
      sub_9DA0(v28, qword_1E65C0);
      v29 = sub_16A9A4();
      sub_386D8(v29, 0x800uLL, v2 + 93, v15 | 0x8000000000000000, 0xD000000000000018, (v4 | 0x8000000000000000), 394, v13, v16);

      sub_8A148(v5, v39);
    }

LABEL_29:
    swift_once();
    goto LABEL_23;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  sub_16ACF4(83);
  v60._countAndFlagsBits = 0xD000000000000051;
  v60._object = 0x800000000018E750;
  sub_16A744(v60);
  v31 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch;

  v32 = sub_16A7E4();
  v34 = v33;

  v61._countAndFlagsBits = v32;
  v61._object = v34;
  sub_16A744(v61);

  v36 = v56;
  v35 = v57;
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v37 = sub_16A584();
  sub_9DA0(v37, qword_1E65C0);
  v38 = sub_16A9A4();
  sub_386D8(v38, 0x800uLL, 0xD000000000000075, 0x800000000018E650, 0xD000000000000018, 0x800000000018E6D0, 397, v36, v35);

  return sub_8A148(*(a1 + v31), v39);
}

void *sub_106A80()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch;
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch))
  {
    v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch);
  }

  else
  {
    v3 = sub_106AF8();
    v2 = sub_A8858(v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

void *sub_106AF8()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans;
  if (*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans))
  {
    v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans);
  }

  else
  {
    sub_143400(0);
    if (v3)
    {
      v2 = v3;
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_106BB4(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    a2();
    if (v5 && (v6 = , sub_105FB8(v6), v7))
    {

      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = 0;
    }

    *(v2 + v3) = v4;
  }

  return v4 & 1;
}

unint64_t sub_106C38()
{
  v2 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberDefinedValue;
  result = *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberDefinedValue);
  if (result == 6)
  {
    sub_10C110();
    sub_143A60();
    if (v4)
    {
      result = sub_83AF8();
    }

    else
    {
      result = 5;
    }

    *(v0 + v2) = result;
  }

  return result;
}

void *sub_106CAC(uint64_t *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v4 = *a1;
  v5 = *(v2 + *a1);
  v6 = v5;
  if (v5 == &dword_0 + 1)
  {
    v6 = a2();
    v7 = *(v3 + v4);
    *(v3 + v4) = v6;
    v8 = v6;
    sub_10B9FC(v7);
  }

  sub_10BA0C(v5);
  return v6;
}

uint64_t sub_106D20()
{
  v1 = v0;
  v2 = sub_5758(&qword_1ED140, &qword_178228);
  v3 = sub_D414(v2);
  v4 = __chkstk_darwin(v3);
  v6 = v71 - v5;
  sub_143FF0(v4, v7, v8, v9, v10, v11, v12, v13, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11]);
  v15 = v14;
  if (sub_144B4C())
  {
    v16 = sub_169A34();
    if ((v17 & 1) == 0)
    {
      v30 = v16;
      v31 = sub_82EF0();

      if (v31 == 4)
      {
        v29 = 3;
      }

      else
      {
        v29 = v31;
      }

      v32 = v30;
      goto LABEL_22;
    }
  }

  sub_144BC8();
  if (v18)
  {
    v19 = sub_169B84();
    if (v20 & 1) != 0 || (v21 = v19, v22 = sub_169B94(), (v23))
    {

      goto LABEL_8;
    }

    v33 = v22;
    v34 = sub_169B74();
    v36 = v35;
    v37 = v34;
    v38 = sub_82EF0();

    if (v38 == 4)
    {
      v29 = 3;
    }

    else
    {
      v29 = v38;
    }

    v39 = 0.0;
    if ((v36 & 1) == 0)
    {
      v39 = v37;
    }

    v32 = v21 / v33 + v39;
LABEL_22:
    v28 = v32;
    goto LABEL_23;
  }

LABEL_8:
  if ((v15 & 1) != 0 && (v24 = sub_106C18()) != 0)
  {
    v25 = v24;
    [v24 doubleValue];
    v27 = v26;

    v28 = v27;
    v29 = 3;
  }

  else
  {
    v28 = 0.0;
    v29 = 4;
  }

LABEL_23:
  sub_142688();
  if (v40)
  {
    sub_10152C(0xD000000000000017, 0x800000000017EE40, v40, v6);

    v41 = sub_169724();
    if (sub_9E2C(v6, 1, v41) == 1)
    {
      sub_109A0(v6, &qword_1ED140, &qword_178228);
    }

    else
    {
      sub_169704();
      v43 = v42;
      v44 = sub_10B98();
      v45(v44);
      if (v43)
      {
        v46 = sub_82FC8();
        goto LABEL_43;
      }
    }
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_39;
  }

  v47 = sub_1023F8();
  sub_8139C(v47);
  v49 = v48;
  sub_10C060();
  if (v50 == 0xD000000000000015 && v52 == v51)
  {

    v46 = 0;
  }

  else
  {
    sub_10C29C(v50, v49, 21, v52);
    sub_93EF4();
    v46 = 0;
    if (v6)
    {
      goto LABEL_43;
    }

    sub_8139C(*(v1 + 81));
    v55 = v54;
    sub_10C060();
    if (v56 == 0xD000000000000015 && v58 == v57)
    {
    }

    else
    {
      v60 = sub_10C29C(v56, v55, 21, v58);

      if ((v60 & 1) == 0)
      {
LABEL_39:
        v46 = 4;
        goto LABEL_43;
      }
    }

    v46 = 2;
  }

LABEL_43:
  v61 = sub_1023F8();
  sub_8139C(v61);
  if (v63 == 7628147 && v62 == 0xE300000000000000)
  {
  }

  else
  {
    sub_16AE54();
    sub_93EF4();
  }

  v65 = sub_103570();
  if (v65 == 9)
  {
    v66 = 1;
  }

  else
  {
    v66 = 2;
  }

  if (v65 == 8)
  {
    v67 = 0;
  }

  else
  {
    v67 = v66;
  }

  if (v29 == 4 && v46 == 4 && v67 == 2)
  {
    v28 = 0.0;
  }

  return *&v28;
}

uint64_t sub_107124(char a1)
{
  if (a1 == 9)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 8)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_107140()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasClimateSyncNoun;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasClimateSyncNoun);
  if (v2 == 2)
  {
    LOBYTE(v2) = 105;
    v3 = sub_103A44();
    sub_82168(v3, v4, v5);
    sub_93B94();
    v8 = v8 && v7 == 0xEF6E6F6974617A69;
    if (v8)
    {

      LOBYTE(v2) = 1;
    }

    else
    {
      sub_93AB0(v6);
      sub_93DFC();
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t sub_1071D8(uint64_t a1)
{
  *(v1 + 56) = 6;
  *(v1 + 64) = xmmword_16E2A0;
  *(v1 + 80) = 5380;
  *(v1 + 82) = 33686018;
  *(v1 + 86) = 2;
  *(v1 + 88) = xmmword_16E2A0;
  *(v1 + 104) = xmmword_16E2A0;
  *(v1 + 120) = 3586;
  *(v1 + 122) = 33686018;
  *(v1 + 126) = 50464285;
  *(v1 + 130) = 770;
  *(v1 + 132) = 33686018;
  *(v1 + 136) = 514;
  *(v1 + 144) = 0;
  *(v1 + 152) = 33688834;
  *(v1 + 156) = 515;
  *(v1 + 160) = 0;
  *(v1 + 168) = 6;
  *(v1 + 176) = xmmword_16E2A0;
  *(v1 + 192) = xmmword_16E2A0;
  *(v1 + 208) = xmmword_16E2A0;
  *(v1 + 224) = xmmword_16E2A0;
  *(v1 + 240) = xmmword_16E2A0;
  *(v1 + 256) = xmmword_16E2A0;
  v3 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___preferredRadioEntitySpan;
  v4 = sub_5758(&unk_1EC980, &qword_178180);
  sub_5370(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpansFilteredForExactMatch) = 0;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___radioEntitySpans) = 0;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasFrequencyAndBandFromEntitySpans) = 2;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasChannelAndBandFromEntitySpans) = 2;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasRadioBandFromEntitySpans) = 2;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberValue) = 1;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberDefinedValue) = 6;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___decimalPercentValue) = 1;
  *(v1 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___hasClimateSyncNoun) = 2;
  *(v1 + 16) = a1;

  sub_169A74();

  *(v1 + 24) = v6;
  *(v1 + 40) = v7;
  return v1;
}

uint64_t *sub_107364()
{

  sub_109A0((v0 + 3), &qword_1E6A10, &unk_1744D0);
  sub_10BAFC(v0[8], v0[9]);
  sub_10BAFC(v0[11], v0[12]);
  sub_10BAFC(v0[13], v0[14]);

  sub_10BAFC(v0[22], v0[23]);
  sub_10BAFC(v0[24], v0[25]);
  sub_10BAFC(v0[26], v0[27]);
  sub_10BAFC(v0[28], v0[29]);
  sub_10BAFC(v0[30], v0[31]);
  sub_10BAFC(v0[32], v0[33]);
  sub_109A0(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___preferredRadioEntitySpan, &qword_1ED148, &unk_178230);

  sub_10B9FC(*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___numberValue));
  sub_10B9FC(*(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin19CarCommandsNlv4Task____lazy_storage___decimalPercentValue));
  return v0;
}

uint64_t sub_107454()
{
  sub_107364();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for CarCommandsNlv4Task(uint64_t a1)
{
  result = qword_1EC968;
  if (!qword_1EC968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_107500(uint64_t a1)
{
  sub_107674(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_107674(uint64_t a1)
{
  if (!qword_1EC978)
  {
    sub_37130(&unk_1EC980, &qword_178180);
    v1 = sub_16AB24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC978);
    }
  }
}

uint64_t sub_1076D8()
{
  sub_16ACF4(441);
  type metadata accessor for CarCommandsNlv4Task(0);
  v2 = sub_5758(&qword_1ED120, &unk_178208);
  v38._countAndFlagsBits = sub_10C3E0(v2, v3);
  sub_10C2B4(v38);

  v39._countAndFlagsBits = 0x56202020200A7B20;
  v39._object = 0xED0000203A627265;
  sub_16A744(v39);
  v4 = sub_1023F8();
  sub_8139C(v4);
  sub_10C2B4(v40);

  sub_10BDE0();
  sub_16A744(v41);
  v5 = sub_102188();
  sub_81288(v5);
  sub_10C2B4(v42);

  sub_10BDE0();
  sub_16A744(v43);
  sub_104B2C();
  sub_10B9A8();
  sub_16A924();
  sub_10C06C();

  v44._countAndFlagsBits = v0;
  v44._object = v1;
  sub_16A744(v44);

  sub_10BDE0();
  sub_16A744(v45);
  v6 = sub_103A44();
  sub_10C078(v6, v7, &unk_1D5AF0, v8);
  sub_10BDE0();
  sub_16A744(v46);
  v9 = sub_103570();
  sub_10C078(v9, v10, &unk_1D5B80, v11);
  v47._countAndFlagsBits = 0x726143202020200ALL;
  v47._object = 0xEE00203A656D614ELL;
  sub_16A744(v47);
  v12._countAndFlagsBits = sub_1021D0();
  if (v12._object)
  {
    object = v12._object;
  }

  else
  {
    v12._countAndFlagsBits = 7104878;
    object = 0xE300000000000000;
  }

  v12._object = object;
  sub_16A744(v12);

  sub_10BDE0();
  v48._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v48);
  v14 = sub_104FD4();
  v49._countAndFlagsBits = sub_82770(v14);
  sub_16A744(v49);

  sub_10BDE0();
  sub_16A744(v50);
  v15 = sub_106AF8();
  sub_101B48(v15);

  v51._countAndFlagsBits = sub_10B98();
  sub_16A744(v51);

  sub_10BDE0();
  sub_16A744(v52);
  v16 = sub_10226C();
  sub_10C078(v16, v17, &unk_1D5CA0, v18);
  sub_10BDE0();
  sub_16A744(v53);
  sub_10340C();
  v19 = sub_5758(&qword_1E5FA0, &qword_172DD0);
  v54._countAndFlagsBits = sub_10C3E0(v19, v20);
  sub_10C2B4(v54);

  sub_10BDE0();
  v55._countAndFlagsBits = 0xD000000000000012;
  sub_16A744(v55);
  v21 = sub_104754();
  v22 = (v21 & 1) == 0;
  if (v21)
  {
    v23._countAndFlagsBits = 1702195828;
  }

  else
  {
    v23._countAndFlagsBits = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  v23._object = v24;
  sub_16A744(v23);

  sub_10BDE0();
  sub_16A744(v56);
  v25 = sub_102770();
  v26 = (v25 & 1) == 0;
  if (v25)
  {
    v27._countAndFlagsBits = 1702195828;
  }

  else
  {
    v27._countAndFlagsBits = 0x65736C6166;
  }

  if (v26)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  v27._object = v28;
  sub_16A744(v27);

  sub_10BDE0();
  sub_16A744(v57);
  v29 = sub_104BF4();
  v30 = (v29 & 1) == 0;
  if (v29)
  {
    v31._countAndFlagsBits = 1702195828;
  }

  else
  {
    v31._countAndFlagsBits = 0x65736C6166;
  }

  if (v30)
  {
    v32 = 0xE500000000000000;
  }

  else
  {
    v32 = 0xE400000000000000;
  }

  v31._object = v32;
  sub_16A744(v31);

  sub_10BDE0();
  sub_16A744(v58);
  sub_106D20();
  v33 = sub_5758(&qword_1ED130, &qword_178218);
  v59._countAndFlagsBits = sub_10C3E0(v33, v34);
  sub_10C2B4(v59);

  sub_10BDE0();
  sub_16A744(v60);
  sub_100914();
  v35 = sub_5758(&qword_1ED138, &qword_178220);
  v61._countAndFlagsBits = sub_10C3E0(v35, v36);
  sub_16A744(v61);

  v62._countAndFlagsBits = 0x7D0A7D202020200ALL;
  v62._object = 0xE800000000000000;
  sub_16A744(v62);
  return 0;
}

void sub_107BD8()
{
  v1 = sub_169724();
  sub_9F48();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_A128();
  v54 = v5 - v6;
  v8 = __chkstk_darwin(v7);
  v55 = v53 - v9;
  __chkstk_darwin(v8);
  v11 = v53 - v10;
  v53[0] = v0;
  v12 = *(v0 + 16);
  sub_142688();
  v53[1] = v12;
  if (v13)
  {
    v14 = v13;
    sub_5758(&qword_1E5F70, &unk_16F3F0);
    *(swift_initStackObject() + 16) = xmmword_16D9A0;
    sub_D434();
    *(v15 + 32) = 0xD000000000000017;
    *(v15 + 40) = v16;
    v17 = sub_1017A4(v15, v14);

    swift_setDeallocating();
    sub_EFFB0();
    v18 = v17;
    v56 = v17[2];
    if (v56)
    {
      v19 = 0;
      sub_10BDEC();
      v21 = v17 + v20;
      while (v19 < v18[2])
      {
        (*(v3 + 16))(v11, &v21[*(v3 + 72) * v19], v1);
        sub_169704();
        v23 = v22;
        (*(v3 + 8))(v11, v1);
        if (v23)
        {
          v24 = sub_82120();
          if (v24 != 29 && sub_E6090(v24, &off_1D1418))
          {
LABEL_29:

            return;
          }
        }

        if (v56 == ++v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_9:
  }

  sub_142688();
  if (!v25)
  {
LABEL_19:
    sub_142688();
    if (v38)
    {
      v39 = v38;
      sub_5758(&qword_1E5F70, &unk_16F3F0);
      *(swift_initStackObject() + 16) = xmmword_16D9A0;
      sub_D434();
      *(v40 + 32) = 0xD000000000000010;
      *(v40 + 40) = v41;
      v42 = sub_1017A4(v40, v39);

      swift_setDeallocating();
      sub_EFFB0();
      v56 = v42[2];
      if (v56)
      {
        v43 = 0;
        sub_10BDEC();
        v45 = v42 + v44;
        while (v43 < v42[2])
        {
          (*(v3 + 16))(v54, &v45[*(v3 + 72) * v43], v1);
          v46 = sub_169704();
          v48 = v47;
          v49 = sub_37740();
          v50(v49);
          if (v48)
          {
            v51._rawValue = &off_1D1490;
            v57._countAndFlagsBits = v46;
            v57._object = v48;
            v52 = sub_16ADE4(v51, v57);

            if (v52 <= 5 && sub_E6420(v52, &off_1D1468))
            {
              goto LABEL_29;
            }
          }

          if (v56 == ++v43)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_32;
      }

LABEL_27:
    }

    sub_102510();
    return;
  }

  v26 = v25;
  sub_5758(&qword_1E5F70, &unk_16F3F0);
  *(swift_initStackObject() + 16) = xmmword_16D9A0;
  sub_D434();
  *(v27 + 32) = 0xD000000000000018;
  *(v27 + 40) = v28;
  v29 = sub_1017A4(v27, v26);

  swift_setDeallocating();
  sub_EFFB0();
  v30 = v29;
  v56 = v29[2];
  if (!v56)
  {
LABEL_18:

    goto LABEL_19;
  }

  v31 = 0;
  sub_10BDEC();
  v33 = v29 + v32;
  while (v31 < v30[2])
  {
    v34 = v55;
    (*(v3 + 16))(v55, &v33[*(v3 + 72) * v31], v1);
    sub_169704();
    v36 = v35;
    (*(v3 + 8))(v34, v1);
    if (v36)
    {
      v37 = sub_82B58();
      if (v37 != 14 && sub_E60A8(v37, &off_1D1440))
      {
        goto LABEL_29;
      }
    }

    if (v56 == ++v31)
    {
      goto LABEL_18;
    }
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_1080E4()
{
  v0 = sub_103A44() - 21;
  if (v0 < 4u)
  {
    return 0x1040302u >> (8 * (v0 & 0x1F));
  }

  v2 = sub_103570();
  sub_82B98(v2, v3, v4);
  sub_93B94();
  v7 = v7 && v6 == 0xEE006574754D6E6FLL;
  if (v7)
  {
  }

  else
  {
    sub_93AB0(v5);
    sub_93DFC();
  }

  return 2;
}

void sub_108204()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10C2CC(v2, v5, &qword_1ED0F0, &qword_1781D0);
  sub_10C138();
  sub_1697C4();
  sub_10C0B8();
  sub_10BDEC();
  if (v1)
  {
    v9 = sub_10BD14(v8);
    sub_1091D8(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void *sub_1082E0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_108ED8(v9, a2, &qword_1ED0E8, &qword_1781C8, &type metadata accessor for SpanProperty);
  v11 = *(sub_169724() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1091D8(a4 + v12, v9, v10 + v12, &type metadata accessor for SpanProperty);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_108404()
{
  sub_10C054();
  if (v3)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_5758(&qword_1E6618, &qword_1781E0);
    v9 = sub_10C410();
    j__malloc_size(v9);
    sub_10BFE4();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1084D8()
{
  sub_10C054();
  if (v4)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  sub_10BD04();
  if (v3)
  {
    sub_5758(&qword_1E5F70, &unk_16F3F0);
    v7 = sub_10C410();
    j__malloc_size(v7);
    sub_10BFE4();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10C37C();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1085A8()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10C2CC(v2, v5, &qword_1ED110, &qword_1781F8);
  sub_10C138();
  sub_168B94();
  sub_10C0B8();
  sub_10BDEC();
  if (v1)
  {
    v9 = sub_10BD14(v8);
    sub_1091D8(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108684()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10C2CC(v2, v5, &qword_1ED108, &qword_1781F0);
  sub_10C138();
  sub_169504();
  sub_10C0B8();
  sub_10BDEC();
  if (v1)
  {
    v9 = sub_10BD14(v8);
    sub_1091D8(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108760()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10C2CC(v2, v5, &qword_1ED100, &qword_1781E8);
  sub_10C138();
  sub_16A314();
  sub_10C0B8();
  sub_10BDEC();
  if (v1)
  {
    v9 = sub_10BD14(v8);
    sub_1091D8(v9, v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_10883C()
{
  sub_10C054();
  if (v4)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  sub_10BD04();
  if (v3)
  {
    sub_5758(&qword_1ED1A8, &qword_1782A8);
    v7 = sub_10C410();
    j__malloc_size(v7);
    sub_10BFE4();
    v7[2] = v2;
    v7[3] = v8;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v9 = sub_10C37C();
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_10890C()
{
  sub_10C054();
  if (v4)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  sub_10BD04();
  if (v3)
  {
    v7 = sub_5758(&qword_1EAFA8, &unk_178270);
    v8 = sub_10C258(v7);
    v9 = j__malloc_size(v8);
    sub_10BFF8(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v8 != v0 || &v0[5 * v2 + 4] <= v8 + 4)
    {
      v11 = sub_10B98();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_5758(&qword_1E6380, &qword_16DAC0);
    sub_10B98();
    swift_arrayInitWithCopy();
  }
}

void sub_108A18()
{
  sub_10C054();
  if (v4)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  sub_10BD04();
  if (v3)
  {
    v7 = sub_5758(&qword_1ED1A0, &qword_1782A0);
    v8 = sub_10C258(v7);
    v9 = j__malloc_size(v8);
    sub_10BFF8(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v10 = sub_10C37C();
  if (v1)
  {
    if (v8 != v0 || &v11[48 * v2] <= v10)
    {
      memmove(v10, v11, 48 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_108AF4()
{
  sub_10C054();
  if (v4)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  sub_10BD04();
  if (v3)
  {
    v7 = sub_5758(&qword_1ED1B8, &unk_1782C0);
    v8 = sub_10C258(v7);
    v9 = j__malloc_size(v8);
    sub_10BFF8(v9);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v8 != v0 || &v0[6 * v2 + 4] <= v8 + 4)
    {
      v11 = sub_10B98();
      memmove(v11, v12, v13);
    }

    v0[2] = 0;
  }

  else
  {
    sub_5758(&qword_1ED1C0, &qword_179280);
    sub_10B98();
    swift_arrayInitWithCopy();
  }
}

void sub_108BEC()
{
  sub_10BDD0();
  if (v4)
  {
    sub_10BDC0();
    if (v6 != v7)
    {
      sub_10C24C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_10BDB0();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_10C2CC(v2, v5, &qword_1ED190, &qword_178290);
  v8 = sub_10C138();
  type metadata accessor for CarTire(v8);
  sub_10C0B8();
  sub_10BDEC();
  if (v1)
  {
    v10 = sub_10BD14(v9);
    sub_1091D8(v10, v11, v12, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108CC8()
{
  sub_10C054();
  if (v3)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_108FC8(*(v0 + 16), v4);
  sub_5758(&qword_1EA370, &qword_1782B0);
  sub_10C0B8();
  sub_10BDEC();
  if (v1)
  {
    sub_10BD14(v7);
    sub_10928C();
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10BD48();
  }
}

void sub_108D9C()
{
  sub_10C054();
  if (v4)
  {
    sub_10BC1C();
    if (v5 != v6)
    {
      sub_10C048();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_10BBE8();
    }
  }

  sub_10BD04();
  if (v3)
  {
    sub_5758(v7, v8);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = 2 * v10 - 64;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_10C37C();
  if (v1)
  {
    if (v9 != v0 || &v12[v2] <= v11)
    {
      memmove(v11, v12, v2);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, v2);
  }
}

void *sub_108E64(uint64_t a1, uint64_t a2)
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

  sub_5758(&qword_1ED180, &qword_178280);
  v4 = sub_10C410();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_108ED8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
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

  sub_5758(a3, a4);
  v8 = sub_10C138();
  v9 = a5(v8);
  sub_10AEC(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_108FC8(uint64_t a1, uint64_t a2)
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

  sub_5758(&qword_1ED1B0, &qword_1782B8);
  v4 = *(sub_5758(&qword_1EA370, &qword_1782B0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1090E8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10BBD8(a3, result);
  }

  return result;
}

char *sub_109150(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return sub_10BBD8(a3, result);
  }

  return result;
}

char *sub_109178(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_10BBD8(a3, result);
  }

  return result;
}

char *sub_109198(char *__src, size_t __len, char *__dst)
{
  if (__dst != __src || &__src[__len] <= __dst)
  {
    return memmove(__dst, __src, __len);
  }

  return __src;
}

void sub_1091D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_10C368();
  if (v8 && (a4(0), sub_10AFC(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_10BD34();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_10BD34();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void sub_10928C()
{
  sub_10C368();
  if (v3 && (sub_5758(&qword_1EA370, &qword_1782B0), sub_10AFC(), v1 + *(v4 + 72) * v0 > v2))
  {
    if (v2 != v1)
    {
      sub_10BD34();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    sub_5758(&qword_1EA370, &qword_1782B0);
    sub_10BD34();

    swift_arrayInitWithTakeFrontToBack();
  }
}

void *sub_10934C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_5758(&qword_1ED0F8, &qword_1781D8);
    v3 = sub_10C11C();
    v46 = *(a1 + 16);
    if (v46)
    {
      v4 = 0;
      sub_10C174();
      v44 = v5;
      v45 = v6;
      do
      {
        if (v4 >= *(a1 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
          JUMPOUT(0x109AA4);
        }

        v7 = *(a1 + 32 + v4);
        sub_16AF14();
        sub_82168(v7, v8, v9);
        sub_16A6F4();

        sub_16AF54();
        sub_10C204();
        v11 = ~v10;
        v13 = v12 & ~v10;
        sub_10C320();
        if ((v17 & v16) != 0)
        {
          while (1)
          {
            v18 = 0xE400000000000000;
            v19 = 1935762529;
            switch(*(v3[6] + v13))
            {
              case 1:
                v19 = 0x7563726943726961;
                v18 = 0xEE006E6F6974616CLL;
                break;
              case 2:
                v19 = 0xD000000000000011;
                v18 = 0x800000000017E5A0;
                break;
              case 3:
                v18 = 0xE700000000000000;
                v19 = 0x79726574746162;
                break;
              case 4:
                v19 = 0x6F43657369757263;
                v22 = 0x6C6F72746ELL;
                goto LABEL_34;
              case 5:
                v19 = 0x6574736F72666564;
                v18 = 0xE900000000000072;
                break;
              case 6:
                sub_10C0D0();
                v19 = v26 + 2;
                v18 = 0x800000000017E5E0;
                break;
              case 7:
                v18 = 0xE800000000000000;
                v19 = 0x64656570536E6166;
                break;
              case 8:
                v19 = 1818588518;
                break;
              case 9:
                sub_10C0D0();
                v19 = v24 + 2;
                v18 = 0x800000000017E610;
                break;
              case 0xA:
                v18 = 0xE800000000000000;
                v23 = 1633906540;
                goto LABEL_29;
              case 0xB:
                v19 = 0x616E65746E69616DLL;
                v18 = 0xEB0000000065636ELL;
                break;
              case 0xC:
                v18 = 0xE800000000000000;
                v23 = 1769172848;
LABEL_29:
                v19 = v23 | 0x6E6F697400000000;
                break;
              case 0xD:
                v19 = 0xD000000000000011;
                v18 = v44;
                break;
              case 0xE:
                sub_10BE84();
                v18 = v21 + 1011;
                v19 = 0x7373614D74616573;
                break;
              case 0xF:
                v19 = 0x6E6F7268636E7973;
                v18 = 0xEF6E6F6974617A69;
                break;
              case 0x10:
                v19 = 0x6572705F65726974;
                v20 = 1920299891;
                goto LABEL_33;
              case 0x11:
                v19 = sub_10BBC0();
                break;
              case 0x12:
                v19 = 0x656C6553746E6576;
                v27 = 1919906915;
                goto LABEL_36;
              case 0x13:
                v19 = 0x566C6172656E6567;
                v20 = 1836412015;
LABEL_33:
                v22 = v20 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_34:
                v18 = v22 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 0x14:
                v19 = 0x756C6F566E69616DLL;
                v18 = 0xEA0000000000656DLL;
                break;
              case 0x15:
                sub_10C0D0();
                v19 = v25 - 1;
                v18 = v45;
                break;
              case 0x16:
                sub_10BE84();
                v18 = v28 + 2567;
                v19 = 0x6C6F56656E6F6870;
                break;
              case 0x17:
                v19 = 0x6F567265676E6972;
                v27 = 1701672300;
LABEL_36:
                v18 = v27 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 0x18:
                v18 = 0xE500000000000000;
                v19 = 0x6563696F76;
                break;
              case 0x19:
                v18 = 0xEA00000000006E6FLL;
                v19 = 0x697461676976616ELL;
                break;
              case 0x1A:
                v19 = 1819042147;
                break;
              case 0x1B:
                v18 = 0xE600000000000000;
                v19 = 0x7265676E6972;
                break;
              case 0x1C:
                v19 = 1769105779;
                break;
              default:
                break;
            }

            v29 = 0xE400000000000000;
            v30 = 1935762529;
            switch(v7)
            {
              case 1:
                v30 = 0x7563726943726961;
                v29 = 0xEE006E6F6974616CLL;
                break;
              case 2:
                v30 = 0xD000000000000011;
                v29 = 0x800000000017E5A0;
                break;
              case 3:
                v29 = 0xE700000000000000;
                v30 = 0x79726574746162;
                break;
              case 4:
                v30 = 0x6F43657369757263;
                v33 = 0x6C6F72746ELL;
                goto LABEL_67;
              case 5:
                v30 = 0x6574736F72666564;
                v29 = 0xE900000000000072;
                break;
              case 6:
                sub_10C0D0();
                v30 = v37 + 2;
                v29 = 0x800000000017E5E0;
                break;
              case 7:
                v29 = 0xE800000000000000;
                v30 = 0x64656570536E6166;
                break;
              case 8:
                v30 = 1818588518;
                break;
              case 9:
                sub_10C0D0();
                v30 = v35 + 2;
                v29 = 0x800000000017E610;
                break;
              case 10:
                v29 = 0xE800000000000000;
                v34 = 1633906540;
                goto LABEL_62;
              case 11:
                v30 = 0x616E65746E69616DLL;
                v29 = 0xEB0000000065636ELL;
                break;
              case 12:
                v29 = 0xE800000000000000;
                v34 = 1769172848;
LABEL_62:
                v30 = v34 | 0x6E6F697400000000;
                break;
              case 13:
                v30 = 0xD000000000000011;
                v29 = v44;
                break;
              case 14:
                sub_10BE84();
                v29 = v32 + 1011;
                v30 = 0x7373614D74616573;
                break;
              case 15:
                v30 = 0x6E6F7268636E7973;
                v29 = 0xEF6E6F6974617A69;
                break;
              case 16:
                v30 = 0x6572705F65726974;
                v31 = 1920299891;
                goto LABEL_66;
              case 17:
                v29 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 18:
                v30 = 0x656C6553746E6576;
                v38 = 1919906915;
                goto LABEL_69;
              case 19:
                v30 = 0x566C6172656E6567;
                v31 = 1836412015;
LABEL_66:
                v33 = v31 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
LABEL_67:
                v29 = v33 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 20:
                v30 = 0x756C6F566E69616DLL;
                v29 = 0xEA0000000000656DLL;
                break;
              case 21:
                sub_10C0D0();
                v30 = v36 - 1;
                v29 = v45;
                break;
              case 22:
                sub_10BE84();
                v29 = v39 + 2567;
                v30 = 0x6C6F56656E6F6870;
                break;
              case 23:
                v30 = 0x6F567265676E6972;
                v38 = 1701672300;
LABEL_69:
                v29 = v38 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 24:
                v29 = 0xE500000000000000;
                v30 = 0x6563696F76;
                break;
              case 25:
                v29 = 0xEA00000000006E6FLL;
                v30 = 0x697461676976616ELL;
                break;
              case 26:
                v30 = 1819042147;
                break;
              case 27:
                v29 = 0xE600000000000000;
                v30 = 0x7265676E6972;
                break;
              case 28:
                v30 = 1769105779;
                break;
              default:
                break;
            }

            if (v19 == v30 && v18 == v29)
            {
              break;
            }

            sub_10C0E8(v19, v14, v30);
            sub_10C428();

            if (v1)
            {
              goto LABEL_81;
            }

            v13 = (v13 + 1) & v11;
            sub_10C320();
            if ((v16 & v17) == 0)
            {
              goto LABEL_78;
            }
          }
        }

        else
        {
LABEL_78:
          v3[v15 + 7] = v16 | v17;
          *(v3[6] + v13) = v7;
          sub_10C348();
          if (v42)
          {
            goto LABEL_86;
          }

          v3[2] = v41;
        }

LABEL_81:
        ++v4;
      }

      while (v4 != v46);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

void sub_109B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_10C3C4();
  v37 = v36;
  if (*(v36 + 16))
  {
    sub_5758(&qword_1E91A0, &unk_172AF0);
    v38 = sub_10C11C();
    v85 = *(v37 + 16);
    if (v85)
    {
      sub_10C334();
      v39 = 0x69646E6F43726961;
      sub_D434();
      v82 = v41;
      v83 = v37;
      v84 = v37 + 32;
      do
      {
        if (v40 >= *(v37 + 16))
        {
          __break(1u);
LABEL_104:
          __break(1u);
          JUMPOUT(0x10A104);
        }

        v86 = v40;
        v42 = *(v84 + v40);
        sub_16AF14();
        sub_81C68(v42, v43, v44);
        sub_10BF98(v45, v46, v47, v48, v49, v50, v51);

        sub_16AF54();
        sub_10C204();
        v53 = ~v52;
        v55 = v54 & ~v52;
        sub_10C30C();
        if ((v59 & v58) != 0)
        {
          while (1)
          {
            v60 = v34;
            v61 = v39;
            switch(*(*(v38 + 48) + v55))
            {
              case 1:
                v61 = sub_10BC8C();
                goto LABEL_31;
              case 2:
                v63 = 1768191329;
                goto LABEL_25;
              case 3:
                v61 = sub_10BC6C();
                break;
              case 4:
                v61 = sub_10C1A4();
                break;
              case 5:
                v61 = sub_10BC4C();
LABEL_31:
                v60 = v34 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 6:
                v61 = sub_10BF20();
                break;
              case 7:
                v61 = sub_10C194();
                break;
              case 8:
                v60 = 0xE500000000000000;
                v61 = sub_93F0C();
                break;
              case 9:
                v61 = sub_10BCD8();
                goto LABEL_28;
              case 0xA:
                v65 = 1684104552;
                goto LABEL_46;
              case 0xB:
                v61 = sub_10C104() | 0x646F0000u;
                break;
              case 0xC:
                v61 = sub_10C104() | 0x6E720000u;
                break;
              case 0xD:
                v61 = sub_10BC2C();
                goto LABEL_34;
              case 0xE:
                v61 = sub_10BF34();
                break;
              case 0xF:
                v61 = sub_10BD80();
                break;
              case 0x10:
                v62 = sub_10BCF4();
                v61 = sub_10C1D4(v62);
                goto LABEL_28;
              case 0x11:
                v64 = sub_10BCF4();
                v61 = sub_10C164(v64);
LABEL_28:
                v60 = v34 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 0x12:
                v61 = sub_10BE70();
                goto LABEL_47;
              case 0x13:
                v61 = sub_10BD98();
                break;
              case 0x14:
                v61 = sub_10C1B4();
                break;
              case 0x15:
                v61 = sub_10C1C4();
                break;
              case 0x16:
                v61 = sub_10BE20();
                goto LABEL_44;
              case 0x17:
                v61 = sub_10BE0C();
LABEL_44:
                v60 = 0xEA00000000007265;
                break;
              case 0x18:
                v61 = sub_10BF48();
                break;
              case 0x19:
                v61 = sub_10BCBC();
                goto LABEL_26;
              case 0x1A:
                v61 = 0xD000000000000013;
                v60 = v82;
                break;
              case 0x1B:
                v61 = sub_10BD68();
                break;
              case 0x1C:
                v65 = 1818845556;
LABEL_46:
                v61 = v65 | 0x6867694C00000000;
LABEL_47:
                v60 = 0xE900000000000074;
                break;
              case 0x1D:
                v61 = sub_10BE48();
                break;
              case 0x1E:
                v61 = sub_10BE5C();
                break;
              case 0x1F:
                v63 = 1769171318;
LABEL_25:
                v61 = sub_10BE94(v63);
LABEL_26:
                v60 = v34 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_34:
                v60 = v60 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 0x20:
                sub_10C0DC();
                v60 = v66 - 1540;
                v61 = sub_10BE34();
                break;
              case 0x21:
                v61 = sub_10BBC0();
                break;
              case 0x22:
                v61 = sub_10BEF8();
                break;
              case 0x23:
                v61 = sub_10BF0C();
                break;
              default:
                break;
            }

            v67 = v39;
            v68 = v39;
            v69 = v34;
            switch(v42)
            {
              case 1:
                sub_10BDF8();
                v70 = 0x746867694C73;
                goto LABEL_73;
              case 2:
              case 31:
                sub_10C388();
                goto LABEL_68;
              case 3:
                sub_10BFD0();
                v34 = 0xEB00000000656372;
                break;
              case 4:
                v34 = 0xE300000000000000;
                v68 = 7496035;
                break;
              case 5:
                sub_10BF84();
                v70 = 0x6C6F72746E6FLL;
LABEL_73:
                v34 = v70 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 6:
                v34 = 0xE600000000000000;
                sub_10C1F4();
                break;
              case 7:
                v34 = 0xE300000000000000;
                v68 = 7233894;
                break;
              case 8:
                v34 = 0xE500000000000000;
                sub_EACE8();
                break;
              case 9:
                sub_10C020();
                v72 = 1937008743;
                goto LABEL_70;
              case 10:
                v77 = 1684104552;
                goto LABEL_88;
              case 11:
                sub_10C39C();
                v68 = v73 | 0x646F0000u;
                break;
              case 12:
                sub_10C39C();
                v68 = v74 | 0x6E720000u;
                break;
              case 13:
                sub_10BF70();
                v75 = 0x746867694CLL;
                goto LABEL_76;
              case 14:
                v34 = 0xE600000000000000;
                sub_10C224();
                break;
              case 15:
                v34 = 0xE700000000000000;
                sub_10BFBC();
                break;
              case 16:
                sub_10BD24();
                v68 = v71 & 0xFFFFFFFFFFFFLL | 0x4267000000000000;
                v72 = 1701536114;
                goto LABEL_70;
              case 17:
                sub_10BD24();
                v68 = v76 & 0xFFFFFFFFFFFFLL | 0x4C67000000000000;
                v72 = 1952999273;
LABEL_70:
                v34 = v72 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
                break;
              case 18:
                sub_10BF5C();
                goto LABEL_89;
              case 19:
                v34 = 0xE700000000000000;
                sub_10BEA8();
                break;
              case 20:
                v34 = 0xE400000000000000;
                v68 = 1918985586;
                break;
              case 21:
                v34 = 0xE400000000000000;
                v68 = 1952540019;
                break;
              case 22:
                sub_10BED0();
                goto LABEL_86;
              case 23:
                sub_10BEBC();
LABEL_86:
                v34 = 0xEA00000000007265;
                break;
              case 24:
                v34 = 0xE600000000000000;
                sub_10C214();
                break;
              case 25:
                sub_10C00C();
                v34 = 1701144663;
LABEL_68:
                v75 = v34 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_76:
                v34 = v75 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              case 26:
                v68 = 0xD000000000000013;
                v34 = v82;
                break;
              case 27:
                v34 = 0xE700000000000000;
                sub_10C034();
                break;
              case 28:
                v77 = 1818845556;
LABEL_88:
                v68 = v77 | 0x6867694C00000000;
LABEL_89:
                v34 = 0xE900000000000074;
                break;
              case 29:
                v34 = 0xE500000000000000;
                sub_10C184();
                break;
              case 30:
                v34 = 0xE500000000000000;
                sub_10C1E4();
                break;
              case 32:
                sub_10C0DC();
                v34 = v78 - 1540;
                sub_10BEE4();
                break;
              case 33:
                v34 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 34:
                v34 = 0xE600000000000000;
                sub_10C154();
                break;
              case 35:
                v34 = 0xE600000000000000;
                sub_10C144();
                break;
              default:
                break;
            }

            if (v61 == v68 && v60 == v34)
            {
              break;
            }

            sub_10C0E8(v61, v56, v68);
            sub_10C428();

            v34 = v69;
            v39 = v67;
            if (v35)
            {
              goto LABEL_101;
            }

            v55 = (v55 + 1) & v53;
            sub_10C30C();
            if ((v58 & v59) == 0)
            {
              goto LABEL_98;
            }
          }

          v34 = v69;
          v39 = v67;
        }

        else
        {
LABEL_98:
          *(v38 + 56 + 8 * v57) = v58 | v59;
          *(*(v38 + 48) + v55) = v42;
          sub_10C348();
          if (v81)
          {
            goto LABEL_104;
          }

          *(v38 + 16) = v80;
        }

LABEL_101:
        v40 = v86 + 1;
        v37 = v83;
      }

      while (v86 + 1 != v85);
    }
  }

  sub_10C3A8();
}

_BYTE *sub_10A224(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_5758(&qword_1ED178, &qword_178268);
    v2 = sub_16ACC4();
    v3 = v2;
    v27 = *(v1 + 16);
    if (v27)
    {
      v4 = 0;
      v5 = v2 + 56;
      v25 = v1;
      v26 = v1 + 32;
      do
      {
        if (v4 >= *(v1 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          JUMPOUT(0x10A7F0);
        }

        v6 = *(v26 + v4++);
        sub_16AF14();
        sub_16A6F4();

        v7 = sub_16AF54();
        v8 = ~(-1 << v3[32]);
        v9 = v7 & v8;
        v10 = (v7 & v8) >> 6;
        v11 = *(v5 + 8 * v10);
        v12 = 1 << (v7 & v8);
        if ((v12 & v11) != 0)
        {
          while (1)
          {
            v13 = 0xE600000000000000;
            v14 = 0x64656B636F6CLL;
            switch(*(*(v3 + 6) + v9))
            {
              case 1:
                v13 = 0xE800000000000000;
                v15 = 0x696873616C66;
                goto LABEL_14;
              case 2:
                v14 = 0x746E656C6973;
                break;
              case 3:
                v13 = 0xE800000000000000;
                v15 = 0x69646E756F73;
LABEL_14:
                v14 = v15 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
                break;
              case 4:
                v13 = 0xE800000000000000;
                v14 = 0x64656B636F6C6E75;
                break;
              case 5:
                v13 = 0xE400000000000000;
                v14 = 1802658160;
                break;
              case 6:
                v13 = 0xE700000000000000;
                v14 = 0x6E776F6E6B6E75;
                break;
              case 7:
                v14 = 0x61635F7075746573;
                v13 = 0xED000079616C7072;
                break;
              case 8:
                v13 = 0xE300000000000000;
                v14 = 7827308;
                break;
              case 9:
                v13 = 0xE400000000000000;
                v14 = 1751607656;
                break;
              case 0xA:
                v14 = 0xD000000000000011;
                v13 = 0x800000000017E3D0;
                break;
              case 0xB:
                v14 = 0xD000000000000013;
                v13 = 0x800000000017E3F0;
                break;
              case 0xC:
                v14 = 0x697461676976616ELL;
                v13 = 0xEE006574754D6E6FLL;
                break;
              case 0xD:
                v14 = 0xD000000000000010;
                v13 = 0x800000000017E420;
                break;
              default:
                break;
            }

            v16 = 0xE600000000000000;
            v17 = 0x64656B636F6CLL;
            switch(v6)
            {
              case 1:
                v16 = 0xE800000000000000;
                v18 = 0x696873616C66;
                goto LABEL_29;
              case 2:
                v17 = 0x746E656C6973;
                break;
              case 3:
                v16 = 0xE800000000000000;
                v18 = 0x69646E756F73;
LABEL_29:
                v17 = v18 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
                break;
              case 4:
                v16 = 0xE800000000000000;
                v17 = 0x64656B636F6C6E75;
                break;
              case 5:
                v16 = 0xE400000000000000;
                v17 = 1802658160;
                break;
              case 6:
                v16 = 0xE700000000000000;
                v17 = 0x6E776F6E6B6E75;
                break;
              case 7:
                v17 = 0x61635F7075746573;
                v16 = 0xED000079616C7072;
                break;
              case 8:
                v16 = 0xE300000000000000;
                v17 = 7827308;
                break;
              case 9:
                v16 = 0xE400000000000000;
                v17 = 1751607656;
                break;
              case 10:
                v17 = 0xD000000000000011;
                v16 = 0x800000000017E3D0;
                break;
              case 11:
                v17 = 0xD000000000000013;
                v16 = 0x800000000017E3F0;
                break;
              case 12:
                v17 = 0x697461676976616ELL;
                v16 = 0xEE006574754D6E6FLL;
                break;
              case 13:
                v17 = 0xD000000000000010;
                v16 = 0x800000000017E420;
                break;
              default:
                break;
            }

            if (v14 == v17 && v13 == v16)
            {
              break;
            }

            v20 = sub_16AE54();

            if (v20)
            {
              goto LABEL_45;
            }

            v9 = (v9 + 1) & v8;
            v10 = v9 >> 6;
            v11 = *(v5 + 8 * (v9 >> 6));
            v12 = 1 << v9;
            if ((v11 & (1 << v9)) == 0)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:
          *(v5 + 8 * v10) = v11 | v12;
          *(*(v3 + 6) + v9) = v6;
          v21 = *(v3 + 2);
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_50;
          }

          *(v3 + 2) = v23;
        }

LABEL_45:
        v1 = v25;
      }

      while (v4 != v27);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

void *sub_10A898(uint64_t a1)
{
  v2 = a1;
  if (*(a1 + 16))
  {
    sub_5758(&qword_1E91A8, &qword_172B08);
    v3 = sub_10C11C();
    v55 = *(v2 + 16);
    if (v55)
    {
      v4 = 0;
      sub_10C174();
      v51 = v5;
      v52 = v6;
      sub_D434();
      v49 = v7;
      v50 = v8;
      sub_10C174();
      v47 = v9;
      v48 = v10;
      v53 = v2;
      v54 = v2 + 32;
      do
      {
        if (v4 >= *(v2 + 16))
        {
          __break(1u);
LABEL_92:
          __break(1u);
          JUMPOUT(0x10B094);
        }

        v11 = *(v54 + v4);
        sub_16AF14();
        CarCommandsUseCase.rawValue.getter(v11);
        sub_16A6F4();

        sub_16AF54();
        sub_10C204();
        v13 = ~v12;
        v15 = v14 & ~v12;
        sub_10C2E4();
        if ((v19 & v18) != 0)
        {
          while (1)
          {
            v20 = 0xED00007375746174;
            v21 = 0xED00007375746174;
            v22 = 0x536B636F4C746567;
            switch(*(v3[6] + v15))
            {
              case 1:
                v22 = 0x536B636F4C746573;
                v21 = 0xED00007375746174;
                break;
              case 2:
                v22 = 0x6574617669746361;
                v25 = 0x6C616E676953;
                goto LABEL_27;
              case 3:
                v22 = 0x7265776F50746567;
                v29 = 0x6C6576654CLL;
                goto LABEL_40;
              case 4:
                v22 = 0xD000000000000010;
                v21 = v47;
                break;
              case 5:
                v22 = 0x6B6E757254746573;
                goto LABEL_26;
              case 6:
                sub_10C0C4();
                v22 = v30 + 9;
                v21 = v48;
                break;
              case 7:
                v22 = 0x6F72666544746573;
                v21 = 0xEC00000072657473;
                break;
              case 8:
                v22 = 0x6F69646152746573;
                v21 = 0xEF6E6F6974617453;
                break;
              case 9:
                v22 = sub_10C2F8();
                goto LABEL_31;
              case 0xA:
                v22 = 0x616D696C43746567;
LABEL_31:
                v21 = 0xEA00000000006574;
                break;
              case 0xB:
                v22 = 0x65706D6554746573;
                v25 = 0x657275746172;
                goto LABEL_27;
              case 0xC:
                v21 = 0xE800000000000000;
                v22 = 0x434178614D746573;
                break;
              case 0xD:
                v22 = 0x6B6E757254746567;
LABEL_26:
                v25 = 0x737574617453;
                goto LABEL_27;
              case 0xE:
                v22 = 0x5374616553746573;
                v21 = 0xEF73676E69747465;
                break;
              case 0xF:
                sub_10C0C4();
                v22 = v28 + 11;
                v21 = v49;
                break;
              case 0x10:
                sub_10C0C4();
                v22 = v24 + 5;
                v21 = v50;
                break;
              case 0x11:
                v22 = 0x65536E6146746573;
                v25 = 0x73676E697474;
                goto LABEL_27;
              case 0x12:
                v22 = 0x6D756C6F56746573;
                v21 = 0xE900000000000065;
                break;
              case 0x13:
                v22 = 0x4D6F747541746573;
                goto LABEL_35;
              case 0x14:
                v22 = sub_10C2F8();
                v25 = 0x636E79536574;
LABEL_27:
                v21 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 0x15:
                v22 = 0x4D746E6556746573;
LABEL_35:
                v26 = 6644847;
                goto LABEL_36;
              case 0x16:
                v22 = 0x6E496E6146746573;
                v21 = 0xEF797469736E6574;
                break;
              case 0x17:
                sub_10C0C4();
                v22 = v31 + 1;
                v21 = 0x800000000017ECB0;
                break;
              case 0x18:
                sub_10C0C4();
                v22 = v27 + 8;
                v21 = 0x800000000017ECD0;
                break;
              case 0x19:
                v22 = 0x507261436E65706FLL;
                v26 = 7954796;
LABEL_36:
                v21 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 0x1A:
                v22 = 0xD000000000000010;
                v21 = v51;
                break;
              case 0x1B:
                sub_10C0C4();
                v22 = v23 + 1;
                v21 = v52;
                break;
              case 0x1C:
                v22 = sub_10BBC0();
                break;
              case 0x1D:
                v22 = 0x7265646E7573696DLL;
                v29 = 0x646F6F7473;
LABEL_40:
                v21 = v29 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              default:
                break;
            }

            v32 = 0x536B636F4C746567;
            v33 = v20;
            switch(v11)
            {
              case 1:
                v32 = 0x536B636F4C746573;
                v33 = v20;
                break;
              case 2:
                v32 = 0x6574617669746361;
                v36 = 0x6C616E676953;
                goto LABEL_63;
              case 3:
                v32 = 0x7265776F50746567;
                v40 = 0x6C6576654CLL;
                goto LABEL_76;
              case 4:
                v32 = 0xD000000000000010;
                v33 = v47;
                break;
              case 5:
                v32 = 0x6B6E757254746573;
                goto LABEL_62;
              case 6:
                sub_A1A8();
                v32 = v41 + 9;
                v33 = v48;
                break;
              case 7:
                v32 = 0x6F72666544746573;
                v33 = 0xEC00000072657473;
                break;
              case 8:
                v32 = 0x6F69646152746573;
                v33 = 0xEF6E6F6974617453;
                break;
              case 9:
                sub_10C354();
                goto LABEL_67;
              case 10:
                v32 = 0x616D696C43746567;
LABEL_67:
                v33 = 0xEA00000000006574;
                break;
              case 11:
                v32 = 0x65706D6554746573;
                v36 = 0x657275746172;
                goto LABEL_63;
              case 12:
                v33 = 0xE800000000000000;
                v32 = 0x434178614D746573;
                break;
              case 13:
                v32 = 0x6B6E757254746567;
LABEL_62:
                v36 = 0x737574617453;
                goto LABEL_63;
              case 14:
                v32 = 0x5374616553746573;
                v33 = 0xEF73676E69747465;
                break;
              case 15:
                sub_A1A8();
                v32 = v39 + 11;
                v33 = v49;
                break;
              case 16:
                sub_A1A8();
                v32 = v35 + 5;
                v33 = v50;
                break;
              case 17:
                v32 = 0x65536E6146746573;
                v36 = 0x73676E697474;
                goto LABEL_63;
              case 18:
                v32 = 0x6D756C6F56746573;
                v33 = 0xE900000000000065;
                break;
              case 19:
                v32 = 0x4D6F747541746573;
                goto LABEL_71;
              case 20:
                sub_10C354();
                v36 = 0x636E79536574;
LABEL_63:
                v33 = v36 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
                break;
              case 21:
                v32 = 0x4D746E6556746573;
LABEL_71:
                v37 = 6644847;
                goto LABEL_72;
              case 22:
                v32 = 0x6E496E6146746573;
                v33 = 0xEF797469736E6574;
                break;
              case 23:
                sub_A1A8();
                v32 = v42 + 1;
                v33 = 0x800000000017ECB0;
                break;
              case 24:
                sub_A1A8();
                v32 = v38 + 8;
                v33 = 0x800000000017ECD0;
                break;
              case 25:
                v32 = 0x507261436E65706FLL;
                v37 = 7954796;
LABEL_72:
                v33 = v37 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                break;
              case 26:
                v32 = 0xD000000000000010;
                v33 = v51;
                break;
              case 27:
                sub_A1A8();
                v32 = v34 + 1;
                v33 = v52;
                break;
              case 28:
                v33 = 0xE700000000000000;
                sub_EAAF0();
                break;
              case 29:
                v32 = 0x7265646E7573696DLL;
                v40 = 0x646F6F7473;
LABEL_76:
                v33 = v40 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                break;
              default:
                break;
            }

            if (v22 == v32 && v21 == v33)
            {
              break;
            }

            sub_10C0E8(v22, v16, v32);
            sub_10C428();

            if (v1)
            {
              goto LABEL_87;
            }

            v15 = (v15 + 1) & v13;
            sub_10C2E4();
            if ((v18 & v19) == 0)
            {
              goto LABEL_84;
            }
          }
        }

        else
        {
LABEL_84:
          v3[v17 + 7] = v18 | v19;
          *(v3[6] + v15) = v11;
          sub_10C348();
          if (v45)
          {
            goto LABEL_92;
          }

          v3[2] = v44;
        }

LABEL_87:
        ++v4;
        v2 = v53;
      }

      while (v4 != v55);
    }
  }

  else
  {
    v3 = &_swiftEmptySetSingleton;
  }

  return v3;
}

void sub_10B184(uint64_t a1)
{
  if (*(a1 + 16) && (sub_5758(&qword_1ED188, &qword_178288), v2 = sub_10C11C(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = *(a1 + 32 + 8 * v5++);
      sub_16AF14();
      sub_16AF24(v7);
      v8 = sub_16AF54();
      v9 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v10 = v8 & v9;
        v11 = (v8 & v9) >> 6;
        v12 = *(v6 + 8 * v11);
        v13 = 1 << (v8 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        if (*(*(v3 + 48) + 8 * v10) == v7)
        {
          goto LABEL_11;
        }

        v8 = v10 + 1;
      }

      *(v6 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v7;
      sub_10C348();
      if (v15)
      {
        goto LABEL_14;
      }

      *(v3 + 16) = v14;
LABEL_11:
      if (v5 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:
  }
}

uint64_t sub_10B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_16AE54() & 1;
  }
}

void sub_10B304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  if (*(a2 + 16))
  {
    sub_10C3C4();
    v78 = *(v36 + 16);
    if (v78)
    {
      v37 = v35;
      v38 = 0;
      sub_10C334();
      v40 = v39 + 56;
      sub_D434();
      v76 = v41;
      v77 = v42;
      while (1)
      {
        if (*(v37 + 16))
        {
          v43 = *(v77 + v38);
          sub_16AF14();
          sub_81C68(v43, v44, v45);
          sub_10BF98(v46, v47, v48, v49, v50, v51, v52);

          v53 = sub_16AF54();
          v54 = -1 << *(v37 + 32);
          v55 = v53 & ~v54;
          if ((*(v40 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
          {
            break;
          }
        }

LABEL_101:
        if (++v38 == v78)
        {
          goto LABEL_105;
        }
      }

      v79 = ~v54;
      while (1)
      {
        v56 = v34;
        v57 = 0x69646E6F43726961;
        switch(*(*(v37 + 48) + v55))
        {
          case 1:
            v57 = sub_10BC8C();
            goto LABEL_32;
          case 2:
            v59 = 1768191329;
            goto LABEL_26;
          case 3:
            v57 = sub_10BC6C();
            break;
          case 4:
            v57 = sub_10C1A4();
            break;
          case 5:
            v57 = sub_10BC4C();
LABEL_32:
            v56 = v34 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v57 = sub_10BF20();
            break;
          case 7:
            v57 = sub_10C194();
            break;
          case 8:
            v56 = 0xE500000000000000;
            v57 = sub_93F0C();
            break;
          case 9:
            v57 = sub_10BCD8();
            goto LABEL_29;
          case 0xA:
            v61 = 1684104552;
            goto LABEL_47;
          case 0xB:
            v57 = sub_10C104() | 0x646F0000u;
            break;
          case 0xC:
            v57 = sub_10C104() | 0x6E720000u;
            break;
          case 0xD:
            v57 = sub_10BC2C();
            goto LABEL_35;
          case 0xE:
            v57 = sub_10BF34();
            break;
          case 0xF:
            v57 = sub_10BD80();
            break;
          case 0x10:
            v58 = sub_10BCF4();
            v57 = sub_10C1D4(v58);
            goto LABEL_29;
          case 0x11:
            v60 = sub_10BCF4();
            v57 = sub_10C164(v60);
LABEL_29:
            v56 = v34 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 0x12:
            v57 = sub_10BE70();
            goto LABEL_48;
          case 0x13:
            v57 = sub_10BD98();
            break;
          case 0x14:
            v57 = sub_10C1B4();
            break;
          case 0x15:
            v57 = sub_10C1C4();
            break;
          case 0x16:
            v57 = sub_10BE20();
            goto LABEL_45;
          case 0x17:
            v57 = sub_10BE0C();
LABEL_45:
            v56 = 0xEA00000000007265;
            break;
          case 0x18:
            v57 = sub_10BF48();
            break;
          case 0x19:
            v57 = sub_10BCBC();
            goto LABEL_27;
          case 0x1A:
            v57 = 0xD000000000000013;
            v56 = v76;
            break;
          case 0x1B:
            v57 = sub_10BD68();
            break;
          case 0x1C:
            v61 = 1818845556;
LABEL_47:
            v57 = v61 | 0x6867694C00000000;
LABEL_48:
            v56 = 0xE900000000000074;
            break;
          case 0x1D:
            v57 = sub_10BE48();
            break;
          case 0x1E:
            v57 = sub_10BE5C();
            break;
          case 0x1F:
            v59 = 1769171318;
LABEL_26:
            v57 = sub_10BE94(v59);
LABEL_27:
            v56 = v34 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_35:
            v56 = v56 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 0x20:
            sub_10BE34();
            sub_10C0DC();
            v56 = v62 - 1540;
            break;
          case 0x21:
            v57 = sub_10BBC0();
            break;
          case 0x22:
            v57 = sub_10BEF8();
            break;
          case 0x23:
            v57 = sub_10BF0C();
            break;
          default:
            break;
        }

        v63 = 0x69646E6F43726961;
        v64 = v34;
        switch(v43)
        {
          case 1:
            sub_10BDF8();
            v65 = 0x746867694C73;
            goto LABEL_76;
          case 2:
            v69 = 1768191329;
            goto LABEL_70;
          case 3:
            sub_10BFD0();
            v64 = 0xEB00000000656372;
            break;
          case 4:
            v64 = 0xE300000000000000;
            v63 = 7496035;
            break;
          case 5:
            sub_10BF84();
            v65 = 0x6C6F72746E6FLL;
LABEL_76:
            v64 = v65 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            break;
          case 6:
            v64 = 0xE600000000000000;
            sub_10C1F4();
            break;
          case 7:
            v64 = 0xE300000000000000;
            v63 = 7233894;
            break;
          case 8:
            v64 = 0xE500000000000000;
            sub_EACE8();
            break;
          case 9:
            sub_10C020();
            v67 = 1937008743;
            goto LABEL_73;
          case 10:
            v72 = 1684104552;
            goto LABEL_91;
          case 11:
            v64 = 0xE400000000000000;
            v63 = 1685024616;
            break;
          case 12:
            v64 = 0xE400000000000000;
            v63 = 1852993384;
            break;
          case 13:
            sub_10BF70();
            v70 = 0x746867694CLL;
            goto LABEL_79;
          case 14:
            v64 = 0xE600000000000000;
            sub_10C224();
            break;
          case 15:
            v64 = 0xE700000000000000;
            sub_10BFBC();
            break;
          case 16:
            sub_10BD24();
            v63 = v66 & 0xFFFFFFFFFFFFLL | 0x4267000000000000;
            v67 = 1701536114;
            goto LABEL_73;
          case 17:
            sub_10BD24();
            v63 = v71 & 0xFFFFFFFFFFFFLL | 0x4C67000000000000;
            v67 = 1952999273;
LABEL_73:
            v64 = v67 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          case 18:
            sub_10BF5C();
            goto LABEL_92;
          case 19:
            v64 = 0xE700000000000000;
            sub_10BEA8();
            break;
          case 20:
            v64 = 0xE400000000000000;
            v63 = 1918985586;
            break;
          case 21:
            v64 = 0xE400000000000000;
            v63 = 1952540019;
            break;
          case 22:
            sub_10BED0();
            goto LABEL_89;
          case 23:
            sub_10BEBC();
LABEL_89:
            v64 = 0xEA00000000007265;
            break;
          case 24:
            v64 = 0xE600000000000000;
            sub_10C214();
            break;
          case 25:
            sub_10C00C();
            v68 = 1701144663;
            goto LABEL_71;
          case 26:
            v63 = 0xD000000000000013;
            v64 = v76;
            break;
          case 27:
            v64 = 0xE700000000000000;
            sub_10C034();
            break;
          case 28:
            v72 = 1818845556;
LABEL_91:
            v63 = v72 | 0x6867694C00000000;
LABEL_92:
            v64 = 0xE900000000000074;
            break;
          case 29:
            v64 = 0xE500000000000000;
            sub_10C184();
            break;
          case 30:
            v64 = 0xE500000000000000;
            sub_10C1E4();
            break;
          case 31:
            v69 = 1769171318;
LABEL_70:
            v63 = v69 | 0x53656C6200000000;
            v68 = 1634625385;
LABEL_71:
            v70 = v68 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
LABEL_79:
            v64 = v70 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 32:
            sub_10BEE4();
            sub_10C0DC();
            v64 = v73 - 1540;
            break;
          case 33:
            v64 = 0xE700000000000000;
            sub_EAAF0();
            break;
          case 34:
            v64 = 0xE600000000000000;
            sub_10C154();
            break;
          case 35:
            v64 = 0xE600000000000000;
            sub_10C144();
            break;
          default:
            break;
        }

        if (v57 == v63 && v56 == v64)
        {
          break;
        }

        v75 = sub_16AE54();

        if (v75)
        {
          goto LABEL_105;
        }

        v55 = (v55 + 1) & v79;
        if (((*(v40 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
        {
          goto LABEL_101;
        }
      }
    }

LABEL_105:
    sub_10C3A8();
  }
}

unint64_t sub_10B9A8()
{
  result = qword_1ED128;
  if (!qword_1ED128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED128);
  }

  return result;
}

void sub_10B9FC(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

id sub_10BA0C(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10BA1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1ED148, &unk_178230);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&unk_1EC980, &qword_178180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10BAFC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10BB10(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10BB64()
{
  result = qword_1ED170;
  if (!qword_1ED170)
  {
    sub_1697F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED170);
  }

  return result;
}

uint64_t sub_10BD48()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10BF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return sub_16A6F4();
}

uint64_t sub_10BFF8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_10C078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_16AD84();
}

uint64_t sub_10C098(uint64_t a1)
{

  return sub_16AE54();
}

uint64_t sub_10C0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16AE54();
}

uint64_t sub_10C11C()
{

  return sub_16ACC4();
}

uint64_t sub_10C234()
{

  return sub_10BAFC(v0, v1);
}

uint64_t sub_10C258(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10C29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_16AE54();
}

void sub_10C2B4(Swift::String a1)
{

  sub_16A744(a1);
}

void *sub_10C2CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_108ED8(v5, a2, a3, a4, v4);
}

uint64_t sub_10C3E0(uint64_t a1, uint64_t a2, ...)
{

  return sub_16A694();
}

void sub_10C3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{

  sub_100E24(a1, v34, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_10C410()
{

  return swift_allocObject();
}

uint64_t sub_10C428()
{
}

uint64_t sub_10C440@<X0>(uint64_t a1@<X8>)
{
  sub_86E4(v1, &_swiftEmptySetSingleton, v9);
  if (v9[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1E5F98, &unk_16D420);
    if (swift_dynamicCast())
    {
      if (*(&v11 + 1))
      {
        sub_D250(&v10, v13);
        v3 = v14;
        v4 = v15;
        sub_D084(v13, v14);
        (*(v4 + 16))(v3, v4);
        return sub_D13C(v13);
      }
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }
  }

  else
  {
    sub_D188(v9, &qword_1E5F80, &unk_16E7E0);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_D188(&v10, &qword_1E5F88, &unk_16D410);
  if (qword_1E58E8 != -1)
  {
    swift_once();
  }

  v6 = sub_16A584();
  sub_9DA0(v6, qword_1E65C0);
  v7 = sub_16A9A4();
  sub_386D8(v7, 1uLL, 0xD000000000000075, 0x800000000018E7F0, 0xD000000000000011, 0x800000000018E870, 14, 0xD000000000000016, 0x8000000000182F10);
  v8 = sub_169004();
  return sub_5370(a1, 1, 1, v8);
}

uint64_t sub_10C640(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10C680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10C6DC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10C6F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_10C748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10C7C0(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 64) = a3;
  *(v4 + 72) = v3;
  *(v4 + 56) = a2;
  *(v4 + 96) = a1;
  return sub_D2B0();
}

uint64_t sub_10C7DC()
{
  if (*(v0 + 96) == 2)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v1 = sub_16A584();
    sub_9DA0(v1, qword_1E65C0);
    sub_16A9A4();
    sub_10F1A8();
    sub_386D8(v3, 0x200000000uLL, v4, v5, 0xD000000000000032, v6, 41, v2 + 2, v28);
    v7 = swift_task_alloc();
    v8 = sub_10F1EC(v7);
    *v8 = v9;
    v10 = sub_10F164;
LABEL_18:
    v8[1] = v10;

    return sub_10CBE8();
  }

  v11 = *(v0 + 64);
  if (v11)
  {
    v12 = *(v0 + 56);
  }

  else
  {
    v13 = sub_10DF68();
    if (!v14)
    {
LABEL_15:
      if (qword_1E58E8 != -1)
      {
        sub_9ED4(&qword_1E58E8);
      }

      v20 = sub_16A584();
      sub_9DA0(v20, qword_1E65C0);
      sub_16A9A4();
      sub_10F1A8();
      sub_386D8(v22, 0x200000000uLL, v23, v24, 0xD000000000000032, v25, 47, v21 + 17, v28);
      v8 = swift_task_alloc();
      *(v0 + 80) = v8;
      *v8 = v0;
      v10 = sub_10CB08;
      goto LABEL_18;
    }

    v12 = v13;
    v11 = v14;
  }

  v15 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v15 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

    goto LABEL_15;
  }

  sub_2F868(*(v0 + 72), v0 + 16, &qword_1E6060, &unk_1752B0);
  v16 = *(v0 + 40);
  if (v16)
  {
    v17 = *(v0 + 96);
    v18 = *(v0 + 48);
    sub_D084((v0 + 16), *(v0 + 40));
    v19 = *(v18 + 40);

    v19(v17 & 1, v12, v11, v16, v18);

    sub_D13C((v0 + 16));
  }

  else
  {

    sub_CEBE8(v0 + 16, &qword_1E6060);
  }

  sub_1677C();

  return v27();
}

uint64_t sub_10CB08()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

uint64_t sub_10CBFC()
{
  v1 = sub_10DF68();
  v0[29] = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    sub_16ACF4(27);

    sub_D434();
    v16 = v5;
    v18._countAndFlagsBits = sub_37740();
    sub_16A744(v18);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v6 = sub_16A584();
    v0[30] = sub_9DA0(v6, qword_1E65C0);
    v7 = sub_16A9A4();
    sub_386D8(v7, 0x800000000uLL, 0xD00000000000009CLL, 0x800000000018E890, 0xD00000000000001CLL, 0x800000000018EA70, 60, 0xD000000000000019, v16);

    v8 = swift_task_alloc();
    v0[31] = v8;
    *v8 = v0;
    v8[1] = sub_10CE14;

    return sub_10E7EC((v0 + 8), v3, v4);
  }

  else
  {
    type metadata accessor for CarCommandsError(0);
    v10 = sub_11D28();
    v11 = sub_5A144(v10);
    sub_CED14(v11, v12);
    sub_D434();
    sub_10F1C4(v13, v14);
    swift_willThrow();
    sub_D37C();

    return v15();
  }
}

uint64_t sub_10CE14()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v3 + 256) = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

uint64_t sub_10CF1C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 24) = v1;
    v2 = *(v0 + 96);
    *(v0 + 32) = *(v0 + 80);
    *(v0 + 48) = v2;
    sub_16ACF4(49);

    sub_D434();
    v16 = v3;
    v4 = *(v0 + 16);
    v5 = *(v0 + 32);
    *(v0 + 176) = v4;
    v6 = *(v0 + 48);
    *(v0 + 112) = v4;
    *(v0 + 128) = v5;
    *(v0 + 144) = *(v0 + 48);
    *(v0 + 160) = v6;
    sub_10F108(v0 + 176, v0 + 192);
    sub_2F868(v0 + 160, v0 + 208, &qword_1E5FA0, &qword_172DD0);
    v18._countAndFlagsBits = sub_16A694();
    sub_16A744(v18);

    v7 = sub_16A9A4();
    sub_386D8(v7, 0x800000000uLL, 0xD00000000000009CLL, 0x800000000018E890, 0xD00000000000001CLL, 0x800000000018EA70, 66, 0xD00000000000002FLL, v16);

    v8 = swift_task_alloc();
    *(v0 + 264) = v8;
    *v8 = v0;
    v8[1] = sub_10D148;

    return sub_10D8F8(v0 + 16);
  }

  else
  {
    type metadata accessor for CarCommandsError(0);
    v10 = sub_11D28();
    v11 = sub_5A144(v10);
    sub_CED14(v11, v12);
    sub_D434();
    sub_10F1C4(v13, v14);
    swift_willThrow();
    sub_D37C();

    return v15();
  }
}

uint64_t sub_10D148()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 272) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_10D240()
{
  sub_D2DC();
  sub_CEB94(v0 + 176);
  sub_CEBE8(v0 + 160, &qword_1E5FA0);
  sub_1677C();

  return v1();
}

uint64_t sub_10D2B0()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_10D30C()
{
  sub_D2DC();
  sub_CEB94(v0 + 176);
  sub_CEBE8(v0 + 160, &qword_1E5FA0);
  sub_D37C();

  return v1();
}

uint64_t sub_10D380()
{
  sub_D2DC();
  *(v0 + 57) = v1;
  *(v0 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10D410;

  return sub_10E3C8();
}

uint64_t sub_10D410()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    sub_D37C();

    return v5();
  }

  else
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }
}

uint64_t sub_10D52C()
{
  v1 = v0;
  v2 = 0;
  v3 = *(v0 + 48);
  v30 = v3;
  v31 = *(v3 + 16);
  v4 = (v3 + 40);
  while (2)
  {
    if (v31 == v2)
    {
      v18 = *(v1 + 57);
      type metadata accessor for CarCommandsError(0);
      v19 = sub_11D28();
      sub_16924(v19);
      sub_16ACF4(52);
      *(v1 + 16) = 0;
      *(v1 + 24) = 0xE000000000000000;
      v33._object = 0x800000000018EB80;
      v33._countAndFlagsBits = 0xD000000000000023;
      sub_16A744(v33);
      *(v1 + 56) = v18;
      sub_16AD84();
      v34._countAndFlagsBits = 0x72756F73206E6920;
      v34._object = 0xED0000203A736563;
      sub_16A744(v34);
      v20 = sub_16A7E4();
      v22 = v21;

      v35._countAndFlagsBits = v20;
      v35._object = v22;
      sub_16A744(v35);

      sub_10F1F8(*(v1 + 16));
      swift_willThrow();
      v23 = *(v1 + 8);
      goto LABEL_27;
    }

    if (v2 >= *(v30 + 16))
    {
      __break(1u);
      JUMPOUT(0x10D8C4);
    }

    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 3);
    v8 = 0xE200000000000000;
    v9 = 28006;
    v10 = v4[3];
    v11 = v4[4];
    switch(*(v4 + 8))
    {
      case 1:
        v9 = 28001;
        goto LABEL_10;
      case 2:
        v9 = 28024;
        goto LABEL_10;
      case 3:
        v8 = 0xE300000000000000;
        v9 = 6447460;
        goto LABEL_10;
      case 4:
        v8 = 0xE500000000000000;
        v9 = 0x6261646D66;
        goto LABEL_10;
      case 5:
        v8 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E75;
        goto LABEL_10;
      case 6:
        goto LABEL_22;
      default:
LABEL_10:
        v12 = 0xE200000000000000;
        v13 = 28006;
        switch(*(v1 + 57))
        {
          case 1:
            v13 = 28001;
            break;
          case 2:
            v13 = 28024;
            break;
          case 3:
            v12 = 0xE300000000000000;
            v13 = 6447460;
            break;
          case 4:
            v12 = 0xE500000000000000;
            v13 = 0x6261646D66;
            break;
          case 5:
            v12 = 0xE700000000000000;
            v13 = 0x6E776F6E6B6E75;
            break;
          default:
            break;
        }

        v27 = *(v4 - 1);
        v28 = *(v4 + 16);
        if (v9 == v13 && v8 == v12)
        {

          v24 = v29;

          goto LABEL_26;
        }

        v15 = v4[3];
        v16 = v2;
        v17 = sub_16AE54();

        if ((v17 & 1) == 0)
        {

          v1 = v29;
          v2 = v16;
LABEL_22:
          v4 += 6;
          ++v2;
          continue;
        }

        v24 = v29;
        v10 = v15;
LABEL_26:
        v25 = *(v24 + 32);

        *v25 = v27;
        v25[1] = v5;
        v25[2] = v6 | (v7 << 32);
        v25[3] = v28;
        v25[4] = v10;
        v25[5] = v11;
        v23 = *(v24 + 8);
LABEL_27:

        return v23();
    }
  }
}

uint64_t sub_10D8F8(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10D90C()
{
  v1 = *(v0 + 120);
  sub_16ACF4(34);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  v20._countAndFlagsBits = 0xD000000000000020;
  v20._object = 0x800000000018E950;
  sub_16A744(v20);
  v2 = *v1;
  v3 = v1[1];
  *(v0 + 48) = v1[2];
  *(v0 + 32) = v3;
  *(v0 + 16) = v2;
  sub_16AD84();
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v6 = *(v0 + 128);
  v7 = sub_16A584();
  sub_9DA0(v7, qword_1E65C0);
  v8 = sub_16A9A4();
  sub_386D8(v8, 0x800uLL, 0xD00000000000009CLL, 0x800000000018E890, 0xD000000000000013, 0x800000000018E930, 19, v4, v5);

  sub_2F868(v6, v0 + 64, &qword_1E6060, &unk_1752B0);
  v9 = *(v0 + 88);
  if (v9)
  {
    v10 = *(v0 + 96);
    v11 = sub_37740();
    sub_D084(v11, v12);
    sub_61494();
    v18 = (v13 + *v13);
    v14 = swift_task_alloc();
    *(v0 + 136) = v14;
    *v14 = v0;
    v14[1] = sub_10DBD8;
    v15 = sub_10F1E0(*(v0 + 120));

    return v18(v15, v9, v10);
  }

  else
  {
    sub_CEBE8(v0 + 64, &qword_1E6060);
    sub_1677C();

    return v17();
  }
}

uint64_t sub_10DBD8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 144) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_10DCD0()
{
  sub_D2DC();
  sub_D13C((v0 + 64));
  sub_1677C();

  return v1();
}

uint64_t sub_10DD28()
{
  sub_D2DC();
  sub_D13C(v0 + 8);
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10DDBC;
  v2 = sub_10F1E0(v0[15]);

  return sub_10E01C(v2);
}

uint64_t sub_10DDBC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_10DEB4()
{
  sub_D2DC();

  sub_1677C();

  return v0();
}

uint64_t sub_10DF0C()
{
  sub_D2DC();

  sub_D37C();

  return v0();
}

uint64_t sub_10DF68()
{
  sub_2F868(v0 + 40, v5, &qword_1EA118, &qword_173E88);
  v1 = v6;
  if (v6)
  {
    sub_D084(v5, v6);
    v2 = sub_37740();
    v1 = v3(v2);
    sub_D13C(v5);
  }

  else
  {
    sub_CEBE8(v5, &qword_1EA118);
  }

  return v1;
}

uint64_t sub_10E01C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10E03C);
}

uint64_t sub_10E03C()
{
  v1 = v0[7];
  if ((*(v1 + 24) & 1) != 0 || (v2 = *(v1 + 20), !v2))
  {
    v11 = swift_task_alloc();
    v12 = sub_10F1EC(v11);
    *v12 = v13;
    v12[1] = sub_10F164;
    v14 = sub_10F1E0(v0[7]);

    return sub_10EB88(v14);
  }

  else
  {
    sub_2F868(v0[8], (v0 + 2), &qword_1E6060, &unk_1752B0);
    v3 = v0[5];
    if (v3)
    {
      v4 = v0[6];
      v5 = v0[7];
      sub_D084(v0 + 2, v0[5]);
      v6 = *v5;
      v7 = v5[1];
      sub_61494();
      v16 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[9] = v9;
      *v9 = v0;
      v9[1] = sub_10E278;

      return v16(v6, v7, v2, v3, v4);
    }

    else
    {
      sub_CEBE8((v0 + 2), &qword_1E6060);
      sub_1677C();

      return v15();
    }
  }
}

uint64_t sub_10E278()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_10E370()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_1677C();

  return v1();
}

uint64_t sub_10E3E8()
{
  sub_2F868(v0[7], (v0 + 2), &qword_1E6060, &unk_1752B0);
  if (v0[5])
  {
    sub_D084(v0 + 2, v0[5]);
    sub_61494();
    v11 = (v1 + *v1);
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_10E5AC;
    v3 = sub_37740();

    return v11(v3);
  }

  else
  {
    sub_CEBE8((v0 + 2), &qword_1E6060);
    type metadata accessor for CarCommandsError(0);
    v5 = sub_11D28();
    v6 = sub_5A144(v5);
    sub_CED14(v6, v7);
    sub_D434();
    sub_10F1C4(v8, v9);
    swift_willThrow();
    sub_D37C();

    return v10();
  }
}

uint64_t sub_10E5AC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 72) = v4;
  *(v2 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v5);
}

uint64_t sub_10E6AC()
{
  v1 = v0[9];
  sub_D13C(v0 + 2);
  if (v1)
  {
    v2 = v0[9];
    v3 = v0[1];

    return v3(v2);
  }

  else
  {
    type metadata accessor for CarCommandsError(0);
    v5 = sub_11D28();
    v6 = sub_5A144(v5);
    sub_CED14(v6, v7);
    sub_D434();
    sub_10F1C4(v8, v9);
    swift_willThrow();
    sub_D37C();

    return v10();
  }
}

uint64_t sub_10E790()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_D37C();

  return v1();
}

uint64_t sub_10E7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = swift_task_alloc();
  v3[5] = v4;
  *v4 = v3;
  v4[1] = sub_10E880;

  return sub_10E3C8();
}

uint64_t sub_10E880()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;

  if (v0)
  {
    sub_D37C();

    return v5();
  }

  else
  {
    sub_10B4C();

    return _swift_task_switch(v7);
  }
}

uint64_t sub_10E99C()
{
  v1 = v0[6];
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  while (1)
  {
    if (!--v3)
    {
      v13 = v0[3];
      v12 = v0[4];
      type metadata accessor for CarCommandsError(0);
      v14 = sub_11D28();
      sub_16924(v14);
      sub_16ACF4(65);
      v22._object = 0x800000000018EB20;
      v22._countAndFlagsBits = 0xD00000000000002FLL;
      sub_16A744(v22);
      v23._countAndFlagsBits = v13;
      v23._object = v12;
      sub_16A744(v23);
      v24._countAndFlagsBits = 0x756F73206E692027;
      v24._object = 0xEE00203A73656372;
      sub_16A744(v24);
      v15 = sub_16A7E4();
      v17 = v16;

      v25._countAndFlagsBits = v15;
      v25._object = v17;
      sub_16A744(v25);

      sub_10F1F8(0);
      swift_willThrow();
      sub_D37C();
      goto LABEL_12;
    }

    v4 = *(v2 - 1);
    v5 = *v2;
    v6 = *(v2 + 8);
    v7 = *(v2 + 3);
    v8 = *(v2 + 16);
    v10 = v2[3];
    v9 = v2[4];
    if (v4 == v0[3] && v5 == v0[4])
    {
      break;
    }

    v2 += 6;
    if (sub_16AE54())
    {
      goto LABEL_11;
    }
  }

  v4 = v0[3];
LABEL_11:
  v19 = v0[2];

  *v19 = v4;
  v19[1] = v5;
  v19[2] = v6 | (v7 << 32);
  v19[3] = v8;
  v19[4] = v10;
  v19[5] = v9;
  sub_1677C();
LABEL_12:

  return v18();
}

uint64_t sub_10EB88(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_10EBA8);
}

uint64_t sub_10EBA8()
{
  sub_2F868(v0[8] + 40, (v0 + 2), &qword_1EA118, &qword_173E88);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    sub_D084(v0 + 2, v0[5]);
    sub_61494();
    v13 = (v3 + *v3);
    v4 = swift_task_alloc();
    v0[9] = v4;
    *v4 = v0;
    v4[1] = sub_10ED5C;
    v5 = sub_10F1E0(v0[7]);

    return v13(v5, v1, v2);
  }

  else
  {
    sub_CEBE8((v0 + 2), &qword_1EA118);
    v7 = swift_task_alloc();
    v8 = sub_10F1EC(v7);
    *v8 = v9;
    v10 = sub_10F174(v8);

    return sub_10C7C0(v10, v11, v12);
  }
}

uint64_t sub_10ED5C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 80) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_10EE54()
{
  sub_D13C((v0 + 16));
  v1 = swift_task_alloc();
  v2 = sub_10F1EC(v1);
  *v2 = v3;
  v4 = sub_10F174(v2);

  return sub_10C7C0(v4, v5, v6);
}

uint64_t sub_10EED8()
{
  sub_D2DC();
  sub_D358();
  v1 = *v0;
  sub_D254();
  *v2 = v1;

  sub_D37C();

  return v3();
}

BOOL sub_10EFB8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_16AE54() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v5 == 6)
  {
    if (v6 != 6)
    {
      return 0;
    }
  }

  else
  {
    if (v6 == 6)
    {
      return 0;
    }

    v7 = sub_BE77C(v5);
    v9 = v8;
    if (v7 == sub_BE77C(v6) && v9 == v10)
    {
    }

    else
    {
      v12 = sub_16AE54();

      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v13 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 5) != *(a2 + 20))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = a1[5];
  v15 = *(a2 + 40);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = a1[4] == *(a2 + 32) && v14 == v15;
    return v16 || (sub_16AE54() & 1) != 0;
  }

  return !v15;
}

uint64_t sub_10F1C4@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = v3;
  a2[1] = a3;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10F1F8@<X0>(uint64_t a1@<X8>)
{
  *v2 = a1;
  v2[1] = v1;

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_10F218(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1D3740;
  v6._object = a2;
  v4 = sub_16ADE4(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10F264(char a1)
{
  result = 28271;
  switch(a1)
  {
    case 1:
      result = 6710895;
      break;
    case 2:
      result = 0x64656B636F6CLL;
      break;
    case 3:
      result = 0x64656B636F6C6E75;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10F304@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10F218(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_10F334@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10F264(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CarCommandsSettingsStateNLv3Value(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10F43CLL);
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

unint64_t sub_10F478()
{
  result = qword_1ED1C8;
  if (!qword_1ED1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1C8);
  }

  return result;
}

uint64_t sub_10F4CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10F658();
  v5 = sub_10F6AC();
  v6 = sub_10F700();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_10F544()
{
  result = qword_1ED1D0;
  if (!qword_1ED1D0)
  {
    sub_37130(&qword_1ED1D8, &qword_1784A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1D0);
  }

  return result;
}

unint64_t sub_10F5AC()
{
  result = qword_1ED1E0;
  if (!qword_1ED1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1E0);
  }

  return result;
}

unint64_t sub_10F604()
{
  result = qword_1ED1E8;
  if (!qword_1ED1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1E8);
  }

  return result;
}

unint64_t sub_10F658()
{
  result = qword_1ED1F0;
  if (!qword_1ED1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1F0);
  }

  return result;
}

unint64_t sub_10F6AC()
{
  result = qword_1ED1F8;
  if (!qword_1ED1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED1F8);
  }

  return result;
}

unint64_t sub_10F700()
{
  result = qword_1ED200;
  if (!qword_1ED200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED200);
  }

  return result;
}

uint64_t sub_10F754(uint64_t a1, __int128 *a2)
{
  *(v2 + 48) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 16) = 0u;
  swift_beginAccess();
  sub_CD04C(a1, v2 + 16);
  swift_endAccess();
  sub_D124(a2, v2 + 56);
  return v2;
}

uint64_t sub_10F7D4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10F7E8()
{
  sub_10B8C();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  sub_112EB4();
  sub_112C24();
  sub_D3C8();
  sub_112C84();
  v0();
  v1 = sub_112C6C();
  v2(v1);
  v3 = sub_112C9C();
  v4(v3);
  v5 = sub_5758(&qword_1ED368, &qword_178648);
  v6 = sub_112E80(v5);
  v7 = sub_112CF8(v6, xmmword_16D9A0);
  v15 = sub_112E08(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v31);
  sub_112E48(v15);
  sub_112ED8();
  v23 = sub_112CB4(v16, v17, v18, v19, &off_1D1938, v20, v21, v22, v29);
  sub_112E64(v23);
  v24 = swift_task_alloc();
  v25 = sub_112ECC(v24);
  *v25 = v26;
  sub_3099C(v25);

  return sub_D613C();
}

uint64_t sub_10F940()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
    sub_112F30();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_10FA4C(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10FA60()
{
  sub_10B8C();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  sub_112EB4();
  sub_112C24();
  sub_D3C8();
  sub_112C84();
  v0();
  v1 = sub_112C6C();
  v2(v1);
  v3 = sub_112C9C();
  v4(v3);
  v5 = sub_5758(&qword_1ED368, &qword_178648);
  v6 = sub_112E80(v5);
  v7 = sub_112CF8(v6, xmmword_16D9A0);
  v15 = sub_112E08(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v31);
  sub_112E48(v15);
  sub_112ED8();
  v23 = sub_112CB4(v16, v17, v18, v19, &off_1D1910, v20, v21, v22, v29);
  sub_112E64(v23);
  v24 = swift_task_alloc();
  v25 = sub_112ECC(v24);
  *v25 = v26;
  sub_3099C(v25);

  return sub_D613C();
}

uint64_t sub_10FBB8()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (!v0)
  {
    sub_112F30();
  }

  sub_3021C();

  return _swift_task_switch(v7);
}

uint64_t sub_10FCC4()
{
  sub_D2DC();
  v1 = *(v0 + 144);
  if (*(v0 + 168))
  {
    v2 = *(v0 + 136);
    v3 = &off_1D8010;
  }

  else
  {
    v4 = *(v0 + 120);
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;

    v2 = 0;
    v3 = 0;
    v1 = 0;
  }

  v5 = *(v0 + 120);
  v5[3] = v2;
  v5[4] = v3;
  *v5 = v1;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10FD5C()
{
  sub_D2DC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10FDBC(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_10FDD0()
{
  sub_D3A4();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  v2 = *(v0 + 88);
  v3 = sub_112EB4();
  sub_112C24();
  sub_D3C8();
  sub_112C84();
  v4();
  v5 = sub_112C6C();
  v6(v5);
  v7 = sub_112C9C();
  v8(v7);
  sub_5758(&qword_1ED368, &qword_178648);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_16EE50;
  *(v9 + 32) = xmmword_170850;
  *(v9 + 48) = 3;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_16D3A0;
  *(v10 + 32) = xmmword_1785B0;
  v11 = type metadata accessor for WalletCarActivatableAccessory();
  sub_112E48(v11);
  sub_112ED8();
  v12 = sub_D5CC8((v1 + 16), v1 + 56, v3, v2, &off_1D18B8, 0, v9, 1, v17);
  sub_112E64(v12);
  v13 = swift_task_alloc();
  v14 = sub_112ECC(v13);
  *v14 = v15;
  sub_3099C(v14);

  return sub_D613C();
}

uint64_t sub_10FFA4()
{
  sub_D3A4();
  v1 = *(v0 + 16);
  v2 = *(v1 + 80);
  v3 = sub_D084((v1 + 56), v2);
  sub_37404();
  v5 = v4;
  v6 = sub_D3C8();
  (*(v5 + 16))(v6, v3, v2);
  v7 = sub_37740();
  v9 = v8(v7);
  (*(v5 + 8))(v6, v2);

  sub_30AEC();

  return v10(v9 & 1);
}

uint64_t sub_1100C4(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return sub_D2B0();
}

uint64_t sub_1100D8()
{
  sub_10B8C();
  sub_112E2C();
  sub_112DA8();
  sub_112E9C();
  sub_112EB4();
  sub_112C24();
  sub_D3C8();
  sub_112C84();
  v0();
  v1 = sub_112C6C();
  v2(v1);
  v3 = sub_112C9C();
  v4(v3);
  v5 = sub_5758(&qword_1ED368, &qword_178648);
  v6 = sub_112E80(v5);
  v7 = sub_112CF8(v6, xmmword_16D9A0);
  v15 = sub_112E08(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v31);
  sub_112E48(v15);
  sub_112ED8();
  v23 = sub_112CB4(v16, v17, v18, v19, &off_1D18E8, v20, v21, v22, v29);
  sub_112E64(v23);
  v24 = swift_task_alloc();
  v25 = sub_112ECC(v24);
  *v25 = v26;
  sub_3099C(v25);

  return sub_D613C();
}

uint64_t sub_110244()
{
  sub_D3A4();
  swift_beginAccess();
  sub_112E9C();
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    sub_D124((v0 + 56), v0 + 16);
    sub_D084((v0 + 16), *(v0 + 40));
    sub_10824(v1 + 56, v0 + 96);
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 168) = v2;
    *v2 = v3;
    v2[1] = sub_110420;

    return sub_A6354(v0 + 96);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1EAFA0, &qword_175890);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v5 = sub_16A584();
    sub_9DA0(v5, qword_1E65C0);
    v6 = sub_16A9A4();
    sub_386D8(v6, 0x20000uLL, 0xD000000000000085, 0x800000000018EBF0, 0xD000000000000010, 0x800000000018ED60, 104, 0xD000000000000055, 0x800000000018ED80);
    sub_30AEC();

    return v7(1);
  }
}

uint64_t sub_110420()
{
  sub_D2DC();
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 176) = v4;

  sub_D13C((v2 + 96));
  v5 = sub_D388();

  return _swift_task_switch(v5);
}

uint64_t sub_110514()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  sub_30AEC();

  return v1();
}

id sub_110574(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  sub_112EB4();
  sub_112C24();
  v5 = v4;
  __chkstk_darwin(v6);
  sub_112C54();
  (*(v5 + 16))(v1);
  (*(v2 + 64))(v3, v2);
  (*(v5 + 8))(v1, v3);
  v7 = v1[10];
  v8 = v1[11];
  sub_D084(v1 + 7, v7);
  sub_112C24();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_112C54();
  (*(v10 + 16))(v1);
  v12 = (*(v8 + 56))(v7, v8);
  v14 = v13;
  (*(v10 + 8))(v1, v7);
  v15 = objc_allocWithZone(INSpeakableString);
  v16 = sub_37740();
  return sub_1128FC(v16, v17, v12, v14, 0, 0);
}

unint64_t sub_110748()
{
  result = sub_110B90();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v6 = *(result + 16);
  while (1)
  {
    if (v6 == v5)
    {
      goto LABEL_19;
    }

    if (v5 >= *(v4 + 16))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      sub_9ED4(&qword_1E58E8);
      v14 = sub_16A584();
      sub_9DA0(v14, qword_1E65C0);
      v15 = sub_16A9A4();
      sub_386D8(v15, 0x20000uLL, &_s12SiriOntology23UsoEntity_common_NumberC13DefinedValuesO0e1_F12_MiddleValueyA2EmFWC_ptr + 5, v1 | 0x8000000000000000, 0xD000000000000018, (v2 | 0x8000000000000000), 147, v0, v4);

LABEL_19:

      return 0;
    }

    v0 = *(v4 + 8 * v5 + 32);
    if (v0 < 0)
    {
      goto LABEL_25;
    }

    v7 = objc_allocWithZone(LSApplicationRecord);
    v1 = sub_1129C0(v0);
    v8 = sub_112B50(v1, &selRef_bundleIdentifier);
    v2 = v9;
    v10 = sub_16A1B4();
    v0 = v11;
    if (!v2)
    {

      if (!v0)
      {
LABEL_20:

        return 1;
      }

      goto LABEL_17;
    }

    if (!v11)
    {

      v0 = v2;
LABEL_17:

      goto LABEL_18;
    }

    if (v8 == v10 && v2 == v11)
    {
      break;
    }

    v13 = sub_16AE54();

    if (v13)
    {
      goto LABEL_20;
    }

LABEL_18:
    ++v5;
  }

  return 1;
}

BOOL sub_1109B4()
{
  v0 = sub_110C5C();
  if (v0)
  {
    v1 = v0;
    v2 = sub_16A1B4();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = objc_allocWithZone(LSApplicationRecord);
      v8 = sub_112A74(v4, v5, 0);
      v9 = sub_112B50(v8, &selRef_applicationIdentifier);
      if (v10)
      {
        v11 = sub_9CB4(v9, v10, v1);

        return v11;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_110B90()
{
  v1 = v0[11];
  sub_D084(v0 + 7, v0[10]);
  sub_37404();
  __chkstk_darwin(v2);
  sub_112C54();
  v3 = sub_112EE4();
  v4(v3);
  v5 = sub_37740();
  v6(v5);
  v7 = sub_112F3C();
  v8(v7);
  return v1;
}

uint64_t sub_110C5C()
{
  v1 = v0[11];
  sub_D084(v0 + 7, v0[10]);
  sub_37404();
  __chkstk_darwin(v2);
  sub_112C54();
  v3 = sub_112EE4();
  v4(v3);
  v5 = sub_37740();
  v6(v5);
  v7 = sub_112F3C();
  v8(v7);
  return v1;
}

uint64_t sub_110D28()
{
  sub_D2DC();
  switch(v1)
  {
    case 0:
    case 1:
      swift_task_alloc();
      sub_D3E0();
      v0[22] = v9;
      *v9 = v10;
      v9[1] = sub_110F84;

      result = sub_10FDBC((v0 + 17));
      break;
    case 2:
    case 4:
    case 6:
      swift_task_alloc();
      sub_D3E0();
      v0[24] = v2;
      *v2 = v3;
      v2[1] = sub_1110EC;

      result = sub_10F7D4((v0 + 12));
      break;
    case 5:
    case 13:
      swift_task_alloc();
      sub_D3E0();
      v0[26] = v5;
      *v5 = v6;
      v5[1] = sub_111254;

      result = sub_1100C4((v0 + 7));
      break;
    case 9:
    case 10:
      swift_task_alloc();
      sub_D3E0();
      v0[28] = v7;
      *v7 = v8;
      v7[1] = sub_1113BC;

      result = sub_10FA4C((v0 + 2));
      break;
    default:
      v11 = sub_9F0FC();

      result = v12(v11);
      break;
  }

  return result;
}

uint64_t sub_110F84()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 184) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_11107C()
{
  sub_D2DC();
  sub_112F50();
  sub_D188(v0 + 136, &qword_1E6368, &qword_16DAA0);
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_1110EC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 200) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1111E4()
{
  sub_D2DC();
  sub_112F50();
  sub_D188(v0 + 96, &qword_1E6368, &qword_16DAA0);
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_111254()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_11134C()
{
  sub_D2DC();
  sub_112F50();
  sub_D188(v0 + 56, &qword_1E6368, &qword_16DAA0);
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_1113BC()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 232) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1114B4()
{
  sub_D2DC();
  sub_112F50();
  sub_D188(v0 + 16, &qword_1E6368, &qword_16DAA0);
  v1 = sub_302B8();

  return v2(v1);
}

uint64_t sub_111544()
{
  sub_D2DC();
  *(v1 + 200) = v0;
  swift_task_alloc();
  sub_D3E0();
  *(v1 + 208) = v2;
  *v2 = v3;
  v2[1] = sub_1115D4;

  return sub_10FDBC(v1 + 16);
}

uint64_t sub_1115D4()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1116CC()
{
  sub_D3A4();
  if (*(v0 + 40))
  {
    sub_D084((v0 + 16), *(v0 + 40));
    sub_112C38();
    v1 = swift_task_alloc();
    *(v0 + 224) = v1;
    *v1 = v0;
    v2 = sub_2FB78(v1);

    return v3(v2);
  }

  else
  {
    sub_D188(v0 + 16, &qword_1E6368, &qword_16DAA0);
    *(v0 + 305) = 0;
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 232) = v5;
    *v5 = v6;
    v7 = sub_112D24(v5);

    return sub_1100C4(v7);
  }
}

uint64_t sub_111838()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_111920()
{
  sub_D2DC();
  sub_D13C((v0 + 16));
  *(v0 + 305) = *(v0 + 304);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 232) = v1;
  *v1 = v2;
  v3 = sub_112D24(v1);

  return sub_1100C4(v3);
}

uint64_t sub_11199C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 240) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_111A94()
{
  sub_D3A4();
  if (*(v0 + 80))
  {
    sub_D084((v0 + 56), *(v0 + 80));
    sub_112C38();
    v1 = swift_task_alloc();
    *(v0 + 248) = v1;
    *v1 = v0;
    v2 = sub_2FB78(v1);

    return v3(v2);
  }

  else
  {
    sub_D188(v0 + 56, &qword_1E6368, &qword_16DAA0);
    *(v0 + 307) = 0;
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 256) = v5;
    *v5 = v6;
    v7 = sub_112D50(v5);

    return sub_10FA4C(v7);
  }
}

uint64_t sub_111C00()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 306) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_111CE8()
{
  sub_D2DC();
  sub_D13C((v0 + 56));
  *(v0 + 307) = *(v0 + 306);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 256) = v1;
  *v1 = v2;
  v3 = sub_112D50(v1);

  return sub_10FA4C(v3);
}

uint64_t sub_111D64()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 264) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_111E5C()
{
  sub_D3A4();
  if (*(v0 + 120))
  {
    sub_D084((v0 + 96), *(v0 + 120));
    sub_112C38();
    v1 = swift_task_alloc();
    *(v0 + 272) = v1;
    *v1 = v0;
    v2 = sub_2FB78(v1);

    return v3(v2);
  }

  else
  {
    sub_D188(v0 + 96, &qword_1E6368, &qword_16DAA0);
    *(v0 + 309) = 0;
    swift_task_alloc();
    sub_D3E0();
    *(v0 + 280) = v5;
    *v5 = v6;
    v7 = sub_112D7C(v5);

    return sub_10F7D4(v7);
  }
}

uint64_t sub_111FC8()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 308) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_1120B0()
{
  sub_D2DC();
  sub_D13C((v0 + 96));
  *(v0 + 309) = *(v0 + 308);
  swift_task_alloc();
  sub_D3E0();
  *(v0 + 280) = v1;
  *v1 = v2;
  v3 = sub_112D7C(v1);

  return sub_10F7D4(v3);
}

uint64_t sub_11212C()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 288) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_112224()
{
  sub_D3A4();
  if (v0[20])
  {
    sub_D084(v0 + 17, v0[20]);
    sub_112C38();
    v1 = swift_task_alloc();
    v0[37] = v1;
    *v1 = v0;
    v2 = sub_2FB78(v1);
  }

  else
  {
    sub_D188((v0 + 17), &qword_1E6368, &qword_16DAA0);
    sub_30AEC();
    v2 = v4 & 1;
  }

  return v3(v2);
}

uint64_t sub_112388()
{
  sub_D2DC();
  sub_D358();
  sub_30174();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 310) = v3;

  v4 = sub_D388();

  return _swift_task_switch(v4);
}

uint64_t sub_112470()
{
  sub_D2DC();
  sub_D13C((v0 + 136));
  sub_30AEC();

  return v1(v2 & 1);
}

id sub_1128FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_16A644();

  v9 = sub_16A644();

  if (a6)
  {
    v10 = sub_16A644();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

id sub_1129C0(uint64_t a1)
{
  v6 = 0;
  v2 = [v1 initWithStoreItemIdentifier:a1 error:&v6];
  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    sub_168394();

    swift_willThrow();
  }

  return v2;
}

id sub_112A74(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_16A644();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_168394();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_112B50(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_16A664();

  return v4;
}

void sub_112BDC(os_log_type_t a1)
{

  sub_386D8(a1, 0x20000uLL, v3 + 102, v4 | 0x8000000000000000, 0x657463656E6E6F63, 0xEB00000000292864, 219, v1, v2);
}

uint64_t sub_112CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_D5CC8((v11 + 16), v11 + 56, v9, v10, a5, 1, v12, 0, a9);
}

uint64_t sub_112CF8(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 1;

  return swift_allocObject();
}

uint64_t sub_112DA8()
{

  return swift_beginAccess();
}

void sub_112DC8(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD00000000000001FLL;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v2);
}

void sub_112DE8()
{

  sub_16ACF4(33);
}

uint64_t sub_112E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  *(a1 + 16) = a11;
  *(a1 + 32) = 0;

  return type metadata accessor for WalletCarActivatableAccessory();
}

uint64_t sub_112E2C()
{
  v2 = *(v0 + 128) + 56;

  return sub_10824(v2, v0 + 16);
}

uint64_t sub_112E48(uint64_t a1)
{
  *(v1 + 136) = a1;

  return swift_allocObject();
}

uint64_t sub_112E64(uint64_t a1)
{
  *(v1 + 144) = a1;
}

uint64_t sub_112E80(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_112E9C()
{

  return sub_D8400(v0 + 16, v1 + 56);
}

void *sub_112EB4()
{

  return sub_D084((v0 + 56), v1);
}

void sub_112F5C(uint64_t a1@<X8>)
{

  v3._countAndFlagsBits = v1 + 25;
  v3._object = ((a1 - 32) | 0x8000000000000000);
  sub_16A744(v3);
}

uint64_t sub_112F7C()
{
  sub_D2DC();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  *(v1 + 248) = v3;
  *(v1 + 112) = v4;
  *(v1 + 120) = v5;
  *(v1 + 250) = v6;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  sub_5758(&qword_1E5F78, &unk_16D400);
  *(v1 + 144) = sub_D3C8();
  v9 = sub_1691E4();
  *(v1 + 152) = v9;
  *(v1 + 160) = *(v9 - 8);
  *(v1 + 168) = sub_D3C8();
  v10 = sub_16A284();
  *(v1 + 176) = v10;
  *(v1 + 184) = *(v10 - 8);
  *(v1 + 192) = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v11);
}

uint64_t sub_1130C0()
{
  v1 = *(v0 + 250);
  if (v1 != 2 && (v1 & 1) != 0)
  {
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v2 = *(v0 + 128);
    v3 = sub_16A584();
    sub_9DA0(v3, qword_1E65C0);
    v4 = sub_16A9A4();
    sub_386D8(v4, 2uLL, 0xD000000000000094, 0x800000000018EE30, 0xD00000000000004CLL, 0x8000000000182B90, 31, 0xD000000000000036, 0x800000000018EF90);
    sub_D084(v2, v2[3]);
    *(v0 + 80) = sub_16A2E4();
    *(v0 + 88) = sub_52248(&qword_1E7408, &type metadata accessor for CarCommandsToggleSnippetUpdateValue, &protocol conformance descriptor for CarCommandsToggleSnippetUpdateValue);
    sub_10888((v0 + 56));
    sub_16A2D4();
    sub_168F04();
    sub_D13C((v0 + 56));

    sub_D37C();
    sub_7DDB4();

    __asm { BRAA            X1, X16 }
  }

  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v5 = sub_16A584();
  sub_9DA0(v5, qword_1E65C0);
  v6 = sub_16A9A4();
  sub_386D8(v6, 2uLL, 0xD000000000000094, 0x800000000018EE30, 0xD00000000000004CLL, 0x8000000000182B90, 37, 0xD000000000000043, 0x800000000018EF40);
  v7 = swift_task_alloc();
  *(v0 + 200) = v7;
  *v7 = v0;
  v7[1] = sub_1133BC;
  sub_7DDB4();

  return sub_113E00(v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1133BC()
{
  sub_1696C();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 208) = v6;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    v9 = *(v3 + 248);
    v10 = swift_task_alloc();
    *(v3 + 216) = v10;
    *v10 = v5;
    v10[1] = sub_11355C;
    v11 = *(v3 + 192);
    v12 = *(v3 + 112);
    v13 = *(v3 + 120);
    v14 = *(v3 + 104);

    return sub_1144FC(v11, v14, v12, v13, v9 & 1);
  }
}

uint64_t sub_11355C()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D254();
  *v5 = v4;
  *(v6 + 224) = v0;

  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_113658()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[16];
  v7 = v6[3];
  v16 = v6[4];
  sub_D084(v6, v7);
  v0[5] = v4;
  v0[6] = sub_52248(&qword_1E7118, &type metadata accessor for CarCommandsSnippetsPluginModel, &protocol conformance descriptor for CarCommandsSnippetsPluginModel);
  v8 = sub_10888(v0 + 2);
  (*(v2 + 16))(v8, v3, v4);
  sub_5758(&qword_1EA2B0, &qword_16DFB0);
  v9 = swift_allocObject();
  v0[29] = v9;
  *(v9 + 16) = xmmword_16D440;
  *(v9 + 32) = v1;
  v10 = sub_168E14();
  sub_5370(v5, 1, 1, v10);
  v11 = v1;
  sub_67D38(0xD000000000000020, 0x800000000018EF10, v5);
  sub_D188(v5, &qword_1E5F78, &unk_16D400);
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_113840;
  v13 = v0[21];
  v14 = v0[12];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v14, v0 + 2, v9, v13, v7, v16);
}

uint64_t sub_113840()
{
  sub_D358();
  v2 = v1;
  sub_D2A4();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[20];
  v7 = v4[19];
  v8 = *v0;
  sub_D254();
  *v9 = v8;

  (*(v6 + 8))(v5, v7);
  sub_D13C((v2 + 16));
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_1139B0()
{
  sub_D2DC();
  v0[7] = v1;
  v0[8] = v2;
  sub_16A164();
  v0[9] = sub_D3C8();
  sub_10B4C();

  return _swift_task_switch(v3);
}

uint64_t sub_113A30()
{
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v1 = sub_16A584();
  sub_9DA0(v1, qword_1E65C0);
  v2 = sub_16A9A4();
  sub_386D8(v2, 2uLL, 0xD000000000000094, 0x800000000018EE30, 0xD00000000000002BLL, 0x8000000000182B40, 60, 0xD00000000000003DLL, 0x800000000018EED0);
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  *(v0 + 80) = sub_16A0F4();
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_113B8C;

  return sub_DDC04();
}

uint64_t sub_113B8C()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_10B4C();

  return _swift_task_switch(v6);
}

void sub_113C98()
{
  sub_D084(*(v0 + 64), *(*(v0 + 64) + 24));
  sub_16A134();
  *(v0 + 40) = sub_16A354();
  *(v0 + 48) = sub_52248(&qword_1E7400, &type metadata accessor for CarCommandsToggleSnippetUpdateFailure, &protocol conformance descriptor for CarCommandsToggleSnippetUpdateFailure);
  sub_10888((v0 + 16));
  sub_16A344();
  sub_168F04();

  sub_D13C((v0 + 16));

  sub_7DDB4();

  __asm { BRAA            X0, X16 }
}

uint64_t sub_113E00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v6 + 146) = a6;
  *(v6 + 145) = a5;
  *(v6 + 64) = a4;
  *(v6 + 144) = a1;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = swift_task_alloc();
  sub_16A164();
  *(v6 + 88) = swift_task_alloc();

  return _swift_task_switch(sub_113EE0);
}

uint64_t sub_113EE0()
{
  sub_1696C();
  v1 = *(v0 + 64);
  if (*(v0 + 144) == 2)
  {
    type metadata accessor for CarCommandsGetClimateStatusCATsSimple(0);
    sub_16A154();
    *(v0 + 96) = sub_52464();
    if (v1)
    {
      sub_99C94();
    }

    v2 = sub_16A0C4();
    sub_114BA0(v2);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_114094;
    v4 = sub_5242C(*(v0 + 80));

    return sub_11DEE8(v4, v5, v6);
  }

  else
  {
    type metadata accessor for CarCommandsSetClimateStatusCATsSimple(0);
    sub_16A154();
    *(v0 + 120) = sub_52464();
    if (v1)
    {
      sub_99C94();
    }

    v8 = sub_16A0C4();
    sub_114BA0(v8);
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_114244;
    sub_5242C(*(v0 + 72));

    return sub_ADEDC();
  }
}

uint64_t sub_114094()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 112) = v0;

  sub_D188(v6, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_1141C4()
{
  sub_1696C();

  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_114244()
{
  sub_D2DC();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_D254();
  *v8 = v7;
  *(v9 + 136) = v0;

  sub_D188(v6, &qword_1E6300, &qword_16ECE0);
  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_114374()
{
  sub_1696C();

  v0 = sub_302B8();

  return v1(v0);
}

uint64_t sub_1143F8()
{
  sub_1696C();

  sub_D37C();

  return v0();
}

uint64_t sub_114478()
{
  sub_1696C();

  sub_D37C();

  return v0();
}

uint64_t sub_1144FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 101) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  sub_5758(&qword_1E6300, &qword_16ECE0);
  *(v5 + 48) = swift_task_alloc();
  sub_16A164();
  *(v5 + 56) = swift_task_alloc();

  return _swift_task_switch(sub_1145CC);
}

uint64_t sub_1145CC()
{
  sub_1696C();
  v1 = v0[5];
  type metadata accessor for CarCommandsCATsSimple(0);
  sub_16A154();
  v0[8] = sub_52464();
  if (v1)
  {
    sub_99C94();
  }

  v2 = sub_16A0C4();
  sub_114BA0(v2);
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1146B0;
  sub_5242C(v0[6]);

  return sub_DF868();
}

uint64_t sub_1146B0()
{
  sub_1696C();
  sub_D358();
  sub_D2A4();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  sub_D254();
  *v7 = v6;
  *(v9 + 80) = v8;
  *(v9 + 88) = v0;

  sub_D188(v5, &qword_1E6300, &qword_16ECE0);

  sub_10B4C();

  return _swift_task_switch(v10);
}

uint64_t sub_114800()
{
  v1 = *(v0 + 40);
  *(v0 + 96) = 0;
  sub_16A134();
  *(v0 + 97) = 2;
  sub_16A134();
  *(v0 + 98) = 1;
  sub_16A134();
  *(v0 + 99) = 4;
  sub_16A134();
  *(v0 + 100) = 3;
  sub_16A134();
  if (v1)
  {
    v2 = *(v0 + 40);

    v3 = [v2 spokenPhrase];
    sub_16A664();
  }

  else
  {
  }

  v4 = *(v0 + 16);
  sub_16A264();

  v5 = enum case for CarCommandsSnippetsPluginModel.climateStatusModel(_:);
  v6 = sub_16A284();
  (*(*(v6 - 8) + 104))(v4, v5, v6);

  sub_D37C();

  return v7();
}

uint64_t getEnumTagSinglePayload for ClimateStatusSnippetFactory.ClimateStatusSnippetParameters(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
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

uint64_t storeEnumTagSinglePayload for ClimateStatusSnippetFactory.ClimateStatusSnippetParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x114B68);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t sub_114BA0(uint64_t a1)
{

  return sub_5370(v2, v1, 1, a1);
}

uint64_t type metadata accessor for CarCommandsGetCarRemainingRangeCATsSimple(uint64_t a1)
{
  result = qword_1ED420;
  if (!qword_1ED420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_114C4C(uint64_t a1, char a2, char a3, char a4)
{
  *(v5 + 58) = a4;
  *(v5 + 57) = a3;
  *(v5 + 56) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = v4;
  return _swift_task_switch(sub_114C78);
}

uint64_t sub_114C78()
{
  v1 = *(v0 + 16);
  sub_5758(&qword_1E63D8, &unk_16DDC0);
  v2 = swift_allocObject();
  *(v0 + 32) = v2;
  *(v2 + 16) = xmmword_176380;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x800000000017E650;
  v3 = 0;
  if (v1)
  {
    v3 = sub_169FD4();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = *(v0 + 58);
  v5 = *(v0 + 57);
  v6 = *(v0 + 56);
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0x776F4C7369;
  *(v2 + 88) = 0xE500000000000000;
  *(v2 + 96) = v6;
  *(v2 + 120) = &type metadata for Bool;
  *(v2 + 128) = 0x6E65646469487369;
  *(v2 + 136) = 0xEF776F4C6E656857;
  *(v2 + 144) = v5;
  *(v2 + 168) = &type metadata for Bool;
  *(v2 + 176) = 0x727463656C457369;
  *(v2 + 184) = 0xEA00000000006369;
  *(v2 + 216) = &type metadata for Bool;
  v9 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v2 + 192) = v4;

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_6D128;

  return v9(0xD000000000000035, 0x800000000018F020, v2);
}

uint64_t sub_114E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_16A164();
  sub_5B1C();
  v7 = v6;
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v11 - 8);
  sub_57A0(a1, &v15 - v12);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_16A0D4();
  (*(v7 + 8))(a2, v3);
  sub_5810(a1);
  return v13;
}

uint64_t sub_114FF8(uint64_t a1, uint64_t a2)
{
  sub_16A164();
  sub_5B1C();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_16A0E4();
  (*(v5 + 8))(a2, v2);
  return v9;
}

id sub_115100(char *a1)
{
  v3 = sub_5758(&qword_1EA178, &unk_1774D0);
  v4 = sub_D414(v3);
  __chkstk_darwin(v4);
  v6 = v51 - v5 + 24;
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v7);
  sub_A138();
  v10 = v9 - v8;
  sub_86E4(a1, &_swiftEmptySetSingleton, v51);
  if (v51[3])
  {
    sub_5758(&qword_1E5F90, &qword_170270);
    sub_5758(&qword_1ED478, &qword_178748);
    if (swift_dynamicCast())
    {
      if (*(&v53 + 1))
      {
        sub_D124(&v52, v55);
        v11 = [objc_allocWithZone(v1) init];
        v12 = v56;
        v13 = v57;
        sub_D084(v55, v56);
        v14 = *(v13 + 16);
        v15 = v11;
        v16 = v14(v12, v13);
        [v15 setEnableClimateControl:v16];

        v17 = v56;
        v18 = v57;
        sub_D084(v55, v56);
        (*(v18 + 24))(v17, v18);
        v19 = sub_5758(&qword_1E76A0, &qword_172B00);
        if (sub_9E2C(v6, 1, v19) == 1)
        {
          v20 = 0;
        }

        else
        {
          sub_1682D4();
          v20 = v29;
          sub_4EB50();
          (*(v30 + 8))(v6, v19);
        }

        [v15 setTargetTemperature:v20];

        sub_1165B4();
        v31 = sub_4C808();
        v33 = v32(v31);
        if (v34)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33;
        }

        [v15 setRelativeTemperatureChange:v35];
        sub_1165B4();
        v36 = sub_4C808();
        v38 = v37(v36);
        if (v39)
        {
          v40 = 0;
        }

        else
        {
          v40 = v38;
        }

        [v15 setClimateZone:v40];
        sub_1165B4();
        v41 = sub_4C808();
        v43 = v42(v41);
        [v15 setEnableAirConditioner:v43];

        sub_1165B4();
        v44 = sub_4C808();
        v46 = v45(v44);
        if (v47)
        {
          v48 = 0;
        }

        else
        {
          v48 = v46;
        }

        [v15 setExtremeTemperatureChange:v48];

        sub_1693E4();
        sub_10AFC();
        (*(v49 + 8))(a1);
        sub_D13C(v55);
        return v15;
      }
    }

    else
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
    }
  }

  else
  {
    sub_109A0(v51, &qword_1E5F80, &unk_16E7E0);
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
  }

  sub_109A0(&v52, &qword_1ED470, &qword_178740);
  v21 = sub_1693E4();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v10, a1, v21);
  swift_storeEnumTagMultiPayload();
  sub_11D28();
  swift_allocError();
  sub_548D0(v10, v23);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v24 = sub_16A584();
  sub_9DA0(v24, qword_1E65C0);
  v25 = sub_16A9A4();
  swift_getErrorValue();
  v26 = sub_16AEB4();
  sub_386D8(v25, 0x4000uLL, 0xD0000000000000A4, 0x800000000018F060, 0x293A5F2874696E69, 0xE800000000000000, 104, v26, v27);

  (*(v22 + 8))(a1, v21);
  sub_5A09C(v10);
  return 0;
}

void *sub_115630(char *a1, char a2)
{
  v3 = v2;
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  v11 = sub_5758(&qword_1EA178, &unk_1774D0);
  v12 = sub_D414(v11);
  v13 = __chkstk_darwin(v12);
  v15 = v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v16 = __chkstk_darwin(v13);
  v18 = v68 - v17 + 24;
  __chkstk_darwin(v16);
  v20 = v68 - v19 + 24;
  if ((a2 & 0xF0) != 0x80)
  {
    LOBYTE(v72[0]) = a2;
    *v10 = sub_16A694();
    v10[1] = v24;
    swift_storeEnumTagMultiPayload();
    v25 = sub_11D28();
    sub_5A144(v25);
    sub_548D0(v10, v26);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v27 = sub_16A584();
    sub_9DA0(v27, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v28 = sub_116560();
    v35 = 17;
    goto LABEL_17;
  }

  sub_86E4(a1, &_swiftEmptySetSingleton, v68);
  if (!v68[3])
  {
    sub_109A0(v68, &qword_1E5F80, &unk_16E7E0);
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
    goto LABEL_14;
  }

  sub_5758(&qword_1E5F90, &qword_170270);
  sub_5758(&qword_1ED478, &qword_178748);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v71 = 0;
    v69 = 0u;
    v70 = 0u;
    goto LABEL_14;
  }

  if (!*(&v70 + 1))
  {
LABEL_14:
    sub_109A0(&v69, &qword_1ED470, &qword_178740);
    sub_1693E4();
    sub_10AFC();
    (*(v36 + 16))(v10, a1);
    swift_storeEnumTagMultiPayload();
    v37 = sub_11D28();
    sub_5A144(v37);
    sub_548D0(v10, v38);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v39 = sub_16A584();
    sub_9DA0(v39, qword_1E65C0);
    sub_16A9A4();
    swift_getErrorValue();
    sub_16AEB4();
    v28 = sub_116560();
    v35 = 23;
LABEL_17:
    sub_386D8(v28, v29, v30, v31, v32, v33, v35, v34, v67);

    sub_5A09C(v10);
    v40 = v2;
    return v3;
  }

  sub_D124(&v69, v72);
  sub_D084(v72, v72[3]);
  switch(a2 & 0xF)
  {
    case 1:
      v52 = sub_116550();
      v53(v52);
      v54 = sub_5758(&qword_1E76A0, &qword_172B00);
      sub_EAEC0(v18);
      if (v55)
      {
        v56 = [v2 targetTemperature];
        if (v56)
        {
          v57 = v56;
          sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
          sub_1682E4();

          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        sub_116610(v15, v58);
        sub_1164E0(v15, v20);
        sub_EAEC0(v18);
        if (!v55)
        {
          sub_109A0(v18, &qword_1EA178, &unk_1774D0);
        }
      }

      else
      {
        sub_4EB50();
        (*(v63 + 32))(v20, v18, v54);
        sub_116610(v20, 0);
      }

      sub_EAEC0(v20);
      if (v55)
      {
        v23 = 0;
      }

      else
      {
        sub_1682D4();
        v23 = v64;
        sub_4EB50();
        (*(v65 + 8))(v20, v54);
      }

      [v3 setTargetTemperature:v23];
      goto LABEL_42;
    case 2:
      v44 = sub_116550();
      v46 = v45(v44);
      if (v47)
      {
        v46 = [v2 relativeTemperatureChange];
      }

      [v2 setRelativeTemperatureChange:v46];
      goto LABEL_43;
    case 3:
      v48 = sub_116550();
      v50 = v49(v48);
      if (v51)
      {
        v50 = [v2 climateZone];
      }

      [v2 setClimateZone:v50];
      goto LABEL_43;
    case 4:
      v42 = sub_116550();
      v23 = v43(v42);
      if (!v23)
      {
        v23 = [v3 enableAirConditioner];
      }

      [v3 setEnableAirConditioner:v23];
      goto LABEL_42;
    case 5:
      v59 = sub_116550();
      v61 = v60(v59);
      if (v62)
      {
        v61 = [v2 extremeTemperatureChange];
      }

      [v2 setExtremeTemperatureChange:v61];
      goto LABEL_43;
    default:
      v21 = sub_116550();
      v23 = v22(v21);
      if (!v23)
      {
        v23 = [v3 enableClimateControl];
      }

      [v3 setEnableClimateControl:v23];
LABEL_42:

LABEL_43:
      v66 = v3;
      sub_D13C(v72);
      break;
  }

  return v3;
}

id sub_115D00(uint64_t a1, char a2)
{
  type metadata accessor for CarCommandsError(0);
  sub_10AFC();
  __chkstk_darwin(v4);
  sub_A138();
  v7 = (v6 - v5);
  v8 = sub_5758(&qword_1EA178, &unk_1774D0);
  v9 = sub_D414(v8);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_5758(&qword_1E76A0, &qword_172B00);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  if ((a2 & 0xF0) == 0x80)
  {
    switch(a2 & 0xF)
    {
      case 1:
        sub_1165D8();
        if (swift_dynamicCast())
        {
          sub_116610(v11, 0);
          (*(v13 + 32))(v15, v11, v12);
          v32 = sub_1682D4();
          v34 = v33;
          [v35 setTargetTemperature:{v33, v32}];

          (*(v13 + 8))(v15, v12);
        }

        else
        {
          sub_116610(v11, 1);
          sub_109A0(v11, &qword_1EA178, &unk_1774D0);
        }

        break;
      case 2:
        sub_1165D8();
        if (sub_116594())
        {
          [v35 setRelativeTemperatureChange:v36];
        }

        break;
      case 3:
        sub_1165D8();
        if (sub_116594())
        {
          [v35 setClimateZone:v36];
        }

        break;
      case 4:
        sub_1165D8();
        if (sub_116594())
        {
          v23 = [objc_allocWithZone(NSNumber) initWithBool:v36];
          goto LABEL_15;
        }

        break;
      case 5:
        sub_1165D8();
        if (sub_116594())
        {
          [v35 setExtremeTemperatureChange:v36];
        }

        break;
      default:
        v16 = sub_1165D8();
        if (sub_1165F0(v16, v17, v18, &type metadata for Bool))
        {
          v19 = [objc_allocWithZone(NSNumber) initWithBool:v36];
          [v35 setEnableClimateControl:v19];
        }

        sub_1165D8();
        v20 = sub_16484(0, &qword_1E6310, NSNumber_ptr);
        if (sub_1165F0(v20, v21, v22, v20))
        {
          v23 = v36;
LABEL_15:
          [v35 setEnableClimateControl:v23];
        }

        break;
    }
  }

  else
  {
    v37 = a2;
    *v7 = sub_16A694();
    v7[1] = v24;
    swift_storeEnumTagMultiPayload();
    sub_11D28();
    swift_allocError();
    sub_548D0(v7, v25);
    if (qword_1E58E8 != -1)
    {
      sub_9ED4(&qword_1E58E8);
    }

    v26 = sub_16A584();
    sub_9DA0(v26, qword_1E65C0);
    v27 = sub_16A9A4();
    swift_getErrorValue();
    v28 = sub_16AEB4();
    sub_386D8(v27, 0x4000uLL, 0xD0000000000000A4, 0x800000000018F060, 0xD000000000000018, 0x8000000000183260, 76, v28, v29);

    sub_5A09C(v7);
  }

  v30 = v35;

  return v30;
}

id sub_1161FC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_5758(&qword_1EA178, &unk_1774D0);
  v6 = sub_D414(v5);
  v7 = __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v12 = &v23 - v11;
  if ((a1 & 0xF0) == 0x80)
  {
    switch(a1 & 0xF)
    {
      case 1:
        v16 = [v2 targetTemperature];
        if (v16)
        {
          v17 = v16;
          sub_16484(0, &qword_1E76A8, NSUnitTemperature_ptr);
          sub_1682E4();

          v18 = sub_5758(&qword_1E76A0, &qword_172B00);
          v19 = v9;
          v20 = 0;
        }

        else
        {
          v18 = sub_5758(&qword_1E76A0, &qword_172B00);
          v19 = v9;
          v20 = 1;
        }

        sub_5370(v19, v20, 1, v18);
        sub_1164E0(v9, v12);
        v21 = sub_5758(&qword_1E76A0, &qword_172B00);
        if (sub_9E2C(v12, 1, v21) == 1)
        {
          result = sub_109A0(v12, &qword_1EA178, &unk_1774D0);
          goto LABEL_16;
        }

        *(a2 + 24) = v21;
        sub_10888(a2);
        sub_4EB50();
        return (*(v22 + 32))();
      case 2:
        result = [v2 relativeTemperatureChange];
        v15 = &type metadata for IntentRelativeTemperatureChange;
        goto LABEL_12;
      case 3:
        result = [v2 climateZone];
        v15 = &type metadata for IntentSeatType;
        goto LABEL_12;
      case 4:
        v13 = [v2 enableAirConditioner];
        goto LABEL_5;
      case 5:
        result = [v2 extremeTemperatureChange];
        v15 = &type metadata for IntentExtremeTemperatureChange;
LABEL_12:
        *(a2 + 24) = v15;
        *a2 = result;
        return result;
      default:
        v13 = [v2 enableClimateControl];
LABEL_5:
        result = v13;
        if (!result)
        {
          goto LABEL_16;
        }

        v14 = result;
        result = sub_16484(0, &qword_1E6310, NSNumber_ptr);
        *(a2 + 24) = result;
        *a2 = v14;
        break;
    }
  }

  else
  {
LABEL_16:
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1164E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5758(&qword_1EA178, &unk_1774D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_116594()
{

  return swift_dynamicCast();
}

uint64_t sub_1165D8()
{

  return sub_16138(v0, v1 - 144);
}

uint64_t sub_1165F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_116610(uint64_t a1, uint64_t a2)
{

  return sub_5370(a1, a2, 1, v2);
}

id sub_116628()
{
  v1 = OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler;
  v2 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin38SetTrunkStatusHandleIntentFlowStrategy____lazy_storage___inProcessIntentHandler);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      swift_once();
    }

    v5 = sub_117F78(v4);
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

uint64_t sub_1166C4()
{
  sub_D2DC();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  sub_16A164();
  v1[39] = swift_task_alloc();
  sub_5758(&qword_1E6300, &qword_16ECE0);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = type metadata accessor for SetTrunkStatusParameters(0);
  v1[43] = swift_task_alloc();
  sub_10B4C();

  return _swift_task_switch(v4);
}

uint64_t sub_1167C4()
{
  sub_10824(v0[38] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000182560;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[31] = 0xD000000000000098;
  v0[32] = 0x800000000018F160;
  v0[33] = 47;
  v0[34] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v73._countAndFlagsBits = 0xD000000000000025;
    v73._object = 0x8000000000182560;
    sub_16A744(v73);
    v7 = v68;
    v1 = v71;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  v65 = v7;
  v0[35] = 25;
  v74._countAndFlagsBits = sub_16AE24();
  sub_16A744(v74);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v65, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v66, v67, v69, v72);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v70, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v70);
    sub_D494(v70);
    sub_D494(v26);
  }

  else
  {
  }

  v33 = v0[38];
  sub_3CF7C(v33 + 136, (v0 + 22));
  sub_D084((v33 + 136), *(v33 + 160));
  if (sub_11B5C0())
  {
    sub_169094();
    sub_16A1B4();
    v35 = v34;

    v0[44] = v35;
    if (!v35)
    {
      type metadata accessor for CarCommandsError(0);
      sub_1180C4();
      v48 = sub_117ED4(v46, v47, &unk_17A85C);
      sub_5A144(v48);
      *v49 = 0xD00000000000002DLL;
      v49[1] = 0x8000000000182590;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      sub_D37C();
      sub_D2C0();

      __asm { BRAA            X1, X16 }
    }

    v36 = v0[38];
    type metadata accessor for TrunkStatusSnippetFactory();
    v37 = sub_1690A4();
    v0[45] = [v37 carName];

    v38 = sub_1690A4();
    sub_32170();

    sub_3CF7C(v36 + 184, (v0 + 28));
    sub_10824(v36 + 184, (v0 + 17));
    v39 = swift_task_alloc();
    v0[46] = v39;
    *v39 = v0;
    v39[1] = sub_A2E38;
    sub_D2C0();

    return sub_504E4();
  }

  else
  {
    v42 = sub_1690A4();
    v0[48] = v42;
    v43 = [v42 carName];
    if (v43)
    {
      v44 = v43;
      sub_99C94();

      v45 = 0;
    }

    else
    {
      v45 = 1;
    }

    v52 = v0[41];
    v53 = sub_16A0C4();
    v54 = 1;
    sub_5370(v52, v45, 1, v53);
    v55 = sub_32170();
    sub_169094();
    sub_16A1B4();
    v57 = v56;

    if (v57)
    {
      sub_16A6E4();

      v54 = 0;
    }

    v59 = v0[42];
    v58 = v0[43];
    v61 = v0[40];
    v60 = v0[41];
    sub_5370(v61, v54, 1, v53);
    sub_16304(v60, v58);
    *(v58 + *(v59 + 20)) = v55;
    sub_16304(v61, v58 + *(v59 + 24));
    type metadata accessor for CarCommandsCATPatternsExecutor(0);
    sub_16A154();
    v0[49] = sub_16A094();
    v62 = swift_task_alloc();
    v0[50] = v62;
    *v62 = v0;
    v62[1] = sub_116E00;
    sub_D2C0();

    return sub_157400(v63);
  }
}

uint64_t sub_116E00()
{
  sub_1696C();
  sub_D2A4();
  *v3 = v2;
  v4 = *v1;
  sub_D2A4();
  *v5 = v4;
  *(v7 + 408) = v6;
  *(v7 + 416) = v0;

  sub_10B4C();

  return _swift_task_switch(v8);
}

uint64_t sub_116F2C()
{
  sub_D2DC();
  v1 = *(v0 + 304);
  sub_3CF7C(v1 + 184, v0 + 200);
  sub_10824(v1 + 184, v0 + 96);
  v2 = swift_task_alloc();
  *(v0 + 424) = v2;
  *v2 = v0;
  v2[1] = sub_116FE0;

  return sub_11A570();
}

uint64_t sub_116FE0()
{
  sub_D2DC();
  sub_D358();
  v3 = v2;
  sub_D2A4();
  *v4 = v3;
  v5 = *v1;
  sub_D254();
  *v6 = v5;
  *(v3 + 432) = v0;

  sub_D13C((v3 + 96));
  sub_10B4C();

  return _swift_task_switch(v7);
}

uint64_t sub_1170E4()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);
  v3 = *(v0 + 288);

  sub_117F1C(v2);
  sub_D250((v0 + 56), v3);

  sub_D37C();

  return v4();
}

uint64_t sub_117194()
{
  sub_1696C();
  v1 = *(v0 + 344);

  sub_117F1C(v1);
  sub_A4350();

  sub_D37C();

  return v2();
}

uint64_t sub_117220()
{
  sub_1696C();
  v1 = *(v0 + 384);
  v2 = *(v0 + 344);

  sub_117F1C(v2);
  sub_A4350();

  sub_D37C();

  return v3();
}

uint64_t sub_1172B4(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_10B4C();
  return _swift_task_switch(v4);
}

uint64_t sub_1172E4()
{
  sub_10824(v0[25] + 16, (v0 + 2));
  sub_D084(v0 + 2, v0[5]);
  sub_5758(&qword_1E62E8, &qword_16D8B0);
  sub_169094();
  sub_D2604();

  sub_D13C(v0 + 2);
  v1 = 0x8000000000185C90;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = sub_16A584();
  sub_9DA0(v2, qword_1E65C0);
  v3 = sub_16A9A4();
  v0[18] = 0xD000000000000098;
  v0[19] = 0x800000000018F160;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_D030();
  v4 = sub_16AB34();
  sub_15AE4(v4);
  v6 = v5;

  if (v6)
  {
    sub_7C764();
    v54._countAndFlagsBits = 0xD00000000000002DLL;
    v54._object = 0x8000000000185C90;
    sub_16A744(v54);
    v7 = v49;
    v1 = v52;
  }

  else
  {
    v7 = 0xD00000000000002DLL;
  }

  v46 = v7;
  v0[22] = 54;
  v55._countAndFlagsBits = sub_16AE24();
  sub_16A744(v55);

  sub_7C724(v8, v9, v10, v11, v12, v13, v14, v15, v46, v1, 58, 0xE100000000000000);

  v16._countAndFlagsBits = sub_378D0(0x1002uLL);
  if (v16._object)
  {
    sub_7C740(v16);

    sub_7C724(v17, v18, v19, v20, v21, v22, v23, v24, v47, v48, v50, v53);
  }

  v25 = sub_16A574();
  if (os_log_type_enabled(v25, v3))
  {
    v26 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v30 = sub_7C7A4(4.8149e-34, v51, v27, v28, v29);

    *(v26 + 4) = v30;
    sub_7C784(&dword_0, v31, v32, "%s");
    sub_D13C(v51);
    sub_D494(v51);
    sub_D494(v26);
  }

  else
  {
  }

  v33 = v0[25];
  if (*(v33[28] + 16) != 1 || (sub_3CF7C((v33 + 17), (v0 + 12)), sub_D084(v33 + 17, v33[20]), (sub_11B5C0() & 1) == 0))
  {
    sub_168BB4();
    sub_168BA4();
    sub_D37C();
    goto LABEL_18;
  }

  sub_169094();
  sub_16A1B4();
  v35 = v34;

  if (!v35)
  {
    type metadata accessor for CarCommandsError(0);
    sub_1180C4();
    v44 = sub_117ED4(v42, v43, &unk_17A85C);
    sub_5A144(v44);
    *v45 = 0xD00000000000002DLL;
    v45[1] = 0x8000000000182590;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_D37C();
LABEL_18:
    sub_D2C0();

    __asm { BRAA            X1, X16 }
  }

  v36 = v0[25];

  type metadata accessor for TrunkStatusSnippetFactory();
  sub_3CF7C(v36 + 184, (v0 + 15));
  sub_10824(v36 + 184, (v0 + 7));
  v37 = swift_task_alloc();
  v0[26] = v37;
  *v37 = v0;
  v37[1] = sub_A39C4;
  sub_D2C0();

  return sub_51D38();
}

uint64_t sub_117734()
{
  v0 = sub_3D044();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy(uint64_t a1)
{
  result = qword_1ED4B0;
  if (!qword_1ED4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_117840(uint64_t a1)
{
  result = sub_117ED4(&qword_1ED6A8, type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy, &unk_1787C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_117898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_117960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_117A28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_4B544();
}

uint64_t sub_117AE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10A9C;

  return sub_1166C4();
}

uint64_t sub_117B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_117C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for SetTrunkStatusHandleIntentFlowStrategy(0);
  *v8 = v4;
  v8[1] = sub_10A9C;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v9, a4);
}

uint64_t sub_117D24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1039C;

  return sub_1172B4(a1, a2);
}

uint64_t sub_117DD0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_36648;

  return sub_463E8();
}

uint64_t sub_117ED4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_117F1C(uint64_t a1)
{
  v2 = type metadata accessor for SetTrunkStatusParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_117F78(uint64_t a1)
{
  v2 = type metadata accessor for WalletService();
  v14[3] = v2;
  v14[4] = &off_1D7C28;
  v14[0] = a1;
  v3 = type metadata accessor for SESetTrunkStatusIntentHandler();
  v4 = objc_allocWithZone(v3);
  v5 = sub_2F8D0(v14, v2);
  __chkstk_darwin(v5);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v13[3] = v2;
  v13[4] = &off_1D7C28;
  v13[0] = v9;
  sub_10824(v13, v4 + OBJC_IVAR____TtC29CarCommandsFlowDelegatePlugin29SESetTrunkStatusIntentHandler_carKeyService);
  v12.receiver = v4;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, "init");
  sub_D13C(v13);
  sub_D13C(v14);
  return v10;
}

uint64_t type metadata accessor for CarCommandsGetPowerLevelCATs(uint64_t a1)
{
  result = qword_1ED6B0;
  if (!qword_1ED6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1181BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_16A164();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_5758(&qword_1E5B48, &unk_16DDB0);
  __chkstk_darwin(v9 - 8);
  sub_57A0(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_16A084();
  (*(v6 + 8))(a2, v5);
  sub_5810(a1);
  return v11;
}

void *sub_118330(__int128 *a1, uint64_t a2)
{
  v2[2] = 0xD000000000000020;
  v2[3] = 0x800000000018C280;
  v5 = sub_168E34();
  sub_483C8(v5);
  v6 = sub_168E24();
  v2[7] = v5;
  v2[8] = &protocol witness table for ResponseFactory;
  v2[4] = v6;
  v2[15] = 0;
  sub_D124(a1, (v2 + 9));
  v2[14] = a2;
  return v2;
}

id sub_1183C4()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    v2 = *(v0 + 120);
  }

  else
  {
    if (qword_1E5908 != -1)
    {
      sub_48134(&qword_1E5908);
    }

    v4 = sub_119F28(v3);
    v5 = *(v0 + 120);
    *(v0 + 120) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

uint64_t sub_118448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = type metadata accessor for CarCommandsError(0);
  __chkstk_darwin(v41);
  sub_A138();
  v4 = v3 - v2;
  v44 = sub_1693E4();
  sub_37404();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_A138();
  v10 = (v9 - v8);
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v11 = sub_16A584();
  v48 = sub_9DA0(v11, qword_1E65C0);
  v12 = sub_16A9A4();
  v53 = 0xD000000000000087;
  v54 = 0x800000000018F2A0;
  v59 = (&stru_20 + 15);
  v60 = 0xE100000000000000;
  sub_D030();
  v13 = sub_16AB34();
  v14 = sub_15AE4(v13);
  v16 = v15;

  if (v16)
  {
    v66._countAndFlagsBits = 32;
    v66._object = 0xE100000000000000;
    sub_16A744(v66);
    v67._countAndFlagsBits = 0xD000000000000016;
    v67._object = 0x800000000017FD50;
    sub_16A744(v67);
    v17 = v14;
    v18 = v16;
  }

  else
  {
    v17 = 0xD000000000000016;
    v18 = 0x800000000017FD50;
  }

  v53 = v17;
  v54 = v18;
  v59 = (&stru_20 + 26);
  v60 = 0xE100000000000000;
  v58 = 29;
  v68._countAndFlagsBits = sub_16AE24();
  sub_16A744(v68);

  v69._countAndFlagsBits = 58;
  v69._object = 0xE100000000000000;
  sub_16A744(v69);

  v19._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v19._object)
  {
    v59 = &stru_20;
    v60 = 0xE100000000000000;
    sub_16A744(v19);

    v70._countAndFlagsBits = 32;
    v70._object = 0xE100000000000000;
    sub_16A744(v70);
  }

  v21 = v53;
  v20 = v54;
  v22 = sub_16A574();
  if (os_log_type_enabled(v22, v12))
  {
    v23 = v12;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v59 = v25;
    *v24 = 136315138;
    v26 = sub_15BC8(v21, v20, &v59);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_0, v22, v23, "%s", v24, 0xCu);
    sub_D13C(v25);
    sub_D494(v25);
    sub_D494(v24);
  }

  else
  {
  }

  sub_169384();
  sub_8F624(&v53, 9, v27, v28, v29, v30, v31, v32, v41, 0x800000000017FD50, a2, v44, a1, 0x800000000018F2A0, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, &_swiftEmptySetSingleton, v60, v61, v62, v63, v64, v65);
  sub_86E4(v10, v59, &v53);

  (*(v6 + 8))(v10, v45);
  v33 = v56;
  sub_57A80(&v53);
  if (v33)
  {
    return sub_168C64();
  }

  sub_169384();
  swift_storeEnumTagMultiPayload();
  sub_11A3D8();
  sub_11A390(v35, 255, v36, &unk_17A85C);
  swift_allocError();
  sub_548D0(v4, v37);
  v38 = sub_16A9A4();
  swift_getErrorValue();
  v39 = sub_16AEB4();
  sub_386D8(v38, 0x4000uLL, 0xD000000000000087, v47, 0xD000000000000016, v42, 32, v39, v40);

  sub_168C74();
  return sub_5A09C(v4);
}

uint64_t sub_1188FC()
{
  sub_D2DC();
  v0[7] = v1;
  v2 = sub_1693E4();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_1189B8);
}

uint64_t sub_1189B8()
{
  v30 = v0;
  v1 = 0x80000000001888B0;
  if (qword_1E58E8 != -1)
  {
    sub_9ED4(&qword_1E58E8);
  }

  v2 = 0xD000000000000029;
  v3 = sub_16A584();
  sub_9DA0(v3, qword_1E65C0);
  v4 = sub_16A9A4();
  v0[2] = 0xD000000000000087;
  v0[3] = 0x800000000018F2A0;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  sub_D030();
  v5 = sub_16AB34();
  v6 = sub_15AE4(v5);
  v8 = v7;

  if (v8)
  {
    v32._countAndFlagsBits = 32;
    v32._object = 0xE100000000000000;
    sub_16A744(v32);
    v33._countAndFlagsBits = 0xD000000000000029;
    v33._object = 0x80000000001888B0;
    sub_16A744(v33);
    v2 = v6;
    v1 = v8;
  }

  v29._countAndFlagsBits = 58;
  v29._object = 0xE100000000000000;
  v0[6] = 40;
  v34._countAndFlagsBits = sub_16AE24();
  sub_16A744(v34);

  sub_16A744(v29);

  v9._countAndFlagsBits = sub_378D0(0x4002uLL);
  if (v9._object)
  {
    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    sub_16A744(v9);

    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    sub_16A744(v35);
  }

  v10 = sub_16A574();
  if (os_log_type_enabled(v10, v4))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_15BC8(v2, v1, &v29._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_0, v10, v4, "%s", v11, 0xCu);
    sub_D13C(v12);
    sub_D494(v12);
    sub_D494(v11);
  }

  else
  {
  }

  v15 = v0[9];
  v14 = v0[10];
  v17 = v0[7];
  v16 = v0[8];
  sub_16A3B4();
  v18 = *(v15 + 16);
  v18(v14, v17, v16);
  v19 = sub_59C58(v14);
  if (v19)
  {
    v20 = v19;

    v21 = v0[1];

    return v21(v20);
  }

  else
  {
    v24 = v0[7];
    v23 = v0[8];
    type metadata accessor for CarCommandsError(0);
    sub_11A3D8();
    sub_11A390(v25, 255, v26, &unk_17A85C);
    swift_allocError();
    v18(v27, v24, v23);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}