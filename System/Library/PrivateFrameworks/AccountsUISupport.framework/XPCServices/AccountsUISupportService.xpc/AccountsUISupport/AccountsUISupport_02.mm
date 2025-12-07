uint64_t sub_100022A64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Request.HeaderField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Request.HeaderField(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100022C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100022CE4()
{
  result = qword_100054FF8;
  if (!qword_100054FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100054FF8);
  }

  return result;
}

unint64_t sub_100022D38()
{
  result = qword_100055000;
  if (!qword_100055000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055000);
  }

  return result;
}

uint64_t sub_100022D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003288(qword_100055008, &unk_100045300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 Resource.init<A>(request:decoder:transform:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v17 = *(a1 + 80);
  *(a8 + 64) = *(a1 + 64);
  *(a8 + 80) = v17;
  v18 = *(a1 + 96);
  v19 = *(a1 + 16);
  *a8 = *a1;
  *(a8 + 16) = v19;
  result = *(a1 + 48);
  *(a8 + 32) = *(a1 + 32);
  *(a8 + 48) = result;
  *(a8 + 96) = v18;
  *(a8 + 104) = sub_100023190;
  *(a8 + 112) = v16;
  return result;
}

uint64_t Resource.parse.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t Resource.parse.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

__n128 Resource.init(request:parse:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v4;
  v5 = *(a1 + 96);
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 96) = v5;
  *(a4 + 104) = a2;
  *(a4 + 112) = a3;
  return result;
}

uint64_t sub_100022F70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, char *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = a5;
  v21 = *(a8 - 8);
  v22 = a6;
  v12 = __chkstk_darwin(a1);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v12 statusCode] < 200 || objc_msgSend(a1, "statusCode") > 299)
  {
    v15 = [a1 statusCode];
    v16 = 0;
    v17 = 1;
LABEL_4:
    sub_100009B58();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v16;
    *(v18 + 16) = v17;
    return swift_willThrow();
  }

  if (!NSHTTPURLResponse.contentTypeConformsTo(_:)(AccountsUISupportServiceLib_ContentType_json))
  {
    v15 = NSHTTPURLResponse.subscript.getter(3u);
    v16 = v20;
    v17 = 0;
    goto LABEL_4;
  }

  result = sub_100041B04();
  if (!v9)
  {
    v23(a1, v14);
    return (*(v21 + 8))(v14, a8);
  }

  return result;
}

uint64_t sub_100023150()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100023258(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100023284(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1000232CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100023394(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_100003288(&qword_100054958, &qword_100043920);
  v3[28] = swift_task_alloc();
  v4 = sub_100041D04();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = sub_100041AD4();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000234EC, 0, 0);
}

uint64_t sub_1000234EC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000A744(*(v0 + 208), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 216) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 232));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 224), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 224), *(v0 + 232));
  }

  v10 = *(v0 + 272);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 200);
  v16 = *(v14 + 16);
  v15 = *(v14 + 32);
  *(v0 + 16) = *v14;
  *(v0 + 32) = v16;
  *(v0 + 48) = v15;
  v18 = *(v14 + 64);
  v17 = *(v14 + 80);
  v19 = *(v14 + 48);
  *(v0 + 112) = *(v14 + 96);
  *(v0 + 80) = v18;
  *(v0 + 96) = v17;
  *(v0 + 64) = v19;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v20 = type metadata accessor for DelegateHelper();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v22 = &v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v23 = *(v0 + 136);
  *v22 = *(v0 + 120);
  v22[1] = v23;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v21;
  *(v0 + 192) = v20;
  v24 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 280) = v24;
  v25 = swift_task_alloc();
  *(v0 + 288) = v25;
  *v25 = v0;
  v25[1] = sub_10002375C;
  v26 = *(v0 + 272);

  return NSURLSession.data(for:delegate:)(v26, v24);
}

uint64_t sub_10002375C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[37] = a1;
  v5[38] = a2;
  v5[39] = a3;
  v5[40] = v3;

  if (v3)
  {
    v6 = sub_1000239F0;
  }

  else
  {
    v6 = sub_100023874;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100023874()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = *(v0[25] + 104);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v2;
  v5(v6, v4, v3);
  v8 = v0[38];
  v9 = v0[39];
  v10 = v0[37];
  v11 = v0[35];
  v12 = v0[33];
  if (v1)
  {
    (*(v12 + 8))(v0[34], v0[32]);
  }

  else
  {
    (*(v12 + 8))();
  }

  sub_100004F50(v10, v8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000239F0()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100023A98(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  sub_100003288(&qword_100054958, &qword_100043920);
  v3[28] = swift_task_alloc();
  v4 = sub_100041D04();
  v3[29] = v4;
  v3[30] = *(v4 - 8);
  v3[31] = swift_task_alloc();
  v5 = sub_100041AD4();
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_100023BF0, 0, 0);
}

uint64_t sub_100023BF0()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  sub_10000A744(*(v0 + 208), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v9 = *(v0 + 224);
  v8 = *(v0 + 232);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 216) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 232));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 224), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 224), *(v0 + 232));
  }

  v10 = *(v0 + 272);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v13 = *(v0 + 232);
  v14 = *(v0 + 200);
  v16 = *(v14 + 16);
  v15 = *(v14 + 32);
  *(v0 + 16) = *v14;
  *(v0 + 32) = v16;
  *(v0 + 48) = v15;
  v18 = *(v14 + 64);
  v17 = *(v14 + 80);
  v19 = *(v14 + 48);
  *(v0 + 112) = *(v14 + 96);
  *(v0 + 80) = v18;
  *(v0 + 96) = v17;
  *(v0 + 64) = v19;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v20 = type metadata accessor for DelegateHelper();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v22 = &v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v23 = *(v0 + 136);
  *v22 = *(v0 + 120);
  v22[1] = v23;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v21;
  *(v0 + 192) = v20;
  v24 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 280) = v24;
  v25 = swift_task_alloc();
  *(v0 + 288) = v25;
  *v25 = v0;
  v25[1] = sub_100023E60;
  v26 = *(v0 + 272);

  return NSURLSession.data(for:delegate:)(v26, v24);
}

uint64_t sub_100023E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[37] = a1;
  v5[38] = a2;
  v5[39] = a3;
  v5[40] = v3;

  if (v3)
  {
    v6 = sub_1000239F0;
  }

  else
  {
    v6 = sub_100023F78;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100023F78()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v4 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(*(v0 + 200) + 104);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v2;
  v5(v6, v4, v3);
  v8 = *(v0 + 304);
  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  v11 = *(v0 + 280);
  v12 = *(v0 + 264);
  if (v1)
  {
    (*(v12 + 8))(*(v0 + 272), *(v0 + 256));

    sub_100004F50(v10, v8);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    (*(v12 + 8))();

    sub_100004F50(v10, v8);
    v15 = *(v0 + 328);

    v16 = *(v0 + 8);

    return v16(v15);
  }
}

uint64_t sub_100024130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  sub_100003288(&qword_100054958, &qword_100043920);
  v4[29] = swift_task_alloc();
  v5 = sub_100041D04();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = sub_100041AD4();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_100024288, 0, 0);
}

uint64_t sub_100024288()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_10000A744(*(v0 + 216), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 224) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 240));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 232), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 232), *(v0 + 240));
  }

  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = *(v0 + 208);
  v16 = *(v14 + 16);
  v15 = *(v14 + 32);
  *(v0 + 16) = *v14;
  *(v0 + 32) = v16;
  *(v0 + 48) = v15;
  v18 = *(v14 + 64);
  v17 = *(v14 + 80);
  v19 = *(v14 + 48);
  *(v0 + 112) = *(v14 + 96);
  *(v0 + 80) = v18;
  *(v0 + 96) = v17;
  *(v0 + 64) = v19;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v20 = type metadata accessor for DelegateHelper();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v22 = &v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v23 = *(v0 + 136);
  *v22 = *(v0 + 120);
  v22[1] = v23;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v21;
  *(v0 + 192) = v20;
  v24 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 288) = v24;
  v25 = swift_task_alloc();
  *(v0 + 296) = v25;
  *v25 = v0;
  v25[1] = sub_1000244F8;
  v26 = *(v0 + 280);

  return NSURLSession.data(for:delegate:)(v26, v24);
}

uint64_t sub_1000244F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {
    v6 = sub_100024798;
  }

  else
  {
    v6 = sub_100024610;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100024610()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = *(v0[26] + 104);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v2;
  v5(v6, v4, v3);
  v8 = v0[39];
  v9 = v0[40];
  v10 = v0[38];
  v11 = v0[36];
  v12 = v0[34];
  if (v1)
  {
    (*(v12 + 8))(v0[35], v0[33]);
  }

  else
  {
    (*(v12 + 8))();
  }

  sub_100004F50(v10, v8);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100024798()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 272);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100024840(uint64_t a1, uint64_t a2)
{
  v3[27] = a2;
  v3[28] = v2;
  v3[26] = a1;
  sub_100003288(&qword_100054958, &qword_100043920);
  v3[29] = swift_task_alloc();
  v4 = sub_100041D04();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();
  v5 = sub_100041AD4();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();

  return _swift_task_switch(sub_100024998, 0, 0);
}

uint64_t sub_100024998()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_10000A744(*(v0 + 216), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 224) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 240));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000A800(*(v0 + 232), &qword_100054958, &qword_100043920);
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 232), *(v0 + 240));
  }

  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = *(v0 + 208);
  v16 = *(v14 + 16);
  v15 = *(v14 + 32);
  *(v0 + 16) = *v14;
  *(v0 + 32) = v16;
  *(v0 + 48) = v15;
  v18 = *(v14 + 64);
  v17 = *(v14 + 80);
  v19 = *(v14 + 48);
  *(v0 + 112) = *(v14 + 96);
  *(v0 + 80) = v18;
  *(v0 + 96) = v17;
  *(v0 + 64) = v19;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v20 = type metadata accessor for DelegateHelper();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v22 = &v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v23 = *(v0 + 136);
  *v22 = *(v0 + 120);
  v22[1] = v23;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v21;
  *(v0 + 192) = v20;
  v24 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 288) = v24;
  v25 = swift_task_alloc();
  *(v0 + 296) = v25;
  *v25 = v0;
  v25[1] = sub_100024C08;
  v26 = *(v0 + 280);

  return NSURLSession.data(for:delegate:)(v26, v24);
}

uint64_t sub_100024C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[38] = a1;
  v5[39] = a2;
  v5[40] = a3;
  v5[41] = v3;

  if (v3)
  {
    v6 = sub_100024798;
  }

  else
  {
    v6 = sub_100024D20;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100024D20()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = *(v0[26] + 104);
  objc_opt_self();
  v6 = swift_dynamicCastObjCClassUnconditional();
  v7 = v2;
  v5(v6, v4, v3);
  v8 = v0[39];
  v9 = v0[40];
  v10 = v0[38];
  v11 = v0[36];
  v12 = v0[34];
  if (v1)
  {
    (*(v12 + 8))(v0[35], v0[33]);

    sub_100004F50(v10, v8);

    v13 = v0[1];

    return v13();
  }

  else
  {
    (*(v12 + 8))();

    sub_100004F50(v10, v8);
    v15 = v0[25];

    v16 = v0[1];

    return v16(v15);
  }
}

