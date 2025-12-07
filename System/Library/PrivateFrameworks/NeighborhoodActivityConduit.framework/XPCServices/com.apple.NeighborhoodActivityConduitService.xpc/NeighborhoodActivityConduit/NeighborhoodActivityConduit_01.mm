void sub_10001D85C(char a1)
{
  if (qword_10011DC68 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123140);
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2658();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    aBlock[0] = v6;
    *v5 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0x757165526C6C7570;
      }

      else
      {
        v7 = 0x65536C61756E616DLL;
      }

      if (a1 == 1)
      {
        v8 = 0xEB00000000747365;
      }

      else
      {
        v8 = 0xEF6E6F697463656CLL;
      }
    }

    else
    {
      v8 = 0x80000001000EA4C0;
      v7 = 0xD000000000000010;
    }

    v9 = sub_100029C70(v7, v8, aBlock);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Send laguna push to TV event, context: %s", v5, 0xCu);
    sub_10000E9DC(v6);
  }

  sub_10000ADE4(&qword_10011EAF0, &qword_1000F0F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = 0x747865746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v11 = sub_1000E2328();

  *(inited + 48) = v11;
  v12 = sub_10000C530(inited);
  swift_setDeallocating();
  sub_10001D30C(inited + 32);
  sub_10001CBB0(v12);
  v14 = v13;

  v15 = sub_1000E2328();
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  aBlock[4] = sub_10001DBD0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001CD90;
  aBlock[3] = &unk_100113700;
  v17 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v17);
}

void *sub_10001DBD4(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1000E2968();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v29 = _swiftEmptyArrayStorage;
    sub_1000E2AE8();
    result = sub_1000E2908();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v29 = _swiftEmptyArrayStorage;
  sub_1000E2AE8();
  result = sub_1000E28D8();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1000D48AC(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 handle];

    sub_1000E2AC8();
    sub_1000E2AF8();
    sub_1000E2B08();
    result = sub_1000E2AD8();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_1000E2928())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10000ADE4(&qword_10011F940, &unk_1000F3600);
      v7 = sub_1000E2618();
      sub_1000E29D8();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_10000A848(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = (1 << *(a1 + 32));
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = (__clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0);
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_10000A848(v10, v9, 0);
            v15 = (__clz(__rbit64(v22)) + v19);
            goto LABEL_27;
          }
        }

        result = sub_10000A848(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

unint64_t *sub_10001DEEC(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_10002A1A4(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
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
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1000E0B08();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1000E0B28();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1000E0B08();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1000E0B28();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_10000ADE4(&unk_10011EB60, &qword_1000F0FB8);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000F07C0;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1000E2348();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_10002A1A4((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_10001E268(uint64_t result)
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
      v10 = *(v1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_100015488(*v10, v12, *(v10 + 16));
      sub_1000D27B8(v14, v11, v12, v13);
      result = sub_1000154A0(v14[0], v14[1], v15);
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

void sub_10001E3E8(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1000E2918();
    sub_10000CAAC(0, a2, a3);
    sub_10001B174(a4, a2, a3);
    sub_1000E2628();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_10000A840(v6);
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1000E29A8())
      {
        sub_10000CAAC(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

id sub_10001E5DC()
{
  result = [objc_allocWithZone(CNContactStore) init];
  qword_10011EB10 = result;
  return result;
}

id sub_10001E610()
{
  if (qword_10011DBE8 != -1)
  {
    swift_once();
  }

  result = [objc_allocWithZone(CNFavorites) initWithContactStore:qword_10011EB10];
  qword_10011EB18 = result;
  return result;
}

id sub_10001E688@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = sub_1000E2B68();
    if (!result)
    {
      goto LABEL_6;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_6:
      *a2 = result;
      return result;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    result = sub_1000E2A98();
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 32);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001E70C(uint64_t a1)
{
  v26 = _swiftEmptyDictionarySingleton;
  v2 = a1 + 64;
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

  v8 = 0;
  while (1)
  {
    v9 = v8;
    if (!v5)
    {
      break;
    }

LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a1 + 48) + 16 * (v10 | (v8 << 6)));
    v13 = *v11;
    v12 = v11[1];
    swift_getKeyPath();

    swift_getAtKeyPath();

    if (v27)
    {
      v14 = v26;
      v15 = v26[2];
      if (v26[3] <= v15)
      {
        sub_10001F60C(v15 + 1, 1, &unk_10011DF50, &qword_1000F04C0);
        v14 = _swiftEmptyDictionarySingleton;
      }

      v26 = v14;
      sub_1000E2D48();
      sub_1000E2398();
      result = sub_1000E2D68();
      v16 = v26 + 8;
      v17 = -1 << *(v26 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~v26[(v18 >> 6) + 8]) == 0)
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
          v24 = v16[v19];
          if (v24 != -1)
          {
            v20 = __clz(__rbit64(~v24)) + (v19 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v20 = __clz(__rbit64((-1 << v18) & ~v26[(v18 >> 6) + 8])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
      *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v25 = (v26[6] + 16 * v20);
      *v25 = v13;
      v25[1] = v12;
      *(v26[7] + 8 * v20) = v27;
      ++v26[2];
    }

    else
    {
    }
  }

  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v26;
    }

    v5 = *(v2 + 8 * v8);
    ++v9;
    if (v5)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10001E98C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_1000E0DE8();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10000ADE4(&qword_10011DFC0, &qword_1000F3500);
  v42 = v4;
  result = sub_1000E2B88();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_1000E2D48();
      sub_1000E2398();
      result = sub_1000E2D68();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_10001ED0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000ADE4(&qword_10011EBB8, &unk_1000F3440);
  v35 = v4;
  result = sub_1000E2B88();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_1000E2808(*(v7 + 40));
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
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

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10001EFA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000E0D68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10000ADE4(&qword_10011DFD0, &qword_1000F34D0);
  v40 = v4;
  result = sub_1000E2B88();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_100022314();
      result = sub_1000E22D8();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_10001F350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000ADE4(&unk_10011DF30, &unk_1000F04A0);
  v34 = v4;
  result = sub_1000E2B88();
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

      sub_1000E2D48();
      sub_1000E2398();
      result = sub_1000E2D68();
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

uint64_t sub_10001F60C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  sub_10000ADE4(a3, a4);
  v37 = v6;
  result = sub_1000E2B88();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1000E2D48();
      sub_1000E2398();
      result = sub_1000E2D68();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_10001F8A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1000E0D68();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10000ADE4(&unk_10011EB90, &qword_1000F0500);
  v40 = v4;
  result = sub_1000E2B88();
  v10 = result;
  if (*(v8 + 16))
  {
    v44 = v5;
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v8;
    v39 = v6;
    v42 = (v6 + 32);
    v17 = result + 64;
    v18 = v41;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v42)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v18, v25, v44);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      sub_100022314();
      result = sub_1000E22D8();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v18 = v41;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v18 = v41;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v42)(*(v10 + 48) + v43 * v19, v18, v44);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v38;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v12, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_10001FC54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10000ADE4(&qword_10011DF70, &qword_1000F04D0);
  v33 = v4;
  result = sub_1000E2B88();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_10000C154(v24, v34);
      }

      else
      {
        sub_1000153C0(v24, v34);
      }

      sub_1000E2D48();
      sub_1000E2398();
      result = sub_1000E2D68();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_10000C154(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_10001FF0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v50 = &v39 - v6;
  v7 = sub_1000E0D68();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  sub_10000ADE4(&unk_10011DF90, &qword_1000F04E8);
  v46 = v4;
  result = sub_1000E2B88();
  v13 = result;
  if (*(v11 + 16))
  {
    v49 = v10;
    v40 = v2;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v8 + 16);
    v42 = v8;
    v47 = (v8 + 32);
    v20 = result + 64;
    v43 = v11;
    v44 = v7;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v48 = *(v8 + 72);
      v27 = v26 + v48 * v25;
      if (v46)
      {
        (*v47)(v49, v27, v7);
        v28 = *(v11 + 56);
        v29 = *(v45 + 72);
        sub_10000CAF4(v28 + v29 * v25, v50);
      }

      else
      {
        (*v41)(v49, v27, v7);
        v30 = *(v11 + 56);
        v29 = *(v45 + 72);
        sub_10002236C(v30 + v29 * v25, v50);
      }

      sub_100022314();
      result = sub_1000E22D8();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v7 = v44;
      (*v47)((*(v13 + 48) + v48 * v21), v49, v44);
      result = sub_10000CAF4(v50, *(v13 + 56) + v29 * v21);
      ++*(v13 + 16);
      v8 = v42;
      v11 = v43;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v3 = v13;
  return result;
}

char *sub_100020370(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1000E2968();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_10000A840(v8);
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return a2;
}

void sub_100020430(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
    sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    sub_1000E2628();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_1000E29A8())
      {
        goto LABEL_22;
      }

      sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
      swift_dynamicCast();
      v14 = v18;
      if (!v18)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    v12 = v4;
    v13 = v5;
    if (!v5)
    {
      break;
    }

LABEL_14:
    v5 = (v13 - 1) & v13;
    v14 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_22;
    }

LABEL_18:
    v15 = [v14 value];
    if (!v15)
    {
      sub_1000E2338();
      v15 = sub_1000E2328();
    }

    v16 = v1;
    v17 = TUPreferredFaceTimeBundleIdentifier();
    if (!v17)
    {
      sub_1000E2338();
      v17 = sub_1000E2328();
    }

    v10 = [objc_opt_self() allowCallForDestinationID:v15 providerIdentifier:v17];

    v11 = [v10 isFromBlockList];
    v1 = v16;
    if (v11)
    {
LABEL_22:
      sub_10000A840(v1);
      return;
    }
  }

  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_22;
    }

    v13 = *(v2 + 8 * v4);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_1000206F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000F0F20;
  *(v6 + 32) = CNContactNamePrefixKey;
  *(v6 + 40) = CNContactNameSuffixKey;
  *(v6 + 48) = CNContactGivenNameKey;
  *(v6 + 56) = CNContactMiddleNameKey;
  *(v6 + 64) = CNContactFamilyNameKey;
  *(v6 + 72) = CNContactNicknameKey;
  *(v6 + 80) = CNContactOrganizationNameKey;
  v37 = v6;
  if (a2)
  {
    if (!a4)
    {
      sub_1000E2338();
    }

    v15 = CNContactNamePrefixKey;
    v16 = CNContactNameSuffixKey;
    v17 = CNContactGivenNameKey;
    v18 = CNContactMiddleNameKey;
    v19 = CNContactFamilyNameKey;
    v20 = CNContactNicknameKey;
    v21 = CNContactOrganizationNameKey;

    sub_1000E2328();

    sub_1000E2448();
    if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000E2488();
    }

    sub_1000E24A8();
    v7 = v37;
  }

  else
  {
    v7 = v6;
    v8 = CNContactNamePrefixKey;
    v9 = CNContactNameSuffixKey;
    v10 = CNContactGivenNameKey;
    v11 = CNContactMiddleNameKey;
    v12 = CNContactFamilyNameKey;
    v13 = CNContactNicknameKey;
    v14 = CNContactOrganizationNameKey;
  }

  if (qword_10011DBE8 != -1)
  {
    swift_once();
  }

  v22 = qword_10011EB10;
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = sub_100029B64(*(a1 + 16), 0);
    v25 = sub_10002A83C(&v38, v24 + 4, v23, a1);
    v26 = v38;

    sub_10000A840(v26);
    if (v25 != v23)
    {
      __break(1u);
    }
  }

  v27.super.isa = sub_1000E2458().super.isa;

  if (v7 >> 62)
  {
    sub_10000ADE4(&qword_10011EB28, &qword_1000F0F68);
    sub_1000E2B58();
  }

  else
  {
    sub_1000E2C88();
  }

  sub_10000ADE4(&qword_10011EB28, &qword_1000F0F68);
  isa = sub_1000E2458().super.isa;

  v38 = 0;
  v29 = [v22 tu_contactsForContactHandles:v27.super.isa keyDescriptors:isa error:&v38];

  v30 = v38;
  if (v29)
  {
    sub_10000ADE4(&qword_10011EB30, &qword_1000F0F70);
    v31 = sub_1000E22B8();
    v32 = v30;

    v33 = sub_10001E70C(v31);
  }

  else
  {
    v34 = v38;

    sub_1000E0BE8();

    swift_willThrow();

    return 0;
  }

  return v33;
}

