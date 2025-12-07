uint64_t sub_100261D7C(uint64_t a1)
{
  v14 = *v2;
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 136);

  v6 = (v5 + 8);
  v7 = (v4 + 8);
  v8 = v3[29];
  v9 = v3[26];
  v10 = v3[19];
  v11 = v3[16];
  if (v1)
  {

    (*v6)(v10, v11);
    (*v7)(v8, v9);
    v12 = sub_100262A8C;
  }

  else
  {

    v14[46] = a1;
    (*v6)(v10, v11);
    (*v7)(v8, v9);
    v12 = sub_100261FC0;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_100261FC0()
{
  sub_100401C2C(v0[46]);
  v2 = v1;
  v4 = v3;

  if (v2)
  {

    sub_100799494();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  (*(v0[14] + 56))(v0[34], v5, 1, v0[13]);
  v6 = v0[37];
  v7 = v0[32];
  v8 = v0[13];
  v9 = v0[14];
  sub_100008EF8(v0[34], v6);
  sub_10000847C(v6, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v10 = v0[37];
    v12 = v0[14];
    v11 = v0[15];
    v20 = v0[13];
    (*(v12 + 32))(v11, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v13 = [objc_opt_self() defaultManager];
    v14 = sub_1007A2214();

    sub_100796944(v15);
    v17 = v16;
    [v13 updateAssetWithID:v14 url:v16];

    (*(v12 + 8))(v11, v20);
  }

  sub_100008F68(v10);
  sub_1000074E0(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002622B0(uint64_t a1)
{
  v14 = *v2;
  v3 = *v2;
  v4 = *(*v2 + 216);
  v5 = *(*v2 + 136);

  v6 = (v5 + 8);
  v7 = (v4 + 8);
  v8 = v3[28];
  v9 = v3[26];
  v10 = v3[18];
  v11 = v3[16];
  if (v1)
  {

    (*v6)(v10, v11);
    (*v7)(v8, v9);
    v12 = sub_100262D3C;
  }

  else
  {

    v14[49] = a1;
    (*v6)(v10, v11);
    (*v7)(v8, v9);
    v12 = sub_1002624F4;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1002624F4()
{
  sub_100401C2C(v0[49]);
  v2 = v1;
  v4 = v3;

  if (v2)
  {

    sub_100799494();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  (*(v0[14] + 56))(v0[33], v5, 1, v0[13]);
  v6 = v0[37];
  v7 = v0[32];
  v8 = v0[13];
  v9 = v0[14];
  sub_100008EF8(v0[33], v6);
  sub_10000847C(v6, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v10 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v10 = v0[37];
    v12 = v0[14];
    v11 = v0[15];
    v20 = v0[13];
    (*(v12 + 32))(v11, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v13 = [objc_opt_self() defaultManager];
    v14 = sub_1007A2214();

    sub_100796944(v15);
    v17 = v16;
    [v13 updateAssetWithID:v14 url:v16];

    (*(v12 + 8))(v11, v20);
  }

  sub_100008F68(v10);
  sub_1000074E0(v0 + 2);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1002627E0()
{
  (*(v0[14] + 56))(v0[36], 1, 1, v0[13]);
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[13];
  v4 = v0[14];
  sub_100008EF8(v0[36], v1);
  sub_10000847C(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v5 = v0[37];
    v7 = v0[14];
    v6 = v0[15];
    v15 = v0[13];
    (*(v7 + 32))(v6, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v8 = [objc_opt_self() defaultManager];
    v9 = sub_1007A2214();

    sub_100796944(v10);
    v12 = v11;
    [v8 updateAssetWithID:v9 url:v11];

    (*(v7 + 8))(v6, v15);
  }

  sub_100008F68(v5);
  sub_1000074E0(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100262A8C()
{
  (*(v0[14] + 56))(v0[34], 1, 1, v0[13]);
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[13];
  v4 = v0[14];
  sub_100008EF8(v0[34], v1);
  sub_10000847C(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v5 = v0[37];
    v7 = v0[14];
    v6 = v0[15];
    v15 = v0[13];
    (*(v7 + 32))(v6, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v8 = [objc_opt_self() defaultManager];
    v9 = sub_1007A2214();

    sub_100796944(v10);
    v12 = v11;
    [v8 updateAssetWithID:v9 url:v11];

    (*(v7 + 8))(v6, v15);
  }

  sub_100008F68(v5);
  sub_1000074E0(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100262D3C()
{
  (*(v0[14] + 56))(v0[33], 1, 1, v0[13]);
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[13];
  v4 = v0[14];
  sub_100008EF8(v0[33], v1);
  sub_10000847C(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v5 = v0[37];
    v7 = v0[14];
    v6 = v0[15];
    v15 = v0[13];
    (*(v7 + 32))(v6, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v8 = [objc_opt_self() defaultManager];
    v9 = sub_1007A2214();

    sub_100796944(v10);
    v12 = v11;
    [v8 updateAssetWithID:v9 url:v11];

    (*(v7 + 8))(v6, v15);
  }

  sub_100008F68(v5);
  sub_1000074E0(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100262FE8()
{
  (*(v0[14] + 56))(v0[35], 1, 1, v0[13]);
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[13];
  v4 = v0[14];
  sub_100008EF8(v0[35], v1);
  sub_10000847C(v1, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v0[32];
    sub_100008F68(v0[37]);
  }

  else
  {
    v5 = v0[37];
    v7 = v0[14];
    v6 = v0[15];
    v15 = v0[13];
    (*(v7 + 32))(v6, v0[32]);
    sub_100796914();
    sub_10022569C((v0 + 2), v0[5]);
    sub_100797624();
    v8 = [objc_opt_self() defaultManager];
    v9 = sub_1007A2214();

    sub_100796944(v10);
    v12 = v11;
    [v8 updateAssetWithID:v9 url:v11];

    (*(v7 + 8))(v6, v15);
  }

  sub_100008F68(v5);
  sub_1000074E0(v0 + 2);

  v13 = v0[1];

  return v13();
}

uint64_t AppShareActionItem.__deallocating_deinit()
{
  _s5Books18AppShareActionItemCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1002632CC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v16 - 8);
  v18 = &v26[-v17];
  v30[3] = a6;
  v30[4] = a8;
  v19 = sub_1002256EC(v30);
  (*(*(a6 - 8) + 32))(v19, a1, a6);
  v29[3] = a7;
  v29[4] = a9;
  v20 = sub_1002256EC(v29);
  (*(*(a7 - 8) + 32))(v20, a2, a7);
  sub_100009864(v30, v28);
  sub_100009864(v29, v27);
  sub_100009864(a4, v26);
  v21 = a3;
  v22 = sub_100796FA4();
  v23 = sub_1007A2744();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  sub_100009864(v30, v28);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1000077C0(v28, v24 + 32);
  sub_1003457A0(0, 0, v18, &unk_1008220C0, v24);

  sub_1000074E0(a4);
  sub_1000074E0(v29);
  sub_1000074E0(v30);
  return v22;
}

uint64_t sub_1002634F4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a4;
  v26 = a8;
  v24 = a3;
  v13 = *(a7 - 8);
  __chkstk_darwin(a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppShareActionItem(0);
  v21 = swift_allocObject();
  (*(v17 + 16))(v20, a1, a6);
  (*(v13 + 16))(v15, a2, a7);
  return sub_1002632CC(v20, v15, v24, v25, v21, a6, a7, v26, a9);
}

uint64_t type metadata accessor for AppShareActionItem(uint64_t a1)
{
  result = qword_100AD7788;
  if (!qword_100AD7788)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100263738(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100263878(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_100263A94()
{
  result = qword_100AD7858;
  if (!qword_100AD7858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7858);
  }

  return result;
}

id sub_100263B40(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BookReaderPurchaseHandler();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100263C10(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_1001F1160(&qword_100AD78C8, &qword_100814928);
  v3 = sub_1007A22E4();
  sub_1007A3744(40);

  v12 = v3;
  v13._countAndFlagsBits = 0x497465737361203ALL;
  v13._object = 0xEA00000000003D44;
  sub_1007A23D4(v13);
  v4 = *(v2 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_assetID);
  v5 = *(v2 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_assetID + 8);

  v14._countAndFlagsBits = v4;
  v14._object = v5;
  sub_1007A23D4(v14);

  v15._object = 0x80000001008C6A70;
  v15._countAndFlagsBits = 0xD000000000000018;
  sub_1007A23D4(v15);
  v6 = *(v2 + OBJC_IVAR____TtC5Books20CarPlayListenNowData_updatedReadingProgress);
  v7 = [v6 description];
  v8 = sub_1007A2254();
  v10 = v9;

  v16._countAndFlagsBits = v8;
  v16._object = v10;
  sub_1007A23D4(v16);

  return v12;
}

id sub_100263DBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarPlayListenNowData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100263E64()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD78D0);
  sub_100008B98(v0, qword_100AD78D0);
  return sub_10079ACD4();
}

uint64_t sub_100263EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = sub_1007A1C54();
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007A1CA4();
  v8 = *(v21 - 8);
  __chkstk_darwin(v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007A1C64();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.userInitiated(_:), v11);

  v16 = sub_1007A2DB4();
  (*(v12 + 8))(v14, v11);
  v17 = swift_allocObject();
  v17[2] = sub_10026623C;
  v17[3] = v15;
  v17[4] = v20;
  aBlock[4] = sub_10026627C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A11308;
  v18 = _Block_copy(aBlock);
  sub_1007A1C74();
  v23 = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v18);

  (*(v22 + 8))(v7, v5);
  (*(v8 + 8))(v10, v21);
}

void sub_1002642A8(void (*a1)(void *, id, uint64_t))
{
  v2 = [objc_opt_self() sharedProvider];
  v3 = [v2 activeStoreAccount];

  v4 = [objc_opt_self() bu_sharedAccountStore];
  v5 = [v4 ams_iTunesAccounts];

  sub_10000A7C4(0, &unk_100AECAA0, ACAccount_ptr);
  v6 = sub_1007A25E4();

  v16 = a1;
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007A3784();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v17 = v9;
      if (sub_100265C8C(&v17))
      {

        v12 = v10;
        v13 = 2 * (v3 != 0);
        v14 = v3;
        goto LABEL_20;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v14 = 0;
  v12 = 0;
  if (v3)
  {
    v13 = 1;
  }

  else
  {
    v13 = 3;
  }

  v10 = v3;
LABEL_20:
  v15 = v3;
  v16(v10, v14, v13);
  sub_100266188(v10, v14, v13);

  sub_100266188(v10, v14, v13);
}

uint64_t sub_1002645C8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 3;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = ObjectType;
  swift_retain_n();

  sub_1001F1160(&qword_100AD7920, &qword_1008149F8);
  sub_100005920(&qword_100AD7928, &qword_100AD7920, &qword_1008149F8, &protocol conformance descriptor for Future<A, B>);
  sub_10079BA84();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_100264780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10079ACE4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v34[-v9];
  __chkstk_darwin(v11);
  v13 = &v34[-v12];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  swift_beginAccess();
  v16 = *(a3 + 16);
  if (*(a3 + 32) <= 1u)
  {
    if (!*(a3 + 32))
    {
      v17 = *(a3 + 24);
      v18 = qword_100AD1338;
      v19 = v16;
      if (v18 != -1)
      {
        swift_once();
      }

      v20 = sub_100008B98(v4, qword_100AD78D0);
      (*(v5 + 16))(v10, v20, v4);
      v21 = sub_10079ACC4();
      v22 = sub_1007A29D4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Move legacy account to shared", v23, 2u);
      }

      (*(v5 + 8))(v10, v4);
      sub_1002661E8(v16, v17, 0);
      sub_100264C9C(v16, v16);

      sub_100266188(v16, v17, 0);
      sub_100266188(v16, v17, 0);
      return;
    }

    goto LABEL_15;
  }

  if (*(a3 + 32) != 2)
  {
LABEL_15:
    if (qword_100AD1338 != -1)
    {
      swift_once();
    }

    v30 = sub_100008B98(v4, qword_100AD78D0);
    (*(v5 + 16))(v13, v30, v4);
    v31 = sub_10079ACC4();
    v32 = sub_1007A29D4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Nothing to do", v33, 2u);
    }

    (*(v5 + 8))(v13, v4);
    return;
  }

  v24 = v16;
  if (qword_100AD1338 != -1)
  {
    swift_once();
  }

  v25 = sub_100008B98(v4, qword_100AD78D0);
  (*(v5 + 16))(v7, v25, v4);
  v26 = sub_10079ACC4();
  v27 = sub_1007A29D4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "Both legacy and shared account, remove properties from legacy", v28, 2u);
  }

  (*(v5 + 8))(v7, v4);
  v29 = v24;
  sub_100264C9C(v16, 0);
}

void sub_100264C10(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v8 = *(a2 + 32);
  *(a2 + 32) = v5;
  sub_1002661E8(v3, v4, v5);
  sub_100266188(v6, v7, v8);
}

uint64_t sub_100264C9C(void *a1, void *a2)
{
  v24 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_1007A1C54();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &ObjectType - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007A1CA4();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &ObjectType - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007A1C64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_opt_self() bu_sharedAccountStore];
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  (*(v10 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
  v14 = sub_1007A2DB4();
  (*(v10 + 8))(v12, v9);
  v15 = swift_allocObject();
  v16 = ObjectType;
  v17 = v24;
  v15[2] = v24;
  v15[3] = v13;
  v15[4] = a1;
  v15[5] = v16;
  aBlock[4] = sub_100265BC8;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003323D0;
  aBlock[3] = &unk_100A111A0;
  v18 = _Block_copy(aBlock);
  v19 = a1;
  v20 = v17;
  v21 = v13;
  sub_1007A1C74();
  v28 = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v18);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
}

void sub_100265060(void *a1, char *a2, void *a3)
{
  v6 = sub_10079ACE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  if (a1)
  {
    v64 = a3;
    v13 = qword_100AD1338;
    v14 = a1;
    if (v13 != -1)
    {
LABEL_62:
      swift_once();
    }

    v15 = sub_100008B98(v6, qword_100AD78D0);
    (*(v7 + 16))(v12, v15, v6);
    v16 = v14;
    v17 = sub_10079ACC4();
    v18 = sub_1007A29A4();
    if (os_log_type_enabled(v17, v18))
    {
      v62 = v7;
      v63 = v9;
      v65 = a2;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&aBlock = v20;
      *v19 = 136315138;
      v21 = [v16 username];

      if (!v21)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v22 = sub_1007A2254();
      v24 = v23;

      v25 = sub_1000070F4(v22, v24, &aBlock);

      *(v19 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "About to set shared account: %s", v19, 0xCu);
      sub_1000074E0(v20);

      v7 = v62;
      (*(v62 + 8))(v12, v6);
      a2 = v65;
      v9 = v63;
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    [v16 ams_setActive:1 forMediaType:AMSAccountMediaTypeProduction];
    v26 = [a2 ams_saveAccount:v16 verifyCredentials:0];
    v68 = sub_100265C34;
    v69 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v67 = sub_1002D63C0;
    *(&v67 + 1) = &unk_100A111F0;
    v27 = _Block_copy(&aBlock);

    [v26 addFinishBlock:v27];
    _Block_release(v27);

    a3 = v64;
  }

  if (!a3)
  {
    return;
  }

  v28 = qword_100AD1338;
  v29 = a3;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_100008B98(v6, qword_100AD78D0);
  (*(v7 + 16))(v9, v30, v6);
  v31 = v29;
  v32 = sub_10079ACC4();
  v33 = sub_1007A29A4();
  if (os_log_type_enabled(v32, v33))
  {
    v63 = v9;
    v34 = v7;
    v65 = a2;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&aBlock = v36;
    *v35 = 136315138;
    v37 = [v31 username];

    if (!v37)
    {
LABEL_71:
      __break(1u);
      return;
    }

    v38 = sub_1007A2254();
    v40 = v39;

    v41 = sub_1000070F4(v38, v40, &aBlock);

    *(v35 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v32, v33, "About to remove account property from legacy books account: %s", v35, 0xCu);
    sub_1000074E0(v36);

    v42 = *(v34 + 8);
    v9 = (v34 + 8);
    v42(v63, v6);
    a2 = v65;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v43 = [v31 accountProperties];
  if (!v43)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v44 = v43;
  v6 = 0xD000000000000033;
  *&v71 = 0xD000000000000010;
  *(&v71 + 1) = 0x80000001008C6AD0;
  v45 = [v43 __swift_objectForKeyedSubscript:sub_1007A3B04()];
  swift_unknownObjectRelease();

  if (v45)
  {
    sub_1007A3504();
    swift_unknownObjectRelease();
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  aBlock = v71;
  v67 = v72;
  if (!*(&v72 + 1))
  {

    sub_1000230BC(&aBlock);
    return;
  }

  sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v63 = 0xD000000000000010;
  v64 = 0x80000001008C6AD0;
  v46 = v70;
  v47 = *(v70 + 16);
  v65 = a2;
  if (v47)
  {
    v7 = 0;
    v48 = 0;
    v12 = 0x80000001008C6AF0;
    while (1)
    {
      v49 = *&v46[v7 + 32] == 0xD000000000000033 && 0x80000001008C6AF0 == *&v46[v7 + 40];
      if (v49 || (sub_1007A3AB4() & 1) != 0)
      {
        break;
      }

      ++v48;
      v7 += 16;
      if (v47 == v48)
      {
        goto LABEL_29;
      }
    }

    a2 = (v48 + 1);
    if (__OFADD__(v48, 1))
    {
      goto LABEL_68;
    }

    v14 = *(v46 + 2);
    while (a2 != v14)
    {
      if (a2 >= v14)
      {
        __break(1u);
        goto LABEL_62;
      }

      v57 = *&v46[v7 + 48];
      v9 = *&v46[v7 + 56];
      v58 = v57 == 0xD000000000000033 && 0x80000001008C6AF0 == v9;
      if (!v58 && (sub_1007A3AB4() & 1) == 0)
      {
        if (a2 != v48)
        {
          if (v48 >= v14)
          {
            goto LABEL_66;
          }

          v59 = &v46[16 * v48 + 32];
          v60 = *(v59 + 1);
          v62 = *v59;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v46 = sub_1002F4988(v46);
          }

          v61 = &v46[16 * v48];
          *(v61 + 4) = v57;
          *(v61 + 5) = v9;

          if (a2 >= *(v46 + 2))
          {
            goto LABEL_67;
          }

          v56 = &v46[v7];
          *(v56 + 6) = v62;
          *(v56 + 7) = v60;
        }

        ++v48;
      }

      ++a2;
      v14 = *(v46 + 2);
      v7 += 16;
    }
  }

  else
  {
LABEL_29:
    a2 = *(v46 + 2);
    v48 = v47;
  }

  if (v48 > a2)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v48 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFADD__(a2, v48 - a2))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = v46;
  if (!isUniquelyReferenced_nonNull_native || v48 > *(v46 + 3) >> 1)
  {
    if (a2 <= v48)
    {
      v51 = v48;
    }

    else
    {
      v51 = a2;
    }

    v73 = sub_10000B3D8(isUniquelyReferenced_nonNull_native, v51, 1, v46);
  }

  sub_1002F90C0(v48, a2, 0);
  isa = sub_1007A25D4().super.isa;

  v53 = sub_1007A2214();
  [v31 setAccountProperty:isa forKey:v53];

  v54 = [v65 ams_saveAccount:v31 verifyCredentials:0];
  v68 = sub_100265C60;
  v69 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v67 = sub_1002D63C0;
  *(&v67 + 1) = &unk_100A111C8;
  v55 = _Block_copy(&aBlock);

  [v54 addFinishBlock:v55];

  _Block_release(v55);
}

id sub_100265980()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwitchAccountStorageController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100265A24(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100265A40(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100265A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_100265ACC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_100265AF4(void *a1, void *a2, char a3)
{
  if (a3 != 2)
  {
    return 0;
  }

  v4 = [a1 identifier];
  v5 = [a2 identifier];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      v8 = 0;
      return v8 & 1;
    }

    goto LABEL_9;
  }

  if (!v5)
  {

LABEL_9:
    v8 = 1;
    return v8 & 1;
  }

  sub_10000A7C4(0, &unk_100AEB920, NSString_ptr);
  v7 = sub_1007A3184();

  v8 = v7 ^ 1;
  return v8 & 1;
}

unint64_t sub_100265BDC()
{
  result = qword_100ADA670;
  if (!qword_100ADA670)
  {
    sub_1007A1C54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADA670);
  }

  return result;
}

id sub_100265C8C(id *a1)
{
  result = [*a1 accountProperties];
  if (result)
  {
    v2 = result;
    *&v7 = 0xD000000000000010;
    *(&v7 + 1) = 0x80000001008C6AD0;
    v3 = [result __swift_objectForKeyedSubscript:sub_1007A3B04()];
    swift_unknownObjectRelease();

    if (v3)
    {
      sub_1007A3504();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      sub_1001F1160(&unk_100AD61F0, &qword_10080FEF0);
      v4 = swift_dynamicCast();
      if (v4)
      {
        *&v9[0] = 0xD000000000000033;
        *(&v9[0] + 1) = 0x80000001008C6AF0;
        __chkstk_darwin(v4);
        v6[2] = v9;
        v5 = sub_100580218(sub_100266288, v6, v10);

        return (v5 & 1);
      }
    }

    else
    {
      sub_1000230BC(v9);
    }

    v5 = 0;
    return (v5 & 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_100265E44(uint64_t a1, const char *a2, const char *a3, ...)
{
  v6 = sub_10079ACE4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100AD1338 != -1)
    {
      swift_once();
    }

    v13 = sub_100008B98(v6, qword_100AD78D0);
    (*(v7 + 16))(v9, v13, v6);
    swift_errorRetain();
    v14 = sub_10079ACC4();
    v15 = sub_1007A29B4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v27 = a2;
      v18 = v17;
      v28 = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v19 = sub_1007A3B84();
      v21 = sub_1000070F4(v19, v20, &v28);

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, v27, v16, 0xCu);
      sub_1000074E0(v18);
    }

    else
    {
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    if (qword_100AD1338 != -1)
    {
      swift_once();
    }

    v22 = sub_100008B98(v6, qword_100AD78D0);
    (*(v7 + 16))(v12, v22, v6);
    v23 = sub_10079ACC4();
    v24 = sub_1007A29A4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, a3, v25, 2u);
    }

    return (*(v7 + 8))(v12, v6);
  }
}

void sub_100266188(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

id sub_1002661E8(id result, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return result;
    }

    v4 = result;
    result = a2;
  }

  return result;
}

uint64_t sub_10026623C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 0x1FF;
  return v4(v6);
}

uint64_t sub_1002662C0()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotImageView(uint64_t a1)
{
  result = qword_100AD7A28;
  if (!qword_100AD7A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100266390(uint64_t a1)
{
  sub_10026644C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChromeStyle(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_10079ACE4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10026644C(uint64_t a1)
{
  if (!qword_100AD7A38)
  {
    sub_1001F1234(&qword_100AD4F20, &unk_10080F020);
    v1 = sub_10079E224();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD7A38);
    }
  }
}

void *sub_1002664CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SnapshotImageView(0);
  __chkstk_darwin(v4);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = *v1;
  v11 = *(v1 + 1);
  v12 = *(v1 + 2);
  v43 = *v1;
  v44 = v11;
  v37 = v12;
  v45 = v12;
  v38 = sub_1001F1160(&qword_100AD7A78, &qword_100814A90);
  sub_10079E1C4();
  v13 = v40;
  if (v40)
  {
  }

  sub_100266E5C(v1, v9);
  sub_100266E5C(v1, v6);
  v14 = sub_10079ACC4();
  v15 = sub_1007A29A4();
  if (!os_log_type_enabled(v14, v15))
  {
    sub_100266EC0(v9);

    sub_100266EC0(v6);
LABEL_11:
    *a1 = sub_10079E474();
    a1[1] = v26;
    v27 = sub_1001F1160(&qword_100AD7A80, &qword_100814A98);
    sub_10026687C(v2, v13 != 0, a1 + *(v27 + 44));
    sub_10079DDD4();

    v43 = v10;
    v44 = v11;
    v45 = v37;
    sub_10079E1C4();
    v28 = v40;
    result = sub_1001F1160(&qword_100AD7A88, &qword_100814AA0);
    v29 = (a1 + *(result + 9));
    *v29 = 0;
    v29[1] = v28;
    return result;
  }

  v36 = v11;
  v16 = swift_slowAlloc();
  v35 = swift_slowAlloc();
  v42 = v35;
  *v16 = 134218242;
  v17 = *(v9 + 3);
  sub_100266EC0(v9);
  *(v16 + 4) = v17;
  *(v16 + 12) = 2080;
  if (!v13)
  {
    v23 = 0xEA00000000006465;
    v24 = 0x64616F6C20746F4ELL;
    goto LABEL_10;
  }

  v40 = 0;
  v41 = 0xE000000000000000;
  v18 = *v6;
  v19 = v6[2];
  v33 = v6[1];
  v34 = v18;
  v43 = v18;
  v44 = v33;
  v31 = v10;
  v32 = v19;
  v45 = v19;
  result = sub_10079E1C4();
  v21 = v39;
  if (v39)
  {
    [v39 size];

    v46._countAndFlagsBits = sub_1007A27C4();
    sub_1007A23D4(v46);

    v47._countAndFlagsBits = 2127904;
    v47._object = 0xE300000000000000;
    sub_1007A23D4(v47);
    v43 = v34;
    v44 = v33;
    v45 = v32;
    result = sub_10079E1C4();
    v22 = v39;
    if (v39)
    {
      [v39 size];

      v48._countAndFlagsBits = sub_1007A27C4();
      sub_1007A23D4(v48);

      v24 = v40;
      v23 = v41;
      v10 = v31;
LABEL_10:
      sub_100266EC0(v6);
      v25 = sub_1000070F4(v24, v23, &v42);

      *(v16 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v14, v15, "ImageView refreshed for page %ld %s", v16, 0x16u);
      sub_1000074E0(v35);

      v11 = v36;
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10026687C@<X0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v35 = sub_1001F1160(&qword_100AD7A90, &qword_100814AA8);
  __chkstk_darwin(v35);
  v34 = &v31 - v5;
  v33 = sub_1001F1160(&qword_100AD7A98, &qword_100814AB0);
  __chkstk_darwin(v33);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  __chkstk_darwin(v10);
  v36 = &v31 - v11;
  v12 = sub_10079DF34();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079DD94();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v44);

  *(&v38 + 1) = v44;
  *&v38 = swift_getKeyPath();
  sub_10079E474();
  sub_10079BE54();
  v16 = *(a1 + 2);
  v44 = *a1;
  v45 = v16;
  sub_1001F1160(&qword_100AD7A78, &qword_100814A90);
  sub_10079E1C4();
  if (!v41)
  {
    [objc_allocWithZone(UIImage) init];
  }

  sub_10079DF04();
  (*(v13 + 104))(v15, enum case for Image.ResizingMode.stretch(_:), v12);
  v17 = 0.0;
  v31 = sub_10079DF94();

  (*(v13 + 8))(v15, v12);
  if (v32)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 1.0;
  }

  if (v32)
  {
    v17 = 1.0;
  }

  sub_10079E474();
  sub_10079BE54();
  v54 = 1;
  *&v53[6] = v58;
  *&v53[22] = v59;
  *&v53[38] = v60;
  v19 = v34;
  sub_10079BDC4();
  sub_10079E474();
  sub_10079BE54();
  v20 = (v19 + *(v35 + 36));
  v21 = v62;
  *v20 = v61;
  v20[1] = v21;
  v20[2] = v63;
  sub_10020B3C8(v19, v9, &qword_100AD7A90, &qword_100814AA8);
  *&v9[*(v33 + 36)] = v18;
  v22 = v36;
  sub_10020B3C8(v9, v36, &qword_100AD7A98, &qword_100814AB0);
  v23 = v37;
  sub_1000077D8(v22, v37, &qword_100AD7A98, &qword_100814AB0);
  v39[0] = v38;
  v24 = v55;
  v39[1] = v55;
  v39[2] = v56;
  v25 = v57;
  v39[3] = v57;
  v40 = v18;
  *(a3 + 32) = v56;
  *(a3 + 48) = v25;
  *(a3 + 64) = v40;
  *a3 = v39[0];
  *(a3 + 16) = v24;
  v26 = v31;
  *&v41 = v31;
  *(&v41 + 1) = v17;
  *&v42[0] = 0;
  WORD4(v42[0]) = 1;
  *(v42 + 10) = *v53;
  *(&v42[1] + 10) = *&v53[16];
  *(&v42[2] + 10) = *&v53[32];
  *(&v42[3] + 1) = *&v53[46];
  v43 = 257;
  v27 = v42[0];
  *(a3 + 72) = v41;
  *(a3 + 152) = 257;
  *(a3 + 88) = v27;
  v28 = v42[2];
  *(a3 + 104) = v42[1];
  *(a3 + 120) = v28;
  *(a3 + 136) = v42[3];
  v29 = sub_1001F1160(&qword_100AD7AA0, &qword_100814B30);
  sub_1000077D8(v23, a3 + *(v29 + 64), &qword_100AD7A98, &qword_100814AB0);
  sub_1000077D8(v39, &v44, &qword_100AD7AA8, &qword_100814B38);
  sub_1000077D8(&v41, &v44, &qword_100AD7AB0, &qword_100814B40);
  sub_100007840(v22, &qword_100AD7A98, &qword_100814AB0);
  sub_100007840(v23, &qword_100AD7A98, &qword_100814AB0);
  *&v44 = v26;
  *(&v44 + 1) = v17;
  v45 = 0;
  v46 = 1;
  v47 = *v53;
  v48 = *&v53[16];
  *v49 = *&v53[32];
  *&v49[14] = *&v53[46];
  v50 = 257;
  sub_100007840(&v44, &qword_100AD7AB0, &qword_100814B40);
  v51[0] = v38;
  v51[1] = v55;
  v51[2] = v56;
  v51[3] = v57;
  v52 = v18;
  return sub_100007840(v51, &qword_100AD7AA8, &qword_100814B38);
}

uint64_t sub_100266E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotImageView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100266EC0(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotImageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100266F1C()
{
  result = qword_100AD7AB8;
  if (!qword_100AD7AB8)
  {
    sub_1001F1234(&qword_100AD7A88, &qword_100814AA0);
    sub_100005920(&qword_100AD7AC0, &qword_100AD7AC8, &qword_100814B48, &protocol conformance descriptor for ZStack<A>);
    sub_100005920(&qword_100AD7AD0, &qword_100AD7AD8, &qword_100814B50, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7AB8);
  }

  return result;
}

id sub_10026701C()
{
  v1 = [objc_opt_self() effectWithStyle:*v0];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];

  return v2;
}

void sub_10026708C(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle:*v1];
  [a1 setEffect:v3];
}

uint64_t sub_10026715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002672A4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1002671C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1002672A4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100267224(uint64_t a1)
{
  sub_1002672A4();
  sub_10079CC64();
  __break(1u);
}

unint64_t sub_100267250()
{
  result = qword_100AD7AE0;
  if (!qword_100AD7AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7AE0);
  }

  return result;
}

unint64_t sub_1002672A4()
{
  result = qword_100AD7AE8;
  if (!qword_100AD7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7AE8);
  }

  return result;
}

uint64_t sub_1002672F8()
{
  result = sub_10079E504();
  qword_100AD7AF0 = result;
  return result;
}

BOOL sub_100267328(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = sub_1007A3454();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v10 - v6;
  (*(v4 + 16))(&v10 - v6, v1, v3, v5);
  v8 = (*(*(v2 - 8) + 48))(v7, 1, v2) != 1;
  (*(v4 + 8))(v7, v3);
  return v8;
}

uint64_t sub_10026744C(uint64_t a1)
{
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  return v2;
}

double sub_1002674AC(char a1, uint64_t a2)
{
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E004();
  return result;
}

uint64_t sub_100267510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v114 = a2;
  v126 = *(a1 - 8);
  v125 = *(v126 + 64);
  __chkstk_darwin(a1);
  v121 = v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_10079CD04();
  __chkstk_darwin(v123);
  v117 = v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10079BCC4();
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1001F1160(&qword_100AD7B78, &unk_1008312C0);
  v113 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = v86 - v6;
  v7 = sub_1001F1160(&qword_100AD7B80, &qword_100814CC8);
  v112 = *(v7 - 8);
  __chkstk_darwin(v7);
  v108 = v86 - v8;
  sub_1001F1234(&qword_100AD7B88, &qword_100814CD0);
  *&v128 = a1 + 24;
  *&v127 = a1 + 40;
  v122 = *(a1 + 16);
  v120 = a1;
  sub_10079C2A4();
  sub_10079D1C4();
  v9 = sub_10079C2A4();
  v10 = sub_10079CAC4();
  v116 = *(a1 + 32);
  v141 = v116;
  v142 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v139 = WitnessTable;
  v140 = v12;
  v13 = swift_getWitnessTable();
  v14 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle, &protocol conformance descriptor for ConcentricRectangle);
  v135 = v9;
  v136 = v10;
  v137 = v13;
  v138 = v14;
  swift_getOpaqueTypeMetadata2();
  sub_1001F1234(&qword_100AD7B98, &qword_100814CD8);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  sub_10079E184();
  sub_1007A3454();
  sub_10079DEF4();
  sub_10079C2A4();
  sub_10079C2A4();
  sub_1007A3454();
  swift_getTupleTypeMetadata2();
  v86[1] = sub_10079E5C4();
  v86[0] = swift_getWitnessTable();
  v15 = sub_10079E1A4();
  v115 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = v86 - v16;
  v18 = sub_10079C2A4();
  v105 = *(v18 - 8);
  __chkstk_darwin(v18);
  v118 = v86 - v19;
  v133 = swift_getWitnessTable();
  v134 = &protocol witness table for _SafeAreaRegionsIgnoringLayout;
  v20 = swift_getWitnessTable();
  v21 = sub_100005920(&qword_100AD7BA0, &qword_100AD7B80, &qword_100814CC8, &protocol conformance descriptor for _EndedGesture<A>);
  v135 = v18;
  v136 = v7;
  v22 = v18;
  v89 = v18;
  v90 = v7;
  v137 = v20;
  v138 = v21;
  v92 = v20;
  v23 = v21;
  v91 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v100 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v88 = v86 - v25;
  v135 = v22;
  v136 = v7;
  v137 = v20;
  v138 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v135 = OpaqueTypeMetadata2;
  v136 = OpaqueTypeConformance2;
  v28 = OpaqueTypeConformance2;
  v94 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeMetadata2();
  v99 = v29;
  v102 = *(v29 - 8);
  __chkstk_darwin(v29);
  v119 = v86 - v30;
  v135 = v27;
  v136 = v28;
  v98 = swift_getOpaqueTypeConformance2();
  v135 = v29;
  v136 = &type metadata for Bool;
  v137 = v98;
  v138 = &protocol witness table for Bool;
  v101 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v103 = swift_getOpaqueTypeMetadata2();
  v104 = *(v103 - 8);
  __chkstk_darwin(v103);
  v95 = v86 - v31;
  v32 = sub_1001F1160(&qword_100AD7BA8, &qword_100814CE0);
  __chkstk_darwin(v32 - 8);
  v34 = v86 - v33;
  v35 = sub_10079D334();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v97 = swift_checkMetadataState();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v38 = v86 - v37;
  sub_10079D324();
  (*(v36 + 56))(v34, 0, 1, v35);
  sub_10079D314();
  sub_100007840(v34, &qword_100AD7BA8, &qword_100814CE0);
  v87 = v38;
  sub_10079CAB4();
  *&v39 = v122;
  *(&v39 + 1) = *v128;
  v128 = v39;
  *&v40 = v116;
  *(&v40 + 1) = *v127;
  v127 = v40;
  v129 = v39;
  v130 = v40;
  v41 = v124;
  v131 = v124;
  v132 = v38;
  sub_10079E474();
  sub_10079E194();
  sub_10079D294();
  sub_10079C2C4();
  sub_10079D804();
  (*(v115 + 8))(v17, v15);
  sub_10079CF74();
  v42 = v106;
  sub_10079BC64();
  v43 = v126;
  v44 = (v126 + 16);
  v123 = *(v126 + 16);
  v45 = v121;
  v46 = v120;
  v123(v121, v41, v120);
  v117 = v44;
  v115 = *(v43 + 80);
  v47 = (v115 + 48) & ~v115;
  v48 = swift_allocObject();
  v49 = v127;
  *(v48 + 16) = v128;
  *(v48 + 32) = v49;
  v122 = *(v43 + 32);
  v122(v48 + v47, v45, v46);
  v126 = v43 + 32;
  sub_10026DB50(&qword_100AD7BB0, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_10026DB50(&qword_100AD7BB8, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v50 = v107;
  v51 = v109;
  sub_10079E2A4();

  (*(v110 + 8))(v42, v51);
  v52 = v121;
  v53 = v120;
  v123(v121, v41, v120);
  v116 = v47;
  v54 = swift_allocObject();
  v55 = v127;
  *(v54 + 16) = v128;
  *(v54 + 32) = v55;
  v56 = v54 + v47;
  v57 = v52;
  v58 = v53;
  v122(v56, v52, v53);
  sub_100005920(&qword_100AD7BC0, &qword_100AD7B78, &unk_1008312C0, &protocol conformance descriptor for _ChangedGesture<A>);
  v59 = v108;
  v60 = v111;
  sub_10079E294();

  (*(v113 + 8))(v50, v60);
  sub_10079BCE4();
  v61 = v88;
  v62 = v59;
  v63 = v89;
  v64 = v90;
  v65 = v118;
  sub_10079DB94();
  (*(v112 + 8))(v62, v64);
  (*(v105 + 8))(v65, v63);
  v66 = v58;
  v67 = v123;
  v123(v57, v41, v58);
  v68 = v116;
  v69 = swift_allocObject();
  v70 = v127;
  *(v69 + 16) = v128;
  *(v69 + 32) = v70;
  v122(v69 + v68, v57, v58);
  v71 = v93;
  sub_10079DA74();

  (*(v100 + 8))(v61, v71);
  v72 = v124;
  LOBYTE(v135) = sub_100267328(v58);
  v67(v57, v72, v58);
  v73 = v116;
  v74 = swift_allocObject();
  v75 = v127;
  *(v74 + 16) = v128;
  *(v74 + 32) = v75;
  v76 = v73;
  v77 = v122;
  v122(v74 + v73, v57, v66);
  v78 = v95;
  v79 = v99;
  v80 = v98;
  v81 = v119;
  sub_10079DC24();

  (*(v102 + 8))(v81, v79);
  v123(v57, v124, v66);
  v82 = swift_allocObject();
  v83 = v127;
  *(v82 + 16) = v128;
  *(v82 + 32) = v83;
  v77(v82 + v76, v57, v66);
  v135 = v79;
  v136 = &type metadata for Bool;
  v137 = v80;
  v138 = &protocol witness table for Bool;
  swift_getOpaqueTypeConformance2();
  v84 = v103;
  sub_10079DC14();

  (*(v104 + 8))(v78, v84);
  return (*(v96 + 8))(v87, v97);
}

uint64_t sub_100268798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v105 = a2;
  v125 = a1;
  v119 = a7;
  sub_10079C2A4();
  sub_10079D1C4();
  v11 = sub_10079C2A4();
  v12 = sub_10079CAC4();
  v165 = a5;
  v166 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v14 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v163 = WitnessTable;
  v164 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle, &protocol conformance descriptor for ConcentricRectangle);
  *&v134 = v11;
  *(&v134 + 1) = v12;
  *&v135 = v15;
  *(&v135 + 1) = v16;
  swift_getOpaqueTypeMetadata2();
  sub_1001F1234(&qword_100AD7B98, &qword_100814CD8);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  sub_10079E5C4();
  swift_getWitnessTable();
  v121 = sub_10079E184();
  v118 = sub_1007A3454();
  v17 = sub_10079DEF4();
  v18 = sub_10079C2A4();
  v102 = *(v18 - 8);
  __chkstk_darwin(v18);
  v101 = &v90 - v19;
  v124 = v20;
  v21 = sub_10079C2A4();
  v109 = *(v21 - 8);
  __chkstk_darwin(v21);
  v104 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v103 = &v90 - v24;
  v123 = v17;
  v100 = *(v17 - 8);
  __chkstk_darwin(v25);
  v107 = &v90 - v26;
  v122 = v27;
  v28 = sub_1007A3454();
  v29 = *(v28 - 8);
  v116 = v28;
  v117 = v29;
  __chkstk_darwin(v28);
  v114 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v115 = &v90 - v32;
  v33 = sub_10079C894();
  v99 = *(v33 - 8);
  __chkstk_darwin(v33);
  v97 = &v90 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v98 = &v90 - v36;
  v111 = a3;
  v112 = a4;
  *&v134 = a3;
  *(&v134 + 1) = a4;
  v113 = a5;
  *&v135 = a5;
  *(&v135 + 1) = a6;
  v37 = type metadata accessor for HalfSheet(0, &v134);
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v90 - v39;
  v41 = sub_1001F1160(&qword_100AD7BC8, &qword_100814CE8);
  v95 = *(v41 - 8);
  v96 = v41;
  __chkstk_darwin(v41);
  v94 = &v90 - v42;
  v106 = sub_1001F1160(&qword_100AD7BD0, &qword_100814CF0);
  v43 = *(v106 - 8);
  __chkstk_darwin(v106);
  v93 = &v90 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v92 = &v90 - v46;
  v108 = sub_1001F1160(&qword_100AD7B88, &qword_100814CD0);
  __chkstk_darwin(v108);
  v110 = &v90 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v50 = &v90 - v49;
  v51 = v125 + *(v37 + 68);
  v52 = *v51;
  v53 = *(v51 + 8);
  LOBYTE(v134) = v52;
  *(&v134 + 1) = v53;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  if (v126 == 1)
  {
    v54 = _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v55 = *(v37 + 60);
    v91 = v33;
    v56 = a6;
    v57 = v125;
    if (*(v125 + v55))
    {
      v58 = 0.4;
    }

    else
    {
      v58 = 0.01;
    }

    sub_10079E474();
    sub_10079C414();
    *&v126 = v54;
    WORD4(v126) = 256;
    *&v127 = v58;
    BYTE8(v133[1]) = 0;
    (*(v38 + 16))(v40, v57, v37);
    v59 = (*(v38 + 80) + 48) & ~*(v38 + 80);
    v60 = swift_allocObject();
    v61 = v112;
    *(v60 + 2) = v111;
    *(v60 + 3) = v61;
    *(v60 + 4) = v113;
    *(v60 + 5) = v56;
    (*(v38 + 32))(&v60[v59], v40, v37);
    sub_1001F1160(&qword_100AD7BE8, &qword_100814CF8);
    sub_10026D578();
    v62 = v94;
    sub_10079D764();

    v140 = v132;
    v141[0] = v133[0];
    *(v141 + 9) = *(v133 + 9);
    v136 = v128;
    v137 = v129;
    v138 = v130;
    v139 = v131;
    v134 = v126;
    v135 = v127;
    sub_100007840(&v134, &qword_100AD7BE8, &qword_100814CF8);
    v63 = v98;
    sub_10079C884();
    v64 = v99;
    v65 = v91;
    (*(v99 + 16))(v97, v63, v91);
    sub_10026DB50(&qword_100AD7C28, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v66 = sub_10079BE84();
    (*(v64 + 8))(v63, v65);
    v67 = v93;
    (*(v95 + 32))(v93, v62, v96);
    v68 = v106;
    *(v67 + *(v106 + 36)) = v66;
    v69 = v92;
    sub_10002DA04(v67, v92);
    sub_10002DA04(v69, v50);
    (*(v43 + 56))(v50, 0, 1, v68);
  }

  else
  {
    (*(v43 + 56))(v50, 1, 1, v106);
  }

  v120 = v50;
  v70 = sub_100267328(v37);
  v71 = v122;
  if (v70)
  {
    __chkstk_darwin(v70);
    v147 = swift_getWitnessTable();
    v72 = swift_getWitnessTable();
    sub_10079DEE4();
    sub_10079D284();
    v146 = v72;
    v73 = v123;
    v74 = swift_getWitnessTable();
    v75 = v101;
    sub_10079DBE4();
    sub_10079D2B4();
    v144 = v74;
    v145 = &protocol witness table for _PaddingLayout;
    v76 = v124;
    v77 = swift_getWitnessTable();
    v78 = v104;
    sub_10079DBE4();
    (*(v102 + 8))(v75, v76);
    (*(v100 + 8))(v107, v73);
    v142 = v77;
    v143 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
    v79 = v103;
    sub_10039232C();
    v80 = v109;
    v81 = *(v109 + 8);
    v81(v78, v71);
    sub_10039232C();
    v81(v79, v71);
    v82 = v114;
    (*(v80 + 32))(v114, v78, v71);
    (*(v80 + 56))(v82, 0, 1, v71);
  }

  else
  {
    v82 = v114;
    (*(v109 + 56))(v114, 1, 1, v122);
    v162 = swift_getWitnessTable();
    v161 = swift_getWitnessTable();
    v159 = swift_getWitnessTable();
    v160 = &protocol witness table for _PaddingLayout;
    v157 = swift_getWitnessTable();
    v158 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
  }

  v84 = v116;
  v83 = v117;
  v85 = *(v117 + 16);
  v86 = v115;
  v85(v115, v82, v116);
  v87 = *(v83 + 8);
  v87(v82, v84);
  v88 = v110;
  sub_10002D92C(v120, v110);
  *&v134 = v88;
  v85(v82, v86, v84);
  *(&v134 + 1) = v82;
  *&v126 = v108;
  *(&v126 + 1) = v84;
  v155 = sub_10026D400();
  v154 = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  v151 = swift_getWitnessTable();
  v152 = &protocol witness table for _PaddingLayout;
  v149 = swift_getWitnessTable();
  v150 = &protocol witness table for _PaddingLayout;
  v148 = swift_getWitnessTable();
  v156 = swift_getWitnessTable();
  sub_10038FA94(&v134, 2uLL, &v126);
  v87(v86, v84);
  sub_10002D99C(v120);
  v87(v82, v84);
  return sub_10002D99C(v88);
}

uint64_t sub_1002696E8(void *a1)
{
  v3 = sub_10079D0E4();
  v18 = *(v3 - 8);
  v19 = v3;
  __chkstk_darwin(v3);
  v17 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 1);
  v6 = *(v5 + 64);
  __chkstk_darwin(v7);
  v16 = sub_10079E524();
  v8 = a1[3];
  v20 = a1[2];
  v9 = v20;
  v21 = v8;
  v10 = a1[5];
  v22 = a1[4];
  v11 = v22;
  v23 = v10;
  v24 = v1;
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v9;
  *(v13 + 3) = v8;
  *(v13 + 4) = v11;
  *(v13 + 5) = v10;
  (*(v5 + 32))(&v13[v12], &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v14 = v17;
  sub_10079D0D4();
  sub_10079BF84();

  return (*(v18 + 8))(v14, v19);
}

uint64_t sub_100269928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a2;
  v52 = a6;
  v56 = a7;
  v57 = a1;
  v49 = a3;
  sub_10079C2A4();
  sub_10079D1C4();
  v9 = sub_10079C2A4();
  v10 = sub_10079CAC4();
  v50 = a5;
  v65 = a5;
  v66 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v64 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v59 = v9;
  v60 = v10;
  v61 = swift_getWitnessTable();
  v62 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle, &protocol conformance descriptor for ConcentricRectangle);
  swift_getOpaqueTypeMetadata2();
  sub_1001F1234(&qword_100AD7B98, &qword_100814CD8);
  sub_10079C2A4();
  sub_10079C2A4();
  swift_getTupleTypeMetadata2();
  v47 = sub_10079E5C4();
  v45 = swift_getWitnessTable();
  v11 = sub_10079E184();
  v54 = *(v11 - 8);
  __chkstk_darwin(v11);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v42 - v14;
  v15 = a4;
  v16 = sub_1007A3454();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v20 = *(a4 - 8);
  __chkstk_darwin(v21);
  v53 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1007A3454();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v55 = &v42 - v29;
  (*(v17 + 16))(v19, v57, v16, v28);
  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    (*(v17 + 8))(v19, v16);
    (*(v54 + 56))(v26, 1, 1, v11);
    swift_getWitnessTable();
    v30 = v55;
    (*(v24 + 16))(v55, v26, v23);
    v31 = *(v24 + 8);
    v31(v26, v23);
  }

  else
  {
    v44 = v20;
    v32 = *(v20 + 32);
    v33 = v53;
    v43 = v15;
    v34 = v32();
    __chkstk_darwin(v34);
    v35 = v50;
    *(&v42 - 8) = v49;
    *(&v42 - 7) = v15;
    v36 = v52;
    *(&v42 - 6) = v35;
    *(&v42 - 5) = v36;
    *(&v42 - 4) = v57;
    *(&v42 - 3) = v33;
    *(&v42 - 2) = v51;
    sub_10079CB24();
    v37 = v48;
    sub_10079E174();
    swift_getWitnessTable();
    v38 = v46;
    sub_10039232C();
    v39 = v54;
    v40 = *(v54 + 8);
    v40(v37, v11);
    sub_10039232C();
    v40(v38, v11);
    (*(v39 + 32))(v26, v37, v11);
    (*(v39 + 56))(v26, 0, 1, v11);
    v30 = v55;
    (*(v24 + 16))(v55, v26, v23);
    v31 = *(v24 + 8);
    v31(v26, v23);
    (*(v44 + 8))(v53, v43);
  }

  v58 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_10039232C();
  return (v31)(v30, v23);
}

uint64_t sub_10026A098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v113 = a7;
  v112 = a5;
  v110 = a3;
  v99 = a2;
  v114 = a8;
  v130 = a4;
  v131 = a5;
  v116 = a4;
  v132 = a6;
  v133 = a7;
  v87 = a6;
  v11 = type metadata accessor for HalfSheet(0, &v130);
  v109 = *(v11 - 8);
  v111 = *(v109 + 64);
  __chkstk_darwin(v11);
  v107 = &v80 - v12;
  v103 = sub_10079DED4();
  v101 = *(v103 - 8);
  __chkstk_darwin(v103);
  v98 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10079CA64();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = *(a4 - 1);
  __chkstk_darwin(v15);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10079C2A4();
  v91 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v80 - v19;
  sub_10079D1C4();
  v21 = sub_10079C2A4();
  v86 = v21;
  v94 = *(v21 - 8);
  __chkstk_darwin(v21);
  v82 = &v80 - v22;
  v23 = sub_10079CAC4();
  v128 = a6;
  v129 = &protocol witness table for _OpacityEffect;
  WitnessTable = swift_getWitnessTable();
  v25 = sub_10026DB50(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v126 = WitnessTable;
  v127 = v25;
  v26 = swift_getWitnessTable();
  v85 = v26;
  v84 = sub_10026DB50(&qword_100AD7B90, &type metadata accessor for ConcentricRectangle, &protocol conformance descriptor for ConcentricRectangle);
  v130 = v21;
  v131 = v23;
  v132 = v26;
  v133 = v84;
  v89 = &opaque type descriptor for <<opaque return type of View.glassEffect<A>(_:in:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v92 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v115 = &v80 - v27;
  sub_1001F1234(&qword_100AD7B98, &qword_100814CD8);
  v28 = sub_10079C2A4();
  v102 = *(v28 - 8);
  __chkstk_darwin(v28);
  v83 = &v80 - v29;
  v104 = v30;
  v90 = sub_10079C2A4();
  v106 = *(v90 - 8);
  __chkstk_darwin(v90);
  v108 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v100 = &v80 - v33;
  v35 = __chkstk_darwin(v34);
  v105 = &v80 - v36;
  v80 = v11;
  (*(a1 + *(v11 + 64)))(v99, v35);
  v81 = a1;
  sub_10026744C(v11);
  v37 = v116;
  v38 = v87;
  sub_10079DBB4();
  (*(v93 + 8))(v17, v37);
  v39 = v95;
  sub_10079CA34();
  v40 = v82;
  sub_10079D9D4();
  (*(v96 + 8))(v39, v97);
  (*(v91 + 8))(v20, v18);
  v41 = v98;
  sub_10079DEC4();
  v42 = swift_checkMetadataState();
  v43 = v86;
  v44 = v85;
  v45 = v84;
  sub_10079D6E4();
  (*(v101 + 8))(v41, v103);
  v46 = v40;
  v47 = v43;
  (*(v94 + 8))(v46, v43);
  v48 = v109;
  v49 = v107;
  v50 = v80;
  (*(v109 + 16))(v107, a1, v80);
  v51 = v48;
  v52 = (*(v48 + 80) + 48) & ~*(v48 + 80);
  v53 = swift_allocObject();
  v54 = v112;
  *(v53 + 2) = v116;
  *(v53 + 3) = v54;
  v55 = v113;
  *(v53 + 4) = v38;
  *(v53 + 5) = v55;
  (*(v51 + 32))(&v53[v52], v49, v50);
  type metadata accessor for CGSize(0);
  v130 = v47;
  v131 = v42;
  v56 = v83;
  v132 = v44;
  v133 = v45;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10026DB50(&unk_100AE40C0, type metadata accessor for CGSize, &protocol conformance descriptor for CGSize);
  v58 = OpaqueTypeMetadata2;
  v59 = v115;
  sub_10079D874();

  v60 = v58;
  v61 = v81;
  (*(v92 + 8))(v59, v60);
  v62 = v61 + v50[17];
  v63 = *v62;
  v64 = *(v62 + 8);
  LOBYTE(v130) = v63;
  v131 = v64;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  if (LOBYTE(v119[0]) == 1)
  {
    v65 = v50[18];
  }

  else
  {
    v65 = v50[20];
  }

  v66 = (v61 + v65);
  v67 = *v66;
  v68 = v66[1];
  v130 = v67;
  v131 = v68;
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079DFF4();
  v69 = sub_100005920(&unk_100AD7C30, &qword_100AD7B98, &qword_100814CD8, &protocol conformance descriptor for _GeometryActionModifier<A>);
  v124 = OpaqueTypeConformance2;
  v125 = v69;
  v70 = v104;
  v71 = swift_getWitnessTable();
  v72 = v100;
  sub_10079DB64();
  (*(v102 + 8))(v56, v70);
  v122 = v71;
  v123 = &protocol witness table for _OffsetEffect;
  v73 = v90;
  v74 = swift_getWitnessTable();
  v75 = v105;
  sub_10039232C();
  v76 = v106;
  v77 = *(v106 + 8);
  v77(v72, v73);
  v120 = 0;
  v121 = 1;
  v130 = &v120;
  v78 = v108;
  (*(v76 + 16))(v108, v75, v73);
  v131 = v78;
  v119[0] = &type metadata for Spacer;
  v119[1] = v73;
  v117 = &protocol witness table for Spacer;
  v118 = v74;
  sub_10038FA94(&v130, 2uLL, v119);
  v77(v75, v73);
  return (v77)(v78, v73);
}

void sub_10026ACC4(void *a2@<X8>)
{
  sub_10079BEB4();
  *a2 = v3;
  a2[1] = v4;
}

void sub_10026ACF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v6 = (a2 + *(type metadata accessor for HalfSheet(0, &v9) + 80));
  v7 = *v6;
  v8 = v6[1];
  v9 = v7;
  v10 = v8;
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079E004();
}

void sub_10026AD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10079BC74();
  if (v11 > 0.0)
  {
    sub_10079BC74();
    v15 = a3;
    v16 = a4;
    v17 = a5;
    v18 = a6;
    v12 = (a2 + *(type metadata accessor for HalfSheet(0, &v15) + 72));
    v13 = *v12;
    v14 = v12[1];
    v15 = v13;
    v16 = v14;
    sub_1001F1160(&qword_100AD7168, &qword_100813F20);
    sub_10079E004();
  }
}

uint64_t sub_10026AE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10079BC74();
  if (v10 <= 100.0 && (sub_10079BC94(), v11 <= 200.0))
  {
    sub_10079E4C4();
    sub_10079BD74();
    v14 = sub_10079BD44();
    __chkstk_darwin(v14);
    sub_10079C2D4();
  }

  else
  {
    v15[0] = a3;
    v15[1] = a4;
    v15[2] = a5;
    v15[3] = a6;
    v12 = type metadata accessor for HalfSheet(0, v15);
    return sub_1002696E8(v12);
  }
}

double sub_10026AF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v5 = (a1 + *(type metadata accessor for HalfSheet(0, &v9) + 72));
  v6 = *v5;
  v7 = v5[1];
  v9 = v6;
  v10 = v7;
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079E004();
  return result;
}

