void sub_1004DF870(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t sub_1004DFAC8(uint64_t a1)
{
  result = _s20KeyValueRegistrationC10IdentifierVMa(319);
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

uint64_t sub_1004DFB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1004DFC6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1004DFD44(uint64_t a1)
{
  result = sub_10056CAE8();
  if (v2 <= 0x3F)
  {
    result = sub_1004DFDC8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1004DFDC8()
{
  result = qword_1006F96C0;
  if (!qword_1006F96C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1006F96C0);
  }

  return result;
}

uint64_t sub_1004DFE28(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1004DFEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAE8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1004DFFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAE8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1004E0074(uint64_t a1)
{
  result = sub_10056CAE8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1004E00FC()
{
  result = qword_1006F9808;
  if (!qword_1006F9808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9808);
  }

  return result;
}

unint64_t sub_1004E0150()
{
  result = qword_1006F8128;
  if (!qword_1006F8128)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F8128);
  }

  return result;
}

uint64_t sub_1004E01A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E0210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1004E02C0()
{
  result = qword_1006F9810;
  if (!qword_1006F9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9810);
  }

  return result;
}

uint64_t sub_1004E0314(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004E03AC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_100572B58();
  }

  else
  {
    return 0;
  }
}

void sub_1004E0440()
{
  v0 = 10;
  sub_1004E1030(0, 10, 0);
  v1 = &unk_1006ACE18;
  do
  {
    v5 = *(v1 - 1);
    v6 = *v1;
    swift_bridgeObjectRetain_n();
    v7._countAndFlagsBits = 115;
    v7._object = 0xE100000000000000;
    sub_100572A98(v7);

    v3 = _swiftEmptyArrayStorage[2];
    v2 = _swiftEmptyArrayStorage[3];
    if (v3 >= v2 >> 1)
    {
      sub_1004E1030((v2 > 1), v3 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v3 + 1;
    v4 = &_swiftEmptyArrayStorage[2 * v3];
    v4[4] = v5;
    v4[5] = v6;
    v1 += 2;
    --v0;
  }

  while (v0);
  sub_1004B3940(&off_1006ACDC0);
  qword_1006FEC98 = _swiftEmptyArrayStorage;
}

uint64_t URL.replacingSchemeWithHTTP.getter@<X0>(uint64_t a1@<X8>)
{
  sub_100009DCC(&qword_1006F9390, &qword_1005A6A78);
  __chkstk_darwin();
  v3 = &v17[-v2];
  v4 = sub_10056C468();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10056C3D8();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001036C(v3, &qword_1006F9390, &qword_1005A6A78);
LABEL_9:
    v13 = sub_10056C8A8();
    return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
  }

  (*(v5 + 32))(v7, v3, v4);
  v8 = sub_10056C428();
  if (!v9)
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  if (qword_1006F7F70 != -1)
  {
    swift_once();
  }

  v18 = v10;
  v19 = v11;
  __chkstk_darwin();
  *&v17[-16] = &v18;
  if (sub_10019686C(sub_1004E1684, &v17[-32], v12))
  {
  }

  else
  {
    if (qword_1006F7F68 != -1)
    {
      swift_once();
    }

    v18 = v10;
    v19 = v11;
    __chkstk_darwin();
    *&v17[-16] = &v18;
    v16 = sub_10019686C(sub_1004E16B0, &v17[-32], v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  sub_10056C438();
LABEL_14:
  sub_10056C3E8();
  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall URLComponents.appendPath(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_10056C418();
  v5 = sub_1004E09B8(v3, v4);
  v7 = v6;

  if (v7)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

LABEL_6:
      v9 = sub_10056C408();
      v15._countAndFlagsBits = countAndFlagsBits;
      v15._object = object;
      sub_100572A98(v15);
      v9(v14, 0);
      return;
    }

    v8 = sub_100574498();

    if (v8)
    {
      goto LABEL_6;
    }
  }

  v10 = sub_1004E0A38(countAndFlagsBits, object);
  v12 = v11;
  v13 = sub_10056C408();
  v16._countAndFlagsBits = v10;
  v16._object = v12;
  sub_100572A98(v16);

  v13(v14, 0);
}

uint64_t sub_1004E09B8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_100572A48();
  return sub_100572B58();
}

uint64_t sub_1004E0A38(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_1004E03AC(a1, a2);
  if (!v5)
  {
    goto LABEL_7;
  }

  if (v4 != 47 || v5 != 0xE100000000000000)
  {
    v6 = sub_100574498();

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_7:
    v8._countAndFlagsBits = v3;
    v8._object = a2;
    sub_100572A98(v8);
    return 47;
  }

LABEL_6:

  return v3;
}

Swift::Void __swiftcall URLComponents.appendQueryItems(_:)(Swift::OpaquePointer a1)
{
  if (sub_10056C3B8())
  {

    sub_1004B3D48(v1);
  }

  else
  {
  }

  sub_10056C3C8();
}

uint64_t URL.isSafariScriptURL.getter()
{
  v0 = sub_10056C3A8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9818, &qword_1005A6E10);
  __chkstk_darwin();
  v5 = &v23 - v4;
  sub_100009DCC(&qword_1006F9390, &qword_1005A6A78);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = sub_10056C468();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056C3D8();
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v11, v7, v8);
    result = sub_10056C3B8();
    if (!result)
    {
      (*(v9 + 8))(v11, v8);
      return 0;
    }

    v13 = result;
    v23 = v11;
    v24 = v9;
    v25 = v8;
    v26 = v5;
    v28 = *(result + 16);
    if (!v28)
    {
LABEL_18:

      (*(v24 + 8))(v23, v25);
      v22 = v26;
      (*(v1 + 56))(v26, 1, 1, v0);
      sub_10001036C(v22, &qword_1006F9818, &qword_1005A6E10);
      return 0;
    }

    v14 = 0;
    v15 = result + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v27 = 0x80000001005BD300;
    while (1)
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
        return result;
      }

      (*(v1 + 16))(v3, v15 + *(v1 + 72) * v14, v0);
      if (sub_10056C388() == 0x6E6F69746361 && v17 == 0xE600000000000000)
      {
      }

      else
      {
        v18 = sub_100574498();

        if ((v18 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      v19 = sub_10056C398();
      if (v20)
      {
        if (v19 == 0xD000000000000016 && v20 == v27)
        {

LABEL_17:
          (*(v24 + 8))(v23, v25);

          v21 = v26;
          (*(v1 + 32))(v26, v3, v0);
          (*(v1 + 56))(v21, 0, 1, v0);
          sub_10001036C(v21, &qword_1006F9818, &qword_1005A6E10);
          return 1;
        }

        v16 = sub_100574498();

        if (v16)
        {
          goto LABEL_17;
        }
      }

LABEL_7:
      ++v14;
      result = (*(v1 + 8))(v3, v0);
      if (v28 == v14)
      {
        goto LABEL_18;
      }
    }
  }

  sub_10001036C(v7, &qword_1006F9390, &qword_1005A6A78);
  return 0;
}

void *sub_1004E1010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004E1144(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004E1030(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004E1450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004E1050(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F93A8, &qword_1005A6B28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1004E1144(void *result, int64_t a2, char a3, void *a4)
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

  sub_100009DCC(&qword_1006F8550, &qword_1005A5908);
  v10 = *(sub_10056CE18() - 8);
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
  v15 = *(sub_10056CE18() - 8);
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

void *sub_1004E131C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006F93A0, &qword_1005A6B20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100009DCC(&qword_1006F9398, &qword_1005A6B18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004E1450(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006F8A28, &qword_1005A5C80);
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

uint64_t sub_1004E155C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = sub_100573F58();
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_100574178();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

const char *Feature.MediaPlayer.feature.getter(unsigned __int8 a1)
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (a1 != 2)
  {
    v2 = "RSuntory";
  }

  if (a1)
  {
    v1 = "UpgradeOnPlay";
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

const char *sub_1004E1740()
{
  v1 = "image_decoding";
  v2 = "QueueFA";
  if (*v0 != 2)
  {
    v2 = "RSuntory";
  }

  if (*v0)
  {
    v1 = "UpgradeOnPlay";
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1004E1824()
{
  result = qword_1006F9820;
  if (!qword_1006F9820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9820);
  }

  return result;
}

unint64_t sub_1004E187C()
{
  result = qword_1006F9828;
  if (!qword_1006F9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9828);
  }

  return result;
}

unint64_t sub_1004E18D4()
{
  result = qword_1006F9830;
  if (!qword_1006F9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9830);
  }

  return result;
}

unint64_t sub_1004E192C()
{
  result = qword_1006F9838;
  if (!qword_1006F9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9838);
  }

  return result;
}

const char *Feature.Music.feature.getter(char a1)
{
  result = "potluck";
  switch(a1)
  {
    case 1:
      result = "bilby";
      break;
    case 2:
      result = "symphony";
      break;
    case 3:
      result = "qulh";
      break;
    case 4:
      result = "image_playground_covers";
      break;
    case 5:
      result = "in_with_the_new";
      break;
    case 6:
      result = "despacito";
      break;
    case 7:
      result = "despacito_server";
      break;
    case 8:
      result = "atv_sing";
      break;
    case 9:
      result = "lucky_roll";
      break;
    case 10:
      result = "motion_over_media_remote";
      break;
    case 11:
      result = "ipad_motion_background";
      break;
    case 12:
      result = "quick_search";
      break;
    case 13:
      result = "pins_widget";
      break;
    case 14:
      result = "jafar";
      break;
    case 15:
      result = "jose";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1004E1B74()
{
  result = qword_1006F9840;
  if (!qword_1006F9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9840);
  }

  return result;
}

uint64_t _s5MusicOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5MusicOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t FeatureFlagsKey.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v6[3] = a1;
  v6[4] = a2;
  v4 = sub_10002AB7C(v6);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  LOBYTE(v3) = sub_10056CFC8();
  sub_100010474(v6);
  return v3 & 1;
}

uint64_t GestureRecognizerHandler.__allocating_init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(a1, a2, a3, a4);
  return v8;
}

uint64_t GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  *(v4 + 24) = sub_1004A0E58;
  *(v4 + 32) = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;

    [v11 addTarget:v4 action:"handleActionFromGestureRecognizer:"];
  }

  return v4;
}

uint64_t sub_1004E1EFC()
{

  return swift_deallocObject();
}

uint64_t GestureRecognizerHandler.deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t GestureRecognizerHandler.__deallocating_deinit()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong removeTarget:v0 action:"handleActionFromGestureRecognizer:"];
  }

  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1004E2070()
{
  result = swift_slowAlloc();
  qword_1006F9848 = result;
  return result;
}

uint64_t UIGestureRecognizerHandling<>.addHandler(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1006F7F78 != -1)
  {
    swift_once();
  }

  v8 = qword_1006F9848;
  if (objc_getAssociatedObject(v4, qword_1006F9848))
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    sub_100009DCC(&qword_1006F9850, &qword_1005A7198);
    if (swift_dynamicCast())
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1004A14E0(v18);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_11:
  *&v18[0] = v9;
  type metadata accessor for GestureRecognizerHandler();
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a1;
  v10[4] = a2;
  v11 = swift_allocObject();
  v12 = v4;

  GestureRecognizerHandler.init<A>(gestureRecognizer:handler:)(v12, sub_1004E2344, v10, a3);

  sub_100572CE8();
  if (*((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v18[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100572D68();
  }

  sub_100572DB8();
  isa = sub_100572D08().super.isa;

  objc_setAssociatedObject(v12, v8, isa, 1);

  return v11;
}

uint64_t sub_1004E22E0(void *a1, void (*a2)(void *, id), uint64_t a3, uint64_t a4)
{
  v5[3] = a4;
  v5[4] = &protocol witness table for UIGestureRecognizer;
  v5[0] = a1;
  a2(v5, [a1 state]);
  return sub_100010474(v5);
}

void UIGestureRecognizerHandling<>.removeHandler(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1006F7F78 != -1)
  {
LABEL_25:
    swift_once();
  }

  v4 = qword_1006F9848;
  if (objc_getAssociatedObject(v2, qword_1006F9848))
  {
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (*(&v15 + 1))
  {
    sub_100009DCC(&qword_1006F9850, &qword_1005A7198);
    if (swift_dynamicCast())
    {
      v5 = v13;
      goto LABEL_10;
    }
  }

  else
  {
    sub_1004A14E0(v16);
  }

  v5 = _swiftEmptyArrayStorage;
LABEL_10:
  *&v16[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    v6 = sub_100574178();
    if (v6)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_12:
      v11 = v4;
      v12 = v2;
      v7 = 0;
      v2 = (v5 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_100573F58();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v4 = v11;
            v2 = v12;
            break;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_25;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_22;
          }
        }

        if (v8 == a1)
        {
        }

        else
        {
          sub_100573FC8();
          sub_100574008();
          sub_100574018();
          sub_100573FD8();
        }

        ++v7;
        if (v9 == v6)
        {
          goto LABEL_23;
        }
      }
    }
  }

  type metadata accessor for GestureRecognizerHandler();
  isa = sub_100572D08().super.isa;

  objc_setAssociatedObject(v2, v4, isa, 1);
}

uint64_t KeyboardAvoidance.animationOptions.getter()
{
  result = *(v0 + 72) << 16;
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

double KeyboardAvoidance.init(notification:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_1004E3760(a2, v6);
  v3 = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  return result;
}

void KeyboardAvoidance.animate(alongsideKeyboard:completion:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = *(v4 + 72) << 16;
  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = a1;
    v14 = a2;
    v9 = _NSConcreteStackBlock;
    v10 = 1107296256;
    v11 = sub_10007885C;
    v12 = &unk_1006AF5D8;
    v8 = _Block_copy(&v9);

    if (a3)
    {
      v13 = a3;
      v14 = a4;
      v9 = _NSConcreteStackBlock;
      v10 = 1107296256;
      v11 = sub_10044E8C8;
      v12 = &unk_1006AF600;
      a3 = _Block_copy(&v9);
    }

    [objc_opt_self() animateWithDuration:v5 delay:v8 options:a3 animations:*(v4 + 64) completion:0.0];
    _Block_release(a3);
    _Block_release(v8);
  }
}

void KeyboardAvoidance.animate(alongsideKeyboard:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_opt_self();
  v6 = *(v2 + 72) << 16;
  if (v6 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v5;
    v8 = *(v2 + 64);
    v10[4] = a1;
    v10[5] = a2;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10007885C;
    v10[3] = &unk_1006AF628;
    v9 = _Block_copy(v10);

    [v7 animateWithDuration:v6 delay:v9 options:0 animations:v8 completion:0.0];
    _Block_release(v9);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.animateContentScrollView(in:)(UIViewController in)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 48);
  *(v3 + 48) = *(v1 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(v1 + 64);
  *(v3 + 96) = *(v1 + 80);
  v5 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v5;
  *(v3 + 104) = in;
  v6 = objc_opt_self();
  v7 = *(v1 + 72) << 16;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = v6;
    v9 = *(v1 + 64);
    v12[4] = sub_1004E3C60;
    v12[5] = v3;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_10007885C;
    v12[3] = &unk_1006AF678;
    v10 = _Block_copy(v12);
    v11 = in.super.super.isa;

    [v8 animateWithDuration:v7 delay:v10 options:0 animations:v9 completion:0.0];
    _Block_release(v10);
  }
}