char *sub_100020B10(id a1)
{
  if (qword_10011DBE8 != -1)
  {
LABEL_39:
    v27 = a1;
    swift_once();
    a1 = v27;
  }

  v1 = qword_10011EB10;
  sub_10001DBD4(a1);
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  isa = sub_1000E2458().super.isa;

  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000F0F30;
  *(v3 + 32) = CNContactIdentifierKey;
  *(v3 + 40) = CNContactImageDataAvailableKey;
  v4 = CNContactIdentifierKey;
  v5 = CNContactImageDataAvailableKey;
  sub_10000ADE4(&qword_10011EB28, &qword_1000F0F68);
  v6 = sub_1000E2458().super.isa;

  v41[0] = 0;
  v7 = [v1 tu_contactsForHandles:isa keyDescriptors:v6 error:v41];

  v8 = v41[0];
  if (v7)
  {
    sub_10000ADE4(&qword_10011EB30, &qword_1000F0F70);
    sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
    v9 = sub_1000E22B8();
    v10 = v8;

    v41[0] = _swiftEmptyArrayStorage;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    v16 = _swiftEmptyArrayStorage;
    while (v13)
    {
LABEL_11:
      v18 = *(*(v9 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
      if (v18 >> 62)
      {
        a1 = sub_1000E2B68();
      }

      else
      {
        a1 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v13 &= v13 - 1;
      if (a1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {

          sub_1000E2A98();
        }

        else
        {
          if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v19 = *(v18 + 32);
        }

        sub_1000E2448();
        if (*((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E2488();
        }

        a1 = sub_1000E24A8();
        v16 = v41[0];
      }
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v17 >= v14)
      {
        break;
      }

      v13 = *(v9 + 64 + 8 * v17);
      ++v15;
      if (v13)
      {
        v15 = v17;
        goto LABEL_11;
      }
    }

    v41[0] = _swiftEmptyArrayStorage;
    if (v16 >> 62)
    {
      a1 = sub_1000E2B68();
      v20 = a1;
      if (a1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
LABEL_24:
        v21 = 0;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            a1 = sub_1000E2A98();
          }

          else
          {
            if (v21 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            a1 = *(v16 + 8 * v21 + 32);
          }

          v22 = a1;
          v23 = (v21 + 1);
          if (__OFADD__(v21, 1))
          {
            goto LABEL_37;
          }

          if ([a1 imageDataAvailable])
          {
            sub_1000E2AC8();
            sub_1000E2AF8();
            sub_1000E2B08();
            a1 = sub_1000E2AD8();
          }

          else
          {
          }

          ++v21;
          if (v23 == v20)
          {
            v26 = v41[0];
            goto LABEL_42;
          }
        }
      }
    }

    v26 = _swiftEmptyArrayStorage;
LABEL_42:

    if ((v26 & 0x8000000000000000) != 0 || (v26 & 0x4000000000000000) != 0)
    {
      goto LABEL_59;
    }

    for (i = *(v26 + 16); i; i = sub_1000E2B68())
    {
      v29 = 0;
      v25 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v30 = sub_1000E2A98();
        }

        else
        {
          if (v29 >= *(v26 + 16))
          {
            goto LABEL_58;
          }

          v30 = *(v26 + 8 * v29 + 32);
        }

        v31 = v30;
        v32 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        v33 = [v30 identifier];
        v34 = sub_1000E2338();
        v36 = v35;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1000D2030(0, *(v25 + 2) + 1, 1, v25);
        }

        v38 = *(v25 + 2);
        v37 = *(v25 + 3);
        if (v38 >= v37 >> 1)
        {
          v25 = sub_1000D2030((v37 > 1), v38 + 1, 1, v25);
        }

        *(v25 + 2) = v38 + 1;
        v39 = &v25[16 * v38];
        *(v39 + 4) = v34;
        *(v39 + 5) = v36;
        ++v29;
        if (v32 == i)
        {
          goto LABEL_61;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      ;
    }

    v25 = _swiftEmptyArrayStorage;
LABEL_61:
  }

  else
  {
    v24 = v41[0];
    sub_1000E0BE8();

    swift_willThrow();

    return _swiftEmptyArrayStorage;
  }

  return v25;
}

id sub_1000210D4(uint64_t a1, uint64_t a2, void **a3, SEL *a4, uint64_t a5)
{
  if (qword_10011DBE8 != -1)
  {
    swift_once();
  }

  v10 = qword_10011EB10;
  v11 = objc_opt_self();
  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F07C0;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;

  isa = sub_1000E2458().super.isa;

  v14 = [v11 predicateForContactsWithIdentifiers:isa];

  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000F0F40;
  v16 = *a3;
  *(v15 + 32) = *a3;
  v17 = v16;
  sub_10000ADE4(&qword_10011EB28, &qword_1000F0F68);
  v18 = sub_1000E2458().super.isa;

  v47 = 0;
  v19 = [v10 unifiedContactsMatchingPredicate:v14 keysToFetch:v18 error:&v47];

  v20 = v47;
  if (!v19)
  {
    v33 = v47;
    sub_1000E0BE8();

    swift_willThrow();

    goto LABEL_15;
  }

  sub_10000CAAC(0, &qword_10011EB88, CNContact_ptr);
  v21 = sub_1000E2468();
  v22 = v20;

  if (v21 >> 62)
  {
    if (sub_1000E2B68())
    {
      goto LABEL_6;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = sub_1000E2A98();
  }

  else
  {
    if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v23 = *(v21 + 32);
  }

  v24 = v23;

  v25 = [v24 *a4];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1000E0C88();
    v29 = v28;

    v30 = objc_allocWithZone(TUContactImageResponse);
    sub_1000123E0(v27, v29);
    v31.super.isa = sub_1000E0C78().super.isa;
    sub_100006660(v27, v29);
    v32 = [v30 initWithImageData:v31.super.isa type:a5];

LABEL_20:
    sub_100006660(v27, v29);
    return v32;
  }

LABEL_15:
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v35 = sub_1000DFEE0(inited);
  swift_setDeallocating();
  sub_10000EC0C(inited + 32);
  v36 = sub_1000E2338();
  v38 = sub_1000206F8(v35, 1, v36, v37);

  if (v38)
  {
    if (*(v38 + 16) && (v39 = sub_10000B2D0(a1, a2), (v40 & 1) != 0))
    {
      v41 = *(*(v38 + 56) + 8 * v39);

      v42 = [v41 *a4];
      if (v42)
      {
        v43 = v42;
        v27 = sub_1000E0C88();
        v29 = v44;

        v45 = objc_allocWithZone(TUContactImageResponse);
        sub_1000123E0(v27, v29);
        v31.super.isa = sub_1000E0C78().super.isa;
        sub_100006660(v27, v29);
        v32 = [v45 initWithImageData:v31.super.isa type:a5];

        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  return 0;
}

id sub_100021588(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    goto LABEL_4;
  }

  if (a3 == 2)
  {
    v4 = &CNContactWatchWallpaperImageDataKey;
    v5 = &selRef_watchWallpaperImageData;
    v6 = 2;
    return sub_1000210D4(a1, a2, v4, v5, v6);
  }

  if (a3 == 1)
  {
LABEL_4:
    v4 = &CNContactThumbnailImageDataKey;
    v5 = &selRef_thumbnailImageData;
    v6 = 1;
    return sub_1000210D4(a1, a2, v4, v5, v6);
  }

  if (qword_10011DC60 != -1)
  {
    swift_once();
  }

  v10 = sub_1000E1F08();
  sub_1000049D0(v10, qword_100123128);

  v11 = sub_1000E1EE8();
  v12 = sub_1000E2678();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v13 = 136315394;
    *(v13 + 4) = sub_100029C70(a1, a2, &v17);
    *(v13 + 12) = 2080;
    sub_10000ADE4(&unk_10011EBA0, &qword_1000F0FC0);
    v14 = sub_1000E2358();
    v16 = sub_100029C70(v14, v15, &v17);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "[GetContactImage] Error retrieving image for %s with unsupported type %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  TUMakeNeighborhoodConduitError();
  return swift_willThrow();
}

void *sub_1000217A8()
{
  sub_10000CAAC(0, &unk_10011EB78, NSPredicate_ptr);
  v25 = sub_1000E2648();
  if (qword_10011DBE8 != -1)
  {
    swift_once();
  }

  v24 = qword_10011EB10;
  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000F0F50;
  *(v0 + 32) = CNContactIdentifierKey;
  *(v0 + 40) = CNContactNamePrefixKey;
  *(v0 + 48) = CNContactNameSuffixKey;
  *(v0 + 56) = CNContactGivenNameKey;
  *(v0 + 64) = CNContactMiddleNameKey;
  *(v0 + 72) = CNContactFamilyNameKey;
  *(v0 + 80) = CNContactNicknameKey;
  *(v0 + 88) = CNContactPhoneNumbersKey;
  *(v0 + 96) = CNContactEmailAddressesKey;
  *(v0 + 104) = CNContactOrganizationNameKey;
  v1 = CNContactIdentifierKey;
  v2 = CNContactNamePrefixKey;
  v3 = CNContactNameSuffixKey;
  v4 = CNContactGivenNameKey;
  v5 = CNContactMiddleNameKey;
  v6 = CNContactFamilyNameKey;
  v7 = CNContactNicknameKey;
  v8 = CNContactPhoneNumbersKey;
  v9 = CNContactEmailAddressesKey;
  v10 = CNContactOrganizationNameKey;
  sub_10000ADE4(&qword_10011EB28, &qword_1000F0F68);
  isa = sub_1000E2458().super.isa;

  v26 = 0;
  v12 = [v24 unifiedContactsMatchingPredicate:v25 keysToFetch:isa error:&v26];

  v13 = v26;
  if (v12)
  {
    sub_10000CAAC(0, &qword_10011EB88, CNContact_ptr);
    v14 = sub_1000E2468();
    v15 = v13;
  }

  else
  {
    v16 = v26;
    sub_1000E0BE8();

    swift_willThrow();
    if (qword_10011DC60 != -1)
    {
      swift_once();
    }

    v17 = sub_1000E1F08();
    sub_1000049D0(v17, qword_100123128);
    swift_errorRetain();
    v18 = sub_1000E1EE8();
    v19 = sub_1000E2678();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v22;
      *v21 = v22;
      _os_log_impl(&_mh_execute_header, v18, v19, "[GetContacts] Error retrieving contacts: %@", v20, 0xCu);
      sub_1000222AC(v21);
    }

    else
    {
    }

    return _swiftEmptyArrayStorage;
  }

  return v14;
}

char *sub_100021B70()
{
  if (qword_10011DBF0 != -1)
  {
LABEL_22:
    swift_once();
  }

  v0 = [qword_10011EB18 entries];
  sub_10000CAAC(0, &unk_10011EB40, CNFavoritesEntry_ptr);
  v1 = sub_1000E2468();

  if (v1 >> 62)
  {
    v2 = sub_1000E2B68();
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_24;
    }
  }

  v3 = 0;
  do
  {
    v4 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = sub_1000E2A98();
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v3 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = [v5 contactProperty];
      if (v7)
      {
        break;
      }

LABEL_7:
      ++v4;
      if (v3 == v2)
      {
        goto LABEL_24;
      }
    }

    v8 = v7;
    v9 = [v7 contact];

    if (!v9)
    {
      goto LABEL_7;
    }

    sub_1000E2448();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1000E2488();
    }

    sub_1000E24A8();
  }

  while (v3 != v2);
LABEL_24:

  v10 = sub_1000D4DD8(_swiftEmptyArrayStorage);

  v11 = sub_100020370(v10, sub_10002BA7C, sub_10002A994);

  return v11;
}