uint64_t sub_10026AFEC(char a1, uint64_t a2, void **a3, uint64_t a4, uint64_t (*a5)(), void *a6)
{
  v11 = a1 & 1;
  v12 = sub_1007A1C54();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v46 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1007A1CA4();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a3;
  v40 = a4;
  aBlock = a3;
  v52 = a4;
  v41 = a5;
  v42 = a6;
  v53 = a5;
  v54 = a6;
  v15 = type metadata accessor for HalfSheet(0, &aBlock);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - v18;
  v50 = sub_1007A1CC4();
  v38 = *(v50 - 8);
  __chkstk_darwin(v50);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  result = sub_10026744C(v15);
  v43 = v11;
  if ((result & 1) != v11)
  {
    sub_100017E74();
    v37 = sub_1007A2D74();
    sub_1007A1CB4();
    v36 = v24;
    sub_1007A1D24();
    v38 = *(v38 + 8);
    (v38)(v21, v50);
    (*(v16 + 16))(v19, a2, v15);
    v26 = (*(v16 + 80) + 48) & ~*(v16 + 80);
    v27 = swift_allocObject();
    v28 = v40;
    *(v27 + 2) = v39;
    *(v27 + 3) = v28;
    v29 = v42;
    *(v27 + 4) = v41;
    *(v27 + 5) = v29;
    (*(v16 + 32))(&v27[v26], v19, v15);
    v27[v26 + v17] = v43;
    v55 = sub_10026D310;
    v56 = v27;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = sub_1003323D0;
    v54 = &unk_100A11568;
    v30 = _Block_copy(&aBlock);

    v31 = v44;
    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_10026DB50(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    v32 = v46;
    v33 = v49;
    sub_1007A3594();
    v35 = v36;
    v34 = v37;
    sub_1007A2D04();
    _Block_release(v30);

    (*(v48 + 8))(v32, v33);
    (*(v45 + 8))(v31, v47);
    return (v38)(v35, v50);
  }

  return result;
}

uint64_t sub_10026B4F4(uint64_t a1, _BYTE *a2, uint64_t a3, void **a4, uint64_t a5, uint64_t (*a6)(), void *a7)
{
  v47 = a3;
  v12 = sub_1007A1C54();
  v45 = *(v12 - 8);
  v46 = v12;
  __chkstk_darwin(v12);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007A1CA4();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a4;
  v39 = a5;
  aBlock = a4;
  v49 = a5;
  v40 = a6;
  v41 = a7;
  v50 = a6;
  v51 = a7;
  v16 = type metadata accessor for HalfSheet(0, &aBlock);
  v17 = *(v16 - 1);
  __chkstk_darwin(v16);
  v19 = &v36 - v18;
  v20 = sub_1007A1CC4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v36 - v25;
  if (*a2 != 1)
  {
    return sub_1002696E8(v16);
  }

  sub_100017E74();
  v36 = sub_1007A2D74();
  sub_1007A1CB4();
  sub_1007A1D24();
  v37 = *(v21 + 8);
  v37(v23, v20);
  (*(v17 + 16))(v19, v47, v16);
  v27 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v28 = swift_allocObject();
  v29 = v39;
  *(v28 + 2) = v38;
  *(v28 + 3) = v29;
  v30 = v41;
  *(v28 + 4) = v40;
  *(v28 + 5) = v30;
  (*(v17 + 32))(&v28[v27], v19, v16);
  v52 = sub_10026D19C;
  v53 = v28;
  aBlock = _NSConcreteStackBlock;
  v49 = 1107296256;
  v50 = sub_1003323D0;
  v51 = &unk_100A114F0;
  v31 = _Block_copy(&aBlock);

  sub_1007A1C74();
  aBlock = _swiftEmptyArrayStorage;
  sub_10026DB50(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  v32 = v43;
  v33 = v46;
  sub_1007A3594();
  v34 = v36;
  sub_1007A2D04();
  _Block_release(v31);

  (*(v45 + 8))(v32, v33);
  (*(v42 + 8))(v15, v44);
  return (v37)(v26, v20);
}

uint64_t sub_10026B9D8(uint64_t a1, void **a2, uint64_t a3, uint64_t (*a4)(), void *a5)
{
  v10 = sub_1007A1C54();
  v50 = *(v10 - 8);
  v51 = v10;
  __chkstk_darwin(v10);
  v48 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1007A1CA4();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = a5;
  v46 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v43 = a3;
  aBlock = a2;
  v53 = a3;
  v44 = a4;
  v54 = a4;
  v55 = a5;
  v13 = type metadata accessor for HalfSheet(0, &aBlock);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - v15;
  v17 = sub_1007A1CC4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  result = sub_100267328(v13);
  if (result)
  {
    v25 = (a1 + *(v13 + 68));
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(aBlock) = v26;
    v53 = v27;
    sub_1001F1160(&qword_100ADB850, &qword_100814020);
    result = sub_10079DFF4();
    if ((v58 & 1) == 0)
    {
      sub_100017E74();
      v39 = sub_1007A2D74();
      sub_1007A1CB4();
      sub_1007A1D24();
      v28 = *(v18 + 8);
      v40 = v17;
      v41 = v28;
      v28(v20, v17);
      (*(v14 + 16))(v16, a1, v13);
      v29 = (*(v14 + 80) + 48) & ~*(v14 + 80);
      v30 = swift_allocObject();
      v31 = v43;
      *(v30 + 2) = v42;
      *(v30 + 3) = v31;
      v32 = v45;
      *(v30 + 4) = v44;
      *(v30 + 5) = v32;
      (*(v14 + 32))(&v30[v29], v16, v13);
      v56 = sub_10026D0DC;
      v57 = v30;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_1003323D0;
      v55 = &unk_100A114A0;
      v33 = _Block_copy(&aBlock);

      v34 = v46;
      sub_1007A1C74();
      aBlock = _swiftEmptyArrayStorage;
      sub_10026DB50(&qword_100ADA670, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
      v35 = v48;
      v36 = v51;
      sub_1007A3594();
      v37 = v39;
      sub_1007A2D04();
      _Block_release(v33);

      (*(v50 + 8))(v35, v36);
      (*(v47 + 8))(v34, v49);
      return v41(v23, v40);
    }
  }

  return result;
}

uint64_t sub_10026BEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100AD1340 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  __chkstk_darwin(a1);
  return sub_10079BF94();
}

double sub_10026BFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v5 = (a1 + *(type metadata accessor for HalfSheet(0, &v9) + 68));
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v9) = v6;
  v10 = v7;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E004();
  return result;
}