Swift::Void __swiftcall KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(UIViewController to)
{
  if ([(objc_class *)to.super.super.isa isViewLoaded])
  {
    v3 = [(objc_class *)to.super.super.isa view];
    if (v3)
    {
      v4 = v3;
      [v3 convertRect:0 fromView:{v1[4], v1[5], v1[6], v1[7]}];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = [(objc_class *)to.super.super.isa view];
      if (v13)
      {
        v14 = v13;
        [v13 safeAreaInsets];
        v16 = v15;

        [(objc_class *)to.super.super.isa additionalSafeAreaInsets];
        v18 = v16 - v17;
        [v4 frame];
        Height = CGRectGetHeight(v23);
        v24.origin.x = v6;
        v24.origin.y = v8;
        v24.size.width = v10;
        v24.size.height = v12;
        MinY = CGRectGetMinY(v24);

        if (Height - MinY - v18 < 0.0)
        {
          v21 = 0.0;
        }

        else
        {
          v21 = Height - MinY - v18;
        }

        [(objc_class *)to.super.super.isa setAdditionalSafeAreaInsets:0.0, 0.0, v21, 0.0];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void KeyboardAvoidance.additionalSafeAreaInsets(for:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0.0;
  if (![a1 isViewLoaded] || (v6 = objc_msgSend(a1, "view")) == 0)
  {
    v24 = 1;
LABEL_8:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = 0;
    *(a2 + 32) = v24;
    return;
  }

  v7 = v6;
  [v6 convertRect:0 fromView:{v2[4], v2[5], v2[6], v2[7]}];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [a1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [a1 additionalSafeAreaInsets];
    v21 = v19 - v20;
    [v7 frame];
    Height = CGRectGetHeight(v25);
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    MinY = CGRectGetMinY(v26);

    v24 = 0;
    if (Height - MinY - v21 < 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = Height - MinY - v21;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void KeyboardAvoidance.recommendedScrollRect(in:preferredVisibleRect:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = swift_allocObject();
  sub_1004E3F20(a1, v54);
  if (v55)
  {
    swift_deallocUninitializedObject();
LABEL_12:
    v36 = 0uLL;
    v37 = 1;
    width = 0.0;
    v38 = 0.0;
    goto LABEL_13;
  }

  v8 = v54[1];
  *(v7 + 16) = v54[0];
  *(v7 + 32) = v8;
  v9 = [a1 contentScrollViewForEdge:1];
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [a1 view];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 window];

    if (!v13 || (v14 = [v13 windowScene], v13, !v14) || (v15 = objc_msgSend(v14, "screen"), v14, !v15))
    {

      goto LABEL_12;
    }

    *(v7 + 16) = 0;
    v16 = swift_allocObject();
    [v10 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    *(v16 + 16) = v17;
    *(v16 + 24) = v19;
    *(v16 + 32) = v21;
    v23 = [v15 coordinateSpace];
    v24 = v3[4];
    v25 = v3[5];
    v26 = v3[6];
    v27 = v3[7];
    v28 = v10;
    [v23 convertRect:v28 toCoordinateSpace:{v24, v25, v26, v27}];
    v30 = v29;

    swift_unknownObjectRelease();
    v31 = v30 - v20;
    *(v16 + 40) = v30 - v20;
    v56.origin.x = v18;
    v56.origin.y = v20;
    v56.size.width = v22;
    v56.size.height = v30 - v20;
    Height = CGRectGetHeight(v56);
    if (CGRectGetHeight(*(v7 + 16)) > Height)
    {
      v51 = *(v7 + 16);
      width = *(v7 + 32);
      v34 = *(v7 + 40);
      v57.origin.x = v18;
      v57.origin.y = v20;
      v57.size.width = v22;
      v57.size.height = v31;
      v35 = CGRectGetHeight(v57);

      v36 = v51;
      v37 = 0;
      v38 = v34 - v35;
LABEL_13:
      *a3 = v36;
      *(a3 + 16) = width;
      *(a3 + 24) = v38;
      *(a3 + 32) = v37;
      return;
    }

    if ((*(a2 + 32) & 1) == 0)
    {
      v63.size.width = *(a2 + 16);
      v63.size.height = *(a2 + 24);
      v63.origin.x = *a2;
      v43 = *(a2 + 8);
      v63.origin.y = v43;
      v59 = CGRectUnion(*(v7 + 16), v63);
      y = v59.origin.y;
      x = v59.origin.x;
      width = v59.size.width;
      v38 = v59.size.height;
      v59.origin.x = v18;
      v59.origin.y = v20;
      v59.size.width = v22;
      v59.size.height = v31;
      v44 = CGRectGetHeight(v59);
      v60.origin.y = y;
      v60.origin.x = x;
      v60.size.width = width;
      v60.size.height = v38;
      if (CGRectGetHeight(v60) <= v44)
      {
        v61.origin.x = v18;
        v61.origin.y = v20;
        v61.size.width = v22;
        v61.size.height = v31;
        v45 = CGRectGetWidth(v61);
        v62.origin.y = y;
        v62.origin.x = x;
        v62.size.width = width;
        v62.size.height = v38;
        if (CGRectGetWidth(v62) <= v45)
        {

          v37 = 0;
          *&v36 = x;
          goto LABEL_22;
        }
      }

      v42 = v43;
LABEL_21:
      v46 = sub_1004E40D0(v7, v16, v28, v42);
      y = v47;
      v53 = v46;
      width = v48;
      v38 = v49;

      *&v36 = v53;
      v37 = 0;
LABEL_22:
      *(&v36 + 1) = y;
      goto LABEL_13;
    }

    [v28 contentOffset];
    v40 = v39;
    if (v39 > CGRectGetMinY(*(v7 + 16)) || (v58.origin.x = v18, v58.origin.y = v20, v58.size.width = v22, v58.size.height = v31, v41 = v40 + CGRectGetHeight(v58), CGRectGetMaxY(*(v7 + 16)) > v41))
    {
      v42 = v40;
      goto LABEL_21;
    }

LABEL_11:

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t static KeyboardAvoidance.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (CGRectEqualToRect(*a1, *a2) && CGRectEqualToRect(*(a1 + 32), *(a2 + 32)) && *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72))
  {
    v4 = *(a1 + 80) ^ *(a2 + 80) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1004E31A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v16 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v15 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    v17.origin.x = v2;
    v17.origin.y = v3;
    v17.size.width = v4;
    v17.size.height = v5;
    v18.origin.x = v8;
    v18.origin.y = v9;
    v18.size.width = v10;
    v18.size.height = v11;
    result = CGRectEqualToRect(v17, v18);
    if (result)
    {
      result = 0;
      if (v16 == v15)
      {
        if (v6 == v12)
        {
          return v7 ^ v13 ^ 1u;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void *KeyboardObserver.init(options:update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a1 + 16);
  if (!v5)
  {
    return v4;
  }

  sub_100573FF8();
  v6 = v4 + 56;
  v7 = sub_100573DB8();
  v8 = *(v4 + 36);
  result = objc_opt_self();
  v23 = result;
  v24 = v4;
  v22 = v4 + 56;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    if ((*(v6 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_20;
    }

    v10 = *(*(v4 + 48) + v7);
    v26 = v5;
    v27 = v8;
    if (v10 > 2)
    {
      v11 = UIKeyboardDidHideNotification;
      if (v10 != 3)
      {
        v11 = UIKeyboardWillChangeFrameNotification;
        if (v10 != 4)
        {
          v11 = UIKeyboardDidChangeFrameNotification;
        }
      }
    }

    else
    {
      v11 = UIKeyboardWillShowNotification;
      if (v10)
      {
        v11 = UIKeyboardDidShowNotification;
        if (v10 != 1)
        {
          v11 = UIKeyboardWillHideNotification;
        }
      }
    }

    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a3;
    *(v13 + 32) = v10;
    type metadata accessor for NotificationObserver();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v14 + 16) = v12;
    swift_unknownObjectWeakAssign();
    *(v14 + 32) = 1;
    *(v14 + 48) = sub_1004E4238;
    *(v14 + 56) = v13;
    v15 = a3;

    v16 = v12;

    v17 = [v23 defaultCenter];
    *(v14 + 40) = v17;
    v18 = *(v14 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    v20 = v17;

    v21 = v18;
    [v20 addObserver:v14 selector:"handleNotification:" name:v21 object:Strong];

    swift_unknownObjectRelease();
    sub_100573FC8();
    sub_100574008();
    sub_100574018();
    result = sub_100573FD8();
    v4 = v24;
    if (v7 >= -(-1 << *(v24 + 32)))
    {
      goto LABEL_21;
    }

    v6 = v22;
    if ((*(v22 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v27 != *(v24 + 36))
    {
      goto LABEL_23;
    }

    result = sub_100573DD8();
    v7 = result;
    v8 = *(v24 + 36);
    v5 = v26 - 1;
    a3 = v15;
    if (v26 == 1)
    {

      return v4;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

void sub_1004E363C(uint64_t a1, uint64_t (*a2)(uint64_t, _OWORD *), uint64_t a3, uint64_t a4)
{
  sub_10056C368();
  v7 = __chkstk_darwin();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1, v7);
  sub_1004E3760(v9, v12);
  if (v13 != 2)
  {
    v14[3] = v12[3];
    v14[4] = v12[4];
    v14[1] = v12[1];
    v14[2] = v12[2];
    v14[0] = v12[0];
    v15 = v13;
    a2(a4, v14);
  }
}

void sub_1004E3760(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10056C358();
  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = v4;
  v44 = sub_1005728D8();
  sub_100573E78();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v6 = sub_1000EB93C(v49);
  if ((v7 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100081F38(*(v5 + 56) + 32 * v6, v50);
  sub_1000F4130(v49);
  sub_1000D3B98(0, &qword_1006F7F90, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v44 CGRectValue];
  v42 = v9;
  v43 = v8;
  v40 = v10;
  v41 = v11;

  v45 = sub_1005728D8();
  sub_100573E78();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_1000EB93C(v49);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100081F38(*(v5 + 56) + 32 * v12, v50);
  sub_1000F4130(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v45 CGRectValue];
  v38 = v15;
  v39 = v14;
  v36 = v16;
  v37 = v17;

  v46 = sub_1005728D8();
  sub_100573E78();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v18 = sub_1000EB93C(v49);
  if ((v19 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100081F38(*(v5 + 56) + 32 * v18, v50);
  sub_1000F4130(v49);
  sub_1000D3B98(0, &qword_1006F8AB8, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  [v46 floatValue];
  v21 = v20;

  v47 = sub_1005728D8();
  sub_100573E78();
  if (!*(v5 + 16))
  {
    goto LABEL_18;
  }

  v22 = sub_1000EB93C(v49);
  if ((v23 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_100081F38(*(v5 + 56) + 32 * v22, v50);
  sub_1000F4130(v49);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    v35 = sub_10056C368();
    (*(*(v35 - 8) + 8))(a1, v35);

    goto LABEL_20;
  }

  v24 = [v47 integerValue];

  v48 = sub_1005728D8();
  sub_100573E78();
  if (!*(v5 + 16) || (v25 = sub_1000EB93C(v49), (v26 & 1) == 0))
  {
LABEL_18:

    sub_1000F4130(v49);
    goto LABEL_19;
  }

  sub_100081F38(*(v5 + 56) + 32 * v25, v50);
  sub_1000F4130(v49);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v34 = sub_10056C368();
    (*(*(v34 - 8) + 8))(a1, v34);
LABEL_20:
    v24 = 0;
    v30 = 0uLL;
    v27 = 2;
    v29 = 0.0;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    goto LABEL_21;
  }

  v27 = [v48 BOOLValue];

  v28 = sub_10056C368();
  (*(*(v28 - 8) + 8))(a1, v28);
  v29 = v21;
  *&v30 = v43;
  *(&v30 + 1) = v40;
  *&v31 = v42;
  *(&v31 + 1) = v41;
  *&v32 = v39;
  *(&v32 + 1) = v36;
  *&v33 = v38;
  *(&v33 + 1) = v37;
LABEL_21:
  *a2 = v30;
  *(a2 + 16) = v31;
  *(a2 + 32) = v32;
  *(a2 + 48) = v33;
  *(a2 + 64) = v29;
  *(a2 + 72) = v24;
  *(a2 + 80) = v27;
}

uint64_t sub_1004E3C10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004E3C28()
{

  return swift_deallocObject();
}

void sub_1004E3C60()
{
  v1 = *(v0 + 104);
  KeyboardAvoidance.applyAdditionalSafeAreaInsets(to:)(v1);

  sub_1004E3CB0(v1);
}

void sub_1004E3CB0(void *a1)
{
  v1 = [a1 contentScrollView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 firstResponder];
    if (v3)
    {
      v30 = v3;
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = v4;
        v6 = v30;
        v7 = [v5 superview];
        if (v7)
        {
          v8 = v7;
          sub_1000D3B98(0, &qword_1006F92E8, UIView_ptr);
          while (1)
          {
            v9 = v2;
            v10 = v8;
            v11 = sub_100573A58();

            if (v11)
            {
              break;
            }

            objc_opt_self();
            if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
            {
              v10 = v10;

              v5 = v10;
              break;
            }

            v8 = [v10 superview];

            if (!v8)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          v10 = 0;
        }

        [v5 frame];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = [v5 superview];
        [v2 convertRect:v21 fromView:{v14, v16, v18, v20}];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;

        [v2 scrollRectToVisible:0 animated:{v23, v25, v27, v29}];
      }

      v12 = v30;
    }

    else
    {
      v12 = v2;
    }
  }
}

void sub_1004E3F20(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 1;
  v5 = [a1 contentScrollViewForEdge:1];
  v6 = 0uLL;
  if (!v5)
  {
    v28 = 0uLL;
    goto LABEL_11;
  }

  v7 = v5;
  v8 = [v5 firstResponder];
  if (!v8)
  {

    goto LABEL_10;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_8:

LABEL_10:
    v4 = 1;
    v28 = 0uLL;
    v6 = 0uLL;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = [a1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v11 isDescendantOfView:v12];

    if (v14)
    {
      [v11 frame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v23 = [v11 superview];
      [v7 convertRect:v23 fromView:{v16, v18, v20, v22}];
      v30 = v24;
      v31 = v25;
      v29 = v26;
      v32 = v27;

      *&v28 = v29;
      *&v6 = v30;
      v4 = 0;
      *(&v6 + 1) = v31;
      *(&v28 + 1) = v32;
LABEL_11:
      *a2 = v6;
      *(a2 + 16) = v28;
      *(a2 + 32) = v4;
      return;
    }

    goto LABEL_8;
  }

  __break(1u);
}

double sub_1004E40D0(uint64_t a1, uint64_t a2, void *a3, CGFloat a4)
{
  swift_beginAccess();
  v8 = *(a1 + 16);
  swift_beginAccess();
  CGRectGetHeight(*(a2 + 16));
  swift_beginAccess();
  CGRectGetHeight(*(a1 + 16));
  swift_beginAccess();
  if (CGRectGetMinY(*(a1 + 16)) > a4)
  {
    [a3 adjustedContentInset];
    swift_beginAccess();
    CGRectGetMaxY(*(a1 + 16));
  }

  return v8;
}

uint64_t sub_1004E4200()
{

  return swift_deallocObject();
}

unint64_t sub_1004E4248()
{
  result = qword_1006F9920;
  if (!qword_1006F9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006F9920);
  }

  return result;
}

__n128 sub_1004E429C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1004E42C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1004E4314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

uint64_t Signpost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056DEC8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id Signpost.log.getter()
{
  v1 = *(v0 + *(type metadata accessor for Signpost(0) + 20));

  return v1;
}

uint64_t type metadata accessor for Signpost(uint64_t a1)
{
  result = qword_1006F9988;
  if (!qword_1006F9988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Signpost.init(name:object:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a3;
  v25 = a1;
  v26 = a2;
  v24 = a6;
  sub_100009DCC(&qword_1006F9928, &qword_1005A7358);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = sub_10056DEC8();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v24 - v15;
  v17 = a5;
  swift_unknownObjectRetain();
  sub_10056DE88();
  (*(v12 + 16))(v10, v16, v11);
  (*(v12 + 56))(v10, 0, 1, v11);
  sub_1004E49BC(v10, v8);
  v18 = *(v12 + 48);
  if (v18(v8, 1, v11) == 1)
  {
    v19 = v17;
    sub_10056DE98();
    swift_unknownObjectRelease();
    sub_1004E4A2C(v10);
    (*(v12 + 8))(v16, v11);
    if (v18(v8, 1, v11) != 1)
    {
      sub_1004E4A2C(v8);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1004E4A2C(v10);
    (*(v12 + 8))(v16, v11);
    (*(v12 + 32))(v14, v8, v11);
  }

  v20 = v24;
  (*(v12 + 32))(v24, v14, v11);
  result = type metadata accessor for Signpost(0);
  *(v20 + *(result + 20)) = v17;
  v22 = v20 + *(result + 24);
  v23 = v26;
  *v22 = v25;
  *(v22 + 8) = v23;
  *(v22 + 16) = v27;
  return result;
}

uint64_t Signpost.init(name:id:log:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a3;
  v21 = a2;
  sub_100009DCC(&qword_1006F9928, &qword_1005A7358);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = sub_10056DEC8();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E49BC(a4, v11);
  v16 = *(v13 + 48);
  if (v16(v11, 1, v12) == 1)
  {
    v17 = a5;
    sub_10056DE98();
    sub_1004E4A2C(a4);
    if (v16(v11, 1, v12) != 1)
    {
      sub_1004E4A2C(v11);
    }
  }

  else
  {
    sub_1004E4A2C(a4);
    (*(v13 + 32))(v15, v11, v12);
  }

  (*(v13 + 32))(a6, v15, v12);
  result = type metadata accessor for Signpost(0);
  *(a6 + *(result + 20)) = a5;
  v19 = a6 + *(result + 24);
  v20 = v21;
  *v19 = a1;
  *(v19 + 8) = v20;
  *(v19 + 16) = v22;
  return result;
}

uint64_t sub_1004E49BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F9928, &qword_1005A7358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E4A2C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F9928, &qword_1005A7358);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E4B0C(uint64_t a1, uint64_t (*a2)(void))
{
  a2();
  type metadata accessor for Signpost(0);

  return sub_10056DE78();
}

uint64_t sub_1004E4B90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t (*a6)(void))
{
  a6();
  type metadata accessor for Signpost(0);
  return sub_10056DE68();
}

uint64_t static Signpost.interval<A>(name:log:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a6;
  v35 = a5;
  v36 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v33 = a7;
  v7 = sub_10056DEC8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9928, &qword_1005A7358);
  __chkstk_darwin();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for Signpost(0);
  __chkstk_darwin();
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v20 = &v29 - v19;
  (*(v8 + 56))(v14, 1, 1, v7, v18);
  sub_1004E49BC(v14, v12);
  v21 = *(v8 + 48);
  if (v21(v12, 1, v7) == 1)
  {
    v22 = v36;
    sub_10056DE98();
    sub_1004E4A2C(v14);
    if (v21(v12, 1, v7) != 1)
    {
      sub_1004E4A2C(v12);
    }
  }

  else
  {
    sub_1004E4A2C(v14);
    (*(v8 + 32))(v10, v12, v7);
  }

  (*(v8 + 32))(v17, v10, v7);
  v23 = v36;
  *&v17[*(v15 + 20)] = v36;
  v24 = &v17[*(v15 + 24)];
  v25 = v31;
  *v24 = v30;
  *(v24 + 1) = v25;
  v24[16] = v32;
  sub_1001B36E0(v17, v20);
  v26 = v23;
  sub_1005736D8();
  v27 = sub_10056DE78();
  v35(v27);
  sub_1005736C8();
  sub_10056DE78();
  return sub_1001B3530(v20);
}

uint64_t sub_1004E4F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056DEC8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1004E5040(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056DEC8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1004E50F8(uint64_t a1)
{
  result = sub_10056DEC8();
  if (v2 <= 0x3F)
  {
    result = sub_1004E5184();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1004E5184()
{
  result = qword_1006F9998;
  if (!qword_1006F9998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006F9998);
  }

  return result;
}

void UnfairLock.locked<A>(_:)(void (*a1)(void))
{
  os_unfair_lock_lock(*(v1 + 16));
  a1();
  os_unfair_lock_unlock(*(v1 + 16));
}

uint64_t UnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t UnfairLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t WeakArray.endIndex.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray.WeakBox(0, a2, a2, a4);

  return sub_100572E18();
}

uint64_t WeakArray.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WeakArray.WeakBox(0, a3, a3, a4);
  sub_100572E48();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v4 - 8) + 8))(v7, v4);
  return Strong;
}

{
  type metadata accessor for WeakArray.WeakBox(255, a3, a3, a4);
  sub_100572E38();
  swift_getWitnessTable();
  sub_1005731A8();
  sub_100009DCC(&qword_1006F8A78, &unk_1005A5E30);
  v8 = sub_100573338();
  result = 0;
  if (v8)
  {
    return WeakArray.subscript.getter(a1, a2, a3, v7);
  }

  return result;
}

Swift::Int __swiftcall WeakArray.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakArray.init(_:)(uint64_t a1, uint64_t a2)
{
  v11[5] = a1;
  v11[2] = a2;
  v3 = sub_100572E38();
  v5 = type metadata accessor for WeakArray.WeakBox(0, a2, a2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1004AB3E4(sub_1004E55F8, v11, v3, v5, &type metadata for Never, WitnessTable, &protocol witness table for Never, v7);
  v9 = v8;

  return v9;
}

void sub_1004E55F8()
{
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
}

uint64_t WeakArray.append(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  type metadata accessor for WeakArray.WeakBox(255, v2, v2, v3);
  sub_100572E38();
  return sub_100572DE8();
}

uint64_t WeakArray.remove(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for WeakArray.WeakBox(255, *(a2 + 16), *(a2 + 16), a4);
  sub_100572E38();
  sub_100572E08();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(*(v4 - 8) + 8))(v7, v4);
  return Strong;
}

uint64_t WeakArray.remove(_:)(uint64_t a1, uint64_t a2)
{
  WeakArray.reap()();
  type metadata accessor for WeakArray.WeakBox(255, *(a2 + 16), *(a2 + 16), v3);
  sub_100572E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_100573318();
}

Swift::Void __swiftcall WeakArray.reap()()
{
  type metadata accessor for WeakArray.WeakBox(255, *(v0 + 16), *(v0 + 16), v1);
  sub_100572E38();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_100573318();
}

uint64_t sub_1004E58E8(uint64_t a1)
{
  v2 = *(v1 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == v2;
  }

  return result;
}

BOOL sub_1004E5930(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    swift_unknownObjectRelease();
  }

  return Strong == 0;
}

uint64_t WeakArray.allElements.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for WeakArray(0, a2, a3, a4);
  swift_getWitnessTable();
  return sub_100572BB8();
}

uint64_t sub_1004E5A98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = WeakArray.endIndex.getter(*v4, *(a1 + 16), a3, a4);
  *a2 = result;
  return result;
}

uint64_t (*sub_1004E5ACC(uint64_t **a1, uint64_t *a2, uint64_t a3))()
{
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x30uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = sub_1004E5BA4(v7, *a2, *v3, *(a3 + 16));
  v8[4] = v10;
  v8[5] = v9;
  return sub_1004E5B5C;
}

void sub_1004E5B5C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 40))(*a1);

  free(v1);
}

void *sub_1004E5CA4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1004E5CBC(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1004E5CFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_1004E5D50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1004E5EF4(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_1004E5DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004E5DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004E5E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1005727C8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_100573348();
  result = sub_1005727C8();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004E5EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1005727C8();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t WeakValuesDictionary.__allocating_init()()
{
  v0 = swift_allocObject();
  WeakValuesDictionary.init()();
  return v0;
}

void *WeakValuesDictionary.init()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = sub_1004990B8();
  swift_getTupleTypeMetadata2();
  v4 = sub_100572D88();
  v5 = sub_1004B1430(v4, v2, v3, *(v1 + 96));

  v0[2] = v5;
  return v0;
}

uint64_t WeakValuesDictionary.subscript.getter(uint64_t a1)
{
  swift_beginAccess();
  sub_1004990B8();

  sub_100572708();

  if (v5[0])
  {
    if ([v5[0] weakObjectValue])
    {
      sub_100573D58();

      swift_unknownObjectRelease();
    }

    else
    {

      v3 = 0u;
      v4 = 0u;
    }

    *v5 = v3;
    v6 = v4;
    if (*(&v4 + 1))
    {
      if (swift_dynamicCast())
      {
        return v2;
      }
    }

    else
    {
      sub_1004A14E0(v5);
    }
  }

  return 0;
}

void WeakValuesDictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin();
  if (v9)
  {
    (*(v6 + 16))(&v12 - v7, a2, v5, v8);
    v12 = a1;
    swift_unknownObjectRetain();
    v10 = sub_100574478();
    v11 = [objc_opt_self() valueWithWeakObject:v10];
    swift_unknownObjectRelease();
    v13 = v11;
    swift_beginAccess();
    sub_1004990B8();
    sub_1005726E8();
    sub_100572718();
    swift_endAccess();
    swift_unknownObjectRelease_n();
    (*(v6 + 8))(a2, v5);
  }

  else
  {
    swift_beginAccess();
    sub_1004990B8();
    sub_1005726E8();
    sub_1005726C8();
    swift_endAccess();
    (*(v6 + 8))(a2, v5);
  }
}

void (*WeakValuesDictionary.subscript.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[1] = v2;
  v7 = *(*v2 + 80);
  v5[2] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v5[3] = v8;
  v10 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v5[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v8 + 64));
    v11 = malloc(v10);
  }

  v6[5] = v11;
  (*(v9 + 16))();
  *v6 = WeakValuesDictionary.subscript.getter(a2);
  return sub_1004E65C8;
}

void sub_1004E65C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    (*(v2[3] + 32))((*a1)[4], v4, v2[2]);
    v5 = swift_unknownObjectRetain();
    WeakValuesDictionary.subscript.setter(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    WeakValuesDictionary.subscript.setter(**a1, v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

Swift::Void __swiftcall WeakValuesDictionary.compact()()
{
  v68 = *v0;
  v1 = *(v68 + 80);
  v59 = *(v1 - 8);
  __chkstk_darwin();
  v57 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v54 - v3;
  v55 = v5;
  __chkstk_darwin();
  v69 = &v54 - v6;
  v60 = sub_1004990B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v65 = sub_100573C28();
  v8 = *(v65 - 8);
  __chkstk_darwin();
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  v78 = sub_100572D88();
  swift_beginAccess();
  v58 = v0;
  v13 = v0[2];
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_1005740B8();
    v15 = 0;
    v16 = 0;
    v70 = 0;
    v17 = v14 | 0x8000000000000000;
  }

  else
  {
    v18 = -1 << *(v13 + 32);
    v16 = ~v18;
    v15 = v13 + 64;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v70 = v20 & *(v13 + 64);
    v17 = v13;
  }

  v72 = (v59 + 32);
  v64 = TupleTypeMetadata2 - 8;
  v56 = v16;
  v21 = (v16 + 64) >> 6;
  v73 = (v59 + 16);
  v63 = (v8 + 32);
  v71 = (v59 + 8);

  v22 = 0;
  v62 = v10;
  v61 = v12;
  v66 = v15;
  v67 = v17;
  v23 = v70;
  while (1)
  {
    v70 = v23;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (sub_1005740E8())
      {
        v40 = v39;
        v41 = v69;
        sub_100574458();
        swift_unknownObjectRelease();
        *&v75 = v40;
        swift_dynamicCast();
        v42 = *&v77[0];
        v43 = *(TupleTypeMetadata2 + 48);
        v44 = v41;
        v10 = v62;
        (*v72)(v62, v44, v1);
        *&v10[v43] = v42;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
      }

      else
      {
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
      }

      v27 = v22;
      v74 = v70;
      v12 = v61;
    }

    else
    {
      v24 = v23;
      v25 = v22;
      if (v23)
      {
LABEL_21:
        v74 = (v24 - 1) & v24;
        v29 = __clz(__rbit64(v24)) | (v25 << 6);
        v30 = v4;
        v31 = v59;
        v32 = v69;
        (*(v59 + 16))(v69, *(v17 + 48) + *(v59 + 72) * v29, v1);
        v33 = *(*(v17 + 56) + 8 * v29);
        v34 = *(TupleTypeMetadata2 + 48);
        v35 = *(v31 + 32);
        v4 = v30;
        v10 = v62;
        v36 = v32;
        v12 = v61;
        v35(v62, v36, v1);
        *&v10[v34] = v33;
        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 0, 1, TupleTypeMetadata2);
        v38 = v33;
        v27 = v25;
      }

      else
      {
        v26 = v21 <= v22 + 1 ? v22 + 1 : v21;
        v27 = v26 - 1;
        v28 = v22;
        while (1)
        {
          v25 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            return;
          }

          if (v25 >= v21)
          {
            break;
          }

          v24 = *(v15 + 8 * v25);
          ++v28;
          if (v24)
          {
            v17 = v67;
            goto LABEL_21;
          }
        }

        v37 = *(TupleTypeMetadata2 - 8);
        (*(v37 + 56))(v10, 1, 1, TupleTypeMetadata2);
        v74 = 0;
      }
    }

    (*v63)(v12, v10, v65);
    if ((*(v37 + 48))(v12, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v45 = *&v12[*(TupleTypeMetadata2 + 48)];
    (*v72)(v4, v12, v1);
    if ([v45 weakObjectValue])
    {
      sub_100573D58();
      swift_unknownObjectRelease();
    }

    else
    {
      v75 = 0u;
      v76 = 0u;
    }

    v77[0] = v75;
    v77[1] = v76;
    if (!*(&v76 + 1))
    {
      sub_1004A14E0(v77);
LABEL_9:
      (*v73)(v69, v4, v1);
      sub_100572E38();
      sub_100572DE8();

      (*v71)(v4, v1);
      goto LABEL_10;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    (*v71)(v4, v1);

    swift_unknownObjectRelease();
LABEL_10:
    v22 = v27;
    v23 = v74;
    v15 = v66;
    v17 = v67;
  }

  sub_10025A994(v67);
  v46 = v78;
  v47 = sub_100572E18();
  v48 = v59;
  v49 = v57;
  if (!v47)
  {
    goto LABEL_44;
  }

  v50 = 0;
  while (2)
  {
    v51 = sub_100572DA8();
    sub_100572D58();
    if (v51)
    {
      (*(v48 + 16))(v49, v46 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, v1);
      v52 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        break;
      }

      goto LABEL_38;
    }

    v53 = sub_100573F48();
    if (v55 != 8)
    {
      goto LABEL_46;
    }

    *&v77[0] = v53;
    (*v73)(v49, v77, v1);
    swift_unknownObjectRelease();
    v52 = v50 + 1;
    if (!__OFADD__(v50, 1))
    {
LABEL_38:
      swift_beginAccess();
      sub_1005726E8();
      sub_1005726C8();
      swift_endAccess();

      (*v71)(v49, v1);
      ++v50;
      if (v52 == sub_100572E18())
      {
        goto LABEL_44;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_44:
}

void sub_1004E733C(id a1)
{
  v1 = objc_alloc_init(MusicMonogramArtworkDataSource);
  v2 = qword_10072A5B0;
  qword_10072A5B0 = v1;
}

void sub_1004E73BC(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v1 = dispatch_queue_create("com.apple.Music.MusicMonogramArtworkDataSource.loadingQueue", v3);
  v2 = qword_10072A5C0;
  qword_10072A5C0 = v1;
}

void sub_1004E7518(uint64_t a1)
{
  v2 = [*(a1 + 32) token];
  [*(a1 + 32) fittingSize];
  v4 = v3;
  v6 = v5;
  [*(a1 + 32) destinationScale];
  v8 = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1004E7614;
  v10[3] = &unk_1006AFA38;
  v9 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v4;
  v14 = v6;
  v12 = *(a1 + 48);
  [v9 _monogramImageForToken:v2 fittingSize:v10 scale:v4 completionHandler:{v6, v8}];
}

void sub_1004E7614(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 visualIdenticalityIdentifier];
  v6 = [MPArtworkRepresentation representationForVisualIdentity:v5 withSize:v4 image:*(a1 + 48), *(a1 + 56)];

  (*(*(a1 + 40) + 16))();
}

id sub_1004E7B04()
{
  result = sub_1004E7B24();
  qword_1006FECA0 = result;
  return result;
}

id sub_1004E7B24()
{
  v0 = sub_10056C8A8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v52 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(sub_100009DCC(&qword_1006F9F08, &unk_1005A7900) - 8);
  __chkstk_darwin();
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v48 - v5;
  __chkstk_darwin();
  v8 = &v48 - v7;
  __chkstk_darwin();
  v55 = &v48 - v9;
  __chkstk_darwin();
  v11 = &v48 - v10;
  v54 = sub_1004E976C(_swiftEmptyArrayStorage);
  sub_100009DCC(&qword_1006F9F10, &qword_1005A8570);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100580F90;
  v58 = v12;
  v51 = v13;
  v14 = v13 + v12;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = [v16 resourceURL];

  if (v17)
  {
    sub_10056C838();

    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 0;
  }

  else
  {
    v18 = *(v1 + 56);
    v19 = v11;
    v20 = 1;
  }

  v57 = v18;
  v18(v19, v20, 1, v0);
  sub_1004E9498(v11, v14);
  type metadata accessor for BundleFinder();
  v21 = [v15 bundleForClass:swift_getObjCClassFromMetadata()];
  v22 = [v21 resourceURL];

  if (v22)
  {
    v23 = v55;
    sub_10056C838();

    v24 = 0;
  }

  else
  {
    v24 = 1;
    v23 = v55;
  }

  v25 = (v1 + 56);
  v26 = v57;
  v57(v23, v24, 1, v0);
  v49 = v1;
  v27 = v56;
  sub_1004E9498(v23, v14 + v56);
  v28 = [v15 mainBundle];
  v29 = [v28 bundleURL];

  sub_10056C838();
  v55 = v25;
  v26(v14 + 2 * v27, 0, 1, v0);
  v59 = v54;
  sub_1004F3D50(v51);
  v30 = v59;
  v31 = v59[2];
  v32 = v53;
  if (v31)
  {
    v33 = 0;
    v34 = v58 + v59;
    v58 = (v49 + 6);
    v54 = (v49 + 1);
    v49 += 4;
    v50 = "F0E546A8DF70B34912BundleFinder";
    v51 = v31;
    while (v33 < v30[2])
    {
      sub_1004E9508(v34, v6);
      v35 = *v58;
      if ((*v58)(v6, 1, v0) == 1)
      {
        sub_1004E9578(v6);
        v36 = 1;
      }

      else
      {
        sub_10056C808();
        (*v54)(v6, v0);
        v36 = 0;
      }

      v57(v8, v36, 1, v0);
      sub_1004E9508(v8, v32);
      if (v35(v32, 1, v0) == 1)
      {
        sub_1004E9578(v8);
      }

      else
      {
        v37 = v30;
        v38 = v8;
        v39 = v6;
        v40 = v52;
        (*v49)(v52, v32, v0);
        v41 = objc_allocWithZone(NSBundle);
        sub_10056C7E8(v42);
        v44 = v43;
        v45 = [v41 initWithURL:v43];

        v32 = v53;
        v46 = v40;
        v6 = v39;
        v8 = v38;
        v30 = v37;
        v31 = v51;
        (*v54)(v46, v0);
        sub_1004E9578(v8);
        if (v45)
        {

          return v45;
        }
      }

      ++v33;
      v34 += v56;
      if (v31 == v33)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

LABEL_19:
  result = sub_1005740F8();
  __break(1u);
  return result;
}

uint64_t variable initialization expression of LyricsOptionsManager.observers()
{
  v0 = type metadata accessor for LyricsOptionsManager.Observer();

  return WeakArray.init(_:)(_swiftEmptyArrayStorage, v0);
}

void variable initialization expression of SyncedLyricsViewController.Specs.selectedLinePosition(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

unint64_t sub_1004E8258()
{
  result = qword_1006FBE40;
  if (!qword_1006FBE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006FBE40);
  }

  return result;
}

id sub_1004E8360(double *a1, double a2)
{
  v2 = [objc_opt_self() systemFontOfSize:a2 weight:*a1];

  return v2;
}

id variable initialization expression of SyncedLyricsViewController.Specs.automaticallyCreatedDisclaimerFont()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];

  return v0;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_1004E9768;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000376F0;
  v12[3] = &unk_1006B0090;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_1004E9768;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000376F0;
  v12[3] = &unk_1006B00E0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.35];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.85];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_1004E9768;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000376F0;
  v12[3] = &unk_1006B0130;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.selectedUpcomingBackgroundVocalsTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.65];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_1004E9768;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000376F0;
  v12[3] = &unk_1006B0180;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id variable initialization expression of SyncedLyricsViewController.Specs.deselectedScrollTextColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.4];

  v3 = [v0 labelColor];
  v4 = [v3 colorWithAlphaComponent:0.4];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_1004E9768;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000376F0;
  v12[3] = &unk_1006B01D0;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

id sub_1004E8D18(SEL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = [v7 whiteColor];
  v9 = [v7 *a1];
  v10 = objc_allocWithZone(UIColor);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v8;
  v17[4] = a3;
  v17[5] = v11;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_1000376F0;
  v17[3] = a4;
  v12 = _Block_copy(v17);
  v13 = v9;
  v14 = v8;

  v15 = [v10 initWithDynamicProvider:v12];

  _Block_release(v12);
  return v15;
}

id variable initialization expression of SyncedLyricsViewController.Specs.lineProgressionBackgroundVocalsGradientColor()
{
  v0 = objc_opt_self();
  v1 = [v0 whiteColor];
  v2 = [v1 colorWithAlphaComponent:0.175];

  v3 = [v0 tintColor];
  v4 = [v3 colorWithAlphaComponent:0.175];

  v5 = objc_allocWithZone(UIColor);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v12[4] = sub_1004E9768;
  v12[5] = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_1000376F0;
  v12[3] = &unk_1006B0270;
  v7 = _Block_copy(v12);
  v8 = v4;
  v9 = v2;

  v10 = [v5 initWithDynamicProvider:v7];

  _Block_release(v7);
  return v10;
}

CGFloat sub_1004E9000@<D0>(_OWORD *a1@<X8>, CGFloat a2@<D0>)
{
  CGAffineTransformMakeScale(&v6, a2, a2);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

id variable initialization expression of SyncedLyricsViewController.Specs.highlightViewBackgroundColor()
{
  v0 = objc_allocWithZone(UIColor);

  return [v0 initWithWhite:1.0 alpha:0.08];
}

double variable initialization expression of SyncedLyricsViewController.Specs.lineChangeSpringTimingParametersValues()
{
  v0 = Int.seconds.getter(1);
  Int.seconds.getter(100);
  Int.seconds.getter(18);
  return v0;
}

uint64_t sub_1004E90FC()
{

  return swift_deallocObject();
}

uint64_t sub_1004E9144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id variable initialization expression of SyncedLyricsViewController.tapFeedbackGenerator()
{
  v0 = objc_allocWithZone(UISelectionFeedbackGenerator);

  return [v0 init];
}

uint64_t sub_1004E923C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

id sub_1004E92C8(void (*a1)(void))
{
  a1(0);
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v1 init];
}

uint64_t sub_1004E930C(uint64_t a1)
{
  sub_1004E9670(&qword_1006FBE50, &unk_1005A7A90);
  sub_1004E9670(&qword_1006F9F40, &unk_1005A79E4);

  return sub_100574218();
}

__n128 sub_1004E93C8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1004E93EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1004E940C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1004E9498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F9F08, &unk_1005A7900);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E9508(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006F9F08, &unk_1005A7900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004E9578(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006F9F08, &unk_1005A7900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004E9670(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_1004E976C(uint64_t a1)
{
  v2 = sub_10056C8A8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100009DCC(&qword_1006F9F08, &unk_1005A7900);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1004F7C80(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1004F7C80((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_1004E9498(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void *sub_1004E99A0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1004F7CE0(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1005020B4(v8, v5, type metadata accessor for Lyrics.TextLine);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        sub_1004F7CE0((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for Lyrics.TextLine;
      v12 = sub_10002AB7C(&v14);
      sub_1005020B4(v5, v12, type metadata accessor for Lyrics.TextLine);
      v7[2] = v11 + 1;
      sub_10002EA74(&v14, &v7[5 * v11 + 4]);
      sub_10050211C(v5, type metadata accessor for Lyrics.TextLine);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void TimedElement.timeRange.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 8))();
  if (v4 > (*(a2 + 16))(a1, a2))
  {
    __break(1u);
  }
}

uint64_t sub_1004E9C4C()
{
  v0 = sub_100523E1C(&off_1006AFB68);
  result = swift_arrayDestroy();
  static Lyrics.chineseLanguages = v0;
  return result;
}

uint64_t *Lyrics.chineseLanguages.unsafeMutableAddressor()
{
  if (qword_1006F9D78 != -1)
  {
    swift_once();
  }

  return &static Lyrics.chineseLanguages;
}

uint64_t sub_1004E9DA0()
{
  v0 = sub_1004FCE10(&off_1006AFBA8);
  sub_100009DCC(&qword_1006FA728, &qword_1005A8700);
  result = swift_arrayDestroy();
  static Lyrics.scriptMap = v0;
  return result;
}

uint64_t *Lyrics.scriptMap.unsafeMutableAddressor()
{
  if (qword_1006F9D80 != -1)
  {
    swift_once();
  }

  return &static Lyrics.scriptMap;
}

double Lyrics.Word.startTime.getter()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.endTime.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  if (v2)
  {
    return *(v1 + 56 * v2 - 16);
  }

  else
  {
    return 0.0;
  }
}

double Lyrics.Word.Emphasis.factor.getter(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 0.0;
  }

  return result;
}

BOOL static Lyrics.Word.Emphasis.__derived_enum_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return *&a1 == *&a3;
}

void Lyrics.Word.Emphasis.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    sub_100574688(0);
  }

  else
  {
    sub_100574688(1uLL);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = 0;
    }

    sub_1005746B8(v4);
  }
}

Swift::Int Lyrics.Word.Emphasis.hashValue.getter(Swift::UInt64 a1, char a2)
{
  sub_100574678();
  if (a2)
  {
    sub_100574688(0);
  }

  else
  {
    sub_100574688(1uLL);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    sub_1005746B8(v4);
  }

  return sub_1005746C8();
}

void sub_1004E9FE0()
{
  if (*(v0 + 8))
  {
    sub_100574688(0);
  }

  else
  {
    v1 = *v0;
    sub_100574688(1uLL);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    sub_1005746B8(v2);
  }
}

Swift::Int sub_1004EA030(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_100574678();
  if (v3)
  {
    sub_100574688(0);
  }

  else
  {
    sub_100574688(1uLL);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    sub_1005746B8(v4);
  }

  return sub_1005746C8();
}

BOOL sub_1004EA09C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1004EA0DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = a2 + 40; *(v3 - 6) == *(i - 8) && *(v3 - 5) == *i; i += 56)
    {
      v7 = *(v3 - 2);
      v6 = *(v3 - 1);
      v8 = *v3;
      v10 = *(i + 24);
      v9 = *(i + 32);
      v11 = *(i + 40);
      if (*(v3 - 4) == *(i + 8) && *(v3 - 3) == *(i + 16))
      {
        result = 0;
      }

      else
      {
        v13 = sub_100574498();
        result = 0;
        if ((v13 & 1) == 0)
        {
          return result;
        }
      }

      if (v7 != v10 || v6 != v9 || *&v8 != v11)
      {
        return result;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void Lyrics.Word.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1005746B8(*&v4);
  v5 = *(v2 + 8);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1005746B8(*&v5);
  sub_1005729F8();
  sub_1004FCC84(a1, *(v2 + 32));
  if (*(v2 + 48))
  {
    sub_100574688(0);
  }

  else
  {
    v6 = *(v2 + 40);
    sub_100574688(1uLL);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    sub_1005746B8(v7);
  }
}

Swift::Int Lyrics.Word.hashValue.getter()
{
  sub_100574678();
  Lyrics.Word.hash(into:)(v1);
  return sub_1005746C8();
}

Swift::Int sub_1004EA2B0(uint64_t a1)
{
  sub_100574678();
  Lyrics.Word.hash(into:)(v2);
  return sub_1005746C8();
}

uint64_t sub_1004EA2EC(uint64_t a1, uint64_t a2)
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
  return _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void Lyrics.Syllable.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1005746B8(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1005746B8(*&v3);
  sub_1005729F8();
  v4 = *(v1 + 40);
  sub_100574688(*(v1 + 32));
  sub_100574688(v4);
  sub_100574688(*(v1 + 48));
}

Swift::Int Lyrics.Syllable.hashValue.getter()
{
  sub_100574678();
  Lyrics.Syllable.hash(into:)(v1);
  return sub_1005746C8();
}

Swift::Int sub_1004EA41C(uint64_t a1)
{
  sub_100574678();
  Lyrics.Syllable.hash(into:)(v2);
  return sub_1005746C8();
}

BOOL sub_1004EA458(uint64_t a1, uint64_t a2)
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
  return _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

double Lyrics.TextLine.backgroundVocals.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v3 + 72)))(v7);
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

uint64_t Lyrics.TextLine.backgroundText.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  (*(v0 + *(v1 + 72)))(v4);
  if (!v4[3])
  {
    return 0;
  }

  v2 = v4[2];

  sub_10001036C(v4, &qword_1006F9F60, &qword_1005A7B60);
  return v2;
}

double Lyrics.TextLine.capabilities.getter()
{
  type metadata accessor for Lyrics.TextLine(0);

  return result;
}

uint64_t Lyrics.TextLine.translationKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for Lyrics.TextLine(0) + 52));

  return v1;
}

uint64_t Lyrics.TextLine.debugDescription.getter()
{
  sub_100573ED8(54);
  v3._object = 0x80000001005BD630;
  v3._countAndFlagsBits = 0xD000000000000014;
  sub_100572A98(v3);
  v4._countAndFlagsBits = sub_100574408();
  sub_100572A98(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_100572A98(v5);
  sub_100573068();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_100572A98(v6);
  sub_100573068();
  v7._countAndFlagsBits = 0x3D7478657420;
  v7._object = 0xE600000000000000;
  sub_100572A98(v7);
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v8._countAndFlagsBits = (*(v0 + *(v1 + 64)))();
  sub_100572A98(v8);

  return 0;
}

uint64_t Lyrics.TextLine.textAlignment.getter()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  if ((*(v0 + *(v1 + 56)))())
  {
    if ((*(v0 + *(v1 + 32)) & 1) == 0)
    {
      return 2;
    }
  }

  else if (*(v0 + *(v1 + 32)))
  {
    return 2;
  }

  return 0;
}

uint64_t Lyrics.TextLine.init(lineIndex:startTime:endTime:primaryVocalsStartTime:primaryVocalsEndTime:isFirstLineOfParagraph:language:translationKey:agentAlignment:capabilities:localizedLyricsDirectionProvider:localizedDirectionProvider:localizedTextProvider:localizedWordsProvider:localizedBackgroundVocalsProvider:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31 = type metadata accessor for Lyrics.TextLine(0);
  v32 = v31[7];
  v33 = sub_10056CC18();
  (*(*(v33 - 8) + 56))(a9 + v32, 1, 1, v33);
  *(a9 + 16) = a1;
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + v31[10]) = a12;
  *(a9 + v31[11]) = a13;
  *(a9 + v31[12]) = a2;
  result = sub_10008B71C(a3, a9 + v32, &qword_1006F9F68, &qword_1005A7B68);
  v35 = (a9 + v31[13]);
  *v35 = a4;
  v35[1] = a5;
  *(a9 + v31[8]) = a6 & 1;
  *(a9 + v31[9]) = a7;
  v36 = (a9 + v31[14]);
  *v36 = a8;
  v36[1] = a14;
  v37 = (a9 + v31[15]);
  *v37 = a15;
  v37[1] = a16;
  v38 = (a9 + v31[16]);
  *v38 = a17;
  v38[1] = a18;
  v39 = (a9 + v31[17]);
  *v39 = a19;
  v39[1] = a20;
  v40 = (a9 + v31[18]);
  *v40 = a21;
  v40[1] = a22;
  return result;
}