void *sub_100021DD8()
{
  v0 = sub_100021B70();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000E2B68())
  {
    v3 = 0;
    v17 = v1 & 0xFFFFFFFFFFFFFF8;
    v18 = v1 & 0xC000000000000001;
    v16 = i;
    while (1)
    {
      if (v18)
      {
        v4 = sub_1000E2A98();
      }

      else
      {
        if (v3 >= *(v17 + 16))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 tuHandlesForPhoneNumbers];
      sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
      v8 = sub_1000E2468();

      v9 = v1;
      v10 = sub_1000D4F64(v8);

      v11 = [v5 tuHandlesForEmailAddresses];
      v12 = sub_1000E2468();

      v13 = sub_1000D4F64(v12);

      v14 = v10;
      v1 = v9;
      sub_10001E3E8(v14, &unk_10011F930, TUHandle_ptr, &qword_10011EA60, sub_1000D2B3C);
      sub_10001E3E8(v13, &unk_10011F930, TUHandle_ptr, &qword_10011EA60, sub_1000D2B3C);

      ++v3;
      if (v6 == v16)
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

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100021FF0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1000E2208();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000E2288();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v25 = a2;

  v26._countAndFlagsBits = 43;
  v26._object = 0xE100000000000000;
  sub_1000E23A8(v26);
  v27._countAndFlagsBits = a3;
  v27._object = a4;
  sub_1000E23A8(v27);
  sub_1000E2278();
  sub_100005D60(&v24);

  sub_1000E2268();
  sub_1000E21F8();
  (*(v9 + 8))(v11, v8);
  v16 = v23[1];
  v17 = v23[2];
  (*(v13 + 8))(v15, v12);
  v24 = sub_10001DEEC(v16, v17);
  sub_10000ADE4(&qword_10011EB50, &qword_1000F0FB0);
  sub_100002C64(&qword_10011EB58, &qword_10011EB50, &qword_1000F0FB0, &protocol conformance descriptor for [A]);
  v18 = sub_1000E2308();
  v20 = v19;
  sub_100006660(v16, v17);

  v24 = sub_1000E2338();
  v25 = v21;
  v28._countAndFlagsBits = v18;
  v28._object = v20;
  sub_1000E23A8(v28);

  return v24;
}

uint64_t sub_1000222AC(uint64_t a1)
{
  v2 = sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100022314()
{
  result = qword_1001201B0;
  if (!qword_1001201B0)
  {
    sub_1000E0D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001201B0);
  }

  return result;
}

uint64_t sub_10002236C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&qword_10011EBB0, &qword_1000F04F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000223DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10001223C(a3, v22 - v9);
  v11 = sub_1000E2538();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000033C8(v10, &unk_10011EA50, &qword_1000F0D30);
  }

  else
  {
    sub_1000E2528();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1000E24B8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1000E2378() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

      return v20;
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

  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000226A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_10001223C(a3, v24 - v11);
  v13 = sub_1000E2538();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000033C8(v12, &unk_10011EA50, &qword_1000F0D30);
  }

  else
  {
    sub_1000E2528();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000E24B8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1000E2378() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100022960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001223C(a3, v25 - v10);
  v12 = sub_1000E2538();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000033C8(v11, &unk_10011EA50, &qword_1000F0D30);
  }

  else
  {
    sub_1000E2528();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000E24B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000E2378() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

      return v23;
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

  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100022C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001223C(a3, v25 - v10);
  v12 = sub_1000E2538();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000033C8(v11, &unk_10011EA50, &qword_1000F0D30);
  }

  else
  {
    sub_1000E2528();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000E24B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000E2378() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000ADE4(&qword_10011EE08, &qword_1000F1260);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

      return v22;
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

  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000ADE4(&qword_10011EE08, &qword_1000F1260);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100022F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001223C(a3, v25 - v10);
  v12 = sub_1000E2538();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000033C8(v11, &unk_10011EA50, &qword_1000F0D30);
  }

  else
  {
    sub_1000E2528();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000E24B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000E2378() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

      return v22;
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

  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000ADE4(&qword_10011ED40, &qword_1000F1188);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100023258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10001223C(a3, v25 - v10);
  v12 = sub_1000E2538();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000033C8(v11, &unk_10011EA50, &qword_1000F0D30);
  }

  else
  {
    sub_1000E2528();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1000E24B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1000E2378() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10000ADE4(&qword_10011ED88, &qword_1000F11D8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);

      return v22;
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

  sub_1000033C8(a3, &unk_10011EA50, &qword_1000F0D30);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10000ADE4(&qword_10011ED88, &qword_1000F11D8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10002355C()
{
  v0 = sub_1000E1F08();
  sub_10002B948(v0, qword_10011EBD0);
  sub_1000049D0(v0, qword_10011EBD0);
  return sub_1000E1EF8();
}

void sub_1000235DC()
{
  v0 = [objc_opt_self() sharedInstance];
  if (qword_10011DCB8 != -1)
  {
    swift_once();
  }

  v1 = qword_1001231D8;
  v2 = qword_10011DC20;
  swift_retain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230E8;
  v4 = objc_allocWithZone(TUFeatureFlags);

  v5 = [v4 init];
  v6 = sub_10002B264(v0, v1, v3, v5);

  qword_1001230C8 = v6;
}

uint64_t sub_10002370C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_10002372C, a4, 0);
}

uint64_t sub_10002372C()
{
  v1 = *(v0 + 16);
  v2 = sub_1000036AC(*(v0 + 24), *(*(v0 + 24) + 24));
  sub_10002AF90(*v2, v1);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002379C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return _swift_task_switch(sub_100023844, 0, 0);
}

uint64_t sub_100023844()
{
  if (qword_10011DBF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  v0[24] = sub_1000049D0(v1, qword_10011EBD0);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Started observing calls...", v4, 2u);
  }

  v5 = v0[20];

  sub_1000036AC(v5, v5[3]);
  type metadata accessor for CallPublisher();
  sub_1000DCE7C(v0 + 7);
  v6 = v0[10];
  v7 = sub_1000036AC(v0 + 7, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_100006FD8(v0 + 2);
  sub_1000E25C8();

  sub_10000E9DC(v0 + 7);
  swift_beginAccess();
  sub_1000037BC((v0 + 2), v0[5]);
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_10000319C;

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v0 + 19, 0, 0);
}

void sub_100023B10()
{
  if (qword_10011DBF8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000E1F08();
  sub_1000049D0(v0, qword_10011EBD0);
  oslog = sub_1000E1EE8();
  v1 = sub_1000E2698();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Stopped observing calls...", v2, 2u);
  }
}

uint64_t sub_100023BF8()
{
  v1 = *(*v0 + 192);

  return _swift_task_switch(sub_100006CF4, v1, 0);
}

uint64_t sub_100023D24()
{
  v10 = v0;
  v1 = v0[34];
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_100029BE8(*(v2 + 16), 0);
    v5 = sub_10002A9B0(&v9, v4 + 4, v3, v2);
    v6 = v9;

    sub_10000A840(v6);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = _swiftEmptyArrayStorage;
LABEL_5:
  v0[36] = v4;
  v7 = v0[24];

  return _swift_task_switch(sub_100023E34, v7, 0);
}

uint64_t sub_100023E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3[36];
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    v5 = sub_1000E2B68();
    v3[37] = v5;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    v3[37] = v5;
    if (v5)
    {
LABEL_4:
      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {
        v6 = v3[36];
        v3[38] = 0;
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = sub_1000E2A98();
        }

        else
        {
        }

        v3[39] = v7;
        a2 = v3[35];
        v5 = sub_100023F64;
        a3 = 0;
      }

      return _swift_task_switch(v5, a2, a3);
    }
  }

  v9 = v3[27];
  v8 = v3[28];

  sub_100006660(v9, v8);

  v10 = v3[1];

  return v10();
}

uint64_t sub_100023F64()
{
  if (*(*(v0 + 312) + 72))
  {

    v6._countAndFlagsBits = 0x5654656C707041;
    v6._object = 0xE700000000000000;
    v1 = sub_1000E2408(v6);

    v2 = *(v0 + 192);
    if (v1)
    {
      v3 = sub_100024148;
    }

    else
    {
      v3 = sub_100024030;
    }
  }

  else
  {
    v2 = *(v0 + 192);
    v3 = sub_10002BA74;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100024030()
{

  v1 = v0[38] + 1;
  if (v1 == v0[37])
  {
    v3 = v0[27];
    v2 = v0[28];

    sub_100006660(v3, v2);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v0[38] = v1;
    if ((v0[36] & 0xC000000000000001) != 0)
    {
      v6 = sub_1000E2A98();
    }

    else
    {
    }

    v0[39] = v6;
    v7 = v0[35];

    return _swift_task_switch(sub_100023F64, v7, 0);
  }
}

uint64_t sub_100024148()
{
  v1 = v0[39];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[28];
  v5 = v0[26];
  v6 = v0[27];
  v24 = v0[29];
  v23 = v5;
  v7 = v0[24];
  v26 = v0[25];
  v8 = sub_1000E2538();
  v9 = *(v8 - 8);
  (*(v9 + 56))(v5, 1, 1, v8);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v24;
  v10[4] = v7;
  v10[5] = v2;
  v10[6] = v6;
  v10[7] = v4;
  v10[8] = v3;
  v10[9] = v1;
  sub_10001223C(v23, v26);
  v25 = v9;
  LODWORD(v9) = (*(v9 + 48))(v26, 1, v8);
  swift_retain_n();

  sub_1000123E0(v6, v4);

  v11 = v0[25];
  if (v9 == 1)
  {
    sub_1000033C8(v0[25], &unk_10011EA50, &qword_1000F0D30);
  }

  else
  {
    sub_1000E2528();
    (*(v25 + 8))(v11, v8);
  }

  v12 = v10[2];
  swift_unknownObjectRetain();

  if (v12)
  {
    swift_getObjectType();
    v13 = sub_1000E24B8();
    v15 = v14;
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  sub_1000033C8(v0[26], &unk_10011EA50, &qword_1000F0D30);
  if (v15 | v13)
  {
    v0[16] = 0;
    v0[17] = 0;
    v0[18] = v13;
    v0[19] = v15;
  }

  swift_task_create();

  v16 = v0[38] + 1;
  if (v16 == v0[37])
  {
    v18 = v0[27];
    v17 = v0[28];

    sub_100006660(v18, v17);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v0[38] = v16;
    if ((v0[36] & 0xC000000000000001) != 0)
    {
      v21 = sub_1000E2A98();
    }

    else
    {
    }

    v0[39] = v21;
    v22 = v0[35];

    return _swift_task_switch(sub_100023F64, v22, 0);
  }
}

uint64_t sub_1000244A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E2118();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E2148();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = [*(result + 112) queue];
    v13 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(v11, a1, v8);
    v14 = *(v9 + 80);
    v22 = v5;
    v15 = v24;
    v16 = (v14 + 24) & ~v14;
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    (*(v9 + 32))(v17 + v16, v11, v8);
    aBlock[4] = sub_10002B854;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000026A0;
    aBlock[3] = &unk_1001138E0;
    v18 = _Block_copy(aBlock);

    sub_1000E2138();
    v27 = _swiftEmptyArrayStorage;
    sub_100003380(&qword_10011EA20, 255, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000ADE4(&unk_10011ED10, &unk_1000F0A60);
    sub_10002B8C4();
    v19 = v26;
    sub_1000E28C8();
    v20 = v23;
    sub_1000E2738();
    _Block_release(v18);

    (*(v15 + 8))(v19, v3);
    (*(v25 + 8))(v7, v22);
  }

  return result;
}

uint64_t sub_1000248B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000E1208();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    sub_1000036AC((result + 120), *(result + 144));
    type metadata accessor for CallPublisher();
    v9 = sub_1000048CC();
    if (v9 >> 62)
    {
      v21 = v9;
      v10 = sub_1000E2B68();
      v9 = v21;
      if (v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v10)
      {
LABEL_4:
        v11 = v9;
        v29 = _swiftEmptyArrayStorage;
        result = sub_10002A1C4(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          __break(1u);
          return result;
        }

        v28 = v8;
        v22[1] = a2;
        v12 = 0;
        v13 = v29;
        v14 = v11;
        v24 = v4 + 32;
        v25 = v11 & 0xC000000000000001;
        v23 = xmmword_1000F0FE0;
        v26 = v10;
        v27 = v11;
        do
        {
          if (v25)
          {
            v15 = sub_1000E2A98();
          }

          else
          {
            v15 = *(v14 + 8 * v12 + 32);
          }

          v16 = v15;
          v17 = [*(v28 + 112) activeConversationForCall:v15];
          v18 = __chkstk_darwin(v17);
          v22[-4] = v16;
          v22[-3] = v18;
          *&v22[-2] = v23;
          sub_100003380(&qword_10011ED20, 255, &type metadata accessor for NCProtoContinuityCall, &protocol conformance descriptor for NCProtoContinuityCall);
          sub_1000E0E38();

          v29 = v13;
          v20 = v13[2];
          v19 = v13[3];
          if (v20 >= v19 >> 1)
          {
            sub_10002A1C4((v19 > 1), v20 + 1, 1);
            v13 = v29;
          }

          ++v12;
          v13[2] = v20 + 1;
          (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v3);
          v14 = v27;
        }

        while (v26 != v12);

        goto LABEL_15;
      }
    }

    v13 = _swiftEmptyArrayStorage;
LABEL_15:
    v29 = v13;
    sub_10000ADE4(&unk_10011ED00, &unk_1000F1160);
    sub_1000E24D8();
  }

  return result;
}