void sub_100024ED8(uint64_t *a1, uint64_t a2)
{
  v72 = a2;
  v101 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v105 = *(v101 - 8);
  __chkstk_darwin(v101);
  v96 = &v67 - v3;
  v91 = sub_1000423E4();
  v93 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v67 - v9;
  v11 = sub_100042114();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003288(&qword_100055300, &qword_100045C08);
  v15 = __chkstk_darwin(v14 - 8);
  v85 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v67 - v17;
  v110 = _swiftEmptyArrayStorage;
  sub_1000130A4(0, 0, 0);
  *&v78 = v110;
  v19 = *a1;
  v20 = a1;
  v94 = a1[1];
  v21 = *(v19 + 64);
  v82 = v19 + 64;
  v115 = v19;
  v92 = v19;
  v22 = -1 << *(v19 + 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v25 = a1[2];
  v26 = v20[4];
  v75 = v20[3];
  sub_10000A744(&v115, &v111, &qword_100055320, &unk_100045C48);
  v80 = v12 + 16;
  v84 = (v12 + 56);
  v83 = (v12 + 48);
  v77 = v22;
  v27 = (63 - v22) >> 6;
  v99 = (v105 + 56);
  v87 = v93 + 16;
  v86 = v93 + 32;
  v98 = (v105 + 48);
  v74 = (v12 + 32);
  v81 = v12;
  v73 = (v12 + 8);
  v28 = v18;
  v100 = v25;

  v79 = v26;

  v29 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v30 = 0;
  v89 = v8;
  v88 = v10;
  v97 = v11;
  for (i = v28; ; v28 = i)
  {
    while (1)
    {
      v104 = v29;
      if (!v29)
      {
        break;
      }

      v31 = *(v29 + 16);
      if (v105 == v31)
      {
        v32 = 1;
      }

      else
      {
        if (v105 >= v31)
        {
          goto LABEL_35;
        }

        v33 = v29 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v34 = v105;
        (*(v81 + 16))(v28, v33 + *(v81 + 72) * v105, v11);
        v32 = 0;
        v105 = v34 + 1;
      }

      (*v84)(v28, v32, 1, v11);
      v35 = v85;
      sub_100031250(v28, v85, &qword_100055300, &qword_100045C08);
      if ((*v83)(v35, 1, v11) == 1)
      {
        break;
      }

      v52 = v76;
      (*v74)(v76, v85, v11);
      v103(&v106, v52);
      (*v73)(v52, v11);
      v53 = v107;
      v71 = v106;
      v109[0] = v106;
      v109[1] = v107;
      if (v75(v109))
      {

        v54 = sub_100042614();
        v70 = v53;
        if (v54)
        {
          v55 = v53;
          v56 = v54;
          v57 = sub_10002FC54(v54, 0);

          v69 = sub_10002F980(&v106, (v57 + 4), v56, v71, v55);

          if (v69 != v56)
          {
            goto LABEL_36;
          }
        }

        else
        {

          v57 = _swiftEmptyArrayStorage;
        }

        sub_10001CF9C(v57, v72, &v111);
        v58 = v111;
        v59 = v112;
        v60 = v113;
        v61 = v114;
        v62 = v78;
        v110 = v78;
        v64 = *(v78 + 16);
        v63 = *(v78 + 24);
        if (v64 >= v63 >> 1)
        {
          v78 = v111;
          v69 = v112;
          v68 = v113;
          v67 = v114;
          sub_1000130A4((v63 > 1), v64 + 1, 1);
          v61 = v67;
          v60 = v68;
          v59 = v69;
          v58 = v78;
          v62 = v110;
        }

        v62[2] = v64 + 1;
        *&v78 = v62;
        v65 = &v62[7 * v64];
        *(v65 + 2) = v58;
        v65[6] = v59;
        v65[7] = v60;
        v66 = v71;
        v65[8] = v61;
        v65[9] = v66;
        v65[10] = v70;
        v11 = v97;
        v29 = v104;
      }

      else
      {

        v29 = v104;
      }
    }

    if (!v24)
    {
      break;
    }

    v36 = v30;
LABEL_20:
    v39 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v40 = v39 | (v36 << 6);
    v41 = v92;
    v42 = v93;
    v43 = v90;
    v44 = v91;
    (*(v93 + 16))(v90, *(v92 + 48) + *(v93 + 72) * v40, v91);
    v45 = *(*(v41 + 56) + 8 * v40);
    v46 = v101;
    v47 = *(v101 + 48);
    v48 = *(v42 + 32);
    v10 = v88;
    v48(v88, v43, v44);
    *&v10[v47] = v45;
    (*v99)(v10, 0, 1, v46);

    v38 = v36;
    v8 = v89;
LABEL_21:
    sub_100031250(v10, v8, &qword_100054DE0, &qword_100045C40);
    if ((*v98)(v8, 1, v46) == 1)
    {
      sub_100031208(v92);

      sub_100031210(v104, v105, v103, v102);

      return;
    }

    v49 = v96;
    sub_100031250(v8, v96, &qword_100054DD0, &unk_1000452F0);
    v94(&v106, v49);
    sub_10000A800(v49, &qword_100054DD0, &unk_1000452F0);
    v29 = v106;
    v50 = v107;
    v51 = v108;
    sub_100031210(v104, v105, v103, v102);
    v105 = 0;
    v102 = v51;
    v103 = v50;
    v30 = v38;
    v11 = v97;
  }

  if (v27 <= v30 + 1)
  {
    v37 = v30 + 1;
  }

  else
  {
    v37 = v27;
  }

  v38 = v37 - 1;
  while (1)
  {
    v36 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v36 >= v27)
    {
      v46 = v101;
      (*v99)(v10, 1, 1, v101);
      v24 = 0;
      goto LABEL_21;
    }

    v24 = *(v82 + 8 * v36);
    ++v30;
    if (v24)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1000258A8()
{
  v0 = sub_100042414();
  sub_100001D84(v0, qword_1000558C0);
  sub_100001DE8(v0, qword_1000558C0);
  return sub_100042404();
}

uint64_t Service.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  v4 = sub_100041F84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Service.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = sub_100003288(&qword_100054958, &qword_100043920);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = sub_100041D04();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = type metadata accessor for CloudKitServer(0);
  swift_allocObject();
  v7 = CloudKitServer.init(baseURL:)(v4);
  v16[3] = v6;
  v16[4] = &off_100051CC8;
  v16[0] = v7;
  type metadata accessor for Service(0);
  v8 = swift_allocObject();
  v9 = sub_100025BB4(v16, v6);
  __chkstk_darwin(v9);
  v11 = (&v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = sub_10002FCD0(*v11, a1, v8);
  sub_100004BD8(v16);
  return v13;
}

uint64_t type metadata accessor for Service(uint64_t a1)
{
  result = qword_100055228;
  if (!qword_100055228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100025BB4(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t static Service.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Service(0);
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
  result = sub_100041D84();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
    v8 = sub_100041F84();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t Service.deinit()
{
  v1 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  sub_100041DA4();
  v2 = sub_100041F84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100004BD8((v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService));
  sub_10002FF04(*(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains), *(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains + 8));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t Service.__deallocating_deinit()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  if (is_remote)
  {
    v3 = sub_100041F84();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
    sub_100041FD4();
    sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
    sub_100041DA4();
    v4 = sub_100041F84();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);

    sub_100004BD8((v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService));
    sub_10002FF04(*(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains), *(v0 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains + 8));
  }

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int Service.hashValue.getter()
{
  sub_100042C54();
  type metadata accessor for Service(0);
  sub_100031058(&qword_1000550A0, type metadata accessor for Service, &protocol conformance descriptor for Service);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t Service.unownedExecutor.getter()
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for Service(0);
    sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    return sub_100041D34();
  }

  return v0;
}

uint64_t sub_100026104(uint64_t a1, uint64_t a2)
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for Service(0);
    return sub_100041D34();
  }

  return v2;
}

uint64_t sub_100026158(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for Service(0);
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  result = sub_100041D84();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
    v10 = sub_100041F84();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem) = v6;

    return v8;
  }

  return result;
}

uint64_t sub_100026288()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000F77C;

  return Service.checkIsAvailable()();
}

uint64_t Service.checkIsAvailable()()
{
  *(v1 + 136) = v0;
  sub_100003288(&qword_100054958, &qword_100043920);
  *(v1 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_1000263B0, v0, 0);
}

{
  v1[2] = v0;
  v2 = sub_100041E84();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_100041F44();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_1000268D0, 0, 0);
}

uint64_t sub_1000263B0()
{
  *(v0 + 152) = *sub_100004C24((*(v0 + 136) + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(*(v0 + 136) + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));

  return _swift_task_switch(sub_100026430, 0, 0);
}

uint64_t sub_100026430()
{
  v1 = *(v0 + 144);
  sub_100004CBC(v0 + 16);
  v2 = sub_100041D04();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_100026530;
  v4 = *(v0 + 144);

  return sub_100023394(v0 + 16, v4);
}

uint64_t sub_100026530()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(v2 + 168) = v0;

  sub_10000A800(v3, &qword_100054958, &qword_100043920);
  sub_10000A800(v2 + 16, &qword_1000550A8, &qword_100045538);
  if (v0)
  {

    return _swift_task_switch(sub_1000266C4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1000266C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100026728()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E968;

  return Service.checkIsAvailable()();
}

uint64_t sub_1000268D0()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041F54();
    v1 = sub_100003288(&qword_1000550B0, &unk_100045550);
    sub_100041F24();
    sub_100041F04();
    sub_100041E94();
    v4 = swift_task_alloc();
    v0[9] = v4;
    v5 = type metadata accessor for Service(0);
    v6 = sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    *v4 = v0;
    v4[1] = sub_100026B40;
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[2];

    return XPCSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v9, v8, v7, v1, v5, v1, v6, &protocol self-conformance witness table for Error);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_100026D00;

    return Service.checkIsAvailable()();
  }
}

uint64_t sub_100026B40()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_100026E34;
  }

  else
  {
    v2 = sub_100026C54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100026C54()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100026D00()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100026E34()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100026ED4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E968;

  return Service.validate(_:)(a1, a2);
}

uint64_t Service.validate(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100042184();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100042394();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = _s22OnlineValidationActionOMa(0);
  v3[12] = swift_task_alloc();
  v6 = sub_100042384();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_100027134, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100041E84();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_100042394();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_100041F44();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100027AB8, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100041E84();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_100042264();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_100041F44();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_100029244, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100041E84();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_100042294();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_100041F44();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002AF44, 0, 0);
}

uint64_t sub_100027134()
{
  v1 = v0[12];
  sub_100014E58(v0[3], v0[16]);
  sub_1000151F4(v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v0[9] + 32))(v0[10], v0[12], v0[8]);
      v3 = swift_task_alloc();
      v0[20] = v3;
      *v3 = v0;
      v3[1] = sub_1000275F4;
      v4 = v0[10];
      v5 = v0[2];

      return sub_10002CBCC(v5, v4);
    }

    else
    {
      (*(v0[14] + 32))(v0[2], v0[16], v0[13]);

      v8 = v0[1];

      return v8();
    }
  }

  else
  {
    (*(v0[14] + 32))(v0[15], v0[12], v0[13]);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_100027330;

    return sub_10002C574();
  }
}

uint64_t sub_100027330(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;

  return _swift_task_switch(sub_100027448, v4, 0);
}

uint64_t sub_100027448()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[14];
  v14 = v0[13];
  v15 = v0[16];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v8 = v0[6];
  v13 = v0[5];
  v12 = v0[8];
  (*(v4 + 16))();
  sub_100042374();
  sub_1000422E4();
  (*(v6 + 8))(v5, v12);

  sub_1000130C4(v7, v2, v1);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  (*(v8 + 8))(v7, v13);
  sub_100042354();
  v9 = *(v4 + 8);
  v9(v3, v14);
  v9(v15, v14);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1000275F4()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100027704, v1, 0);
}

uint64_t sub_100027704()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000277D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.validate(_:)(a1, a2);
}

uint64_t sub_100027AB8()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[11];
    v4 = v0[3];
    sub_100041F54();
    (*(v2 + 16))(v1, v4, v3);
    sub_100041EA4();
    sub_100031058(&qword_1000550C0, &type metadata accessor for PreliminaryInformation, &protocol conformance descriptor for PreliminaryInformation);
    sub_100031058(&qword_1000550C8, &type metadata accessor for PreliminaryInformation, &protocol conformance descriptor for PreliminaryInformation);
    sub_100041F14();
    v5 = sub_100042384();
    sub_100031058(&qword_1000550D0, &type metadata accessor for PreliminaryInformation.Validated, &protocol conformance descriptor for PreliminaryInformation.Validated);
    sub_100031058(&qword_1000550D8, &type metadata accessor for PreliminaryInformation.Validated, &protocol conformance descriptor for PreliminaryInformation.Validated);
    sub_100041F34();
    sub_100041F04();
    sub_100041E94();
    v10 = swift_task_alloc();
    v0[20] = v10;
    v11 = type metadata accessor for Service(0);
    sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    *v10 = v0;
    v10[1] = sub_100027ED8;
    v12 = v0[19];
    v13 = v0[10];
    v14 = v0[4];
    v15 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v15, v14, v13, v12, &type metadata for Never, v5, v11, &type metadata for Never);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = sub_100027FE8;
    v7 = v0[3];
    v8 = v0[2];

    return Service.validate(_:)(v8, v7);
  }
}

uint64_t sub_100027ED8()
{

  if (v0)
  {
    v1 = sub_10003132C;
  }

  else
  {
    v1 = sub_100031320;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100027FE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002817C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000281A0, v2, 0);
}

uint64_t sub_1000281A0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042314();
  v4 = sub_100042304();
  v5 = sub_100031058(&qword_1000550E8, &type metadata accessor for PreliminaryInformation.NextStep, &protocol conformance descriptor for PreliminaryInformation.NextStep);
  v6 = sub_100031058(&qword_1000550F0, &type metadata accessor for PreliminaryInformation.NextStep, &protocol conformance descriptor for PreliminaryInformation.NextStep);
  v7 = sub_100031058(&qword_1000550F8, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055100, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, dword_100045BF0, v1, v3, v4, v5, v6, v7);
}

uint64_t Service.resolve(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000283D4, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100041E84();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_100042394();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_100041F44();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000288CC, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100029BAC, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100041E84();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_100042264();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_100041F44();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002A0A4, 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10002B69C, v2, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_100041F64();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_100041E84();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_100042294();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_100041F44();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_10002BB94, 0, 0);
}

uint64_t sub_1000283D4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042314();
  v4 = sub_100042304();
  v5 = sub_100031058(&qword_1000550E8, &type metadata accessor for PreliminaryInformation.NextStep, &protocol conformance descriptor for PreliminaryInformation.NextStep);
  v6 = sub_100031058(&qword_1000550F0, &type metadata accessor for PreliminaryInformation.NextStep, &protocol conformance descriptor for PreliminaryInformation.NextStep);
  v7 = sub_100031058(&qword_1000550F8, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055100, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045648, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_1000285E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.resolve(_:)(a1, a2);
}

uint64_t sub_1000288CC()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[11];
    v4 = v0[3];
    sub_100041F54();
    (*(v2 + 16))(v1, v4, v3);
    sub_100041EA4();
    sub_100031058(&qword_1000550C0, &type metadata accessor for PreliminaryInformation, &protocol conformance descriptor for PreliminaryInformation);
    sub_100031058(&qword_1000550C8, &type metadata accessor for PreliminaryInformation, &protocol conformance descriptor for PreliminaryInformation);
    sub_100041F14();
    v5 = sub_100003288(&qword_100055110, &qword_100045668);
    sub_100030D8C(&qword_100055118, &qword_100055110, &qword_100045668, &protocol conformance descriptor for CodableResult<A, B>);
    sub_100030D8C(&qword_100055120, &qword_100055110, &qword_100045668, &protocol conformance descriptor for CodableResult<A, B>);
    sub_100041F34();
    sub_100041F04();
    sub_100041E94();
    v7 = swift_task_alloc();
    v0[20] = v7;
    v8 = type metadata accessor for Service(0);
    sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    *v7 = v0;
    v7[1] = sub_100027ED8;
    v9 = v0[19];
    v10 = v0[10];
    v11 = v0[4];
    v12 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v12, v11, v10, v9, &type metadata for Never, v5, v8, &type metadata for Never);
  }

  else
  {
    v6 = v0[4];

    return _swift_task_switch(sub_100028CBC, v6, 0);
  }
}

uint64_t sub_100028CBC()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_100042314();
  v4 = sub_100042304();
  v5 = sub_100031058(&qword_1000550E8, &type metadata accessor for PreliminaryInformation.NextStep, &protocol conformance descriptor for PreliminaryInformation.NextStep);
  v6 = sub_100031058(&qword_1000550F0, &type metadata accessor for PreliminaryInformation.NextStep, &protocol conformance descriptor for PreliminaryInformation.NextStep);
  v7 = sub_100031058(&qword_1000550F8, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055100, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
  *v2 = v0;
  v2[1] = sub_100031338;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045660, v1, v3, v4, v5, v6, v7);
}

uint64_t Service.validate(_:)()
{
  return _swift_task_switch(sub_100028EE8, v0, 0);
}

{
  return _swift_task_switch(sub_10002ABE8, v0, 0);
}

uint64_t sub_100028F5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.validate(_:)(a1, a2);
}

uint64_t sub_100029244()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[11];
    v4 = v0[3];
    sub_100041F54();
    (*(v2 + 16))(v1, v4, v3);
    sub_100041EA4();
    sub_100031058(&qword_100055130, &type metadata accessor for PasswordAccount.Known, &protocol conformance descriptor for PasswordAccount.Known);
    sub_100031058(&qword_100055138, &type metadata accessor for PasswordAccount.Known, &protocol conformance descriptor for PasswordAccount.Known);
    sub_100041F14();
    v5 = sub_100042254();
    sub_100031058(&qword_100055140, &type metadata accessor for PasswordAccount.Known.Validated, &protocol conformance descriptor for PasswordAccount.Known.Validated);
    sub_100031058(&qword_100055148, &type metadata accessor for PasswordAccount.Known.Validated, &protocol conformance descriptor for PasswordAccount.Known.Validated);
    sub_100041F34();
    sub_100041F04();
    sub_100041E94();
    v7 = swift_task_alloc();
    v0[20] = v7;
    v8 = type metadata accessor for Service(0);
    sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    *v7 = v0;
    v7[1] = sub_100029634;
    v9 = v0[19];
    v10 = v0[10];
    v11 = v0[4];
    v12 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v12, v11, v10, v9, &type metadata for Never, v5, v8, &type metadata for Never);
  }

  else
  {
    v6 = v0[4];

    return _swift_task_switch(sub_100031324, v6, 0);
  }
}

uint64_t sub_100029634()
{

  if (v0)
  {
    v1 = sub_10003132C;
  }

  else
  {
    v1 = sub_100029744;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100029744()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100029844(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_100029868, v2, 0);
}

uint64_t sub_100029868()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042244();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_100055160, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055168, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055170, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  *v2 = v0;
  v2[1] = sub_100029A78;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045BE8, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_100029A78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100029BAC()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042244();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_100055160, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055168, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055170, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045798, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_100029DBC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.resolve(_:)(a1, a2);
}