double sub_10026C064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v6 = type metadata accessor for HalfSheet(0, &v14);
  v7 = (a1 + *(v6 + 68));
  v8 = *v7;
  v9 = *(v7 + 1);
  LOBYTE(v14) = *v7;
  v15 = v9;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079DFF4();
  if (v18 == 1)
  {
    LOBYTE(v14) = v8;
    v15 = v9;
    LOBYTE(v18) = 0;
    sub_10079E004();
  }

  v10 = (a1 + *(v6 + 72));
  v11 = *v10;
  v12 = v10[1];
  v14 = v11;
  v15 = v12;
  v18 = 0;
  sub_1001F1160(&qword_100AD7168, &qword_100813F20);
  sub_10079E004();
  return result;
}

uint64_t sub_10026C168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1007A3454();
  __chkstk_darwin(v10);
  v12 = v21 - v11;
  v13 = sub_10079E224();
  v14 = sub_1007A3454();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v21 - v16;
  v21[0] = a2;
  v21[1] = a3;
  v21[2] = a4;
  v21[3] = a5;
  v18 = type metadata accessor for HalfSheet(0, v21);
  (*(v15 + 16))(v17, a1 + *(v18 + 52), v14);
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v17, 1, v13) != 1)
  {
    (*(*(a3 - 8) + 56))(v12, 1, 1, a3);
    sub_10079E1D4();
    v15 = v19;
    v14 = v13;
  }

  return (*(v15 + 8))(v17, v14);
}

double sub_10026C380@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, double a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = sub_1007A3454();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v19 = type metadata accessor for HalfSheet(0, &v35);
  v20 = v19[13];
  sub_10079E224();
  v21 = sub_1007A3454();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  *(a9 + v19[14]) = a3;
  *(a9 + v19[15]) = a4;
  v22 = (a9 + v19[16]);
  *v22 = a5;
  v22[1] = a6;
  v23 = a9 + v19[17];
  LOBYTE(v39) = 0;
  sub_10079DFE4();
  v24 = v36;
  *v23 = LOBYTE(v35);
  *(v23 + 8) = v24;
  v25 = (a9 + v19[18]);
  v39 = 0;
  sub_10079DFE4();
  v26 = v36;
  *v25 = v35;
  *(v25 + 1) = v26;
  v27 = a9 + v19[19];
  LOBYTE(v39) = a7;
  sub_10079DFE4();
  v28 = v36;
  *v27 = LOBYTE(v35);
  *(v27 + 8) = v28;
  v29 = (a9 + v19[20]);
  v39 = 0x40C3880000000000;
  sub_10079DFE4();
  result = v35;
  v31 = v36;
  *v29 = v35;
  *(v29 + 1) = v31;
  return result;
}

uint64_t sub_10026C588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v28 = a5;
  v29 = a6;
  v27 = a4;
  v26 = a3;
  sub_1007A3454();
  v15 = sub_10079E224();
  v16 = sub_1007A3454();
  __chkstk_darwin(v16 - 8);
  v18 = &v25[-v17];
  __chkstk_darwin(v19);
  v21 = &v25[-v20];
  sub_10079E1C4();
  v22 = *(v15 - 8);
  (*(v22 + 16))(v18, a1, v15);
  (*(v22 + 56))(v18, 0, 1, v15);
  v23 = sub_10026C380(v21, v18, a2, v26, v27, v28, 0, v29, a9, a7, a8, a10);
  return (*(v22 + 8))(a1, v15, v23);
}