uint64_t sub_100024C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v10 = sub_1000E1B58();
  v8[8] = v10;
  v8[9] = *(v10 - 8);
  v8[10] = swift_task_alloc();

  return _swift_task_switch(sub_100024CF0, a4, 0);
}

uint64_t sub_100024CF0()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v10 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v4 + 16) = v10;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  sub_100003380(&unk_10011ECD0, 255, &type metadata accessor for NCProtoNearbyCallStatusChangedEvent, &protocol conformance descriptor for NCProtoNearbyCallStatusChangedEvent);
  sub_1000E0E38();

  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_1001230E0;
  v7 = swift_task_alloc();
  *(v0 + 96) = v7;
  *v7 = v0;
  v7[1] = sub_100024E90;
  v8 = *(v0 + 80);

  return sub_100025EB8(15, v8, v5, v6, 0);
}

uint64_t sub_100024E90()
{
  v2 = *(*v1 + 88);
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_100025038;
  }

  else
  {
    v3 = sub_100024FB8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_100024FB8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100025038()
{
  v1 = v0[2];
  (*(v0[9] + 8))(v0[10], v0[8]);

  return _swift_task_switch(sub_1000250B4, v1, 0);
}

uint64_t sub_1000250B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100025118(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{

  sub_1000E1B48();
  sub_1000123E0(a3, a4);
  sub_1000E1B38();

  return sub_1000E1B28();
}

uint64_t sub_100025194()
{
  sub_10000E9DC((v0 + 120));

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100025260()
{
  if (qword_10011DC00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1000252C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_100002E7C;

  return v8(a1);
}

uint64_t sub_1000253BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100025468, v7, 0);
}

uint64_t sub_100025468()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E12A8();
    sub_100003380(&qword_10011EDE0, 255, &type metadata accessor for NCProtoIDSProxyMessage, &protocol conformance descriptor for NCProtoIDSProxyMessage);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100025750()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 528);
  if (v0)
  {
    v4 = sub_10002BA64;
  }

  else
  {
    v4 = sub_10002587C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002587C()
{
  v36 = v0;
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  *(v0 + 576) = sub_1000049D0(v1, qword_1001231A0);
  sub_10002B7A0(v0 + 120, v0 + 184);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 536);
    v5 = *(v0 + 177);
    v6 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);

    v9 = sub_100029C70(v7, v8, &v33);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = sub_10003E638(v5);
    v12 = sub_100029C70(v10, v11, &v33);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    sub_10002B7A0(v0 + 184, v0 + 376);
    if (*(v0 + 432) == 1)
    {
      sub_10002B7FC(v0 + 376);
      v13 = 0xEB00000000726565;
      v14 = 0x507463657269642ELL;
    }

    else
    {
      v38._countAndFlagsBits = *(v0 + 416);
      v15 = *(v0 + 424);
      v34 = 0x286465726168732ELL;
      v35 = 0xE800000000000000;
      v38._object = v15;
      sub_1000E23A8(v38);

      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      sub_1000E23A8(v39);
      v14 = v34;
      v13 = v35;
      sub_10000E9DC((v0 + 376));
    }

    sub_10002B7FC(v0 + 184);
    v16 = sub_100029C70(v14, v13, &v33);

    *(v6 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Sending event %s via %s.", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002B7FC(v0 + 184);
  }

  sub_10002B7A0(v0 + 120, v0 + 248);
  if (*(v0 + 304) == 1)
  {
    sub_1000E0EF8();
  }

  else
  {

    sub_1000079B4((v0 + 248), v0 + 440);
  }

  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 464);
  v20 = *(v0 + 472);
  v21 = *(v0 + 177);
  sub_1000036AC((v0 + 440), v19);
  v22 = sub_10003E638(v21);
  v24 = v23;
  *(v0 + 584) = v23;
  sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(v0 + 480) = 0x6567617373656DLL;
  *(v0 + 488) = 0xE700000000000000;
  sub_1000E2A08();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = v18;
  *(inited + 80) = v17;
  sub_1000123E0(v18, v17);
  v26 = sub_10000C018(inited);
  *(v0 + 592) = v26;
  swift_setDeallocating();
  sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
  sub_10002B7A0(v0 + 120, v0 + 312);
  if (*(v0 + 368) == 1)
  {
    sub_10002B7FC(v0 + 312);
    v27 = sub_1000E2338();
    v29 = v28;
  }

  else
  {
    v27 = *(v0 + 352);
    v29 = *(v0 + 360);
    sub_10000E9DC((v0 + 312));
  }

  *(v0 + 600) = v29;
  v32 = (*(v20 + 208) + **(v20 + 208));
  v30 = swift_task_alloc();
  *(v0 + 608) = v30;
  *v30 = v0;
  v30[1] = sub_100025D70;

  return v32(v22, v24, v26, v27, v29, 0, v19, v20);
}

uint64_t sub_100025D70()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_10002BA68;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_10002BA70;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100025EB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100025F64, v7, 0);
}

uint64_t sub_100025F64()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1B58();
    sub_100003380(&unk_10011ECD0, 255, &type metadata accessor for NCProtoNearbyCallStatusChangedEvent, &protocol conformance descriptor for NCProtoNearbyCallStatusChangedEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10002624C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_1000262F8, v7, 0);
}

uint64_t sub_1000262F8()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1E28();
    sub_100003380(&qword_10011EE00, 255, &type metadata accessor for NCProtoSuggestionAdvertisementDidChangeEvent, &protocol conformance descriptor for NCProtoSuggestionAdvertisementDidChangeEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000265E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_10002668C, v7, 0);
}

uint64_t sub_10002668C()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1558();
    sub_100003380(&qword_10011ED98, 255, &type metadata accessor for NCProtoContactUpdateEvent, &protocol conformance descriptor for NCProtoContactUpdateEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100026974(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100026A20, v7, 0);
}

uint64_t sub_100026A20()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1028();
    sub_100003380(&qword_10011EDE8, 255, &type metadata accessor for NCProtoJoinEvent, &protocol conformance descriptor for NCProtoJoinEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100026D08;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100026D08()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  v3 = *(v2 + 528);
  if (v0)
  {
    v4 = sub_100027328;
  }

  else
  {
    v4 = sub_100026E34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100026E34()
{
  v36 = v0;
  if (qword_10011DC88 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  *(v0 + 576) = sub_1000049D0(v1, qword_1001231A0);
  sub_10002B7A0(v0 + 120, v0 + 184);

  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 536);
    v5 = *(v0 + 177);
    v6 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);

    v9 = sub_100029C70(v7, v8, &v33);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    v10 = sub_10003E638(v5);
    v12 = sub_100029C70(v10, v11, &v33);

    *(v6 + 14) = v12;
    *(v6 + 22) = 2080;
    sub_10002B7A0(v0 + 184, v0 + 376);
    if (*(v0 + 432) == 1)
    {
      sub_10002B7FC(v0 + 376);
      v13 = 0xEB00000000726565;
      v14 = 0x507463657269642ELL;
    }

    else
    {
      v38._countAndFlagsBits = *(v0 + 416);
      v15 = *(v0 + 424);
      v34 = 0x286465726168732ELL;
      v35 = 0xE800000000000000;
      v38._object = v15;
      sub_1000E23A8(v38);

      v39._countAndFlagsBits = 41;
      v39._object = 0xE100000000000000;
      sub_1000E23A8(v39);
      v14 = v34;
      v13 = v35;
      sub_10000E9DC((v0 + 376));
    }

    sub_10002B7FC(v0 + 184);
    v16 = sub_100029C70(v14, v13, &v33);

    *(v6 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%s] Sending event %s via %s.", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002B7FC(v0 + 184);
  }

  sub_10002B7A0(v0 + 120, v0 + 248);
  if (*(v0 + 304) == 1)
  {
    sub_1000E0EF8();
  }

  else
  {

    sub_1000079B4((v0 + 248), v0 + 440);
  }

  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 464);
  v20 = *(v0 + 472);
  v21 = *(v0 + 177);
  sub_1000036AC((v0 + 440), v19);
  v22 = sub_10003E638(v21);
  v24 = v23;
  *(v0 + 584) = v23;
  sub_10000ADE4(&unk_1001201F0, &unk_1000F1CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F07C0;
  *(v0 + 480) = 0x6567617373656DLL;
  *(v0 + 488) = 0xE700000000000000;
  sub_1000E2A08();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = v18;
  *(inited + 80) = v17;
  sub_1000123E0(v18, v17);
  v26 = sub_10000C018(inited);
  *(v0 + 592) = v26;
  swift_setDeallocating();
  sub_1000033C8(inited + 32, &qword_10011DEC0, &unk_1000F0490);
  sub_10002B7A0(v0 + 120, v0 + 312);
  if (*(v0 + 368) == 1)
  {
    sub_10002B7FC(v0 + 312);
    v27 = sub_1000E2338();
    v29 = v28;
  }

  else
  {
    v27 = *(v0 + 352);
    v29 = *(v0 + 360);
    sub_10000E9DC((v0 + 312));
  }

  *(v0 + 600) = v29;
  v32 = (*(v20 + 208) + **(v20 + 208));
  v30 = swift_task_alloc();
  *(v0 + 608) = v30;
  *v30 = v0;
  v30[1] = sub_10002739C;

  return v32(v22, v24, v26, v27, v29, 0, v19, v20);
}

uint64_t sub_100027328()
{
  sub_100006660(v0[68], v0[69]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002739C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = *(v2 + 528);
    v4 = sub_1000276D0;
  }

  else
  {
    v5 = *(v2 + 528);

    v4 = sub_1000274E4;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000274E4()
{
  v18 = v0;
  sub_10000E9DC((v0 + 440));

  v1 = sub_1000E1EE8();
  v2 = sub_1000E2698();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  if (v3)
  {
    v6 = *(v0 + 177);
    v16 = *(v0 + 552);
    v7 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v7 = 136315394;
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);

    v10 = sub_100029C70(v9, v8, &v17);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_10003E638(v6);
    v13 = sub_100029C70(v11, v12, &v17);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Sent event %s.", v7, 0x16u);
    swift_arrayDestroy();

    sub_100006660(v4, v16);
  }

  else
  {
    sub_100006660(*(v0 + 544), *(v0 + 552));
  }

  sub_10002B7FC(v0 + 120);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000276D0()
{
  v19 = v0;

  sub_10000E9DC((v0 + 440));

  swift_errorRetain();
  v1 = sub_1000E1EE8();
  v2 = sub_1000E2678();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 536);
    v4 = *(v0 + 177);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v5 = 136315650;
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);

    v9 = sub_100029C70(v7, v8, v18);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = sub_10003E638(v4);
    v12 = sub_100029C70(v10, v11, v18);

    *(v5 + 14) = v12;
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v13;
    *v6 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%s] Failed to send event %s due to %@.", v5, 0x20u);
    sub_1000033C8(v6, &unk_10011EAC0, &unk_1000F0E60);

    swift_arrayDestroy();
  }

  v14 = *(v0 + 552);
  v15 = *(v0 + 544);
  swift_willThrow();
  sub_100006660(v15, v14);

  sub_10002B7FC(v0 + 120);
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10002793C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_1000279E8, v7, 0);
}

uint64_t sub_1000279E8()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1798();
    sub_100003380(&unk_10011FA10, 255, &type metadata accessor for NCProtoStartedSessionEvent, &protocol conformance descriptor for NCProtoStartedSessionEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100027CD0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100027D7C, v7, 0);
}

uint64_t sub_100027D7C()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1448();
    sub_100003380(&qword_10011EDC0, 255, &type metadata accessor for NCProtoEndedSessionEvent, &protocol conformance descriptor for NCProtoEndedSessionEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100028064(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100028110, v7, 0);
}

uint64_t sub_100028110()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E17E8();
    sub_100003380(&qword_10011EDA0, 255, &type metadata accessor for NCProtoPolicyInfoUpdatedEvent, &protocol conformance descriptor for NCProtoPolicyInfoUpdatedEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000283F8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_1000284A4, v7, 0);
}

uint64_t sub_1000284A4()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E19A8();
    sub_100003380(&qword_10011EDD8, 255, &type metadata accessor for NCProtoRecentCallsDidChangeEvent, &protocol conformance descriptor for NCProtoRecentCallsDidChangeEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_10002878C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100028838, v7, 0);
}

uint64_t sub_100028838()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E16E8();
    sub_100003380(&qword_10011EDC8, 255, &type metadata accessor for NCProtoDeviceLaunchedEvent, &protocol conformance descriptor for NCProtoDeviceLaunchedEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100028B20(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100028BCC, v7, 0);
}