double Lyrics.TextLine.hash(into:)(uint64_t a1)
{
  sub_100574688(*(v1 + 16));
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1005746B8(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1005746B8(*&v3);
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(v1 + *(v4 + 64)))();
  sub_1005729F8();

  return result;
}

Swift::Int Lyrics.TextLine.hashValue.getter()
{
  sub_100574678();
  Lyrics.TextLine.hash(into:)(v1);
  return sub_1005746C8();
}

uint64_t sub_1004EACF4(uint64_t a1)
{
  if ((*(v1 + *(a1 + 56)))())
  {
    if (*(v1 + *(a1 + 32)))
    {
      return 0;
    }
  }

  else if ((*(v1 + *(a1 + 32)) & 1) == 0)
  {
    return 0;
  }

  return 2;
}

Swift::Int sub_1004EAD88(uint64_t a1)
{
  sub_100574678();
  Lyrics.TextLine.hash(into:)(v2);
  return sub_1005746C8();
}

uint64_t Lyrics.InstrumentalLine.textAlignment.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.InstrumentalLine.debugDescription.getter(double a1, double a2)
{
  sub_100573ED8(54);
  v3._object = 0x80000001005BD650;
  v3._countAndFlagsBits = 0xD00000000000001CLL;
  sub_100572A98(v3);
  v4._countAndFlagsBits = sub_100574408();
  sub_100572A98(v4);

  v5._countAndFlagsBits = 0x6954747261747320;
  v5._object = 0xEB000000003D656DLL;
  sub_100572A98(v5);
  sub_100573068();
  v6._countAndFlagsBits = 0x656D6954646E6520;
  v6._object = 0xE90000000000003DLL;
  sub_100572A98(v6);
  sub_100573068();
  return 0;
}