void sub_10026C770(uint64_t a1)
{
  sub_1007A3454();
  if (v1 <= 0x3F)
  {
    sub_10079E224();
    sub_1007A3454();
    if (v2 <= 0x3F)
    {
      sub_100247D20();
      if (v3 <= 0x3F)
      {
        sub_10024BB84(319, &qword_100AE3F00, &type metadata for Bool);
        if (v4 <= 0x3F)
        {
          sub_10024BB84(319, &qword_100AD6F30, &type metadata for CGFloat);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10026C894(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = v7 - 1;
  if (v7 < v7 - 1)
  {
    --v7;
  }

  if (v5)
  {
    v9 = *(*(*(a3 + 24) - 8) + 64);
  }

  else
  {
    v9 = *(*(*(a3 + 24) - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = *(v4 + 80);
  v11 = v10 | 7;
  v12 = (v10 | 7) + v9;
  v13 = ((v10 + 16) & ~v10) + v9;
  if (v7 < a2)
  {
    v14 = ((((((((((v13 + (v12 & ~v11) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v15 = a2 - v7;
    v16 = v14 & 0xFFFFFFF8;
    if ((v14 & 0xFFFFFFF8) != 0)
    {
      v17 = 2;
    }

    else
    {
      v17 = v15 + 1;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *(a1 + v14);
        if (v20)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v20 = *(a1 + v14);
        if (v20)
        {
          goto LABEL_28;
        }
      }
    }

    else if (v19)
    {
      v20 = *(a1 + v14);
      if (v20)
      {
LABEL_28:
        v21 = v20 - 1;
        if (v16)
        {
          v21 = 0;
          LODWORD(v16) = *a1;
        }

        return v7 + (v16 | v21) + 1;
      }
    }
  }

  if (v6 == v7)
  {
    if (v5 >= 2)
    {
      v27 = (*(v4 + 48))(a1);
      if (v27 >= 2)
      {
        return v27 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v23 = (a1 + v12) & ~v11;
  if (v8 == v7)
  {
    v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v6 & 0x80000000) != 0)
    {
      v29 = (*(v4 + 48))((v24 + v10 + 8) & ~v10);
      v26 = v29 - 1;
      if (v29 < 2)
      {
        v26 = 0;
      }
    }

    else
    {
      v25 = *v24;
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      v26 = v25 + 1;
    }

    if (v26 >= 2)
    {
      return v26 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v28 = *((v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v28 >= 0xFFFFFFFF)
    {
      LODWORD(v28) = -1;
    }

    return (v28 + 1);
  }
}

void sub_10026CAD4(unsigned int *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  if (v9 < v9 - 1)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(*(a4 + 24) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = *(v6 + 80);
  v13 = (v12 | 7) + v11;
  v14 = ((v12 + 16) & ~v12) + v11;
  v15 = ((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 < a3)
  {
    v16 = a3 - v10;
    if (((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v5 = v18;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v10)
  {
    if (((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v19 = a2 - v10;
    }

    else
    {
      v19 = 1;
    }

    if (((((((((((v14 + (v13 & ~(v12 | 7)) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v20 = ~v10 + a2;
      v21 = a1;
      bzero(a1, v15);
      a1 = v21;
      *v21 = v20;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v15) = v19;
      }

      else
      {
        *(a1 + v15) = v19;
      }
    }

    else if (v5)
    {
      *(a1 + v15) = v19;
    }

    return;
  }

  if (v5 <= 1)
  {
    if (v5)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

LABEL_40:
    if (!a2)
    {
      return;
    }

    goto LABEL_41;
  }

  if (v5 == 2)
  {
    *(a1 + v15) = 0;
    goto LABEL_40;
  }

  *(a1 + v15) = 0;
  if (!a2)
  {
    return;
  }

LABEL_41:
  if (v8 != v10)
  {
    v23 = ((a1 + v13) & ~(v12 | 7));
    if (v9 - 1 != v10)
    {
      v25 = (&v23[v14 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        v26 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v26 = a2 - 1;
      }

      *v25 = v26;
      return;
    }

    if (a2 >= v9)
    {
      if (v14 <= 3)
      {
        v27 = ~(-1 << (8 * v14));
      }

      else
      {
        v27 = -1;
      }

      if (!v14)
      {
        return;
      }

      v28 = v27 & (a2 - v9);
      if (v14 <= 3)
      {
        v29 = v14;
      }

      else
      {
        v29 = 4;
      }

      bzero(((a1 + v13) & ~(v12 | 7)), v14);
      if (v29 <= 2)
      {
        if (v29 != 1)
        {
LABEL_80:
          *v23 = v28;
          return;
        }

LABEL_66:
        *v23 = v28;
        return;
      }
    }

    else
    {
      v24 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) == 0)
      {
        if (((a2 + 1) & 0x80000000) != 0)
        {
          *v24 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v24 = a2;
        }

        return;
      }

      v23 = ((v24 + v12 + 8) & ~v12);
      if (a2 < v8)
      {
        v22 = *(v6 + 56);
        goto LABEL_43;
      }

      if (v11 <= 3)
      {
        v30 = ~(-1 << (8 * v11));
      }

      else
      {
        v30 = -1;
      }

      if (!v11)
      {
        return;
      }

      v28 = v30 & (a2 - v8);
      if (v11 <= 3)
      {
        v29 = v11;
      }

      else
      {
        v29 = 4;
      }

      bzero(v23, v11);
      if (v29 <= 2)
      {
        if (v29 != 1)
        {
          goto LABEL_80;
        }

        goto LABEL_66;
      }
    }

    if (v29 == 3)
    {
      *v23 = v28;
      v23[2] = BYTE2(v28);
    }

    else
    {
      *v23 = v28;
    }

    return;
  }

  v22 = *(v6 + 56);
LABEL_43:

  v22();
}

uint64_t sub_10026CEA4(uint64_t a1, uint64_t (*a2)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v12[0] = v2[2];
  v4 = v12[0];
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  v8 = *(type metadata accessor for HalfSheet(0, v12) - 8);
  v9 = v2 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return a2(a1, v9, v4, v5, v6, v7);
}

uint64_t sub_10026CF5C(char a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for HalfSheet(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_10026AFEC(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_10026D008(uint64_t a1, _BYTE *a2)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for HalfSheet(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_10026B4F4(a1, a2, v10, v5, v6, v7, v8);
}

uint64_t sub_10026D0F4(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for HalfSheet(0, v9) - 8);
  return sub_10026BEF4(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_10026D260(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v10[0] = v1[2];
  v2 = v10[0];
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v6 = *(type metadata accessor for HalfSheet(0, v10) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

double sub_10026D310()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v9 = v0[2];
  v1 = v9;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = *(type metadata accessor for HalfSheet(0, &v9) - 8);
  v6 = *(v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80)) + *(v5 + 64));
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v7 = type metadata accessor for HalfSheet(0, &v9);
  return sub_1002674AC(v6, v7);
}

unint64_t sub_10026D400()
{
  result = qword_100AD7BD8;
  if (!qword_100AD7BD8)
  {
    sub_1001F1234(&qword_100AD7B88, &qword_100814CD0);
    sub_10026D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BD8);
  }

  return result;
}

unint64_t sub_10026D484()
{
  result = qword_100AD7BE0;
  if (!qword_100AD7BE0)
  {
    sub_1001F1234(&qword_100AD7BD0, &qword_100814CF0);
    sub_1001F1234(&qword_100AD7BE8, &qword_100814CF8);
    sub_10026D578();
    swift_getOpaqueTypeConformance2();
    sub_100005920(&qword_100AD7220, &qword_100AD7228, &qword_100813FB8, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BE0);
  }

  return result;
}

unint64_t sub_10026D578()
{
  result = qword_100AD7BF0;
  if (!qword_100AD7BF0)
  {
    sub_1001F1234(&qword_100AD7BE8, &qword_100814CF8);
    sub_10026D630();
    sub_100005920(&qword_100AD5558, &qword_100AD5560, &qword_100810250, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BF0);
  }

  return result;
}

unint64_t sub_10026D630()
{
  result = qword_100AD7BF8;
  if (!qword_100AD7BF8)
  {
    sub_1001F1234(&qword_100AD7C00, &qword_100814D00);
    sub_10026D6BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7BF8);
  }

  return result;
}

unint64_t sub_10026D6BC()
{
  result = qword_100AD7C08;
  if (!qword_100AD7C08)
  {
    sub_1001F1234(&qword_100AD7C10, &qword_100814D08);
    sub_100005920(&qword_100AD7C18, &qword_100AD7C20, &unk_100814D10, &protocol conformance descriptor for _ShapeView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7C08);
  }

  return result;
}

uint64_t sub_10026D7A4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v1 = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  type metadata accessor for HalfSheet(0, &v7);
  v7 = v1;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v5 = type metadata accessor for HalfSheet(0, &v7);
  return sub_1002696E8(v5);
}

uint64_t sub_10026D854()
{
  v1 = *(v0 + 40);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v10 = v12;
  v13 = v1;
  v2 = type metadata accessor for HalfSheet(0, &v11);
  v3 = v0 + ((*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80));
  v4 = *(v10 - 8);
  v5 = *(v4 + 48);
  if (!v5(v3, 1, v10))
  {
    (*(v4 + 8))(v3, v10);
  }

  v6 = v3 + *(v2 + 52);
  sub_1007A3454();
  v7 = sub_10079E224();
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {

    v8 = *(v7 + 32);
    if (!v5(v6 + v8, 1, v10))
    {
      (*(v4 + 8))(v6 + v8, v10);
    }
  }

  return swift_deallocObject();
}

void sub_10026DAA4(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for HalfSheet(0, v9) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  sub_10026ACF0(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_10026DB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10026DBC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = a1;
}

uint64_t sub_10026DC10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *v2;
  a2[3] = a1;
  *a2 = v3;
}

uint64_t sub_10026DC28()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD7C40);
  sub_100008B98(v0, qword_100AD7C40);
  return sub_10079ACD4();
}

uint64_t AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.getter()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.setter(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

uint64_t (*AudiobookNowPlayingTouchViewController.assetViewControllerDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = OBJC_IVAR____TtC5Books36AudiobookNowPlayingNavigationHandler_delegate;
  a1[1] = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_navigationHandler);
  a1[2] = v3;
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_10026DF18;
}

uint64_t sub_10026DF18(uint64_t *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a2)
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    swift_unknownObjectRetain();

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {
    if (!Strong)
    {
      goto LABEL_7;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

LABEL_7:

  return swift_unknownObjectRelease();
}

uint64_t sub_10026E030()
{
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_10026E114(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

id sub_10026E374(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();

  return v3;
}

uint64_t sub_10026E428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  *(a1 + v6) = a3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_10026E498(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_10026E54C()
{
  v1 = (*((swift_isaMask & *v0) + 0x240))();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1007A38D4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_1007A3784();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [objc_allocWithZone(UIPointerInteraction) initWithDelegate:v0];
      [v6 addInteraction:v8];

      ++v4;
      if (v7 == i)
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
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews) = v2;
}

id AudiobookNowPlayingTouchViewController.__deallocating_deinit()
{
  (*((swift_isaMask & *v0) + 0x1E0))();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:"onAppWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
  sub_10026E9A4(*&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel]);
}

uint64_t sub_10026E9A4(uint64_t a1)
{
  v1 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v1 - 8);
  v3 = v15 - v2;
  v4 = sub_1001F1160(&qword_100AD7EB8, &qword_100814F38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v15 - v6;
  v8 = sub_1001F1160(&unk_100AD7EC0, &unk_100814F40);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v15 - v10;
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50A8, &qword_10080FBA8);
  sub_10079B974();
  swift_endAccess();
  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v12 = sub_1007A2D74();
  v15[1] = v12;
  v13 = sub_1007A2D24();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_100005920(&unk_100AD7ED0, &qword_100AD7EB8, &qword_100814F38, &protocol conformance descriptor for Published<A>.Publisher);
  sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v3, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v5 + 8))(v7, v4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD7EE0, &unk_100AD7EC0, &unk_100814F40, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_10079BB04();

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewDidLayoutSubviews()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v3, "viewDidLayoutSubviews");
  v1 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_contentOpenAnimator;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 bookContentDidLoad];
  }

  *&v0[v1] = 0;
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v3, "viewWillAppear:", a1);
  [v1 setNeedsStatusBarAppearanceUpdate];
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v5, "viewDidAppear:", a1);
  v3 = [v1 ba_effectiveAnalyticsTracker];
  v4 = *&v1[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker];
  *&v1[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker] = v3;

  sub_10026F058();
}

void sub_10026F058()
{
  v1 = sub_100270FB4();
  if (*(v1 + 16))
  {
    v2 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement;
    v3 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement];
    if (v3 || (v4 = [objc_opt_self() defaultBag], v5 = objc_msgSend(objc_allocWithZone(AMSEngagement), "initWithBag:", v4), v4, v6 = *&v0[v2], *&v0[v2] = v5, v6, (v3 = *&v0[v2]) != 0))
    {
      v7 = 1 << *(v1 + 32);
      v8 = -1;
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      v9 = v8 & *(v1 + 56);
      v10 = (v7 + 63) >> 6;
      v27 = v3;

      v11 = 0;
      if (v9)
      {
        goto LABEL_12;
      }

      while (1)
      {
        v12 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v12 >= v10)
        {

          v15 = [v0 bc_effectiveEngagementProvider];
          if (v15)
          {
            v16 = v15;
            sub_100271130();
            isa = sub_1007A2824().super.isa;

            v18 = swift_allocObject();
            swift_unknownObjectWeakInit();
            aBlock[4] = sub_10027352C;
            aBlock[5] = v18;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_100271678;
            aBlock[3] = &unk_100A116A8;
            v19 = _Block_copy(aBlock);

            [v16 fetchDialogRequestsFor:isa completion:v19];
            _Block_release(v19);

            swift_unknownObjectRelease();
            return;
          }

          if (qword_100AD1348 == -1)
          {
LABEL_20:
            v20 = sub_10079ACE4();
            sub_100008B98(v20, qword_100AD7C40);
            v21 = sub_10079ACC4();
            v22 = sub_1007A29B4();
            if (os_log_type_enabled(v21, v22))
            {
              v23 = swift_slowAlloc();
              *v23 = 0;
              _os_log_impl(&_mh_execute_header, v21, v22, "No Engagement provider found", v23, 2u);
            }

            goto LABEL_23;
          }

LABEL_31:
          swift_once();
          goto LABEL_20;
        }

        v9 = *(v1 + 56 + 8 * v12);
        ++v11;
        if (v9)
        {
          v11 = v12;
          do
          {
LABEL_12:
            v9 &= v9 - 1;

            v13 = sub_1007A2214();
            v14 = sub_1007A2214();
            [v27 addObserver:v0 placement:v13 serviceType:v14];
          }

          while (v9);
          continue;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    if (qword_100AD1348 != -1)
    {
      swift_once();
    }

    v24 = sub_10079ACE4();
    sub_100008B98(v24, qword_100AD7C40);
    v27 = sub_10079ACC4();
    v25 = sub_1007A29B4();
    if (os_log_type_enabled(v27, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v27, v25, "AMSEngagement is nil.", v26, 2u);
    }

LABEL_23:
  }

  else
  {
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AudiobookNowPlayingTouchViewController();
  objc_msgSendSuper2(&v4, "viewWillDisappear:", a1);
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      [Strong audiobookNowPlayingViewControllerWillDisappear:v1];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10026F79C(uint64_t a1)
{
  sub_100797C64();
  result = sub_100797C44();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectRelease();
    if (v3 == v1)
    {
      return sub_100797C54();
    }
  }

  return result;
}

id sub_10026F8C4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  if (v8)
  {
    if (v7 == a1 && v8 == a2)
    {
    }

    else
    {
      v6 = sub_1007A3AB4();

      if ((v6 & 1) == 0)
      {
        return result;
      }
    }

    return [*(v2 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) togglePlayPause];
  }

  return result;
}

id AudiobookNowPlayingTouchViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1007A2214();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_10026FD60(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_1007A2214();

  return v3;
}

id sub_10026FDEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudiobookAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id AudiobookNowPlayingTouchViewController.asset.getter()
{
  v0 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v3 = sub_1007969B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v24);

  v10 = v25;
  if (!v25)
  {
    return 0;
  }

  v11 = v24;
  sub_1007969A4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {

    sub_100007840(v2, &unk_100AD5AC0, &unk_100811090);
    return 0;
  }

  (*(v4 + 32))(v9, v2, v3);
  v22 = *(v4 + 16);
  v22(v6, v9, v3);
  swift_getKeyPath();
  v21 = v11;
  swift_getKeyPath();
  sub_10079B9A4(&v24);

  v13 = v24;
  v14 = v25;
  v15 = type metadata accessor for AudiobookAsset(0);
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR___BKAudiobookAsset_audiobookAssetID];
  *v17 = v21;
  *(v17 + 1) = v10;
  v22(&v16[OBJC_IVAR___BKAudiobookAsset_audiobookURL], v6, v3);
  v18 = &v16[OBJC_IVAR___BKAudiobookAsset_audiobookDisplayTitle];
  *v18 = v13;
  *(v18 + 1) = v14;
  v23.receiver = v16;
  v23.super_class = v15;
  v19 = objc_msgSendSuper2(&v23, "init");
  v20 = *(v4 + 8);
  v20(v6, v3);
  v20(v9, v3);
  return v19;
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.open(_:)(Swift::Bool a1)
{
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D650C(0, a1);

    swift_unknownObjectRelease();
  }
}

uint64_t AudiobookNowPlayingTouchViewController.open(toLocation:animated:)(uint64_t a1, char a2)
{
  swift_unknownObjectWeakAssign();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002D650C(a1, a2 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.close(_:)(Swift::Bool a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = (Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    v4 = [*(*sub_10000E3E8(v3 v3[3]) + OBJC:"state" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)] - 4 < 0xFFFFFFFFFFFFFFFELL;
    sub_1002D31C8(a1, v4, 0);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.saveStateClosing(_:suspending:)(Swift::Bool _, Swift::Bool suspending)
{
  if (swift_unknownObjectWeakLoadStrong())
  {

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.requestClose(_:)(Swift::Bool a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D6C60(a1);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.assetViewControllerDidOpen(animated:)(Swift::Bool animated)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1002D7578();

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall AudiobookNowPlayingTouchViewController.assetViewControllerWillUnload()()
{
  (*((swift_isaMask & *v0) + 0x1E0))();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = (Strong + OBJC_IVAR____TtC5Books29AudiobookNowPlayingInteractor_dataManager);
    swift_beginAccess();
    [*(*sub_10000E3E8(v2 v2[3]) + OBJC:"removeObserver:" IVAR:? :? :? :? TtC5Books30AudiobookNowPlayingDataManager:?player)];
    swift_unknownObjectRelease();
  }
}

void AudiobookNowPlayingTouchViewController.didPurchase(withProductProfile:completion:)(uint64_t a1, void (*a2)(uint64_t))
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRetain();
      v3 = swift_unknownObjectRelease();
      a2(v3);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100AD1348 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AD7C40);
    oslog = sub_10079ACC4();
    v5 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Wrong type of user publishing product profile", v6, 2u);
    }
  }
}

uint64_t AudiobookNowPlayingTouchViewController.setDownloadState(_:assetState:progressValue:)(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1002CE464(a1, v4, a3);

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Bool __swiftcall AudiobookNowPlayingTouchViewController.shouldCloseDueToAssetDeletion()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sub_1002D6D08();
    swift_unknownObjectRelease();
    LOBYTE(Strong) = v1 & 1;
  }

  return Strong;
}

UIView_optional __swiftcall AudiobookNowPlayingTouchViewController.transitionContentView()()
{
  v1 = [v0 view];

  v2 = v1;
  result.value.super.super.isa = v2;
  result.is_nil = v3;
  return result;
}

UIViewContentMode __swiftcall AudiobookNowPlayingTouchViewController.coverContentMode()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 verticalSizeClass];

  if (v2 == 1)
  {
    return 2;
  }

  v4 = [v0 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

id AudiobookNowPlayingTouchViewController.trackerForAudiobookAnalytics.getter()
{
  v1 = [v0 ba_effectiveAnalyticsTracker];

  return v1;
}

id AudiobookNowPlayingTouchViewController.analyticsData()()
{
  v1 = [*(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) analyticsData];

  return v1;
}

uint64_t sub_100270FB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v7);

  sub_1001F1160(&qword_100AD7EA0, &qword_10080F058);
  sub_100005920(&qword_100AD7EA8, &qword_100AD7EA0, &qword_10080F058, &protocol conformance descriptor for [A]);
  v0 = sub_1007A28A4();

  if (v0)
  {
    v1 = sub_10000B3D8(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_10000B3D8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0xD00000000000001FLL;
    *(v4 + 5) = 0x80000001008BF9F0;
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  v5 = sub_10040E374(v1);

  return v5;
}

void sub_100271130()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
  if (v2)
  {
    v12 = v2;
    v3 = sub_100270FB4();
    v4 = [v12 placement];
    v5 = sub_1007A2254();
    v7 = v6;

    LOBYTE(v4) = sub_100368400(v5, v7, v3);

    if ((v4 & 1) != 0 || (v8 = *(v0 + v1)) == 0)
    {
      v11 = v12;
    }

    else
    {
      v9 = v8;
      v10 = [v9 viewController];
      [v10 dismissViewControllerAnimated:1 completion:0];

      v11 = *(v0 + v1);
      *(v0 + v1) = 0;
    }
  }
}

void sub_10027125C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = sub_1007A1C54();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1007A1CA4();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 64);
    v12 = (v9 + 63) >> 6;
    v31 = (v4 + 8);
    v32 = v42;
    v30 = (v6 + 8);
    v37 = a1;

    v13 = 0;
    while (v11)
    {
      v14 = v13;
LABEL_10:
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v37 + 48) + 16 * v16);
      v18 = *v17;
      v19 = v17[1];
      v20 = *(*(v37 + 56) + 8 * v16);
      sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);

      v21 = v20;
      v40 = sub_1007A2D74();
      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v23 = swift_allocObject();
      v23[2] = v22;
      v23[3] = v21;
      v23[4] = v18;
      v23[5] = v19;
      v42[2] = sub_1002735EC;
      v42[3] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v42[0] = sub_1003323D0;
      v42[1] = &unk_100A116F8;
      v24 = _Block_copy(aBlock);
      v39 = v21;

      v25 = v33;
      sub_1007A1C74();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100265BDC();
      sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
      sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
      v27 = v35;
      v26 = v36;
      sub_1007A3594();
      v28 = v40;
      sub_1007A2D94();
      _Block_release(v24);

      (*v31)(v27, v26);
      (*v30)(v25, v34);
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_100271678(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_10000A7C4(0, &qword_100AD7E98, AMSDialogRequest_ptr);
  v5 = sub_1007A2044();

  v6 = a3;
  v4(v5, a3);
}

void sub_100271738(uint64_t a1)
{
  v3 = objc_allocWithZone(BCMessageViewControllerProvider);
  v4 = sub_1007A2214();
  v5 = [v3 initWithRequest:a1 placement:v4];

  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
  *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider) = v5;
  v7 = v5;

  [v7 setDelegate:v1];
  v12 = [v7 viewController];
  [v12 setModalPresentationStyle:7];
  v8 = [v12 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 setDelegate:v1];
    v11 = (*((swift_isaMask & *v1) + 0x230))(v10);
    [v9 setSourceView:v11];

    [v9 setPermittedArrowDirections:15];
    [v1 presentViewController:v12 animated:1 completion:0];

    v7 = v12;
    v12 = v9;
  }
}

void sub_1002718F8(uint64_t a1)
{
  v3 = objc_allocWithZone(BCMessageViewControllerProvider);
  v4 = sub_1007A2214();
  v5 = [v3 initWithRequest:a1 placement:v4];

  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
  *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider) = v5;
  v7 = v5;

  [v7 setDelegate:v1];
  v8 = [v7 viewController];
  [v8 setModalPresentationStyle:7];
  v10 = [v8 popoverPresentationController];
  if (v10)
  {
    [v10 setDelegate:v1];
    v9 = [v1 view];
    [v10 setSourceView:v9];

    (*((swift_isaMask & *v1) + 0x238))(v12);
    if ((v13 & 1) == 0)
    {
      [v10 setSourceRect:{v12[0], v12[1], v12[2], v12[3]}];
    }

    [v10 setPermittedArrowDirections:{15, v10}];
    [v1 presentViewController:v8 animated:1 completion:0];

    v7 = v8;
  }

  else
  {
    v11 = v8;
  }
}

void sub_100271B0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a2 style] - 3 <= 1 && !*&v8[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider])
    {
      if (a3 == 0xD00000000000001FLL && 0x80000001008BF9F0 == a4 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_100271738(a2);
      }

      else if (a3 == 0xD000000000000024 && 0x80000001008BFB90 == a4 || (sub_1007A3AB4() & 1) != 0)
      {
        sub_1002718F8(a2);
      }
    }
  }
}

void AudiobookNowPlayingTouchViewController.messageViewControllerDidSelectCancel(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1007A1C54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1CA4();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v2 presentedViewController];
  v13 = [a1 viewController];
  if (v19)
  {
    if (v13)
    {
      v18 = v13;
      sub_10000A7C4(0, &qword_100AD7CB0, UIViewController_ptr);
      v14 = sub_1007A3184();

      if ((v14 & 1) == 0)
      {
        return;
      }

      goto LABEL_6;
    }

    v13 = v19;
  }

  else if (!v13)
  {
LABEL_6:
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v19 = sub_1007A2D74();
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100272ED0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1003323D0;
    aBlock[3] = &unk_100A11608;
    v16 = _Block_copy(aBlock);

    sub_1007A1C74();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_100265BDC();
    v18 = v8;
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    sub_1007A3594();
    v17 = v19;
    sub_1007A2D94();
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v12, v18);
    return;
  }
}

void sub_10027205C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider;
    v4 = *(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider);
    if (v4)
    {
      v5 = v4;
      v6 = [v5 viewController];
      [v6 dismissViewControllerAnimated:1 completion:0];

      v7 = *&v2[v3];
      *&v2[v3] = 0;

      v2 = v7;
    }
  }
}

void sub_100272248(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10026F058();
  }
}

UIModalPresentationStyle __swiftcall AudiobookNowPlayingTouchViewController.adaptivePresentationStyle(for:)(UIPresentationController a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 adaptivePresentationStyleForPresentationController:a1.super.isa traitCollection:v3];

  return v4;
}

UIModalPresentationStyle __swiftcall AudiobookNowPlayingTouchViewController.adaptivePresentationStyle(for:traitCollection:)(UIPresentationController a1, UITraitCollection traitCollection)
{
  v2 = [(objc_class *)a1.super.isa presentedViewController];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();

  if (v3)
  {
    return -1;
  }

  else
  {
    return 5;
  }
}

UIPointerRegion_optional __swiftcall AudiobookNowPlayingTouchViewController.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v3 = sub_100272FDC(_.super.isa);
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

uint64_t sub_10027254C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v5);

  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t sub_1002725CC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

double sub_10027264C@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1002726CC(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_10079B9B4();
}

uint64_t type metadata accessor for AudiobookAsset(uint64_t a1)
{
  result = qword_100AD7DA8;
  if (!qword_100AD7DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100272798()
{
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cancellables) = &_swiftEmptySetSingleton;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_recommendedTracker) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_contentOpenAnimator) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_bookPositionProcessor) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_amsEngagement) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_messageViewControllerProvider) = 0;
  *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews) = 0;
  sub_1007A38A4();
  __break(1u);
}

void sub_100272878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      (*(a3 + 16))(a3);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_100AD1348 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AD7C40);
    oslog = sub_10079ACC4();
    v5 = sub_1007A29B4();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Wrong type of user publishing product profile", v6, 2u);
    }
  }
}