uint64_t sub_100028BCC()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1D48();
    sub_100003380(&unk_10011ED50, 255, &type metadata accessor for NCProtoActiveConversationsDidChangeEvent, &protocol conformance descriptor for NCProtoActiveConversationsDidChangeEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100028EB4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100028F60, v7, 0);
}

uint64_t sub_100028F60()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1BB8();
    sub_100003380(&qword_10011ED68, 255, &type metadata accessor for NCProtoContinuityCallsDidChangeEvent, &protocol conformance descriptor for NCProtoContinuityCallsDidChangeEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_100029248(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_1000292F4, v7, 0);
}

uint64_t sub_1000292F4()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E1848();
    sub_100003380(&qword_10011EDD0, 255, &type metadata accessor for NCProtoFavoritesDidChangeEvent, &protocol conformance descriptor for NCProtoFavoritesDidChangeEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1000295DC(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 520) = v5;
  *(v6 + 178) = a5;
  *(v6 + 504) = a3;
  *(v6 + 512) = a4;
  *(v6 + 496) = a2;
  *(v6 + 177) = a1;
  if (qword_10011DC18 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230E0;
  *(v6 + 528) = qword_1001230E0;

  return _swift_task_switch(sub_100029688, v7, 0);
}

uint64_t sub_100029688()
{
  v22 = v0;
  v1 = sub_1000449DC(*(v0 + 504), *(v0 + 512), *(v0 + 178));
  *(v0 + 536) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000E17C8();
    sub_100003380(&qword_10011ED90, 255, &type metadata accessor for NCProtoEndLagunaSessionEvent, &protocol conformance descriptor for NCProtoEndLagunaSessionEvent);
    *(v0 + 544) = sub_1000E0E28();
    *(v0 + 552) = v3;
    v20 = swift_task_alloc();
    *(v0 + 560) = v20;
    *v20 = v0;
    v20[1] = sub_100025750;

    return sub_100057500(v0 + 120, v2);
  }

  else
  {
    if (qword_10011DC88 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 504);
    v4 = *(v0 + 512);
    v6 = *(v0 + 178);
    v7 = sub_1000E1F08();
    sub_1000049D0(v7, qword_1001231A0);
    sub_100015488(v5, v4, v6);
    v8 = sub_1000E1EE8();
    v9 = sub_1000E2678();
    sub_1000154A0(v5, v4, v6);
    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 504);
      v10 = *(v0 + 512);
      v12 = *(v0 + 178);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21 = v14;
      *v13 = 136315138;
      v15 = sub_100012A20(v11, v10, v12);
      v17 = sub_100029C70(v15, v16, &v21);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Failed to find conduit device for %s.", v13, 0xCu);
      sub_10000E9DC(v14);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

unint64_t *sub_100029970(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = _swiftEmptyArrayStorage;
  sub_10002A1A4(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1000153C0(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10002A1A4((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      v3[2] = v6 + 1;
      v7 = &v3[2 * v6];
      v7[4] = v9;
      v7[5] = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_100029A84(uint64_t a1, uint64_t a2)
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

  sub_10000ADE4(&unk_10011ECE0, &unk_1000F1150);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_100029AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_100029B64(uint64_t a1, uint64_t a2)
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

  sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_100029BE8(uint64_t a1, uint64_t a2)
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

  sub_10000ADE4(&qword_10011EB20, &qword_1000F2570);
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
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_100029C70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100029D3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1000153C0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000E9DC(v11);
  return v7;
}

unint64_t sub_100029D3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100029E48(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000E2AB8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100029E48(uint64_t a1, unint64_t a2)
{
  v3 = sub_100029E94(a1, a2);
  sub_100029FC4(&off_100112A78);
  return v3;
}

char *sub_100029E94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100029A84(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000E2AB8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000E23B8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100029A84(v10, 0);
        result = sub_1000E2A68();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100029FC4(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_10002A0B0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10002A0B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&unk_10011ECE0, &unk_1000F1150);
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

char *sub_10002A1A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A314(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002A1C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A660(a1, a2, a3, *v3, &qword_10011ED28, &qword_1000F1170, &type metadata accessor for NCProtoContinuityCall);
  *v3 = result;
  return result;
}

char *sub_10002A208(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A420(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002A228(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A52C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10002A248(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A660(a1, a2, a3, *v3, &qword_10011ED70, &qword_1000F11B0, &type metadata accessor for NCProtoContactHandleAnonym);
  *v3 = result;
  return result;
}

void *sub_10002A28C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A660(a1, a2, a3, *v3, &qword_10011ED48, &qword_1000F1198, &type metadata accessor for NCProtoActiveConversation);
  *v3 = result;
  return result;
}

void *sub_10002A2D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002A660(a1, a2, a3, *v3, &qword_10011ED78, &qword_1000F11B8, &type metadata accessor for NCProtoAddressableContact);
  *v3 = result;
  return result;
}

char *sub_10002A314(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
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

char *sub_10002A420(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000ADE4(&qword_10011ED80, &qword_1000F11C0);
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

void *sub_10002A52C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000ADE4(&qword_10011EDA8, &unk_1000F1200);
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
    sub_10000ADE4(&unk_10011EDB0, &qword_1000F0A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10002A660(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10000ADE4(a5, a6);
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

void *sub_10002A83C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10002A9B0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t *sub_10002AB3C(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1000E2918();
  sub_10000CAAC(0, a5, a6);
  sub_10001B174(a7, a5, a6);
  result = sub_1000E2628();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1000E29A8())
      {
        goto LABEL_30;
      }

      sub_10000CAAC(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_10002AD6C(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10002AE60;

  return v5(v2 + 16);
}

uint64_t sub_10002AE60()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10002AF90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v15[3] = type metadata accessor for CallPublisher();
  v15[4] = &off_100116E48;
  v15[0] = a1;
  v7 = *(a2 + 168);

  if ([v7 telephonyCallNotificationsEnabled])
  {
    v8 = swift_allocObject();
    swift_weakInit();
    sub_10002B4BC(v15, v14);
    v9 = swift_allocObject();
    sub_1000079B4(v14, v9 + 16);
    *(v9 + 56) = v8;
    sub_10000ADE4(&unk_100120240, &qword_1000F10E8);
    v10 = swift_allocObject();
    v11 = sub_1000E2538();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = &unk_1000F10E0;
    v12[5] = v9;
    *(v10 + 16) = sub_1000223DC(0, 0, v6, &unk_1000F3470, v12);
    *(a2 + 176) = v10;
  }

  return sub_10000E9DC(v15);
}

uint64_t sub_10002B170(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10002BA78;

  return v5(v2 + 16);
}

void *sub_10002B264(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for CallPublisher();
  v26[3] = v11;
  v26[4] = &off_100116E48;
  v26[0] = a2;
  type metadata accessor for NearbyCallServer();
  v12 = swift_allocObject();
  v13 = sub_1000037BC(v26, v11);
  __chkstk_darwin(v13);
  v15 = (&v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v25[3] = v11;
  v25[4] = &off_100116E48;
  v25[0] = v17;
  swift_defaultActor_initialize();
  v12[22] = 0;
  v12[23] = 0;
  v12[14] = a1;
  sub_10002B4BC(v25, (v12 + 15));
  v12[20] = a3;
  v12[21] = a4;
  v18 = sub_1000E2538();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  sub_10002B4BC(v25, v24);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v12;
  sub_1000079B4(v24, (v19 + 5));
  v20 = a1;

  v21 = a4;

  sub_100022960(0, 0, v10, &unk_1000F10B8, v19);

  sub_10000E9DC(v25);
  sub_10000E9DC(v26);
  return v12;
}

uint64_t sub_10002B4BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002B520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002E7C;

  return sub_10002370C(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_10002B5E0(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_10002379C(a1, v1 + 16, v4);
}

uint64_t sub_10002B694(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100002E7C;

  return sub_100024C1C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10002B854()
{
  v1 = *(sub_10000ADE4(&unk_10011ED00, &unk_1000F1160) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000248B0(v2, v3);
}

unint64_t sub_10002B8C4()
{
  result = qword_10011EA30;
  if (!qword_10011EA30)
  {
    sub_10000AE90(&unk_10011ED10, &unk_1000F0A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EA30);
  }

  return result;
}

uint64_t *sub_10002B948(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10002B9AC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100002D64;

  return sub_10002B170(a1, v4);
}

Swift::Int AsyncUtilities.TimeoutError.hashValue.getter(char a1)
{
  sub_1000E2D48();
  sub_1000E2D58(a1 & 1);
  return sub_1000E2D68();
}

uint64_t static AsyncUtilities.timeout<A>(after:work:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_10002BB28, 0, 0);
}

uint64_t sub_10002BB28()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_10002BC24;
  v7 = *(v0 + 16);

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v7);
}

uint64_t sub_10002BC24()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10002BD60, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002BD60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v7[9] = sub_10000AE90(&unk_10011F8C0, &qword_1000F0C40);
  v8 = sub_1000E2D78();
  v7[10] = v8;
  v9 = sub_1000E2888();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v7[16] = swift_task_alloc();
  sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7[17] = swift_task_alloc();

  return _swift_task_switch(sub_10002BF64, 0, 0);
}

uint64_t sub_10002BF64()
{
  v1 = v0[17];
  v2 = v0[8];
  v13 = v0[6];
  v14 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_1000E2538();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;
  v7[5] = v3;
  v7[6] = v4;
  v8 = sub_1000E25B8();

  sub_10002C6E4(v1, &unk_1000F1378, v7);
  sub_100002248(v1);
  v6(v1, 1, 1, v5);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = v13;
  v9[6] = v14;
  sub_10002C6E4(v1, &unk_1000F1388, v9);
  sub_100002248(v1);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_10002C180;
  v11 = v0[13];

  return sub_10002CD78(v11, 0, 0, v8);
}

uint64_t sub_10002C180()
{

  return _swift_task_switch(sub_10002C27C, 0, 0);
}

uint64_t sub_10002C27C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[12] + 8))(v1, v0[11]);
    sub_10002CFB4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
LABEL_5:

    v10 = v0[1];
    goto LABEL_7;
  }

  v6 = v0[15];
  v5 = v0[16];
  (*(v2 + 32))(v5, v1, v3);
  sub_1000E25A8();
  (*(v2 + 16))(v6, v5, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = v0[16];
    v8 = v0[14];
    v9 = v0[10];
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    goto LABEL_5;
  }

  v11 = v0[15];
  v12 = v0[8];
  v13 = v0[2];
  (*(v0[14] + 8))(v0[16], v0[10]);
  (*(*(v12 - 8) + 32))(v13, v11, v12);

  v10 = v0[1];
LABEL_7:

  return v10();
}

uint64_t sub_10002C4CC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100002E7C;

  return sub_10002BDC4(a1, a2, v7, v8, v9, v10, v6);
}

unint64_t sub_10002C5A8()
{
  result = qword_10011EE10;
  if (!qword_10011EE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE10);
  }

  return result;
}

uint64_t sub_10002C61C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100002D64;

  return sub_1000252C4(a1, v4, v5, v6);
}

uint64_t sub_10002C6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_10001223C(a1, v18 - v8);
  v10 = sub_1000E2538();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100002248(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1000E24B8();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1000E2528();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_10002C8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1000E2B28();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_10002C978, 0, 0);
}

uint64_t sub_10002C978()
{
  sub_1000E2CF8();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10002CA38;
  v3 = v0[2];
  v2 = v0[3];

  return sub_100003DA4(v3, v2, 0, 0, 1);
}

uint64_t sub_10002CA38()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  *(*v1 + 64) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10002CC4C;
  }

  else
  {
    v5 = sub_10002CBA8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002CBA8()
{
  v1 = *(v0 + 64);
  sub_1000E2588();
  if (!v1)
  {
    sub_10002CFB4();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10002CC4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002CCB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100002D64;

  return sub_10002C8B8(a1, v4, v5, v6, v7);
}

uint64_t sub_10002CD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a2;
  v4[3] = a3;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_10002CE28;

  return ThrowingTaskGroup.nextResult()(a1, a4);
}

uint64_t sub_10002CE28()
{
  v2 = *v1;
  v2[5] = v0;

  if (v0)
  {
    if (v2[2])
    {
      swift_getObjectType();
      v3 = sub_1000E24B8();
      v5 = v4;
    }

    else
    {
      v3 = 0;
      v5 = 0;
    }

    return _swift_task_switch(sub_10002CF98, v3, v5);
  }

  else
  {
    v6 = v2[1];

    return v6();
  }
}

unint64_t sub_10002CFB4()
{
  result = qword_10011EE18;
  if (!qword_10011EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EE18);
  }

  return result;
}

uint64_t sub_10002D008()
{
  type metadata accessor for NearbySuggestionActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_1001230D0 = v0;
  return result;
}

uint64_t sub_10002D044()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10002D098()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10002D0F4()
{
  v0 = type metadata accessor for NearbySuggestionActor();

  return static GlobalActor.sharedUnownedExecutor.getter(v0);
}

uint64_t sub_10002D12C(void *a1, void *a2, char a3)
{
  sub_1000E2A88(57);
  v17._object = 0x80000001000EA950;
  v17._countAndFlagsBits = 0xD00000000000001DLL;
  sub_1000E23A8(v17);
  v6 = [a1 description];
  v7 = sub_1000E2338();
  v9 = v8;

  v18._countAndFlagsBits = v7;
  v18._object = v9;
  sub_1000E23A8(v18);

  v19._countAndFlagsBits = 0x3A72656D697420;
  v19._object = 0xE700000000000000;
  sub_1000E23A8(v19);
  v10 = [a2 debugDescription];
  v11 = sub_1000E2338();
  v13 = v12;

  v20._countAndFlagsBits = v11;
  v20._object = v13;
  sub_1000E23A8(v20);

  v21._countAndFlagsBits = 0x616F626E4F736920;
  v21._object = 0xEE003A676E696472;
  sub_1000E23A8(v21);
  if (a3)
  {
    v14._countAndFlagsBits = 1702195828;
  }

  else
  {
    v14._countAndFlagsBits = 0x65736C6166;
  }

  if (a3)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  v14._object = v15;
  sub_1000E23A8(v14);

  v22._countAndFlagsBits = 62;
  v22._object = 0xE100000000000000;
  sub_1000E23A8(v22);
  return 0;
}

uint64_t sub_10002D2C4(id *a1, void **a2)
{
  v4 = sub_1000E0D68();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  v11 = *a2;
  v12 = [*a1 identifier];
  sub_1000E0D38();

  v13 = [v11 identifier];
  sub_1000E0D38();

  LOBYTE(v13) = sub_1000E0D28();
  v14 = *(v5 + 8);
  v14(v8, v4);
  v14(v10, v4);
  return v13 & 1;
}

char *sub_10002D438()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 conversationManager];

  v2 = [objc_allocWithZone(TUFeatureFlags) init];
  v3 = objc_allocWithZone(type metadata accessor for NearbySuggestionController());
  result = sub_10003A27C(v1, v2, v3);
  qword_1001230D8 = result;
  return result;
}

void sub_10002D4D0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conversationManager) activeConversations];
  sub_10000CAAC(0, qword_10011F0D0, TUConversation_ptr);
  sub_10001B174(&qword_10011FA90, qword_10011F0D0, TUConversation_ptr);
  v2 = sub_1000E25E8();

  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1000E2918();
    sub_1000E2628();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (v16)
    {
      do
      {
        if ([v16 state] == 3)
        {
          break;
        }

        v6 = v14;
        v7 = v15;
        if ((v4 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_1000E29A8())
        {
          break;
        }

        swift_dynamicCast();
        v16 = v17;
        v14 = v6;
        v15 = v7;
      }

      while (v17);
    }

LABEL_19:
    sub_10000A840(v4);
  }

  else
  {
    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        goto LABEL_19;
      }

      v13 = *(v3 + 8 * v14);
      ++v12;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_10002D710(void *a1, void *a2, int a3)
{
  v75 = a3;
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v70 - v7;
  v9 = sub_1000E0D68();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v70 - v14;
  v76 = a2;
  if (a1)
  {
    [a2 invalidate];
    v16 = &v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState];
    v17 = &v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState + 8];
    if (*&v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState])
    {
      v18 = *v17;
      v19 = *v16;
      v74 = v8;
      v20 = v19;
      v72 = v18;
      v73 = v16 + 1;
      v21 = [a1 identifier];
      sub_1000E0D38();

      v22 = [v20 identifier];
      sub_1000E0D38();

      LOBYTE(v22) = sub_1000E0D28();
      v8 = v74;
      v23 = *(v10 + 8);
      v23(v13, v9);
      v23(v15, v9);
      v17 = v73;
      v24 = v16;
      if (v22)
      {
        return;
      }
    }

    else
    {
      v24 = &v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState];
    }
  }

  else
  {
    v24 = &v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState];
    v17 = &v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState + 8];
    if (!*&v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState])
    {
      return;
    }
  }

  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v25 = sub_1000E1F08();
  sub_1000049D0(v25, qword_100123188);
  v26 = v3;
  v27 = v76;
  sub_10001C3F0(a1, v76);
  v28 = sub_1000E1EE8();
  v29 = sub_1000E2698();

  sub_10001C430(a1, v27);
  if (os_log_type_enabled(v28, v29))
  {
    v71 = v26;
    v72 = a1;
    v74 = v8;
    v30 = 0x3E6C696E3CLL;
    v31 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v31 = 136315394;
    v32 = *v24;
    v73 = v17;
    if (v32)
    {
      v33 = *v17;
      v34 = v24;
      v35 = *(v24 + 16);
      v36 = v32;
      v37 = v33;
      v30 = sub_10002D12C(v36, v37, v35 & 1);
      v39 = v38;
    }

    else
    {
      v34 = v24;
      v39 = 0xE500000000000000;
    }

    v40 = sub_100029C70(v30, v39, &v77);

    *(v31 + 4) = v40;
    *(v31 + 12) = 2080;
    a1 = v72;
    if (v72)
    {
      v41 = sub_10002D12C(v72, v76, v75 & 1);
      v43 = v42;
      v24 = v34;
      v17 = v73;
    }

    else
    {
      v43 = 0xE500000000000000;
      v24 = v34;
      v17 = v73;
      v41 = 0x3E6C696E3CLL;
    }

    v44 = sub_100029C70(v41, v43, &v77);

    *(v31 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v28, v29, "Updating suggestion state to:%s from:%s", v31, 0x16u);
    swift_arrayDestroy();

    v8 = v74;
    v26 = v71;
  }

  else
  {
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v45 = *v24;
    if (*v24)
    {
      v46 = v45;
    }

    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    v48 = v45;
    sub_10001629C(sub_10003AB4C, v47);

    swift_unknownObjectRelease();
  }

  if (*v24)
  {
    v49 = *(v24 + 16);
    v50 = *v17;
    v51 = *v24;
    v52 = v50;
    if ([v51 type] == 1)
    {
      if (qword_10011DC58 != -1)
      {
        swift_once();
      }

      v53 = sub_1000D5568(3u);
      if (v54)
      {
        v55 = 0;
      }

      else
      {
        v55 = v53;
      }

      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      sub_1000D5814(v56);
    }

    if (v49)
    {
      LOBYTE(v57) = 0;
      goto LABEL_37;
    }

    v56 = [v51 type];
    if (v56 < 3)
    {
      v57 = 0x30102u >> (8 * v56);
LABEL_37:
      sub_10001CF74(v57);

      v58 = *v24;
      if (*v24)
      {
        v59 = v58;
      }

      goto LABEL_39;
    }

LABEL_43:
    v69 = v56;
    type metadata accessor for TUNearbySuggestionType(0);
    v77 = v69;
    sub_1000E2CA8();
    __break(1u);
    return;
  }

  v58 = 0;