uint64_t Lyrics.SongwritersLine.textAlignment.getter()
{
  if (*(v0 + 24))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t Lyrics.SongwritersLine.debugDescription.getter()
{
  sub_100573ED8(68);
  v1._object = 0x80000001005BD670;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100572A98(v1);
  v2._countAndFlagsBits = sub_100574408();
  sub_100572A98(v2);

  v3._countAndFlagsBits = 0x6954747261747320;
  v3._object = 0xEB000000003D656DLL;
  sub_100572A98(v3);
  sub_100573068();
  v4._countAndFlagsBits = 0x656D6954646E6520;
  v4._object = 0xE90000000000003DLL;
  sub_100572A98(v4);
  sub_100573068();
  v5._countAndFlagsBits = 0x697277676E6F7320;
  v5._object = 0xED00003D73726574;
  sub_100572A98(v5);
  v6._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v6);

  return 0;
}

double sub_1004EB0F8@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v5 = (a1 + *(type metadata accessor for Lyrics.TextLine(0) + 52));
  v6 = v5[1];
  if (v6 && (v7 = *v5, v8 = *(v2 + *(type metadata accessor for Lyrics.Translation(0) + 32)), *(v8 + 16)) && (v9 = sub_100429D94(v7, v6), (v10 & 1) != 0))
  {
    v11 = (*(v8 + 56) + 88 * v9);
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[6];
    if (v14)
    {
      v15 = v11[5];
    }

    else
    {
      v15 = 0;
    }

    v19 = type metadata accessor for Lyrics.Translation.Line(0);
    v20 = *(v19 + 24);
    v21 = sub_10056CC18();
    (*(*(v21 - 8) + 16))(&a2[v20], v3, v21);
    *a2 = v13;
    *(a2 + 1) = v12;
    *(a2 + 2) = v15;
    *(a2 + 3) = v14;
    (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  }

  else
  {
    v16 = type metadata accessor for Lyrics.Translation.Line(0);
    v17 = *(*(v16 - 8) + 56);

    v17(a2, 1, 1, v16);
  }

  return result;
}

uint64_t _s7LyricsX0A0C11TranslationV8language10Foundation6LocaleV8LanguageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056CC18();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1004EB32C(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 20));

  return v2;
}

uint64_t sub_1004EB398@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Lyrics.Transliteration(0);
  v93 = *(v6 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin();
  v94 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9F68, &qword_1005A7B68);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin();
  v13 = __chkstk_darwin();
  v15 = &v80 - v14;
  v17 = (a1 + *(v16 + 52));
  v18 = v17[1];
  if (v18)
  {
    v19 = *(v3 + *(v6 + 28));
    if (*(v19 + 16))
    {
      v90 = *v17;
      v92 = v12;
      v89 = v18;
      v20 = sub_100429D94(v90, v18);
      v12 = v92;
      if (v21)
      {
        v80 = v3;
        v91 = v9;
        v22 = *(v19 + 56) + 88 * v20;
        v24 = *(v22 + 32);
        v23 = *(v22 + 48);
        v25 = *(v22 + 64);
        v101 = *(v22 + 80);
        v100 = v25;
        v26 = *(v22 + 16);
        v96 = *v22;
        v97 = v26;
        v98 = v24;
        v99 = v23;
        v27 = *(a1 + v10[17]);
        v28 = sub_100503CEC(&v96, v95);
        v29 = v27(v28);
        v30 = *(v29 + 16);
        v83 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        if (v30)
        {
          v31 = *(v29 + 32);

          v32 = v91;
          if (!*(v97 + 16) || v31 != *(v97 + 32))
          {
            goto LABEL_12;
          }
        }

        else
        {

          v32 = v91;
          if (*(v97 + 16))
          {
LABEL_12:
            if (qword_1006F9DA0 != -1)
            {
              swift_once();
            }

            v35 = sub_10056DF88();
            sub_10000C49C(v35, static Logger.lyrics);
            sub_1005020B4(a1, v15, type metadata accessor for Lyrics.TextLine);
            v36 = sub_10056DF68();
            v37 = sub_100573428();
            if (os_log_type_enabled(v36, v37))
            {
              LODWORD(v88) = v37;
              v38 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v95[0] = v87;
              v39 = v38;
              *v38 = 136446210;
              v40 = &v15[v10[13]];
              v41 = v40[1];
              if (v41)
              {
                v86 = *v40;
                v42 = v41;
              }

              else
              {
                v42 = 0xE300000000000000;
                v86 = 7104878;
              }

              sub_10050211C(v15, type metadata accessor for Lyrics.TextLine);
              v43 = sub_1004F7708(v86, v42, v95);

              *(v39 + 1) = v43;
              _os_log_impl(&_mh_execute_header, v36, v88, "DEGENERATE TRANSLITERATION DATA start time of original line %{public}s and transliterated line do not match.", v39, 0xCu);
              sub_100010474(v87);
            }

            else
            {

              sub_10050211C(v15, type metadata accessor for Lyrics.TextLine);
            }
          }
        }

        v88 = a1[2];
        v44 = *(a1 + v10[10]);
        v45 = *a1;
        v46 = a1[1];
        v47 = *(a1 + v10[11]);
        LODWORD(v86) = *(a1 + v10[12]);
        v48 = sub_10056CC18();
        v49 = *(v48 - 8);
        v50 = *(v49 + 16);
        v51 = v80;
        v81 = v48;
        v50(v32, v80, v48);
        v82 = *(v49 + 56);
        v82(v32, 0, 1, v48);
        v52 = v10[9];
        LODWORD(v87) = *(a1 + v10[8]);
        v85 = *(a1 + v52);
        v53 = v83;
        sub_1005020B4(a1, v83, type metadata accessor for Lyrics.TextLine);
        v54 = (*(v92 + 80) + 16) & ~*(v92 + 80);
        v84 = swift_allocObject();
        sub_100502568(v53, v84 + v54, type metadata accessor for Lyrics.TextLine);
        v55 = v94;
        sub_1005020B4(v51, v94, type metadata accessor for Lyrics.Transliteration);
        v56 = (*(v93 + 80) + 16) & ~*(v93 + 80);
        v57 = swift_allocObject();
        sub_100502568(v55, v57 + v56, type metadata accessor for Lyrics.Transliteration);
        v58 = swift_allocObject();
        v59 = v99;
        v60 = v100;
        *(v58 + 48) = v98;
        *(v58 + 64) = v59;
        *(v58 + 80) = v60;
        *(v58 + 96) = v101;
        v61 = v97;
        *(v58 + 16) = v96;
        *(v58 + 32) = v61;
        v62 = swift_allocObject();
        v63 = v99;
        v64 = v100;
        *(v62 + 48) = v98;
        *(v62 + 64) = v63;
        *(v62 + 80) = v64;
        *(v62 + 96) = v101;
        v65 = v97;
        *(v62 + 16) = v96;
        *(v62 + 32) = v65;
        v66 = swift_allocObject();
        v67 = v99;
        v68 = v100;
        *(v66 + 48) = v98;
        *(v66 + 64) = v67;
        *(v66 + 80) = v68;
        *(v66 + 96) = v101;
        v69 = v97;
        *(v66 + 16) = v96;
        *(v66 + 32) = v69;
        v70 = v10[7];
        v82(a2 + v70, 1, 1, v81);
        a2[2] = v88;
        *a2 = v45;
        a2[1] = v46;
        *(a2 + v10[10]) = v44;
        *(a2 + v10[11]) = v47;
        *(a2 + v10[12]) = v86;
        sub_100503CEC(&v96, v95);
        sub_100503CEC(&v96, v95);
        v71 = v89;

        v72 = v85;

        sub_10008B71C(v91, a2 + v70, &qword_1006F9F68, &qword_1005A7B68);
        v73 = (a2 + v10[13]);
        *v73 = v90;
        v73[1] = v71;
        *(a2 + v10[8]) = v87;
        *(a2 + v10[9]) = v72;
        v74 = (a2 + v10[14]);
        v75 = v84;
        *v74 = sub_100503EBC;
        v74[1] = v75;
        v76 = (a2 + v10[15]);
        *v76 = sub_100504024;
        v76[1] = v57;
        v77 = (a2 + v10[16]);
        *v77 = Alert.message.getter;
        v77[1] = v58;
        v78 = (a2 + v10[17]);
        *v78 = Library.Menu.Request.excludedIdentifiers.getter;
        v78[1] = v62;
        v79 = (a2 + v10[18]);
        *v79 = sub_1005040E0;
        v79[1] = v66;
        return (*(v92 + 56))(a2, 0, 1, v10);
      }
    }
  }

  v33 = *(v12 + 56);

  return v33(a2, 1, 1, v10, v13);
}

uint64_t Logger.lyrics.unsafeMutableAddressor()
{
  if (qword_1006F9DA0 != -1)
  {
    swift_once();
  }

  v0 = sub_10056DF88();

  return sub_10000C49C(v0, static Logger.lyrics);
}

uint64_t static Lyrics.useSpacesAsWordDelimiter(for:)(uint64_t a1)
{
  v2 = sub_10056CC18();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9F68, &qword_1005A7B68);
  __chkstk_darwin();
  v7 = &v28 - v6;
  sub_100009DCC(&qword_1006F9F70, &unk_1005A7B70);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v28 - v10;
  sub_10000CC8C(a1, v7, &qword_1006F9F68, &qword_1005A7B68);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v12 = &qword_1006F9F68;
    v13 = &qword_1005A7B68;
    v14 = v7;
LABEL_7:
    sub_10001036C(v14, v12, v13);
    v22 = 1;
    return v22 & 1;
  }

  sub_10056CBE8();
  v15 = *(v3 + 8);
  v15(v7, v2);
  v16 = sub_10056CB38();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v11, 1, v16) == 1)
  {
    v12 = &qword_1006F9F70;
    v13 = &unk_1005A7B70;
    v14 = v11;
    goto LABEL_7;
  }

  v29 = v15;
  sub_10056CB18();
  v28 = v19;
  v20 = v11;
  v21 = *(v17 + 8);
  v21(v20, v16);
  sub_10056CBD8();
  sub_10056CBE8();
  v29(v5, v2);
  if (v18(v9, 1, v16) == 1)
  {
    v12 = &qword_1006F9F70;
    v13 = &unk_1005A7B70;
    v14 = v9;
    goto LABEL_7;
  }

  v24 = sub_10056CB18();
  v26 = v25;
  v21(v9, v16);
  if (qword_1006F9D88 != -1)
  {
    swift_once();
  }

  v27 = sub_1001B50F0(v24, v26, qword_1006FECB8);

  v22 = v27 ^ 1;
  return v22 & 1;
}

uint64_t Lyrics.currentLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  v15 = a1;
  v2 = type metadata accessor for Lyrics.Translation(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006FBA10, &qword_1005A9A10);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_10056CC18();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_10000CC8C(v1 + v12, v7, &qword_1006FBA10, &qword_1005A9A10);
  if ((*(v3 + 48))(v7, 1, v2))
  {
    sub_10001036C(v7, &qword_1006FBA10, &qword_1005A9A10);
    return sub_10000CC8C(v1 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, v15, &qword_1006F9F68, &qword_1005A7B68);
  }

  else
  {
    sub_1005020B4(v7, v5, type metadata accessor for Lyrics.Translation);
    sub_10001036C(v7, &qword_1006FBA10, &qword_1005A9A10);
    (*(v9 + 16))(v11, v5, v8);
    sub_10050211C(v5, type metadata accessor for Lyrics.Translation);
    v14 = v15;
    (*(v9 + 32))(v15, v11, v8);
    return (*(v9 + 56))(v14, 0, 1, v8);
  }
}

uint64_t sub_1004EC470@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_10000CC8C(v4 + v8, a4, a2, a3);
}