uint64_t sub_100272A14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007A1C54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007A1CA4();
  v24 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v13;
  v26 = v7;
  if (a2 != 0xD00000000000001FLL || 0x80000001008BF9F0 != a3)
  {
    result = sub_1007A3AB4();
    if ((result & 1) == 0)
    {
      if (!a1)
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  if (a1)
  {
LABEL_7:
    sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
    v18 = a1;
    v15 = sub_1007A2D74();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = v18;
    v20[4] = a2;
    v20[5] = a3;
    v31 = sub_10027350C;
    v32 = v20;
    aBlock = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1003323D0;
    v30 = &unk_100A11658;
    v21 = _Block_copy(&aBlock);
    v22 = v18;

    sub_1007A1C74();
    aBlock = _swiftEmptyArrayStorage;
    sub_100265BDC();
    sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
    sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
    sub_1007A3594();
    sub_1007A2D94();
    _Block_release(v21);

    goto LABEL_8;
  }

  sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v15 = sub_1007A2D74();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = sub_100273594;
  v32 = v16;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_1003323D0;
  v30 = &unk_100A11680;
  v17 = _Block_copy(&aBlock);

  sub_1007A1C74();
  aBlock = _swiftEmptyArrayStorage;
  sub_100265BDC();
  sub_1001F1160(&unk_100AD7CA0, &unk_100812B20);
  sub_100005920(&qword_100ADA680, &unk_100AD7CA0, &unk_100812B20, &protocol conformance descriptor for [A]);
  sub_1007A3594();
  sub_1007A2D94();
  _Block_release(v17);
LABEL_8:

  (*(v26 + 8))(v9, v6);
  return (*(v24 + 8))(v12, v25);
}

void _s5Books38AudiobookNowPlayingTouchViewControllerC07messagefG0_16didFailWithErrorySo09BCMessagefG8ProviderC_s0L0_pSgtF_0()
{
  if (qword_100AD1348 != -1)
  {
    swift_once();
  }

  v0 = sub_10079ACE4();
  sub_100008B98(v0, qword_100AD7C40);
  oslog = sub_10079ACC4();
  v1 = sub_1007A29B4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Message View Controller did fail to load", v2, 2u);
  }
}

id sub_100272FDC(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews);
    if (v4 && (v8 = result, __chkstk_darwin(result), v7[2] = &v8, , v5 = sub_10058D090(sub_1002735C8, v7, v4), , (v5 & 1) != 0) && ([v3 bounds], UIRectInset(), v10.origin.x = 0.0, v10.origin.y = 0.0, v10.size.width = 0.0, v10.size.height = 0.0, !CGRectEqualToRect(v9, v10)))
    {
      sub_10000A7C4(0, &qword_100AD7E90, UIPointerRegion_ptr);
      sub_1007A2B84();
      v6 = sub_1007A2B94();

      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id _s5Books38AudiobookNowPlayingTouchViewControllerC18pointerInteraction_8styleForSo14UIPointerStyleCSgSo0lI0C_So0L6RegionCtF_0(void *a1)
{
  v3 = sub_1001F1160(&unk_100AE7EA0, &qword_100814EE8);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_10079B1D4();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = [a1 view];
  if (result)
  {
    v12 = result;
    v13 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_cachedPointerInteractionViews);
    if (v13 && (v20 = result, __chkstk_darwin(result), *(&v19 - 2) = &v20, , v14 = sub_10058D090(sub_100273488, (&v19 - 4), v13), , (v14 & 1) != 0))
    {
      v15 = [objc_allocWithZone(UITargetedPreview) initWithView:v12];
      sub_10000A7C4(0, &unk_100AD7E80, UIPointerStyle_ptr);
      *v10 = v15;
      (*(v7 + 104))(v10, enum case for UIPointerEffect.automatic(_:), v6);
      v16 = sub_10079B0F4();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
      v17 = v15;
      v18 = sub_1007A2AE4();

      return v18;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1002733EC(uint64_t a1)
{
  result = sub_1007969B4();
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

uint64_t sub_100273534()
{

  return swift_deallocObject();
}

uint64_t sub_1002735F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100273638(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100273694(uint64_t a1)
{
  result = sub_100258B14();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002736D8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v99 = sub_100796CF4();
  v103 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v98 = v84 - v5;
  v97 = sub_1007A21D4();
  v102 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = v84 - v8;
  v90 = sub_10079CF24();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&qword_100ADB860, &qword_100835800);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v84 - v12;
  v85 = sub_1001F1160(&qword_100AD7F50, &qword_100815010);
  v14 = *(v85 - 8);
  __chkstk_darwin(v85);
  v16 = v84 - v15;
  v87 = sub_1001F1160(&qword_100AD7F58, &qword_100815018);
  __chkstk_darwin(v87);
  v18 = v84 - v17;
  v92 = sub_1001F1160(&qword_100AD7F60, &qword_100815020);
  __chkstk_darwin(v92);
  v93 = v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v104 = v84 - v21;
  v22 = *(v1 + 16);
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC5Books17REActionMenuState___observationRegistrar;
  *&v109[0] = v22;
  v24 = sub_1002747B0(&qword_100ADB430, type metadata accessor for REActionMenuState, &protocol conformance descriptor for REActionMenuState);
  v86 = v23;
  v84[1] = v24;
  sub_100797A14();

  swift_beginAccess();
  v25 = *(v22 + 297);
  sub_1002743DC(v2, v109);
  v26 = swift_allocObject();
  sub_100274414(v109, v26 + 16);
  *v106 = 0;
  *&v106[8] = 0xE000000000000000;
  v91 = sub_100206ECC();
  sub_10079E084();
  v27 = *v2;
  if (*v2)
  {
    v101 = *(v2 + 24);
    v28 = v27;
    if (v25)
    {
      v29 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
      v30 = sub_10079DD74();
    }

    else
    {
      v29 = sub_10079DE34();
      v30 = 0;
    }

    *v106 = v28;
    *&v106[8] = v101;
    *&v106[24] = 0xD000000000000011;
    *&v107 = 0x80000001008C6380;
    BYTE8(v107) = 1;
    *&v108 = v29;
    *(&v108 + 1) = v30;
    sub_10027444C();
    sub_1002744B0();
    sub_10079D6B4();
    v109[0] = *v106;
    v109[1] = *&v106[16];
    v109[2] = v107;
    v109[3] = v108;
    sub_100274504(v109);
    (*(v11 + 8))(v13, v10);
    v105 = 0;
    sub_10079DFE4();
    v31 = v106[0];
    v32 = *&v106[8];
    (*(v14 + 32))(v18, v16, v85);
    v33 = &v18[*(v87 + 36)];
    *v33 = v101;
    v33[8] = v31;
    *(v33 + 2) = v32;
    sub_1002743DC(v2, v106);
    v34 = swift_allocObject();
    sub_100274414(v106, v34 + 16);
    v35 = v88;
    sub_10079CF14();
    sub_1002745BC();
    sub_10079D934();

    (*(v89 + 8))(v35, v90);
    sub_100007840(v18, &qword_100AD7F58, &qword_100815018);
    swift_getKeyPath();
    *v106 = v22;
    sub_100797A14();

    v36 = (v102 + 16);
    v37 = (v103 + 16);
    v38 = v95;
    if (*(v22 + 297) == 1)
    {
      sub_1007A2154();
      v39 = v98;
      sub_100796C94();
      v40 = *v36;
      v90 = v36 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v41 = v94;
      v42 = v38;
      v43 = v97;
      *&v101 = v40;
      v40(v94, v38);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45 = objc_opt_self();
      v89 = ObjCClassFromMetadata;
      v46 = [v45 bundleForClass:ObjCClassFromMetadata];
      v47 = *v37;
      v85 = v37 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v48 = v96;
      v49 = v39;
      v50 = v39;
      v51 = v99;
      v86 = v47;
      v47(v96, v50, v99);
      v52 = v41;
      v53 = v46;
      v54 = v48;
      v55 = sub_1007A22D4(v41, 0, 0, v53, v48, "Accessibility label for the bookmark button being in the on state in the action menu.", 85, 2);
    }

    else
    {
      sub_1007A2154();
      v57 = v98;
      sub_100796C94();
      v58 = *v36;
      v90 = v36 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v59 = v94;
      v42 = v38;
      v43 = v97;
      *&v101 = v58;
      v58(v94, v38);
      type metadata accessor for BundleFinder();
      v60 = swift_getObjCClassFromMetadata();
      v61 = objc_opt_self();
      v89 = v60;
      v62 = [v61 bundleForClass:v60];
      v63 = *v37;
      v85 = v37 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v64 = v96;
      v49 = v57;
      v65 = v57;
      v51 = v99;
      v86 = v63;
      v63(v96, v65, v99);
      v52 = v59;
      v66 = v62;
      v54 = v64;
      v55 = sub_1007A22D4(v59, 0, 0, v66, v64, "Accessibility label for the bookmark button being in the off state in the action menu.", 86, 2);
    }

    v88 = v55;
    v87 = v56;
    v103 = *(v103 + 8);
    v67 = v49;
    (v103)(v49, v51);
    v68 = *(v102 + 8);
    v68(v42, v43);
    sub_1007A2154();
    sub_100796C94();
    (v101)(v52, v42, v43);
    type metadata accessor for BundleFinder();
    v69 = [objc_opt_self() bundleForClass:v89];
    v86(v54, v67, v51);
    v70 = sub_1007A22D4(v52, 0, 0, v69, v54, "Accessibility label for the line guide button in the action menu.", 65, 2);
    v72 = v71;
    (v103)(v67, v51);
    v68(v42, v43);
    *v106 = v70;
    *&v106[8] = v72;
    v73 = sub_10079D5D4();
    v75 = v74;
    v77 = v76;
    v78 = v93;
    sub_10079C144();
    sub_10020B430(v73, v75, v77 & 1);

    *v106 = v88;
    *&v106[8] = v87;
    v79 = sub_10079D5D4();
    v81 = v80;
    LOBYTE(v73) = v82;
    sub_10079C154();
    sub_10020B430(v79, v81, v73 & 1);

    sub_100007840(v78, &qword_100AD7F60, &qword_100815020);
    return sub_100007840(v104, &qword_100AD7F60, &qword_100815020);
  }

  else
  {
    type metadata accessor for ChromeStyle(0);
    sub_1002747B0(&qword_100ADB6A0, type metadata accessor for ChromeStyle, &protocol conformance descriptor for ChromeStyle);
    result = sub_10079C474();
    __break(1u);
  }

  return result;
}

uint64_t sub_100274368(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 48);
    ObjectType = swift_getObjectType();
    (*(v3 + 96))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_10027444C()
{
  result = qword_100AEE360;
  if (!qword_100AEE360)
  {
    sub_1001F1234(&qword_100ADB860, &qword_100835800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEE360);
  }

  return result;
}

unint64_t sub_1002744B0()
{
  result = qword_100AD7F68;
  if (!qword_100AD7F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F68);
  }

  return result;
}

uint64_t sub_100274558()
{

  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

unint64_t sub_1002745BC()
{
  result = qword_100AD7F70;
  if (!qword_100AD7F70)
  {
    sub_1001F1234(&qword_100AD7F58, &qword_100815018);
    sub_1001F1234(&qword_100ADB860, &qword_100835800);
    sub_10027444C();
    sub_1002744B0();
    swift_getOpaqueTypeConformance2();
    sub_1002746A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F70);
  }

  return result;
}

unint64_t sub_1002746A0()
{
  result = qword_100AD7F78;
  if (!qword_100AD7F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F78);
  }

  return result;
}

unint64_t sub_1002746F4()
{
  result = qword_100AD7F80;
  if (!qword_100AD7F80)
  {
    sub_1001F1234(&qword_100AD7F60, &qword_100815020);
    sub_1002745BC();
    sub_1002747B0(&qword_100AF45F0, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD7F80);
  }

  return result;
}

uint64_t sub_1002747B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100274800()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AD7F90);
  sub_100008B98(v0, qword_100AD7F90);
  return sub_10079ACD4();
}

char *sub_100274880()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel);
    v5 = objc_allocWithZone(type metadata accessor for AudiobookNowPlayingFullscreenTouchView(0));
    v6 = v4;
    v7 = v0;
    v8 = sub_100395F40(v6, 0.0, 0.0, 0.0, 0.0);
    *&v8[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_delegate + 8] = &off_100A11838;
    swift_unknownObjectWeakAssign();
    [*&v8[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider] setDelegate:v0];
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t sub_100274964()
{
  v1 = (v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___languageSuffix);
  if (*(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___languageSuffix + 8))
  {
    v2 = *v1;
  }

  else
  {
    v2 = sub_1002749DC();
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t sub_1002749DC()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() systemLocale];
  sub_100796C84();

  v5 = sub_100796C44();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  if (v7)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = objc_opt_self();
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v11 = swift_allocObject();
  v18 = xmmword_10080B690;
  *(v11 + 16) = xmmword_10080B690;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_10000E4C4();
  *(v11 + 64) = v12;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;

  sub_1007A2284();
  v13 = sub_1007A2214();

  v14 = [v10 __systemImageNamedSwift:v13];

  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v18;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = v12;
    *(v15 + 32) = v8;
    *(v15 + 40) = v9;
    v16 = sub_1007A2284();
  }

  else
  {

    return 0;
  }

  return v16;
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.loadView()()
{
  v1 = sub_100274880();
  [v0 setView:v1];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewDidLoad()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewDidLoad");
  v1 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_viewModel];
  sub_100274D68(v1);
  sub_100275384(v1);
  sub_100278F14();
}

void sub_100274D68(uint64_t a1)
{
  v3 = sub_100274880();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  if (LOBYTE(v18[0]))
  {
    v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage;
  }

  [*&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause] setBackgroundImage:*&v3[*v4] forState:0];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  sub_10027AD7C(v18[0], v18[1], &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);

  sub_10027A084(a1);
  v5 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  v6 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  sub_10079B9A4(v18);

  v8 = v18[0];
  [*&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] setImage:v18[0]];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  v9 = *(*(v1 + v5) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton);
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  sub_10079B9A4(v18);

  v11 = 1;
  [v10 setEnabled:(v18[0] & 1) == 0];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  sub_10027A268(0x61776B6361626F67, 0xEC00000040256472, sub_10039969C, *v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  sub_10027A268(0x726177726F666F67, 0xEB00000000402564, sub_1003996A8, *v18);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  sub_10027A3E4(v18[0]);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  v12 = *v18;
  v13 = *(*(v1 + v5) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  sub_100201F60(v12);
  v14 = sub_1007A2214();

  [v13 setTitle:v14 forState:0];

  v15 = *(*(v1 + v5) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
  sub_100202090(v12);
  v16 = sub_1007A2214();

  [v15 setAccessibilityValue:v16];

  v17 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v1 action:"resetPlaybackSpeed"];
  [*(*(v1 + v5) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed) addGestureRecognizer:v17];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v18);

  if ((v18[0] & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v18);

    v11 = LOBYTE(v18[0]);
  }

  sub_10027AC7C(v11);
}