uint64_t sub_10002A0A4()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[11];
    v4 = v0[3];
    sub_100041F54();
    (*(v2 + 16))(v1, v4, v3);
    sub_100041EA4();
    sub_100031058(&qword_100055130, &type metadata accessor for PasswordAccount.Known, &protocol conformance descriptor for PasswordAccount.Known);
    sub_100031058(&qword_100055138, &type metadata accessor for PasswordAccount.Known, &protocol conformance descriptor for PasswordAccount.Known);
    sub_100041F14();
    v5 = sub_100003288(&qword_100055178, &qword_1000457B8);
    sub_100030D8C(&qword_100055180, &qword_100055178, &qword_1000457B8, &protocol conformance descriptor for CodableResult<A, B>);
    sub_100030D8C(&qword_100055188, &qword_100055178, &qword_1000457B8, &protocol conformance descriptor for CodableResult<A, B>);
    sub_100041F34();
    sub_100041F04();
    sub_100041E94();
    v7 = swift_task_alloc();
    v0[20] = v7;
    v8 = type metadata accessor for Service(0);
    sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    *v7 = v0;
    v7[1] = sub_10002A49C;
    v9 = v0[19];
    v10 = v0[10];
    v11 = v0[4];
    v12 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v12, v11, v10, v9, &type metadata for Never, v5, v8, &type metadata for Never);
  }

  else
  {
    v6 = v0[4];

    return _swift_task_switch(sub_10002A6A4, v6, 0);
  }
}

uint64_t sub_10002A49C()
{

  if (v0)
  {
    v1 = sub_10002AA64;
  }

  else
  {
    v1 = sub_10002A5AC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10002A5AC()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10002A6A4()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_100042204();
  v4 = sub_100042244();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_100055160, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055168, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  sub_100031058(&qword_100055170, &type metadata accessor for PasswordAccount.Known.Error, &protocol conformance descriptor for PasswordAccount.Known.Error);
  *v2 = v0;
  v2[1] = sub_10002A8B4;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_1000457B0, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_10002A8B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10002AA64()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  sub_100031058(&qword_1000550E0, &type metadata accessor for XPCSystem.RemoteInvocationCancellationError, &protocol conformance descriptor for XPCSystem.RemoteInvocationCancellationError);
  swift_allocError();
  (*(v6 + 32))(v7, v4, v5);
  (*(v2 + 8))(v1, v3);
  v9 = v0[18];
  v8 = v0[19];
  v10 = v0[17];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v9 + 8))(v8, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002AC5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.validate(_:)(a1, a2);
}

uint64_t sub_10002AF44()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[11];
    v4 = v0[3];
    sub_100041F54();
    (*(v2 + 16))(v1, v4, v3);
    sub_100041EA4();
    sub_100031058(&qword_100055198, &type metadata accessor for PasswordAccount.Unknown, &protocol conformance descriptor for PasswordAccount.Unknown);
    sub_100031058(&qword_1000551A0, &type metadata accessor for PasswordAccount.Unknown, &protocol conformance descriptor for PasswordAccount.Unknown);
    sub_100041F14();
    v5 = sub_100042284();
    sub_100031058(&qword_1000551A8, &type metadata accessor for PasswordAccount.Unknown.Validated, &protocol conformance descriptor for PasswordAccount.Unknown.Validated);
    sub_100031058(&qword_1000551B0, &type metadata accessor for PasswordAccount.Unknown.Validated, &protocol conformance descriptor for PasswordAccount.Unknown.Validated);
    sub_100041F34();
    sub_100041F04();
    sub_100041E94();
    v7 = swift_task_alloc();
    v0[20] = v7;
    v8 = type metadata accessor for Service(0);
    sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    *v7 = v0;
    v7[1] = sub_10002B334;
    v9 = v0[19];
    v10 = v0[10];
    v11 = v0[4];
    v12 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v12, v11, v10, v9, &type metadata for Never, v5, v8, &type metadata for Never);
  }

  else
  {
    v6 = v0[4];

    return _swift_task_switch(sub_100031328, v6, 0);
  }
}

uint64_t sub_10002B334()
{

  if (v0)
  {
    v1 = sub_10003132C;
  }

  else
  {
    v1 = sub_100031334;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10002B444(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10002B468, v2, 0);
}

uint64_t sub_10002B468()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042274();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_1000551B8, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C0, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C8, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_100045BE0, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_10002B69C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_100042204();
  v4 = sub_100042274();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_1000551B8, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C0, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C8, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  *v2 = v0;
  v2[1] = sub_10003131C;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, &unk_1000458E8, v1, v3, v4, v5, v6, v7);
}

uint64_t sub_10002B8AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return Service.resolve(_:)(a1, a2);
}

uint64_t sub_10002BB94()
{
  if (swift_distributed_actor_is_remote())
  {
    v2 = v0[12];
    v1 = v0[13];
    v3 = v0[11];
    v4 = v0[3];
    sub_100041F54();
    (*(v2 + 16))(v1, v4, v3);
    sub_100041EA4();
    sub_100031058(&qword_100055198, &type metadata accessor for PasswordAccount.Unknown, &protocol conformance descriptor for PasswordAccount.Unknown);
    sub_100031058(&qword_1000551A0, &type metadata accessor for PasswordAccount.Unknown, &protocol conformance descriptor for PasswordAccount.Unknown);
    sub_100041F14();
    v5 = sub_100003288(&qword_1000551D0, &unk_100046700);
    sub_100030D8C(&qword_1000551D8, &qword_1000551D0, &unk_100046700, &protocol conformance descriptor for CodableResult<A, B>);
    sub_100030D8C(&qword_1000551E0, &qword_1000551D0, &unk_100046700, &protocol conformance descriptor for CodableResult<A, B>);
    sub_100041F34();
    sub_100041F04();
    sub_100041E94();
    v7 = swift_task_alloc();
    v0[20] = v7;
    v8 = type metadata accessor for Service(0);
    sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
    *v7 = v0;
    v7[1] = sub_100027ED8;
    v9 = v0[19];
    v10 = v0[10];
    v11 = v0[4];
    v12 = v0[2];

    return _s14XPCDistributed9XPCSystemC10remoteCall2on6target10invocation8throwing9returningq0_x_11Distributed06RemoteD6TargetVAC17InvocationEncoderVzq_mq0_mtYaAC0kM17CancellationErrorVYKAJ0J5ActorRzs0P0R_SeR0_SER0_AC0Q2IDV0R0Rtzr1_lF(v12, v11, v10, v9, &type metadata for Never, v5, v8, &type metadata for Never);
  }

  else
  {
    v6 = v0[4];

    return _swift_task_switch(sub_10002BF8C, v6, 0);
  }
}

uint64_t sub_10002BF8C()
{
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  v3 = sub_100042204();
  v4 = sub_100042274();
  v5 = sub_100031058(&qword_100055150, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v6 = sub_100031058(&qword_100055158, &type metadata accessor for PasswordAccount.ResolvedAccount, &protocol conformance descriptor for PasswordAccount.ResolvedAccount);
  v7 = sub_100031058(&qword_1000551B8, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C0, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  sub_100031058(&qword_1000551C8, &type metadata accessor for PasswordAccount.Unknown.Error, &protocol conformance descriptor for PasswordAccount.Unknown.Error);
  *v2 = v0;
  v2[1] = sub_100031338;
  v8 = *(v0 + 16);

  return _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(v8, dword_100045900, v1, v3, v4, v5, v6, v7);
}

Swift::Int sub_10002C19C(uint64_t a1, uint64_t a2)
{
  sub_100042C54();
  type metadata accessor for Service(0);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10002C1FC(uint64_t a1)
{
  type metadata accessor for Service(0);
  sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
  return sub_100041E44();
}

Swift::Int sub_10002C278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100042C54();
  type metadata accessor for Service(0);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10002C2D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id;
  v5 = sub_100041F84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_10002C350(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for Service(0);
  v5 = sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_10002C3DC(uint64_t a1)
{
  type metadata accessor for Service(0);
  sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
  sub_100031058(&qword_1000552F8, &type metadata accessor for XPCSystem.ActorID, &protocol conformance descriptor for XPCSystem.ActorID);
  return sub_100041E54();
}

uint64_t sub_10002C4A4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Service(0);
  sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
  sub_100031058(&qword_1000552F0, &type metadata accessor for XPCSystem.ActorID, &protocol conformance descriptor for XPCSystem.ActorID);
  result = sub_100041E64();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10002C574()
{
  *(v1 + 216) = v0;
  sub_100003288(&qword_100054958, &qword_100043920);
  *(v1 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_10002C610, v0, 0);
}

uint64_t sub_10002C610()
{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains;
  v0[29] = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains;
  v3 = (v1 + v2);
  v4 = *v3;
  v0[30] = *v3;
  v5 = v3[1];
  v0[31] = v5;
  if (v4)
  {
    sub_1000311C8(v4, v5);

    v6 = v0[1];

    return v6(v4, v5);
  }

  else
  {
    v0[32] = *sub_100004C24((v1 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(v1 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));

    return _swift_task_switch(sub_10002C710, 0, 0);
  }
}

uint64_t sub_10002C710()
{
  v1 = *(v0 + 224);
  sub_10000D20C(v0 + 16);
  v2 = sub_100041D04();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_10002C814;
  v4 = *(v0 + 224);

  return sub_100024840(v0 + 16, v4);
}

uint64_t sub_10002C814(uint64_t a1)
{
  v4 = *v2;
  v4[34] = v1;

  v5 = v4[28];
  if (v1)
  {
    sub_10000A800(v5, &qword_100054958, &qword_100043920);
    sub_10000A800((v4 + 2), &qword_100055318, &unk_100045C30);
    v6 = sub_10002CAC8;
    v7 = 0;
  }

  else
  {
    v8 = v4[27];
    v4[35] = a1;
    sub_10000A800(v5, &qword_100054958, &qword_100043920);
    sub_10000A800((v4 + 2), &qword_100055318, &unk_100045C30);
    v6 = sub_10002C9BC;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002C9BC()
{
  v1 = v0[35];
  v2 = (v0[27] + v0[29]);
  v0[22] = v1;
  v0[23] = sub_100034ACC;
  v0[24] = 0;
  v0[25] = sub_10001A020;
  v0[26] = 0;

  sub_100024ED8(v0 + 22, 2);
  v4 = v3;

  v5 = *v2;
  v6 = v2[1];
  *v2 = v1;
  v2[1] = v4;

  sub_10002FF04(v5, v6);
  v7 = v0[35];
  sub_1000311C8(v0[30], v0[31]);

  v8 = v0[1];

  return v8(v7, v4);
}

uint64_t sub_10002CAE4()
{
  v1 = sub_100009630(_swiftEmptyArrayStorage);
  v0[17] = v1;
  v0[18] = sub_100034ACC;
  v0[19] = 0;
  v0[20] = sub_10001A020;
  v0[21] = 0;

  sub_100024ED8(v0 + 17, 2);
  v3 = v2;

  sub_1000311C8(v0[30], v0[31]);

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_10002CBCC(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  v4 = sub_100042334();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = sub_100042394();
  v3[25] = v5;
  v3[26] = *(v5 - 8);
  v3[27] = swift_task_alloc();
  sub_100003288(&qword_100054958, &qword_100043920);
  v3[28] = swift_task_alloc();
  sub_100003288(&qword_100055300, &qword_100045C08);
  v3[29] = swift_task_alloc();
  v6 = sub_100042184();
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v7 = sub_100042114();
  v3[34] = v7;
  v3[35] = *(v7 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002CE38, v2, 0);
}

uint64_t sub_10002CE38(uint64_t a1)
{
  v2 = v1[34];
  v3 = v1[35];
  v4 = v1[33];
  v5 = v1[30];
  v6 = v1[31];
  v7 = v1[29];
  sub_1000422E4();
  sub_100042134();
  v8 = *(v6 + 8);
  v1[39] = v8;
  v1[40] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v10 = v1[26];
    v9 = v1[27];
    v12 = v1[24];
    v11 = v1[25];
    v13 = v1[22];
    v14 = v1[23];
    v15 = v1[20];
    sub_10000A800(v1[29], &qword_100055300, &qword_100045C08);
    (*(v10 + 16))(v9, v15, v11);
    (*(v14 + 104))(v12, enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:), v13);
    sub_100042364();

    v16 = v1[1];

    return v16();
  }

  else
  {
    v18 = v1[37];
    v19 = v1[38];
    v21 = v1[35];
    v20 = v1[36];
    v22 = v1[34];
    v23 = v1[21];
    (*(v21 + 32))(v19, v1[29], v22);
    v24 = sub_100004C24((v23 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(v23 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));
    v25 = *(v21 + 16);
    v25(v18, v19, v22);
    v25(v20, v18, v22);
    v1[17] = sub_100042564();
    v1[18] = v26;
    sub_100009BAC();
    v27 = sub_100042894();
    v29 = v28;

    v30 = sub_1000183A8(v27, v29);
    v32 = v31;

    v1[41] = v30;
    v1[42] = v32;
    v33 = *(v21 + 8);
    v1[43] = v33;
    v1[44] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v18, v22);
    v1[45] = *v24;

    return _swift_task_switch(sub_10002D140, 0, 0);
  }
}

uint64_t sub_10002D140()
{
  v1 = *(v0 + 224);
  sub_10000B4EC(v0 + 16);

  v2 = sub_100041D04();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  *(v0 + 368) = v3;
  *v3 = v0;
  v3[1] = sub_10002D258;
  v4 = *(v0 + 224);

  return sub_100023A98(v0 + 16, v4);
}

uint64_t sub_10002D258(char a1)
{
  v4 = *v2;
  *(v4 + 376) = v1;

  v5 = *(v4 + 224);
  if (v1)
  {
    sub_10000A800(v5, &qword_100054958, &qword_100043920);
    sub_10000A800(v4 + 16, &qword_100055328, &unk_100045C60);
    v6 = sub_10002D69C;
    v7 = 0;
  }

  else
  {
    v8 = *(v4 + 168);
    *(v4 + 408) = a1;
    sub_10000A800(v5, &qword_100054958, &qword_100043920);
    sub_10000A800(v4 + 16, &qword_100055328, &unk_100045C60);
    v6 = sub_10002D400;
    v7 = v8;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_10002D400(uint64_t a1)
{
  if (*(v1 + 408))
  {
    sub_1000422E4();
    v2 = swift_task_alloc();
    *(v1 + 384) = v2;
    *v2 = v1;
    v2[1] = sub_10002D948;

    return sub_10002C574();
  }

  else
  {
    if (qword_100054910 != -1)
    {
      swift_once();
    }

    v4 = sub_100042414();
    sub_100001DE8(v4, qword_1000558C0);
    v5 = sub_1000423F4();
    v6 = sub_1000427D4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Email domain has MX record.", v7, 2u);
    }

    v18 = *(v1 + 344);
    v16 = *(v1 + 272);
    v17 = *(v1 + 304);
    v8 = *(v1 + 208);
    v9 = *(v1 + 216);
    v11 = *(v1 + 192);
    v10 = *(v1 + 200);
    v13 = *(v1 + 176);
    v12 = *(v1 + 184);
    v14 = *(v1 + 160);

    (*(v8 + 16))(v9, v14, v10);
    (*(v12 + 104))(v11, enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:), v13);
    sub_100042364();
    v18(v17, v16);

    v15 = *(v1 + 8);

    return v15();
  }
}

uint64_t sub_10002D6B8()
{
  if (qword_100054910 != -1)
  {
    swift_once();
  }

  v1 = sub_100042414();
  sub_100001DE8(v1, qword_1000558C0);
  swift_errorRetain();
  v2 = sub_1000423F4();
  v3 = sub_1000427C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Online validation failed: %@", v4, 0xCu);
    sub_10000A800(v5, &qword_100054FC8, &qword_100045EF0);
  }

  v18 = v0[43];
  v16 = v0[34];
  v17 = v0[38];
  v7 = v0[26];
  v8 = v0[27];
  v10 = v0[24];
  v9 = v0[25];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[20];

  (*(v7 + 16))(v8, v13, v9);
  (*(v11 + 104))(v10, enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:), v12);
  sub_100042364();

  v18(v17, v16);

  v14 = v0[1];

  return v14();
}

uint64_t sub_10002D948(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 168);
  *(v3 + 392) = a1;
  *(v3 + 400) = a2;

  return _swift_task_switch(sub_10002DA60, v4, 0);
}

uint64_t sub_10002DA60()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[39];
  v4 = v0[32];
  v5 = v0[30];

  v6 = sub_1000130C4(v4, v2, v1);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v3(v4, v5);
  if (qword_100054910 != -1)
  {
    swift_once();
  }

  v7 = sub_100042414();
  sub_100001DE8(v7, qword_1000558C0);

  v8 = sub_1000423F4();
  v9 = sub_1000427D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6[2];

    _os_log_impl(&_mh_execute_header, v8, v9, "Email domain has no MX record. Found %ld suggestion(s).", v10, 0xCu);
  }

  else
  {
  }

  v11 = v0[43];
  v12 = v0[38];
  v13 = v0[34];
  v14 = v0[24];
  v15 = v0[22];
  v16 = v0[23];
  (*(v0[26] + 16))(v0[27], v0[20], v0[25]);
  *v14 = v6;
  (*(v16 + 104))(v14, enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButDomainNotFound(_:), v15);

  sub_100042364();
  v11(v12, v13);

  v17 = v0[1];

  return v17();
}

uint64_t sub_10002DCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v7 = sub_100042304();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v8 = swift_task_alloc();
  v4[5] = v8;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_10002DE0C;

  return sub_10002DFC4(a1, a3, v8);
}