LABEL_39:
  v60 = sub_1000E2538();
  (*(*(v60 - 8) + 56))(v8, 1, 1, v60);
  v61 = qword_10011DC08;
  v62 = v26;
  v63 = a1;
  v65 = v58;
  if (v61 != -1)
  {
    swift_once();
  }

  v66 = qword_1001230D0;
  v67 = sub_10003BB3C(&unk_10011F010, v64, type metadata accessor for NearbySuggestionActor, &unk_1000F1580);
  v68 = swift_allocObject();
  v68[2] = v66;
  v68[3] = v67;
  v68[4] = a1;
  v68[5] = v58;
  v68[6] = v62;

  sub_1000223DC(0, 0, v8, &unk_1000F15C8, v68);
}

void sub_10002DE20()
{
  if ((*(v0 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestions) & 1) == 0)
  {
    sub_10002D4D0();
    if (v1)
    {

      v2 = *(v0 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState);
      if (v2)
      {
        v3 = *(v0 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState + 8);
        sub_10001C3F0(v2, v3);
        v4 = v2;
        sub_10001C430(v2, v3);
        [v4 type];
      }
    }
  }
}

id sub_10002DED4()
{
  v1 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000E2538();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_100022960(0, 0, v3, &unk_1000F1698, v5);

  v7 = type metadata accessor for NearbySuggestionController();
  v9.receiver = v6;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t sub_10002E018()
{
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v0 = qword_1001230D0;

  return _swift_task_switch(sub_10002E0AC, v0, 0);
}

uint64_t sub_10002E0AC()
{
  sub_10002E31C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002E31C()
{
  v1 = v0;
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v2 = sub_1000E1F08();
  sub_1000049D0(v2, qword_100123188);
  v3 = sub_1000E1EE8();
  v4 = sub_1000E2698();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating IRSession", v5, 2u);
  }

  [*(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession) invalidate];
  v6 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
  swift_beginAccess();
  *(v1 + v6) = _swiftEmptyDictionarySingleton;

  *(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning) = 0;
  return result;
}

void sub_10002E454(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  if (*(a2 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning))
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v8 = sub_1000E1F08();
    sub_1000049D0(v8, qword_100123188);
    v16 = sub_1000E1EE8();
    v9 = sub_1000E2698();
    if (os_log_type_enabled(v16, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v16, v9, "IRSession is already active. Skipping", v10, 2u);
    }

    v11 = v16;
  }

  else
  {
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v5 + 16))(v7, a1, v4);
    v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    (*(v5 + 32))(v14 + v13, v7, v4);

    sub_10003A5C8(sub_100039474, v14);
  }
}

void sub_10002E6C8(void *a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_10:
    v13 = TUMakeNeighborhoodConduitError();
LABEL_11:
    swift_errorRetain();
    sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
    sub_1000E24C8();
    return;
  }

  v5 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  Strong[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning] = 1;
  v6 = objc_allocWithZone(IRConfiguration);
  v7 = a1;
  v8 = [v6 initWithServiceToken:v7];
  [v8 setMode:0];
  [*&v5[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession] runWithConfiguration:v8];
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v9 = sub_1000E1F08();
  sub_1000049D0(v9, qword_100123188);
  v10 = sub_1000E1EE8();
  v11 = sub_1000E2698();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "IRSession activated", v12, 2u);
  }

  sub_10000ADE4(&unk_10011FA70, &qword_1000F0868);
  sub_1000E24D8();
}

void sub_10002E8E4(double a1)
{
  v2 = v1;
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v4 = sub_1000E1F08();
  sub_1000049D0(v4, qword_100123188);
  v5 = sub_1000E1EE8();
  v6 = sub_1000E2698();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v5, v6, "Suppressing suggestions for %fs", v7, 0xCu);
  }

  v8 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestionTimer;
  [*(v2 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestionTimer) invalidate];
  *(v2 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestions) = 1;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_10003BE94;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10002ED24;
  v15[3] = &unk_100113DB0;
  v10 = _Block_copy(v15);
  v11 = objc_opt_self();

  v12 = [v11 timerWithTimeInterval:0 repeats:v10 block:a1];
  _Block_release(v10);

  v13 = [objc_opt_self() mainRunLoop];
  [v13 addTimer:v12 forMode:NSRunLoopCommonModes];

  v14 = *(v2 + v8);
  *(v2 + v8) = v12;
}

uint64_t sub_10002EB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v5 = qword_1001230D0;

  return _swift_task_switch(sub_10002EBDC, v5, 0);
}

uint64_t sub_10002EBDC()
{
  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v1 = sub_1000E1F08();
  sub_1000049D0(v1, qword_100123188);
  v2 = sub_1000E1EE8();
  v3 = sub_1000E2698();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stop suppressing suggestions", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestionTimer;
  [*(v5 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestionTimer) invalidate];
  v7 = *(v5 + v6);
  *(v5 + v6) = 0;

  *(v5 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suppressSuggestions) = 0;
  v8 = *(v0 + 8);

  return v8();
}