uint64_t sub_100275384(char *a1)
{
  v270 = sub_1001F1160(&qword_100AD8178, &qword_10081F260);
  __chkstk_darwin(v270);
  v267 = v217 - v2;
  v268 = sub_1001F1160(&qword_100AD8180, &qword_1008153F0);
  __chkstk_darwin(v268);
  v264 = v217 - v3;
  v269 = sub_1001F1160(&qword_100AD8188, &qword_1008153F8);
  v271 = *(v269 - 8);
  __chkstk_darwin(v269);
  v265 = v217 - v4;
  v272 = sub_1001F1160(&qword_100AD8190, &qword_100815400);
  v273 = *(v272 - 8);
  __chkstk_darwin(v272);
  v266 = v217 - v5;
  v281 = sub_1001F1160(&qword_100AD8198, &qword_100815408);
  __chkstk_darwin(v281);
  v278 = v217 - v6;
  v279 = sub_1001F1160(&qword_100AD81A0, &qword_100815410);
  v290 = *(v279 - 8);
  __chkstk_darwin(v279);
  v262 = v217 - v7;
  v280 = sub_1001F1160(&qword_100AD81A8, &qword_100815418);
  v291 = *(v280 - 8);
  __chkstk_darwin(v280);
  v263 = v217 - v8;
  v258 = sub_1001F1160(&qword_100AD81B0, &unk_100815420);
  __chkstk_darwin(v258);
  v254 = v217 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v253 = v217 - v11;
  __chkstk_darwin(v12);
  v252 = v217 - v13;
  v257 = sub_1001F1160(&qword_100AD81B8, &unk_10081F280);
  v259 = *(v257 - 8);
  __chkstk_darwin(v257);
  v255 = v217 - v14;
  v260 = sub_1001F1160(&qword_100AD81C0, &qword_100815430);
  v261 = *(v260 - 8);
  __chkstk_darwin(v260);
  v256 = v217 - v15;
  v248 = sub_1001F1160(&qword_100AD81C8, &qword_100815438);
  v249 = *(v248 - 8);
  __chkstk_darwin(v248);
  v246 = v217 - v16;
  v250 = sub_1001F1160(&unk_100AD81D0, &unk_100815440);
  v251 = *(v250 - 8);
  __chkstk_darwin(v250);
  v247 = v217 - v17;
  v241 = sub_1001F1160(&unk_100AE1510, &unk_1008225F0);
  v243 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = v217 - v18;
  v244 = sub_1001F1160(&qword_100AD81E0, &unk_100815450);
  v245 = *(v244 - 8);
  __chkstk_darwin(v244);
  v240 = v217 - v19;
  v234 = sub_1001F1160(&qword_100AD7EB8, &qword_100814F38);
  v235 = *(v234 - 8);
  __chkstk_darwin(v234);
  v232 = v217 - v20;
  v236 = sub_1001F1160(&unk_100AD7EC0, &unk_100814F40);
  v237 = *(v236 - 8);
  __chkstk_darwin(v236);
  v233 = v217 - v21;
  v228 = sub_1001F1160(&qword_100AD81E8, &unk_10081F2A0);
  v229 = *(v228 - 8);
  __chkstk_darwin(v228);
  v226 = v217 - v22;
  v230 = sub_1001F1160(&unk_100AD81F0, &unk_100815460);
  v231 = *(v230 - 8);
  __chkstk_darwin(v230);
  v227 = v217 - v23;
  v296 = sub_1001F1160(&unk_100AE1530, &unk_10081F270);
  v288 = *(v296 - 8);
  __chkstk_darwin(v296);
  v242 = v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v295 = v217 - v26;
  v225 = sub_1001F1160(&qword_100AD8200, &qword_100815470);
  v289 = *(v225 - 8);
  __chkstk_darwin(v225);
  v224 = v217 - v27;
  v276 = sub_1001F1160(&qword_100AD8208, &qword_100815478);
  v284 = *(v276 - 8);
  __chkstk_darwin(v276);
  v274 = v217 - v28;
  v277 = sub_1001F1160(&unk_100AD8210, &unk_100815480);
  v285 = *(v277 - 8);
  __chkstk_darwin(v277);
  v275 = v217 - v29;
  v303 = sub_1001F1160(&unk_100AE1520, &unk_10081F290);
  v301 = *(v303 - 8);
  __chkstk_darwin(v303);
  v238 = v217 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v299 = v217 - v32;
  v33 = sub_1001F1160(&qword_100AD8220, &unk_100815490);
  v34 = *(v33 - 8);
  v297 = v33;
  v298 = v34;
  __chkstk_darwin(v33);
  v282 = v217 - v35;
  v293 = sub_1001F1160(&qword_100AD8228, &unk_10081F2B0);
  v294 = *(v293 - 8);
  __chkstk_darwin(v293);
  v286 = v217 - v36;
  v300 = sub_1001F1160(&qword_100AD8230, &qword_1008154A0);
  v302 = *(v300 - 8);
  __chkstk_darwin(v300);
  v287 = v217 - v37;
  v221 = sub_1001F1160(&qword_100AD8238, &qword_1008154A8);
  v222 = *(v221 - 1);
  __chkstk_darwin(v221);
  v219 = v217 - v38;
  v223 = sub_1001F1160(&unk_100AD8240, &unk_1008154B0);
  v283 = *(v223 - 8);
  __chkstk_darwin(v223);
  v220 = v217 - v39;
  v40 = sub_1001F1160(&qword_100AD7EB0, &qword_10080EFD0);
  __chkstk_darwin(v40 - 8);
  v42 = v217 - v41;
  v43 = sub_1001F1160(&unk_100AD8250, &unk_1008154C0);
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v46 = v217 - v45;
  v312 = sub_1001F1160(&qword_100AE1560, &unk_10081F2C0);
  v47 = *(v312 - 8);
  __chkstk_darwin(v312);
  v49 = v217 - v48;
  v292 = a1;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD8260, &unk_1008154D0);
  sub_10079B974();
  swift_endAccess();
  v50 = sub_10000A7C4(0, &qword_100AD1E10, OS_dispatch_queue_ptr);
  v51 = sub_1007A2D74();
  v313 = v51;
  v309 = sub_1007A2D24();
  v52 = *(v309 - 8);
  v307 = *(v52 + 56);
  v311 = v52 + 56;
  v307(v42, 1, 1, v309);
  v305 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_100005920(&unk_100AD8270, &unk_100AD8250, &unk_1008154C0, &protocol conformance descriptor for Published<A>.Publisher);
  v308 = sub_100017E1C();
  sub_10079BAB4();
  sub_100007840(v42, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v44 + 8))(v46, v43);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v304 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_100005920(&unk_100AD8280, &qword_100AE1560, &unk_10081F2C0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v53 = v312;
  sub_10079BB04();

  (*(v47 + 8))(v49, v53);
  v312 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_cancellables;
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5100, &unk_10080FC00);
  v54 = v219;
  sub_10079B974();
  swift_endAccess();
  v310 = v50;
  v55 = sub_1007A2D74();
  v313 = v55;
  v56 = v42;
  v306 = v42;
  v57 = v309;
  v58 = v307;
  v307(v42, 1, 1, v309);
  sub_100005920(&qword_100AD8290, &qword_100AD8238, &qword_1008154A8, v305);
  v59 = v220;
  v60 = v221;
  sub_10079BAB4();
  sub_100007840(v56, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v222 + 8))(v54, v60);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v61 = v304;
  sub_100005920(&qword_100AD8298, &unk_100AD8240, &unk_1008154B0, v304);
  v62 = v223;
  sub_10079BB04();

  (*(v283 + 8))(v59, v62);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100AD5110, &unk_10080FC10);
  v63 = v286;
  sub_10079B974();
  swift_endAccess();
  v64 = sub_1007A2D74();
  v313 = v64;
  v65 = v306;
  v58(v306, 1, 1, v57);
  v66 = v305;
  sub_100005920(&unk_100ADF110, &qword_100AD8228, &unk_10081F2B0, v305);
  v67 = v287;
  v68 = v293;
  sub_10079BAB4();
  sub_100007840(v65, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v294 + 8))(v63, v68);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82A0, &qword_100AD8230, &qword_1008154A0, v61);
  v69 = v300;
  sub_10079BB04();

  (*(v302 + 8))(v67, v69);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v300 = sub_1001F1160(&unk_100AD5120, &qword_10080FC20);
  v70 = v299;
  sub_10079B974();
  swift_endAccess();
  v71 = sub_1007A2D74();
  v313 = v71;
  v72 = v65;
  v73 = v309;
  v74 = v307;
  v307(v65, 1, 1, v309);
  v302 = sub_100005920(&qword_100AD82B0, &unk_100AE1520, &unk_10081F290, v66);
  v75 = v282;
  v76 = v303;
  sub_10079BAB4();
  sub_100007840(v72, &qword_100AD7EB0, &qword_10080EFD0);

  v77 = *(v301 + 1);
  v301 += 8;
  v294 = v77;
  v77(v70, v76);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v293 = sub_100005920(&unk_100AE1590, &qword_100AD8220, &unk_100815490, v304);
  v78 = v297;
  sub_10079BB04();

  v283 = *(v298 + 8);
  v298 += 8;
  v79 = v75;
  (v283)(v75, v78);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v80 = v299;
  sub_10079B974();
  swift_endAccess();
  v81 = sub_1007A2D74();
  v313 = v81;
  v82 = v306;
  v74(v306, 1, 1, v73);
  v83 = v82;
  v84 = v303;
  sub_10079BAB4();
  sub_100007840(v83, &qword_100AD7EB0, &qword_10080EFD0);

  (v294)(v80, v84);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v85 = v297;
  sub_10079BB04();

  (v283)(v79, v85);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v223 = sub_1001F1160(&unk_100AD50F0, &unk_10080FBF0);
  v86 = v274;
  sub_10079B974();
  swift_endAccess();
  v87 = sub_1007A2D74();
  v313 = v87;
  v88 = v83;
  v89 = v307;
  v307(v83, 1, 1, v309);
  v90 = v305;
  v222 = sub_100005920(&qword_100AD82B8, &qword_100AD8208, &qword_100815478, v305);
  v91 = v275;
  v92 = v276;
  sub_10079BAB4();
  sub_100007840(v88, &qword_100AD7EB0, &qword_10080EFD0);

  v93 = *(v284 + 8);
  v284 += 8;
  v221 = v93;
  (v93)(v86, v92);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v94 = v304;
  v220 = sub_100005920(&unk_100AD82C0, &unk_100AD8210, &unk_100815480, v304);
  v95 = v277;
  sub_10079BB04();

  v96 = *(v285 + 8);
  v285 += 8;
  v219 = v96;
  (v96)(v91, v95);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v97 = v292;
  swift_beginAccess();
  v287 = sub_1001F1160(&qword_100AD50E0, &qword_10080FBE0);
  v98 = v295;
  sub_10079B974();
  swift_endAccess();
  v99 = sub_1007A2D74();
  v313 = v99;
  v100 = v306;
  v89(v306, 1, 1, v309);
  v286 = sub_100005920(&qword_100AD82D0, &unk_100AE1530, &unk_10081F270, v90);
  v101 = v224;
  v102 = v296;
  sub_10079BAB4();
  sub_100007840(v100, &qword_100AD7EB0, &qword_10080EFD0);

  v103 = *(v288 + 8);
  v288 += 8;
  v218 = v103;
  v103(v98, v102);
  v104 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v105 = swift_allocObject();
  *(v105 + 16) = v104;
  *(v105 + 24) = v97;
  v217[1] = sub_100005920(&qword_100AD82D8, &qword_100AD8200, &qword_100815470, v94);
  v106 = v97;
  v107 = v225;
  sub_10079BB04();

  v108 = *(v289 + 8);
  v289 += 8;
  v217[0] = v108;
  v108(v101, v107);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v109 = v295;
  sub_10079B974();
  swift_endAccess();
  v110 = sub_1007A2D74();
  v313 = v110;
  v307(v100, 1, 1, v309);
  v111 = v100;
  v112 = v296;
  sub_10079BAB4();
  sub_100007840(v111, &qword_100AD7EB0, &qword_10080EFD0);

  v218(v109, v112);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  (v217[0])(v101, v107);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v292 = v106;
  swift_beginAccess();
  v113 = v274;
  sub_10079B974();
  swift_endAccess();
  v114 = sub_1007A2D74();
  v313 = v114;
  v115 = v309;
  v116 = v307;
  v307(v111, 1, 1, v309);
  v117 = v275;
  v118 = v276;
  sub_10079BAB4();
  sub_100007840(v111, &qword_100AD7EB0, &qword_10080EFD0);

  (v221)(v113, v118);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v119 = v277;
  sub_10079BB04();

  (v219)(v117, v119);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD82E0, &unk_1008154E0);
  v120 = v226;
  sub_10079B974();
  swift_endAccess();
  v121 = sub_1007A2D74();
  v313 = v121;
  v116(v111, 1, 1, v115);
  v122 = v116;
  sub_100005920(&qword_100AD82E8, &qword_100AD81E8, &unk_10081F2A0, v305);
  v123 = v227;
  v124 = v228;
  sub_10079BAB4();
  sub_100007840(v111, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v229 + 8))(v120, v124);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&unk_100AD82F0, &unk_100AD81F0, &unk_100815460, v304);
  v125 = v230;
  sub_10079BB04();

  (*(v231 + 8))(v123, v125);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  v126 = v299;
  sub_10079B974();
  swift_endAccess();
  v127 = sub_1007A2D74();
  v313 = v127;
  v122(v111, 1, 1, v309);
  v128 = v282;
  v129 = v303;
  sub_10079BAB4();
  sub_100007840(v111, &qword_100AD7EB0, &qword_10080EFD0);

  (v294)(v126, v129);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = v297;
  sub_10079BB04();

  v131 = v283;
  (v283)(v128, v130);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v132 = sub_1007A2D74();
  v313 = v132;
  v133 = v309;
  v134 = v307;
  v307(v111, 1, 1, v309);
  v135 = v128;
  v136 = v111;
  v137 = v303;
  sub_10079BAB4();
  sub_100007840(v136, &qword_100AD7EB0, &qword_10080EFD0);

  (v294)(v126, v137);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v138 = v297;
  sub_10079BB04();

  v131(v135, v138);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v139 = v292;
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v140 = sub_1007A2D74();
  v313 = v140;
  v141 = v306;
  v134(v306, 1, 1, v133);
  v142 = v282;
  v143 = v141;
  v144 = v303;
  v145 = v126;
  sub_10079BAB4();
  v146 = v143;
  sub_100007840(v143, &qword_100AD7EB0, &qword_10080EFD0);

  (v294)(v145, v144);
  v147 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v148 = swift_allocObject();
  *(v148 + 16) = v147;
  *(v148 + 24) = v139;
  v149 = v139;
  v150 = v297;
  sub_10079BB04();

  (v283)(v142, v150);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v301 = v149;
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50A8, &qword_10080FBA8);
  v151 = v232;
  sub_10079B974();
  swift_endAccess();
  v152 = sub_1007A2D74();
  v313 = v152;
  v153 = v146;
  v154 = v309;
  v155 = v307;
  v307(v146, 1, 1, v309);
  v156 = v305;
  sub_100005920(&unk_100AD7ED0, &qword_100AD7EB8, &qword_100814F38, v305);
  v157 = v233;
  v158 = v234;
  sub_10079BAB4();
  sub_100007840(v153, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v235 + 8))(v151, v158);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v159 = v304;
  sub_100005920(&unk_100AD7EE0, &unk_100AD7EC0, &unk_100814F40, v304);
  v160 = v236;
  sub_10079BB04();

  (*(v237 + 8))(v157, v160);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v161 = v301;
  swift_beginAccess();
  sub_1001F1160(&unk_100AD50D0, &unk_10080FBD0);
  v162 = v239;
  sub_10079B974();
  swift_endAccess();
  v163 = sub_1007A2D74();
  v313 = v163;
  v164 = v306;
  v155(v306, 1, 1, v154);
  sub_100005920(&unk_100AE15A0, &unk_100AE1510, &unk_1008225F0, v156);
  v165 = v240;
  v166 = v241;
  sub_10079BAB4();
  sub_100007840(v164, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v243 + 8))(v162, v166);
  v167 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v168 = swift_allocObject();
  *(v168 + 16) = v167;
  *(v168 + 24) = v161;
  sub_100005920(&qword_100AD8300, &qword_100AD81E0, &unk_100815450, v159);
  v169 = v161;
  v170 = v244;
  sub_10079BB04();

  (*(v245 + 8))(v165, v170);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  v171 = v246;
  sub_10079B7C4();
  v172 = sub_1007A2D74();
  v313 = v172;
  v173 = v306;
  v174 = v307;
  v307(v306, 1, 1, v309);
  v301 = &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>;
  sub_100005920(&qword_100AD8308, &qword_100AD81C8, &qword_100815438, &protocol conformance descriptor for Publishers.CombineLatest4<A, B, C, D>);
  v175 = v247;
  v176 = v248;
  sub_10079BAB4();
  sub_100007840(v173, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v249 + 8))(v171, v176);
  v177 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v178 = swift_allocObject();
  *(v178 + 16) = v177;
  *(v178 + 24) = v169;
  v179 = swift_allocObject();
  *(v179 + 16) = sub_100282970;
  *(v179 + 24) = v178;
  sub_100005920(&unk_100AD8310, &unk_100AD81D0, &unk_100815440, v304);
  v180 = v169;
  v181 = v250;
  sub_10079BB04();

  (*(v251 + 8))(v175, v181);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&unk_100ADF120, &qword_100822620);
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  sub_100005920(&unk_100AD8320, &qword_100AD81B0, &unk_100815420, v305);
  v182 = v255;
  sub_10079B7C4();
  v183 = sub_1007A2D74();
  v313 = v183;
  v184 = v306;
  v174(v306, 1, 1, v309);
  sub_100005920(&unk_100ADF130, &qword_100AD81B8, &unk_10081F280, v301);
  v185 = v256;
  v186 = v257;
  sub_10079BAB4();
  sub_100007840(v184, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v259 + 8))(v182, v186);
  v187 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v188 = swift_allocObject();
  *(v188 + 16) = sub_1002829B0;
  *(v188 + 24) = v187;
  v189 = v304;
  sub_100005920(&unk_100AD8330, &qword_100AD81C0, &qword_100815430, v304);
  v190 = v260;
  sub_10079BB04();

  (*(v261 + 8))(v185, v190);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  v298 = sub_1001F1160(&qword_100AD50B8, &unk_1008154F0);
  sub_10079B974();
  swift_endAccess();
  v297 = sub_100005920(&qword_100AD8340, &qword_100AD8198, &qword_100815408, v305);
  v191 = v262;
  sub_10079B7A4();
  v192 = sub_1007A2D74();
  v313 = v192;
  v193 = v306;
  v307(v306, 1, 1, v309);
  v301 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  v296 = sub_100005920(&qword_100AD8348, &qword_100AD81A0, &qword_100815410, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v194 = v263;
  v195 = v279;
  sub_10079BAB4();
  sub_100007840(v193, &qword_100AD7EB0, &qword_10080EFD0);

  v196 = *(v290 + 8);
  v290 += 8;
  v295 = v196;
  v197 = v191;
  (v196)(v191, v195);
  v198 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v199 = swift_allocObject();
  *(v199 + 16) = sub_1002829C0;
  *(v199 + 24) = v198;
  v294 = sub_100005920(&qword_100AD8350, &qword_100AD81A8, &qword_100815418, v189);
  v200 = v280;
  sub_10079BB04();

  v201 = *(v291 + 8);
  v291 += 8;
  v201(v194, v200);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  sub_10079B7A4();
  v202 = sub_1007A2D74();
  v313 = v202;
  v203 = v306;
  v307(v306, 1, 1, v309);
  v204 = v279;
  sub_10079BAB4();
  sub_100007840(v203, &qword_100AD7EB0, &qword_10080EFD0);

  (v295)(v197, v204);
  v205 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v206 = swift_allocObject();
  *(v206 + 16) = sub_1002829F8;
  *(v206 + 24) = v205;
  v207 = v280;
  sub_10079BB04();

  v201(v194, v207);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_1001F1160(&qword_100AD50E8, &qword_10080FBE8);
  sub_10079B974();
  swift_endAccess();
  swift_beginAccess();
  sub_1001F1160(&qword_100AD50C0, &qword_10080FBC0);
  sub_10079B974();
  swift_endAccess();
  v208 = v305;
  sub_100005920(&qword_100AD8358, &qword_100AD8180, &qword_1008153F0, v305);
  sub_100005920(&qword_100AD8360, &qword_100AD8178, &qword_10081F260, v208);
  v209 = v265;
  sub_10079B7A4();
  v210 = sub_1007A2D74();
  v313 = v210;
  v307(v203, 1, 1, v309);
  sub_100005920(&qword_100AD8368, &qword_100AD8188, &qword_1008153F8, v301);
  v211 = v266;
  v212 = v269;
  sub_10079BAB4();
  sub_100007840(v203, &qword_100AD7EB0, &qword_10080EFD0);

  (*(v271 + 8))(v209, v212);
  v213 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v214 = swift_allocObject();
  *(v214 + 16) = sub_100282A00;
  *(v214 + 24) = v213;
  sub_100005920(&qword_100AD8370, &qword_100AD8190, &qword_100815400, v304);
  v215 = v272;
  sub_10079BB04();

  (*(v273 + 8))(v211, v215);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_100278F14()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_100282828;
  v14[5] = v2;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100388B6C;
  v14[3] = &unk_100A11A60;
  v3 = _Block_copy(v14);

  v4 = [v1 elementWithUncachedProvider:v3];
  _Block_release(v3);
  v5 = sub_100274880();
  v6 = *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];

  [v6 setShowsMenuAsPrimaryAction:1];
  v7 = *(*(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton);
  v8 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100811390;
  *(v9 + 32) = v4;
  sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
  v10 = v7;
  v11 = v4;
  isa = sub_1007A25D4().super.isa;

  v13 = [v8 bk_menuWithChildren:isa];

  [v10 setMenu:v13];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewWillAppear:", a1);
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  [v4 setContentMode:{objc_msgSend(v1, "coverContentMode")}];
  v5 = *(*&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_10079B9A4(&v8);

  v7 = v8;
  [v6 setImage:v8];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "viewDidAppear:", a1);
  v3 = sub_100274880();
  [*&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:0];
  [*&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView] setMarqueeEnabled:1 withOptions:0];
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1);
  v3 = sub_100411508();
  if (v3)
  {
    v4 = v3;
    UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, v3);
  }
}

void sub_10027955C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&unk_100AD83B0, &qword_10081F2D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v13 - v7;
  v9 = [v2 view];
  v10 = v9;
  if (a2)
  {
    if (v9)
    {
      v13[0] = a1;
      v13[1] = a2;
      sub_100282BC4();

      sub_100795ED4();
      v11 = sub_100795EE4();
      (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
LABEL_6:
      sub_1007A30D4();

      return;
    }

    __break(1u);
  }

  else if (v9)
  {
    v12 = sub_100795EE4();
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.viewSafeAreaInsetsDidChange()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "viewSafeAreaInsetsDidChange");
  v1 = sub_100274880();
  [v1 setNeedsLayout];
}

uint64_t AudiobookNowPlayingFullscreenTouchViewController.supportedInterfaceOrientations.getter()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

id sub_1002798B8(uint64_t a1)
{
  sub_100797C64();
  v2 = sub_100797C44();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectRelease();
    if (v3 == v1)
    {
      sub_100797C54();
    }
  }

  result = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_10027994C()
{
  v0 = sub_100274880();
  v1 = sub_1003955BC();

  return v1;
}

char *sub_100279980(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = sub_1007971A4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = *&result[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
    swift_unknownObjectRetain();
    v11 = sub_100274880();
    v12 = *&v11[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];

    (*(v5 + 104))(v7, enum case for ContextActionSource.unknown(_:), v4);
    sub_100797194();
    (*(v5 + 8))(v7, v4);
    v13 = sub_1007A2214();

    v14 = [v10 contextMenuItemsFor:v9 from:v12 actionSource:v13];

    swift_unknownObjectRelease();
    sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
    v15 = sub_1007A25E4();

    if (v15 >> 62)
    {
      sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);

      v16 = sub_1007A38C4();
    }

    else
    {

      sub_1007A3AD4();
      sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
      v16 = v15;
    }

    a1(v16);
  }

  return result;
}

id AudiobookNowPlayingFullscreenTouchViewController.ba_analyticsTracker.getter()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, "ba_analyticsTracker");

  return v1;
}

void AudiobookNowPlayingFullscreenTouchViewController.ba_analyticsTracker.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "ba_setAnalyticsTracker:", a1);
  sub_100279D80();
}