uint64_t sub_10002DE0C()
{
  v2 = *v1;

  if (v0)
  {

    return _swift_task_switch(sub_10002DF44, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10002DF44()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002DFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = v3;
  v4[5] = a3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_100042304();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_100042334();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_100042384();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10002E140, v3, 0);
}

uint64_t sub_10002E140()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_100014E58(v0[3], v0[14]);
  sub_100042344();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButDomainNotFound(_:))
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_3:
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_10002E490;
    v6 = v0[14];
    v7 = v0[8];
    v8 = v0[2];

    return sub_10002E718(v8, v6, v7);
  }

  if (v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.empty(_:) || v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.invalid(_:))
  {
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v14 = v0[6];
    v15 = v0[7];
    v16 = v0[5];
    (*(v12 + 16))(v16, v11, v13);
    (*(v15 + 104))(v16, enum case for PreliminaryInformation.Error.invalid(_:), v14);
    sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
    swift_willThrowTypedImpl();
    (*(v12 + 8))(v11, v13);
  }

  else
  {
    if (v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.validButSuspicious(_:) || v4 == enum case for PreliminaryInformation.Validated.EmailAddressStatus.good(_:))
    {
      goto LABEL_3;
    }

    v19 = v0[13];
    v18 = v0[14];
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[9];
    v23 = v0[10];
    v24 = v0[6];
    v25 = v0[7];
    v26 = v0[5];
    (*(v19 + 16))(v26, v18, v20);
    (*(v25 + 104))(v26, enum case for PreliminaryInformation.Error.invalid(_:), v24);
    sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
    swift_willThrowTypedImpl();
    (*(v19 + 8))(v18, v20);
    (*(v23 + 8))(v21, v22);
  }

  v27 = v0[1];

  return v27();
}