void sub_10002ED24(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_10002ED8C(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230D0;
  v3[8] = qword_1001230D0;

  return _swift_task_switch(sub_10002EE2C, v4, 0);
}

uint64_t sub_10002EE2C(uint64_t a1)
{
  if (_TUIsInternalInstall())
  {
    v1[9] = *(v1[7] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_conduitDeviceManager);
    if (qword_10011DC18 != -1)
    {
      swift_once();
    }

    v2 = qword_1001230E0;

    return _swift_task_switch(sub_10002EF38, v2, 0);
  }

  else
  {
    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    v3 = v1[1];

    return v3();
  }
}

uint64_t sub_10002EF38(uint64_t a1)
{
  if (_TUIsInternalInstall())
  {
    v2 = v1[9];
    v3 = v1[6];
    v4 = swift_beginAccess();
    v7 = 0;
    v8 = *(v2 + 48);
    v9 = -1;
    v10 = -1 << *(v8 + 32);
    if (-v10 < 64)
    {
      v9 = ~(-1 << -v10);
    }

    v11 = v9 & *(v8 + 64);
    v12 = (63 - v10) >> 6;
    while (v11)
    {
LABEL_10:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(v8 + 56) + ((v7 << 9) | (8 * v14)));
      v1[10] = v15;
      v5 = *(v15 + 56);
      if (v5)
      {
        v16 = *(v15 + 48) == v1[5] && v5 == v3;
        if (v16 || (v4 = sub_1000E2C68(), (v4 & 1) != 0))
        {
          v17 = v1[8];

          v4 = sub_10002F144;
          v5 = v17;
          goto LABEL_20;
        }
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        v5 = v1[8];
        v18 = sub_10002F0C4;
        goto LABEL_19;
      }

      v11 = *(v8 + 64 + 8 * v13);
      ++v7;
      if (v11)
      {
        v7 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = v1[8];
    v18 = sub_10003C07C;
LABEL_19:
    v4 = v18;
LABEL_20:
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10002F0C4()
{
  TUMakeNeighborhoodConduitError();
  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002F144()
{
  v1 = v0[10];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v0[11] = v2;

  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_10002F208;

  return sub_100034E90(v3, v2, 0, 1, 0);
}

uint64_t sub_10002F208(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 64);
  *(v4 + 104) = a1;
  *(v4 + 112) = a2;
  *(v4 + 120) = a3;

  return _swift_task_switch(sub_10002F340, v5, 0);
}

uint64_t sub_10002F340()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 56) + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v0 + 120);
  *v3 = v2;
  *(v3 + 8) = v1;
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;
  sub_10001C3F0(v2, v1);
  sub_10002D710(v4, v5, v7);
  sub_10001C430(v4, v5);
  sub_10001C430(v2, v1);

  v9 = *v3;
  v8 = *(v3 + 8);
  if (*v3)
  {
    v10 = v9;
  }

  sub_10001C3F0(v9, v8);
  sub_10001C430(v9, v8);
  v11 = *(v0 + 8);

  return v11(v9);
}

uint64_t sub_10002F464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_10000ADE4(&unk_10011F090, &unk_1000F1650);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v7 = qword_1001230D0;
  v5[14] = qword_1001230D0;

  return _swift_task_switch(sub_10002F570, v7, 0);
}

uint64_t sub_10002F570()
{
  v1 = v0[10];
  v2 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (v4 = v0[6], v3 = v0[7], , sub_10000B2D0(v4, v3), LOBYTE(v3) = v5, , (v3 & 1) != 0))
  {
    sub_1000345F0(2);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10002F908;
    v7 = v0[9];
    v8 = v0[7];
    v9 = v0[8];
    v10 = v0[6];

    return sub_100034E90(v10, v8, v9, v7, 0);
  }

  else
  {
    v13 = v0[6];
    v12 = v0[7];
    sub_10000ADE4(&qword_10011E258, &qword_1000F0860);
    v14 = swift_allocObject();
    v0[15] = v14;
    *(v14 + 16) = xmmword_1000F07C0;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;

    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_10002F730;

    return sub_100030378(v14);
  }
}

uint64_t sub_10002F730()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_10002F85C, v1, 0);
}

uint64_t sub_10002F85C()
{
  sub_1000345F0(2);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_10002F908;
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];

  return sub_100034E90(v5, v3, v4, v2, 0);
}

uint64_t sub_10002F908(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *(*v3 + 112);
  *(v4 + 144) = a1;
  *(v4 + 152) = a2;
  *(v4 + 192) = a3;

  return _swift_task_switch(sub_10002FA24, v5, 0);
}

uint64_t sub_10002FA24()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v15 = *(v0 + 88);
  v6 = v5 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v7 = *(v5 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState);
  v8 = *(v5 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState + 8);
  v9 = *(v0 + 192);
  *v6 = v2;
  *(v6 + 8) = v1;
  v10 = *(v6 + 16);
  *(v6 + 16) = v9;
  sub_10001C3F0(v2, v1);
  sub_10001C3F0(v2, v1);
  sub_10002D710(v7, v8, v10);
  sub_10001C430(v7, v8);
  sub_10001C430(v2, v1);
  *(v0 + 40) = *(v5 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionResultSubject);
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = v1;
  *(v11 + 32) = v9;
  sub_10001C3F0(v2, v1);

  sub_10000ADE4(&qword_10011F0A0, &qword_1000F1660);
  sub_100002C64(&qword_10011F0A8, &qword_10011F0A0, &qword_1000F1660, &protocol conformance descriptor for PassthroughSubject<A, B>);
  sub_1000E2078();

  sub_100002C64(&qword_10011F0B0, &unk_10011F090, &unk_1000F1650, &protocol conformance descriptor for Publishers.Filter<A>);
  v12 = sub_1000E2028();
  *(v0 + 160) = v12;
  (*(v4 + 8))(v3, v15);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_10002FCA8;

  return sub_10009EF7C(v12);
}

uint64_t sub_10002FCA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = *(v4 + 112);
    v6 = sub_10002FE60;
  }

  else
  {
    v7 = *(v4 + 112);

    *(v4 + 184) = a1;
    v6 = sub_10002FDE8;
    v5 = v7;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10002FDE8()
{
  sub_10001C430(*(v0 + 144), *(v0 + 152));

  v1 = *(v0 + 8);
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_10002FE60()
{
  sub_10001C430(*(v0 + 144), *(v0 + 152));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10002FEE0(id *a1, void *a2)
{
  v32 = a2;
  v3 = sub_1000E0D68();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000ADE4(&qword_10011F0B8, &qword_1000F1668);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = sub_10000ADE4(&unk_10011F0C0, &qword_1000F1670);
  v10 = __chkstk_darwin(v9 - 8);
  v31 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = [*a1 suggestion];
  v18 = [v17 identifier];

  sub_1000E0D38();
  v19 = *(v4 + 56);
  v20 = 1;
  v19(v16, 0, 1, v3);
  if (v32)
  {
    v21 = [v32 identifier];
    sub_1000E0D38();

    v20 = 0;
  }

  v19(v14, v20, 1, v3);
  v22 = *(v6 + 48);
  sub_10003BE24(v16, v8);
  sub_10003BE24(v14, &v8[v22]);
  v23 = *(v4 + 48);
  if (v23(v8, 1, v3) != 1)
  {
    v25 = v31;
    sub_10003BE24(v8, v31);
    if (v23(&v8[v22], 1, v3) != 1)
    {
      v26 = v30;
      (*(v4 + 32))(v30, &v8[v22], v3);
      sub_10003BB3C(&qword_10011DF60, 255, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v24 = sub_1000E2318();
      v27 = *(v4 + 8);
      v27(v26, v3);
      sub_1000033C8(v14, &unk_10011F0C0, &qword_1000F1670);
      sub_1000033C8(v16, &unk_10011F0C0, &qword_1000F1670);
      v27(v25, v3);
      sub_1000033C8(v8, &unk_10011F0C0, &qword_1000F1670);
      return v24 & 1;
    }

    sub_1000033C8(v14, &unk_10011F0C0, &qword_1000F1670);
    sub_1000033C8(v16, &unk_10011F0C0, &qword_1000F1670);
    (*(v4 + 8))(v25, v3);
    goto LABEL_8;
  }

  sub_1000033C8(v14, &unk_10011F0C0, &qword_1000F1670);
  sub_1000033C8(v16, &unk_10011F0C0, &qword_1000F1670);
  if (v23(&v8[v22], 1, v3) != 1)
  {
LABEL_8:
    sub_1000033C8(v8, &qword_10011F0B8, &qword_1000F1668);
    v24 = 0;
    return v24 & 1;
  }

  sub_1000033C8(v8, &unk_10011F0C0, &qword_1000F1670);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_100030378(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230D0;
  v2[4] = qword_1001230D0;

  return _swift_task_switch(sub_100030414, v3, 0);
}

uint64_t sub_100030414()
{
  if (*(v0[3] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning) == 1)
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1000305B0;
    v2 = v0[2];

    return sub_100030910(v2);
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_100123188);
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2658();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "update - IRSession not running", v7, 2u);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1000305B0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_1000306C8, v2, 0);
}

uint64_t sub_1000306C8()
{
  v15 = v0;
  if (*(v0[6] + 16))
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v1 = sub_1000E1F08();
    sub_1000049D0(v1, qword_100123188);

    v2 = sub_1000E1EE8();
    v3 = sub_1000E2658();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v14 = v5;
      *v4 = 136315138;
      v6 = sub_1000E2478();
      v8 = sub_100029C70(v6, v7, &v14);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, v2, v3, "Informing IR to update idsIdentifiers: %s", v4, 0xCu);
      sub_10000E9DC(v5);
    }

    v9 = *(v0[3] + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession);

    sub_1000D01E4(v10);
    sub_10000CAAC(0, &qword_10011F078, IRCandidate_ptr);
    sub_10001B174(&unk_10011F080, &qword_10011F078, IRCandidate_ptr);
    isa = sub_1000E25D8().super.isa;

    [v9 updateCandidates:isa];
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100030910(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v3 = qword_1001230D0;
  v2[5] = qword_1001230D0;

  return _swift_task_switch(sub_1000309AC, v3, 0);
}

uint64_t sub_1000309AC()
{
  v1 = v0[3];
  v2 = v1[2];
  v0[6] = v2;
  if (v2)
  {
    v0[8] = 0;
    v0[9] = _swiftEmptyDictionarySingleton;
    v0[7] = _swiftEmptyDictionarySingleton;
    v3 = v1[4];
    v0[10] = v3;
    v4 = v1[5];
    v0[11] = v4;

    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_100030AC4;

    return sub_1000367E4(v3, v4);
  }

  else
  {
    v7 = v0[1];

    return v7(_swiftEmptyDictionarySingleton);
  }
}

uint64_t sub_100030AC4(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_100030BDC, v2, 0);
}

void sub_100030BDC()
{
  v1 = v0[13];
  v2 = v0[11];
  if (!v1)
  {

    v16 = v0[9];
    v17 = v0[7];
    goto LABEL_17;
  }

  v3 = v0[10];
  v4 = v0[7];
  v5 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v0[2] = v4;
  v7 = sub_10000B2D0(v3, v2);
  v9 = *(v4 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v3) = v8;
  if (*(v0[7] + 24) >= v12)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_13:
    v22 = v7;
    sub_1000CB35C();
    v7 = v22;
    v18 = v0[11];
    if (v3)
    {
      goto LABEL_11;
    }

LABEL_14:
    v23 = v0[10];
    v17 = v0[2];
    v17[(v7 >> 6) + 8] |= 1 << v7;
    v24 = (v17[6] + 16 * v7);
    *v24 = v23;
    v24[1] = v18;
    *(v17[7] + 8 * v7) = v5;

    v25 = v17[2];
    v11 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    v17[2] = v26;
    goto LABEL_16;
  }

  v14 = v0[10];
  v13 = v0[11];
  sub_10001EF90(v12, isUniquelyReferenced_nonNull_native);
  v7 = sub_10000B2D0(v14, v13);
  if ((v3 & 1) != (v15 & 1))
  {

    sub_1000E2CC8();
    return;
  }