uint64_t sub_1004EC4F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_10008B71C(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t Lyrics.staticText.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  if (*(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1004EC778(v0);
    v2 = v3;
    *v1 = v3;
    v1[1] = v4;
  }

  return v2;
}

void sub_1004EC778(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 32);
  v35 = 0;
  v36 = 0xE000000000000000;
  v28 = *(v5 + 16);
  if (v28)
  {
    v6 = 0;
    v27 = v5 + 32;
    v24 = v5;
    while (v6 < *(v5 + 16))
    {
      v9 = *(v27 + 8 * v6);
      v7 = v35;
      v8 = v36;
      v33 = v35;
      v34 = v36;
      v10 = *(v9 + 16);
      if (v10)
      {
        v29 = v9;
        v30 = v6;
        v11 = &v4[*(v26 + 64)];
        v12 = &v4[*(v26 + 72)];
        v13 = v9 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
        v31 = *(v25 + 72);

        do
        {
          v17 = sub_1005020B4(v13, v4, type metadata accessor for Lyrics.TextLine);
          v18 = v33 & 0xFFFFFFFFFFFFLL;
          if ((v34 & 0x2000000000000000) != 0)
          {
            v18 = HIBYTE(v34) & 0xF;
          }

          if (v18)
          {
            v43._countAndFlagsBits = 10;
            v43._object = 0xE100000000000000;
            sub_100572A98(v43);
          }

          v19 = (*v11)(v17);
          v21 = v20;
          (*v12)(v37);
          v22 = v38;
          if (v38)
          {
            v14 = v37[2];

            sub_10001036C(v37, &qword_1006F9F60, &qword_1005A7B60);
            v32._countAndFlagsBits = 40;
            v32._object = 0xE100000000000000;

            v40._countAndFlagsBits = v14;
            v40._object = v22;
            sub_100572A98(v40);
            v41._countAndFlagsBits = 41;
            v41._object = 0xE100000000000000;
            sub_100572A98(v41);
            swift_bridgeObjectRelease_n();
            countAndFlagsBits = v32._countAndFlagsBits;
            object = v32._object;
          }

          else
          {
            countAndFlagsBits = 0;
            object = 0xE000000000000000;
          }

          v32._countAndFlagsBits = v19;
          v32._object = v21;

          v42._countAndFlagsBits = countAndFlagsBits;
          v42._object = object;
          sub_100572A98(v42);

          sub_100572A98(v32);

          sub_10050211C(v4, type metadata accessor for Lyrics.TextLine);
          v13 += v31;
          --v10;
        }

        while (v10);
        v7 = v33;
        v8 = v34;
        v5 = v24;
        v6 = v30;
      }

      else
      {
      }

      ++v6;
      v35 = v7;
      v36 = v8;
      v39._countAndFlagsBits = 10;
      v39._object = 0xE100000000000000;
      sub_100572A98(v39);

      if (v6 == v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    String.trim()();
  }
}

double Lyrics.staticText.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v3 = a1;
  v3[1] = a2;

  return result;
}

uint64_t (*Lyrics.staticText.modify(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = Lyrics.staticText.getter();
  a1[1] = v3;
  return sub_1004ECAF8;
}

double sub_1004ECAF8(void *a1)
{
  v1 = a1[1];
  v2 = (a1[2] + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v2 = *a1;
  v2[1] = v1;

  return result;
}

uint64_t Lyrics.alignment(for:default:)(void *a1, uint64_t a2, char a3)
{
  if (!*(v3 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) && (a3 & 1) == 0)
  {
    return a2;
  }

  v4 = a1[3];
  v5 = a1[4];
  sub_10000C8CC(a1, v4);
  return (*(v5 + 24))(v4, v5);
}

uint64_t sub_1004ECBD0(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v4 = type metadata accessor for Lyrics.TextLine(0);
    v5 = (*(a1 + *(v4 + 64)))();
    v7 = v6;
    if (v5 == (*(a2 + *(v4 + 64)))() && v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_100574498();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1004ECCB8@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Lyrics.TextLine(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v18 = a3;
    v12 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v13 = *(v8 + 72);
    while (1)
    {
      sub_1005020B4(v12, v10, type metadata accessor for Lyrics.TextLine);
      v14 = a1(v10);
      if (v3)
      {
        return sub_10050211C(v10, type metadata accessor for Lyrics.TextLine);
      }

      if (v14)
      {
        break;
      }

      sub_10050211C(v10, type metadata accessor for Lyrics.TextLine);
      v12 += v13;
      if (!--v11)
      {
        v15 = 1;
        a3 = v18;
        return (*(v8 + 56))(a3, v15, 1, v7);
      }
    }

    a3 = v18;
    sub_100502568(v10, v18, type metadata accessor for Lyrics.TextLine);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  return (*(v8 + 56))(a3, v15, 1, v7);
}

uint64_t sub_1004ECE94()
{
  v0 = sub_100523E1C(&off_1006AFC58);
  result = swift_arrayDestroy();
  qword_1006FECB8 = v0;
  return result;
}

void Lyrics.AudioAttribute.hash(into:)(double a1)
{
  sub_100574688(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_1005746B8(*&v2);
}

Swift::Int Lyrics.AudioAttribute.hashValue.getter(double a1)
{
  sub_100574678();
  sub_100574688(0);
  v2 = 0.0;
  if (a1 != 0.0)
  {
    v2 = a1;
  }

  sub_1005746B8(*&v2);
  return sub_1005746C8();
}

Swift::Int sub_1004ECFAC()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1005746B8(*&v2);
  return sub_1005746C8();
}

void sub_1004ED014()
{
  v1 = *v0;
  sub_100574688(0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  sub_1005746B8(*&v2);
}

Swift::Int sub_1004ED060(uint64_t a1)
{
  v2 = *v1;
  sub_100574678();
  sub_100574688(0);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  sub_1005746B8(*&v3);
  return sub_1005746C8();
}

double Lyrics.spatialOffset.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  if (v4)
  {
    v5 = __clz(__rbit64(v4));
    return *(*(v1 + 48) + 8 * v5);
  }

  else
  {
    v6 = ((v2 + 63) >> 6) - 1;
    v7 = (v1 + 64);
    while (v6)
    {
      v9 = *v7++;
      v8 = v9;
      --v6;
      v4 -= 64;
      if (v9)
      {
        v5 = __clz(__rbit64(v8)) - v4;
        return *(*(v1 + 48) + 8 * v5);
      }
    }

    return 0.0;
  }
}

uint64_t Lyrics.__allocating_init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Lyrics.init(identifier:songInfo:)(a1, a2, a3);
  return v6;
}

void *Lyrics.init(identifier:songInfo:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v686 = a3;
  v636 = a2;
  v633 = a1;
  v680 = *v3;
  sub_100009DCC(&qword_1006F9F88, &qword_1005A7B88);
  __chkstk_darwin();
  v611 = v605 - v5;
  sub_100009DCC(&qword_1006F9F70, &unk_1005A7B70);
  __chkstk_darwin();
  v628 = v605 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v613 = v605 - v7;
  __chkstk_darwin();
  v615 = v605 - v8;
  v632 = sub_100009DCC(&qword_1006F9F90, &qword_1005A7B90);
  __chkstk_darwin();
  v631 = v605 - v9;
  sub_100009DCC(&qword_1006F9F98, &qword_1005A7B98);
  __chkstk_darwin();
  v618 = v605 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v637 = v605 - v11;
  __chkstk_darwin();
  v644 = v605 - v12;
  sub_100009DCC(&qword_1006F9F78, &qword_1005A7B80);
  __chkstk_darwin();
  v627 = v605 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v626 = v605 - v14;
  __chkstk_darwin();
  v642 = v605 - v15;
  __chkstk_darwin();
  v661 = v605 - v16;
  __chkstk_darwin();
  v670 = v605 - v17;
  sub_100009DCC(&qword_1006FBA10, &qword_1005A9A10);
  __chkstk_darwin();
  v623 = v605 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v622 = v605 - v19;
  __chkstk_darwin();
  v621 = v605 - v20;
  v700 = type metadata accessor for Lyrics.TextLine(0);
  v689 = *(v700 - 8);
  __chkstk_darwin();
  v692 = v605 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v691 = v605 - v22;
  __chkstk_darwin();
  v704 = (v605 - v23);
  __chkstk_darwin();
  v679 = v605 - v24;
  __chkstk_darwin();
  v672 = v605 - v25;
  v26 = type metadata accessor for Lyrics.Transliteration(0);
  v27 = *(v26 - 8);
  __chkstk_darwin();
  v662 = v605 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v635 = (v605 - v29);
  __chkstk_darwin();
  v688 = v605 - v30;
  __chkstk_darwin();
  v687 = v605 - v31;
  v32 = type metadata accessor for Lyrics.Translation(0);
  v33 = *(v32 - 8);
  __chkstk_darwin();
  v638 = v605 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v652 = v605 - v35;
  __chkstk_darwin();
  v639 = (v605 - v36);
  __chkstk_darwin();
  v690 = v605 - v37;
  __chkstk_darwin();
  v694 = v605 - v38;
  sub_100009DCC(&qword_1006F9FA0, &qword_1005A7BA0);
  __chkstk_darwin();
  v630 = v605 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v609 = v605 - v40;
  __chkstk_darwin();
  v651 = v605 - v41;
  __chkstk_darwin();
  v663 = v605 - v42;
  __chkstk_darwin();
  v685 = v605 - v43;
  v701 = sub_10056CC38();
  v697 = *(v701 - 8);
  __chkstk_darwin();
  v614 = v605 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v654 = v605 - v45;
  __chkstk_darwin();
  v703 = v605 - v46;
  __chkstk_darwin();
  v693 = (v605 - v47);
  v705 = sub_10056CC18();
  v640 = *(v705 - 8);
  __chkstk_darwin();
  v625 = v605 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v608 = v605 - v49;
  __chkstk_darwin();
  v612 = v605 - v50;
  __chkstk_darwin();
  v669 = v605 - v51;
  __chkstk_darwin();
  v668 = v605 - v52;
  __chkstk_darwin();
  v698 = v605 - v53;
  __chkstk_darwin();
  v653 = v605 - v54;
  __chkstk_darwin();
  v699 = v605 - v55;
  __chkstk_darwin();
  v682 = v605 - v56;
  __chkstk_darwin();
  v643 = v605 - v57;
  __chkstk_darwin();
  v681 = v605 - v58;
  __chkstk_darwin();
  v684 = v605 - v59;
  sub_100009DCC(&qword_1006F9F68, &qword_1005A7B68);
  __chkstk_darwin();
  v61 = v605 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __chkstk_darwin();
  v64 = v605 - v63;
  v666 = v33;
  v65 = *(v33 + 56);
  v634 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  v65(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, 1, 1, v32, v62);
  v667 = v27;
  v66 = *(v27 + 56);
  v607 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, 1, 1, v26);
  v659 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
  v67 = v32;
  v68 = v705;
  v664 = v67;
  v619 = v65;
  v620 = v33 + 56;
  (v65)(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, 1, 1);
  v610 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, 1, 1, v26);
  v624 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, 1, 1, v26);
  v647 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
  v695 = v26;
  v671 = v27 + 56;
  v665 = v66;
  v66(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, 1, 1, v26);
  v69 = (v4 + OBJC_IVAR____TtC7LyricsX6Lyrics____lazy_storage___staticText);
  *v69 = 0;
  v69[1] = 0;
  v629 = v69;
  v70 = v636;
  *(v4 + 16) = v633;
  *(v4 + 24) = v70;
  v71 = *(v640 + 7);
  v71(v64, 1, 1, v68);

  v72 = [v686 language];
  if (v72)
  {
    v73 = v72;
    sub_1005728D8();

    sub_10056CBD8();
    v71(v61, 0, 1, v68);
    sub_10008B71C(v61, v64, &qword_1006F9F68, &qword_1005A7B68);
  }

  else
  {
    sub_10001036C(v64, &qword_1006F9F68, &qword_1005A7B68);
    v71(v64, 1, 1, v68);
  }

  v74 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage;
  v646 = v64;
  sub_10000CC8C(v64, v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_1006F9F68, &qword_1005A7B68);
  v75 = v686;
  [v686 leadingSilence];
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_leadingSilence) = v76;
  v77 = [v75 songwriters];
  v78 = sub_1000D3B98(0, &qword_1006F9FB8, MSVLyricsSongWriter_ptr);
  v79 = sub_100572D28();

  if (v79 >> 62)
  {
    v80 = sub_100574178();
  }

  else
  {
    v80 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = _swiftEmptyArrayStorage;
  v702 = v4;
  v616 = v78;
  v606 = v74;
  if (v80)
  {
    v82 = v79;
    *&v706 = _swiftEmptyArrayStorage;
    sub_1004F7CA0(0, v80 & ~(v80 >> 63), 0);
    if (v80 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v83 = 0;
    v84 = v706;
    v85 = v82;
    v696 = (v82 & 0xC000000000000001);
    v86 = v80;
    do
    {
      if (v696)
      {
        v87 = sub_100573F58();
      }

      else
      {
        v87 = *(v85 + 8 * v83 + 32);
      }

      v88 = v87;
      v89 = [v87 name];
      v90 = sub_1005728D8();
      v92 = v91;

      *&v706 = v84;
      v94 = v84[2];
      v93 = v84[3];
      if (v94 >= v93 >> 1)
      {
        sub_1004F7CA0((v93 > 1), v94 + 1, 1);
        v84 = v706;
      }

      ++v83;
      v84[2] = v94 + 1;
      v95 = &v84[2 * v94];
      v95[4] = v90;
      v95[5] = v92;
      v4 = v702;
      v85 = v82;
    }

    while (v86 != v83);

    v81 = _swiftEmptyArrayStorage;
  }

  else
  {

    v84 = _swiftEmptyArrayStorage;
  }

  v96 = OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_songwriters) = v84;
  v80 = v686;
  v97 = [v686 audioAttributes];
  v82 = v693;
  v605[2] = v96;
  if (v97)
  {
    v98 = v97;
    if ([v97 isSpatialRole])
    {
      [v98 lyricsOffset];
      v100 = v99;

      sub_100009DCC(&qword_1006FA020, &unk_1005A7BC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057B510;
      *(inited + 32) = v100;
      v102 = sub_1004FE1C8(inited);
      swift_setDeallocating();
      goto LABEL_22;
    }
  }

  v102 = &_swiftEmptySetSingleton;
LABEL_22:
  v103 = OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes;
  *(v4 + OBJC_IVAR____TtC7LyricsX6Lyrics_audioAttributes) = v102;
  v104 = [v80 type];
  v105 = v104 == 1;
  if (v104 == 2)
  {
    v105 = 2;
  }

  *(v4 + 56) = v105;
  v729 = _swiftEmptyArrayStorage;
  v660 = swift_allocObject();
  swift_weakInit();
  v656 = swift_allocObject();
  *(v656 + 16) = 0;
  v655 = swift_allocObject();
  *(v655 + 16) = 0;
  v106 = [v80 language];
  if (v106)
  {
    v107 = v106;
    sub_1005728D8();

    v108 = v684;
    sub_10056CBD8();
    v109 = sub_10056CBF8();
    (*(v640 + 1))(v108, v705);
    v683 = v109 == 2;
  }

  else
  {
    v683 = 0;
  }

  v110 = [v80 language];
  if (v110)
  {
    v111 = v110;
    v112 = sub_1005728D8();
    v114 = v113;
  }

  else
  {
    v112 = 0;
    v114 = 0;
  }

  v658 = sub_1004FE31C(v112, v114);

  v605[3] = v103;
  if (_swiftEmptyArrayStorage >> 62 && sub_100574178())
  {
    sub_1004FE7A0(_swiftEmptyArrayStorage);
    v115 = v134;
  }

  else
  {
    v115 = &_swiftEmptySetSingleton;
  }

  v116 = swift_allocObject();
  v657 = v116;
  *(v116 + 16) = v115;
  v617 = v116 + 16;
  v117 = [v80 lyricsSections];
  sub_1000D3B98(0, &qword_1006F9FC0, MSVLyricsSection_ptr);
  v118 = sub_100572D28();

  if (v118 >> 62)
  {
    v119 = sub_100574178();
  }

  else
  {
    v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v120 = v685;
  if (v119 >= 1)
  {
    v78 = [v80 lyricsSections];
    v4 = sub_100572D28();

    if (!(v4 >> 62))
    {
      v121 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v121)
      {
LABEL_37:
        if (v121 < 1)
        {
          __break(1u);
          goto LABEL_429;
        }

        v122 = 0;
        v696 = _swiftEmptyArrayStorage;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v123 = sub_100573F58();
          }

          else
          {
            v123 = *(v4 + 8 * v122 + 32);
          }

          v124 = v123;
          v125 = [v123 lines];
          sub_1000D3B98(0, &qword_1006F9FC8, MSVLyricsLine_ptr);
          v126 = sub_100572D28();

          v78 = sub_1004FFFD0(v126, v657, v655, v656, v686, v683, v658, v660);

          sub_1004F3E88(v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v696 = sub_1004F7234(0, v696[2] + 1, 1, v696);
          }

          v129 = v696[2];
          v128 = v696[3];
          if (v129 >= v128 >> 1)
          {
            v696 = sub_1004F7234((v128 > 1), v129 + 1, 1, v696);
          }

          ++v122;

          v130 = v696;
          v696[2] = v129 + 1;
          v130[v129 + 4] = v78;
        }

        while (v121 != v122);

        v120 = v685;
        v82 = v693;
        v80 = v686;
        v81 = _swiftEmptyArrayStorage;
        goto LABEL_56;
      }

      goto LABEL_55;
    }

LABEL_54:
    v121 = sub_100574178();
    if (v121)
    {
      goto LABEL_37;
    }

LABEL_55:

    v696 = _swiftEmptyArrayStorage;
    v120 = v685;
    goto LABEL_56;
  }

  v131 = [v80 lyricsLines];
  sub_1000D3B98(0, &qword_1006F9FC8, MSVLyricsLine_ptr);
  v78 = sub_100572D28();

  v132 = sub_1004FFFD0(v78, v657, v655, v656, v80, v683, v658, v660);

  v729 = v132;
  sub_100009DCC(&qword_1006F9FD0, &qword_1005A7BA8);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_10057B510;
  v696 = v133;
  *(v133 + 32) = v132;

LABEL_56:
  v135 = swift_allocObject();
  v684 = v135;
  v136 = v680;
  *(v135 + 16) = v80;
  *(v135 + 24) = v136;
  v137 = swift_allocObject();
  v137[2] = 0;
  v650 = v137 + 2;
  v686 = v137;
  v137[3] = _swiftEmptyArrayStorage;
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v645 = v138 + 16;
  v680 = v138;
  *(v138 + 24) = _swiftEmptyArrayStorage;
  v641 = v80;
  v139 = sub_10056CB48();
  v140 = v139;
  v678 = *(v139 + 16);
  if (!v678)
  {

    v142 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v141 = 0;
  v676 = v139 + 32;
  v81 = (v640 + 8);
  v675 = (v697 + 16);
  v674 = (v697 + 8);
  v673 = (v697 + 32);
  v142 = _swiftEmptyArrayStorage;
  v677 = v139;
  do
  {
    if (v141 >= v140[2])
    {
      goto LABEL_395;
    }

    v143 = v142;

    sub_10056CAF8();
    v144 = v681;
    sub_10056CC28();
    sub_10056CC08();
    v145 = *v81;
    (*v81)(v144, v705);
    v146 = sub_10056CBA8();
    v147 = *(v146 - 8);
    if ((*(v147 + 48))(v120, 1, v146) == 1)
    {
      sub_10001036C(v120, &qword_1006F9FA0, &qword_1005A7BA0);
      v142 = v143;
      goto LABEL_97;
    }

    v148 = sub_10056CB98();
    v149 = v120;
    v151 = v150;
    (*(v147 + 8))(v149, v146);
    if (qword_1006F9D80 != -1)
    {
      swift_once();
    }

    v152 = static Lyrics.scriptMap;
    if (*(static Lyrics.scriptMap + 16))
    {
      v153 = sub_100429D94(v148, v151);
      if (v154)
      {
        v155 = (*(v152 + 56) + 16 * v153);
        v148 = *v155;
        v156 = v155[1];

        v151 = v156;
      }
    }

    v157 = *(v680 + 16);
    v158 = *(v680 + 24);
    v159 = *(v158 + 16);
    if (v157)
    {

      sub_1004FC0F4(v148, v151, v158 + 32, v159, (v157 + 16), v157 + 32);
      v161 = v160;
      v159 = v162;

      if ((v161 & 1) == 0)
      {
        goto LABEL_78;
      }

LABEL_77:
      sub_1004FC5B4(v148, v151, v159);
      goto LABEL_78;
    }

    if (!v159)
    {
      goto LABEL_77;
    }

    v163 = (v158 + 40);
    while (1)
    {
      v164 = *(v163 - 1) == v148 && *v163 == v151;
      if (v164 || (sub_100574498() & 1) != 0)
      {
        break;
      }

      v163 += 2;
      if (!--v159)
      {
        goto LABEL_77;
      }
    }

LABEL_78:
    if (v148 == 1853120844 && v151 == 0xE400000000000000)
    {

      v142 = v143;
      v82 = v693;
      goto LABEL_97;
    }

    v165 = sub_100574498();

    v142 = v143;
    v82 = v693;
    if ((v165 & 1) == 0)
    {
      if (qword_1006F9DA8 != -1)
      {
        swift_once();
      }

      v166 = v643;
      sub_10056CC28();
      v167 = LyricsOptionsManager.isDefaultScriptSupported(for:)(v166);
      v145(v166, v705);
      if (v167)
      {
        v168 = *(v680 + 16);
        v169 = *(v680 + 24);
        v170 = *(v169 + 16);
        if (v168)
        {

          sub_1004FC0F4(1853120844, 0xE400000000000000, v169 + 32, v170, (v168 + 16), v168 + 32);
          v172 = v171;
          v170 = v173;

          if (v172)
          {
            goto LABEL_96;
          }
        }

        else
        {
          if (!v170)
          {
LABEL_96:
            sub_1004FC5B4(1853120844, 0xE400000000000000, v170);
            goto LABEL_97;
          }

          v174 = (v169 + 40);
          while (1)
          {
            v175 = *(v174 - 1) == 1853120844 && *v174 == 0xE400000000000000;
            if (v175 || (sub_100574498() & 1) != 0)
            {
              break;
            }

            v174 += 2;
            if (!--v170)
            {
              goto LABEL_96;
            }
          }
        }
      }
    }

LABEL_97:
    v176 = v682;
    sub_10056CC28();
    v177 = sub_1004F42AC();
    v179 = v178;
    v145(v176, v705);
    v180 = v701;
    if (!v179)
    {
      goto LABEL_111;
    }

    v181 = *(v686 + 2);
    v182 = *(v686 + 3);
    v183 = *(v182 + 16);
    if (v181)
    {

      sub_1004FC0F4(v177, v179, v182 + 32, v183, (v181 + 16), v181 + 32);
      v185 = v184;
      v183 = v186;

      if ((v185 & 1) == 0)
      {
        goto LABEL_110;
      }
    }

    else if (v183)
    {
      v187 = (v182 + 40);
      do
      {
        v188 = *(v187 - 1) == v177 && v179 == *v187;
        if (v188 || (sub_100574498() & 1) != 0)
        {
          goto LABEL_110;
        }

        v187 += 2;
      }

      while (--v183);
    }

    sub_1004FC5B4(v177, v179, v183);
LABEL_110:

    v142 = v143;
    v82 = v693;
LABEL_111:
    (*v675)(v703, v82, v180);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_1004F7058(0, *(v142 + 16) + 1, 1, v142, &qword_1006FA6B0, &qword_1005A8678, &type metadata accessor for Locale);
    }

    v140 = v677;
    v78 = *(v142 + 16);
    v189 = *(v142 + 24);
    if (v78 >= v189 >> 1)
    {
      v142 = sub_1004F7058((v189 > 1), v78 + 1, 1, v142, &qword_1006FA6B0, &qword_1005A8678, &type metadata accessor for Locale);
    }

    ++v141;
    v190 = v697;
    (*(v697 + 8))(v82, v180);
    *(v142 + 16) = v78 + 1;
    (*(v190 + 32))(v142 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v78, v703, v180);
    v120 = v685;
  }

  while (v141 != v678);

LABEL_118:
  v78 = sub_1004FCF24(_swiftEmptyArrayStorage);
  v191 = [v641 translations];
  sub_1000D3B98(0, &qword_1006F9FD8, MSVLyricsTranslation_ptr);
  v141 = sub_100572D28();

  if (v141 >> 62)
  {
    goto LABEL_404;
  }

  v192 = *((v141 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v682 = v78;
    v605[1] = type metadata accessor for Lyrics(0);
    v681 = v142;
    if (v192)
    {
      v193 = 0;
      v78 = 0;
      v678 = (v141 & 0xC000000000000001);
      v648 = v141 + 32;
      v649 = v141 & 0xFFFFFFFFFFFFFF8;
      v675 = (v640 + 16);
      v674 = (v640 + 32);
      v673 = (v640 + 8);
      v693 = _swiftEmptyArrayStorage;
      v142 = v663;
      v677 = v141;
      v676 = v192;
      while (1)
      {
        while (1)
        {
          if (v678)
          {
            v194 = sub_100573F58();
          }

          else
          {
            if (v193 >= *(v649 + 16))
            {
              goto LABEL_402;
            }

            v194 = *(v648 + 8 * v193);
          }

          v195 = v194;
          v196 = __OFADD__(v193++, 1);
          if (v196)
          {
            goto LABEL_396;
          }

          v197 = [v194 linesMap];
          *&v706 = 0;
          sub_1000D3B98(0, &qword_1006F9FC8, MSVLyricsLine_ptr);
          sub_100572698();

          v198 = v706;
          if (v706)
          {
            break;
          }

          if (v193 == v192)
          {
            goto LABEL_151;
          }
        }

        v685 = v193;
        v199 = v684;

        v81 = v195;
        v200 = sub_100501430(v198, sub_1005013C8, v199, v81);
        v703 = v78;
        if (v78)
        {
          goto LABEL_430;
        }

        v201 = v200;

        v202 = [v81 language];
        sub_1005728D8();

        v203 = v699;
        sub_10056CBD8();
        v204 = v653;
        v205 = v705;
        (*v675)(v653, v203, v705);
        v206 = [v81 language];
        v207 = sub_1005728D8();
        v209 = v208;

        v210 = [v81 type] == 1;
        LOBYTE(v206) = [v81 isAutomaticallyCreated];
        v211 = v694;
        (*v674)(v694, v204, v205);
        v212 = v664;
        v213 = (v211 + v664[5]);
        *v213 = v207;
        v213[1] = v209;
        *(v211 + v212[6]) = v210;
        *(v211 + v212[7]) = v206;
        *(v211 + v212[8]) = v201;
        sub_1005020B4(v211, v690, type metadata accessor for Lyrics.Translation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v693 = sub_1004F7058(0, v693[2] + 1, 1, v693, &qword_1006FA660, &qword_1005A8630, type metadata accessor for Lyrics.Translation);
        }

        v215 = v693[2];
        v214 = v693[3];
        v78 = v703;
        v216 = v699;
        v141 = v677;
        if (v215 >= v214 >> 1)
        {
          v693 = sub_1004F7058((v214 > 1), v215 + 1, 1, v693, &qword_1006FA660, &qword_1005A8630, type metadata accessor for Lyrics.Translation);
        }

        v217 = v693;
        v693[2] = v215 + 1;
        sub_100502568(v690, v217 + ((*(v666 + 80) + 32) & ~*(v666 + 80)) + *(v666 + 72) * v215, type metadata accessor for Lyrics.Translation);
        v218 = sub_1004F42AC();
        if (v219)
        {
          v220 = v218;
          v221 = v219;
          v223 = *(v686 + 2);
          v222 = *(v686 + 3);
          v224 = *(v222 + 16);
          if (v223)
          {

            sub_1004FC0F4(v220, v221, v222 + 32, v224, (v223 + 16), v223 + 32);
            v226 = v225;

            if (v226)
            {
              goto LABEL_147;
            }
          }

          else
          {
            if (!v224)
            {
LABEL_147:

              sub_10050211C(v694, type metadata accessor for Lyrics.Translation);
              (*v673)(v699, v705);
              goto LABEL_148;
            }

            v231 = (v222 + 40);
            while (1)
            {
              v232 = *(v231 - 1) == v220 && v221 == *v231;
              if (v232 || (sub_100574498() & 1) != 0)
              {
                break;
              }

              v231 += 2;
              if (!--v224)
              {
                goto LABEL_147;
              }
            }
          }

          v227 = v694;
          v228 = v639;
          sub_1005020B4(v694, v639, type metadata accessor for Lyrics.Translation);
          v229 = v682;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v706 = v229;
          sub_1004FA880(v228, v220, v221, isUniquelyReferenced_nonNull_native);

          sub_10050211C(v227, type metadata accessor for Lyrics.Translation);
          (*v673)(v699, v705);
          v682 = v706;
        }

        else
        {

          sub_10050211C(v694, type metadata accessor for Lyrics.Translation);
          (*v673)(v216, v705);
        }

LABEL_148:
        v142 = v663;
        v192 = v676;
        v193 = v685;
        if (v685 == v676)
        {
          goto LABEL_151;
        }
      }
    }

    v78 = 0;
    v693 = _swiftEmptyArrayStorage;
    v142 = v663;
LABEL_151:

    v233 = OBJC_IVAR____TtC7LyricsX6Lyrics_translations;
    *(v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_translations) = v693;

    v673 = sub_1004FD10C(_swiftEmptyArrayStorage);
    v234 = [v641 transliterations];
    sub_1000D3B98(0, &qword_1006F9FE8, MSVLyricsTransliteration_ptr);
    v235 = sub_100572D28();

    if (v235 >> 62)
    {
      v236 = sub_100574178();
    }

    else
    {
      v236 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v141 = v659;
    v703 = v78;
    if (v236)
    {
      v674 = v233;
      v237 = 0;
      v699 = v235 & 0xC000000000000001;
      v676 = v235 & 0xFFFFFFFFFFFFFF8;
      v675 = (v235 + 32);
      v678 = (v640 + 16);
      v677 = (v640 + 8);
      v685 = _swiftEmptyArrayStorage;
      v694 = v235;
      v690 = v236;
      while (1)
      {
        while (1)
        {
          if (v699)
          {
            v238 = sub_100573F58();
          }

          else
          {
            if (v237 >= *(v676 + 16))
            {
              goto LABEL_403;
            }

            v238 = v675[v237];
          }

          v239 = v238;
          v196 = __OFADD__(v237++, 1);
          if (v196)
          {
            goto LABEL_397;
          }

          v78 = [v238 linesMap];
          *&v706 = 0;
          sub_1000D3B98(0, &qword_1006F9FC8, MSVLyricsLine_ptr);
          sub_100572698();

          v240 = v706;
          if (v706)
          {
            break;
          }

          if (v237 == v236)
          {
            goto LABEL_184;
          }
        }

        v241 = v684;

        v81 = v239;
        v242 = v703;
        v243 = sub_100501430(v240, sub_1005013C8, v241, v81);
        v703 = v242;
        if (v242)
        {

          v604 = v702;

          sub_10001036C(v604 + v606, &qword_1006F9F68, &qword_1005A7B68);

          sub_10001036C(v604 + v634, &qword_1006FBA10, &qword_1005A9A10);
          sub_10001036C(v604 + v607, &qword_1006F9F78, &qword_1005A7B80);
          sub_10001036C(v604 + v141, &qword_1006FBA10, &qword_1005A9A10);
          sub_10001036C(v610 + v604, &qword_1006F9F78, &qword_1005A7B80);
          sub_10001036C(v604 + v624, &qword_1006F9F78, &qword_1005A7B80);
          sub_10001036C(v604 + v647, &qword_1006F9F78, &qword_1005A7B80);

          goto LABEL_432;
        }

        v244 = v243;

        v245 = [v81 language];
        sub_1005728D8();

        v246 = v698;
        sub_10056CBD8();
        v247 = v687;
        (*v678)(v687, v246, v705);
        v248 = [v81 language];
        v249 = sub_1005728D8();
        v251 = v250;

        v252 = [v81 isAutomaticallyCreated];
        v253 = v695;
        v254 = &v247[v695[5]];
        *v254 = v249;
        v254[1] = v251;
        v247[v253[6]] = v252;
        *&v247[v253[7]] = v244;
        sub_1005020B4(v247, v688, type metadata accessor for Lyrics.Transliteration);
        v255 = v685;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v255 = sub_1004F7058(0, *(v255 + 2) + 1, 1, v255, &qword_1006FA678, &qword_1005A8648, type metadata accessor for Lyrics.Transliteration);
        }

        v257 = *(v255 + 2);
        v256 = *(v255 + 3);
        v258 = v698;
        if (v257 >= v256 >> 1)
        {
          v255 = sub_1004F7058((v256 > 1), v257 + 1, 1, v255, &qword_1006FA678, &qword_1005A8648, type metadata accessor for Lyrics.Transliteration);
        }

        *(v255 + 2) = v257 + 1;
        v259 = (*(v667 + 80) + 32) & ~*(v667 + 80);
        v685 = v255;
        sub_100502568(v688, &v255[v259 + *(v667 + 72) * v257], type metadata accessor for Lyrics.Transliteration);
        sub_10056CC08();
        v78 = sub_10056CBA8();
        v260 = *(v78 - 8);
        if ((*(v260 + 48))(v142, 1, v78) == 1)
        {

          sub_10050211C(v687, type metadata accessor for Lyrics.Transliteration);
          (*v677)(v258, v705);
          sub_10001036C(v142, &qword_1006F9FA0, &qword_1005A7BA0);
        }

        else
        {
          v261 = sub_10056CB98();
          v263 = v262;
          (*(v260 + 8))(v142, v78);
          v78 = *(v680 + 16);
          v264 = *(v680 + 24);
          v265 = *(v264 + 16);
          if (v78)
          {

            sub_1004FC0F4(v261, v263, v264 + 32, v265, (v78 + 16), v78 + 32);
            v267 = v266;

            if (v267)
            {
              goto LABEL_180;
            }
          }

          else
          {
            if (!v265)
            {
LABEL_180:

              sub_10050211C(v687, type metadata accessor for Lyrics.Transliteration);
              (*v677)(v698, v705);
              goto LABEL_181;
            }

            v78 = v264 + 40;
            while (1)
            {
              v273 = *(v78 - 8) == v261 && *v78 == v263;
              if (v273 || (sub_100574498() & 1) != 0)
              {
                break;
              }

              v78 += 16;
              if (!--v265)
              {
                goto LABEL_180;
              }
            }
          }

          v78 = type metadata accessor for Lyrics.Transliteration;
          v268 = v687;
          v269 = v635;
          sub_1005020B4(v687, v635, type metadata accessor for Lyrics.Transliteration);
          v270 = v673;
          v271 = swift_isUniquelyReferenced_nonNull_native();
          *&v706 = v270;
          sub_1004FA6EC(v269, v261, v263, v271);

          v272 = v268;
          v142 = v663;
          sub_10050211C(v272, type metadata accessor for Lyrics.Transliteration);
          (*v677)(v698, v705);
          v673 = v706;
        }

LABEL_181:
        v141 = v659;
        v236 = v690;
        if (v237 == v690)
        {
          goto LABEL_184;
        }
      }
    }

    v685 = _swiftEmptyArrayStorage;
LABEL_184:

    v274 = v702;
    *(v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_transliterations) = v685;
    v674 = *(v681 + 2);
    if (v674)
    {
      v275 = v697;
      v676 = &v681[(*(v697 + 80) + 32) & ~*(v697 + 80)];

      swift_beginAccess();
      swift_beginAccess();
      swift_beginAccess();
      v276 = 0;
      v677 = (v275 + 16);
      v694 = v640 + 8;
      v653 = v640 + 48;
      v629 = (v640 + 16);
      v663 = (v667 + 48);
      v675 = (v275 + 8);
      v649 = v275 + 56;
      v635 = (v275 + 48);
      v610 = (v275 + 32);
      v639 = (v666 + 48);
      v640 = (v640 + 32);
      v141 = v651;
      v78 = v701;
      v277 = v654;
      v278 = v705;
LABEL_189:
      if (v276 >= *(v681 + 2))
      {
        goto LABEL_399;
      }

      v279 = *(v697 + 72);
      v690 = v276;
      v699 = *(v697 + 16);
      (v699)(v277, v676 + v279 * v276, v78);
      v280 = v668;
      sub_10056CC28();
      v281 = sub_1004F42AC();
      v283 = v282;
      v142 = *v694;
      (*v694)(v280, v278);
      if (!v283)
      {
        goto LABEL_228;
      }

      if (!*(v682 + 2))
      {

        goto LABEL_228;
      }

      v284 = sub_100429D94(v281, v283);
      v286 = v285;

      if ((v286 & 1) == 0)
      {
        goto LABEL_228;
      }

      v287 = *(v682 + 7) + *(v666 + 72) * v284;
      v288 = v638;
      sub_1005020B4(v287, v638, type metadata accessor for Lyrics.Translation);
      sub_100502568(v288, v652, type metadata accessor for Lyrics.Translation);
      v289 = *v653;
      v290 = v646;
      if ((*v653)(v646, 1, v278))
      {
        v291 = *(v686 + 3);
        if (v291[2])
        {
          v292 = v142;
          v293 = 0;
          v294 = 0;
LABEL_199:
          v298 = v291[4];
          v297 = v291[5];

          if (v293)
          {
            if (!v297)
            {
              v142 = v292;
LABEL_208:

LABEL_215:
              v678 = v142;
              v304 = v664;
              if (*(v652 + v664[6]))
              {
                v305 = v659;
                v306 = v702;
                v307 = v623;
                sub_10000CC8C(v702 + v659, v623, &qword_1006FBA10, &qword_1005A9A10);
                if ((*v639)(v307, 1, v304) == 1)
                {
                  sub_10001036C(v307, &qword_1006FBA10, &qword_1005A9A10);
                  v308 = v622;
                  sub_100502568(v652, v622, type metadata accessor for Lyrics.Translation);
                  v619(v308, 0, 1, v304);
                  swift_beginAccess();
                  v309 = v306 + v305;
                  v310 = v308;
                  goto LABEL_220;
                }

LABEL_226:
                sub_10050211C(v652, type metadata accessor for Lyrics.Translation);
                sub_10001036C(v307, &qword_1006FBA10, &qword_1005A9A10);
              }

              else
              {
                v311 = v702;
                v307 = v621;
                sub_10000CC8C(v702 + v634, v621, &qword_1006FBA10, &qword_1005A9A10);
                if ((*v639)(v307, 1, v304) != 1)
                {
                  goto LABEL_226;
                }

                sub_10001036C(v307, &qword_1006FBA10, &qword_1005A9A10);
                v312 = v622;
                sub_100502568(v652, v622, type metadata accessor for Lyrics.Translation);
                v619(v312, 0, 1, v304);
                v313 = v634;
                swift_beginAccess();
                v309 = v311 + v313;
                v310 = v312;
LABEL_220:
                sub_10008B71C(v310, v309, &qword_1006FBA10, &qword_1005A9A10);
                swift_endAccess();
              }

              v142 = v678;
              goto LABEL_228;
            }

            if (v294 == v298 && v293 == v297)
            {

              v142 = v292;
            }

            else
            {
              v299 = sub_100574498();

              v142 = v292;
              if ((v299 & 1) == 0)
              {
                goto LABEL_215;
              }
            }
          }

          else
          {
            v142 = v292;
            if (v297)
            {
              goto LABEL_208;
            }
          }
        }
      }

      else
      {
        v295 = v643;
        (*v629)(v643, v290, v278);
        v294 = sub_1004F42AC();
        v293 = v296;
        (v142)(v295, v278);
        v291 = *(v686 + 3);
        if (v291[2])
        {
          v292 = v142;
          goto LABEL_199;
        }

        if (v293)
        {
          goto LABEL_208;
        }
      }

      v300 = v646;
      if (v289(v646, 1, v278))
      {
        sub_1004F42AC();
        v302 = v301;
LABEL_212:
        if (!v302)
        {
          goto LABEL_215;
        }

        goto LABEL_213;
      }

      v314 = v643;
      (*v629)(v643, v300, v278);
      v315 = sub_1004F42AC();
      v317 = v316;
      (v142)(v314, v278);
      v318 = sub_1004F42AC();
      v302 = v319;
      if (!v317)
      {
        goto LABEL_212;
      }

      if (v319)
      {
        if (v315 == v318 && v317 == v319)
        {

          goto LABEL_208;
        }

        v446 = sub_100574498();

        if (v446)
        {
          goto LABEL_215;
        }
      }

      else
      {
LABEL_213:
      }

      LOBYTE(v706) = 15;
      v303 = sub_100502654();
      if (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v303))
      {
        goto LABEL_215;
      }

      sub_10050211C(v652, type metadata accessor for Lyrics.Translation);
LABEL_228:
      v320 = v669;
      sub_10056CC28();
      sub_10056CC08();
      (v142)(v320, v278);
      v321 = v277;
      v322 = sub_10056CBA8();
      v323 = *(v322 - 8);
      v81 = (v323 + 48);
      v324 = *(v323 + 48);
      if (v324(v141, 1, v322) == 1)
      {
        v78 = v701;
        (*v675)(v321, v701);
        sub_10001036C(v141, &qword_1006F9FA0, &qword_1005A7BA0);
        v277 = v321;
        goto LABEL_187;
      }

      v698 = v324;
      v325 = sub_10056CB98();
      v327 = v326;
      v329 = *(v323 + 8);
      v328 = v323 + 8;
      v687 = v329;
      (v329)(v141, v322);
      if (qword_1006F9D80 != -1)
      {
        swift_once();
      }

      v330 = static Lyrics.scriptMap;
      v331 = v673;
      if (*(static Lyrics.scriptMap + 16))
      {
        v332 = sub_100429D94(v325, v327);
        if (v333)
        {
          v334 = (*(v330 + 56) + 16 * v332);
          v325 = *v334;
          v335 = v334[1];

          v327 = v335;
        }
      }

      v688 = v328;
      if (!v331[2])
      {

LABEL_238:
        v346 = 1;
        v665(v661, 1, 1, v695);
        if (v331[2])
        {
          v347 = sub_100429D94(1853120844, 0xE400000000000000);
          if (v348)
          {
            v349 = v670;
            sub_1005020B4(v331[7] + *(v667 + 72) * v347, v670, type metadata accessor for Lyrics.Transliteration);
            v350 = v349;
            v346 = 0;
            goto LABEL_243;
          }

          v346 = 1;
        }

        v350 = v670;
LABEL_243:
        v351 = v695;
        v665(v350, v346, 1, v695);
        v345 = *v663;
        v352 = v661;
        if ((*v663)(v661, 1, v351) != 1)
        {
          sub_10001036C(v352, &qword_1006F9F78, &qword_1005A7B80);
        }

        goto LABEL_245;
      }

      v336 = sub_100429D94(v325, v327);
      v338 = v337;

      if ((v338 & 1) == 0)
      {
        goto LABEL_238;
      }

      v339 = v667;
      v340 = v661;
      sub_1005020B4(v331[7] + *(v667 + 72) * v336, v661, type metadata accessor for Lyrics.Transliteration);
      v341 = v695;
      v342 = v665;
      v665(v340, 0, 1, v695);
      v343 = v340;
      v344 = v670;
      sub_100502568(v343, v670, type metadata accessor for Lyrics.Transliteration);
      v342(v344, 0, 1, v341);
      v345 = *(v339 + 48);
LABEL_245:
      v353 = v670;
      v354 = v695;
      if (v345(v670, 1, v695) == 1)
      {
        v277 = v654;
        v78 = v701;
        (*v675)(v654, v701);
        v355 = v353;
      }

      else
      {
        v356 = v662;
        sub_100502568(v353, v662, type metadata accessor for Lyrics.Transliteration);
        v357 = v642;
        sub_10000CC8C(v702 + v647, v642, &qword_1006F9F78, &qword_1005A7B80);
        if (v345(v357, 1, v354) == 1)
        {
          v648 = v322;
          v678 = v142;
          sub_10001036C(v357, &qword_1006F9F78, &qword_1005A7B80);
          v358 = v644;
          v141 = v701;
          v359 = v699;
          (v699)(v644, v654, v701);
          v360 = *v649;
          v361 = 1;
          (*v649)(v358, 0, 1, v141);
          v362 = v631;
          if (*(v681 + 2))
          {
            v363 = v637;
            v359(v637, v676, v141);
            v364 = v363;
            v361 = 0;
          }

          else
          {
            v364 = v637;
          }

          v360(v364, v361, 1, v141);
          v365 = *(v632 + 48);
          v366 = v644;
          sub_10000CC8C(v644, v362, &qword_1006F9F98, &qword_1005A7B98);
          sub_10000CC8C(v364, v362 + v365, &qword_1006F9F98, &qword_1005A7B98);
          v367 = *v635;
          if ((*v635)(v362, 1, v141) == 1)
          {
            sub_10001036C(v364, &qword_1006F9F98, &qword_1005A7B98);
            sub_10001036C(v366, &qword_1006F9F98, &qword_1005A7B98);
            v368 = v367(v362 + v365, 1, v141);
            v369 = v698;
            if (v368 == 1)
            {
              sub_10001036C(v362, &qword_1006F9F98, &qword_1005A7B98);
              v370 = v648;
              goto LABEL_261;
            }

LABEL_258:
            sub_10001036C(v362, &qword_1006F9F90, &qword_1005A7B90);
            v370 = v648;
            goto LABEL_269;
          }

          v371 = v618;
          sub_10000CC8C(v362, v618, &qword_1006F9F98, &qword_1005A7B98);
          if (v367(v362 + v365, 1, v141) == 1)
          {
            sub_10001036C(v637, &qword_1006F9F98, &qword_1005A7B98);
            sub_10001036C(v644, &qword_1006F9F98, &qword_1005A7B98);
            (*v675)(v371, v141);
            v369 = v698;
            goto LABEL_258;
          }

          v372 = v371;
          v373 = v614;
          (*v610)(v614, v362 + v365, v141);
          sub_1005027F8(&qword_1006FA010, &type metadata accessor for Locale, &protocol conformance descriptor for Locale);
          LODWORD(v699) = sub_1005727E8();
          v374 = *v675;
          (*v675)(v373, v141);
          sub_10001036C(v637, &qword_1006F9F98, &qword_1005A7B98);
          sub_10001036C(v644, &qword_1006F9F98, &qword_1005A7B98);
          (v374)(v372, v141);
          sub_10001036C(v362, &qword_1006F9F98, &qword_1005A7B98);
          v370 = v648;
          v369 = v698;
          if (v699)
          {
LABEL_261:
            v375 = v615;
            sub_10056CBE8();
            v376 = sub_10056CB38();
            v377 = *(v376 - 8);
            v378 = *(v377 + 48);
            if (v378(v375, 1, v376) == 1)
            {
              v379 = v375;
              v380 = &qword_1006F9F70;
              v381 = &unk_1005A7B70;
LABEL_263:
              sub_10001036C(v379, v380, v381);
              goto LABEL_269;
            }

            sub_10056CB18();
            v699 = *(v377 + 8);
            (v699)(v375, v376);
            v607 = sub_100572998();
            v383 = v382;

            v141 = v612;
            sub_10056CC28();
            v384 = v613;
            sub_10056CBE8();
            v678(v141, v705);
            if (v378(v384, 1, v376) == 1)
            {

              sub_10001036C(v384, &qword_1006F9F70, &unk_1005A7B70);
              v369 = v698;
              v370 = v648;
              goto LABEL_269;
            }

            v606 = v383;
            sub_10056CB18();
            (v699)(v384, v376);
            v385 = sub_100572998();
            v141 = v386;

            v387 = v611;
            sub_10056CBB8();
            v388 = sub_10056CB88();
            v389 = *(v388 - 8);
            v390 = (*(v389 + 48))(v387, 1, v388);
            v370 = v648;
            if (v390 == 1)
            {

              sub_10001036C(v387, &qword_1006F9F88, &qword_1005A7B88);
LABEL_268:
              v369 = v698;
              goto LABEL_269;
            }

            v699 = v385;
            sub_10056CB78();
            (*(v389 + 8))(v387, v388);
            v447 = sub_100572998();
            v449 = v448;

            v450 = v608;
            sub_10056CC28();
            v451 = v609;
            sub_10056CC08();
            v678(v450, v705);
            v369 = v698;
            if ((v698)(v451, 1, v370) == 1)
            {

              v379 = v451;
              v380 = &qword_1006F9FA0;
              v381 = &qword_1005A7BA0;
              goto LABEL_263;
            }

            v678 = v447;
            v452 = v141;
            sub_10056CB98();
            (v687)(v451, v370);
            v453 = sub_100572998();
            v455 = v454;

            if (qword_1006F9D78 != -1)
            {
              swift_once();
            }

            v456 = static Lyrics.chineseLanguages;
            v141 = sub_1001B50F0(v607, v606, static Lyrics.chineseLanguages);

            if ((v141 & 1) == 0)
            {

              goto LABEL_268;
            }

            v457 = sub_1001B50F0(v699, v452, v456);
            v369 = v698;
            if ((v457 & 1) == 0)
            {

              goto LABEL_269;
            }

            if (v453 == 1953390952 && v455 == 0xE400000000000000)
            {

              v278 = v705;
              v142 = v699;
LABEL_337:
              v459 = v662;
              if (v678 == 27496 && v449 == 0xE200000000000000)
              {

                goto LABEL_345;
              }

              v460 = sub_100574498();

              if (v460)
              {
LABEL_345:

                goto LABEL_346;
              }
            }

            else
            {
              v458 = sub_100574498();

              v278 = v705;
              v142 = v699;
              if (v458)
              {
                goto LABEL_337;
              }

              v459 = v662;
            }

            if (v142 == 6649209 && v452 == 0xE300000000000000)
            {
              goto LABEL_345;
            }

            v465 = sub_100574498();

            if (v465)
            {
LABEL_346:
              v461 = (v459 + v695[5]);
              v463 = *v461;
              v462 = v461[1];
              *&v706 = v463;
              *(&v706 + 1) = v462;
              *&v712 = 0x6E69796E6970;
              v464 = 0xE600000000000000;
            }

            else
            {
              v466 = (v459 + v695[5]);
              v468 = *v466;
              v467 = v466[1];
              *&v706 = v468;
              *(&v706 + 1) = v467;
              *&v712 = 0x676E69707475796ALL;
              v464 = 0xE800000000000000;
            }

            *(&v712 + 1) = v464;
            sub_100502600();
            if (sub_100573D38())
            {
              goto LABEL_297;
            }

LABEL_321:
            sub_10050211C(v662, type metadata accessor for Lyrics.Transliteration);
            v277 = v654;
            v78 = v701;
            (*v675)(v654, v701);
            v141 = v651;
            goto LABEL_188;
          }

LABEL_269:
          v391 = sub_1004F42AC();
          v393 = v392;
          v394 = *(v686 + 3);
          if (!v394[2])
          {
            if (!v392)
            {
              v398 = 1;
              v399 = v630;
              goto LABEL_283;
            }

            goto LABEL_276;
          }

          v395 = v391;
          v396 = v394[4];
          v397 = v394[5];

          if (v393)
          {
            if (v397)
            {
              if (v395 == v396 && v393 == v397)
              {

                v398 = 1;
              }

              else
              {
                v398 = sub_100574498();
              }

LABEL_281:
              v399 = v630;
LABEL_282:

              goto LABEL_283;
            }

LABEL_276:
            v398 = 0;
            goto LABEL_281;
          }

          v399 = v630;
          if (v397)
          {
            v398 = 0;
            goto LABEL_282;
          }

          v398 = 1;
LABEL_283:
          sub_10056CC08();
          if (v369(v399, 1, v370) == 1)
          {
            sub_10001036C(v399, &qword_1006F9FA0, &qword_1005A7BA0);
            v400 = *(v680 + 24);
            v278 = v705;
            if (!v400[2])
            {
              goto LABEL_297;
            }

            v401 = 0;
            v142 = 0;
            goto LABEL_288;
          }

          v142 = sub_10056CB98();
          v401 = v402;
          (v687)(v399, v370);
          v400 = *(v680 + 24);
          if (v400[2])
          {
            v278 = v705;
LABEL_288:
            v404 = v400[4];
            v403 = v400[5];

            if (v401)
            {
              if (v403)
              {
                if (v142 == v404 && v401 == v403)
                {

LABEL_297:
                  v405 = sub_1004FD2F4(_swiftEmptyArrayStorage);
                  v406 = v729;
                  v688 = v729[2];
                  if (!v688)
                  {
LABEL_315:
                    v430 = v628;
                    sub_10056CBE8();
                    v431 = sub_10056CB38();
                    v432 = *(v431 - 8);
                    if ((*(v432 + 48))(v430, 1, v431) == 1)
                    {
                      sub_10001036C(v430, &qword_1006F9F70, &unk_1005A7B70);
                    }

                    else
                    {
                      sub_10056CB18();
                      (*(v432 + 8))(v430, v431);
                    }

                    v142 = v702;
                    v433 = v625;
                    sub_10056CBD8();
                    v434 = v654;
                    v435 = v701;
                    (*v675)(v654, v701);
                    v436 = v695;
                    v437 = (v662 + v695[5]);
                    v439 = *v437;
                    v438 = v437[1];
                    v440 = v626;
                    v441 = v433;
                    v278 = v705;
                    (*v640)(v626, v441, v705);
                    v442 = (v440 + v436[5]);
                    *v442 = v439;
                    v442[1] = v438;
                    *(v440 + v436[6]) = 0;
                    *(v440 + v436[7]) = v405;
                    v277 = v434;
                    v78 = v435;
                    v81 = v665;
                    v665(v440, 0, 1, v436);
                    v443 = v624;
                    swift_beginAccess();

                    sub_10008B71C(v440, v142 + v443, &qword_1006F9F78, &qword_1005A7B80);
                    swift_endAccess();
                    v444 = v627;
                    sub_100502568(v662, v627, type metadata accessor for Lyrics.Transliteration);
                    (v81)(v444, 0, 1, v436);
                    v445 = v647;
                    swift_beginAccess();
                    sub_10008B71C(v444, v142 + v445, &qword_1006F9F78, &qword_1005A7B80);
                    swift_endAccess();
                    v141 = v651;
                    goto LABEL_188;
                  }

                  v407 = 0;
                  v687 = v729 + ((*(v689 + 80) + 32) & ~*(v689 + 80));
                  v78 = v700;
                  v142 = v679;
                  v678 = v729;
LABEL_302:
                  if (v407 >= v406[2])
                  {
                    __break(1u);
LABEL_394:
                    __break(1u);
LABEL_395:
                    __break(1u);
LABEL_396:
                    __break(1u);
LABEL_397:
                    __break(1u);
LABEL_398:
                    __break(1u);
LABEL_399:
                    __break(1u);
LABEL_400:
                    __break(1u);
LABEL_401:
                    __break(1u);
LABEL_402:
                    __break(1u);
LABEL_403:
                    __break(1u);
LABEL_404:
                    v192 = sub_100574178();
                    continue;
                  }

                  v414 = sub_1005020B4(&v687[*(v689 + 72) * v407], v142, type metadata accessor for Lyrics.TextLine);
                  v415 = v142 + *(v78 + 52);
                  v416 = *(v415 + 8);
                  if (!v416)
                  {
                    goto LABEL_301;
                  }

                  v81 = *v415;
                  v698 = (*(v142 + *(v78 + 64)))(v414);
                  v699 = v417;
                  v141 = (*(v142 + *(v78 + 68)))();
                  (*(v142 + *(v78 + 72)))(&v712);
                  v78 = swift_isUniquelyReferenced_nonNull_native();
                  v727 = v405;
                  v142 = sub_100429D94(v81, v416);
                  v419 = v405[2];
                  v420 = (v418 & 1) == 0;
                  v421 = v419 + v420;
                  if (__OFADD__(v419, v420))
                  {
                    goto LABEL_394;
                  }

                  v422 = v418;
                  if (v405[3] >= v421)
                  {
                    if (v78)
                    {
                      v78 = v700;
                      if ((v418 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }

                    else
                    {
                      sub_1004FB144();
                      v78 = v700;
                      if ((v422 & 1) == 0)
                      {
                        goto LABEL_311;
                      }
                    }
                  }

                  else
                  {
                    sub_1004F8978(v421, v78);
                    v423 = sub_100429D94(v81, v416);
                    if ((v422 & 1) != (v424 & 1))
                    {
                      goto LABEL_433;
                    }

                    v142 = v423;
                    v78 = v700;
                    if ((v422 & 1) == 0)
                    {
LABEL_311:
                      v405 = v727;
                      v727[(v142 >> 6) + 8] |= 1 << v142;
                      v425 = (v405[6] + 16 * v142);
                      *v425 = v81;
                      v425[1] = v416;
                      v426 = v405[7] + 88 * v142;
                      v427 = v699;
                      *v426 = v698;
                      *(v426 + 8) = v427;
                      *(v426 + 16) = v141;
                      *(v426 + 24) = v712;
                      *(v426 + 40) = v713;
                      *(v426 + 56) = v714;
                      *(v426 + 72) = v715;
                      v428 = v405[2];
                      v196 = __OFADD__(v428, 1);
                      v429 = v428 + 1;
                      if (v196)
                      {
                        goto LABEL_400;
                      }

                      v405[2] = v429;

LABEL_300:
                      v142 = v679;
                      v406 = v678;
LABEL_301:
                      ++v407;
                      sub_10050211C(v142, type metadata accessor for Lyrics.TextLine);
                      if (v688 == v407)
                      {
                        goto LABEL_315;
                      }

                      goto LABEL_302;
                    }
                  }

                  v405 = v727;
                  v408 = v727[7] + 88 * v142;
                  v409 = *(v408 + 16);
                  v706 = *v408;
                  v707 = v409;
                  v411 = *(v408 + 48);
                  v410 = *(v408 + 64);
                  v412 = *(v408 + 32);
                  v711 = *(v408 + 80);
                  v709 = v411;
                  v710 = v410;
                  v708 = v412;
                  v413 = v699;
                  *v408 = v698;
                  *(v408 + 8) = v413;
                  *(v408 + 16) = v141;
                  *(v408 + 24) = v712;
                  *(v408 + 40) = v713;
                  *(v408 + 56) = v714;
                  *(v408 + 72) = v715;
                  sub_1005025D0(&v706);
                  goto LABEL_300;
                }

                v142 = sub_100574498();

                if (v398 & v142 & 1) != 0 || ((v398 ^ 1))
                {
                  goto LABEL_297;
                }

                goto LABEL_321;
              }
            }

            else if (!v403)
            {
              goto LABEL_297;
            }
          }

          else
          {
            v278 = v705;
            if (!v401)
            {
              goto LABEL_297;
            }
          }

          if ((v398 & 1) == 0)
          {
            goto LABEL_297;
          }

          goto LABEL_321;
        }

        sub_10050211C(v356, type metadata accessor for Lyrics.Transliteration);
        v277 = v654;
        v78 = v701;
        (*v675)(v654, v701);
        v355 = v357;
      }

      sub_10001036C(v355, &qword_1006F9F78, &qword_1005A7B80);
      v141 = v651;
LABEL_187:
      v278 = v705;
LABEL_188:
      v276 = v690 + 1;
      if ((v690 + 1) == v674)
      {

        v274 = v702;
        goto LABEL_353;
      }

      goto LABEL_189;
    }

    break;
  }

LABEL_353:
  v142 = v672;

  swift_beginAccess();

  v470 = sub_100501640(v469);

  *(v274 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) = v470;
  v471 = v729;
  v274[6] = v729;
  v472 = *(v471 + 2);
  v703 = v471;
  if (v472)
  {
    v473 = v689;
    v474 = &v471[(*(v689 + 80) + 32) & ~*(v689 + 80)];
    sub_1005020B4(v474, v142, type metadata accessor for Lyrics.TextLine);
    v705 = *(v473 + 72);

    v475 = 0;
    v78 = _swiftEmptyArrayStorage;
    v81 = v692;
    do
    {
      sub_1005020B4(v474, v704, type metadata accessor for Lyrics.TextLine);
      if (v475 || (v476 = *v142, *v142 <= 7.0))
      {
        v480 = *v704;
        v481 = *(v142 + 8);
        if (*v704 - v481 > 7.0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_1004F6F10(0, *(v78 + 16) + 1, 1, v78);
          }

          v142 = *(v78 + 16);
          v482 = *(v78 + 24);
          if (v142 >= v482 >> 1)
          {
            v78 = sub_1004F6F10((v482 > 1), v142 + 1, 1, v78);
          }

          *(&v707 + 1) = &type metadata for Lyrics.InstrumentalLine;
          *&v708 = &protocol witness table for Lyrics.InstrumentalLine;
          v483 = swift_allocObject();
          *&v706 = v483;
          *(v483 + 16) = v475;
          *(v483 + 24) = v481 + 0.1;
          *(v483 + 32) = v480;
          *(v483 + 40) = v683;
          *(v78 + 16) = v142 + 1;
          sub_10002EA74(&v706, v78 + 40 * v142 + 32);
          v196 = __OFADD__(v475++, 1);
          if (v196)
          {
            goto LABEL_401;
          }
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v78 = sub_1004F6F10(0, *(v78 + 16) + 1, 1, v78);
        }

        v478 = *(v78 + 16);
        v477 = *(v78 + 24);
        if (v478 >= v477 >> 1)
        {
          v78 = sub_1004F6F10((v477 > 1), v478 + 1, 1, v78);
        }

        *(&v707 + 1) = &type metadata for Lyrics.InstrumentalLine;
        *&v708 = &protocol witness table for Lyrics.InstrumentalLine;
        v479 = swift_allocObject();
        *&v706 = v479;
        *(v479 + 16) = 0;
        *(v479 + 24) = 0;
        *(v479 + 32) = v476;
        *(v479 + 40) = v683;
        *(v78 + 16) = v478 + 1;
        sub_10002EA74(&v706, v78 + 40 * v478 + 32);
        v475 = 1;
      }

      v484 = v691;
      sub_1005020B4(v704, v691, type metadata accessor for Lyrics.TextLine);
      *(v484 + 16) = v475;
      sub_1005020B4(v484, v692, type metadata accessor for Lyrics.TextLine);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v78 = sub_1004F6F10(0, *(v78 + 16) + 1, 1, v78);
      }

      v486 = *(v78 + 16);
      v485 = *(v78 + 24);
      if (v486 >= v485 >> 1)
      {
        v78 = sub_1004F6F10((v485 > 1), v486 + 1, 1, v78);
      }

      v141 = type metadata accessor for Lyrics.TextLine;
      sub_10050211C(v704, type metadata accessor for Lyrics.TextLine);
      v142 = v672;
      sub_10050211C(v672, type metadata accessor for Lyrics.TextLine);
      *(&v707 + 1) = v700;
      *&v708 = &protocol witness table for Lyrics.TextLine;
      v487 = sub_10002AB7C(&v706);
      sub_1005020B4(v81, v487, type metadata accessor for Lyrics.TextLine);
      *(v78 + 16) = v486 + 1;
      sub_10002EA74(&v706, v78 + 40 * v486 + 32);
      sub_10050211C(v81, type metadata accessor for Lyrics.TextLine);
      v196 = __OFADD__(v475++, 1);
      if (v196)
      {
        goto LABEL_398;
      }

      sub_100502568(v691, v142, type metadata accessor for Lyrics.TextLine);
      v474 += v705;
      --v472;
    }

    while (v472);
    v488 = *(v142 + 8);
    sub_10050211C(v142, type metadata accessor for Lyrics.TextLine);
    v274 = v702;
  }

  else
  {

    v475 = 0;
    v78 = _swiftEmptyArrayStorage;
    v488 = 0;
  }

  v489 = [v641 songwriters];
  v490 = sub_100572D28();

  if (v490 >> 62)
  {
    v491 = sub_100574178();
  }

  else
  {
    v491 = *((v490 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v492 = v633;
  if (!v491)
  {

LABEL_414:
    v274[4] = v696;
    v274[5] = v78;
    swift_beginAccess();
    swift_weakAssign();
    Lyrics.updateTransliterations()();
    v512 = v636;
    if (qword_1006F9DA0 != -1)
    {
      swift_once();
    }

    v513 = sub_10056DF88();
    sub_10000C49C(v513, static Logger.lyrics);
    v514 = swift_allocObject();
    *(v514 + 16) = v492;
    *(v514 + 24) = v512;
    v515 = swift_allocObject();
    v516 = v686;
    *(v515 + 16) = sub_10050229C;
    *(v515 + 24) = v516;
    v517 = swift_allocObject();
    v703 = v517;
    v518 = v680;
    *(v517 + 16) = sub_1005047B0;
    *(v517 + 24) = v518;
    swift_retain_n();

    v705 = sub_10056DF68();
    LODWORD(v704) = sub_100573448();
    v701 = swift_allocObject();
    *(v701 + 16) = 34;
    v700 = swift_allocObject();
    *(v700 + 16) = 8;
    v519 = swift_allocObject();
    *(v519 + 16) = sub_1005021B4;
    *(v519 + 24) = v514;
    v520 = swift_allocObject();
    v699 = v520;
    *(v520 + 16) = sub_1005022D4;
    *(v520 + 24) = v519;
    v698 = swift_allocObject();
    v698[16] = 34;
    v697 = swift_allocObject();
    *(v697 + 16) = 8;
    v521 = swift_allocObject();
    *(v521 + 16) = sub_1005021BC;
    *(v521 + 24) = v274;
    v522 = swift_allocObject();
    v696 = v522;
    v522[2] = sub_1005047A8;
    v522[3] = v521;
    v694 = swift_allocObject();
    *(v694 + 16) = 34;
    v693 = swift_allocObject();
    *(v693 + 16) = 8;
    v523 = swift_allocObject();
    *(v523 + 16) = sub_1005021F4;
    *(v523 + 24) = v274;
    v524 = swift_allocObject();
    *(v524 + 16) = sub_1005047A8;
    *(v524 + 24) = v523;
    v692 = swift_allocObject();
    *(v692 + 16) = 34;
    v691 = swift_allocObject();
    *(v691 + 16) = 8;
    v525 = swift_allocObject();
    *(v525 + 16) = sub_10050222C;
    *(v525 + 24) = v274;
    v526 = swift_allocObject();
    *(v526 + 16) = sub_1005047A8;
    *(v526 + 24) = v525;
    v690 = swift_allocObject();
    *(v690 + 16) = 34;
    v689 = swift_allocObject();
    *(v689 + 16) = 8;
    v527 = swift_allocObject();
    *(v527 + 16) = sub_100502264;
    *(v527 + 24) = v274;
    v528 = swift_allocObject();
    *(v528 + 16) = sub_1005047A8;
    *(v528 + 24) = v527;
    v688 = swift_allocObject();
    *(v688 + 16) = 34;
    v529 = swift_allocObject();
    *(v529 + 16) = 8;
    v530 = swift_allocObject();
    *(v530 + 16) = sub_1005022B8;
    *(v530 + 24) = v515;
    v531 = swift_allocObject();
    *(v531 + 16) = sub_1005047A8;
    *(v531 + 24) = v530;
    v532 = swift_allocObject();
    *(v532 + 16) = 34;
    v533 = swift_allocObject();
    *(v533 + 16) = 8;
    v534 = swift_allocObject();
    v535 = v703;
    *(v534 + 16) = sub_1005047A4;
    *(v534 + 24) = v535;
    v536 = swift_allocObject();
    *(v536 + 16) = sub_1005047A8;
    *(v536 + 24) = v534;
    sub_100009DCC(&qword_1006F9FF8, &qword_1005A7BB0);
    v537 = swift_allocObject();
    *(v537 + 16) = xmmword_1005A7630;
    v538 = v701;
    *(v537 + 32) = sub_1005022C0;
    *(v537 + 40) = v538;
    v539 = v700;
    *(v537 + 48) = sub_1005046F4;
    *(v537 + 56) = v539;
    v540 = v699;
    *(v537 + 64) = sub_1005022FC;
    *(v537 + 72) = v540;
    v541 = v698;
    *(v537 + 80) = sub_1005046F4;
    *(v537 + 88) = v541;
    v542 = v697;
    *(v537 + 96) = sub_1005046F4;
    *(v537 + 104) = v542;
    v543 = v696;
    *(v537 + 112) = sub_100504748;
    *(v537 + 120) = v543;
    v544 = v694;
    *(v537 + 128) = sub_1005046F4;
    *(v537 + 136) = v544;
    v545 = v693;
    *(v537 + 144) = sub_1005046F4;
    *(v537 + 152) = v545;
    *(v537 + 160) = sub_100504748;
    *(v537 + 168) = v524;
    v546 = v692;
    *(v537 + 176) = sub_1005046F4;
    *(v537 + 184) = v546;
    v547 = v691;
    *(v537 + 192) = sub_1005046F4;
    *(v537 + 200) = v547;
    *(v537 + 208) = sub_100504748;
    *(v537 + 216) = v526;
    v548 = v690;
    *(v537 + 224) = sub_1005046F4;
    *(v537 + 232) = v548;
    v549 = v689;
    *(v537 + 240) = sub_1005046F4;
    *(v537 + 248) = v549;
    *(v537 + 256) = sub_100504748;
    *(v537 + 264) = v528;
    v550 = v688;
    *(v537 + 272) = sub_1005046F4;
    *(v537 + 280) = v550;
    *(v537 + 288) = sub_1005046F4;
    *(v537 + 296) = v529;
    *(v537 + 304) = sub_100504748;
    *(v537 + 312) = v531;
    *(v537 + 320) = sub_1005046F4;
    *(v537 + 328) = v532;
    *(v537 + 336) = sub_1005046F4;
    *(v537 + 344) = v533;
    *(v537 + 352) = sub_100504748;
    *(v537 + 360) = v536;
    swift_setDeallocating();
    sub_1004F65E4();
    v551 = v705;
    if (os_log_type_enabled(v705, v704))
    {
      v552 = swift_slowAlloc();
      v703 = swift_slowAlloc();
      v726 = v703;
      *v552 = 136447746;
      v724 = v633;
      v725 = v636;
      sub_100009DCC(&qword_1006FA000, &qword_1005A7BB8);
      v553 = sub_100572978();
      v555 = sub_1004F7708(v553, v554, &v726);

      *(v552 + 4) = v555;
      *(v552 + 12) = 2082;
      v556 = v702;
      v557 = v702 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation;
      swift_beginAccess();
      v558 = *(v666 + 48);
      v666 += 48;
      v701 = v558;
      v559 = v558(v557, 1, v664);
      v560 = 0;
      v561 = 0;
      if (!v559)
      {
        v560 = *&v557[v664[5]];
      }

      v722 = v560;
      v723 = v561;
      v562 = sub_100572978();
      v564 = sub_1004F7708(v562, v563, &v726);

      *(v552 + 14) = v564;
      *(v552 + 22) = 2082;
      v565 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
      swift_beginAccess();
      v566 = *(v667 + 48);
      v567 = v695;
      v568 = v566(v565, 1, v695);
      v569 = 0;
      v570 = 0;
      if (!v568)
      {
        v569 = *(v565 + v567[5]);
      }

      v720 = v569;
      v721 = v570;
      v571 = sub_100572978();
      v573 = sub_1004F7708(v571, v572, &v726);

      *(v552 + 24) = v573;
      *(v552 + 32) = 2082;
      v574 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
      swift_beginAccess();
      v575 = v566(v574, 1, v567);
      v576 = 0;
      v577 = 0;
      if (!v575)
      {
        v576 = *(v574 + v567[5]);
      }

      v718 = v576;
      v719 = v577;
      v578 = sub_100572978();
      v580 = sub_1004F7708(v578, v579, &v726);

      *(v552 + 34) = v580;
      *(v552 + 42) = 2082;
      v581 = v556 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v582 = v664;
      v583 = (v701)(v581, 1, v664);
      v584 = 0;
      v585 = 0;
      v586 = v556;
      if (!v583)
      {
        v584 = *(v581 + v582[5]);
      }

      v716 = v584;
      v717 = v585;
      v587 = sub_100572978();
      v589 = sub_1004F7708(v587, v588, &v726);

      *(v552 + 44) = v589;
      *(v552 + 52) = 2082;
      swift_beginAccess();

      v591 = sub_1005023A4(v590);
      v593 = v592;

      v594 = sub_1004F7708(v591, v593, &v726);

      *(v552 + 54) = v594;
      *(v552 + 62) = 2082;
      swift_beginAccess();

      v596 = sub_1005023A4(v595);
      v598 = v597;

      v599 = sub_1004F7708(v596, v598, &v726);

      *(v552 + 64) = v599;
      v600 = v705;
      _os_log_impl(&_mh_execute_header, v705, v704, "Initialized lyrics with identifier %{public}s, preferredTranslation: %{public}s, preferredTransliteration: %{public}s, currentTransliteration: %{public}s, currentTranslation: %{public}s preferredLanguageCodes: %{public}s, preferredScriptCodes: %{public}s", v552, 0x48u);
      swift_arrayDestroy();
    }

    else
    {

      v586 = v702;
    }

    sub_10001036C(v646, &qword_1006F9F68, &qword_1005A7B68);
    return v586;
  }

  v493 = [v641 songwriters];
  v494 = sub_100572D28();

  if (!(v494 >> 62))
  {
    v495 = *((v494 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v495)
    {
      goto LABEL_381;
    }

LABEL_408:

    v505 = _swiftEmptyArrayStorage;
LABEL_409:
    v509 = swift_isUniquelyReferenced_nonNull_native();
    v728 = v78;
    if ((v509 & 1) == 0)
    {
      v78 = sub_1004F6F10(0, *(v78 + 16) + 1, 1, v78);
      v728 = v78;
    }

    v510 = *(v78 + 16);
    v511 = *(v78 + 24);
    if (v510 >= v511 >> 1)
    {
      v602 = *(v78 + 16);
      v78 = sub_1004F6F10((v511 > 1), v510 + 1, 1, v78);
      v510 = v602;
      v492 = v633;
      v728 = v78;
    }

    *&v706 = v475;
    *(&v706 + 1) = v488;
    *&v707 = 0x7FF0000000000000;
    BYTE8(v707) = v683;
    *&v708 = v505;
    sub_1004FCD50(v510, &v706, &v728);
    v728 = v78;
    goto LABEL_414;
  }

  v495 = sub_100574178();
  if (!v495)
  {
    goto LABEL_408;
  }

LABEL_381:
  *&v706 = _swiftEmptyArrayStorage;
  sub_1004F656C(v495);
  if ((v495 & 0x8000000000000000) == 0)
  {
    v496 = 0;
    v497 = v494;
    v704 = (v494 & 0xC000000000000001);
    v705 = v494;
    v498 = v495;
    do
    {
      if (v704)
      {
        v499 = sub_100573F58();
      }

      else
      {
        v499 = *(v497 + 8 * v496 + 32);
      }

      v500 = v499;
      v501 = [v499 name];
      v502 = sub_1005728D8();
      v504 = v503;

      v505 = v706;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1004F7CA0(0, v505[2] + 1, 1);
        v505 = v706;
      }

      v507 = v505[2];
      v506 = v505[3];
      if (v507 >= v506 >> 1)
      {
        sub_1004F7CA0((v506 > 1), v507 + 1, 1);
        v505 = v706;
      }

      ++v496;
      v505[2] = v507 + 1;
      v508 = &v505[2 * v507];
      v508[4] = v502;
      v508[5] = v504;
      v274 = v702;
      v497 = v705;
    }

    while (v498 != v496);

    v492 = v633;
    goto LABEL_409;
  }

LABEL_429:
  __break(1u);
LABEL_430:

  v603 = v702;

  sub_10001036C(v603 + v606, &qword_1006F9F68, &qword_1005A7B68);

  sub_10001036C(v603 + v634, &qword_1006FBA10, &qword_1005A9A10);
  sub_10001036C(v603 + v607, &qword_1006F9F78, &qword_1005A7B80);
  sub_10001036C(v603 + v659, &qword_1006FBA10, &qword_1005A9A10);
  sub_10001036C(v610 + v603, &qword_1006F9F78, &qword_1005A7B80);
  sub_10001036C(v603 + v624, &qword_1006F9F78, &qword_1005A7B80);
  sub_10001036C(v603 + v647, &qword_1006F9F78, &qword_1005A7B80);
LABEL_432:

  swift_deallocPartialClassInstance();
  __break(1u);
LABEL_433:
  result = sub_100574578();
  __break(1u);
  return result;
}

uint64_t sub_1004F2A68(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_100574178();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_1004F2A8C(uint64_t a1, BOOL a2)
{
  sub_100009DCC(&qword_1006FBA10, &qword_1005A9A10);
  __chkstk_darwin();
  v4 = &v23 - v3;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9F78, &qword_1005A7B80);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = type metadata accessor for Lyrics.Transliteration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong;
  v23 = v6;
  v17 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_10000CC8C(v16 + v17, v10, &qword_1006F9F78, &qword_1005A7B80);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_100502568(v10, v14, type metadata accessor for Lyrics.Transliteration);
    v19 = sub_10056CBF8();

    v20 = type metadata accessor for Lyrics.Transliteration;
    v21 = v14;
LABEL_8:
    sub_10050211C(v21, v20);
    return v19 == 2;
  }

  sub_10001036C(v10, &qword_1006F9F78, &qword_1005A7B80);
  v18 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_10000CC8C(v16 + v18, v4, &qword_1006FBA10, &qword_1005A9A10);
  if ((*(v23 + 48))(v4, 1, v5) != 1)
  {
    sub_100502568(v4, v8, type metadata accessor for Lyrics.Translation);
    v19 = sub_10056CBF8();

    v20 = type metadata accessor for Lyrics.Translation;
    v21 = v8;
    goto LABEL_8;
  }

  sub_10001036C(v4, &qword_1006FBA10, &qword_1005A9A10);
  return a2;
}

uint64_t sub_1004F2E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v34 = a2;
  sub_100009DCC(&qword_1006FBA10, &qword_1005A9A10);
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = type metadata accessor for Lyrics.Translation(0);
  v35 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9F78, &qword_1005A7B80);
  __chkstk_darwin();
  v13 = &v32 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v32 = a3;
  v33 = a4;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_10000CC8C(v19 + v20, v13, &qword_1006F9F78, &qword_1005A7B80);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_100502568(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v23 = *&v17[*(v14 + 28)];
    a4 = v33;
    if (*(v23 + 16) && (v24 = sub_100429D94(v34, v32), (v25 & 1) != 0))
    {
      a4 = *(*(v23 + 56) + 88 * v24);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v17;
    goto LABEL_18;
  }

  sub_10001036C(v13, &qword_1006F9F78, &qword_1005A7B80);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_10000CC8C(v19 + v21, v8, &qword_1006FBA10, &qword_1005A9A10);
  v22 = (*(v35 + 48))(v8, 1, v9);
  a4 = v33;
  if (v22 != 1)
  {
    sub_100502568(v8, v11, type metadata accessor for Lyrics.Translation);
    v28 = *&v11[*(v9 + 32)];
    if (*(v28 + 16) && (v29 = sub_100429D94(v34, v32), (v30 & 1) != 0))
    {
      a4 = *(*(v28 + 56) + 88 * v29);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v11;
LABEL_18:
    sub_10050211C(v27, v26);
    return a4;
  }

  sub_10001036C(v8, &qword_1006FBA10, &qword_1005A9A10);
LABEL_7:

  return a4;
}

uint64_t sub_1004F3288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  sub_100009DCC(&qword_1006FBA10, &qword_1005A9A10);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = type metadata accessor for Lyrics.Translation(0);
  v36 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9F78, &qword_1005A7B80);
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = type metadata accessor for Lyrics.Transliteration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v18 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v33 = a3;
  v34 = a4;
  v19 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_10000CC8C(v18 + v19, v12, &qword_1006F9F78, &qword_1005A7B80);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_100502568(v12, v16, type metadata accessor for Lyrics.Transliteration);
    v22 = *&v16[*(v13 + 28)];
    v23 = v34;
    if (*(v22 + 16) && (v24 = sub_100429D94(v35, v33), (v25 & 1) != 0))
    {
      v21 = *(*(v22 + 56) + 88 * v24 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v23 + 16);
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v16;
    goto LABEL_18;
  }

  sub_10001036C(v12, &qword_1006F9F78, &qword_1005A7B80);
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_10000CC8C(v18 + v20, v7, &qword_1006FBA10, &qword_1005A9A10);
  if ((*(v36 + 48))(v7, 1, v8) != 1)
  {
    sub_100502568(v7, v10, type metadata accessor for Lyrics.Translation);
    v28 = *&v10[*(v8 + 32)];
    v29 = v34;
    if (*(v28 + 16) && (v30 = sub_100429D94(v35, v33), (v31 & 1) != 0))
    {
      v21 = *(*(v28 + 56) + 88 * v30 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v29 + 16);
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v10;
LABEL_18:
    sub_10050211C(v27, v26);
    return v21;
  }

  sub_10001036C(v7, &qword_1006FBA10, &qword_1005A9A10);
  a4 = v34;
LABEL_7:
  swift_beginAccess();
  v21 = *(a4 + 16);

  return v21;
}

double sub_1004F371C@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X8>)
{
  v55 = a2;
  sub_100009DCC(&qword_1006FBA10, &qword_1005A9A10);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin();
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9F78, &qword_1005A7B80);
  __chkstk_darwin();
  v13 = &v51 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