uint64_t sub_10002E490()
{
  v2 = *v1;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_10002E658;
  }

  else
  {
    v4 = sub_10002E5BC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10002E5BC()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10002E658()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002E718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = v3;
  v4[22] = a3;
  v4[19] = a1;
  v4[20] = a2;
  sub_100003288(&qword_100054958, &qword_100043920);
  v4[23] = swift_task_alloc();
  type metadata accessor for ResolvedDomain(0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  sub_100003288(&qword_100055300, &qword_100045C08);
  v4[26] = swift_task_alloc();
  v5 = sub_100042184();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = sub_100042394();
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v7 = sub_100042114();
  v4[34] = v7;
  v4[35] = *(v7 - 8);
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return _swift_task_switch(sub_10002E960, v3, 0);
}

uint64_t sub_10002E960(uint64_t a1)
{
  v2 = v1[35];
  v34 = v1[34];
  v3 = v1[33];
  v4 = v1[30];
  v5 = v1[31];
  v6 = v1[28];
  v7 = v1[29];
  v9 = v1[26];
  v8 = v1[27];
  sub_100042374();
  sub_1000422E4();
  (*(v5 + 8))(v3, v4);
  sub_100042134();
  (*(v6 + 8))(v7, v8);
  v10 = (*(v2 + 48))(v9, 1, v34);
  v11 = v1[37];
  v12 = v1[38];
  v13 = v1[36];
  if (v10 == 1)
  {
    v14 = v1[22];
    v15 = v1[20];
    sub_10000A800(v1[26], &qword_100055300, &qword_100045C08);
    v16 = sub_100042384();
    (*(*(v16 - 8) + 16))(v14, v15, v16);
    v17 = enum case for PreliminaryInformation.Error.invalid(_:);
    v18 = sub_100042304();
    (*(*(v18 - 8) + 104))(v14, v17, v18);
    sub_100031058(&qword_100055108, &type metadata accessor for PreliminaryInformation.Error, &protocol conformance descriptor for PreliminaryInformation.Error);
    swift_willThrowTypedImpl();

    v19 = v1[1];

    return v19();
  }

  else
  {
    v21 = v1[34];
    v22 = v1[35];
    v23 = v1[21];
    (*(v22 + 32))(v1[38], v1[26], v21);
    v24 = sub_100004C24((v23 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService), *(v23 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService + 24));
    v25 = *(v22 + 16);
    v25(v11, v12, v21);
    v25(v13, v11, v21);
    v1[17] = sub_100042564();
    v1[18] = v26;
    sub_100009BAC();
    v27 = sub_100042894();
    v29 = v28;

    v30 = sub_1000183A8(v27, v29);
    v32 = v31;

    v1[39] = v30;
    v1[40] = v32;
    v33 = *(v22 + 8);
    v1[41] = v33;
    v1[42] = (v22 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33(v11, v21);
    v1[43] = *v24;

    return _swift_task_switch(sub_10002ED10, 0, 0);
  }
}

uint64_t sub_10002ED10()
{
  v1 = v0[23];
  sub_100009818((v0 + 2));

  v2 = sub_100041D04();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[44] = v3;
  *v3 = v0;
  v3[1] = sub_10002EE2C;
  v4 = v0[25];
  v5 = v0[23];

  return sub_100024130(v4, (v0 + 2), v5);
}

uint64_t sub_10002EE2C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  *(v2 + 360) = v0;

  sub_10000A800(v3, &qword_100054958, &qword_100043920);
  sub_10000A800(v2 + 16, &qword_100055308, &qword_100045C18);
  if (v0)
  {
    v4 = sub_10002F0E0;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 168);
    v4 = sub_10002EF9C;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10002EF9C()
{
  v1 = v0[41];
  v2 = v0[38];
  v3 = v0[34];
  v4 = v0[32];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[19];
  sub_1000310A0(v5, v6);
  sub_100042374();
  sub_10002F264(v6, v4, v7);
  sub_100031168(v5, type metadata accessor for ResolvedDomain);
  v1(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_10002F0FC(uint64_t a1)
{
  v2 = v1[41];
  v3 = v1[38];
  v4 = v1[34];
  v5 = v1[19];
  sub_100042374();
  sub_1000422A4();

  v2(v3, v4);
  v6 = enum case for PreliminaryInformation.NextStep.unknownAccount(_:);
  v7 = sub_100042314();
  (*(*(v7 - 8) + 104))(v5, v6, v7);

  v8 = v1[1];

  return v8();
}

uint64_t sub_10002F264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v46 = a3;
  v47 = a1;
  v42 = sub_1000421F4();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000421C4();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100042234();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100042394();
  v43 = *(v8 - 8);
  v44 = v8;
  __chkstk_darwin(v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResolvedDomain.Known(0);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100042184();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000423B4();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v34 - v20;
  v22 = type metadata accessor for ResolvedDomain(0);
  __chkstk_darwin(v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000310A0(v47, v24);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100031104(v24, v13);
    v25 = v43;
    v26 = v44;
    v27 = v45;
    (*(v43 + 16))(v10, v45, v44);
    (*(v34 + 16))(v36, &v13[v11[5]], v35);
    v35 = *v13;
    (*(v37 + 16))(v39, &v13[v11[6]], v38);
    (*(v40 + 16))(v41, &v13[v11[7]], v42);

    v28 = v46;
    sub_100042214();
    (*(v25 + 8))(v27, v26);
    sub_100031168(v47, type metadata accessor for ResolvedDomain);
    sub_100031168(v13, type metadata accessor for ResolvedDomain.Known);
    v29 = &enum case for PreliminaryInformation.NextStep.knownAccount(_:);
  }

  else
  {
    (*(v16 + 32))(v21, v24, v15);
    v30 = v45;
    sub_1000422E4();
    sub_1000422F4();
    (*(v16 + 16))(v19, v21, v15);
    v28 = v46;
    sub_1000423C4();
    (*(v43 + 8))(v30, v44);
    sub_100031168(v47, type metadata accessor for ResolvedDomain);
    (*(v16 + 8))(v21, v15);
    v29 = &enum case for PreliminaryInformation.NextStep.oauth(_:);
  }

  v31 = *v29;
  v32 = sub_100042314();
  return (*(*(v32 - 8) + 104))(v28, v31, v32);
}

uint64_t sub_10002F980(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a5) & 0xF;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (!a2)
  {
    v10 = 0;
    v9 = 0;
    v7 = 0;
LABEL_41:
    v14 = 1;
    goto LABEL_42;
  }

  v7 = a3;
  if (!a3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_41;
  }

  if (a3 < 0)
  {
    __break(1u);
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = a5 & 0xFFFFFFFFFFFFFFLL;
  v12 = (a5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v13 = a3 - 1;
  v14 = 1;
  do
  {
    if ((v14 & 1) == 0)
    {
      v14 = 1;
      LOWORD(v17) = v9;
      v9 = 0;
      goto LABEL_33;
    }

    if (v10 >= v6)
    {
      goto LABEL_43;
    }

    if ((a5 & 0x1000000000000000) != 0)
    {
      v29 = a5;
      v32 = a2;
      v23 = a4;
      v24 = sub_100042934();
      a4 = v23;
      v17 = v24;
      v19 = v25;
      a5 = v29;
      a2 = v32;
    }

    else
    {
      if ((a5 & 0x2000000000000000) == 0)
      {
        v15 = v12;
        if ((a4 & 0x1000000000000000) == 0)
        {
          v30 = a5;
          v33 = a2;
          v26 = a4;
          v15 = sub_1000429A4();
          a5 = v30;
          a2 = v33;
          a4 = v26;
        }

        v16 = (v15 + v10);
        v17 = *(v15 + v10);
        if ((*(v15 + v10) & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v20 = (__clz(v17 ^ 0xFF) - 24);
        if (v20 <= 2)
        {
          if (v20 == 1)
          {
LABEL_15:
            v18 = 1;
          }

          else
          {
            LOWORD(v17) = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
            v18 = 2;
          }

LABEL_16:
          v10 += v18;
LABEL_32:
          v14 = 1;
          goto LABEL_33;
        }

        if (v20 == 3)
        {
          LOWORD(v17) = (v17 << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v18 = 3;
          goto LABEL_16;
        }

LABEL_30:
        v17 = ((v17 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
        v19 = 4;
        goto LABEL_31;
      }

      v34[0] = a4;
      v34[1] = v11;
      v16 = v34 + v10;
      v17 = *(v34 + v10);
      if ((*(v34 + v10) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v21 = (__clz(v17 ^ 0xFF) - 24);
      if (v21 > 2)
      {
        if (v21 == 3)
        {
          v17 = ((v17 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v19 = 3;
          goto LABEL_31;
        }

        goto LABEL_30;
      }

      if (v21 == 1)
      {
LABEL_19:
        v19 = 1;
        goto LABEL_31;
      }

      v17 = v16[1] & 0x3F | ((v17 & 0x1F) << 6);
      v19 = 2;
    }

LABEL_31:
    v10 += v19;
    if (!HIWORD(v17))
    {
      goto LABEL_32;
    }

    v28 = a5;
    v31 = a2;
    v27 = a4;
    v9 = sub_100042CD4();
    v22 = sub_100042CD4();
    a5 = v28;
    a2 = v31;
    a4 = v27;
    LOWORD(v17) = v22;
    v14 = 0;
LABEL_33:
    *(a2 + 2 * v8) = v17;
    if (v13 == v8)
    {
      goto LABEL_42;
    }

    ++v8;
  }

  while (!__OFADD__(v8, 1));
  __break(1u);
LABEL_43:
  v14 = 1;
  v7 = v8;
LABEL_42:
  *v5 = a4;
  *(v5 + 8) = a5;
  *(v5 + 16) = v10;
  *(v5 + 24) = v6;
  *(v5 + 32) = v9;
  *(v5 + 34) = v14;
  return v7;
}

void *sub_10002FC54(uint64_t a1, uint64_t a2)
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

  sub_100003288(&qword_100054E10, &unk_100044C90);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

uint64_t sub_10002FCD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = sub_100041F84();
  v6 = *(v13 - 8);
  __chkstk_darwin(v13);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[3] = type metadata accessor for CloudKitServer(0);
  v15[4] = &off_100051CC8;
  v15[0] = a1;
  swift_defaultActor_initialize();
  v9 = (a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service__wellKnownDomains);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem;
  *(a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_actorSystem) = a2;
  type metadata accessor for Service(0);
  v14 = a2;
  sub_100041FD4();
  sub_100031058(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);

  sub_100041D94();
  (*(v6 + 32))(a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_id, v8, v13);
  sub_1000312B8(v15, a3 + OBJC_IVAR____TtC27AccountsUISupportServiceLib7Service_webService);
  v14 = *(a3 + v10);

  sub_100041D44();

  sub_100004BD8(v15);

  return a3;
}

uint64_t sub_10002FF04(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002FF44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E968;

  return Service.checkIsAvailable()();
}

uint64_t sub_10002FFD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100031330;

  return Service.validate(_:)(a3, v6);
}

uint64_t sub_100030188(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000F77C;

  return sub_10002DCF4(a1, v7, v6, a2);
}

uint64_t sub_10003023C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100031330;

  return Service.resolve(_:)(a3, v6);
}

uint64_t sub_1000303EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100031330;

  return Service.validate(_:)(a3, v6);
}

uint64_t sub_10003059C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10002F868(a1, v4);
}

uint64_t sub_100030650(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100030800;

  return Service.resolve(_:)(a3, v6);
}

uint64_t sub_100030800()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100030978(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100031330;

  return Service.validate(_:)(a3, v6);
}

uint64_t sub_100030B28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10002F8F4(a1, v4);
}

uint64_t sub_100030BDC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v3[2] = *a2;
  v3[3] = *(v5 - 8);
  v6 = swift_task_alloc();
  v3[4] = v6;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_100041EF4();
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_100031330;

  return Service.resolve(_:)(a3, v6);
}

uint64_t sub_100030D8C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000D628(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100030EAC(uint64_t a1)
{
  result = sub_100031058(&qword_1000548F8, type metadata accessor for Service, &protocol conformance descriptor for Service);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100030F9C(uint64_t a1)
{
  result = sub_100041F84();
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

uint64_t sub_100031058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000310A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedDomain(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResolvedDomain.Known(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100031168(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000311C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100031210(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100031250(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003288(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000312B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t SimpleURLSessionNetworkAPI.__allocating_init(sessionDescription:configuration:baseURL:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v8 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v9 = sub_100041D04();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v7 + v8, a4, v9);
  v11 = [objc_opt_self() sessionWithConfiguration:a3];
  *(v7 + 16) = v11;
  if (a2)
  {
    v12 = v11;
    v13 = sub_1000424E4();

    v11 = v12;
  }

  else
  {
    v13 = 0;
  }

  [v11 setSessionDescription:v13];

  (*(v10 + 8))(a4, v9);
  return v7;
}

uint64_t SimpleURLSessionNetworkAPI.apiRequest<A>(resource:baseURL:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  sub_100003288(&qword_100054958, &qword_100043920);
  v4[29] = swift_task_alloc();
  v5 = sub_100041D04();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v6 = sub_100041AD4();
  v4[33] = v6;
  v4[34] = *(v6 - 8);
  v4[35] = swift_task_alloc();

  return _swift_task_switch(sub_1000315D0, 0, 0);
}

uint64_t sub_1000315D0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  sub_10000A744(*(v0 + 216), v3, &qword_100054958, &qword_100043920);
  v4 = *(v2 + 48);
  v5 = v4(v3, 1, v1);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v9 = *(v0 + 232);
  v8 = *(v0 + 240);
  if (v5 == 1)
  {
    (*(v7 + 16))(v6, *(v0 + 224) + OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL, *(v0 + 240));
    if (v4(v9, 1, v8) != 1)
    {
      sub_10000452C(*(v0 + 232));
    }
  }

  else
  {
    (*(v7 + 32))(v6, *(v0 + 232), *(v0 + 240));
  }

  v10 = *(v0 + 280);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = *(v0 + 208);
  v16 = *(v14 + 16);
  v15 = *(v14 + 32);
  *(v0 + 16) = *v14;
  *(v0 + 32) = v16;
  *(v0 + 48) = v15;
  v18 = *(v14 + 64);
  v17 = *(v14 + 80);
  v19 = *(v14 + 48);
  *(v0 + 112) = *(v14 + 96);
  *(v0 + 80) = v18;
  *(v0 + 96) = v17;
  *(v0 + 64) = v19;
  sub_100031E3C(v10);
  (*(v12 + 8))(v11, v13);
  LOBYTE(v13) = *(v0 + 80);
  *(v0 + 120) = *(v0 + 88);
  *(v0 + 136) = *(v0 + 104);
  v20 = type metadata accessor for DelegateHelper();
  v21 = objc_allocWithZone(v20);
  v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_followRedirects] = v13;
  v22 = &v21[OBJC_IVAR____TtC27AccountsUISupportServiceLib14DelegateHelper_authenticator];
  v23 = *(v0 + 136);
  *v22 = *(v0 + 120);
  v22[1] = v23;
  sub_10000A744(v0 + 120, v0 + 152, &qword_100055310, &qword_100045C20);
  *(v0 + 184) = v21;
  *(v0 + 192) = v20;
  v24 = objc_msgSendSuper2((v0 + 184), "init");
  *(v0 + 288) = v24;
  v25 = swift_task_alloc();
  *(v0 + 296) = v25;
  *v25 = v0;
  v25[1] = sub_1000244F8;
  v26 = *(v0 + 280);

  return NSURLSession.data(for:delegate:)(v26, v24);
}

uint64_t sub_100031828(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_10001BD40(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100041BD4();
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
    return result;
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
  return result;
}

uint64_t sub_100031954(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
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

  v3 = sub_10001C078(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100003288(&qword_100054DD8, "Z&");
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
    return result;
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
  return result;
}

char *sub_100031A8C(char *result)
{
  v2 = *(result + 2);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_10001C5A0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[2 * v7 + 32], v6 + 32, 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
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
  return result;
}

uint64_t SimpleURLSessionNetworkAPI.baseURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v4 = sub_100041D04();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SimpleURLSessionNetworkAPI.init(sessionDescription:configuration:baseURL:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v9 = sub_100041D04();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v4 + v8, a4, v9);
  v11 = [objc_opt_self() sessionWithConfiguration:a3];
  *(v4 + 16) = v11;
  if (a2)
  {
    v12 = v11;
    v13 = sub_1000424E4();

    v11 = v12;
  }

  else
  {
    v13 = 0;
  }

  [v11 setSessionDescription:v13];

  (*(v10 + 8))(a4, v9);
  return v4;
}

uint64_t SimpleURLSessionNetworkAPI.deinit()
{
  v1 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v2 = sub_100041D04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SimpleURLSessionNetworkAPI.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC27AccountsUISupportServiceLib26SimpleURLSessionNetworkAPI_baseURL;
  v2 = sub_100041D04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t sub_100031E3C@<X0>(int64_t a2@<X8>)
{
  v4 = sub_100003288(&qword_100054958, &qword_100043920);
  __chkstk_darwin(v4 - 8);
  v58 = &v54 - v5;
  v6 = sub_100041D04();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request.makeURL(baseURL:)(v8);
  v55 = v8;
  sub_100041A84();
  sub_100041A54();
  sub_10001DE88(v2[6], v2[7]);
  v59 = a2;
  sub_100041AB4();
  v54 = v2;
  v9 = v2[4];
  v10 = 1 << *(v9 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v9 + 64);
  v13 = (v10 + 63) >> 6;

  v14 = 0;
  v15 = 0xE600000000000000;
LABEL_22:
  if (v12)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v26 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v36 = sub_100042A54();
      if (!v36)
      {
        goto LABEL_65;
      }

LABEL_44:
      v37 = 0;
      v55 = v15 & 0xFFFFFFFFFFFFFF8;
      v56 = v15 & 0xC000000000000001;
      while (1)
      {
        if (v56)
        {
          v38 = sub_100042974();
        }

        else
        {
          if (v37 >= *(v55 + 16))
          {
            goto LABEL_63;
          }

          v38 = *(v15 + 8 * v37 + 32);
        }

        v39 = v38;
        v40 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_62;
        }

        v41 = v36;
        v42 = [v38 domain];
        sub_1000424F4();

        v62._countAndFlagsBits = 46;
        v62._object = 0xE100000000000000;
        v43 = sub_100042644(v62);

        v44 = [v39 domain];
        v45 = sub_1000424F4();
        v47 = v46;

        if (v43)
        {
          v63._countAndFlagsBits = v45;
          v63._object = v47;
          v48 = sub_100042654(v63);
        }

        else
        {
          if (v58 == v45 && v57 == v47)
          {

            v36 = v41;
            goto LABEL_46;
          }

          v48 = sub_100042BD4();
        }

        v49 = v48;

        v36 = v41;
        if ((v49 & 1) == 0)
        {

          goto LABEL_47;
        }

LABEL_46:
        sub_1000429B4();
        sub_1000429E4();
        sub_1000429F4();
        sub_1000429C4();
LABEL_47:
        ++v37;
        if (v40 == v36)
        {
          goto LABEL_65;
        }
      }
    }

    if (v26 >= v13)
    {
      break;
    }

    v12 = *(v9 + 64 + 8 * v26);
    ++v14;
    if (v12)
    {
      v14 = v26;
LABEL_27:
      v27 = __clz(__rbit64(v12)) | (v14 << 6);
      v28 = *(*(v9 + 48) + v27);
      if (v28 <= 4)
      {
        v16 = 0x65696B6F6F43;
        if (v28 == 3)
        {
          v16 = 0x2D746E65746E6F43;
        }

        v17 = 0xEC00000065707954;
        if (v28 != 3)
        {
          v17 = 0xE600000000000000;
        }

        if (v28 == 2)
        {
          v16 = 0x2D746E65746E6F43;
          v17 = 0xEE006874676E654CLL;
        }

        v18 = 0x747065636341;
        if (*(*(v9 + 48) + v27))
        {
          v18 = 0x7A69726F68747541;
        }

        v19 = 0xED00006E6F697461;
        if (!*(*(v9 + 48) + v27))
        {
          v19 = 0xE600000000000000;
        }

        v20 = *(*(v9 + 48) + v27) <= 1u;
      }

      else
      {
        v16 = 0x65676E6152;
        if (v28 != 8)
        {
          v16 = 0x6B6F6F432D746553;
        }

        v17 = 0xE500000000000000;
        if (v28 != 8)
        {
          v17 = 0xEA00000000006569;
        }

        if (v28 == 7)
        {
          v16 = 0x616D67617250;
          v17 = 0xE600000000000000;
        }

        v18 = 1734431813;
        if (v28 != 5)
        {
          v18 = 0x6E6F697461636F4CLL;
        }

        v19 = 0xE400000000000000;
        if (v28 != 5)
        {
          v19 = 0xE800000000000000;
        }

        v20 = *(*(v9 + 48) + v27) <= 6u;
      }

      if (v20)
      {
        v21 = v18;
      }

      else
      {
        v21 = v16;
      }

      if (v20)
      {
        v22 = v19;
      }

      else
      {
        v22 = v17;
      }

      v12 &= v12 - 1;
      v23 = (*(v9 + 56) + 16 * v27);
      v24 = *v23;
      v25 = v23[1];

      v61.value._countAndFlagsBits = v24;
      v61.value._object = v25;
      v64._countAndFlagsBits = v21;
      v64._object = v22;
      sub_100041AC4(v61, v64);

      goto LABEL_22;
    }
  }

  v29 = v58;
  sub_100041A94();
  v31 = v56;
  v30 = v57;
  if ((*(v56 + 48))(v29, 1, v57))
  {
    return sub_10000452C(v29);
  }

  v33 = v55;
  (*(v31 + 16))(v55, v29, v30);
  sub_10000452C(v29);
  v58 = sub_100041CE4();
  v35 = v34;
  result = (*(v31 + 8))(v33, v30);
  v57 = v35;
  if (!v35)
  {
    return result;
  }

  v15 = v54[5];
  v60 = _swiftEmptyArrayStorage;
  if (v15 >> 62)
  {
    goto LABEL_64;
  }

  v36 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v36)
  {
    goto LABEL_44;
  }

LABEL_65:

  v50 = objc_opt_self();
  sub_1000165CC();
  isa = sub_1000426E4().super.isa;

  v52 = [v50 requestHeaderFieldsWithCookies:isa];

  v53 = sub_100042474();
  sub_100032844(v53);
}

uint64_t URLRequest.init(request:baseURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int64_t a3@<X8>)
{
  sub_100031E3C(a3);
  sub_100005000(a1);
  v5 = sub_100041D04();
  v6 = *(*(v5 - 8) + 8);

  return v6(a2, v5);
}

uint64_t Request.makeURL(baseURL:)@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_100003288(&qword_100054958, &qword_100043920);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = sub_100041D04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003288(&qword_100055330, &qword_100045C78);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_100041C24();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100041CC4();
  sub_100041C04();
  (*(v5 + 8))(v7, v4);
  result = (*(v12 + 48))(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v16 = sub_100041BE4();
    v17 = _swiftEmptyArrayStorage;
    if (v16)
    {
      v17 = v16;
    }

    v20 = v17;

    sub_100031828(v18);
    if (v20[2])
    {
    }

    sub_100041BF4();
    sub_100041C14();
    result = (*(v5 + 48))(v3, 1, v4);
    if (result != 1)
    {
      (*(v12 + 8))(v14, v11);

      return (*(v5 + 32))(v19, v3, v4);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100032844(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];

    v18._countAndFlagsBits = v16;
    v18._object = v17;
    v19._countAndFlagsBits = v13;
    v19._object = v14;
    sub_100041AA4(v18, v19);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100032998(uint64_t a1, uint64_t a2, unsigned __int8 a3, void (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v4 = a3;
  v5 = 0xE600000000000000;
  if (a3 > 4u)
  {
    v13 = 0x616D67617250;
    v14 = 0xE500000000000000;
    v15 = 0x65676E6152;
    if (a3 != 8)
    {
      v15 = 0x6B6F6F432D746553;
      v14 = 0xEA00000000006569;
    }

    if (a3 != 7)
    {
      v13 = v15;
      v5 = v14;
    }

    v16 = 0xE400000000000000;
    v17 = 1734431813;
    if (a3 != 5)
    {
      v17 = 0x6E6F697461636F4CLL;
      v16 = 0xE800000000000000;
    }

    if (a3 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v16;
    }

    else
    {
      v12 = v5;
    }
  }

  else
  {
    v6 = 0x747065636341;
    v7 = 0xEE006874676E654CLL;
    v8 = 0x2D746E65746E6F43;
    v9 = 0xEC00000065707954;
    v10 = 0x2D746E65746E6F43;
    if (a3 != 3)
    {
      v10 = 0x65696B6F6F43;
      v9 = 0xE600000000000000;
    }

    if (a3 != 2)
    {
      v8 = v10;
      v7 = v9;
    }

    if (a3)
    {
      v6 = 0x7A69726F68747541;
      v5 = 0xED00006E6F697461;
    }

    if (a3 <= 1u)
    {
      v11 = v6;
    }

    else
    {
      v11 = v8;
    }

    if (v4 <= 1)
    {
      v12 = v5;
    }

    else
    {
      v12 = v7;
    }
  }

  a4(a1, a2, v11, v12);
}

uint64_t URLRequest.setByteRange(_:)()
{
  v1._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1000425C4(v2);
  v3._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v3);

  v4.value._countAndFlagsBits = 0x3D7365747962;
  v5._countAndFlagsBits = 0x65676E6152;
  v4.value._object = 0xE600000000000000;
  v5._object = 0xE500000000000000;
  sub_100041AC4(v4, v5);
}

{
  v1._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1000425C4(v2);
  v3.value._countAndFlagsBits = 0x3D7365747962;
  v4._countAndFlagsBits = 0x65676E6152;
  v3.value._object = 0xE600000000000000;
  v4._object = 0xE500000000000000;
  sub_100041AC4(v3, v4);
}

void URLRequest.setByteRange(_:)(uint64_t a1, uint64_t a2)
{
  v3._countAndFlagsBits = sub_100042BA4();
  sub_1000425C4(v3);

  v4._countAndFlagsBits = 45;
  v4._object = 0xE100000000000000;
  sub_1000425C4(v4);
  if (__OFSUB__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v5._countAndFlagsBits = sub_100042BA4();
    sub_1000425C4(v5);

    v6.value._countAndFlagsBits = 0x3D7365747962;
    v7._countAndFlagsBits = 0x65676E6152;
    v6.value._object = 0xE600000000000000;
    v7._object = 0xE500000000000000;
    sub_100041AC4(v6, v7);
  }
}

uint64_t type metadata accessor for SimpleURLSessionNetworkAPI(uint64_t a1)
{
  result = qword_100055360;
  if (!qword_100055360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032DEC(uint64_t a1)
{
  result = sub_100041D04();
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

uint64_t sub_100032EA0(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = sub_100042234();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1000421C4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1000421F4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

uint64_t sub_100033020(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_100042234();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1000421C4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1000421F4();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[7];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1000331AC(uint64_t a1)
{
  result = sub_100042234();
  if (v2 <= 0x3F)
  {
    result = sub_1000421C4();
    if (v3 <= 0x3F)
    {
      result = sub_1000421F4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100033278(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000332B0(uint64_t a1)
{
  result = sub_1000423B4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ResolvedDomain.Known(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100033324(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedDomain.Known(0);
  __chkstk_darwin(v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000423B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResolvedDomain(0);
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000310A0(v1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100031104(v11, v4);
    sub_100042C64(1uLL);
    _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
    sub_100042234();
    sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind, &protocol conformance descriptor for PasswordAccount.Known.Kind);
    sub_1000424A4();
    sub_1000421C4();
    sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer, &protocol conformance descriptor for IncomingServer);
    sub_1000424A4();
    sub_1000421F4();
    sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer, &protocol conformance descriptor for OutgoingServer);
    sub_1000424A4();
    return sub_1000340E0(v4, type metadata accessor for ResolvedDomain.Known);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_100042C64(0);
    sub_100033C2C(&qword_100055558, &type metadata accessor for OAuth.Kind, &protocol conformance descriptor for OAuth.Kind);
    sub_1000424A4();
    return (*(v6 + 8))(v8, v5);
  }
}

Swift::Int sub_100033670()
{
  sub_100042C54();
  sub_100033324(v1);
  return sub_100042C94();
}

Swift::Int sub_1000336B4(uint64_t a1)
{
  sub_100042C54();
  sub_100033324(v2);
  return sub_100042C94();
}

Swift::Int sub_10003373C()
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042234();
  sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind, &protocol conformance descriptor for PasswordAccount.Known.Kind);
  sub_1000424A4();
  sub_1000421C4();
  sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer, &protocol conformance descriptor for IncomingServer);
  sub_1000424A4();
  sub_1000421F4();
  sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer, &protocol conformance descriptor for OutgoingServer);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_100033898(uint64_t a1)
{
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042234();
  sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind, &protocol conformance descriptor for PasswordAccount.Known.Kind);
  sub_1000424A4();
  sub_1000421C4();
  sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer, &protocol conformance descriptor for IncomingServer);
  sub_1000424A4();
  sub_1000421F4();
  sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer, &protocol conformance descriptor for OutgoingServer);
  return sub_1000424A4();
}

Swift::Int sub_1000339E0(uint64_t a1)
{
  sub_100042C54();
  _s23AccountsUISupportShared12EmailAddressV6DomainV0aB10ServiceLibE11IDNAEncodedV4hash4intoys6HasherVz_tF_0();
  sub_100042234();
  sub_100033C2C(&qword_100055540, &type metadata accessor for PasswordAccount.Known.Kind, &protocol conformance descriptor for PasswordAccount.Known.Kind);
  sub_1000424A4();
  sub_1000421C4();
  sub_100033C2C(&qword_100055548, &type metadata accessor for IncomingServer, &protocol conformance descriptor for IncomingServer);
  sub_1000424A4();
  sub_1000421F4();
  sub_100033C2C(&qword_100055550, &type metadata accessor for OutgoingServer, &protocol conformance descriptor for OutgoingServer);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_100033B38(uint64_t *a1, void *a2, int *a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_100042BD4() & 1) == 0 || (sub_100042224() & 1) == 0 || (sub_1000421A4() & 1) == 0)
  {
    return 0;
  }

  return sub_1000421D4();
}

uint64_t sub_100033C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100033C74(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = type metadata accessor for ResolvedDomain.Known(0);
  __chkstk_darwin(v24);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1000423B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ResolvedDomain(0);
  v10 = __chkstk_darwin(v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  v15 = sub_100003288(&qword_100055560, &qword_100045E18);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v24 - v17;
  v19 = *(v16 + 56);
  sub_1000310A0(a1, &v24 - v17);
  sub_1000310A0(v25, &v18[v19]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000310A0(v18, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v18[v19], v5);
      v21 = sub_1000423A4();
      v22 = *(v6 + 8);
      v22(v8, v5);
      v22(v14, v5);
      sub_1000340E0(v18, type metadata accessor for ResolvedDomain);
      return v21 & 1;
    }

    (*(v6 + 8))(v14, v5);
    goto LABEL_15;
  }

  sub_1000310A0(v18, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1000340E0(v12, type metadata accessor for ResolvedDomain.Known);
LABEL_15:
    sub_100034078(v18);
LABEL_18:
    v21 = 0;
    return v21 & 1;
  }

  sub_100031104(&v18[v19], v4);
  v20 = *v12 == *v4 && v12[1] == v4[1];
  if (!v20 && (sub_100042BD4() & 1) == 0 || (sub_100042224() & 1) == 0 || (sub_1000421A4() & 1) == 0 || (sub_1000421D4() & 1) == 0)
  {
    sub_1000340E0(v4, type metadata accessor for ResolvedDomain.Known);
    sub_1000340E0(v12, type metadata accessor for ResolvedDomain.Known);
    sub_1000340E0(v18, type metadata accessor for ResolvedDomain);
    goto LABEL_18;
  }

  sub_1000340E0(v4, type metadata accessor for ResolvedDomain.Known);
  sub_1000340E0(v12, type metadata accessor for ResolvedDomain.Known);
  sub_1000340E0(v18, type metadata accessor for ResolvedDomain);
  v21 = 1;
  return v21 & 1;
}

uint64_t sub_100034078(uint64_t a1)
{
  v2 = sub_100003288(&qword_100055560, &qword_100045E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000340E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100034150(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 56) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 48) + v12);

    v17 = sub_10001F724(v16);
    if ((v18 & 1) == 0)
    {

      return 0;
    }

    v19 = (*(a2 + 56) + 16 * v17);
    if (*v19 == v15 && v19[1] == v14)
    {
    }

    else
    {
      v21 = sub_100042BD4();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000342B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100042114();
  v82 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v81 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v61 - v7;
  v76 = sub_1000423E4();
  v9 = *(v76 - 8);
  v10 = __chkstk_darwin(v76);
  v73 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v71 = &v61 - v12;
  v13 = sub_100003288(&qword_100054DE0, &qword_100045C40);
  v14 = __chkstk_darwin(v13 - 8);
  result = __chkstk_darwin(v14);
  v74 = &v61 - v17;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v68 = v16;
  v18 = 0;
  v19 = *(a1 + 64);
  v62 = a1 + 64;
  v20 = 1 << *(a1 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v75 = (v9 + 32);
  v65 = v9 + 16;
  v66 = (v9 + 8);
  v77 = (v82 + 8);
  v78 = v82 + 16;
  v63 = v23;
  v64 = v9;
  v67 = a2;
  v69 = a1;
  while (v22)
  {
    v72 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v18 << 6);
LABEL_17:
    v29 = v71;
    v30 = v76;
    (*(v9 + 16))(v71, *(a1 + 48) + *(v9 + 72) * v24, v76);
    v31 = *(a1 + 56);
    v32 = v9;
    v33 = *(v31 + 8 * v24);
    v34 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    v35 = *(v34 + 48);
    v36 = *(v32 + 32);
    v37 = v68;
    v36(v68, v29, v30);
    *(v37 + v35) = v33;
    (*(*(v34 - 8) + 56))(v37, 0, 1, v34);

LABEL_18:
    v38 = v74;
    sub_100022C2C(v37, v74);
    v39 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
    v40 = 1;
    if ((*(*(v39 - 8) + 48))(v38, 1, v39) == 1)
    {
      return v40;
    }

    v41 = *(v39 + 48);
    v42 = v76;
    v43 = v73;
    (*v75)(v73, v38, v76);
    v44 = *(v38 + v41);
    v45 = v67;
    v46 = sub_10001F7AC(v43);
    v48 = v47;
    (*v66)(v43, v42);
    if ((v48 & 1) == 0 || (v70 = v18, v83 = *(*(v45 + 56) + 8 * v46), v49 = *(v83 + 16), v49 != *(v44 + 16)))
    {
LABEL_32:

      return 0;
    }

    a1 = v69;
    if (v49 && v83 != v44)
    {
      v50 = (*(v82 + 80) + 32) & ~*(v82 + 80);
      v79 = v44 + v50;
      v80 = v83 + v50;

      v51 = 0;
      while (v51 < *(v83 + 16))
      {
        v52 = *(v82 + 72) * v51;
        v53 = *(v82 + 16);
        result = v53(v8, v80 + v52, v4);
        if (v51 >= *(v44 + 16))
        {
          goto LABEL_37;
        }

        v54 = v44;
        v55 = v8;
        v56 = v81;
        v53(v81, v79 + v52, v4);
        sub_100034F64();
        v57 = sub_1000424D4();
        v58 = *v77;
        v59 = v56;
        v8 = v55;
        (*v77)(v59, v4);
        result = (v58)(v55, v4);
        if ((v57 & 1) == 0)
        {

          goto LABEL_32;
        }

        ++v51;
        v44 = v54;
        if (v49 == v51)
        {

          a1 = v69;
          goto LABEL_6;
        }
      }

      goto LABEL_36;
    }

LABEL_6:

    v23 = v63;
    v9 = v64;
    v22 = v72;
    v18 = v70;
  }

  if (v23 <= v18 + 1)
  {
    v25 = v18 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      v60 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
      v37 = v68;
      (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
      v72 = 0;
      v18 = v26;
      goto LABEL_18;
    }

    v28 = *(v62 + 8 * v27);
    ++v18;
    if (v28)
    {
      v72 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v18 = v27;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_100034924(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_10001F844(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v16 + 16)))
    {
LABEL_28:

      return 0;
    }

    if (v21)
    {
      v22 = v20 == v16;
    }

    else
    {
      v22 = 1;
    }

    if (!v22)
    {
      v23 = (v20 + 40);
      v24 = (v16 + 40);
      while (v21)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_100042BD4();
          if ((result & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v21)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_6:
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_100034ACC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100003288(&qword_100054DD0, &unk_1000452F0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  sub_1000100C8(a1, &v10 - v6);
  *a2 = *&v7[*(v5 + 56)];
  a2[1] = sub_100034BB0;
  a2[2] = 0;
  v8 = sub_1000423E4();
  return (*(*(v8 - 8) + 8))(v7, v8);
}

uint64_t sub_100034BB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100042114();
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  result = sub_100042564();
  *a2 = result;
  a2[1] = v8;
  return result;
}

Swift::Int sub_100034C7C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100042C54();
  sub_1000218E0(v4, v1);
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v4, v2);
  return sub_100042C94();
}

void sub_100034CD0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_1000218E0(a1, v3);

  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(a1, v4);
}

Swift::Int sub_100034D10(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_100042C54();
  sub_1000218E0(v5, v2);
  _s27AccountsUISupportServiceLib9SuggesterV4hash4intoys6HasherVz_tF_0(v5, v3);
  return sub_100042C94();
}

uint64_t sub_100034D60(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1000342B0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return _s27AccountsUISupportServiceLib9SuggesterV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3);
}

unint64_t sub_100034DC0()
{
  result = qword_100055568;
  if (!qword_100055568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055568);
  }

  return result;
}

BOOL sub_100034E30(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_100042114();
    ++v2;
    sub_100034F64();
  }

  while ((sub_1000424D4() & 1) == 0);
  return v3 != v4;
}

unint64_t sub_100034F64()
{
  result = qword_100055570;
  if (!qword_100055570)
  {
    sub_100042114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100055570);
  }

  return result;
}

uint64_t sub_100034FD8()
{
  v0 = sub_100042414();
  sub_100001D84(v0, qword_100055580);
  sub_100001DE8(v0, qword_100055580);
  return sub_100042404();
}

uint64_t sub_100035048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_100042BD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_100042BD4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_10003514C(char a1)
{
  sub_100042C54();
  sub_100042C64(a1 & 1);
  return sub_100042C94();
}

uint64_t sub_100035194(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

Swift::Int sub_100035260(uint64_t a1)
{
  sub_100042C54();
  sub_100035124(v3, *v1);
  return sub_100042C94();
}

uint64_t sub_1000352D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100035048(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003531C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1000383A8();
  *a2 = result;
  return result;
}

uint64_t sub_100035358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000353AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100035400(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_100042BD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1000354A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_1000354F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_100035548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100035400(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100035594@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000355DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_100035630(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t CodableResult.encode(to:)(void *a1, void *a2)
{
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v61 = a2[2];
  v4 = v61;
  v62 = v3;
  v63 = v5;
  v64 = v6;
  v10 = v5;
  v58 = a1;
  v59 = v5;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v50 = type metadata accessor for CodableResult.FailureCodingKeys(255, &v61);
  WitnessTable = swift_getWitnessTable();
  v11 = sub_100042B84();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = __chkstk_darwin(v11);
  v49 = &v39 - v13;
  v51 = *(v3 - 8);
  __chkstk_darwin(v12);
  v47 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v4;
  v62 = v3;
  v63 = v10;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  v15 = type metadata accessor for CodableResult.SuccessCodingKeys(255, &v61);
  v16 = swift_getWitnessTable();
  v43 = v15;
  v41 = v16;
  v46 = sub_100042B84();
  v45 = *(v46 - 8);
  v17 = __chkstk_darwin(v46);
  v42 = &v39 - v18;
  v44 = *(v4 - 8);
  v19 = __chkstk_darwin(v17);
  v40 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 - 1);
  __chkstk_darwin(v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v6;
  v57 = v4;
  v61 = v4;
  v62 = v3;
  v54 = v3;
  v55 = v8;
  v63 = v59;
  v64 = v6;
  v65 = v7;
  v66 = v8;
  v67 = v9;
  type metadata accessor for CodableResult.CodingKeys(255, &v61);
  swift_getWitnessTable();
  v24 = sub_100042B84();
  v59 = *(v24 - 8);
  __chkstk_darwin(v24);
  v26 = &v39 - v25;
  sub_100004C24(v58, v58[3]);
  sub_100042CC4();
  (*(v21 + 16))(v23, v60, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v51;
    v28 = v47;
    v29 = v54;
    (*(v51 + 32))(v47, v23, v54);
    LOBYTE(v61) = 1;
    v30 = v49;
    v31 = v24;
    sub_100042B34();
    v32 = v53;
    sub_100042B74();
    (*(v52 + 8))(v30, v32);
    (*(v27 + 8))(v28, v29);
    v24 = v31;
  }

  else
  {
    v33 = v44;
    v34 = v40;
    v35 = v57;
    (*(v44 + 32))(v40, v23, v57);
    LOBYTE(v61) = 0;
    v36 = v42;
    sub_100042B34();
    v37 = v46;
    sub_100042B74();
    (*(v45 + 8))(v36, v37);
    (*(v33 + 8))(v34, v35);
  }

  return (*(v59 + 8))(v26, v24);
}

uint64_t CodableResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v87 = a1;
  v73 = a9;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v70 = type metadata accessor for CodableResult.FailureCodingKeys(255, &v82);
  WitnessTable = swift_getWitnessTable();
  v62 = sub_100042B24();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v71 = &v56 - v16;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v17 = type metadata accessor for CodableResult.SuccessCodingKeys(255, &v82);
  v18 = swift_getWitnessTable();
  v67 = v17;
  v66 = v18;
  v60 = sub_100042B24();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v68 = &v56 - v19;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  type metadata accessor for CodableResult.CodingKeys(255, &v82);
  v78 = swift_getWitnessTable();
  v74 = sub_100042B24();
  v77 = *(v74 - 8);
  __chkstk_darwin(v74);
  v21 = &v56 - v20;
  v63 = a2;
  *&v82 = a2;
  *(&v82 + 1) = a3;
  v76 = a3;
  v65 = a4;
  *&v83 = a4;
  *(&v83 + 1) = a5;
  v64 = a6;
  v84 = a6;
  v85 = a7;
  v86 = a8;
  v22 = type metadata accessor for CodableResult(0, &v82);
  v72 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v56 - v27;
  __chkstk_darwin(v26);
  v30 = &v56 - v29;
  sub_100004C24(v87, v87[3]);
  v75 = v21;
  v31 = v79;
  sub_100042CB4();
  if (!v31)
  {
    v58 = v25;
    v78 = v28;
    v57 = v30;
    v79 = v22;
    v32 = v75;
    v33 = v74;
    *&v80 = sub_100042B14();
    sub_100042714();
    swift_getWitnessTable();
    *&v82 = sub_1000428C4();
    *(&v82 + 1) = v34;
    *&v83 = v35;
    *(&v83 + 1) = v36;
    sub_1000428B4();
    swift_getWitnessTable();
    sub_100042794();
    v37 = v80;
    if (v80 == 2 || (v56 = v82, v80 = v82, v81 = v83, (sub_1000427A4() & 1) == 0))
    {
      v46 = sub_100042994();
      swift_allocError();
      v48 = v47;
      sub_100003288(qword_100055598, &qword_100045ED0);
      *v48 = v79;
      sub_100042AC4();
      sub_100042984();
      (*(*(v46 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v46);
      swift_willThrow();
      (*(v77 + 8))(v32, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v37)
      {
        LOBYTE(v80) = 1;
        v38 = v71;
        v39 = v33;
        sub_100042AB4();
        v41 = v72;
        v40 = v73;
        v42 = v77;
        v43 = v62;
        sub_100042B04();
        (*(v61 + 8))(v38, v43);
        (*(v42 + 8))(v32, v39);
        swift_unknownObjectRelease();
        v44 = v58;
      }

      else
      {
        LOBYTE(v80) = 0;
        v49 = v68;
        v50 = v33;
        sub_100042AB4();
        v41 = v72;
        v40 = v73;
        v51 = v77;
        v52 = v60;
        sub_100042B04();
        (*(v59 + 8))(v49, v52);
        (*(v51 + 8))(v32, v50);
        swift_unknownObjectRelease();
        v44 = v78;
      }

      v45 = v79;
      swift_storeEnumTagMultiPayload();
      v54 = *(v41 + 32);
      v55 = v57;
      v54(v57, v44, v45);
      v54(v40, v55, v45);
    }
  }

  return sub_100004BD8(v87);
}

uint64_t static CodableResult<>.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a7;
  v51 = a1;
  v52 = a2;
  v49 = *(a4 - 8);
  v11 = __chkstk_darwin(a1);
  v45 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v13 - 8);
  __chkstk_darwin(v11);
  v44 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[0] = v15;
  v53[1] = v16;
  v50 = v16;
  v53[2] = v17;
  v53[3] = v18;
  v53[4] = v19;
  v53[5] = v20;
  v53[6] = v21;
  v22 = type metadata accessor for CodableResult(0, v53);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v44 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v47 = *(TupleTypeMetadata2 - 8);
  v30 = __chkstk_darwin(TupleTypeMetadata2);
  v32 = &v44 - v31;
  v33 = *(v30 + 48);
  v34 = *(v23 + 16);
  v34(&v44 - v31, v51, v22);
  v34(&v32[v33], v52, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34(v26, v32, v22);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v49;
      v35 = v50;
      v37 = v45;
      (*(v49 + 32))(v45, &v32[v33], v50);
      v38 = sub_1000424D4();
      v39 = *(v36 + 8);
      v39(v37, v35);
      v39(v26, v35);
      goto LABEL_10;
    }

    (*(v49 + 8))(v26, v50);
LABEL_7:
    v38 = 0;
    v23 = v47;
    v22 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  v34(v28, v32, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v48 + 8))(v28, a3);
    goto LABEL_7;
  }

  v40 = v48;
  v41 = v44;
  (*(v48 + 32))(v44, &v32[v33], a3);
  v38 = sub_1000424D4();
  v42 = *(v40 + 8);
  v42(v41, a3);
  v42(v28, a3);
LABEL_10:
  (*(v23 + 8))(v32, v22);
  return v38 & 1;
}

uint64_t _s20AccountsUISupportXPC13CodableResultOyACyxq_GxyYaYbq_YKXEYacfC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a1;
  v8[10] = a5;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = a8;
  v8[7] = v18;
  v8[8] = v19;
  v11 = type metadata accessor for CodableResult(0, (v8 + 2));
  v8[11] = v11;
  v8[12] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[13] = v12;
  v8[14] = *(a5 - 8);
  v13 = swift_task_alloc();
  v8[15] = v13;
  v8[16] = swift_task_alloc();
  v16 = (a2 + *a2);
  v14 = swift_task_alloc();
  v8[17] = v14;
  *v14 = v8;
  v14[1] = sub_100036BD8;

  return v16(v12, v13);
}

uint64_t sub_100036BD8()
{

  if (v0)
  {
    v1 = sub_100036D9C;
  }

  else
  {
    v1 = sub_100036CE8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100036CE8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  swift_storeEnumTagMultiPayload();
  (*(v2 + 32))(v4, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100036D9C()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = v0[9];
  v4 = *(v0[14] + 32);
  v4(v1, v0[15], v2);
  v4(v3, v1, v2);
  swift_storeEnumTagMultiPayload();

  v5 = v0[1];

  return v5();
}

uint64_t _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v12);
  }

  (*(v7 + 32))(v10, v12, v6);
  (*(v7 + 16))(a2, v10, v6);
  swift_willThrowTypedImpl();
  return (*(v7 + 8))(v10, v6);
}

uint64_t _s20AccountsUISupportXPC13CodableResultOAA0aB6Shared09ErrorWithC0R_rlE13captureAndGet7closurexACyxq_GyYaKXE_tYaq_YKFZ(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a8;
  v8[17] = v24;
  v8[14] = a1;
  v8[15] = a5;
  v8[18] = *(a5 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v15 = *(a8 + 8);
  v8[23] = v15;
  v8[2] = a4;
  v8[3] = a5;
  v8[4] = a6;
  v8[5] = a7;
  v8[6] = v22;
  v8[7] = v23;
  v8[8] = v15;
  v16 = type metadata accessor for CodableResult(0, (v8 + 2));
  v8[24] = v16;
  v8[25] = *(v16 - 8);
  v17 = swift_task_alloc();
  v8[26] = v17;
  v20 = (a2 + *a2);
  v18 = swift_task_alloc();
  v8[27] = v18;
  *v18 = v8;
  v18[1] = sub_10003729C;

  return v20(v17);
}

uint64_t sub_10003729C()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1000377C0;
  }

  else
  {
    v2 = sub_1000373B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000373B0()
{
  v1 = *(v0 + 224);
  _s20AccountsUISupportXPC13CodableResultO3getxyq_YKF(*(v0 + 192), *(v0 + 176), *(v0 + 112));
  v2 = *(v0 + 200);
  if (v1)
  {
    v3 = *(v0 + 176);
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 120);
    (*(v2 + 8))(*(v0 + 208), *(v0 + 192));
    v7 = *(v5 + 32);
    v7(v4, v3, v6);
    v8 = sub_100042BB4();
    if (v8)
    {
      v9 = v8;
      (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 120));
    }

    else
    {
      v11 = *(v0 + 152);
      v12 = *(v0 + 120);
      v9 = swift_allocError();
      v7(v13, v11, v12);
    }

    *(v0 + 96) = v9;
    swift_errorRetain();
    sub_100003288(&qword_1000550B0, &unk_100045550);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 160);
      v14 = *(v0 + 168);
      v16 = *(v0 + 136);
      v17 = *(v0 + 144);
      v18 = *(v0 + 120);

      (*(v17 + 32))(v15, v14, v18);
      (*(v17 + 16))(v16, v15, v18);
      swift_willThrowTypedImpl();
      (*(v17 + 8))(v15, v18);
    }

    else
    {

      if (qword_100055578 != -1)
      {
        swift_once();
      }

      v19 = sub_100042414();
      sub_100001DE8(v19, qword_100055580);
      swift_errorRetain();
      v20 = sub_1000423F4();
      v21 = sub_1000427C4();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        swift_errorRetain();
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "XPC failure: %@", v22, 0xCu);
        sub_100022824(v23);
      }

      swift_getErrorValue();
      sub_100042BC4();
      sub_100042194();

      swift_willThrowTypedImpl();
    }

    v10 = *(v0 + 8);
  }

  else
  {
    (*(v2 + 8))();

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1000377C0()
{
  v0[12] = v0[28];
  swift_errorRetain();
  sub_100003288(&qword_1000550B0, &unk_100045550);
  if (swift_dynamicCast())
  {
    v2 = v0[20];
    v1 = v0[21];
    v3 = v0[17];
    v4 = v0[18];
    v5 = v0[15];

    (*(v4 + 32))(v2, v1, v5);
    (*(v4 + 16))(v3, v2, v5);
    swift_willThrowTypedImpl();
    (*(v4 + 8))(v2, v5);
  }

  else
  {

    if (qword_100055578 != -1)
    {
      swift_once();
    }

    v6 = sub_100042414();
    sub_100001DE8(v6, qword_100055580);
    swift_errorRetain();
    v7 = sub_1000423F4();
    v8 = sub_1000427C4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v11;
      *v10 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "XPC failure: %@", v9, 0xCu);
      sub_100022824(v10);
    }

    swift_getErrorValue();
    sub_100042BC4();
    sub_100042194();

    swift_willThrowTypedImpl();
  }

  v12 = v0[1];

  return v12();
}

uint64_t static CodableResult<>.logAndIgnoreErrors(closure:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v8 = (a2 + *a2);
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_100037BC0;

  return v8(a1);
}

uint64_t sub_100037BC0()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_100037D60;
  }

  else
  {
    v2 = sub_100037CD4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100037CD4()
{
  (*(*(v0[3] - 8) + 56))(v0[2], 0, 1);
  v1 = v0[1];

  return v1();
}

uint64_t sub_100037D60()
{
  if (qword_100055578 != -1)
  {
    swift_once();
  }

  v1 = sub_100042414();
  sub_100001DE8(v1, qword_100055580);
  swift_errorRetain();
  v2 = sub_1000423F4();
  v3 = sub_1000427C4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "XPC failure: %@", v4, 0xCu);
    sub_100022824(v5);
  }

  else
  {
  }

  (*(*(v0[3] - 8) + 56))(v0[2], 1, 1);
  v7 = v0[1];

  return v7();
}

uint64_t sub_100037F30(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100037FAC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_1000380D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t $DistributedService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v4 = sub_100041F84();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static $DistributedService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for $DistributedService(0);
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  result = sub_100041D84();
  if (!v2 && !result)
  {
    v6 = swift_distributedActor_remote_initialize();
    v7 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v8 = sub_100041F84();
    (*(*(v8 - 8) + 16))(v6 + v7, a1, v8);
    *(v6 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a2;

    return v6;
  }

  return result;
}

uint64_t type metadata accessor for $DistributedService(uint64_t a1)
{
  result = qword_1000557E8;
  if (!qword_1000557E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t $DistributedService.deinit()
{
  v1 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  sub_100041DA4();
  v2 = sub_100041F84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedService.__deallocating_deinit()
{
  is_remote = swift_distributed_actor_is_remote();
  v2 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  if ((is_remote & 1) == 0)
  {
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
    sub_100041DA4();
  }

  v3 = sub_100041F84();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int $DistributedService.hashValue.getter()
{
  sub_100042C54();
  type metadata accessor for $DistributedService(0);
  sub_1000419EC(&qword_1000557A8, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t $DistributedService.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedService.init(actorSystem:)(a1);
  return v2;
}

uint64_t $DistributedService.init(actorSystem:)(uint64_t a1)
{
  v8 = sub_100041F84();
  v3 = *(v8 - 8);
  __chkstk_darwin(v8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v6 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem;
  *(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = a1;
  type metadata accessor for $DistributedService(0);
  v9 = a1;
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);

  sub_100041D94();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id, v5, v8);
  v9 = *(v1 + v6);

  sub_100041D44();

  return v1;
}

uint64_t $DistributedService.unownedExecutor.getter()
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    return sub_100041D34();
  }

  return v0;
}

uint64_t sub_100038B78(uint64_t a1, uint64_t a2)
{
  if ((sub_100041E74() & 1) == 0)
  {
    type metadata accessor for $DistributedService(0);
    return sub_100041D34();
  }

  return v2;
}

uint64_t sub_100038BCC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  type metadata accessor for $DistributedService(0);
  sub_100041FD4();
  sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);
  result = sub_100041D84();
  if (!v4 && !result)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
    v10 = sub_100041F84();
    (*(*(v10 - 8) + 16))(v8 + v9, a1, v10);
    *(v8 + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem) = v6;

    return v8;
  }

  return result;
}

uint64_t DistributedService<>.checkIsAvailable()(uint64_t a1, uint64_t a2)
{
  v3 = sub_100041E24();

  return _swift_task_switch(sub_100038D88, v3, v2);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_100041E84();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  v3[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();
  v7 = swift_checkMetadataState();
  v3[13] = v7;
  v3[14] = *(v7 - 8);
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_10003971C, 0, 0);
}

uint64_t sub_100038DA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000E968;

  return sub_100038E44();
}

uint64_t sub_100038E44()
{
  v1[3] = v0;
  v2 = sub_100041E84();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_100041F44();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100038F60, 0, 0);
}

uint64_t sub_100038F60()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[3] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[10] = v1;
    v0[2] = v1;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);

    sub_100041D74();
    v2 = type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder, &protocol conformance descriptor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    v3 = sub_100003288(&qword_1000550B0, &unk_100045550);
    sub_100041DE4();
    sub_100041DC4();
    sub_100041E94();
    v5 = swift_task_alloc();
    v0[11] = v5;
    v6 = sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_10003929C;
    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v9, v8, v7, v3, v2, v3, v6, &protocol self-conformance witness table for Error);
  }

  else
  {
    v4 = v0[3];

    return _swift_task_switch(sub_100038D88, v4, 0);
  }
}