LABEL_10:
  v18 = v0[11];
  if ((v3 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v19 = v7;

  v17 = v0[2];
  v20 = v17[7];
  v21 = *(v20 + 8 * v19);
  *(v20 + 8 * v19) = v5;

LABEL_16:
  v16 = v17;
LABEL_17:
  v27 = v0[8] + 1;
  if (v27 == v0[6])
  {
    v28 = v0[1];

    v28(v16);
  }

  else
  {
    v0[8] = v27;
    v0[9] = v16;
    v0[7] = v17;
    v29 = v0[3] + 16 * v27;
    v30 = *(v29 + 32);
    v0[10] = v30;
    v31 = *(v29 + 40);
    v0[11] = v31;

    v32 = swift_task_alloc();
    v0[12] = v32;
    *v32 = v0;
    v32[1] = sub_100030AC4;

    sub_1000367E4(v30, v31);
  }
}

void sub_100030E7C(char a1, uint64_t a2, unint64_t a3)
{
  if (v3[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning] == 1)
  {
    v4 = v3;
    v8 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
    swift_beginAccess();
    v9 = *&v3[v8];
    if (*(v9 + 16))
    {

      v10 = sub_10000B2D0(a2, a3);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        v13 = [objc_allocWithZone(IRAppleTVControlEvent) initWithEventType:qword_1000F16A8[a1] eventSubType:0];
        if (qword_10011DC80 != -1)
        {
          swift_once();
        }

        v14 = sub_1000E1F08();
        sub_1000049D0(v14, qword_100123188);
        v15 = v12;
        v16 = v13;
        v17 = sub_1000E1EE8();
        v18 = sub_1000E2698();

        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          v20 = swift_slowAlloc();
          *v19 = 138412546;
          *(v19 + 4) = v16;
          *(v19 + 12) = 2112;
          *(v19 + 14) = v15;
          *v20 = v16;
          v20[1] = v15;
          v21 = v15;
          v22 = v16;
          _os_log_impl(&_mh_execute_header, v17, v18, "Add learning IREvent: %@ for candidate: %@", v19, 0x16u);
          sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
          swift_arrayDestroy();
        }

        [*&v4[OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession] addEvent:v16 forCandidate:v15];
        return;
      }
    }

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v26 = sub_1000E1F08();
    sub_1000049D0(v26, qword_100123188);

    v27 = v3;
    v28 = sub_1000E1EE8();
    v29 = sub_1000E2678();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v30 = 136315394;
      *(v30 + 4) = sub_100029C70(a2, a3, &v36);
      *(v30 + 12) = 2080;
      sub_10000CAAC(0, &qword_10011F078, IRCandidate_ptr);

      v31 = sub_1000E22C8();
      v33 = v32;

      v34 = sub_100029C70(v31, v33, &v36);

      *(v30 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v28, v29, "didSelect %s but could not find matching candidate in candidates:%s", v30, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v23 = sub_1000E1F08();
    sub_1000049D0(v23, qword_100123188);
    oslog = sub_1000E1EE8();
    v24 = sub_1000E2698();
    if (os_log_type_enabled(oslog, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v24, "addEvent - IRSession not running", v25, 2u);
    }
  }
}

void sub_100031358(uint64_t a1, unint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_isRunning) == 1)
  {
    v5 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_identifierToCandidateMap;
    swift_beginAccess();
    v6 = *(v2 + v5);
    if (*(v6 + 16))
    {
      v7 = v2;

      v8 = sub_10000B2D0(a1, a2);
      if (v9)
      {
        v10 = *(*(v6 + 56) + 8 * v8);

        if (qword_10011DC80 != -1)
        {
          swift_once();
        }

        v11 = sub_1000E1F08();
        sub_1000049D0(v11, qword_100123188);
        v12 = v10;
        v13 = sub_1000E1EE8();
        v14 = sub_1000E2698();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          *v15 = 138412290;
          *(v15 + 4) = v12;
          *v16 = v12;
          v17 = v12;
          _os_log_impl(&_mh_execute_header, v13, v14, "Adding user interaction IREvent for candidate: %@", v15, 0xCu);
          sub_1000033C8(v16, &unk_10011EAC0, &unk_1000F0E60);
        }

        v18 = [objc_allocWithZone(IRAppleTVControlEvent) initWithEventType:3 eventSubType:0];
        [*(v7 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_irSession) addEvent:v18 forCandidate:v12];

LABEL_21:
        return;
      }
    }

    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v22 = sub_1000E1F08();
    sub_1000049D0(v22, qword_100123188);

    v18 = sub_1000E1EE8();
    v23 = sub_1000E2678();

    if (os_log_type_enabled(v18, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_100029C70(a1, a2, &v27);
      _os_log_impl(&_mh_execute_header, v18, v23, "markEventComplete for %s but could not find matching candidate", v24, 0xCu);
      sub_10000E9DC(v25);
    }

    goto LABEL_21;
  }

  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v19 = sub_1000E1F08();
  sub_1000049D0(v19, qword_100123188);
  oslog = sub_1000E1EE8();
  v20 = sub_1000E2698();
  if (os_log_type_enabled(oslog, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v20, "markEventComplete - IRSession not running", v21, 2u);
  }
}

void sub_100031750(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  if (*(v1 + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState))
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v4 = sub_1000E1F08();
    sub_1000049D0(v4, qword_100123188);
    v5 = sub_1000E1EE8();
    v6 = sub_1000E2698();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v23 = v8;
      *v7 = 136315138;
      v9 = 0xE700000000000000;
      v10 = 0x6E776F6E6B6E75;
      v11 = 0xE700000000000000;
      v12 = 0x74756F656D6974;
      v13 = 0xED000064656C6C65;
      v14 = 0x636E614372657375;
      if (a1 != 4)
      {
        v14 = 0xD000000000000014;
        v13 = 0x80000001000EAA60;
      }

      if (a1 != 3)
      {
        v12 = v14;
        v11 = v13;
      }

      v15 = 0x80000001000EAA80;
      v16 = 0xD000000000000015;
      if (a1 != 1)
      {
        v16 = 0x656767755377656ELL;
        v15 = 0xED00006E6F697473;
      }

      if (a1)
      {
        v10 = v16;
        v9 = v15;
      }

      if (a1 <= 2u)
      {
        v17 = v10;
      }

      else
      {
        v17 = v12;
      }

      if (a1 <= 2u)
      {
        v18 = v9;
      }

      else
      {
        v18 = v11;
      }

      v19 = sub_100029C70(v17, v18, &v23);

      *(v7 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v5, v6, "Reset suggestion for reason: %s", v7, 0xCu);
      sub_10000E9DC(v8);
    }

    sub_1000345F0(a1);
    v20 = *v2;
    v21 = *(v2 + 8);
    *v2 = 0;
    *(v2 + 8) = 0;
    v22 = *(v2 + 16);
    *(v2 + 16) = 0;
    sub_10002D710(v20, v21, v22);

    sub_10001C430(v20, v21);
  }
}

uint64_t sub_1000319F0(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1000E0D68();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  if (qword_10011DC08 != -1)
  {
    swift_once();
  }

  v4 = qword_1001230D0;
  v2[9] = qword_1001230D0;

  return _swift_task_switch(sub_100031AF4, v4, 0);
}

uint64_t sub_100031AF4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 80) = Strong;
  if (!Strong)
  {
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v43 = sub_1000E1F08();
    sub_1000049D0(v43, qword_100123188);
    v44 = sub_1000E1EE8();
    v45 = sub_1000E2678();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Asked to respond to suggestion without a delegate set.", v46, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_33;
  }

  v2 = *(v0 + 32);
  v3 = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  *(v0 + 88) = OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService26NearbySuggestionController_suggestionState;
  v4 = v2 + v3;
  v5 = *(v2 + v3);
  *(v0 + 96) = v5;
  if (!v5)
  {
    goto LABEL_24;
  }

  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 24);
  v11 = *(v4 + 8);
  sub_10001C3F0(v5, v11);
  v12 = v5;
  sub_10001C430(v5, v11);
  v13 = [v12 identifier];
  sub_1000E0D38();

  v14 = [v10 suggestion];
  v15 = [v14 identifier];

  sub_1000E0D38();
  LOBYTE(v14) = sub_1000E0D28();
  v16 = *(v9 + 8);
  v16(v7, v8);
  v16(v6, v8);
  if ((v14 & 1) == 0)
  {

LABEL_24:
    if (qword_10011DC80 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 24);
    v48 = *(v0 + 32);
    v49 = sub_1000E1F08();
    sub_1000049D0(v49, qword_100123188);
    v50 = v47;
    v51 = v48;
    v52 = sub_1000E1EE8();
    v53 = sub_1000E2678();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = *(v0 + 24);
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v55 = 138412546;
      *(v55 + 4) = v54;
      *v56 = v54;
      *(v55 + 12) = 2112;
      v57 = *v4;
      v58 = *(v0 + 24);
      if (*v4)
      {
        v59 = *(v4 + 8);
        v60 = v58;
        sub_10001C3F0(v57, v59);
        v61 = v57;
        sub_10001C430(v57, v59);
      }

      else
      {
        v62 = v58;
        v61 = 0;
      }

      *(v55 + 14) = v61;
      v56[1] = v57;
      _os_log_impl(&_mh_execute_header, v52, v53, "Received suggestion result:%@ for a different suggestion:%@", v55, 0x16u);
      sub_10000ADE4(&unk_10011EAC0, &unk_1000F0E60);
      swift_arrayDestroy();
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();
    goto LABEL_32;
  }

  if (qword_10011DC80 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 24);
  v18 = sub_1000E1F08();
  sub_1000049D0(v18, qword_100123188);
  v19 = v17;
  v20 = sub_1000E1EE8();
  v21 = sub_1000E2698();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 24);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v22;
    *v24 = v22;
    v25 = v22;
    _os_log_impl(&_mh_execute_header, v20, v21, "Responding to current suggestion with result: %@", v23, 0xCu);
    sub_1000033C8(v24, &unk_10011EAC0, &unk_1000F0E60);
  }

  v26 = *(v0 + 24);

  sub_10001D564(v26);
  v27 = [v26 suggestion];
  v28 = [v27 deviceHandle];
  *(v0 + 104) = v28;

  v29 = sub_100061CD4();
  if (!v30)
  {
    v64 = sub_1000E1EE8();
    v65 = sub_1000E2678();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "Could not process suggestion result without deviceHandle identifier", v66, 2u);
    }

    TUMakeNeighborhoodConduitError();
    swift_willThrow();

    goto LABEL_32;
  }

  v31 = v29;
  v32 = v30;
  v33 = v12;
  v34 = *(v0 + 24);
  v35 = [v34 suggestion];
  v36 = [v35 type];

  v37 = [v34 type];
  if (v37 <= 1)
  {
    if (v37)
    {
      if (v37 == 1 && v36 <= 2)
      {
        v38 = *(v0 + 24);
        sub_100030E7C(1, v31, v32);

        v39 = [v38 suggestion];
        v40 = [v39 deviceHandle];
        *(v0 + 112) = v40;

        if (qword_10011DC30 != -1)
        {
          swift_once();
        }

        *(v0 + 120) = qword_1001230F0;
        v41 = swift_task_alloc();
        *(v0 + 128) = v41;
        *v41 = v0;
        v41[1] = sub_10003258C;

        return sub_10007FB1C(v40);
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v37 != 2)
  {
    if (v37 != 3)
    {
LABEL_44:

      v73 = v33;
LABEL_51:
      v78 = *(v0 + 24);
      v79 = sub_1000E1EE8();
      v80 = sub_1000E2678();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = *(v0 + 24);
        v82 = swift_slowAlloc();
        *v82 = 134217984;
        *(v82 + 4) = [v81 type];

        _os_log_impl(&_mh_execute_header, v79, v80, "Unknown result type:%ld. Ignoring", v82, 0xCu);
      }

      else
      {

        v79 = *(v0 + 24);
      }

      TUMakeNeighborhoodConduitError();
      swift_willThrow();

LABEL_32:
      swift_unknownObjectRelease();
LABEL_33:

      v63 = *(v0 + 8);
LABEL_34:

      return v63();
    }

    sub_100030E7C(2, v31, v32);
LABEL_43:

    v68 = *(v0 + 96);
    v67 = *(v0 + 104);
    v69 = *(v0 + 32) + *(v0 + 88);
    *(v0 + 16) = *(v0 + 24);

    sub_1000E1FC8();

    v70 = *v69;
    v71 = *(v69 + 8);
    *v69 = 0;
    *(v69 + 8) = 0;
    v72 = *(v69 + 16);
    *(v69 + 16) = 0;
    sub_10002D710(v70, v71, v72);
    sub_10001C430(v70, v71);

    swift_unknownObjectRelease();

    v63 = *(v0 + 8);
    goto LABEL_34;
  }

  v74 = v36 > 2;
  v73 = v33;
  if (v74)
  {
    goto LABEL_51;
  }

  v75 = [*(v0 + 24) suggestion];
  v76 = [v75 deviceHandle];
  *(v0 + 144) = v76;

  if (qword_10011DC30 != -1)
  {
    swift_once();
  }

  *(v0 + 152) = qword_1001230F0;
  v77 = swift_task_alloc();
  *(v0 + 160) = v77;
  *v77 = v0;
  v77[1] = sub_100032924;

  return sub_10007FF98(v76, 1);
}