void sub_100279D80()
{
  v1 = v0;
  v2 = sub_1007971A4();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 ba_effectiveAnalyticsTracker];
  if (v7)
  {
    v8 = v7;
    v9 = *&v0[OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler];
    v10 = sub_100274880();
    (*(v3 + 104))(v6, enum case for ContextActionSource.unknown(_:), v2);
    sub_100797194();
    (*(v3 + 8))(v6, v2);
    v11 = sub_1007A2214();

    v12 = [v9 analyticsAssetPropertyProviderFor:v10 actionSource:v11];

    if (v12)
    {
      [*(*&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton) setupAppAnalyticsReportingUsingTracker:v8 withPropertyProvider:v12];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void (*AudiobookNowPlayingFullscreenTouchViewController.ba_analyticsTracker.modify(objc_super **a1))(objc_super **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3].super_class = v1;
  ObjectType = swift_getObjectType();
  v4[4].receiver = ObjectType;
  v4->receiver = v1;
  v4->super_class = ObjectType;
  v4[3].receiver = [(objc_super *)v4 ba_analyticsTracker];
  return sub_100279FF0;
}

void sub_100279FF0(objc_super **a1, char a2)
{
  v2 = *a1;
  receiver = (*a1)[3].receiver;
  super_class = (*a1)[3].super_class;
  v4 = (*a1)[4].receiver;
  if (a2)
  {
    v2[1].receiver = super_class;
    v2[1].super_class = v4;
    objc_msgSendSuper2(v2 + 1, "ba_setAnalyticsTracker:", receiver);
  }

  else
  {
    v2[2].receiver = super_class;
    v2[2].super_class = v4;
    objc_msgSendSuper2(v2 + 2, "ba_setAnalyticsTracker:", receiver);

    sub_100279D80();
  }

  free(v2);
}

void sub_10027A084(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(v11);

  if (LOBYTE(v11[0]) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v11);

    sub_10027AD7C(v11[0], v11[1], &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);
  }

  else if ([*(v2 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) audiobookTimeRemainingMode])
  {
    v5 = sub_1004C1DB0(1);
    sub_10027AD7C(v5, v6, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);

    v7 = v4;
    sub_1004C1DB0(0);
    v8 = sub_1007A2214();

    [v7 setAccessibilityLabel:v8];
  }

  else
  {
    v9 = sub_1002034C8();
    sub_10027AD7C(v9, v10, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);

    [v4 setAccessibilityLabel:0];
  }
}

void sub_10027A268(uint64_t a1, uint64_t a2, void (*a3)(id), long double a4)
{
  v5 = lround(a4);
  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080B690;
  v7 = sub_10027B878(v5);
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  *(v6 + 64) = sub_10000E4C4();
  v10 = 0x73756C702ELL;
  if (v9)
  {
    v10 = v7;
  }

  v11 = 0xE500000000000000;
  if (v9)
  {
    v11 = v9;
  }

  *(v6 + 32) = v10;
  *(v6 + 40) = v11;
  sub_1007A2284();
  v12 = objc_opt_self();
  v13 = sub_1007A2214();

  v14 = [v12 __systemImageNamedSwift:v13];

  if (v14)
  {
    v15 = sub_100274880();
    a3(v14);
  }
}

void sub_10027A3E4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_100796CF4();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v56 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v58 = &v52 - v7;
  v57 = sub_1007A21D4();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v53 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v54 = &v52 - v10;
  v64 = v1;
  v11 = sub_100274880();
  v61 = *&v11[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton];

  v12 = &stru_100000020;
  v66 = _swiftEmptyArrayStorage;
  v63 = UIAccessibilityTraitSelected;
  *&v13 = 134217984;
  v62 = v13;
  do
  {
    v15 = *(&off_100A0C1C0 + v12);
    if (v15 < 8)
    {
      sub_10064EF74(*(&off_100A0C1C0 + v12));
      sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
      sub_1007A2214();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = v15;
      v17[4] = ObjectType;
      v18 = sub_1007A31D4();
      [v18 setState:v15 == a1];
      if (v15 == a1)
      {
        v19 = v18;
        v20 = [v19 accessibilityTraits];
        v21 = v63;
        if ((v63 & ~v20) == 0)
        {
          v21 = 0;
        }

        [v19 setAccessibilityTraits:v21 | v20];
      }

      v14 = v18;
      sub_1007A25C4();
      if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1007A2614();
      }

      sub_1007A2644();
LABEL_5:

      goto LABEL_6;
    }

    if (v15 != 8)
    {
      if (qword_100AD1350 != -1)
      {
        swift_once();
      }

      v22 = sub_10079ACE4();
      sub_100008B98(v22, qword_100AD7F90);
      v14 = sub_10079ACC4();
      v23 = sub_1007A29B4();
      if (os_log_type_enabled(v14, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = v62;
        *(v24 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v14, v23, "Unexpected sleep option tag %ld", v24, 0xCu);
      }

      goto LABEL_5;
    }

LABEL_6:
    v12 += 8;
  }

  while (v12 != 104);
  v25 = v54;
  sub_1007A2154();
  v26 = v58;
  sub_100796C94();
  v27 = v55;
  v28 = v53;
  v29 = v57;
  (*(v55 + 16))(v53, v25, v57);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v33 = v59;
  v32 = v60;
  v34 = v56;
  (*(v59 + 16))(v56, v26, v60);
  sub_1007A22D4(v28, 0, 0, v31, v34, "Custom", 6, 2);
  (*(v33 + 8))(v26, v32);
  (*(v27 + 8))(v25, v29);
  if (a1 == 8)
  {
    v35 = [objc_allocWithZone(NSDateComponentsFormatter) init];
    [v35 setUnitsStyle:3];
    [v35 setAllowedUnits:96];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v65);

    v36 = [v35 stringFromTimeInterval:v65[0]];
    if (v36)
    {
      v37 = v36;

      sub_1007A2254();
    }
  }

  sub_10000A7C4(0, &qword_100AD8390, UIAction_ptr);
  sub_1007A2214();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = sub_1007A31D4();
  v39 = v38;
  if (a1 == 8)
  {
    [v38 setState:1];
    v40 = v39;
    v41 = [v40 accessibilityTraits];
    v42 = v63;
    if ((v63 & ~v41) == 0)
    {
      v42 = 0;
    }

    [v40 setAccessibilityTraits:v42 | v41];
  }

  v43 = v39;
  sub_1007A25C4();
  v44 = v61;
  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();
  v45 = v66;
  if (v66 >> 62)
  {
    sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
    v50 = v44;

    v47 = sub_1007A38C4();
  }

  else
  {
    v46 = v44;

    sub_1007A3AD4();
    sub_10000A7C4(0, &qword_100AE8DB0, UIMenuElement_ptr);
    v47 = v45;
  }

  sub_10000A7C4(0, &qword_100AD8170, UIMenu_ptr);
  v68._countAndFlagsBits = 0;
  v68._object = 0xE000000000000000;
  v69.value._countAndFlagsBits = 0;
  v69.value._object = 0;
  v67.value.super.isa = 0;
  v67.is_nil = 0;
  v48.value = 0;
  isa = sub_1007A30C4(v68, v69, v67, v48, 0xFFFFFFFFFFFFFFFFLL, v47, v51).super.super.isa;
  [v44 setMenu:isa];

  [v44 setShowsMenuAsPrimaryAction:1];
}

void sub_10027AC7C(int a1)
{
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_loadingSpinner];

  v6 = *(*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
  if ((([v6 isHidden] ^ a1) & 1) != 0 || ((objc_msgSend(v4, "isHidden") ^ a1) & 1) == 0)
  {
    if (a1)
    {
      v5 = &selRef_startAnimating;
    }

    else
    {
      v5 = &selRef_stopAnimating;
    }

    [v6 setHidden:a1 & 1];
    [v4 setHidden:(a1 & 1) == 0];
    [v4 *v5];
  }
}

id sub_10027AD7C(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_100274880();
  v8 = *&v7[*a3];

  v9 = [v8 text];
  if (!v9)
  {
LABEL_7:
    v16 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    v17 = *(*(v3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + *a3);
    v18 = sub_1007A2214();
    [v17 setText:v18];

    v19 = *(v3 + v16);

    return [v19 setNeedsLayout];
  }

  v10 = sub_1007A2254();
  v12 = v11;

  if (v10 != a1 || v12 != a2)
  {
    v14 = sub_1007A3AB4();

    if (v14)
    {
      return result;
    }

    goto LABEL_7;
  }
}

void sub_10027AEEC(char a1, char a2)
{
  v43[0] = sub_100796CF4();
  v5 = *(v43[0] - 8);
  __chkstk_darwin(v43[0]);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v43 - v9;
  v11 = sub_1007A21D4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v43 - v16;
  if (a2)
  {
    v18 = sub_100274880();
    sub_1007A2154();
    sub_100796C94();
    (*(v12 + 16))(v14, v17, v11);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v21 = v43[0];
    (*(v5 + 16))(v7, v10, v43[0]);
    v22 = sub_1007A22D4(v14, 0, 0, v20, v7, "String that appears below scrubber when listening to an audiobook preview", 73, 2);
    v24 = v23;
    (*(v5 + 8))(v10, v21);
    (*(v12 + 8))(v17, v11);
    v25 = &v18[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
    *v25 = v22;
    v25[1] = v24;

    sub_1003997F8();
  }

  else
  {
    v26 = v2;
    if (a1)
    {
      v27 = sub_10027B324();
      v29 = v28;
      v30 = sub_100274880();
      v31 = &v30[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
      *v31 = v27;
      v31[1] = v29;

      sub_1003997F8();

      sub_10027C554(v27, v29, &OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingSpeed, &enum case for UIAccessibility.BooksAccessibilityAnnouncementIdentifier.scrubbingSpeedChanged(_:), 0.5);

      v32 = *(v26 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
      v33 = *&v32[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong + 8];
      v34 = &v32[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort];
      *v34 = *&v32[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
      *(v34 + 1) = v33;
      v43[0] = v32;
    }

    else
    {
      v35 = sub_100274880();
      v36 = sub_1004C1DB0(0);
      v37 = &v35[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextLong];
      *v37 = v36;
      v37[1] = v38;

      sub_1003997F8();

      v43[0] = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
      v39 = sub_1004C1DB0(1);
      v40 = (v43[0] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlayInAudiobookTextShort);
      *v40 = v39;
      v40[1] = v41;
    }

    sub_1003997F8();
    v42 = v43[0];
  }
}

uint64_t sub_10027B324()
{
  v28[0] = sub_100796CF4();
  v0 = *(v28[0] - 8);
  __chkstk_darwin(v28[0]);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v28 - v4;
  v6 = sub_1007A21D4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v28 - v11;
  v13 = sub_100274880();
  v14 = *&v13[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  v15 = [v14 speed];
  v16 = 0;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v7 + 16))(v9, v12, v6);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v19 = v28[0];
      (*(v0 + 16))(v2, v5, v28[0]);
      v20 = sub_1007A22D4(v9, 0, 0, v26, v2, "Label in Now Playing when scrubbing audiobook at one-quarter of the normal speed", 80, 2, v28[0]);
      goto LABEL_10;
    }

    if (v15 == 3)
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v7 + 16))(v9, v12, v6);
      type metadata accessor for BundleFinder();
      v21 = swift_getObjCClassFromMetadata();
      v22 = [objc_opt_self() bundleForClass:v21];
      v19 = v28[0];
      (*(v0 + 16))(v2, v5, v28[0]);
      v20 = sub_1007A22D4(v9, 0, 0, v22, v2, "Label in Now Playing when scrubbing audiobook at normal speed", 61, 2, v28[0]);
      goto LABEL_10;
    }
  }

  else
  {
    if (!v15)
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v7 + 16))(v9, v12, v6);
      type metadata accessor for BundleFinder();
      v23 = swift_getObjCClassFromMetadata();
      v24 = [objc_opt_self() bundleForClass:v23];
      v19 = v28[0];
      (*(v0 + 16))(v2, v5, v28[0]);
      v20 = sub_1007A22D4(v9, 0, 0, v24, v2, "Label in Now Playing when scrubbing audiobook at high speed", 59, 2, v28[0]);
      goto LABEL_10;
    }

    if (v15 == 1)
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v7 + 16))(v9, v12, v6);
      type metadata accessor for BundleFinder();
      v17 = swift_getObjCClassFromMetadata();
      v18 = [objc_opt_self() bundleForClass:v17];
      v19 = v28[0];
      (*(v0 + 16))(v2, v5, v28[0]);
      v20 = sub_1007A22D4(v9, 0, 0, v18, v2, "Label in Now Playing when scrubbing audiobook at half of the normal speed", 73, 2, v28[0]);
LABEL_10:
      v16 = v20;
      (*(v0 + 8))(v5, v19);
      (*(v7 + 8))(v12, v6);
    }
  }

  return v16;
}

uint64_t sub_10027B878(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_supportedSkipAmounts);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = sub_1007A3BF4();
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v2 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1001F1160(&unk_100AD5090, &unk_100815670);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080EFF0;
  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = a1;
  v10 = sub_100274964();
  v12 = v11;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = sub_10000E4C4();
  *(v9 + 72) = v10;
  *(v9 + 80) = v12;
  return sub_1007A2284();
}

void sub_10027B9A8(unsigned __int8 a1, int a2)
{
  v5 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_downloadState;
  v6 = v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_downloadState];
  v7 = sub_100274880();
  v8 = *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_buyButton];
  v9 = v8;

  if (v8)
  {
  }

  v10 = a1;
  if (v6 == 3)
  {
    v11 = v8 != 0;
    if (a1 != 3)
    {
      goto LABEL_9;
    }

LABEL_8:
    if (((v11 ^ a2) & 1) == 0)
    {
      return;
    }

    goto LABEL_9;
  }

  v11 = v8 != 0;
  if (a1 != 3 && v6 == a1)
  {
    goto LABEL_8;
  }

LABEL_9:
  v2[v5] = a1;
  *(*&v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadState) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 17) = a2 & 1;
  *(v12 + 24) = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v2;
  v14 = objc_opt_self();
  if (v10 == 3)
  {
    v27 = sub_100282AA8;
    v28 = v12;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1003323D0;
    v26 = &unk_100A11C40;
    v15 = _Block_copy(&v23);
    v16 = v2;

    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = sub_100282AB8;
    v17[4] = v13;
    v27 = sub_100282AC4;
    v28 = v17;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10021B6B0;
    v26 = &unk_100A11C90;
    v18 = _Block_copy(&v23);
    v19 = v16;
  }

  else
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    v27 = sub_100282C7C;
    v28 = v20;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_1003323D0;
    v26 = &unk_100A11CE0;
    v15 = _Block_copy(&v23);
    v21 = v2;

    v22 = swift_allocObject();
    v22[2] = sub_100282AA8;
    v22[3] = v12;
    v22[4] = sub_100282AB8;
    v22[5] = v13;
    v27 = sub_100282AD0;
    v28 = v22;
    v23 = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10021B6B0;
    v26 = &unk_100A11D30;
    v18 = _Block_copy(&v23);
  }

  [v14 animateWithDuration:4 delay:v15 options:v18 animations:0.2 completion:0.0];

  _Block_release(v18);
  _Block_release(v15);
}

id sub_10027BD98(unsigned __int8 a1, char a2, uint64_t a3)
{
  v6 = a1;
  v7 = sub_100274880();
  v8 = *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator];

  if (v6 == 3 || (a2 & 1) != 0)
  {
    v13 = 0.0;
LABEL_8:
    [v8 setAlpha:v13];

    v14 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    [*(*(a3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setAlpha:0.0];
    v10 = *(*(a3 + v14) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
    v11 = "setAlpha:";
    v12 = 0.0;
LABEL_9:

    return [v10 v11];
  }

  if (!a1)
  {
    v13 = 1.0;
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    [v8 setAlpha:0.0];

    v9 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    [*(*(a3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setAlpha:0.0];
    v10 = *(*(a3 + v9) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton);
    v11 = "setAlpha:";
    v12 = 1.0;
    goto LABEL_9;
  }

  [v8 setAlpha:0.0];

  v16 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  [*(*(a3 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton) setAlpha:0.0];
  [*(*(a3 + v16) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner) setAlpha:1.0];
  v10 = *(*(a3 + v16) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner);
  v11 = "startAnimating";

  return [v10 v11];
}

void sub_10027BF68(unsigned __int8 a1)
{
  v1 = UIAccessibilityLayoutChangedNotification;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = sub_100274880();
      v3 = v2;
      v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadButton;
    }

    else
    {
      v2 = sub_100274880();
      v3 = v2;
      v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator;
    }

LABEL_7:
    argument = *&v2[*v4];

    UIAccessibilityPostNotification(v1, argument);

    return;
  }

  if (a1 == 2)
  {
    v2 = sub_100274880();
    v3 = v2;
    v4 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadSpinner;
    goto LABEL_7;
  }

  v5 = UIAccessibilityLayoutChangedNotification;

  UIAccessibilityPostNotification(v5, 0);
}

void sub_10027C04C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v17 = sub_100282ADC;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1003323D0;
  v16 = &unk_100A11DF8;
  v9 = _Block_copy(&v13);
  v10 = a2;

  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v17 = sub_10025D774;
  v18 = v11;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10021B6B0;
  v16 = &unk_100A11E48;
  v12 = _Block_copy(&v13);

  [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
  _Block_release(v12);
  _Block_release(v9);
}

void sub_10027C1F0()
{
  v3 = sub_100274880();
  sub_1003980E0();
  v0 = v3;
  v1 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 8];
  if (v1)
  {
    if (v1 != 5 && v1 != 1)
    {
      goto LABEL_9;
    }

    sub_100398C90();
    goto LABEL_8;
  }

  if (v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_lm + 393] == 1)
  {
    sub_100398FDC();
LABEL_8:
    v0 = v3;
  }

LABEL_9:
}

void sub_10027C280(uint64_t a1, uint64_t (*a2)(), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v17 = a2;
  v18 = a3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_1003323D0;
  v16 = &unk_100A11D58;
  v10 = _Block_copy(&v13);

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v17 = sub_100282C90;
  v18 = v11;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10021B6B0;
  v16 = &unk_100A11DA8;
  v12 = _Block_copy(&v13);

  [v9 animateWithDuration:4 delay:v10 options:v12 animations:0.2 completion:0.0];
  _Block_release(v12);
  _Block_release(v10);
}

id sub_10027C404()
{
  v0 = sub_100274880();
  v1 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];

  return v1;
}

void sub_10027C448(uint64_t a1@<X8>)
{
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_overflowButton];

  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = *(*&v1[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer);
  v14 = [v1 view];
  if (v14)
  {
    v15 = v14;
    [v14 convertRect:v13 toCoordinateSpace:{v6, v8, v10, v12}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *a1 = v17;
    *(a1 + 8) = v19;
    *(a1 + 16) = v21;
    *(a1 + 24) = v23;
    *(a1 + 32) = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10027C554(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4, double a5)
{
  v10 = sub_1007A2B44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v5 + *a3);
  v15 = v14[1];
  if (!v15 || ((result = *v14, *v14 == a1) ? (v17 = v15 == a2) : (v17 = 0), !v17 && (result = sub_1007A3AB4(), (result & 1) == 0)))
  {
    *v14 = a1;
    v14[1] = a2;

    (*(v11 + 104))(v13, *a4, v10);

    sub_1007A2B04();
    return (*(v11 + 8))(v13, v10);
  }

  return result;
}

uint64_t sub_10027C6B8()
{
  sub_100007840(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonProvider, &qword_100AD4FA0, &qword_10081F020);
}

void sub_10027C904(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100274880();

    [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView] setImage:v2];
  }
}

void sub_10027C98C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;
    v5 = sub_1002060AC;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1000260E8(v3, v2);
  if (!Strong)
  {
    goto LABEL_7;
  }

  v7 = sub_100274880();

  if (v3)
  {

    v9 = (v5)(v8);
    sub_100399320(v9);

    sub_100007020(v5, v4);
LABEL_7:
    sub_100007020(v5, v4);
    return;
  }

  sub_100399320(0);
}

void sub_10027CAA0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10027CB0C(v2, v3);
  }
}

void sub_10027CB0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_100279D80();
  v6 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_attributionView;
  v7 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_attributionView];
  if (v7)
  {
    [v7 removeFromSuperview];
    v8 = *&v2[v6];
  }

  else
  {
    v8 = 0;
  }

  *&v2[v6] = 0;

  sub_10027955C(a1, a2);
  if (a2)
  {
    sub_100797894();
    v9 = sub_100797874();
    sub_100797834();
    v11 = v10;

    if (v11)
    {
      v12 = sub_100797874();
      v13 = sub_100797854();

      if (v13)
      {
        v14 = v13;
        v15 = [v3 view];
        if (!v15)
        {
          __break(1u);
          return;
        }

        v16 = v15;
        [v15 addSubview:v14];

        [v14 setFrame:{0.0, 0.0, 0.0, 0.0}];
      }

      v17 = *&v3[v6];
      *&v3[v6] = v13;
    }
  }
}

void sub_10027CC84(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100274880();

    v6 = *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];
    [v6 setBufferedValue:v2];
  }
}

void sub_10027CD1C(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*(Strong + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_settingPositionViaScrubber) & 1) == 0)
    {
      v5 = sub_100274880();
      v6 = *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

      *&v7 = v2;
      [v6 setValue:v7];
    }
  }
}

void sub_10027CDCC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100274880();

    v7 = *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_downloadIndicator];
    *&v8 = v2;
    if (v3)
    {
      *&v8 = 1.0;
    }

    [v7 setProgress:v8];
  }
}

void sub_10027CE7C(char *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_10027CFB4();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v10);

    sub_10027AEEC(v3, v10);
    if (v3)
    {
      v6 = sub_100274880();
      v7 = *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

      [v7 setVerticalOffset:-14.0];
    }

    else
    {
      v8 = &v5[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingSpeed];
      *v8 = 0;
      *(v8 + 1) = 0;

      v9 = &v5[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingPosition];
      *v9 = 0;
      *(v9 + 1) = 0;
    }
  }
}