uint64_t sub_10003929C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_100039470;
  }

  else
  {
    v2 = sub_1000393B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000393B0()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100039470()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10003971C()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    v1 = sub_100003288(&qword_1000550B0, &unk_100045550);
    sub_100041DE4();
    sub_100041DC4();
    sub_100041E94();
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_100039A74;
    v7 = v0[12];
    v8 = v0[8];
    v9 = v0[7];
    v10 = v0[4];
    v11 = v0[2];

    return dispatch thunk of DistributedActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v10, v9, v7, v1, v11, v1, v8, &protocol self-conformance witness table for Error);
  }

  else
  {
    v12 = (*(v0[3] + 16) + **(v0[3] + 16));
    v2 = swift_task_alloc();
    v0[18] = v2;
    *v2 = v0;
    v2[1] = sub_100039C68;
    v3 = v0[3];
    v4 = v0[2];

    return v12(v4, v3);
  }
}

uint64_t sub_100039A74()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100039DB8;
  }

  else
  {
    v2 = sub_100039B88;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100039B88()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[10];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100039C68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100039DB8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v2 + 8))(v1, v3);
  (*(v0[14] + 8))(v0[15], v0[13]);

  v4 = v0[1];

  return v4();
}

uint64_t DistributedService<>.validate(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100041E24();

  return _swift_task_switch(sub_100041A38, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_100042394();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003A970, 0, 0);
}