LABEL_7:
    swift_beginAccess();
    v24 = a4[1];
    v25 = a4[2];
    goto LABEL_8;
  }

  v52 = a3;
  v53 = a5;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_10000CC8C(v19 + v20, v13, &qword_1006F9F78, &qword_1005A7B80);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_100502568(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v27 = *&v17[*(v14 + 28)];
    if (*(v27 + 16) && (v28 = sub_100429D94(v55, v52), (v29 & 1) != 0))
    {
      v30 = *(v27 + 56) + 88 * v28;
      v31 = *(v30 + 72);
      v32 = *(v30 + 40);
      v33 = *(v30 + 56);
      v63 = *(v30 + 24);
      v64 = v32;
      v65 = v33;
      v66 = v31;
      sub_10000CC8C(&v63, &v67, &qword_1006F9F60, &qword_1005A7B60);

      a5 = v53;
      if (*(&v64 + 1))
      {
LABEL_15:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Transliteration;
        v37 = v17;
LABEL_23:
        sub_10050211C(v37, v36);
        goto LABEL_24;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      a5 = v53;
    }

    swift_beginAccess();
    v34 = a4[2];
    v63 = a4[1];
    v64 = v34;
    v35 = a4[4];
    v65 = a4[3];
    v66 = v35;
    sub_10000CC8C(&v63, v58, &qword_1006F9F60, &qword_1005A7B60);
    sub_10001036C(&v67, &qword_1006F9F60, &qword_1005A7B60);
    goto LABEL_15;
  }

  sub_10001036C(v13, &qword_1006F9F78, &qword_1005A7B80);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_10000CC8C(v19 + v21, v9, &qword_1006FBA10, &qword_1005A9A10);
  v22 = v57;
  v23 = (*(v56 + 48))(v9, 1, v57);
  a5 = v53;
  if (v23 != 1)
  {
    v38 = v54;
    sub_100502568(v9, v54, type metadata accessor for Lyrics.Translation);
    v39 = *(v38 + *(v22 + 32));
    if (*(v39 + 16) && (v40 = sub_100429D94(v55, v52), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + 88 * v40;
      v43 = *(v42 + 72);
      v44 = *(v42 + 40);
      v45 = *(v42 + 56);
      v63 = *(v42 + 24);
      v64 = v44;
      v65 = v45;
      v66 = v43;
      sub_10000CC8C(&v63, &v67, &qword_1006F9F60, &qword_1005A7B60);

      if (*(&v64 + 1))
      {
LABEL_22:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Translation;
        v37 = v38;
        goto LABEL_23;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    swift_beginAccess();
    v46 = a4[2];
    v63 = a4[1];
    v64 = v46;
    v47 = a4[4];
    v65 = a4[3];
    v66 = v47;
    sub_10000CC8C(&v63, v58, &qword_1006F9F60, &qword_1005A7B60);
    sub_10001036C(&v67, &qword_1006F9F60, &qword_1005A7B60);
    goto LABEL_22;
  }

  sub_10001036C(v9, &qword_1006FBA10, &qword_1005A9A10);
  swift_beginAccess();
  v24 = a4[1];
  v25 = a4[2];
LABEL_8:
  v67 = v24;
  v68 = v25;
  v26 = a4[4];
  v69 = a4[3];
  v70 = v26;
  sub_10000CC8C(&v67, &v63, &qword_1006F9F60, &qword_1005A7B60);
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v62 = v70;
LABEL_24:
  v48 = v60;
  *a5 = v59;
  a5[1] = v48;
  result = *&v61;
  v50 = v62;
  a5[2] = v61;
  a5[3] = v50;
  return result;
}

void sub_1004F3D50(uint64_t a1)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1004F6644(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  sub_100009DCC(&qword_1006F9F08, &unk_1005A7900);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1004F3E88(uint64_t a1)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1004F7058(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1006FA650, &qword_1005A8620, type metadata accessor for Lyrics.TextLine);
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
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for Lyrics.TextLine(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1004F3FD8(uint64_t a1)
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

  v3 = sub_1004F7578(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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

  sub_100009DCC(&qword_1006FA600, &qword_1005A85D0);
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

void sub_1004F40DC(id a1@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  if ([a1 type] == 2)
  {
    v9 = [a2 hasBackgroundVocal];
    v10 = &selRef_primaryVocalText;
    if (!v9)
    {
      v10 = &selRef_lyricsText;
    }

    v11 = [a2 *v10];
    v12 = [v11 string];

    v13 = sub_1005728D8();
    v15 = v14;

    v16 = sub_1004FF784(a2, a3, a4);
    v17 = [a2 backgroundVocals];
    if (!v17)
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      goto LABEL_8;
    }

    v18 = v17;

    sub_1004FFB38(v18, a3, a4, v30);
    v28 = v30[1];
    v29 = v30[0];
    v19 = v30[3];
    v27 = v30[2];
  }

  else
  {
    v20 = [a2 lyricsText];
    v18 = [v20 string];

    v13 = sub_1005728D8();
    v15 = v21;
    v19 = 0uLL;
    v29 = 0u;
    v16 = _swiftEmptyArrayStorage;
    v27 = 0u;
    v28 = 0u;
  }

  v26 = v19;

  v23 = v28;
  v22 = v29;
  v25 = v26;
  v24 = v27;
LABEL_8:
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v22;
  *(a5 + 40) = v23;
  *(a5 + 56) = v24;
  *(a5 + 72) = v25;
}

uint64_t sub_1004F42AC()
{
  sub_100009DCC(&qword_1006F9FA0, &qword_1005A7BA0);
  __chkstk_darwin();
  v1 = v16 - v0;
  sub_100009DCC(&qword_1006F9F70, &unk_1005A7B70);
  __chkstk_darwin();
  v3 = v16 - v2;
  sub_10056CBE8();
  v4 = sub_10056CB38();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001036C(v3, &qword_1006F9F70, &unk_1005A7B70);
    return 0;
  }

  else
  {
    v6 = sub_10056CB18();
    v8 = v7;
    (*(v5 + 8))(v3, v4);
    v9 = v6 == 26746 && v8 == 0xE200000000000000;
    if (v9 || (sub_100574498() & 1) != 0)
    {
      sub_10056CC08();
      v10 = sub_10056CBA8();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v1, 1, v10) == 1)
      {
        sub_10001036C(v1, &qword_1006F9FA0, &qword_1005A7BA0);
      }

      else
      {

        v12 = sub_10056CB98();
        v14 = v13;
        (*(v11 + 8))(v1, v10);
        v16[0] = 2975866;
        v16[1] = 0xE300000000000000;
        v17._countAndFlagsBits = v12;
        v17._object = v14;
        sub_100572A98(v17);

        return v16[0];
      }
    }
  }

  return v6;
}

BOOL sub_1004F454C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_100574678();
  v4 = qword_1005A8718[a1];
  sub_100574688(v4);
  v5 = sub_1005746C8();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_1005A8718[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1004F462C(uint64_t a1, uint64_t a2)
{

  sub_100009DCC(&qword_1006FA000, &qword_1005A7BB8);
  return sub_100572978();
}

uint64_t sub_1004F4674(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v4 = a1 + *a2;
  swift_beginAccess();
  v5 = (a3)(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
  }

  sub_100009DCC(&qword_1006FA000, &qword_1005A7BB8);
  return sub_100572978();
}

uint64_t sub_1004F4748@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v4;
  a2[1] = v5;
}

Swift::Void __swiftcall Lyrics.updateTransliterations()()
{
  sub_100009DCC(&qword_1006F9F78, &qword_1005A7B80);
  __chkstk_darwin();
  v2 = &v10 - v1;
  if (qword_1006F9DA8 != -1)
  {
    swift_once();
  }

  if (sub_1004F454C(3, *(static LyricsOptionsManager.shared + 40)))
  {
    v3 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
    swift_beginAccess();
    sub_10000CC8C(v0 + v3, v2, &qword_1006F9F78, &qword_1005A7B80);
    v4 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_10008B71C(v2, v0 + v4, &qword_1006F9F78, &qword_1005A7B80);
    swift_endAccess();
    v5 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_10000CC8C(v0 + v5, v2, &qword_1006F9F78, &qword_1005A7B80);
  }

  else
  {
    v7 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_10000CC8C(v0 + v7, v2, &qword_1006F9F78, &qword_1005A7B80);
    v8 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_10008B71C(v2, v0 + v8, &qword_1006F9F78, &qword_1005A7B80);
    swift_endAccess();
    v9 = type metadata accessor for Lyrics.Transliteration(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  }

  v6 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_10008B71C(v2, v0 + v6, &qword_1006F9F78, &qword_1005A7B80);
  swift_endAccess();
}

void Lyrics.line(before:useOriginalLines:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v6 = sub_1004E99A0(*(v3 + 48));
    if (!v6[2])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v3 + 40);

    if (!v6[2])
    {
LABEL_6:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
LABEL_28:

      return;
    }
  }

  sub_10002EA8C((v6 + 4), &v34);
  v8 = *(&v35 + 1);
  v7 = v36;
  sub_10000C8CC(&v34, *(&v35 + 1));
  v9 = (*(*(v7 + 8) + 8))(v8);
  sub_100010474(&v34);
  if (v9 > a3)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  v27 = a2;
  if (!v10)
  {
    goto LABEL_13;
  }

  sub_10002EA8C(&v6[5 * v10 - 1], &v34);
  sub_100009DCC(&qword_1006FA028, &unk_1005A96A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v6[2])
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = v6[2];
    if (v11)
    {
LABEL_12:
      v12 = v11 - 1;
      sub_100010474(&v6[5 * v11 - 1]);
      v6[2] = v12;
LABEL_13:
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v13 = v6[2];
      if (!v13)
      {
LABEL_27:
        v26 = v35;
        *v27 = v34;
        *(v27 + 16) = v26;
        *(v27 + 32) = v36;
        goto LABEL_28;
      }

      v14 = 0;
      v15 = v13 - 1;
      v16 = v6 + 4;
      v17 = v13 - 1;
      while (1)
      {
        if (__OFSUB__(v17, v14))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v18 = v14 + (v17 - v14) / 2;
        if (__OFADD__(v14, (v17 - v14) / 2))
        {
          goto LABEL_30;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v18 >= v6[2])
        {
          goto LABEL_32;
        }

        sub_10002EA8C(&v16[5 * v18], v31);
        v20 = v32;
        v19 = v33;
        sub_10000C8CC(v31, v32);
        v21 = (*(*(v19 + 8) + 8))(v20);
        v22 = v21;
        if (v18 >= v15)
        {
          break;
        }

        if (v18 + 1 >= v6[2])
        {
          goto LABEL_33;
        }

        sub_10002EA8C(&v16[5 * v18 + 5], v28);
        v24 = v29;
        v23 = v30;
        sub_10000C8CC(v28, v29);
        v25 = (*(*(v23 + 8) + 8))(v24);
        sub_100010474(v28);
        if (v22 > a3)
        {
          goto LABEL_16;
        }

        v14 = v18 + 1;
        if (v25 >= a3)
        {
LABEL_26:
          sub_10001036C(&v34, &qword_1006FA030, &unk_1005A7BD0);
          sub_10002EA8C(v31, &v34);
          sub_100010474(v31);
          goto LABEL_27;
        }

LABEL_17:
        sub_100010474(v31);
        if (v17 < v14)
        {
          goto LABEL_27;
        }
      }

      if (v21 <= a3)
      {
        goto LABEL_26;
      }

LABEL_16:
      v17 = v18 - 1;
      goto LABEL_17;
    }
  }

  else
  {
LABEL_35:
    v6 = sub_1004FCDE4(v6);
    v11 = v6[2];
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void Lyrics.line(after:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000C8CC(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v9 = *(v3 + 40);
  if (v8 >= *(v9 + 16))
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_11;
  }

  v10 = v9 + 40 * v8;
  sub_10002EA8C(v10 + 32, v11);
  sub_100009DCC(&qword_1006FA028, &unk_1005A96A0);
  if (swift_dynamicCast())
  {

    goto LABEL_6;
  }

  if (v8 >= *(v9 + 16))
  {
    goto LABEL_12;
  }

  sub_10002EA8C(v10 + 32, a2);
}