void sub_10027CFB4()
{
  v1 = v0;
  v2 = objc_opt_self();
  [v2 begin];
  [v2 setDisableActions:1];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v37);

  if (LOBYTE(v37) == 1)
  {
    v3 = [objc_opt_self() stringWithDuration:1 explicitPositive:*(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_skipCumulativeDelta)];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1007A2254();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v14 = (v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText);
    *v14 = v5;
    v14[1] = v7;
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v37);

  if (LOBYTE(v37) == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v37);

    v8 = v37;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v37);

    v9 = [objc_opt_self() stringWithDuration:0 explicitPositive:v8 adjustedForRate:*&v37];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1007A2254();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v15 = (v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText);
    *v15 = v11;
    v15[1] = v13;

    if (qword_100AD13F0 != -1)
    {
      swift_once();
    }

    v16 = qword_100B22FF0;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_10079B9A4(&v37);

    v18 = [v17 stringFromTimeInterval:v37];

    if (v18)
    {
      v19 = sub_1007A2254();
      v21 = v20;

      sub_10027C554(v19, v21, &OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_lastAccessibilityAnnouncedScrubbingPosition, &enum case for UIAccessibility.BooksAccessibilityAnnouncementIdentifier.scrubbingPositionChanged(_:), 0.25);
LABEL_14:
    }
  }

  v22 = v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText;
  v23 = *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText + 8);
  if (v23)
  {
    v37 = *v22;
    v38 = v23;
    sub_1002060B4();

    if (sub_1007A28A4())
    {
      v24 = sub_100274880();
      v25 = *&v24[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

      v26 = sub_1007A2214();

      [v25 setTitle:v26];
    }

    else
    {
    }
  }

  v27 = sub_100274880();
  v28 = *&v27[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v28 sizeToFit];
  v29 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
  v30 = *(*(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack);
  swift_getKeyPath();
  swift_getKeyPath();
  v31 = v30;
  sub_10079B9A4(&v37);

  HIDWORD(v32) = HIDWORD(v37);
  *&v32 = v37;
  [v31 setValue:v32];

  [v2 commit];
  v33 = *(v22 + 8);
  if (v33)
  {
    v37 = *v22;
    v38 = v33;
    sub_1002060B4();
    v34 = sub_1007A28A4();
  }

  else
  {
    v34 = 0;
  }

  [*(*(v1 + v29) + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack) alpha];
  if (((v34 ^ (v35 == 0.0)) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v37);

    *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v37;
    v36 = 0.0;
    if (v34)
    {
      v36 = 1.0;
    }

    sub_10027F494(v36);
  }
}

void sub_10027D568(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10027CFB4();
    if (v2)
    {
      v5 = sub_100274880();
      v6 = *&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

      [v6 setVerticalOffset:0.0];
    }
  }
}

void sub_10027D608(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_allocWithZone(NSNumber) initWithDouble:v2];
    }

    v7 = sub_100274880();
    v8 = *&v7[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

    [v8 setSessionIndicatorValue:v6];
  }
}

void sub_10027D6DC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100274880();

    v6 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_pauseImage;
    if (!v2)
    {
      v6 = &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playImage;
    }

    [*&v5[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView__playPause] setBackgroundImage:*&v5[*v6] forState:0];
  }
}

void sub_10027D780(long double *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id))
{
  v8 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_10027A268(a3, a4, a5, v8);
  }
}

void sub_10027D804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v6);

    v5 = v6 - *&v4[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v6);

    if (LOBYTE(v6) == 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10079B9A4(&v6);

      if (v6 != 0.0)
      {
        v5 = v6 * round(v5 / v6);
      }
    }

    *&v4[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_skipCumulativeDelta] = v5;
    sub_10027CFB4();
    sub_10027D9A4();
  }
}

void sub_10027D9A4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText + 8);
  if (v2)
  {
    v9[0] = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText);
    v9[1] = v2;
    sub_1002060B4();
    v3 = sub_1007A28A4();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_100274880();
  v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v5 alpha];
  v7 = v6;

  if (((v3 ^ (v7 == 0.0)) & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v9);

    *(v1 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v9[0];
    v8 = 0.0;
    if (v3)
    {
      v8 = 1.0;
    }

    sub_10027F494(v8);
  }

  sub_10027EBF0();
}

void sub_10027DAF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100274880();

    v5 = *&v4[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];
    sub_1001F1160(&qword_100AD7EA0, &qword_10080F058);
    sub_100005920(&qword_100AD7EA8, &qword_100AD7EA0, &qword_10080F058, &protocol conformance descriptor for [A]);
    v6 = sub_1007A28A4();
    v7 = v5[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent];
    v5[OBJC_IVAR____TtC5Books28AudiobookNowPlayingTOCButton_hasSupplementalContent] = v6 & 1;
    if ((v6 & 1) != v7)
    {
      sub_1002AD1E0();
    }
  }
}

void sub_10027DC00(float *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100274880();
    v7 = *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed];

    sub_100201F60(v3);
    v8 = sub_1007A2214();

    [v7 setTitle:v8 forState:0];

    v9 = *(*&v5[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_playbackSpeed);
    sub_100202090(v3);
    v10 = sub_1007A2214();

    [v9 setAccessibilityValue:v10];

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v11);

    LOBYTE(v9) = v11[0];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(v11);

    sub_10027AEEC(v9, v11[0]);
  }
}

void sub_10027DDBC(unsigned __int8 a1, unsigned __int8 a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_100274880();
    v13 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView;
    v14 = *(*&v11[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_played);
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 stringWithDuration:0 explicitPositive:a5];
    if (v17)
    {
      v18 = v17;
      [v16 setText:v17];

      if (qword_100AD13F0 != -1)
      {
        swift_once();
      }

      v19 = [qword_100B22FF0 stringFromTimeInterval:fabs(round(a5))];
      [v16 setAccessibilityValue:v19];

      v20 = *&v11[v13];
      v21 = *&v20[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_toPlay];
      v22 = v20;
      v23 = [v15 stringWithDuration:0 explicitPositive:a6];
      if (v23)
      {
        v24 = v23;
        [v21 setText:v23];

        v25 = [qword_100B22FF0 stringFromTimeInterval:fabs(round(a6))];
        [v21 setAccessibilityValue:v25];

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4(v26);

        LOBYTE(v25) = v26[0];
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4(v26);

        sub_10027AEEC(v25, v26[0]);
        sub_10027AC7C((a1 | a2) & 1);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10027E090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (a7)
    {
    }

    else
    {
      if ([*(Strong + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) audiobookTimeRemainingMode])
      {
LABEL_7:
        v18 = sub_100274880();
        v19 = *&v18[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_tocButton];

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10079B9A4(&v20);

        [v19 setEnabled:(v20 & 1) == 0];

        return;
      }

      a3 = sub_1002034C8();
      a4 = v17;
      a1 = a5;
      a2 = a6;
    }

    sub_10027AD7C(a1, a2, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_primaryTitleLabel);
    sub_10027AD7C(a3, a4, &OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleLabel);

    goto LABEL_7;
  }
}

void sub_10027E250(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 == 7 || !a1)
  {
    a3 = 0.0;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100274880();

    v7 = OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton;
    [*&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_sleepButton] intrinsicContentSize];
    v9 = v8;
    v11 = v10;
    sub_1003AA458(a3);
    [*&v6[v7] intrinsicContentSize];
    v15.width = v12;
    v15.height = v13;
    v14.width = v9;
    v14.height = v11;
    if (!CGSizeEqualToSize(v14, v15))
    {
      [v6 setNeedsLayout];
    }
  }
}

void sub_10027E33C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10027A3E4(a1);
  }
}

void sub_10027E398(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10027B9A8(a1, *(a2 + 24) != 0);
    sub_10027E414(a2);
  }
}

id sub_10027E414(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1001F1160(&qword_100AD8378, &qword_10081F220);
  __chkstk_darwin(v4);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v51 - v8);
  v10 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonViewController;
  v11 = *&v2[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonViewController];
  if (v11)
  {
    v12 = v11;
    [v12 willMoveToParentViewController:0];
    [v12 removeFromParentViewController];
    result = [v12 view];
    if (!result)
    {
      __break(1u);
LABEL_10:
      __break(1u);
      return result;
    }

    v14 = result;
    [result removeFromSuperview];

    [v12 didMoveToParentViewController:0];
  }

  v15 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_buyButtonProvider;
  swift_beginAccess();
  sub_100282A38(a1, &v2[v15]);
  swift_endAccess();
  sub_1000077D8(a1, &v57, &qword_100AD4FA0, &qword_10081F020);
  if (v58)
  {
    sub_1000077C0(&v57, v59);
    v16 = sub_10000E3E8(v59, v60);
    sub_100281D84(*v16);
    v17 = sub_10000E3E8(v59, v60);
    v56 = sub_100221B70(v17, v18);
    KeyPath = swift_getKeyPath();
    v51 = objc_opt_self();
    v19 = [v51 bc_nowPlayingVibrantQuaternary];
    v52 = sub_10079DEA4();
    v20 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v21 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v53 = v6;
    v22 = v21;
    v23 = (v9 + *(v4 + 36));
    v24 = *(sub_1001F1160(&qword_100AD8380, &unk_10081F250) + 28);
    v55 = v10;
    v25 = v23 + v24;
    v26 = *(type metadata accessor for BuyButtonView.Style(0) + 44);
    v27 = enum case for BlendMode.plusLighter(_:);
    v28 = sub_10079E534();
    v29 = v2;
    v30 = v9;
    v31 = *(v28 - 8);
    (*(v31 + 104))(&v25[v26], v27, v28);
    (*(v31 + 56))(&v25[v26], 0, 1, v28);
    *v25 = v22;
    __asm { FMOV            V0.2D, #1.0 }

    *(v25 + 8) = _Q0;
    *(v25 + 3) = v22;
    *(v25 + 2) = xmmword_100815050;
    v37 = v52;
    v38 = v53;
    *(v25 + 6) = v20;
    *(v25 + 7) = v37;
    *(v25 + 8) = v20;
    *(v25 + 9) = v37;
    *(v25 + 5) = 0u;
    *(v25 + 6) = 0u;
    *(v25 + 7) = 0u;
    *v23 = KeyPath;
    *v30 = v56;
    sub_1000077D8(v30, v38, &qword_100AD8378, &qword_10081F220);
    v39 = objc_allocWithZone(sub_1001F1160(&qword_100AD8388, &qword_100815530));

    v40 = sub_10079CBC4();
    sub_10079CB94();
    v41 = v55;
    v42 = *&v29[v55];
    *&v29[v55] = v40;
    v43 = v40;

    sub_10000E3E8(v59, v60);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_100392FC4();
    v44 = swift_unknownObjectRelease();
    sub_1005353C0(v44, v45);
    sub_100535160();
    swift_unknownObjectRelease();
    [v43 willMoveToParentViewController:v29];
    [v29 addChildViewController:v43];
    v46 = *&v29[v41];
    *&v29[v41] = v40;

    result = [v43 view];
    if (result)
    {
      v47 = result;
      v48 = [v51 clearColor];
      [v47 setBackgroundColor:v48];

      v49 = sub_100274880();
      v50 = [v43 view];

      sub_10039FA54(v50);
      [v43 didMoveToParentViewController:v29];

      sub_100007840(v30, &qword_100AD8378, &qword_10081F220);
      return sub_1000074E0(v59);
    }

    goto LABEL_10;
  }

  return sub_100007840(&v57, &qword_100AD4FA0, &qword_10081F020);
}

void sub_10027E93C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:a2 animated:1 completion:0];
  }
}

double AudiobookNowPlayingFullscreenTouchViewController.durationOfCurrentChapter.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v2);

  v0 = fabs(v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v2);

  return v0 + v2;
}

void sub_10027EA84(uint64_t a1, void *a2)
{
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v3 = sub_10079ACE4();
  sub_100008B98(v3, qword_100AD7F90);
  v4 = a2;
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v8);

    *(v7 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v5, v6, "current media time: %f", v7, 0xCu);
  }

  sub_10027CFB4();
}

void sub_10027EBF0()
{
  v1 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer;
  v2 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudDisappearTimer);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:"fadeOutHUD:" selector:0 userInfo:0 repeats:1.0];
  v4 = *(v0 + v1);
  *(v0 + v1) = v3;
}

UIImage_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.transitionCurrentCoverImage()()
{
  v0 = sub_100274880();
  v1 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  v2 = [v1 image];
  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

double AudiobookNowPlayingFullscreenTouchViewController.transitionCoverFrame()()
{
  v1 = sub_100274880();
  v2 = *&v1[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  v3 = v2;
  v4 = [v3 superview];
  if (v4)
  {
    v5 = v4;
    v6 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
    [v3 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v15 = v5;
    [v6 convertRect:v15 fromCoordinateSpace:{v8, v10, v12, v14}];
    v17 = v16;
  }

  else
  {

    if (qword_100AD1350 != -1)
    {
      swift_once();
    }

    v18 = sub_10079ACE4();
    sub_100008B98(v18, qword_100AD7F90);
    v19 = sub_10079ACC4();
    v20 = sub_1007A29B4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "artworkImageView not set up correctly, can't calculate transition cover frame", v21, 2u);
    }

    return 0.0;
  }

  return v17;
}

UIImageView_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.transitionBackgroundImageView()()
{
  v0 = sub_100274880();
  v1 = sub_100395DD8();

  v3 = v1;
  result.value.super.super.super.isa = v3;
  result.is_nil = v2;
  return result;
}

uint64_t AudiobookNowPlayingFullscreenTouchViewController.transitionControlsViews()()
{
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100815060;
  v2 = sub_100274880();
  v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  *(v1 + 56) = sub_10000A7C4(0, &unk_100AD7FC0, off_1009F85D0);
  v4 = *(v0 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView);
  *(v1 + 32) = v3;
  v5 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_titlesContainer);
  *(v1 + 88) = type metadata accessor for ConstraintsDisabledView();
  *(v1 + 64) = v5;
  v6 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_transportContainer);
  *(v1 + 120) = type metadata accessor for TransportContainer();
  *(v1 + 96) = v6;
  v7 = *(v4 + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_bottomToolbarContainer);
  *(v1 + 152) = sub_10000A7C4(0, &qword_100AD7620, UIView_ptr);
  *(v1 + 128) = v7;
  v8 = v5;
  v9 = v6;
  v10 = v7;
  return v1;
}

uint64_t sub_10027F210(void *a1, unint64_t *a2, void *a3)
{
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10080B690;
  v7 = sub_100274880();
  v8 = *&v7[*a1];

  *(v6 + 56) = sub_10000A7C4(0, a2, a3);
  *(v6 + 32) = v8;
  return v6;
}

Class sub_10027F2CC(void *a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10080B690;
  v10 = a1;
  v11 = sub_100274880();
  v12 = *&v11[*a3];

  *(v9 + 56) = sub_10000A7C4(0, a4, a5);
  *(v9 + 32) = v12;

  v13.super.isa = sub_1007A25D4().super.isa;

  return v13.super.isa;
}

UIView_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.transitionCoverImagePlayControl()()
{
  v0 = sub_100274880();
  v1 = *&v0[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_artworkImageView];

  v3 = v1;
  result.value.super.super.isa = v3;
  result.is_nil = v2;
  return result;
}

void sub_10027F494(double a1)
{
  v3 = sub_100274880();
  v4 = *&v3[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v4 alpha];
  v6 = v5;

  if (v6 != a1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = a1;
    v18 = sub_100282810;
    v19 = v8;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_1003323D0;
    v17 = &unk_100A119E8;
    v9 = _Block_copy(&v14);
    v10 = v1;

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    *(v12 + 24) = v11;
    v18 = sub_10028281C;
    v19 = v12;
    v14 = _NSConcreteStackBlock;
    v15 = 1107296256;
    v16 = sub_10021B6B0;
    v17 = &unk_100A11A38;
    v13 = _Block_copy(&v14);

    [v7 animateWithDuration:4 delay:v9 options:v13 animations:0.2 completion:0.0];
    _Block_release(v13);
    _Block_release(v9);
  }
}

void sub_10027F690(double a1)
{
  v2 = sub_100274880();
  v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v3 setAlpha:a1];
}

void sub_10027F710(char a1, uint64_t a2, double a3)
{
  if (fabs(a3) < 0.00999999978)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      if ((a1 & 1) != 0 && (v6 = sub_100274880(), v7 = *&v6[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack], v6, [v7 alpha], v9 = v8, v7, fabs(v9) < 0.00999999978) && (swift_getKeyPath(), swift_getKeyPath(), sub_10079B9A4(&v10), , , (v10 & 1) == 0))
      {
        [*(*&v5[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController____lazy_storage___nowPlayingView] + OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack) setVerticalOffset:0.0];
        *&v5[OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudText] = xmmword_100815070;
      }

      else
      {
      }
    }
  }
}

id AudiobookNowPlayingFullscreenTouchViewController.beginTracking(_:)(uint64_t a1)
{
  v2 = v1;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AD7F90);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "begin scrubbing", v7, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v15);

  *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_wasPlaying) = v15;
  [*(v2 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler) setIsScrubbing:1];
  v8 = sub_100274880();
  v9 = *&v8[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v9 setVerticalOffset:-14.0];
  v10 = OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior;
  v11 = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior);
  if (v11)
  {
    [v11 deactivate];
  }

  v12 = [objc_allocWithZone(UIImpactFeedbackGenerator) initWithStyle:1 coordinateSpace:a1];
  v13 = *(v2 + v10);
  *(v2 + v10) = v12;

  result = *(v2 + v10);
  if (result)
  {
    return [result activateWithCompletionBlock:0];
  }

  return result;
}

id AudiobookNowPlayingFullscreenTouchViewController.fineScrubSpeedChanged(_:)(void *a1)
{
  v2 = v1;
  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v4 = sub_10079ACE4();
  sub_100008B98(v4, qword_100AD7F90);
  v5 = sub_10079ACC4();
  v6 = sub_1007A29D4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "scrubber moved", v7, 2u);
  }

  v8 = [a1 speed];
  v9 = sub_100274880();
  v10 = *&v9[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_hudTrack];

  [v10 alpha];
  v12 = v11;

  if (v8)
  {
    if (v12 == 0.0)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v16);

    v13 = v16;
    v14 = 0.0;
  }

  else
  {
    if (v12 != 0.0)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_10079B9A4(&v16);

    v13 = v16;
    v14 = 1.0;
  }

  *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_hudAppearanceTime) = v13;
  sub_10027F494(v14);
LABEL_11:
  result = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingFullscreenTouchViewController_scrubberImpactBehavior);
  if (result)
  {
    return [result _impactOccurredWithIntensity:1.0];
  }

  return result;
}

BOOL AudiobookNowPlayingFullscreenTouchViewController.sliderIsProgressSlider(_:)(uint64_t a1)
{
  v2 = sub_100274880();
  v3 = *&v2[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_progressSlider];

  return v3 == a1;
}

double AudiobookNowPlayingFullscreenTouchViewController.playedInterval.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v1);

  return v1;
}

Swift::Void (__swiftcall *AudiobookNowPlayingFullscreenTouchViewController.playedInterval.modify(void *a1))()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(a1 + 1);

  *a1 = a1[1];
  return BKAppDelegate.enableMetricsInspectorOnDebugMode();
}

Swift::Void (__swiftcall *AudiobookNowPlayingFullscreenTouchViewController.durationOfCurrentChapter.modify(uint64_t a1))()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4((a1 + 8));

  v2 = fabs(*(a1 + 8));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4((a1 + 8));

  *a1 = v2 + *(a1 + 8);
  return BKAppDelegate.enableMetricsInspectorOnDebugMode();
}

Swift::Void __swiftcall AudiobookNowPlayingFullscreenTouchViewController.didTapSessionIndicator(_:)(BKScrubberSlider *a1)
{
  v2 = v1;
  v3 = [(BKScrubberSlider *)a1 sessionIndicatorValue];
  if (v3)
  {
    v4 = v3;
    [(NSNumber *)v3 floatValue];
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  if (qword_100AD1350 != -1)
  {
    swift_once();
  }

  v7 = sub_10079ACE4();
  sub_100008B98(v7, qword_100AD7F90);
  v8 = sub_10079ACC4();
  v9 = sub_1007A29D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6;
    _os_log_impl(&_mh_execute_header, v8, v9, "Audiobook bookmark tapped value: %f", v10, 0xCu);
  }

  v11 = *(v2 + OBJC_IVAR___BKAudiobookNowPlayingTouchViewController_eventHandler);
  *&v12 = v6;

  [v11 scrubTo:0 completion:v12];
}

Swift::String_optional __swiftcall AudiobookNowPlayingFullscreenTouchViewController.accessibleDescriptionOfSessionIndicatorPosition()()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v11);

  if (v12)
  {
    goto LABEL_6;
  }

  v0 = v11;
  if (qword_100AD13F0 != -1)
  {
    swift_once();
  }

  v1 = qword_100B22FF0;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_10079B9A4(&v11);

  v3 = fabs(v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10079B9A4(&v11);

  v4 = [v2 stringFromTimeInterval:v0 * (v3 + v11)];

  if (!v4)
  {
LABEL_6:
    v9 = 0;
    v8 = 0;
  }

  else
  {
    v5 = sub_1007A2254();
    v7 = v6;

    v8 = v7;
    v9 = v5;
  }

  result.value._object = v8;
  result.value._countAndFlagsBits = v9;
  return result;
}

double AudiobookNowPlayingFullscreenTouchViewController.alternateAccessibilityFrame(for:)(void *a1)
{
  [a1 bkaxDefaultAccessibilityFrame];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_100274880();
  v10 = *&v9[OBJC_IVAR____TtC5Books38AudiobookNowPlayingFullscreenTouchView_secondaryTitleMarqueeView];

  [v10 accessibilityFrame];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v21.origin.x = v12;
  v21.origin.y = v14;
  v21.size.width = v16;
  v21.size.height = v18;
  CGRectGetMaxY(v21);
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  CGRectGetMinY(v22);
  v23.origin.x = v2;
  v23.origin.y = v4;
  v23.size.width = v6;
  v23.size.height = v8;
  CGRectGetHeight(v23);
  v24.origin.x = v2;
  v24.origin.y = v4;
  v24.size.width = v6;
  v24.size.height = v8;
  CGRectGetMinY(v24);
  v25.origin.x = v2;
  v25.origin.y = v4;
  v25.size.width = v6;
  v25.size.height = v8;
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v2;
  v26.origin.y = v4;
  v26.size.width = v6;
  v26.size.height = v8;
  CGRectGetWidth(v26);
  return MinX;
}