{
  v5 = sub_100041E24();

  return _swift_task_switch(sub_10003BD20, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_100042264();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = sub_100003288(&qword_100055128, &unk_100045710);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003C688, 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_100042294();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = sub_100003288(&qword_100055190, &unk_100045860);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003EA00, 0, 0);
}

uint64_t sub_100039F1C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_100039FD8(a1, a2);
}

uint64_t sub_100039FD8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_100042394();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_100041F44();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003A1BC, 0, 0);
}

uint64_t sub_10003A1BC()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);

    sub_100041D74();
    v2 = type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder, &protocol conformance descriptor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v3 = sub_100042384();
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_10003A59C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v9, v8, v7, v6, &type metadata for Never, v3, v2, &type metadata for Never);
  }

  else
  {
    v4 = v0[5];

    return _swift_task_switch(sub_100041A38, v4, 0);
  }
}

uint64_t sub_10003A59C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100041A48;
  }

  else
  {
    v2 = sub_100041A40;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003A970()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v7 = sub_100042384();
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_10003AD90;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, v11, v10, v9, &type metadata for Never, v7, v12, &type metadata for Never);
  }

  else
  {
    v14 = (*(v0[5] + 32) + **(v0[5] + 32));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_100041A50;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v14(v5, v3, v4, v2);
  }
}

uint64_t sub_10003AD90()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_100041A34;
  }

  else
  {
    v2 = sub_100041A4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t DistributedService<>.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_100041E24();

  return _swift_task_switch(sub_100041A3C, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_100042394();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003B880, 0, 0);
}

{
  v5 = sub_100041E24();

  return _swift_task_switch(sub_10003CB24, v5, v4);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_100042264();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = sub_100003288(&qword_100055128, &unk_100045710);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003D7A0, 0, 0);
}

{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = sub_100041E84();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_100042294();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v9 = sub_100003288(&qword_100055190, &unk_100045860);
  v5[13] = v9;
  v5[14] = *(v9 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  v5[17] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[18] = AssociatedTypeWitness;
  v5[19] = *(AssociatedTypeWitness - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_checkMetadataState();
  v5[21] = v11;
  v5[22] = *(v11 - 8);
  v5[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003F77C, 0, 0);
}

uint64_t sub_10003AF34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003AFF0(a1, a2);
}

uint64_t sub_10003AFF0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_100042394();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_100003288(&qword_1000550B8, &qword_1000455C8);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_100041F44();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003B1D4, 0, 0);
}

uint64_t sub_10003B1D4()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);

    sub_100041D74();
    v2 = type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder, &protocol conformance descriptor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v3 = sub_100003288(&qword_100055110, &qword_100045668);
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_10003A59C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v9, v8, v7, v6, &type metadata for Never, v3, v2, &type metadata for Never);
  }

  else
  {
    v4 = v0[5];

    return _swift_task_switch(sub_100041A3C, v4, 0);
  }
}

uint64_t sub_10003B880()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v7 = sub_100003288(&qword_100055110, &qword_100045668);
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_10003AD90;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, v11, v10, v9, &type metadata for Never, v7, v12, &type metadata for Never);
  }

  else
  {
    v14 = (*(v0[5] + 48) + **(v0[5] + 48));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_100041A50;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v14(v5, v3, v4, v2);
  }
}

uint64_t sub_10003BD40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003BDFC(a1, a2);
}

uint64_t sub_10003BDFC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_100042264();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_100041F44();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003BFE0, 0, 0);
}

uint64_t sub_10003BFE0()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);

    sub_100041D74();
    v2 = type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder, &protocol conformance descriptor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v3 = sub_100042254();
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_10003A59C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v9, v8, v7, v6, &type metadata for Never, v3, v2, &type metadata for Never);
  }

  else
  {
    v4 = v0[5];

    return _swift_task_switch(sub_10003BD20, v4, 0);
  }
}

uint64_t sub_10003C688()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v7 = sub_100042254();
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_10003AD90;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, v11, v10, v9, &type metadata for Never, v7, v12, &type metadata for Never);
  }

  else
  {
    v14 = (*(v0[5] + 64) + **(v0[5] + 64));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_100041A50;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v14(v5, v3, v4, v2);
  }
}

uint64_t sub_10003CB44(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003CC00(a1, a2);
}

uint64_t sub_10003CC00(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_100042264();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_100003288(&qword_100055128, &unk_100045710);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_100041F44();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003CDE4, 0, 0);
}

uint64_t sub_10003CDE4()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);

    sub_100041D74();
    v2 = type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder, &protocol conformance descriptor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v3 = sub_100003288(&qword_100055178, &qword_1000457B8);
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_10003D1D8;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v9, v8, v7, v6, &type metadata for Never, v3, v2, &type metadata for Never);
  }

  else
  {
    v4 = v0[5];

    return _swift_task_switch(sub_10003CB24, v4, 0);
  }
}

uint64_t sub_10003D1D8()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_10003D3EC;
  }

  else
  {
    v2 = sub_10003D2EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003D2EC()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10003D3EC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);
  (*(v0[16] + 8))(v0[17], v0[15]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10003D7A0()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v7 = sub_100003288(&qword_100055178, &qword_1000457B8);
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_10003DBD4;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, v11, v10, v9, &type metadata for Never, v7, v12, &type metadata for Never);
  }

  else
  {
    v14 = (*(v0[5] + 80) + **(v0[5] + 80));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_10003DE10;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v14(v5, v3, v4, v2);
  }
}

uint64_t sub_10003DBD4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_10003DFA4;
  }

  else
  {
    v2 = sub_10003DCE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003DCE8()
{
  v2 = v0[22];
  v1 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10003DE10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10003DFA4()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  (*(v0[22] + 8))(v0[23], v0[21]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10003E0B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003E174(a1, a2);
}

uint64_t sub_10003E174(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_100042294();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_100041F44();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003E358, 0, 0);
}

uint64_t sub_10003E358()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);

    sub_100041D74();
    v2 = type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder, &protocol conformance descriptor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v3 = sub_100042284();
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_10003A59C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v9, v8, v7, v6, &type metadata for Never, v3, v2, &type metadata for Never);
  }

  else
  {
    v4 = v0[5];

    return _swift_task_switch(sub_100041A38, v4, 0);
  }
}

uint64_t sub_10003EA00()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v7 = sub_100042284();
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_10003AD90;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, v11, v10, v9, &type metadata for Never, v7, v12, &type metadata for Never);
  }

  else
  {
    v14 = (*(v0[5] + 96) + **(v0[5] + 96));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_100041A50;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v14(v5, v3, v4, v2);
  }
}

uint64_t sub_10003EE28(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000F77C;

  return sub_10003EEE4(a1, a2);
}

uint64_t sub_10003EEE4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_100041E84();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_100042294();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_100003288(&qword_100055190, &unk_100045860);
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();
  v7 = sub_100041F44();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();

  return _swift_task_switch(sub_10003F0C8, 0, 0);
}

uint64_t sub_10003F0C8()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = *(v0[5] + OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_actorSystem);
    v0[18] = v1;
    v0[2] = v1;
    sub_100041FD4();
    sub_1000419EC(&qword_100055090, &type metadata accessor for XPCSystem, &protocol conformance descriptor for XPCSystem);

    sub_100041D74();
    v2 = type metadata accessor for $DistributedService(0);
    sub_1000419EC(&qword_100055888, &type metadata accessor for XPCSystem.InvocationEncoder, &protocol conformance descriptor for XPCSystem.InvocationEncoder);
    sub_100041E04();
    (*(v0[10] + 16))(v0[11], v0[4], v0[9]);
    sub_100041EA4();
    sub_100041DD4();
    v3 = sub_100003288(&qword_1000551D0, &unk_100046700);
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v5 = swift_task_alloc();
    v0[19] = v5;
    sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
    *v5 = v0;
    v5[1] = sub_10003A59C;
    v6 = v0[17];
    v7 = v0[8];
    v8 = v0[5];
    v9 = v0[3];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v9, v8, v7, v6, &type metadata for Never, v3, v2, &type metadata for Never);
  }

  else
  {
    v4 = v0[5];

    return _swift_task_switch(sub_100041A3C, v4, 0);
  }
}

uint64_t sub_10003F77C()
{
  if (swift_distributed_actor_is_remote())
  {
    sub_100041E14();
    sub_100041D74();
    swift_getAssociatedConformanceWitness();
    sub_100041E04();
    (*(v0[11] + 16))(v0[12], v0[3], v0[10]);
    sub_100041EA4();
    sub_100041DD4();
    v7 = sub_100003288(&qword_1000551D0, &unk_100046700);
    sub_100041DF4();
    sub_100041DC4();
    sub_100041E94();
    v8 = swift_task_alloc();
    v0[24] = v8;
    *v8 = v0;
    v8[1] = sub_10003AD90;
    v9 = v0[20];
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v13 = v0[2];

    return dispatch thunk of DistributedActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(v13, v11, v10, v9, &type metadata for Never, v7, v12, &type metadata for Never);
  }

  else
  {
    v14 = (*(v0[5] + 112) + **(v0[5] + 112));
    v1 = swift_task_alloc();
    v0[26] = v1;
    *v1 = v0;
    v1[1] = sub_100041A50;
    v2 = v0[5];
    v3 = v0[3];
    v4 = v0[4];
    v5 = v0[2];

    return v14(v5, v3, v4, v2);
  }
}

Swift::Int sub_10003FBB0(uint64_t a1, uint64_t a2)
{
  sub_100042C54();
  type metadata accessor for $DistributedService(0);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10003FC10(uint64_t a1)
{
  type metadata accessor for $DistributedService(0);
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  return sub_100041E44();
}

Swift::Int sub_10003FC8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100042C54();
  type metadata accessor for $DistributedService(0);
  sub_1000424A4();
  return sub_100042C94();
}

uint64_t sub_10003FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = *a4;
  v7 = *a5;
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_10000E968;

  return DistributedService<>.checkIsAvailable()(v6, v7);
}

uint64_t sub_10003FD94(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_100041DB4();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_100031330;

  return DistributedService<>.validate(_:)(a3, v13, v14, v15);
}

uint64_t sub_10003FF24(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_100041DB4();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_100031330;

  return DistributedService<>.resolve(_:)(a3, v13, v14, v15);
}

uint64_t sub_1000400B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_100041DB4();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_100031330;

  return DistributedService<>.validate(_:)(a3, v13, v14, v15);
}

uint64_t sub_100040244(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_100041DB4();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_100030800;

  return DistributedService<>.resolve(_:)(a3, v13, v14, v15);
}

uint64_t sub_1000403D4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_100041DB4();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_100031330;

  return DistributedService<>.validate(_:)(a3, v13, v14, v15);
}

uint64_t sub_100040564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *a2;
  v8[2] = *a2;
  v8[3] = *(v12 - 8);
  v13 = swift_task_alloc();
  v8[4] = v13;
  sub_100041DB4();
  v14 = *a4;
  v15 = *a5;
  v16 = swift_task_alloc();
  v8[5] = v16;
  *v16 = v8;
  v16[1] = sub_100031330;

  return DistributedService<>.resolve(_:)(a3, v13, v14, v15);
}

uint64_t sub_1000407CC(uint64_t a1)
{
  result = sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000408FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20AccountsUISupportXPC19_DistributedService_id;
  v5 = sub_100041F84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100040978(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for $DistributedService(0);
  v5 = sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);

  return static DistributedActor.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t sub_100040A04(uint64_t a1)
{
  type metadata accessor for $DistributedService(0);
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  sub_1000419EC(&qword_1000552F8, &type metadata accessor for XPCSystem.ActorID, &protocol conformance descriptor for XPCSystem.ActorID);
  return sub_100041E54();
}

uint64_t sub_100040ACC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for $DistributedService(0);
  sub_1000419EC(&qword_1000557A0, type metadata accessor for $DistributedService, &protocol conformance descriptor for $DistributedService);
  sub_1000419EC(&qword_1000552F0, &type metadata accessor for XPCSystem.ActorID, &protocol conformance descriptor for XPCSystem.ActorID);
  result = sub_100041E64();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100040BA4(uint64_t a1)
{
  result = sub_100041F84();
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

uint64_t sub_100040C4C(int a1, int a2, int a3, int a4, int a5, int a6, id a7)
{
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = result;
    v12 = (*(result + 24) + **(result + 24));
    v11 = swift_task_alloc();
    *(v7 + 16) = v11;
    *v11 = v7;
    v11[1] = sub_10000F77C;

    return v12(a7, v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100040D8C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 40) + **(result + 40));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_100031330;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100040F9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 56) + **(result + 56));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_100031330;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000411AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 72) + **(result + 72));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_100031330;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000413BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 88) + **(result + 88));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_100031330;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000415CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 104) + **(result + 104));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_100031330;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000417DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v11 = *a2;
  v8[2] = *a2;
  v8[3] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[4] = v12;
  sub_100041DB4();
  object_getClass(a7);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v14 = result;
    v16 = (*(result + 120) + **(result + 120));
    v15 = swift_task_alloc();
    v8[5] = v15;
    *v15 = v8;
    v15[1] = sub_100031330;

    return v16(a3, v12, a7, v14);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000419EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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