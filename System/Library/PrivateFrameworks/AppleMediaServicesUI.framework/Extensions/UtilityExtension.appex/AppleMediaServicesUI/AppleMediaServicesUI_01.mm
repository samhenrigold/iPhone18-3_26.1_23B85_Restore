uint64_t sub_10001D424(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for JSExternalAuthenticatorObject.PerformError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JSExternalAuthenticatorObject.PerformError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10001D5D4);
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

unint64_t sub_10001D61C()
{
  result = qword_100060A88;
  if (!qword_100060A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060A88);
  }

  return result;
}

uint64_t *sub_10001D67C()
{
  v2 = *(v0 + 40);
  sub_100004454((v0 + 16), v2);
  *(v1 + 56) = v2;

  return sub_1000049E0((v1 + 32));
}

uint64_t sub_10001D760()
{

  return JSError.jsRepresentation(in:)(v0);
}

uint64_t sub_10001D794()
{
  sub_100004408((v0 + 16));

  return sub_1000441AC();
}

uint64_t sub_10001D7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(a1 + 16) = a9;

  return swift_errorRetain();
}

uint64_t sub_10001D810()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_10001D83C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_10001D854()
{
  *(v0 + 16) = 0;
}

uint64_t sub_10001D894(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return swift_errorRetain();
}

uint64_t sub_10001D8B8()
{
}

uint64_t sub_10001D8D0()
{

  return sub_1000441BC();
}

uint64_t *sub_10001D960()
{
  sub_100004454((v1 + 56), v0);
  *(v2 + 56) = v0;

  return sub_1000049E0((v2 + 32));
}

id sub_10001D998@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_100043DEC();
  sub_1000061E8();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_10001E7F8();
  v10 = v9 - v8;
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v12 = result;
  sub_100043DFC();
  v13 = (*(v6 + 88))(v10, v4);
  if (v13 == enum case for BillingPlan.Category.free(_:))
  {
    v14 = sub_10000F0F4();
    v15 = a1;
    v16 = sub_10001E790();
    result = sub_100028F50(v16, v17);
    if (!result)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_4;
  }

  v18 = v13;
  v19 = enum case for BillingPlan.Category.paid(_:);
  v14 = sub_10000F0F4();
  if (v18 == v19)
  {
    v20 = a1;
    v21 = sub_10001E790();
    result = sub_100028F50(v21, v22);
    if (!result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_4:
    sub_10001E754(result);
    goto LABEL_10;
  }

  sub_10001E7BC(&type metadata for String);
  v23 = sub_10001E790();
  result = sub_100028F50(v23, v24);
  if (result)
  {
    sub_10001E754(result);
    (*(v6 + 8))(v10, v4);
LABEL_10:
    sub_10000F0F4();
    sub_100043E0C();
    v25 = a1;
    v26 = sub_10001E790();
    result = sub_100028F50(v26, v27);
    if (result)
    {
      sub_100044AEC();
      sub_100043DDC();
      v28 = v25;
      v29 = sub_10001E790();
      result = sub_100028F50(v29, v30);
      if (result)
      {
        result = sub_100044AEC();
        a2[3] = v14;
        a2[4] = &protocol witness table for JSValue;
        *a2 = v12;
        return result;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

id sub_10001DC58@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  sub_100043BDC();
  sub_1000061E8();
  v29 = v5;
  v30 = v4;
  __chkstk_darwin(v4);
  sub_10001E7F8();
  v8 = v7 - v6;
  v9 = type metadata accessor for ExternalAuthenticatorBillingPlanResponse(0);
  __chkstk_darwin(v9 - 8);
  sub_10001E7F8();
  v12 = v11 - v10;
  v28 = objc_opt_self();
  result = [v28 valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  v15 = sub_10000F0F4();
  v34 = &type metadata for String;
  v32 = sub_100043E3C();
  v33 = v16;
  v17 = a1;
  result = sub_10001E79C();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_100044AEC();
  v34 = &type metadata for String;
  v32 = sub_100043E6C();
  v33 = v18;
  v19 = v2;
  result = sub_10001E79C();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_100044AEC();
  v34 = &type metadata for String;
  v32 = sub_100043E5C();
  v33 = v20;
  v21 = v2;
  result = sub_10001E79C();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10001E82C();
  sub_100044AEC();
  sub_100043E2C();
  sub_10001D998(v2, &v32);
  if (v31)
  {

    sub_10001E388(v12);
    v27 = v35;
    result = [v28 valueWithUndefinedInContext:v2];
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    sub_10001E388(v12);
    v22 = v2;
    sub_100044A9C();
    v27 = v35;
  }

  sub_100044AEC();
  sub_100043E4C();
  v23 = sub_100043BBC();
  v25 = v24;
  (*(v29 + 8))(v8, v30);
  v34 = &type metadata for String;
  v32 = v23;
  v33 = v25;
  v26 = v2;
  result = sub_100028F50(&v32, a1);
  if (result)
  {
    result = sub_100044AEC();
    v27[3] = v15;
    v27[4] = &protocol witness table for JSValue;
    *v27 = v14;
    return result;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

id sub_10001DFA0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v5 = sub_100003514(&qword_100060A90, &unk_100047230);
  __chkstk_darwin(v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_10004403C();
  sub_1000061E8();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v39 - v15;
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = result;
  v44 = v2;
  sub_10004404C();
  if (sub_1000046E4(v7, 1, v8) == 1)
  {
    sub_10001E300(v7);
    goto LABEL_9;
  }

  v39 = v3;
  (*(v10 + 32))(v16, v7, v8);
  (*(v10 + 16))(v14, v16, v8);
  v19 = (*(v10 + 88))(v14, v8);
  v20 = enum case for UserInfo.AccountStatus.suspended(_:);
  sub_10000F0F4();
  if (v19 == v20)
  {
    v43 = &type metadata for String;
    v41 = 0x65646E6570737573;
    v42 = 0xE900000000000064;
    v21 = a1;
    v22 = sub_10001E790();
    result = sub_100028F50(v22, v23);
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    sub_10001E808(result);
    (*(v10 + 8))(v16, v8);
LABEL_9:
    v27 = sub_10000F0F4();
    v28 = sub_10004405C();
    v43 = &type metadata for String;
    v41 = v28;
    v42 = v29;
    v30 = a1;
    v31 = sub_10001E790();
    result = sub_100028F50(v31, v32);
    if (result)
    {
      sub_100044AEC();
      v33 = sub_10004406C();
      v43 = &type metadata for String;
      v41 = v33;
      v42 = v34;
      v35 = v30;
      v36 = sub_10001E790();
      result = sub_100028F50(v36, v37);
      if (result)
      {
        sub_10001E82C();
        result = sub_100044AEC();
        v38 = v40;
        v40[3] = v27;
        v38[4] = &protocol witness table for JSValue;
        *v38 = v18;
        return result;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_10001E7BC(&type metadata for String);
  v24 = sub_10001E790();
  result = sub_100028F50(v24, v25);
  if (result)
  {
    sub_10001E808(result);
    v26 = *(v10 + 8);
    v26(v16, v8);
    v26(v14, v8);
    goto LABEL_9;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10001E300(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060A90, &unk_100047230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E388(uint64_t a1)
{
  v2 = type metadata accessor for ExternalAuthenticatorBillingPlanResponse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001E3F8()
{
  sub_10001E744();
  sub_100043E1C();
  v0 = sub_10001E7E8();

  return sub_1000046E4(v0, v1, v2);
}

uint64_t sub_10001E444()
{
  sub_10001E744();
  sub_100043E1C();
  v0 = sub_10001E77C();

  return sub_10000464C(v0, v1, v2, v3);
}

uint64_t sub_10001E4A8()
{
  sub_10001E744();
  sub_100043E7C();
  v0 = sub_10001E7E8();

  return sub_1000046E4(v0, v1, v2);
}

uint64_t sub_10001E4F4()
{
  sub_10001E744();
  sub_100043E7C();
  v0 = sub_10001E77C();

  return sub_10000464C(v0, v1, v2, v3);
}

uint64_t sub_10001E578()
{
  sub_10001E744();
  sub_10004407C();
  v0 = sub_10001E7E8();

  return sub_1000046E4(v0, v1, v2);
}

uint64_t sub_10001E5C4()
{
  sub_10001E744();
  sub_10004407C();
  v0 = sub_10001E77C();

  return sub_10000464C(v0, v1, v2, v3);
}

uint64_t sub_10001E61C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001E754(uint64_t a1)
{

  return sub_100044AEC();
}

id sub_10001E79C()
{

  return sub_100028F50((v1 - 120), v0);
}

id sub_10001E7BC@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  *(v2 - 112) = 0x6E776F6E6B6E75;
  *(v2 - 104) = 0xE700000000000000;

  return v1;
}

uint64_t sub_10001E808(uint64_t a1)
{

  return sub_100044AEC();
}

void *sub_10001E8E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002EB4(0, v1, 0);
    sub_100043D6C();
    v3 = a1 + 40;
    do
    {

      v4 = sub_100043D5C();

      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_100002EB4((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6) = v4 & 1;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id sub_10001EA6C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSFeatureFlagObject();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10001EAC4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSFeatureFlagObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001EBD4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSLocalizationObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10001EE54(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = v2;
  result = sub_100044ACC();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v9 = sub_100043DBC();
    sub_1000060A4(v9, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000468F0;
    v15 = type metadata accessor for JSLogObject();
    v14[0] = v4;
    v11 = v4;
    v12 = AMSLogKey();
    if (v12)
    {
      v13 = v12;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v14);
    v15 = &type metadata for String;
    v14[0] = v7;
    v14[1] = v8;
    sub_100043D0C();
    sub_100006100(v14);
    a2(v10);
  }

  return result;
}

id sub_10001F094(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSLogObject();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10001F0EC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSLogObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10001F144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_account] = a1;
  v10 = OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_bag;
  v11 = sub_10004461C();
  v12 = *(v11 - 8);
  (*(v12 + 16))(&v5[v10], a2, v11);
  *&v5[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_clientInfo] = a3;
  v13 = &v5[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_mediaClient];
  *v13 = a4;
  *(v13 + 1) = a5;
  v16.receiver = v5;
  v16.super_class = type metadata accessor for JSMarketingObject(0);
  v14 = objc_msgSendSuper2(&v16, "init");
  (*(v12 + 8))(a2, v11);
  return v14;
}

uint64_t sub_10001F250(uint64_t a1)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v1 = sub_100044B1C();
  v2 = sub_100044B2C();

  return v2;
}

const char *sub_10001F2D4(void *a1, void *a2, void *a3)
{
  v56 = sub_10004461C();
  v51 = *(v56 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin(v56);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000448BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000444AC();
  v12 = sub_10004449C();
  if (v12)
  {
    v13 = v12;
    sub_100035540(a2, __src);
    if (v3)
    {
      goto LABEL_9;
    }

    v48 = v13;
    v49 = v11;
    v41 = v8;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v50 = a1;
    v14 = sub_100043DBC();
    v46 = sub_1000060A4(v14, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_100046830;
    v45 = v15;
    v53[3] = type metadata accessor for JSMarketingObject(0);
    v53[0] = a3;
    v16 = a3;
    v17 = AMSLogKey();
    v40 = v9;
    v47 = 0;
    if (v17)
    {
      v18 = v17;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v53);
    sub_100043CFC();
    v54[3] = &type metadata for MarketingItemRequest;
    v54[0] = swift_allocObject();
    memcpy((v54[0] + 16), __src, 0x48uLL);
    sub_10002091C(__src, v53);
    sub_100043D0C();
    sub_100006100(v54);
    sub_100043D9C();

    v46 = *&v16[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_account];
    v45 = *&v16[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_clientInfo];
    v19 = *&v16[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_mediaClient + 8];
    v44 = *&v16[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_mediaClient];
    v43 = v19;
    v20 = v51;
    (*(v51 + 16))(v52, &v16[OBJC_IVAR____TtC16UtilityExtension17JSMarketingObject_bag], v56);
    v21 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v22 = (v7 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = (v22 + 23) & 0xFFFFFFFFFFFFFFF8;
    v42 = v16;
    v24 = (v23 + 79) & 0xFFFFFFFFFFFFFFF8;
    v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    (*(v20 + 32))(v27 + v21, v52, v56);
    v28 = (v27 + v22);
    v29 = v43;
    *v28 = v44;
    v28[1] = v29;
    memcpy((v27 + v23), __src, 0x48uLL);
    v30 = v46;
    *(v27 + v24) = v46;
    v31 = v45;
    *(v27 + v25) = v45;
    v32 = v42;
    *(v27 + v26) = v42;
    v13 = v48;
    *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v48;
    v33 = v30;
    v34 = v31;

    v35 = v32;
    v36 = v50;

    v37 = v49;
    v38 = v47;
    sub_10004489C();
    if (v38)
    {
LABEL_9:
    }

    else
    {
      v13 = sub_1000448AC();

      (*(v40 + 8))(v37, v41);
    }
  }

  else
  {
    v13 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_10001F8F0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11)
{
  v49 = a8;
  v50 = a2;
  v53 = a3;
  v57 = a1;
  v47 = a5;
  v48 = a9;
  v13 = sub_1000441BC();
  v54 = *(v13 - 8);
  v55 = v13;
  __chkstk_darwin(v13);
  v51 = v14;
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000445CC();
  v16 = a7[7];
  v17 = a7[8];
  v19 = a7[1];
  v18 = a7[2];
  v20 = a7[5];
  v21 = a7[6];
  objc_allocWithZone(AMSMarketingItemTask);

  v22 = sub_100020B90(v15, v47, a6, v16, v17, v19, v18, v20, v21);
  [v22 setAccount:v49];
  [v22 setClientInfo:v48];
  if (*a7)
  {
    sub_100036F24(*a7);
    sub_100003514(&qword_100060350, &unk_100046850);
    v23.super.isa = sub_1000448DC().super.isa;
  }

  else
  {
    v23.super.isa = 0;
  }

  v49 = a11;
  [v22 setContextInfo:v23.super.isa];

  if (a7[4])
  {
    v24 = sub_10004491C();
  }

  else
  {
    v24 = 0;
  }

  [v22 setOfferHints:v24];

  sub_100003514(&qword_100060D20, qword_100047408);
  v25 = [v22 perform];
  v48 = sub_10004481C();
  v26 = v54;
  v27 = *(v54 + 16);
  v28 = v52;
  v29 = v50;
  v50 = v22;
  v30 = v55;
  v27(v52, v29, v55);
  v31 = *(v26 + 80);
  v32 = v51;
  v33 = swift_allocObject();
  v46 = a10;
  v47 = v33;
  v34 = v57;
  *(v33 + 16) = a10;
  *(v33 + 24) = v34;
  v35 = *(v26 + 32);
  v35(v33 + ((v31 + 32) & ~v31), v28, v30);
  v27(v28, v53, v30);
  v36 = (v31 + 24) & ~v31;
  v37 = (v32 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v46;
  *(v38 + 16) = v46;
  v35(v38 + v36, v28, v30);
  v40 = v57;
  *(v38 + v37) = v57;
  v56[3] = sub_1000444AC();
  v56[4] = &protocol witness table for RunLoopWorkerThread;
  v56[0] = v49;
  v41 = v39;
  v42 = v40;
  v43 = v41;
  v44 = v42;

  sub_10004478C();

  return sub_100004408(v56);
}

void sub_10001FCD8(void **a1, void *a2, void *a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v6 = sub_100043DBC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v32 = v10;
  v11 = sub_1000060A4(v6, qword_100065200);
  v12 = *(v7 + 16);
  v31 = v11;
  v12(v9);
  v13 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v35 = *(*(sub_100043D4C() - 8) + 72);
  v29 = 3 * v35;
  v30 = v13;
  v14 = swift_allocObject();
  v28 = xmmword_100046830;
  *(v14 + 16) = xmmword_100046830;
  v27 = type metadata accessor for JSMarketingObject(0);
  v37 = v27;
  v36[0] = a2;
  v26 = a2;
  v15 = AMSLogKey();
  if (v15)
  {
    v16 = v15;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v36);
  sub_100043CFC();
  v17 = v32;
  v18 = sub_100020F28(v32);
  if (v19)
  {
    v20 = &type metadata for String;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v36[2] = 0;
  }

  v36[0] = v18;
  v36[1] = v19;
  v37 = v20;
  sub_100043D0C();
  sub_100006100(v36);
  sub_100043D9C();

  (*(v7 + 8))(v9, v6);
  v21 = v17;
  v22 = sub_1000358A4(v33, v21);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000465C0;
  *(v23 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v23 + 32) = v22;
  v24 = v22;
  v25 = sub_1000441AC();
}

void sub_100020184(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v28 = a4;
  v29 = a3;
  v6 = sub_1000446CC();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v9 = sub_100043DBC();
  v30 = sub_1000060A4(v9, qword_100065200);
  v10 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v24 = 3 * *(*(sub_100043D4C() - 8) + 72);
  v25 = v10;
  v11 = swift_allocObject();
  v23 = xmmword_100046830;
  *(v11 + 16) = xmmword_100046830;
  v22 = type metadata accessor for JSMarketingObject(0);
  v34 = v22;
  v33[0] = a2;
  v21 = a2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v33);
  sub_100043CFC();
  swift_getErrorValue();
  v14 = v31;
  v15 = v32;
  v34 = v32;
  v16 = sub_1000049E0(v33);
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  sub_100043D0C();
  sub_100006100(v33);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v18.super.isa = v28;
  isa = sub_1000446AC(v18).super.isa;
  (*(v26 + 8))(v8, v27);
  *(v17 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v17 + 32) = isa;
  v20 = sub_1000441AC();
}

id sub_1000206D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMarketingObject(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSMarketingObject(uint64_t a1)
{
  result = qword_100060D10;
  if (!qword_100060D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000207F4(uint64_t a1)
{
  result = sub_10004461C();
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

uint64_t sub_1000208C4()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100020978()
{
  sub_10004461C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100020A90(void *a1, void *a2, void *a3)
{
  v7 = *(sub_10004461C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 79) & 0xFFFFFFFFFFFFFFF8;
  return sub_10001F8F0(a1, a2, a3, v3 + v8, *(v3 + v9), *(v3 + v9 + 8), (v3 + v10), *(v3 + v11), *(v3 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

id sub_100020B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_10004491C();

  v12 = sub_10004491C();

  v13 = sub_10004491C();

  v14 = sub_10004491C();

  v15 = [v9 initWithBag:a1 clientIdentifier:v11 clientVersion:v12 placement:v13 serviceType:v14];
  swift_unknownObjectRelease();

  return v15;
}

uint64_t sub_100020C90()
{
  sub_1000441BC();
  sub_100018B3C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

void sub_100020D4C(void **a1)
{
  v3 = *(sub_1000441BC() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_10001FCD8(a1, v4, v5, v6);
}

uint64_t sub_100020DC0()
{
  sub_1000441BC();
  sub_100018B3C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v7 + 8, v4 | 7);
}

void sub_100020E88(uint64_t a1)
{
  v3 = *(sub_1000441BC() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100020184(a1, v5, v1 + v4, v6);
}

uint64_t sub_100020F28(void *a1)
{
  v1 = [a1 itemID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10004494C();

  return v3;
}

id sub_100020F8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v55 = a6;
  v47 = a5;
  v48 = a4;
  v51 = a2;
  v56 = sub_10004419C();
  sub_1000061E8();
  v54 = v11;
  __chkstk_darwin(v12);
  v52 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_10004461C();
  sub_1000061E8();
  v50 = v15;
  __chkstk_darwin(v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_accountStore] = a1;
  v53 = a1;
  v19 = OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_bag;
  v21 = *(v20 + 16);
  v21(&v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_bag], a2, v14);
  v46 = v21;
  *&v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_clientInfo] = a3;
  v22 = &v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_mediaClient];
  v24 = v47;
  v23 = v48;
  *v22 = v48;
  v22[1] = v24;
  v21(v18, &v7[v19], v14);

  v49 = a3;
  swift_bridgeObjectRetain_n();
  v25 = sub_1000445CC();
  v26 = *(v50 + 1);
  v26(v18, v14);
  v50 = v26;
  v27 = objc_allocWithZone(AMSMediaTokenService);
  v28 = sub_100023070(v23, v24, v25);
  *&v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_tokenService] = v28;
  v46(v18, &v7[v19], v14);
  v29 = v28;
  v30 = sub_1000445CC();
  v31 = v14;
  v26(v18, v14);
  v32 = [objc_allocWithZone(AMSMediaRequestEncoder) initWithTokenService:v29 bag:v30];

  swift_unknownObjectRelease();
  *&v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_encoder] = v32;
  v33 = v49;
  [v32 setClientInfo:v49];
  v34 = v55;
  *&v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_urlSessionHandler] = v55;
  sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
  v35 = v52;
  *v52 = v23;
  v35[1] = v24;
  v35[2] = 0;
  v35[3] = 0;
  v36 = v35;
  v37 = v54;
  v38 = v56;
  (*(v54 + 104))(v35, enum case for JetEngineBootstrap.URLProtocolHandler.media(_:), v56);
  v39 = v34;
  v40 = v51;
  v41 = sub_100044A6C();
  (*(v37 + 8))(v36, v38);
  *&v7[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_urlSession] = v41;
  [v41 setDelegate:v39];
  v42 = type metadata accessor for JSMediaAPIObject(0);
  v57.receiver = v7;
  v57.super_class = v42;
  v43 = objc_msgSendSuper2(&v57, "init");

  v50(v40, v31);
  return v43;
}

uint64_t sub_10002136C(uint64_t a1)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v1 = sub_100044B1C();
  v2 = sub_100044B2C();

  return v2;
}

uint64_t sub_1000213F0(void *a1, void *a2, void *a3)
{
  v57 = a1;
  v5 = sub_1000448BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MediaAPIRequest(0);
  v55 = *(v9 - 8);
  v10 = *(v55 + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v56 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v48 - v12;
  sub_1000444AC();
  v13 = sub_10004449C();
  if (v13)
  {
    v14 = v13;
    v52 = v5;
    v53 = v8;
    v51 = v6;
    if (qword_10005FF30 != -1)
    {
      swift_once();
    }

    v15 = sub_100043DBC();
    v58 = sub_1000060A4(v15, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    v16 = *(sub_100043D4C() - 8);
    v17 = *(v16 + 72);
    v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100046830;
    v20 = v19 + v18;
    v61 = type metadata accessor for JSMediaAPIObject(0);
    v60[0] = a2;
    v54 = a2;
    v21 = AMSLogKey();
    if (v21)
    {
      v22 = v21;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v60);
    sub_100043CFC();
    v23 = v20 + 2 * v17;
    v61 = sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v60[0] = a3;
    v24 = a3;
    sub_100043D0C();
    sub_10001D0C8(v60, &qword_100061D00, &qword_1000465F0);
    sub_100043D9C();

    v25 = v24;
    v26 = v62;
    v27 = v59;
    sub_1000359D4(v25, v62);
    if (v27)
    {
    }

    else
    {
      v28 = *&v54[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_mediaClient + 8];
      v58 = *&v54[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_mediaClient];
      v59 = v28;
      v29 = *&v54[OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_clientInfo];

      v30 = [v29 clientVersion];
      if (v30)
      {
        v31 = v30;
        v49 = sub_10004494C();
        v50 = v32;
      }

      else
      {
        v49 = 49;
        v50 = 0xE100000000000000;
      }

      v33 = v56;
      sub_1000231E8(v26, v56);
      v34 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v35 = (v10 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
      v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
      v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
      v38 = swift_allocObject();
      sub_1000233BC(v33, v38 + v34);
      v39 = v54;
      *(v38 + v35) = v54;
      v40 = (v38 + v36);
      v41 = v59;
      *v40 = v58;
      v40[1] = v41;
      v42 = (v38 + v37);
      v43 = v50;
      *v42 = v49;
      v42[1] = v43;
      *(v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) = v14;
      v44 = v39;
      v45 = v57;

      v46 = v53;
      sub_10004489C();
      v23 = sub_1000448AC();

      (*(v51 + 8))(v46, v52);
      sub_1000237D4(v62);
    }
  }

  else
  {
    v23 = sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
  }

  return v23;
}

uint64_t sub_100021958(void *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a7;
  v52 = a8;
  v50 = a6;
  v55 = a3;
  v53 = a2;
  v58 = a1;
  v56 = a10;
  v12 = sub_1000441BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v54 = v14;
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v16 - 8);
  v18 = &v49 - v17;
  v19 = sub_100043B7C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for MediaAPIRequest(0);
  sub_100023830(a4 + *(v23 + 44), v18);
  if (sub_1000046E4(v18, 1, v19) == 1)
  {
    sub_10001D0C8(v18, &qword_100060488, &unk_100046970);
    if ((*(a4 + 72) & 1) != 0 || (v24 = *(a4 + 56)) == 0)
    {
      sub_100003514(&qword_100060DA0, &qword_100047468);
      v30 = sub_10004491C();
      v31 = AMSError();

      v25 = sub_1000447AC();
    }

    else
    {
      v25 = sub_100022C90(*(a4 + 64), v50, v51, v52, a9, *(a4 + 48), v24, *(a4 + 8));
    }

    v52 = v25;
  }

  else
  {
    (*(v20 + 32))(v22, v18, v19);
    v52 = sub_100022704(v22, v26, v27, v28, v29, a4);
    (*(v20 + 8))(v22, v19);
  }

  v32 = *(v13 + 16);
  v33 = v15;
  v32(v15, v53, v12);
  v34 = *(v13 + 80);
  v35 = v54;
  v36 = swift_allocObject();
  v37 = v58;
  *(v36 + 16) = a5;
  *(v36 + 24) = v37;
  v53 = a5;
  v38 = *(v13 + 32);
  v38(v36 + ((v34 + 32) & ~v34), v33, v12);
  v32(v33, v55, v12);
  v39 = (v34 + 24) & ~v34;
  v40 = (v35 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v53;
  *(v41 + 16) = v53;
  v38(v41 + v39, v33, v12);
  v43 = v58;
  *(v41 + v40) = v58;
  v57[3] = sub_1000444AC();
  v57[4] = &protocol witness table for RunLoopWorkerThread;
  v57[0] = v56;
  v44 = v42;
  v45 = v43;
  v46 = v44;
  v47 = v45;

  sub_10004478C();

  return sub_100004408(v57);
}

void sub_100021DC8(void **a1, void *a2, void *a3)
{
  v4 = *a1;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v5 = sub_100043DBC();
  sub_1000060A4(v5, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v16 = type metadata accessor for JSMediaAPIObject(0);
  v15[0] = a2;
  a2;
  v6 = AMSLogKey();
  if (v6)
  {
    v7 = v6;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v15);
  sub_100043CFC();
  v16 = sub_10000477C(0, &qword_100060DB0, AMSMediaResult_ptr);
  v15[0] = v4;
  v8 = v4;
  sub_100043D0C();
  sub_10001D0C8(v15, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  v9 = v8;
  v10 = sub_100036228(a3, v9);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000465C0;
  *(v11 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v11 + 32) = v10;
  v12 = v10;
  v13 = sub_1000441AC();
}

void sub_1000221D0(uint64_t a1, void *a2, uint64_t a3, objc_class *a4)
{
  v28 = a4;
  v29 = a3;
  v6 = sub_1000446CC();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v9 = sub_100043DBC();
  v30 = sub_1000060A4(v9, qword_100065200);
  v10 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v24 = 3 * *(*(sub_100043D4C() - 8) + 72);
  v25 = v10;
  v11 = swift_allocObject();
  v23 = xmmword_100046830;
  *(v11 + 16) = xmmword_100046830;
  v22 = type metadata accessor for JSMediaAPIObject(0);
  v34 = v22;
  v33[0] = a2;
  v21 = a2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v33);
  sub_100043CFC();
  swift_getErrorValue();
  v14 = v31;
  v15 = v32;
  v34 = v32;
  v16 = sub_1000049E0(v33);
  (*(*(v15 - 8) + 16))(v16, v14, v15);
  sub_100043D0C();
  sub_10001D0C8(v33, &qword_100061D00, &qword_1000465F0);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(a1);
  v18.super.isa = v28;
  isa = sub_1000446AC(v18).super.isa;
  (*(v26 + 8))(v8, v27);
  *(v17 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v17 + 32) = isa;
  v20 = sub_1000441AC();
}

uint64_t sub_100022704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v9 = type metadata accessor for MediaAPIRequest(0);
  v10 = sub_10000EA9C(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  if (*(a6 + 48) == 1)
  {
    v15 = *(v6 + OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_encoder);
    v16 = *(v6 + OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_accountStore);
    if (v16)
    {
      v16 = DynamicAccountsStore.account.getter();
    }

    [v15 setAccount:v16];
  }

  v17 = *(v7 + OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_encoder);
  sub_100043AFC(OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_encoder);
  v19 = v18;
  v20 = [v17 requestWithURL:v18];

  sub_1000231E8(a6, aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v22 = swift_allocObject();
  sub_1000233BC(aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v30 = sub_100023420;
  v31 = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100022BA4;
  v29 = &unk_10005A640;
  v23 = _Block_copy(aBlock);

  v24 = [v20 thenWithBlock:v23];
  _Block_release(v23);

  sub_100003514(&qword_100060DA8, &unk_100047470);
  v25 = [*(v7 + OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_urlSession) dataTaskPromiseWithRequestPromise:v24];
  sub_10004481C();
  v29 = sub_10004448C();
  v30 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(aBlock);
  sub_10004447C();
  sub_10000477C(0, &qword_100060DB0, AMSMediaResult_ptr);
  v26 = sub_10004476C();

  sub_100004408(aBlock);
  return v26;
}

void sub_1000229D0(void *a1, uint64_t *a2)
{
  if (a2[5])
  {
    v4 = sub_10004491C();
    [a1 setHTTPMethod:v4];
  }

  v5 = a2[3];
  if (v5 >> 60 != 15)
  {
    v6 = a2[2];
    sub_10000AC04(v6, a2[3]);
    sub_1000234A8(v6, v5, a1);
    sub_100023560(v6, v5);
  }

  v7 = *a2;
  if (v7)
  {
    v8 = 1 << *(v7 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v7 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    while (v10)
    {
      v13 = v12;
LABEL_14:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = (*(v7 + 56) + ((v13 << 10) | (16 * v14)));
      v16 = *v15;
      v17 = v15[1];

      v18 = sub_10004491C();
      sub_100023500(v16, v17, v18, a1);
    }

    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        goto LABEL_17;
      }

      v10 = *(v7 + 64 + 8 * v13);
      ++v12;
      if (v10)
      {
        v12 = v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v19 = [objc_opt_self() promiseWithResult:a1];

    v20 = v19;
  }
}

id sub_100022BA4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_100022C0C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    result = v3;
  }

  else
  {
    result = [objc_allocWithZone(AMSMediaResult) initWithResult:v3];
    v5 = result;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100022C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;

  v18 = sub_1000445CC();
  v19 = objc_allocWithZone(AMSMediaTask);
  v20 = sub_1000230D8(a1, a2, a3, a4, a5, v18);
  if (a8)
  {
    v21.super.isa = sub_1000448DC().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  [v20 setAdditionalQueryParams:v21.super.isa];

  sub_100023188(a7, v20);
  if (a6)
  {
    v22 = *(v9 + OBJC_IVAR____TtC16UtilityExtension16JSMediaAPIObject_accountStore);
    if (v22)
    {
      v22 = DynamicAccountsStore.account.getter();
    }

    [v20 setAccount:v22];
  }

  sub_100003514(&qword_100060DA0, &qword_100047468);
  v23 = [v20 perform];
  v24 = sub_10004481C();

  return v24;
}

id sub_100022E4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSMediaAPIObject(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JSMediaAPIObject(uint64_t a1)
{
  result = qword_100060D90;
  if (!qword_100060D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022FB4(uint64_t a1)
{
  result = sub_10004461C();
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

id sub_100023070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004491C();

  v6 = [v3 initWithClientIdentifier:v5 bag:a3];

  swift_unknownObjectRelease();
  return v6;
}

id sub_1000230D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10004491C();

  v10 = sub_10004491C();

  v11 = [v6 initWithType:a1 clientIdentifier:v9 clientVersion:v10 bag:a6];

  swift_unknownObjectRelease();
  return v11;
}

void sub_100023188(uint64_t a1, void *a2)
{
  isa = sub_100044A0C().super.isa;
  [a2 setItemIdentifiers:isa];
}

uint64_t sub_1000231E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPIRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002324C()
{
  type metadata accessor for MediaAPIRequest(0);
  sub_100023B38();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  v8 = *(v1 + v4 + 24);
  if (v8 >> 60 != 15)
  {
    sub_100023364(*(v7 + 16), v8);
  }

  v9 = *(v0 + 44);
  v10 = sub_100043B7C();
  if (!sub_100023B50(v10))
  {
    sub_10001D754();
    (*(v11 + 8))(v7 + v9, v0);
  }

  return _swift_deallocObject(v1, v4 + v6, v3 | 7);
}

uint64_t sub_100023364(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1000233BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPIRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100023420(void *a1)
{
  v3 = *(type metadata accessor for MediaAPIRequest(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_1000229D0(a1, v4);
}

uint64_t sub_100023490(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000234A8(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_100043B9C().super.isa;
  [a3 setHTTPBody:isa];
}

void sub_100023500(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_10004491C();
  [a4 setValue:v6 forHTTPHeaderField:a3];
}

uint64_t sub_100023560(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100023364(result, a2);
  }

  return result;
}

uint64_t sub_100023590()
{
  type metadata accessor for MediaAPIRequest(0);
  sub_100023B38();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = v1 + v4;

  v8 = *(v1 + v4 + 24);
  if (v8 >> 60 != 15)
  {
    sub_100023364(*(v7 + 16), v8);
  }

  v9 = *(v0 + 44);
  v10 = sub_100043B7C();
  if (!sub_100023B50(v10))
  {
    sub_10001D754();
    (*(v11 + 8))(v7 + v9, v0);
  }

  v12 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v1, v13 + 8, v3 | 7);
}

uint64_t sub_1000236F4(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for MediaAPIRequest(0);
  sub_10000EA9C(v7);
  v9 = v8;
  v11 = v10;
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100021958(a1, a2, a3, v3 + v12, *(v3 + v13), *(v3 + v14), *(v3 + v14 + 8), *(v3 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000237D4(uint64_t a1)
{
  v2 = type metadata accessor for MediaAPIRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023830(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060488, &unk_100046970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000238A0()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

void sub_100023960(void **a1)
{
  sub_1000441BC();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  sub_100021DC8(a1, v3, v4);
}

uint64_t sub_1000239D4()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v7 + 8, v4 | 7);
}

void sub_100023AA0(uint64_t a1)
{
  v3 = sub_1000441BC();
  sub_10000EA9C(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v9 = *(v1 + 16);
  v10 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000221D0(a1, v9, v1 + v8, v10);
}

uint64_t sub_100023B50(uint64_t a1)
{

  return sub_1000046E4(v1 + v2, 1, a1);
}

unint64_t sub_100023B70(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_100003514(&qword_100060E28, &qword_100047508);
    v2 = sub_100044CFC();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v21 = v1;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_11:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      sub_100007270(*(v1 + 48) + 40 * v11, __src);
      sub_1000034B8(*(v1 + 56) + 32 * v11, &__src[40]);
      memcpy(__dst, __src, sizeof(__dst));
      sub_100007270(__dst, v24);
      if (!swift_dynamicCast())
      {
        sub_10000AC5C(__dst, &qword_100060E30, &qword_100047510);

        goto LABEL_23;
      }

      sub_1000034B8(&__dst[40], v24);
      sub_10000AC5C(__dst, &qword_100060E30, &qword_100047510);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      result = sub_100006DFC(v22, v23);
      v12 = result;
      if (v13)
      {
        v14 = (v2[6] + 16 * result);
        *v14 = v22;
        v14[1] = v23;

        v15 = (v2[7] + 16 * v12);
        *v15 = v22;
        v15[1] = v23;
      }

      else
      {
        if (v2[2] >= v2[3])
        {
          goto LABEL_26;
        }

        *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        v16 = (v2[6] + 16 * result);
        *v16 = v22;
        v16[1] = v23;
        v17 = (v2[7] + 16 * result);
        *v17 = v22;
        v17[1] = v23;
        v18 = v2[2];
        v19 = __OFADD__(v18, 1);
        v20 = v18 + 1;
        if (v19)
        {
          goto LABEL_27;
        }

        v2[2] = v20;
      }

      v9 = v10;
      v1 = v21;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

LABEL_23:

    return 0;
  }

  else
  {
LABEL_8:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

id sub_100023E44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v36 = a6;
  v37 = sub_10004419C();
  sub_1000061E8();
  v14 = v13;
  __chkstk_darwin(v15);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_100026E50(_swiftEmptyArrayStorage))
  {
    v18 = sub_100026EFC(_swiftEmptyArrayStorage);
  }

  else
  {
    v18 = &_swiftEmptySetSingleton;
  }

  *&v6[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_customSessions] = v18;
  *&v6[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_accountStore] = a1;
  v34 = a1;
  v19 = OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_bag;
  v35 = sub_10004461C();
  v20 = *(v35 - 8);
  v21 = *(v20 + 16);
  v33 = a2;
  v21(&v7[v19], a2, v35);
  *&v7[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_clientInfo] = a3;
  v22 = &v7[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_mediaClient];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = v36;
  *&v7[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_urlSessionHandler] = v36;
  sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
  *v17 = a4;
  v17[1] = a5;
  v17[2] = 0;
  v17[3] = 0;
  v24 = v37;
  (*(v14 + 104))(v17, enum case for JetEngineBootstrap.URLProtocolHandler.media(_:), v37);

  v25 = a3;

  v26 = v23;
  v27 = v33;
  v28 = sub_100044A6C();
  (*(v14 + 8))(v17, v24);
  *&v7[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_defaultSession] = v28;
  [v28 setDelegate:v26];
  v29 = type metadata accessor for JSNetworkObject(0);
  v38.receiver = v7;
  v38.super_class = v29;
  v30 = objc_msgSendSuper2(&v38, "init");

  (*(v20 + 8))(v27, v35);
  return v30;
}

uint64_t sub_1000240EC(uint64_t a1)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v1 = sub_100044B1C();
  v2 = sub_100044B2C();

  return v2;
}

const char *sub_100024170(void *a1, void *a2, char *a3)
{
  v116 = a3;
  v6 = sub_1000448BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004498C();
  v106 = *(v10 - 8);
  v107 = v10;
  __chkstk_darwin(v10);
  v105 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100043B7C();
  v112 = *(v12 - 8);
  v113 = v12;
  __chkstk_darwin(v12);
  v111 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100043DBC();
  v114 = *(v14 - 8);
  v115 = v14;
  __chkstk_darwin(v14);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for NetworkRequest(0);
  v108 = *(v117 - 8);
  v17 = __chkstk_darwin(v117);
  v109 = v18;
  v110 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v93 - v19;
  sub_1000444AC();
  v21 = sub_10004449C();
  if (!v21)
  {
    v22 = "iTunesStoreLocal";
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
    swift_willThrow();
    return v22;
  }

  v22 = v21;
  sub_100024F38(a2, v20);
  if (v3)
  {

    return v22;
  }

  v94 = v6;
  v23 = swift_allocObject();
  v24 = *&v116[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_defaultSession];
  v103 = v23;
  *(v23 + 16) = v24;
  v25 = v20[*(v117 + 40)];
  v93 = v7;
  v101 = a1;
  v102 = v9;
  v100 = 0;
  v104 = v20;
  v99 = v22;
  if (v25 == 2 || (v25 & 1) == 0)
  {
    v27 = v117;
    if (!*&v20[*(v117 + 52) + 8])
    {
      v39 = v24;
      v34 = v116;
      v41 = v112;
      v40 = v113;
      goto LABEL_25;
    }

    v26 = 0;
  }

  else
  {
    v26 = 1;
    v27 = v117;
  }

  v28 = objc_opt_self();
  v29 = *&v116[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_clientInfo];
  v30 = v24;
  v98 = [v28 ams_configurationWithProcessInfo:v29 bag:sub_1000445CC()];
  swift_unknownObjectRelease();
  if (v26)
  {
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v33 = &v20[v27[13]];
    v31 = *v33;
    v32 = *(v33 + 1);
  }

  v97 = v31;
  v34 = v116;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v95 = v32;
  v35 = v115;
  v36 = sub_1000060A4(v115, qword_100065200);
  v114[2](v16, v36, v35);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v119 = type metadata accessor for JSNetworkObject(0);
  v118[0] = v34;
  v96 = v34;
  v37 = AMSLogKey();
  if (v37)
  {
    v38 = v37;
    sub_10004494C();
  }

  v42 = v97;
  sub_100043D2C();

  sub_100004408(v118);
  sub_100043CFC();
  v43 = v95;
  if (v95)
  {
    v44 = &type metadata for String;
    v45 = v95;
    v46 = v42;
  }

  else
  {
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v118[2] = 0;
  }

  v118[0] = v46;
  v118[1] = v45;
  v119 = v44;

  sub_100043D0C();
  sub_10000AC5C(v118, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  (v114[1])(v16, v115);
  if (v43)
  {
    v47 = sub_10004491C();
  }

  else
  {
    v47 = 0;
  }

  v20 = v104;
  v27 = v117;
  v41 = v112;
  v48 = v113;
  v49 = v98;
  [v98 set_tlsTrustPinningPolicyName:{v47, v93}];

  v50 = [objc_allocWithZone(AMSURLSession) initWithConfiguration:v49];
  v51 = *(v103 + 16);
  *(v103 + 16) = v50;
  v52 = v50;

  [v52 setDelegate:*&v96[OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_urlSessionHandler]];
  swift_beginAccess();
  sub_1000270C0(&v120, v52);
  v53 = v120;
  swift_endAccess();

  v40 = v48;
LABEL_25:
  v54 = v111;
  v55 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:sub_1000445CC()];
  swift_unknownObjectRelease();
  if (v20[v27[12]] == 1)
  {
    v56 = *(v34 + OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_accountStore);
    if (v56)
    {
      v56 = DynamicAccountsStore.account.getter();
    }

    [v55 setAccount:{v56, v93}];
  }

  if (*&v20[v27[11] + 8])
  {
    v57 = sub_10004491C();
  }

  else
  {
    v57 = 0;
  }

  [v55 setGsTokenIdentifier:{v57, v93}];

  [v55 setClientInfo:*(v34 + OBJC_IVAR____TtC16UtilityExtension15JSNetworkObject_clientInfo)];
  v58 = v20[v27[14]];
  if (v58 != 2)
  {
    [v55 setUrlKnownToBeTrusted:v58 & 1];
  }

  v114 = v55;
  sub_100043A2C();
  v113 = swift_allocBox();
  (*(v41 + 16))(v54, v20, v40);
  sub_1000439FC();
  v59 = *&v20[v27[6]];
  if (v59)
  {
    v60 = 1 << *(v59 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v34 = v61 & *(v59 + 64);
    v62 = (v60 + 63) >> 6;

    v63 = 0;
    while (v34)
    {
      v64 = v63;
LABEL_43:
      v65 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v66 = (v64 << 10) | (16 * v65);
      v67 = (*(v59 + 48) + v66);
      v68 = *v67;
      v69 = v67[1];
      v70 = (*(v59 + 56) + v66);
      v71 = *v70;
      v72 = v70[1];

      v121._countAndFlagsBits = v71;
      v121._object = v72;
      v122._countAndFlagsBits = v68;
      v122._object = v69;
      sub_100043A0C(v121, v122);
    }

    while (1)
    {
      v64 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v64 >= v62)
      {

        v20 = v104;
        v34 = v116;
        v27 = v117;
        goto LABEL_46;
      }

      v34 = *(v59 + 64 + 8 * v64);
      ++v63;
      if (v34)
      {
        v63 = v64;
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_46:
    if (*&v20[v27[9] + 8])
    {
      v73 = v105;
      sub_10004497C();
      sub_10004495C();
      (*(v106 + 8))(v73, v107);
    }

    sub_100043A1C();

    sub_1000439DC();
    if (qword_10005FF30 == -1)
    {
      goto LABEL_49;
    }
  }

  swift_once();
LABEL_49:
  sub_1000060A4(v115, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v119 = type metadata accessor for JSNetworkObject(0);
  v118[0] = v34;
  v116 = v34;
  v74 = AMSLogKey();
  if (v74)
  {
    v75 = v74;
    sub_10004494C();
  }

  v76 = v108;
  v77 = v109;
  sub_100043D2C();

  sub_100004408(v118);
  sub_100043CFC();
  v119 = v117;
  v78 = sub_1000049E0(v118);
  v79 = v104;
  sub_100028110(v104, v78);
  sub_100043D0C();
  sub_10000AC5C(v118, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  v80 = v110;
  sub_100028110(v79, v110);
  v81 = (*(v76 + 80) + 32) & ~*(v76 + 80);
  v82 = (v77 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v84 = v113;
  v85 = v114;
  *(v22 + 2) = v114;
  *(v22 + 3) = v84;
  sub_1000282AC(v80, &v22[v81]);
  v86 = v116;
  *&v22[v82] = v116;
  *&v22[v83] = v103;
  *&v22[(v83 + 15) & 0xFFFFFFFFFFFFFFF8] = v99;
  v87 = v86;
  v88 = v101;
  v89 = v85;

  v90 = v102;
  v91 = v100;
  sub_10004489C();
  if (v91)
  {
  }

  else
  {
    v22 = sub_1000448AC();

    (*(v93 + 8))(v90, v94);
  }

  sub_1000283D8(v79);
  return v22;
}

void sub_100024F38(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v4 - 8);
  v6 = &v51 - v5;
  v7 = sub_100043B7C();
  sub_1000061E8();
  v9 = v8;
  __chkstk_darwin(v10);
  v66 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100028C48();
  sub_100044ACC();
  v14 = v13;

  if (!v14)
  {
    sub_100028C48();
    sub_1000446CC();
    v15 = sub_1000066BC();
    sub_100007498(v15);
    sub_100028BB8();
    goto LABEL_5;
  }

  sub_100043B5C();

  if (sub_1000046E4(v6, 1, v7) == 1)
  {
    sub_10000AC5C(v6, &qword_100060488, &unk_100046970);
    sub_1000446CC();
    sub_1000066BC();
    swift_allocError();
    sub_10004467C();
LABEL_5:
    swift_willThrow();

    return;
  }

  v16 = v66;
  v64 = *(v9 + 32);
  v65 = v9 + 32;
  v64(v66, v6, v7);
  v17 = sub_100044ADC();
  v18 = sub_100044ACC();
  v20 = v19;

  v63 = v20;
  if (v20)
  {
    v21 = sub_100044ADC();
    v22 = sub_100006644(v21);
    v62 = v18;
    if (v22)
    {
      v61 = sub_100023B70(v22);
    }

    else
    {
      v61 = 0;
    }

    v24 = sub_100044ADC();
    v25 = sub_100044ACC();
    v59 = v26;
    v60 = v25;

    v27 = sub_100044ADC();
    v58 = sub_100044ACC();
    v56 = v28;

    v29 = sub_100028C10();
    v57 = sub_100044ABC();

    v30 = sub_100044ADC();
    v31 = sub_100044ABC();

    v52 = (v31 == 2) | v31;
    v32 = sub_100028C10();
    v33 = sub_100044ACC();
    v54 = v34;
    v55 = v33;

    v35 = sub_100028C10();
    v53 = sub_100044ABC();

    v36 = sub_100028C10();
    v37 = sub_100044ABC();

    v38 = sub_100028C10();
    v39 = sub_100044ABC();

    v40 = v56;
    LOBYTE(v38) = (v56 != 0) | v52;
    v41 = type metadata accessor for NetworkRequest(0);
    v42 = v41[10];
    v64(a2, v66, v7);
    v43 = v62;
    *&a2[v41[6]] = v61;
    v44 = &a2[v41[5]];
    v45 = v63;
    *v44 = v43;
    *(v44 + 1) = v45;
    a2[v41[7]] = v37;
    a2[v41[8]] = v39;
    v46 = &a2[v41[9]];
    v47 = v59;
    *v46 = v60;
    *(v46 + 1) = v47;
    v48 = &a2[v41[11]];
    *v48 = v58;
    *(v48 + 1) = v40;
    a2[v42] = v57;
    a2[v41[12]] = v38 & 1;
    v49 = &a2[v41[13]];
    v50 = v54;
    *v49 = v55;
    *(v49 + 1) = v50;
    a2[v41[14]] = v53;
  }

  else
  {
    sub_100044ADC();
    sub_1000446CC();
    v23 = sub_1000066BC();
    sub_100007498(v23);
    sub_100028BB8();
    swift_willThrow();

    (*(v9 + 8))(v16, v7);
  }
}

uint64_t sub_100025478(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v60 = a1;
  v65 = a8;
  v61 = a7;
  v56 = a3;
  v54 = a2;
  v59 = a9;
  v11 = sub_1000441BC();
  v57 = *(v11 - 8);
  v58 = v11;
  __chkstk_darwin(v11);
  v55 = v12;
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NetworkRequest(0);
  v14 = v13 - 8;
  v52 = *(v13 - 8);
  v15 = *(v52 + 64);
  __chkstk_darwin(v13);
  v16 = sub_100043A2C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_projectBox();
  swift_beginAccess();
  (*(v17 + 16))(v19, v20, v16);
  v21 = sub_1000439EC();
  (*(v17 + 8))(v19, v16);
  v22 = [a4 requestByEncodingRequest:v21 parameters:0];

  v23 = *(a6 + *(v14 + 36));
  if (v23 != 2 && (v23 & 1) != 0)
  {
    sub_100003514(&qword_100060E40, &qword_100047528);
    v51 = v22;
    sub_10004481C();
    sub_100028110(a6, &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    sub_1000282AC(&v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
    v26 = v61;
    *(v25 + ((v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v61;
    v27 = sub_10004448C();
    v63 = v27;
    v64 = &protocol witness table for SyncTaskScheduler;
    sub_1000049E0(v62);
    v28 = a4;
    v29 = v26;
    sub_10004447C();
    sub_10000477C(0, &qword_100060E48, AMSURLRequest_ptr);
    sub_10004476C();

    sub_100004408(v62);
    v63 = v27;
    v64 = &protocol witness table for SyncTaskScheduler;
    sub_1000049E0(v62);
    sub_10004447C();
    v22 = sub_10004480C();

    sub_100004408(v62);
  }

  v51 = v22;
  sub_100003514(&qword_100060DA8, &unk_100047470);
  v30 = v65;
  swift_beginAccess();
  v31 = [*(v30 + 16) dataTaskPromiseWithRequestPromise:v22];
  v52 = sub_10004481C();
  v32 = v57;
  v33 = v58;
  v34 = *(v57 + 16);
  v35 = v53;
  v34(v53, v54, v58);
  v36 = *(v32 + 80);
  v37 = v55;
  v38 = swift_allocObject();
  v54 = v38;
  v39 = v60;
  v40 = v65;
  v38[2] = v61;
  v38[3] = v40;
  v38[4] = v39;
  v57 = *(v32 + 32);
  (v57)(v38 + ((v36 + 40) & ~v36), v35, v33);
  v34(v35, v56, v33);
  v41 = (v36 + 32) & ~v36;
  v42 = swift_allocObject();
  v43 = v61;
  v44 = v65;
  *(v42 + 16) = v61;
  *(v42 + 24) = v44;
  (v57)(v42 + v41, v35, v33);
  v45 = v60;
  *(v42 + ((v37 + v41 + 7) & 0xFFFFFFFFFFFFFFF8)) = v60;
  v63 = sub_1000444AC();
  v64 = &protocol witness table for RunLoopWorkerThread;
  v62[0] = v59;
  v46 = v43;
  swift_retain_n();
  v47 = v45;
  v48 = v46;
  v49 = v47;

  sub_10004478C();

  return sub_100004408(v62);
}

id sub_100025A48@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v6 = v5;
  v37 = a4;
  v11 = sub_100043DBC();
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  [*a1 ak_addAnisetteHeaders];
  v15 = [a2 account];
  v16 = *(a3 + *(type metadata accessor for NetworkRequest(0) + 32));
  if (v16 != 2 && (v16 & 1) != 0)
  {
    result = [objc_opt_self() defaultStore];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v18 = result;
    v33 = v5;
    v34 = a5;
    v19 = [result ams_activeiCloudAccount];

    v20 = qword_10005FF30;
    v15 = v19;
    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_1000060A4(v11, qword_100065200);
    (*(v32 + 16))(v13, v21, v11);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    v31 = *(*(sub_100043D4C() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_100046830;
    v36 = type metadata accessor for JSNetworkObject(0);
    v35[0] = v37;
    v22 = v37;
    v23 = AMSLogKey();
    if (v23)
    {
      v24 = v23;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v35);
    sub_100043CFC();
    v6 = v33;
    if (v15)
    {
      v25 = sub_10000477C(0, &qword_100061EF0, ACAccount_ptr);
    }

    else
    {
      v25 = 0;
      v35[1] = 0;
      v35[2] = 0;
    }

    v35[0] = v15;
    v36 = v25;
    sub_100043D0C();
    sub_10000AC5C(v35, &qword_100061D00, &qword_1000465F0);
    sub_100043D9C();

    (*(v32 + 8))(v13, v11);
    a5 = v34;
  }

  if (v15)
  {
    v33 = v6;
    v34 = a5;
    v26 = qword_10005FF30;
    v27 = v15;
    if (v26 != -1)
    {
      swift_once();
    }

    v32 = sub_1000060A4(v11, qword_100065200);
    sub_100003514(&qword_100061CF0, &unk_1000466A0);
    sub_100043D4C();
    *(swift_allocObject() + 16) = xmmword_1000468F0;
    v36 = type metadata accessor for JSNetworkObject(0);
    v35[0] = v37;
    v28 = v37;
    v29 = AMSLogKey();
    if (v29)
    {
      v30 = v29;
      sub_10004494C();
    }

    sub_100043D2C();

    sub_100004408(v35);
    sub_100043CFC();
    sub_100043D9C();

    [v14 aa_addBasicAuthorizationHeaderWithAccount:v27 preferUsingPassword:0];

    a5 = v34;
  }

  [v14 ak_addClientInfoHeader];

  *a5 = v14;
  return v14;
}

void sub_100025F9C(void **a1, char *a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = *(a3 + 16);
  swift_beginAccess();
  v8 = v7;
  v9 = sub_100027C2C(v8);
  swift_endAccess();

  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v10 = sub_100043DBC();
  sub_1000060A4(v10, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v22 = type metadata accessor for JSNetworkObject(0);
  v21[0] = a2;
  v11 = a2;
  v12 = AMSLogKey();
  if (v12)
  {
    v13 = v12;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v21);
  sub_100043CFC();
  v22 = sub_10000477C(0, &qword_100060E50, AMSURLResult_ptr);
  v21[0] = v6;
  v14 = v6;
  sub_100043D0C();
  sub_10000AC5C(v21, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  v15 = v14;
  v16 = sub_100026400(a4, v15);
  sub_100003514(&qword_100060820, &unk_100046E90);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000465C0;
  *(v17 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v17 + 32) = v16;
  v18 = v16;
  v19 = sub_1000441AC();
}

id sub_100026400(void *a1, void *a2)
{
  result = [objc_opt_self() valueWithNewObjectInContext:a1];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  if (![a2 object])
  {
    goto LABEL_5;
  }

  sub_100044B5C();
  swift_unknownObjectRelease();
  sub_10000476C(v16, &v17);
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  sub_1000034B8(&v17, v16);
  v6 = a1;
  result = sub_100028F50(v16, a1);
  if (!result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_100044AEC();
  sub_100004408(&v17);
LABEL_5:
  v7 = [a2 response];
  if (!v7)
  {
    return v5;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {
LABEL_10:

    return v5;
  }

  v10 = v9;
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v11 = [v10 statusCode];
  v18 = &type metadata for Int;
  *&v17 = v11;
  v12 = a1;
  result = sub_100028F50(&v17, a1);
  if (!result)
  {
    goto LABEL_14;
  }

  sub_100044AEC();
  v13 = [v10 allHeaderFields];
  v14 = sub_1000448EC();

  v18 = sub_100003514(&qword_100060060, "lZ");
  *&v17 = v14;
  v15 = v12;
  result = sub_100028F50(&v17, a1);
  if (result)
  {
    sub_100044AEC();
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100026668(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, objc_class *a5)
{
  v35 = a5;
  v36 = a4;
  v32 = a1;
  v7 = sub_1000446CC();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(a3 + 16);
  swift_beginAccess();
  v11 = v10;
  v12 = sub_100027C2C(v11);
  swift_endAccess();

  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v13 = sub_100043DBC();
  v37 = sub_1000060A4(v13, qword_100065200);
  v14 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v30 = 3 * *(*(sub_100043D4C() - 8) + 72);
  v31 = v14;
  v15 = swift_allocObject();
  v29 = xmmword_100046830;
  *(v15 + 16) = xmmword_100046830;
  v28 = type metadata accessor for JSNetworkObject(0);
  v41 = v28;
  v40[0] = a2;
  v16 = a2;
  v17 = AMSLogKey();
  if (v17)
  {
    v18 = v17;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v40);
  sub_100043CFC();
  v19 = v32;
  swift_getErrorValue();
  v20 = v38;
  v21 = v39;
  v41 = v39;
  v22 = sub_1000049E0(v40);
  (*(*(v21 - 8) + 16))(v22, v20, v21);
  sub_100043D0C();
  sub_10000AC5C(v40, &qword_100061D00, &qword_1000465F0);
  sub_100043D8C();

  sub_100003514(&qword_100060820, &unk_100046E90);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1000465C0;
  swift_errorRetain();
  sub_100018B54(v19);
  v24.super.isa = v35;
  isa = sub_1000446AC(v24).super.isa;
  (*(v33 + 8))(v9, v34);
  *(v23 + 56) = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  *(v23 + 32) = isa;
  v26 = sub_1000441AC();
}

id sub_100026C4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSNetworkObject(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100026D70(uint64_t a1)
{
  result = sub_10004461C();
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

uint64_t sub_100026E50(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

unint64_t sub_100026E74(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100026E98(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_100047480;
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

Swift::Int sub_100026EFC(unint64_t a1)
{
  v1 = a1;
  if (sub_100026E50(a1))
  {
    sub_100003514(&qword_100060E38, &unk_100047518);
    v2 = sub_100044C3C();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_100026E50(v1);
  if (v20)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_100026E74(v3, v19 == 0, v1);
      result = v19 ? sub_100044C5C() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_100044AFC(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
        v13 = *(v2[6] + 8 * v9);
        v14 = sub_100044B0C();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
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

    return v2;
  }

  return result;
}

uint64_t sub_1000270C0(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_100044BAC();

    if (v9)
    {

      sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_100044B9C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1000272E4(v7, result + 1);
        v17 = v16[2];
        if (v16[3] <= v17)
        {
          sub_1000274C0(v17 + 1);
        }

        v18 = v8;
        sub_1000276E4(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
    v11 = sub_100044AFC(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_100027768(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_100044B0C();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

Swift::Int sub_1000272E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003514(&qword_100060E38, &unk_100047518);
    v2 = sub_100044C2C();
    v15 = v2;
    sub_100044B8C();
    while (1)
    {
      if (!sub_100044BBC())
      {

        return v2;
      }

      sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1000274C0(v3 + 1);
      }

      v2 = v15;
      result = sub_100044AFC(*(v15 + 40));
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000274C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003514(&qword_100060E38, &unk_100047518);
  result = sub_100044C1C();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_100026E98(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_100044AFC(*(v5 + 40));
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_1000276E4(uint64_t a1, void *a2)
{
  sub_100044AFC(a2[5]);
  result = sub_100044B7C();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

unint64_t sub_100027768(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000274C0(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_100027A1C(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_100044AFC(*(*v3 + 40));
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_100044B0C();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_1000278CC();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_100044DBC();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

id sub_1000278CC()
{
  v1 = v0;
  sub_100003514(&qword_100060E38, &unk_100047518);
  v2 = *v0;
  v3 = sub_100044C0C();
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

uint64_t sub_100027A1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003514(&qword_100060E38, &unk_100047518);
  result = sub_100044C1C();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(v5 + 40);
        v16 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_100044AFC(v15);
        v17 = -1 << *(v5 + 32);
        v18 = result & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v16;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_100027C2C(void *a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
    v9 = sub_100044AFC(*(v4 + 40));
    v10 = ~(-1 << *(v4 + 32));
    while (1)
    {
      v11 = v9 & v10;
      if (((*(v4 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
      {
        break;
      }

      v12 = *(*(v4 + 48) + 8 * v11);
      v13 = sub_100044B0C();

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v2;
        v17 = *v2;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000278CC();
          v15 = v17;
        }

        v8 = *(*(v15 + 48) + 8 * v11);
        sub_100027F08(v11);
        *v2 = v17;
        return v8;
      }

      v9 = v11 + 1;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = a1;
  v7 = sub_100044BCC();

  if ((v7 & 1) == 0)
  {

    return 0;
  }

  v8 = sub_100027DAC(v5, v6);

  return v8;
}

uint64_t sub_100027DAC(uint64_t a1, uint64_t a2)
{

  v2 = sub_100044B9C();
  v3 = swift_unknownObjectRetain();
  v4 = sub_1000272E4(v3, v2);
  v14 = v4;
  v5 = *(v4 + 40);

  v6 = sub_100044AFC(v5);
  v7 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v4 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      break;
    }

    sub_10000477C(0, &qword_100060190, AMSURLSession_ptr);
    v9 = *(*(v4 + 48) + 8 * v8);
    v10 = sub_100044B0C();

    if (v10)
    {

      v11 = *(*(v4 + 48) + 8 * v8);
      sub_100027F08(v8);
      if (sub_100044B0C())
      {
        *v13 = v14;
        return v11;
      }

      __break(1u);
      break;
    }

    v6 = v8 + 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_100027F08(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_100044B6C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = sub_100044AFC(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_15:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000280D8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100028110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028174()
{
  type metadata accessor for NetworkRequest(0);
  sub_100028C34();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = (*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100043B7C();
  sub_10000AF2C();
  (*(v5 + 8))(v0 + v2);
  sub_100028BF8();

  sub_100028BF8();
  sub_100028BF8();
  sub_100028BF8();

  v6 = sub_100028C28();

  return _swift_deallocObject(v6, v7, v8);
}

uint64_t sub_1000282AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028310(void *a1, void *a2, void *a3)
{
  v7 = type metadata accessor for NetworkRequest(0);
  sub_10000EA9C(v7);
  sub_100028BE8();
  return sub_100025478(a1, a2, a3, *(v3 + 16), *(v3 + 24), v3 + v9, *(v3 + v8), *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000283D8(uint64_t a1)
{
  v2 = type metadata accessor for NetworkRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100028434()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  v5 = sub_100028C28();

  return _swift_deallocObject(v5, v6, v7);
}

void sub_1000284F8(void **a1)
{
  sub_1000441BC();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];

  sub_100025F9C(a1, v3, v4, v5);
}

uint64_t sub_100028570()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  v7 = sub_100028C28();

  return _swift_deallocObject(v7, v8, v9);
}

void sub_100028640(uint64_t a1)
{
  v3 = sub_1000441BC();
  sub_10000EA9C(v3);
  sub_100028BE8();
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  sub_100026668(a1, v7, v8, v1 + v4, v6);
}

uint64_t sub_1000286D0()
{
  type metadata accessor for NetworkRequest(0);
  sub_100028C34();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = (*(v3 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_100043B7C();
  sub_10000AF2C();
  (*(v5 + 8))(v0 + v2);
  sub_100028BF8();

  sub_100028BF8();
  sub_100028BF8();
  sub_100028BF8();

  v6 = sub_100028C28();

  return _swift_deallocObject(v6, v7, v8);
}

id sub_1000287D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for NetworkRequest(0);
  sub_10000EA9C(v5);
  sub_100028BE8();
  return sub_100025A48(a1, *(v2 + 16), v2 + v7, *(v2 + v6), a2);
}

uint64_t sub_100028888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100043B7C();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1000046E4(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_10002894C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100043B7C();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_10000464C(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000289F8(uint64_t a1)
{
  v1 = sub_100043B7C();
  if (v2 <= 0x3F)
  {
    sub_100028B08(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_100028B6C(319, &qword_100060ED0, &type metadata for Bool);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_100028B6C(319, &qword_100060ED8, &type metadata for String);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_100028B08(uint64_t a1)
{
  if (!qword_100060EC0)
  {
    sub_10000A584(&qword_100060EC8, &unk_100047540);
    v1 = sub_100044B3C();
    if (!v2)
    {
      atomic_store(v1, &qword_100060EC0);
    }
  }
}

void sub_100028B6C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100044B3C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100028BB8()
{

  return sub_10004469C();
}

uint64_t sub_100028BF8()
{
}

uint64_t sub_100028C10()
{

  return sub_100044ADC();
}

uint64_t sub_100028C48()
{

  return sub_100044ADC();
}

id sub_100028C68(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  sub_100023830(a1, &v15 - v5);
  v7 = sub_100043B7C();
  if (sub_1000046E4(v6, 1, v7) == 1)
  {
    sub_100028EE8(v6);
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E75;
  }

  else
  {
    v9 = sub_100043ADC();
    v8 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  v11 = &v2[OBJC_IVAR____TtC16UtilityExtension15JSServiceObject_url];
  *v11 = v9;
  v11[1] = v8;
  v12 = type metadata accessor for JSServiceObject();
  v15.receiver = v2;
  v15.super_class = v12;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_100028EE8(a1);
  return v13;
}

uint64_t sub_100028E00()
{
  v1 = *(v0 + OBJC_IVAR____TtC16UtilityExtension15JSServiceObject_url);

  return v1;
}

id sub_100028E7C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSServiceObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100028EE8(uint64_t a1)
{
  v2 = sub_100003514(&qword_100060488, &unk_100046970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100028F50(void *a1, void *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = sub_100004454(a1, a1[3]);
    v6 = *(v3 - 8);
    __chkstk_darwin(v5);
    sub_10001E7F8();
    v9 = v8 - v7;
    (*(v6 + 16))(v8 - v7);
    v10 = sub_100044D9C();
    (*(v6 + 8))(v9, v3);
    sub_100004408(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [swift_getObjCClassFromMetadata() valueWithObject:v10 inContext:a2];
  swift_unknownObjectRelease();

  return v11;
}

uint64_t JSServiceRequest.init(fragment:options:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  v6 = a5 + *(type metadata accessor for JSServiceRequest(0) + 24);

  return sub_100029138(a4, v6);
}

uint64_t type metadata accessor for JSServiceRequest(uint64_t a1)
{
  result = qword_100061010;
  if (!qword_100061010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100029138(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060488, &unk_100046970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JSServiceRequest.fragment.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t JSServiceRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JSServiceRequest(0) + 24);

  return sub_100023830(v3, a1);
}

uint64_t JSServiceRequest.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v5 = sub_100003514(&qword_100060538, &qword_100046D20);
  sub_1000161BC(v5);
  sub_10000AF08();
  __chkstk_darwin(v6);
  v28 = &v27 - v7;
  v8 = sub_10004420C();
  sub_1000061E8();
  v10 = v9;
  v12 = __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_10002AF70();
  sub_10004421C();
  v17 = sub_1000441FC();
  v19 = v18;
  v20 = *(v10 + 8);
  v20(v16, v8);
  *a3 = v17;
  a3[1] = v19;
  v29 = a3;
  v21 = v28;
  sub_10002AF84();
  sub_10004421C();
  sub_1000441CC();
  v20(v14, v8);
  v22 = sub_10004437C();
  if (sub_1000046E4(v21, 1, v22) == 1)
  {
    sub_10000AC5C(v21, &qword_100060538, &qword_100046D20);
    v23 = 0;
  }

  else
  {
    v23 = sub_10004436C();
    sub_10001D754();
    (*(v24 + 8))(v21, v22);
  }

  v29[2] = v23;
  sub_10004421C();
  type metadata accessor for JSServiceRequest(0);
  sub_1000441EC();
  sub_10004426C();
  sub_10000AF2C();
  (*(v25 + 8))(v30);
  v20(a1, v8);
  return (v20)(v16, v8);
}

JSValue __swiftcall JSServiceRequest.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = sub_100003514(&qword_100060488, &unk_100046970);
  sub_1000161BC(v4);
  sub_10000AF08();
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext:in.super.isa];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_15;
  }

  isa = result.super.isa;
  sub_10000F0F4();
  v25 = &type metadata for String;
  v23 = 0xD000000000000016;
  v24 = 0x800000010004A4E0;
  v10 = in.super.isa;
  result.super.isa = sub_10002AF28();
  if (!result.super.isa)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_100044AEC();
  v11 = v1[1];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = *v2;
  v25 = &type metadata for String;
  v23 = v12;
  v24 = v11;
  v13 = v10;

  result.super.isa = sub_10002AF28();
  if (!result.super.isa)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_100044AEC();
LABEL_6:
  v14 = type metadata accessor for JSServiceRequest(0);
  sub_100023830(v2 + *(v14 + 24), v7);
  v15 = sub_100043B7C();
  if (sub_1000046E4(v7, 1, v15) == 1)
  {
    sub_10000AC5C(v7, &qword_100060488, &unk_100046970);
LABEL_10:
    v21 = v2[2];
    if (!v21)
    {
      return isa;
    }

    v25 = sub_100003514(&qword_100060060, "lZ");
    v23 = v21;
    v22 = v10;

    result.super.isa = sub_10002AF28();
    if (result.super.isa)
    {
      sub_100044AEC();
      return isa;
    }

    goto LABEL_17;
  }

  v16 = sub_100043ADC();
  v18 = v17;
  sub_10001D754();
  (*(v19 + 8))(v7, v15);
  v25 = &type metadata for String;
  v23 = v16;
  v24 = v18;
  v20 = v10;

  result.super.isa = sub_10002AF28();
  if (result.super.isa)
  {

    sub_100044AEC();
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *Data.init(deserializing:using:)(void *a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100060538, &qword_100046D20);
  sub_1000161BC(v4);
  sub_10000AF08();
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = a1;
  sub_1000441CC();
  v9 = sub_10004437C();
  if (sub_1000046E4(v7, 1, v9) == 1)
  {
    sub_10000AC5C(v7, &qword_100060538, &qword_100046D20);
LABEL_6:
    [objc_allocWithZone(NSError) init];
LABEL_7:
    swift_willThrow();
    sub_10004426C();
    sub_10000AF2C();
    (*(v17 + 8))(a2);
    sub_10004420C();
    sub_10000AF2C();
    (*(v18 + 8))(a1);
    return v8;
  }

  v8 = sub_10004436C();
  sub_10001D754();
  (*(v10 + 8))(v7, v9);
  if (!v8)
  {
    goto LABEL_6;
  }

  v11 = objc_opt_self();
  isa = sub_1000448DC().super.isa;

  v20 = 0;
  v13 = [v11 dataWithJSONObject:isa options:0 error:&v20];

  v14 = v20;
  if (!v13)
  {
    v8 = v14;
    sub_100043AAC();

    goto LABEL_7;
  }

  v8 = sub_100043BAC();

  sub_10004426C();
  sub_10000AF2C();
  (*(v15 + 8))(a2);
  sub_10004420C();
  sub_10000AF2C();
  (*(v16 + 8))(a1);
  return v8;
}

uint64_t sub_100029AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002AF70();
  v6 = a1 == v4 && v5 == 0xE800000000000000;
  if (v6 || (sub_10002AF54(v4, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = sub_10002AF84();
    v9 = a1 == v8 && a2 == 0xE700000000000000;
    if (v9 || (sub_10002AF54(v8, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 7107189 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v11 = sub_10002AF54(7107189, 0xE300000000000000);

      if (v11)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100029BB4(uint64_t a1)
{
  if (!a1)
  {
    return sub_10002AF70();
  }

  if (a1 == 1)
  {
    return 0x736E6F6974706FLL;
  }

  return 7107189;
}

void *sub_100029C08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = Data.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_100029C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100029AE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100029C70(uint64_t a1)
{
  v2 = sub_10002A7C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100029CAC(uint64_t a1)
{
  v2 = sub_10002A7C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t JSServiceRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_100003514(&qword_100060F60, "Jg");
  sub_1000061E8();
  v36 = v5;
  sub_10000AF08();
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = type metadata accessor for JSServiceRequest(0);
  sub_10001D754();
  __chkstk_darwin(v10);
  sub_10001E7F8();
  v13 = (v12 - v11);
  sub_100004454(a1, a1[3]);
  sub_10002A7C4();
  sub_100044E6C();
  if (v2)
  {
    return sub_100004408(a1);
  }

  v33 = v9;
  v15 = v35;
  LOBYTE(v38[0]) = 0;
  v16 = v8;
  v17 = sub_100044D1C();
  v34 = a1;
  *v13 = v17;
  v13[1] = v18;
  LOBYTE(v37) = 1;
  sub_10002A818();
  sub_100044D4C();
  v20 = v38[0];
  v19 = v38[1];
  v21 = objc_opt_self();
  v32 = v19;
  isa = sub_100043B9C().super.isa;
  v38[0] = 0;
  v23 = [v21 JSONObjectWithData:isa options:0 error:v38];

  if (v23)
  {
    v24 = v38[0];
    sub_100044B5C();
    sub_100023364(v20, v32);
    swift_unknownObjectRelease();
    sub_100003514(&qword_100060060, "lZ");
    v25 = swift_dynamicCast();
    v26 = v37;
    if (!v25)
    {
      v26 = 0;
    }

    v13[2] = v26;
    LOBYTE(v38[0]) = 2;
    sub_100044D1C();
    v27 = v15;
    v28 = v4;
    v29 = v36;
    sub_100043B5C();

    (*(v29 + 8))(v16, v28);
    sub_100015B28(v13, v27);
    sub_100004408(v34);
    return sub_10002A86C(v13);
  }

  else
  {
    v30 = v38[0];
    sub_100043AAC();

    swift_willThrow();
    sub_100023364(v20, v32);
    (*(v36 + 8))(v16, v4);
    sub_100004408(v34);
  }
}

uint64_t JSServiceRequest.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_100003514(&qword_100060488, &unk_100046970);
  sub_1000161BC(v6);
  sub_10000AF08();
  __chkstk_darwin(v7);
  v9 = &v39 - v8;
  sub_100043B7C();
  sub_1000061E8();
  v41 = v11;
  v42 = v10;
  __chkstk_darwin(v10);
  sub_10001E7F8();
  v40 = v13 - v12;
  sub_100003514(&qword_100060F78, &qword_100047580);
  sub_1000061E8();
  sub_10000AF08();
  __chkstk_darwin(v14);
  sub_100004454(a1, a1[3]);
  sub_10002A7C4();
  sub_100044E7C();
  v15 = v4[1];
  if (v15)
  {
    v16 = *v4;
    LOBYTE(v44[0]) = 0;
    sub_10002AF98(v16, v15);
    v3 = v2;
    if (v2)
    {
      goto LABEL_12;
    }
  }

  if (v4[2])
  {
    v17 = objc_opt_self();
    isa = sub_1000448DC().super.isa;
    v44[0] = 0;
    v19 = [v17 dataWithJSONObject:isa options:0 error:v44];

    v20 = v44[0];
    if (!v19)
    {
      v27 = v20;
      sub_100043AAC();

      swift_willThrow();
      goto LABEL_12;
    }

    v21 = sub_100043BAC();
    v23 = v22;

    v44[0] = v21;
    v44[1] = v23;
    v43 = 1;
    sub_10002A8C8();
    sub_100044D8C();
    if (v3)
    {
      v24 = sub_10002AF44();
      v25(v24);
      return sub_100023364(v21, v23);
    }

    sub_100023364(v21, v23);
  }

  v28 = type metadata accessor for JSServiceRequest(0);
  sub_100023830(v4 + *(v28 + 24), v9);
  v29 = v42;
  v30 = sub_1000046E4(v9, 1, v42);
  v31 = v41;
  if (v30 == 1)
  {
    v32 = sub_10002AF44();
    v33(v32);
    return sub_10000AC5C(v9, &qword_100060488, &unk_100046970);
  }

  v34 = v40;
  (*(v41 + 32))();
  v35 = sub_100043ADC();
  LOBYTE(v44[0]) = 2;
  sub_10002AF98(v35, v36);

  (*(v31 + 8))(v34, v29);
LABEL_12:
  v37 = sub_10002AF44();
  return v38(v37);
}

uint64_t JSServiceRequest.description.getter()
{
  v1 = v0;
  v2 = 0xE900000000000064;
  v3 = 0x656E696665646E75;
  sub_100003514(&qword_100060488, &unk_100046970);
  sub_10001D754();
  v5 = __chkstk_darwin(v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v21 - v8;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_100044C4C(56);
  v10 = type metadata accessor for JSServiceRequest(0);
  v21[0] = v10;
  sub_100003514(&qword_100060F88, &qword_100047588);
  v24._countAndFlagsBits = sub_10004499C();
  sub_1000449CC(v24);

  v25._object = 0x800000010004A500;
  v25._countAndFlagsBits = 0xD000000000000013;
  sub_1000449CC(v25);
  v11 = v0[1];
  if (v11)
  {
    v21[0] = *v0;
    v21[1] = v11;

    sub_100003514(&qword_100060F98, &qword_100047598);
    v12._countAndFlagsBits = sub_10004499C();
    object = v12._object;
  }

  else
  {
    v12._countAndFlagsBits = 0x656E696665646E75;
    object = 0xE900000000000064;
  }

  v12._object = object;
  sub_1000449CC(v12);

  v26._countAndFlagsBits = 0x706F202020200A29;
  v26._object = 0xEF203A736E6F6974;
  sub_1000449CC(v26);
  if (v0[2])
  {
    v21[0] = v0[2];

    sub_100003514(&qword_100060F90, &qword_100047590);
    v14._countAndFlagsBits = sub_10004499C();
    v15 = v14._object;
  }

  else
  {
    v14._countAndFlagsBits = 0x656E696665646E75;
    v15 = 0xE900000000000064;
  }

  v14._object = v15;
  sub_1000449CC(v14);

  v27._countAndFlagsBits = 0x7275202020200A29;
  v27._object = 0xEB00000000203A6CLL;
  sub_1000449CC(v27);
  v16 = *(v10 + 24);
  sub_100023830(v0 + v16, v9);
  v17 = sub_100043B7C();
  v18 = sub_1000046E4(v9, 1, v17);
  sub_10000AC5C(v9, &qword_100060488, &unk_100046970);
  if (v18 != 1)
  {
    sub_100023830(v1 + v16, v7);
    v3 = sub_10004499C();
    v2 = v19;
  }

  v28._countAndFlagsBits = v3;
  v28._object = v2;
  sub_1000449CC(v28);

  v29._countAndFlagsBits = 8194601;
  v29._object = 0xE300000000000000;
  sub_1000449CC(v29);
  return v22;
}

unint64_t sub_10002A7C4()
{
  result = qword_100060F68;
  if (!qword_100060F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060F68);
  }

  return result;
}

unint64_t sub_10002A818()
{
  result = qword_100060F70;
  if (!qword_100060F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060F70);
  }

  return result;
}

uint64_t sub_10002A86C(uint64_t a1)
{
  v2 = type metadata accessor for JSServiceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002A8C8()
{
  result = qword_100060F80;
  if (!qword_100060F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060F80);
  }

  return result;
}

uint64_t sub_10002A984(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for JSServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002A9CC()
{
  result = qword_100060FB0;
  if (!qword_100060FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060FB0);
  }

  return result;
}

uint64_t sub_10002AA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100003514(&qword_100060488, &unk_100046970);
    v10 = a1 + *(a3 + 24);

    return sub_1000046E4(v10, a2, v9);
  }
}

uint64_t sub_10002AAE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100003514(&qword_100060488, &unk_100046970);
    v8 = v5 + *(a4 + 24);

    return sub_10000464C(v8, a2, a2, v7);
  }

  return result;
}

void sub_10002AB74(uint64_t a1)
{
  sub_10002AC10();
  if (v1 <= 0x3F)
  {
    sub_10002AC60(319);
    if (v2 <= 0x3F)
    {
      sub_10002ACC4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10002AC10()
{
  if (!qword_100060ED8)
  {
    v0 = sub_100044B3C();
    if (!v1)
    {
      atomic_store(v0, &qword_100060ED8);
    }
  }
}

void sub_10002AC60(uint64_t a1)
{
  if (!qword_100061020)
  {
    sub_10000A584(&qword_100060060, "lZ");
    v1 = sub_100044B3C();
    if (!v2)
    {
      atomic_store(v1, &qword_100061020);
    }
  }
}

void sub_10002ACC4(uint64_t a1)
{
  if (!qword_100061028)
  {
    sub_100043B7C();
    v1 = sub_100044B3C();
    if (!v2)
    {
      atomic_store(v1, &qword_100061028);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for JSServiceRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002ADE8);
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

unint64_t sub_10002AE24()
{
  result = qword_100061060;
  if (!qword_100061060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061060);
  }

  return result;
}

unint64_t sub_10002AE7C()
{
  result = qword_100061068;
  if (!qword_100061068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061068);
  }

  return result;
}

unint64_t sub_10002AED4()
{
  result = qword_100061070;
  if (!qword_100061070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061070);
  }

  return result;
}

id sub_10002AF28()
{

  return sub_100028F50((v1 - 112), v0);
}

uint64_t sub_10002AF54(uint64_t a1, uint64_t a2)
{

  return sub_100044DAC();
}

uint64_t sub_10002AF98(uint64_t a1, uint64_t a2)
{

  return sub_100044D5C();
}

void sub_10002AFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10002E018();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  sub_10002D80C(v8, v22 - v12, &qword_100060A50, &unk_100047080);
  v14 = sub_100044A5C();
  v15 = sub_1000046E4(v13, 1, v14);

  if (v15 == 1)
  {
    sub_10002D86C(v13, &qword_100060A50, &unk_100047080);
  }

  else
  {
    sub_100044A4C();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v16 = *(v6 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_100044A3C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (v10)
    {
LABEL_6:
      v20 = sub_1000449AC() + 32;

      if (v19 | v17)
      {
        v23[0] = 0;
        v23[1] = 0;
        v21 = v23;
        v23[2] = v17;
        v23[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v22[1] = 7;
      v22[2] = v21;
      v22[3] = v20;
      sub_10002DFF8();

      sub_10002D86C(v8, &qword_100060A50, &unk_100047080);

      goto LABEL_14;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  sub_10002D86C(v8, &qword_100060A50, &unk_100047080);
  if (v19 | v17)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v17;
    v23[7] = v19;
  }

  sub_10002DFF8();
LABEL_14:
  sub_10002DFE0();
}

uint64_t sub_10002B25C(void *a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a1;
  v4 = sub_1000441BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_100044A5C();
  sub_10000464C(v12, 1, 1, v13);
  v14 = *(v5 + 16);
  v14(v9, v26, v4);
  v14(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v15 = *(v5 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v15 + v17 + 8) & ~v15;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = *(v5 + 32);
  v20(v19 + v16, v9, v4);
  v21 = v27;
  *(v19 + v17) = v27;
  v20(v19 + v18, v25, v4);
  v22 = v21;
  sub_10002AFB8(0, 0, v12, &unk_1000478C8, v19);
}

uint64_t sub_10002B498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1000446CC();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for SessionAuthenticatorBillingPlanResponse(0);
  v6[8] = swift_task_alloc();
  v8 = sub_100043FBC();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = sub_100043ECC();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_10002B640, 0, 0);
}

uint64_t sub_10002B640()
{
  sub_100043F5C();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_10002B6E4;
  v2 = *(v0 + 112);

  return OpenAIAuthenticator.refreshBillingPlan()(v2);
}

uint64_t sub_10002B6E4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v3 = sub_10002BAA4;
  }

  else
  {
    v3 = sub_10002B84C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002B84C()
{
  v1 = v0[16];
  (*(v0[13] + 16))(v0[8], v0[14], v0[12]);
  v2 = sub_100003514(&qword_100060820, &unk_100046E90);
  v3 = sub_10001D83C(v2);
  v4 = sub_10002DF34(v3, xmmword_1000465C0);
  sub_10002BBE8(v4, v5, v6, v7, v8, v9);
  v11 = v10;
  v12 = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v3[3].n128_u64[1] = v12;
  v3[2].n128_u64[0] = v11;
  v13 = sub_1000441AC();
  v14 = v0[8];
  if (v1)
  {

    sub_10002DEDC();
    sub_10002D8C4(v14, v15);
    v16 = sub_10001D7F8();
    v17(v16);
    v18 = v0[3];
    v19 = sub_100003514(&qword_100060820, &unk_100046E90);
    v20 = sub_10001D83C(v19);
    sub_10002DF34(v20, xmmword_1000465C0);
    swift_errorRetain();
    sub_10002E030();
    v21.super.isa = v18;
    isa = sub_1000446AC(v21).super.isa;
    v23 = sub_10001D7F8();
    v24(v23);
    v20[3].n128_u64[1] = v12;
    v20[2].n128_u64[0] = isa;
    v25 = sub_1000441AC();
  }

  else
  {

    sub_10002DEDC();
    sub_10002D8C4(v14, v26);
    v27 = sub_10001D7F8();
    v28(v27);
  }

  sub_10002DEF4();

  return v29();
}

uint64_t sub_10002BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  v11 = *(v10 + 32);
  v12 = *(v10 + 24);
  v13 = sub_100003514(&qword_100060820, &unk_100046E90);
  v14 = sub_10001D83C(v13);
  sub_10002DF34(v14, xmmword_1000465C0);
  swift_errorRetain();
  sub_10002E030();
  v15.super.isa = v12;
  sub_1000446AC(v15);
  v16 = sub_10002DFAC();
  v17(v16);
  v18 = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v19 = sub_10002DF40(v18);

  if (v11)
  {
    sub_10002DFC0();
  }

  else
  {
  }

  sub_10002DEF4();
  sub_10001D86C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

void sub_10002BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10002E018();
  sub_10002DF14();
  v7 = sub_100043E9C();
  sub_1000061E8();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10001E7F8();
  v13 = v12 - v11;
  if (![objc_opt_self() valueWithNewObjectInContext:v6])
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_100043EAC();
  LODWORD(v14) = (*(v9 + 88))(v13, v7);
  if (v14 == enum case for OpenAIAuthenticator.BillingPlan.Category.free(_:))
  {
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v15 = v6;
    v14 = sub_10002AF28();
    if (v14)
    {
LABEL_7:
      sub_10002DF00();
      sub_10002DF80(v19, v20);
      goto LABEL_10;
    }

    __break(1u);
  }

  v16 = v14;
  v17 = enum case for OpenAIAuthenticator.BillingPlan.Category.paid(_:);
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  if (v16 == v17)
  {
    v18 = v6;
    if (!sub_10002AF28())
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  v21 = v6;
  if (sub_10002AF28())
  {
    sub_10002DF00();
    sub_10002DF80(v22, v23);
    (*(v9 + 8))(v13, v7);
LABEL_10:
    sub_10000477C(0, &qword_100060800, JSValue_ptr);
    sub_100043EBC();
    v24 = v6;
    v25 = sub_10002AF28();
    if (v25)
    {
      sub_10002DF80(v25, 0x656D614E6E616C70);
      sub_100043E8C();
      v26 = v24;
      if (sub_10002AF28())
      {
        sub_100044AEC();
        sub_10002DFE0();
        return;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_10002BED8(uint64_t a1)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v1 = sub_100044B1C();
  v2 = sub_100044B2C();

  return v2;
}

id sub_10002BF34(uint64_t a1)
{
  v21 = a1;
  v1 = type metadata accessor for SessionAuthenticatorCredentialsResponse(0);
  __chkstk_darwin(v1 - 8);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100043F1C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100043FBC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003514(&qword_1000610A0, &qword_1000478B8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  sub_100043F5C();
  sub_100043F2C();
  (*(v8 + 8))(v10, v7);
  sub_10002D80C(v16, v14, &qword_1000610A0, &qword_1000478B8);
  if (sub_1000046E4(v14, 1, v3) != 1)
  {
    goto LABEL_4;
  }

  sub_10002D86C(v14, &qword_1000610A0, &qword_1000478B8);
  v17 = [objc_opt_self() valueWithUndefinedInContext:v21];
  if (!v17)
  {
    __break(1u);
LABEL_4:
    (*(v4 + 32))(v6, v14, v3);
    v18 = v20;
    (*(v4 + 16))(v20, v6, v3);
    v17 = sub_10002C274(v21);
    sub_10002D8C4(v18, type metadata accessor for SessionAuthenticatorCredentialsResponse);
    (*(v4 + 8))(v6, v3);
  }

  sub_10002D86C(v16, &qword_1000610A0, &qword_1000478B8);
  return v17;
}

id sub_10002C274(uint64_t a1)
{
  v2 = sub_10002DF14();
  v3 = type metadata accessor for SessionAuthenticatorBillingPlanResponse(v2);
  __chkstk_darwin(v3 - 8);
  sub_10001E7F8();
  v6 = v5 - v4;
  result = [objc_opt_self() valueWithNewObjectInContext:v1];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v25 = &type metadata for String;
  v23 = sub_100043F0C();
  v24 = v9;
  v10 = v1;
  result = sub_10002DF64();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_10002DF80(result, 0x656D614E72657375);
  v25 = &type metadata for String;
  v23 = sub_100043EFC();
  v24 = v11;
  v12 = v10;
  result = sub_10002DF64();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100044AEC();
  sub_100043EDC();
  sub_10002BBE8(v12, v13, v14, v15, v16, v17);
  v19 = v18;
  sub_10002DEDC();
  sub_10002D8C4(v6, v20);
  sub_10002DF00();
  sub_10002DF80(v19, v21);
  v25 = sub_100043BDC();
  sub_1000049E0(&v23);
  sub_100043EEC();
  v22 = v12;
  result = sub_10002DF64();
  if (result)
  {
    sub_100044AEC();
    return v8;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10002C488(uint64_t a1)
{
  sub_10000477C(0, &qword_100060748, JSContext_ptr);
  v1 = sub_100044B1C();
  v2 = sub_100044B2C();

  return v2;
}

uint64_t sub_10002C500(uint64_t a1)
{
  v30 = a1;
  v1 = type metadata accessor for SessionAuthenticatorSignInResponse(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100043FBC();
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100043F9C();
  v29 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - v11;
  v13 = sub_100043B7C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100044ACC();
  if (v17)
  {
    sub_100043B5C();

    if (sub_1000046E4(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v16, v12, v13);
      sub_100043F5C();
      sub_100043F4C();
      (*(v27 + 8))(v6, v28);
      v19 = v29;
      (*(v29 + 16))(v3, v9, v7);
      sub_10002C8E0(v30, v20, v21, v22, v23, v24);
      v18 = v25;
      sub_10002D8C4(v3, type metadata accessor for SessionAuthenticatorSignInResponse);
      (*(v19 + 8))(v9, v7);
      (*(v14 + 8))(v16, v13);
      return v18;
    }

    sub_10002D86C(v12, &qword_100060488, &unk_100046970);
  }

  v18 = sub_1000446CC();
  sub_1000066BC();
  swift_allocError();
  sub_10004467C();
  swift_willThrow();
  return v18;
}

void sub_10002C8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10002E018();
  sub_10002DF14();
  v7 = sub_100043B7C();
  sub_1000061E8();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_10001E7F8();
  v13 = v12 - v11;
  if (![objc_opt_self() valueWithNewObjectInContext:v6])
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_10000477C(0, &qword_100060800, JSValue_ptr);
  sub_100043F8C();
  sub_100043ADC();
  (*(v9 + 8))(v13, v7);
  v14 = v6;
  if (!sub_10002AF28())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_100044AEC();
  sub_100043F7C();
  v15 = v14;
  if (!sub_10002AF28())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_100044AEC();
  sub_100043F6C();
  v16 = v15;
  if (sub_10002AF28())
  {
    sub_100044AEC();
    sub_10002DFE0();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10002CB74(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_1000448BC();
  sub_1000061E8();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_10001E7F8();
  v11 = v10 - v9;
  v12 = a1;
  sub_10004489C();
  if (!v2)
  {
    v3 = sub_1000448AC();
    (*(v7 + 8))(v11, v5);
  }

  return v3;
}

uint64_t sub_10002CC60(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a1;
  v4 = sub_1000441BC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v24 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_100003514(&qword_100060A50, &unk_100047080);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_100044A5C();
  sub_10000464C(v12, 1, 1, v13);
  v14 = *(v5 + 16);
  v14(v9, v25, v4);
  v14(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v4);
  v15 = *(v5 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = (v6 + v15 + v16) & ~v15;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v19 = *(v5 + 32);
  v19(v18 + v16, v9, v4);
  v19(v18 + v17, v24, v4);
  v20 = v26;
  *(v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v21 = v20;
  sub_10002AFB8(0, 0, v12, &unk_1000478B0, v18);
}

uint64_t sub_10002CE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1000446CC();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_100043FBC();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_10002CFBC, 0, 0);
}

uint64_t sub_10002CFBC(uint64_t a1)
{
  sub_100043F5C();
  v2 = swift_task_alloc();
  *(v1 + 88) = v2;
  *v2 = v1;
  v2[1] = sub_10002D058;

  return OpenAIAuthenticator.signOut()();
}

uint64_t sub_10002D058()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v3 = sub_10002D380;
  }

  else
  {
    v3 = sub_10002D1C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002D1C0()
{
  v1 = *(v0 + 96);
  v2 = sub_100003514(&qword_100060820, &unk_100046E90);
  v3 = sub_10001D83C(v2);
  *(v3 + 16) = xmmword_1000465C0;
  *(v3 + 56) = &type metadata for Bool;
  *(v3 + 32) = 1;
  v4 = sub_1000441AC();
  if (v1)
  {

    v5 = *(v0 + 32);
    v6 = sub_100003514(&qword_100060820, &unk_100046E90);
    v7 = sub_10001D83C(v6);
    sub_10002DF34(v7, xmmword_1000465C0);
    swift_errorRetain();
    sub_10002E030();
    v8.super.isa = v5;
    isa = sub_1000446AC(v8).super.isa;
    v10 = sub_10001D7F8();
    v11(v10);
    v7[3].n128_u64[1] = sub_10000477C(0, &qword_100060800, JSValue_ptr);
    v7[2].n128_u64[0] = isa;
    v12 = sub_1000441AC();
  }

  else
  {
  }

  sub_10002DEF4();

  return v13();
}

uint64_t sub_10002D380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10001D8EC();
  sub_10001D7CC();
  v11 = *(v10 + 32);
  v12 = *(v10 + 24);
  v13 = sub_100003514(&qword_100060820, &unk_100046E90);
  v14 = sub_10001D83C(v13);
  sub_10002DF34(v14, xmmword_1000465C0);
  swift_errorRetain();
  sub_10002E030();
  v15.super.isa = v11;
  sub_1000446AC(v15);
  v16 = sub_10002DFAC();
  v17(v16);
  v18 = sub_10000477C(0, &qword_100060800, JSValue_ptr);
  v19 = sub_10002DF40(v18);

  if (!v12)
  {
  }

  sub_10002DEF4();
  sub_10001D86C();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

id sub_10002D4F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSSessionAuthenticatorObject();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_10002D548(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for JSSessionAuthenticatorObject();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10002D5A0()
{
  v1 = sub_1000441BC();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = (v7 + v4 + v5) & ~v4;
  v9 = (v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v10 = *(v3 + 8);
  v10(v0 + v5, v1);
  v10(v0 + v8, v1);

  return _swift_deallocObject(v0, v9 + 8, v4 | 7);
}

uint64_t sub_10002D694()
{
  sub_10001D8EC();
  sub_10001D7CC();
  sub_1000441BC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002DED8;
  sub_10002DF98();
  sub_10001D86C();

  return sub_10002CE9C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10002D80C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_100003514(a3, a4);
  sub_10002DF24();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10002D86C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_100003514(a2, a3);
  sub_10002DF24();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10002D8C4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_10002DF24();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10002D93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_10002E018();
  v7 = sub_1000441BC();
  sub_1000061E8();
  v9 = v8;
  v10 = *(v8 + 80);
  v11 = (v10 + 32) & ~v10;
  v13 = (*(v12 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v14 = *(v9 + 8);
  v14(v6 + v11, v7);

  v14(v6 + ((v10 + v13 + 8) & ~v10), v7);
  sub_10002DFE0();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_10002DA28()
{
  sub_10001D8EC();
  sub_10001D7CC();
  sub_1000441BC();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002DB44;
  sub_10002DF98();
  sub_10001D86C();

  return sub_10002B498(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_10002DB44()
{

  sub_10002DEF4();

  return v0();
}

uint64_t sub_10002DC48()
{
  sub_10001E744();
  sub_100043ECC();
  v0 = sub_10001E7E8();

  return sub_1000046E4(v0, v1, v2);
}

uint64_t sub_10002DC94()
{
  sub_10001E744();
  sub_100043ECC();
  v0 = sub_10001E77C();

  return sub_10000464C(v0, v1, v2, v3);
}

uint64_t sub_10002DCF8()
{
  sub_10001E744();
  sub_100043F1C();
  v0 = sub_10001E7E8();

  return sub_1000046E4(v0, v1, v2);
}

uint64_t sub_10002DD44()
{
  sub_10001E744();
  sub_100043F1C();
  v0 = sub_10001E77C();

  return sub_10000464C(v0, v1, v2, v3);
}

uint64_t sub_10002DDA8()
{
  sub_10001E744();
  sub_100043F9C();
  v0 = sub_10001E7E8();

  return sub_1000046E4(v0, v1, v2);
}

uint64_t sub_10002DDF4()
{
  sub_10001E744();
  sub_100043F9C();
  v0 = sub_10001E77C();

  return sub_10000464C(v0, v1, v2, v3);
}

uint64_t sub_10002DE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10002DF40(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 32) = v1;

  return sub_1000441AC();
}

id sub_10002DF64()
{

  return sub_100028F50((v1 - 96), v0);
}

uint64_t sub_10002DF80(uint64_t a1, uint64_t a2)
{

  return sub_100044AEC();
}

uint64_t sub_10002DFC0()
{
}

uint64_t sub_10002DFF8()
{

  return swift_task_create();
}

uint64_t sub_10002E030()
{

  return sub_100018B54(v0);
}

uint64_t sub_10002E05C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *a1;
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100043B7C();
    v9 = &a1[*(a3 + 20)];

    return sub_1000046E4(v9, a2, v8);
  }
}

_BYTE *sub_10002E0F0(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *result = a2 + 5;
  }

  else
  {
    v7 = sub_100043B7C();
    v8 = &v5[*(a4 + 20)];

    return sub_10000464C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for JSSourceFile(uint64_t a1)
{
  result = qword_1000612B0;
  if (!qword_1000612B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002E1B8(uint64_t a1)
{
  result = sub_100043B7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSSourceFile.Format(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for JSSourceFile.Format(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
        JUMPOUT(0x10002E388);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10002E3C4()
{
  result = qword_1000612E8;
  if (!qword_1000612E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000612E8);
  }

  return result;
}

Swift::Int sub_10002E418(char a1)
{
  sub_100044E3C();
  sub_100044E4C((a1 & 1u) + 1);
  return sub_100044E5C();
}

Swift::Int sub_10002E490(uint64_t a1, char a2)
{
  sub_100044E3C();
  sub_100044E4C((a2 & 1u) + 1);
  return sub_100044E5C();
}

uint64_t sub_10002E4D8(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10002E514@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002E4D8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10002E540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002E4F0(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_10002E56C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v3 - 8);
  sub_10002FB7C();
  v6 = v4 - v5;
  __chkstk_darwin(v7);
  v9 = &v51 - v8;
  v10 = sub_100043B7C();
  sub_1000061E8();
  v55 = v11;
  __chkstk_darwin(v12);
  sub_10002FB7C();
  v15 = v13 - v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v51 - v18;
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = type metadata accessor for JSSourceInfo(0);
  __chkstk_darwin(v22);
  sub_10001E7F8();
  v25 = v24 - v23;
  v56 = 25705;
  v57 = 0xE200000000000000;
  sub_10002FC00(v26, &type metadata for String, &protocol witness table for String);
  sub_10002FB8C();
  sub_1000072CC(v58);
  if (!v60)
  {
    goto LABEL_9;
  }

  sub_10002FBC8();
  v27 = sub_10002FBD4();
  if ((v27 & 1) == 0)
  {
    goto LABEL_11;
  }

  v54 = v10;
  v28 = a2;
  v29 = v57;
  v52 = v56;
  v56 = 0x736E726574746170;
  v57 = 0xE800000000000000;
  sub_10002FC00(v27, &type metadata for String, &protocol witness table for String);
  sub_10002FB8C();
  sub_1000072CC(v58);
  if (!v60)
  {

    sub_10000470C(v59, &qword_100061D00, &qword_1000465F0);
LABEL_15:
    v35 = 1;
    a2 = v28;
    return sub_10000464C(a2, v35, 1, v22);
  }

  v53 = v29;
  sub_100003514(&qword_100061310, &unk_100047AB0);
  sub_10002FBC8();
  if ((sub_10002FBD4() & 1) == 0)
  {

    goto LABEL_15;
  }

  v51 = v56;
  v59[0] = 0xD000000000000012;
  v59[1] = 0x800000010004A610;
  sub_100044BFC();
  sub_10002FB8C();
  sub_1000072CC(v58);
  a2 = v28;
  if (v60)
  {
    sub_10002FBC8();
    v30 = sub_10002FBD4();
    if (v30)
    {
      v31 = *&v56;
    }

    else
    {
      v31 = 86400.0;
    }
  }

  else
  {
    v30 = sub_10000470C(v59, &qword_100061D00, &qword_1000465F0);
    v31 = 86400.0;
  }

  v37 = v54;
  v56 = 7107189;
  v57 = 0xE300000000000000;
  sub_10002FC00(v30, &type metadata for String, &protocol witness table for String);
  sub_10002FB8C();
  sub_1000072CC(v58);
  if (!v60)
  {
    v40 = &qword_100061D00;
    v41 = &qword_1000465F0;
    v42 = v59;
LABEL_24:
    v38 = sub_10000470C(v42, v40, v41);
    goto LABEL_25;
  }

  sub_10002FBC8();
  v38 = sub_10002FBD4();
  if (v38)
  {
    sub_100043B5C();
    v37 = v54;

    sub_10002FC30(v9);
    if (!v39)
    {

      v44 = *(v55 + 32);
      v44(v21, v9, v37);
      v44(v19, v21, v37);
      *v25 = v31;
      v45 = v53;
      *(v25 + 8) = v52;
      *(v25 + 16) = v45;
      sub_10002FC18(v25 + v22[6], 1);
      *(v25 + v22[7]) = v51;
      v46 = v22[8];
      v44((v25 + v46), v19, v37);
      v47 = v25 + v46;
      v48 = 0;
LABEL_32:
      sub_10002FC18(v47, v48);
      sub_10002F774(v25, a2);
      v35 = 0;
      return sub_10000464C(a2, v35, 1, v22);
    }

    v40 = &qword_100060488;
    v41 = &unk_100046970;
    v42 = v9;
    goto LABEL_24;
  }

LABEL_25:
  v56 = 0x556B63617074656ALL;
  v57 = 0xEA00000000004C52;
  sub_10002FC00(v38, &type metadata for String, &protocol witness table for String);
  sub_10002FB8C();

  sub_1000072CC(v58);
  v43 = v53;
  if (v60)
  {
    sub_10002FBC8();
    if (sub_10002FBD4())
    {
      sub_100043B5C();

      sub_10002FC30(v6);
      if (!v39)
      {
        v49 = *(v55 + 32);
        v49(v15, v6, v37);
        v49(v19, v15, v37);
        *v25 = v31;
        *(v25 + 8) = v52;
        *(v25 + 16) = v43;
        v50 = v22[6];
        v49(v25 + v50, v19, v37);
        sub_10002FC18(v25 + v50, 0);
        *(v25 + v22[7]) = v51;
        v47 = v25 + v22[8];
        v48 = 1;
        goto LABEL_32;
      }

      v32 = &qword_100060488;
      v33 = &unk_100046970;
      v34 = v6;
      goto LABEL_10;
    }

LABEL_11:

    goto LABEL_12;
  }

LABEL_9:

  v32 = &qword_100061D00;
  v33 = &qword_1000465F0;
  v34 = v59;
LABEL_10:
  sub_10000470C(v34, v32, v33);
LABEL_12:
  v35 = 1;
  return sub_10000464C(a2, v35, 1, v22);
}

uint64_t sub_10002EBC4@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v1 = sub_100003514(&qword_1000612F0, &unk_100047A90);
  __chkstk_darwin(v1 - 8);
  v94 = v89 - v2;
  sub_100043BDC();
  sub_1000061E8();
  v92 = v4;
  v93 = v3;
  __chkstk_darwin(v3);
  sub_10001E7F8();
  v91 = v6 - v5;
  sub_100043ABC();
  sub_1000061E8();
  v96 = v8;
  v97 = v7;
  __chkstk_darwin(v7);
  sub_10001E7F8();
  v95 = v10 - v9;
  v11 = sub_100003514(&qword_100060488, &unk_100046970);
  __chkstk_darwin(v11 - 8);
  sub_10002FB7C();
  v14 = v12 - v13;
  v16 = __chkstk_darwin(v15);
  v18 = v89 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = v89 - v20;
  __chkstk_darwin(v19);
  v23 = v89 - v22;
  v24 = sub_100043B7C();
  sub_1000061E8();
  v26 = v25;
  __chkstk_darwin(v27);
  sub_10002FB7C();
  v30 = v28 - v29;
  v32 = __chkstk_darwin(v31);
  v34 = v89 - v33;
  v35 = __chkstk_darwin(v32);
  v100 = v89 - v36;
  v37 = __chkstk_darwin(v35);
  v99 = v89 - v38;
  v39 = __chkstk_darwin(v37);
  __chkstk_darwin(v39);
  v102 = v89 - v40;
  v41 = [objc_opt_self() ams_cachesDirectory];
  if (v41)
  {
    v42 = v41;
    sub_100043B3C();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  sub_10000464C(v21, v43, 1, v24);
  sub_100029138(v21, v23);
  sub_10002FBA8(v23);
  if (v52)
  {
    v44 = &qword_100060488;
    v45 = &unk_100046970;
    v46 = v23;
  }

  else
  {
    v89[2] = v30;
    sub_100043B0C();
    v98 = *(v26 + 8);
    v98(v23, v24);
    v47 = v26 + 32;
    v48 = *(v26 + 32);
    v49 = v102;
    v48();
    v50 = type metadata accessor for JSSourceInfo(0);
    v51 = v101;
    sub_100023830(v101 + *(v50 + 24), v14);
    sub_10002FBA8(v14);
    v90 = v48;
    if (v52)
    {
      sub_100023830(v51 + *(v50 + 32), v18);
      sub_10002FBA8(v14);
      if (!v52)
      {
        sub_10000470C(v14, &qword_100060488, &unk_100046970);
      }
    }

    else
    {
      (v48)(v18, v14, v24);
      sub_10000464C(v18, 0, 1, v24);
    }

    sub_10002FBA8(v18);
    if (v52)
    {
      v98(v49, v24);
      v44 = &qword_100060488;
      v45 = &unk_100046970;
      v46 = v18;
    }

    else
    {
      v89[1] = v47;
      (v90)(v99, v18, v24);
      sub_100043B0C();
      sub_100043ACC();
      sub_100043B1C();

      v98(v34, v24);
      strcpy(&v104, "metadata.plist");
      HIBYTE(v104) = -18;
      v54 = v95;
      v53 = v96;
      v55 = v97;
      (*(v96 + 104))(v95, enum case for URL.DirectoryHint.inferFromPath(_:), v97);
      sub_10002F674();
      sub_100043B6C();
      (*(v53 + 8))(v54, v55);
      v56 = sub_100043B8C();
      v58 = v57;
      sub_100043A8C();
      swift_allocObject();
      sub_100043A7C();
      sub_10002F720();
      sub_100043A6C();
      v86 = sub_10002FBEC();
      v87(v86);

      sub_100023364(v56, v58);
      v88 = v104 == 2;
      v59 = v90;
      v60 = v100;
      v61 = [objc_opt_self() defaultManager];
      sub_100043B4C();
      v62 = sub_10004491C();

      *&v104 = 0;
      v63 = [v61 attributesOfItemAtPath:v62 error:&v104];

      v64 = v104;
      if (!v63)
      {
        v71 = v104;
        sub_100043AAC();

        swift_willThrow();

        v82 = v98;
        v98(v60, v24);
        v82(v99, v24);
        v72 = v49;
LABEL_28:
        v82(v72, v24);
        goto LABEL_23;
      }

      type metadata accessor for FileAttributeKey(0);
      sub_10002F6C8();
      v65 = sub_1000448EC();
      v66 = v64;

      sub_100030820(NSFileModificationDate, v65, &v104);

      if (v105)
      {
        v68 = v93;
        v67 = v94;
        v69 = swift_dynamicCast();
        sub_10002FC18(v67, v69 ^ 1u);
        sub_10002FC30(v67);
        if (!v52)
        {
          v78 = v91;
          v79 = v92;
          (*(v92 + 32))(v91, v67, v68);
          sub_100043BCC();
          v81 = v80;
          (*(v79 + 8))(v78, v68);
          v82 = v98;
          v98(v99, v24);
          v82(v102, v24);
          if (*v51 > -v81)
          {
            v83 = sub_100003514(&qword_1000612F8, &unk_100047AA0);
            v84 = *(v83 + 48);
            v85 = v103;
            (v59)(v103, v60, v24);
            *(v85 + v84) = v88;
            v75 = v85;
            v76 = 0;
            v74 = v83;
            return sub_10000464C(v75, v76, 1, v74);
          }

          v72 = v60;
          goto LABEL_28;
        }

        v70 = v98;
        v98(v60, v24);
        v70(v99, v24);
        v70(v102, v24);
      }

      else
      {
        v73 = v98;
        v98(v60, v24);
        v73(v99, v24);
        v73(v102, v24);
        sub_10000470C(&v104, &qword_100061D00, &qword_1000465F0);
        v67 = v94;
        sub_10000464C(v94, 1, 1, v93);
      }

      v44 = &qword_1000612F0;
      v45 = &unk_100047A90;
      v46 = v67;
    }
  }

  sub_10000470C(v46, v44, v45);
LABEL_23:
  v74 = sub_100003514(&qword_1000612F8, &unk_100047AA0);
  v75 = v103;
  v76 = 1;
  return sub_10000464C(v75, v76, 1, v74);
}

uint64_t type metadata accessor for JSSourceInfo(uint64_t a1)
{
  result = qword_100061370;
  if (!qword_100061370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10002F674()
{
  result = qword_100061300;
  if (!qword_100061300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061300);
  }

  return result;
}

unint64_t sub_10002F6C8()
{
  result = qword_100060028;
  if (!qword_100060028)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100060028);
  }

  return result;
}

unint64_t sub_10002F720()
{
  result = qword_100061308;
  if (!qword_100061308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061308);
  }

  return result;
}

uint64_t sub_10002F774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSSourceInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for JetpackKind(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10002F8A4);
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

uint64_t sub_10002F8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003514(&qword_100060488, &unk_100046970);
    v9 = a1 + *(a3 + 24);

    return sub_1000046E4(v9, a2, v8);
  }
}

uint64_t sub_10002F998(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_100003514(&qword_100060488, &unk_100046970);
    v8 = v5 + *(a4 + 24);

    return sub_10000464C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002FA24(uint64_t a1)
{
  sub_10002ACC4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10002FAD4();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_10002FAD4()
{
  if (!qword_100061380)
  {
    v0 = sub_100044A2C();
    if (!v1)
    {
      atomic_store(v0, &qword_100061380);
    }
  }
}

unint64_t sub_10002FB28()
{
  result = qword_1000613C0;
  if (!qword_1000613C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000613C0);
  }

  return result;
}

double sub_10002FB8C()
{

  return sub_1000307BC(v1 - 168, v0, (v1 - 128));
}

uint64_t sub_10002FBD4()
{

  return swift_dynamicCast();
}

void *sub_10002FC00(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_100044BFC();
}

uint64_t sub_10002FC18(uint64_t a1, uint64_t a2)
{

  return sub_10000464C(a1, a2, 1, v2);
}

uint64_t sub_10002FC50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v30 = a1;
  v31 = a2;
  v5 = sub_10004461C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for JSSourceUrlParser(0);
  __chkstk_darwin(v29);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v10 = sub_100043DBC();
  v28 = sub_1000060A4(v10, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v36 = type metadata accessor for JSSourceLoader();
  v35[0] = v4;

  v11 = AMSLogKey();
  if (v11)
  {
    v12 = v11;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v35);
  sub_100043CFC();
  v13 = sub_100043B7C();
  v36 = v13;
  v14 = sub_1000049E0(v35);
  v15 = *(*(v13 - 8) + 16);
  v16 = v30;
  v15(v14, v30, v13);
  sub_100043D0C();
  sub_100006100(v35);
  sub_100043D9C();

  v15(&v9[*(v29 + 20)], v16, v13);
  v17 = *(v6 + 16);
  v18 = v31;
  v17(v9, v31, v5);
  sub_100032C04();
  sub_100030248(v9);
  v19 = v32;
  v17(v32, v18, v5);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v20, v19, v5);
  v24 = v33;
  v23 = v34;
  *(v22 + v21) = v33;
  *(v22 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)) = v23;
  v36 = sub_10004448C();
  v37 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v35);
  v25 = v24;

  sub_10004447C();
  sub_100003514(&qword_100060498, "xV");
  sub_1000303F8();
  v26 = sub_1000447DC();

  sub_100004408(v35);
  return v26;
}

uint64_t sub_1000300AC(_BYTE *a1, uint64_t a2, void *a3, void *a4)
{
  switch(*a1)
  {
    case 1:
    case 4:
      v8 = type metadata accessor for JetpackLoader();
      v9 = swift_allocObject();
      v10 = &off_100059BF0;
      break;
    case 2:
    case 5:
      v8 = type metadata accessor for JetpackV2Loader();
      v9 = swift_allocObject();
      v10 = &off_100059DC0;
      break;
    case 3:
      v8 = type metadata accessor for RemoteJavaScriptLoader();
      v9 = swift_allocObject();
      v10 = &off_10005B070;
      break;
    default:
      v8 = type metadata accessor for LocalJavascriptLoader();
      v9 = swift_allocObject();
      v10 = &off_10005AC40;
      break;
  }

  v14[3] = v8;
  v14[4] = v10;
  v14[0] = v9;
  sub_100004454(v14, v8);
  v11 = type metadata accessor for JSSourceFile(0);
  v12 = (v10[1])(&a1[*(v11 + 20)], a2, a3, a4);
  sub_100004408(v14);
  return v12;
}

uint64_t sub_100030248(uint64_t a1)
{
  v2 = type metadata accessor for JSSourceUrlParser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000302A4()
{
  v1 = sub_10004461C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100030350(_BYTE *a1)
{
  v3 = *(sub_10004461C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000300AC(a1, v1 + v4, v6, v7);
}

unint64_t sub_1000303F8()
{
  result = qword_100061468;
  if (!qword_100061468)
  {
    sub_10000A584(&qword_100060498, "xV");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061468);
  }

  return result;
}

id sub_10003045C(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(AMSURLRequestEncoder) initWithBag:sub_1000445CC()];
  swift_unknownObjectRelease();
  [v3 setClientInfo:a2];
  if (deviceIsRunningInternalBuild())
  {
    [v3 setUrlKnownToBeTrusted:1];
  }

  return v3;
}

id sub_1000304EC(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() sharedURLCache];
  [v3 setMemoryCapacity:0];

  v4 = objc_opt_self();
  v5 = [v4 ams_configurationWithProcessInfo:a2 bag:sub_1000445CC()];
  swift_unknownObjectRelease();
  sub_1000305B0();
  return sub_1000305F4(v5, 0, 0);
}

unint64_t sub_1000305B0()
{
  result = qword_100060190;
  if (!qword_100060190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100060190);
  }

  return result;
}

id sub_1000305F4(void *a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 delegate:a2 delegateQueue:a3];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100030660(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100030680(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000306C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100030724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100006DFC(a1, a2);
  if (v3)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

void *sub_100030774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_100006DFC(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_1000307BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100006DB8(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1000034B8(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_100030820@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_100006E74(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1000034B8(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_100030884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_100006DFC(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_100043B7C();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_100043B7C();
    v11 = a4;
    v12 = 1;
  }

  return sub_10000464C(v11, v12, 1, v13);
}

NSString sub_100030948()
{
  result = sub_10004491C();
  qword_100061470 = result;
  return result;
}

uint64_t sub_100030988()
{
  v1 = v0;
  v27 = sub_100043B7C();
  sub_1000061E8();
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  v7 = &v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003514(&qword_100061578, "(b");
  sub_1000061E8();
  v10 = v9;
  __chkstk_darwin(v11);
  v13 = &v28[-1] - v12;
  v14 = sub_10004461C();
  sub_1000061E8();
  v16 = v15;
  __chkstk_darwin(v17);
  v19 = &v28[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19, v1 + OBJC_IVAR____TtC16UtilityExtension20JSSourceUrlOverrider_bag, v14);
  if (qword_10005FF20 != -1)
  {
    swift_once();
  }

  sub_10004460C();
  (*(v16 + 8))(v19, v14);
  sub_1000445FC();
  (*(v10 + 8))(v13, v8);
  v20 = sub_10004448C();
  v29 = v20;
  v30 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v28);

  sub_10004447C();
  sub_100003514(&qword_100061580, &unk_100047C50);
  sub_1000326D8(&qword_100061588, &qword_100061580, &unk_100047C50);
  sub_1000447DC();

  sub_100004408(v28);
  v21 = v27;
  (*(v3 + 16))(&v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1 + OBJC_IVAR____TtC16UtilityExtension20JSSourceUrlOverrider_url, v27);
  v22 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v23 = (v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v3 + 32))(v24 + v22, v7, v21);
  *(v24 + v23) = v1;
  v29 = v20;
  v30 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v28);

  sub_10004447C();
  sub_100003514(&qword_100061590, &qword_100047D80);
  sub_1000326D8(&qword_100061598, &qword_100061590, &qword_100047D80);
  v25 = sub_1000447DC();

  sub_100004408(v28);
  return v25;
}

uint64_t sub_100030D98(uint64_t *a1, void *a2)
{
  v4 = sub_100003514(&qword_1000615B0, &unk_100047C70);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for JSSourceInfo(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v11 = sub_100002CB4(*a1);
    if (v11)
    {
      v12 = v11;
      v25 = v8;
      v13 = 0;
      v14 = v11[2];
      a2 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v14 == v13)
        {

          sub_100003514(&qword_100061580, &unk_100047C50);
          v26[0] = a2;
          return sub_1000447BC();
        }

        if (v13 >= v12[2])
        {
          break;
        }

        sub_10002E56C(v6);
        if (sub_1000046E4(v6, 1, v7) == 1)
        {
          sub_10000AC5C(v6, &qword_1000615B0, &unk_100047C70);
          ++v13;
        }

        else
        {
          sub_10002F774(v6, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_100015EA4(0, a2[2] + 1, 1, a2);
          }

          v16 = a2[2];
          v15 = a2[3];
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            v24 = v16 + 1;
            v18 = sub_100015EA4((v15 > 1), v16 + 1, 1, a2);
            v17 = v24;
            a2 = v18;
          }

          ++v13;
          a2[2] = v17;
          sub_10002F774(v10, a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v16);
        }
      }

      __break(1u);
      goto LABEL_19;
    }
  }

  if (qword_10005FF30 != -1)
  {
LABEL_19:
    swift_once();
  }

  v19 = sub_100043DBC();
  sub_1000060A4(v19, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v26[3] = type metadata accessor for JSSourceUrlOverrider(0);
  v26[0] = a2;

  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v26);
  sub_100043CFC();
  sub_100043D8C();

  sub_100003514(&qword_100061580, &unk_100047C50);
  sub_10003286C();
  swift_allocError();
  *v23 = 0;
  return sub_1000447AC();
}

uint64_t sub_1000311BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v118 = a3;
  v4 = sub_100003514(&qword_1000615A0, &unk_100047C60);
  __chkstk_darwin(v4 - 8);
  v108 = &v101 - v5;
  v117 = sub_100003514(&qword_1000612F8, &unk_100047AA0);
  v6 = __chkstk_darwin(v117);
  v106 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v105 = &v101 - v9;
  __chkstk_darwin(v8);
  v111 = &v101 - v10;
  v11 = sub_100003514(&qword_100060488, &unk_100046970);
  v12 = __chkstk_darwin(v11 - 8);
  v102 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v104 = &v101 - v15;
  v16 = __chkstk_darwin(v14);
  v109 = &v101 - v17;
  __chkstk_darwin(v16);
  v114 = &v101 - v18;
  v115 = sub_100043B7C();
  v119 = *(v115 - 8);
  v19 = __chkstk_darwin(v115);
  v103 = &v101 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v107 = &v101 - v22;
  v23 = __chkstk_darwin(v21);
  v110 = &v101 - v24;
  __chkstk_darwin(v23);
  v112 = &v101 - v25;
  v26 = type metadata accessor for JSSourceInfo(0);
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v28);
  v113 = &v101 - v32;
  __chkstk_darwin(v31);
  v116 = &v101 - v33;
  v34 = *a1;
  v35 = sub_100043ADC();
  v37 = v36;
  v123 = *(v34 + 16);
  if (v123)
  {
    v38 = 0;
    v39 = 0;
    v40 = *(v27 + 80);
    v124 = v30;
    v125 = v34 + ((v40 + 32) & ~v40);
    v41 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v41 = v35;
    }

    v127 = (v41 << 16) | 7;
    v128 = v35;
    v121 = v27;
    v122 = v26;
    v120 = v34;
    while (2)
    {
      if (v38 >= *(v34 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v126 = v38 + 1;
      sub_10003272C(v125 + *(v27 + 72) * v38, v30);
      v42 = 0;
      v43 = *&v30[*(v26 + 28)];
      v44 = *(v43 + 16);
      v45 = (v43 + 40);
      while (v44 != v42)
      {
        if (v42 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        v46 = *(v45 - 1);
        v47 = *v45;
        objc_allocWithZone(NSRegularExpression);
        swift_bridgeObjectRetain_n();
        v48 = sub_100032790(v46, v47, 0);
        v49 = v48;
        if (v48)
        {
          if ((v37 & 0x1000000000000000) != 0)
          {
            v50 = sub_1000449DC();
          }

          else
          {
            v50 = sub_1000449EC();
          }

          v51 = v50;
          v52 = sub_10004491C();
          v53 = [v49 firstMatchInString:v52 options:0 range:{0, v51}];

          if (v53)
          {

            v57 = v113;
            sub_10002F774(v124, v113);
            v44 = v116;
            sub_10002F774(v57, v116);
            type metadata accessor for JSSourceUrlOverrides();
            v58 = sub_100032AE8();
            v59 = *(v44 + 8);
            v60 = *(v44 + 16);
            v61 = v114;
            sub_100030884(v59, v60, v58, v114);

            v37 = v115;
            if (sub_1000046E4(v61, 1, v115) == 1)
            {
              sub_10000AC5C(v61, &qword_100060488, &unk_100046970);
              v62 = sub_100032AF4();
              v63 = v109;
              sub_100030884(v59, v60, v62, v109);

              if (sub_1000046E4(v63, 1, v37) != 1)
              {
                (*(v119 + 32))(v110, v63, v37);
                if (qword_10005FF30 != -1)
                {
                  swift_once();
                }

                v74 = sub_100043DBC();
                sub_1000060A4(v74, qword_100065200);
                sub_100003514(&qword_100061CF0, &unk_1000466A0);
                sub_100043D4C();
                *(swift_allocObject() + 16) = xmmword_1000468F0;
                v130 = type metadata accessor for JSSourceUrlOverrider(0);
                v129[0] = v118;

                v75 = AMSLogKey();
                if (v75)
                {
                  v76 = v75;
                  sub_10004494C();
                }

                sub_100043D2C();

                sub_100004408(v129);
                sub_100043CFC();
                sub_100043D9C();

                sub_100003514(&qword_100061590, &qword_100047D80);
                v89 = *(v117 + 48);
                v78 = v119;
                v90 = *(v119 + 16);
                v91 = v111;
                v92 = v111;
                v93 = &v133;
                goto LABEL_40;
              }

              sub_10000AC5C(v63, &qword_100060488, &unk_100046970);
              v64 = v108;
              sub_10002EBC4(v108);
              v65 = v117;
              if (sub_1000046E4(v64, 1, v117) != 1)
              {
                v84 = v105;
                sub_10003291C(v64, v105);
                sub_100003514(&qword_100061590, &qword_100047D80);
                v85 = v111;
                sub_10000DFD4(v84, v111, &qword_1000612F8, &unk_100047AA0);
                v86 = *(v65 + 48);
                v87 = *(v85 + v86);
                v88 = v106;
                (*(v119 + 32))(v106, v85, v37);
                v88[v86] = v87;
                v69 = sub_1000447BC();
                sub_10000AC5C(v84, &qword_1000612F8, &unk_100047AA0);
                goto LABEL_42;
              }

              sub_10000AC5C(v64, &qword_1000615A0, &unk_100047C60);
              v66 = v122;
              v39 = v104;
              sub_10000DFD4(v44 + *(v122 + 24), v104, &qword_100060488, &unk_100046970);
              if (sub_1000046E4(v39, 1, v37) == 1)
              {
                sub_10000AC5C(v39, &qword_100060488, &unk_100046970);
                v67 = v102;
                sub_10000DFD4(v44 + *(v66 + 32), v102, &qword_100060488, &unk_100046970);
                if (sub_1000046E4(v67, 1, v37) == 1)
                {
                  sub_10000AC5C(v67, &qword_100060488, &unk_100046970);
                  sub_100003514(&qword_100061590, &qword_100047D80);
                  sub_10003286C();
                  swift_allocError();
                  *v68 = 0;
                  v69 = sub_1000447AC();
LABEL_42:
                  sub_1000328C0(v44);
                  return v69;
                }

                (*(v119 + 32))(v103, v67, v37);
                if (qword_10005FF30 != -1)
                {
                  swift_once();
                }

                v98 = sub_100043DBC();
                sub_1000060A4(v98, qword_100065200);
                sub_100003514(&qword_100061CF0, &unk_1000466A0);
                sub_100043D4C();
                *(swift_allocObject() + 16) = xmmword_1000468F0;
                v130 = type metadata accessor for JSSourceUrlOverrider(0);
                v129[0] = v118;

                v99 = AMSLogKey();
                if (v99)
                {
                  v100 = v99;
                  sub_10004494C();
                }

                sub_100043D2C();

                sub_100004408(v129);
                sub_100043CFC();
                sub_100043D9C();

                sub_100003514(&qword_100061590, &qword_100047D80);
                v89 = *(v117 + 48);
                v78 = v119;
                v90 = *(v119 + 16);
                v91 = v111;
                v92 = v111;
                v93 = &v131;
LABEL_40:
                v83 = *(v93 - 32);
                v90(v92, v83, v37);
                *(v91 + v89) = 0;
LABEL_41:
                v69 = sub_1000447BC();
                (*(v78 + 8))(v83, v37);
                goto LABEL_42;
              }

LABEL_45:
              (*(v119 + 32))(v107, v39, v37);
              if (qword_10005FF30 != -1)
              {
                swift_once();
              }

              v95 = sub_100043DBC();
              sub_1000060A4(v95, qword_100065200);
              sub_100003514(&qword_100061CF0, &unk_1000466A0);
              sub_100043D4C();
              *(swift_allocObject() + 16) = xmmword_1000468F0;
              v130 = type metadata accessor for JSSourceUrlOverrider(0);
              v129[0] = v118;

              v96 = AMSLogKey();
              if (v96)
              {
                v97 = v96;
                sub_10004494C();
              }

              sub_100043D2C();

              sub_100004408(v129);
              sub_100043CFC();
              sub_100043D9C();

              sub_100003514(&qword_100061590, &qword_100047D80);
              v77 = *(v117 + 48);
              v78 = v119;
              v79 = *(v119 + 16);
              v80 = v111;
              v81 = v111;
              v82 = &v132;
            }

            else
            {
              (*(v119 + 32))(v112, v61, v37);
              if (qword_10005FF30 != -1)
              {
                swift_once();
              }

              v70 = sub_100043DBC();
              sub_1000060A4(v70, qword_100065200);
              sub_100003514(&qword_100061CF0, &unk_1000466A0);
              sub_100043D4C();
              *(swift_allocObject() + 16) = xmmword_1000468F0;
              v130 = type metadata accessor for JSSourceUrlOverrider(0);
              v129[0] = v118;

              v71 = AMSLogKey();
              if (v71)
              {
                v72 = v71;
                sub_10004494C();
              }

              sub_100043D2C();

              sub_100004408(v129);
              sub_100043CFC();
              sub_100043D9C();

              sub_100003514(&qword_100061590, &qword_100047D80);
              v77 = *(v117 + 48);
              v78 = v119;
              v79 = *(v119 + 16);
              v80 = v111;
              v81 = v111;
              v82 = &v134;
            }

            v83 = *(v82 - 32);
            v79(v81, v83, v37);
            *(v80 + v77) = 1;
            goto LABEL_41;
          }
        }

        else
        {
        }

        v45 += 2;
        ++v42;
      }

      v30 = v124;
      sub_1000328C0(v124);
      v38 = v126;
      v26 = v122;
      v34 = v120;
      v27 = v121;
      if (v126 != v123)
      {
        continue;
      }

      break;
    }
  }

  if (qword_10005FF30 != -1)
  {
LABEL_56:
    swift_once();
  }

  v54 = sub_100043DBC();
  sub_1000060A4(v54, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  v130 = type metadata accessor for JSSourceUrlOverrider(0);
  v129[0] = v118;

  v55 = AMSLogKey();
  if (v55)
  {
    v56 = v55;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v129);
  sub_100043CFC();
  sub_100043D9C();

  sub_100003514(&qword_100061590, &qword_100047D80);
  sub_10003286C();
  swift_allocError();
  *v73 = 1;
  return sub_1000447AC();
}

uint64_t sub_1000323C0()
{
  v1 = OBJC_IVAR____TtC16UtilityExtension20JSSourceUrlOverrider_bag;
  sub_10004461C();
  sub_10000AF2C();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC16UtilityExtension20JSSourceUrlOverrider_url;
  sub_100043B7C();
  sub_10000AF2C();
  (*(v4 + 8))(v0 + v3);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t type metadata accessor for JSSourceUrlOverrider(uint64_t a1)
{
  result = qword_1000614B0;
  if (!qword_1000614B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000324D8(uint64_t a1)
{
  result = sub_10004461C();
  if (v2 <= 0x3F)
  {
    result = sub_100043B7C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1000325AC()
{
  sub_100043B7C();
  sub_10000AF2C();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t sub_10003263C(uint64_t *a1)
{
  v3 = *(sub_100043B7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000311BC(a1, v1 + v4, v5);
}

uint64_t sub_1000326D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000A584(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003272C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSSourceInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100032790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004491C();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_100043AAC();

    swift_willThrow();
  }

  return v6;
}

unint64_t sub_10003286C()
{
  result = qword_1000615A8;
  if (!qword_1000615A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000615A8);
  }

  return result;
}

uint64_t sub_1000328C0(uint64_t a1)
{
  v2 = type metadata accessor for JSSourceInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003291C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_1000612F8, &unk_100047AA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for JSSourceUrlOverrider.OverrideURLError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100032A58);
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

unint64_t sub_100032A94()
{
  result = qword_1000615B8;
  if (!qword_1000615B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000615B8);
  }

  return result;
}

uint64_t sub_100032B00(SEL *a1)
{
  v2 = objc_opt_self();
  result = sub_100032B98(v2, a1);
  if (!result)
  {
    sub_100043B7C();

    return sub_1000448FC();
  }

  return result;
}

uint64_t sub_100032B98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_100043B7C();
  v4 = sub_1000448EC();

  return v4;
}

uint64_t sub_100032C04()
{
  v1 = v0;
  v2 = type metadata accessor for JSSourceUrlParser(0);
  sub_1000061E8();
  v20 = v3;
  v5 = *(v4 + 64);
  __chkstk_darwin(v6);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v7 = sub_100043DBC();
  v19[1] = sub_1000060A4(v7, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v22 = v2;
  v8 = sub_1000049E0(v21);
  sub_1000348F4(v1, v8);
  v9 = AMSLogKey();
  if (v9)
  {
    v10 = v9;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v21);
  sub_100043CFC();
  v11 = *(v2 + 20);
  v12 = sub_100043B7C();
  v22 = v12;
  v13 = sub_1000049E0(v21);
  (*(*(v12 - 8) + 16))(v13, v1 + v11, v12);
  sub_100043D0C();
  sub_10002D86C(v21, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  sub_100033064();
  sub_1000348F4(v1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v15 = swift_allocObject();
  sub_100034898(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100034720;
  *(v16 + 24) = v15;
  v22 = sub_10004448C();
  v23 = &protocol witness table for SyncTaskScheduler;
  sub_1000049E0(v21);
  sub_10004447C();
  sub_100003514(&qword_100061660, &unk_100047D60);
  sub_1000347E0();
  v17 = sub_1000447DC();

  sub_100004408(v21);
  return v17;
}

uint64_t type metadata accessor for JSSourceUrlParser(uint64_t a1)
{
  result = qword_1000616E0;
  if (!qword_1000616E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100033064()
{
  v1 = sub_10004461C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100043B7C();
  v6 = *(v5 - 8);
  v24 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for JSSourceUrlParser(0);
  v10 = *(v6 + 16);
  v22 = *(v9 + 20);
  v23 = v10;
  v21 = v0;
  v10(v8, v0 + v22, v5);
  (*(v2 + 16))(v4, v0, v1);
  type metadata accessor for JSSourceUrlOverrider(0);
  v11 = swift_allocObject();
  v12 = *(v6 + 32);
  v12(v11 + OBJC_IVAR____TtC16UtilityExtension20JSSourceUrlOverrider_url, v8, v5);
  (*(v2 + 32))(v11 + OBJC_IVAR____TtC16UtilityExtension20JSSourceUrlOverrider_bag, v4, v1);
  sub_100030988();

  sub_100003514(&qword_100061590, &qword_100047D80);
  v13 = sub_10004482C();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100034A1C;
  *(v14 + 24) = v13;
  v23(v8, v21 + v22, v5);
  v15 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v12(v16 + v15, v8, v5);
  v17 = sub_100034B5C();
  swift_retain_n();
  v18 = sub_100044A7C();
  v25[3] = v17;
  v25[4] = &protocol witness table for OS_dispatch_queue;
  v25[0] = v18;
  sub_10004478C();

  sub_100004408(v25);
  return v13;
}

uint64_t sub_1000333A0(uint64_t a1, int a2, uint64_t a3)
{
  v39 = a2;
  v47 = a1;
  v4 = sub_100003514(&qword_100061670, &qword_100047D70);
  v5 = __chkstk_darwin(v4 - 8);
  v40 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v38 - v7;
  v9 = type metadata accessor for JSSourceFile(0);
  v10 = __chkstk_darwin(v9);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v38 = &v38 - v13;
  __chkstk_darwin(v12);
  v41 = &v38 - v14;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v49 = v9;
  v15 = sub_100043DBC();
  v48 = sub_1000060A4(v15, qword_100065200);
  v16 = sub_100003514(&qword_100061CF0, &unk_1000466A0);
  v42 = 3 * *(*(sub_100043D4C() - 8) + 72);
  v45 = v16;
  v17 = swift_allocObject();
  v44 = xmmword_100046830;
  *(v17 + 16) = xmmword_100046830;
  v43 = type metadata accessor for JSSourceUrlParser(0);
  v51 = v43;
  v18 = sub_1000049E0(v50);
  v19 = a3;
  sub_1000348F4(a3, v18);
  v20 = AMSLogKey();
  if (v20)
  {
    v21 = v20;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v50);
  sub_100043CFC();
  v22 = sub_100043B7C();
  v51 = v22;
  v23 = sub_1000049E0(v50);
  v24 = v47;
  (*(*(v22 - 8) + 16))(v23, v47, v22);
  sub_100043D0C();
  sub_10002D86C(v50, &qword_100061D00, &qword_1000465F0);
  sub_100043D9C();

  v25 = v19;
  sub_100033A80(v24, v8);
  v26 = v49;
  if (sub_1000046E4(v8, 1, v49) != 1)
  {
    v29 = v8;
    v30 = v41;
    sub_100034898(v29, v41);
    *(swift_allocObject() + 16) = v44;
    v51 = v43;
    v31 = sub_1000049E0(v50);
    sub_1000348F4(v19, v31);
    v32 = AMSLogKey();
    if (v32)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  sub_10002D86C(v8, &qword_100061670, &qword_100047D70);
  v27 = v40;
  sub_100034098(v24, v39 & 1, v40);
  if (sub_1000046E4(v27, 1, v26) != 1)
  {
    v30 = v38;
    sub_100034898(v27, v38);
    *(swift_allocObject() + 16) = v44;
    v51 = v43;
    v33 = sub_1000049E0(v50);
    sub_1000348F4(v25, v33);
    v32 = AMSLogKey();
    if (v32)
    {
LABEL_11:
      v34 = v32;
      sub_10004494C();
    }

LABEL_12:
    sub_100043D2C();

    sub_100004408(v50);
    sub_100043CFC();
    v35 = sub_100043ADC();
    v51 = &type metadata for String;
    v50[0] = v35;
    v50[1] = v36;
    sub_100043D0C();
    sub_10002D86C(v50, &qword_100061D00, &qword_1000465F0);
    sub_100043D9C();

    sub_100003514(&qword_100061660, &unk_100047D60);
    sub_1000348F4(v30, v46);
    v28 = sub_1000447BC();
    sub_100034950(v30);
    return v28;
  }

  sub_10002D86C(v27, &qword_100061670, &qword_100047D70);
  sub_100003514(&qword_100061660, &unk_100047D60);
  sub_100034844();
  swift_allocError();
  return sub_1000447AC();
}

uint64_t sub_100033A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a1;
  v72 = a2;
  v78 = sub_100003514(&qword_100061680, &qword_100047D78);
  v2 = __chkstk_darwin(v78);
  v4 = (&v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v2);
  v73 = &v65 - v6;
  v7 = __chkstk_darwin(v5);
  v67 = &v65 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = (&v65 - v10);
  v12 = __chkstk_darwin(v9);
  v76 = &v65 - v13;
  __chkstk_darwin(v12);
  v70 = &v65 - v14;
  v71 = type metadata accessor for JSSourceFile(0);
  v77 = *(v71 - 8);
  v15 = __chkstk_darwin(v71);
  v66 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v65 = &v65 - v18;
  v19 = __chkstk_darwin(v17);
  v69 = &v65 - v20;
  __chkstk_darwin(v19);
  v68 = &v65 - v21;
  if (qword_10005FF28 != -1)
  {
LABEL_29:
    swift_once();
  }

  v22 = off_100061658;
  v23 = off_100061658 + 64;
  v24 = 1 << *(off_100061658 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(off_100061658 + 8);
  v27 = (v24 + 63) >> 6;

  v28 = 0;
  v75 = v4;
  if (!v26)
  {
LABEL_6:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {

        v38 = 1 << v22[32];
        v39 = -1;
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        v40 = v39 & *(v22 + 8);
        v41 = (v38 + 63) >> 6;

        v42 = 0;
        if (v40)
        {
          while (1)
          {
            v43 = v42;
LABEL_19:
            v44 = __clz(__rbit64(v40)) | (v43 << 6);
            v45 = (*(v22 + 6) + 16 * v44);
            v47 = *v45;
            v46 = v45[1];
            v48 = v73;
            sub_1000348F4(*(v22 + 7) + *(v77 + 72) * v44, &v73[*(v78 + 48)]);
            *v48 = v47;
            v48[1] = v46;
            sub_1000349AC(v48, v4);
            v50 = *v4;
            v49 = v4[1];

            v51 = sub_100043ADC();
            v11 = v52;
            v81 = v51;
            v82 = v52;
            v79 = v50;
            v80 = v49;
            sub_10002F674();
            LOBYTE(v46) = sub_100044B4C();

            if (v46)
            {
              break;
            }

            v40 &= v40 - 1;
            sub_10002D86C(v4, &qword_100061680, &qword_100047D78);
            v42 = v43;
            if (!v40)
            {
              goto LABEL_16;
            }
          }

          v60 = v67;
          sub_1000349AC(v4, v67);

          v61 = v60 + *(v78 + 48);
          v62 = v66;
          sub_100034898(v61, v66);
          v58 = v62;
          v59 = v65;
          goto LABEL_25;
        }

LABEL_16:
        while (1)
        {
          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v43 >= v41)
          {

            v53 = 1;
            v54 = v72;
            return sub_10000464C(v54, v53, 1, v71);
          }

          v40 = *&v23[8 * v43];
          ++v42;
          if (v40)
          {
            goto LABEL_19;
          }
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v26 = *&v23[8 * v29];
      ++v28;
      if (v26)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  while (1)
  {
    v29 = v28;
LABEL_9:
    v30 = __clz(__rbit64(v26)) | (v29 << 6);
    v31 = (*(v22 + 6) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = v76;
    sub_1000348F4(*(v22 + 7) + *(v77 + 72) * v30, &v76[*(v78 + 48)]);
    *v34 = v33;
    v34[1] = v32;
    sub_1000349AC(v34, v11);
    v36 = *v11;
    v35 = v11[1];
    type metadata accessor for JSSourceUrlParser(0);

    v81 = sub_100043ADC();
    v82 = v37;
    v79 = v36;
    v80 = v35;
    sub_10002F674();
    LOBYTE(v32) = sub_100044B4C();

    if (v32)
    {
      break;
    }

    v26 &= v26 - 1;
    sub_10002D86C(v11, &qword_100061680, &qword_100047D78);
    v28 = v29;
    v4 = v75;
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  v55 = v70;
  sub_1000349AC(v11, v70);

  v56 = v55 + *(v78 + 48);
  v57 = v69;
  sub_100034898(v56, v69);
  v58 = v57;
  v59 = v68;
LABEL_25:
  sub_100034898(v58, v59);
  v63 = v59;
  v54 = v72;
  sub_100034898(v63, v72);
  v53 = 0;
  return sub_10000464C(v54, v53, 1, v71);
}

uint64_t sub_100034098@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = sub_100043ACC();
  v8 = v7;
  v9 = v6 == 29546 && v7 == 0xE200000000000000;
  if (v9 || (v10 = v6, (sub_100044DAC() & 1) != 0))
  {

LABEL_7:
    v11 = 3;
    goto LABEL_8;
  }

  if (v10 == 0x6B63617074656ALL && v8 == 0xE700000000000000)
  {
  }

  else
  {
    v17 = sub_100044DAC();

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v11 = a2 & 1 | 4;
LABEL_8:
  v12 = type metadata accessor for JSSourceFile(0);
  v13 = *(v12 + 20);
  v14 = sub_100043B7C();
  (*(*(v14 - 8) + 16))(&a3[v13], a1, v14);
  *a3 = v11;

  return sub_10000464C(a3, 0, 1, v12);
}

uint64_t sub_10003423C(uint64_t a1, char a2)
{
  v4 = sub_100003514(&qword_1000612F8, &unk_100047AA0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = *(v5 + 56);
  v9 = sub_100043B7C();
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  v7[v8] = a2 & 1;
  sub_1000447EC();
  return sub_10002D86C(v7, &qword_1000612F8, &unk_100047AA0);
}

uint64_t sub_10003438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100003514(&qword_1000612F8, &unk_100047AA0);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v7 = sub_100043DBC();
  sub_1000060A4(v7, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_1000468F0;
  sub_100043CFC();
  swift_getErrorValue();
  v8 = v14;
  v9 = v15;
  v16[3] = v15;
  v10 = sub_1000049E0(v16);
  (*(*(v9 - 8) + 16))(v10, v8, v9);
  sub_100043D0C();
  sub_10002D86C(v16, &qword_100061D00, &qword_1000465F0);
  sub_100043D8C();

  v11 = *(v4 + 48);
  v12 = sub_100043B7C();
  (*(*(v12 - 8) + 16))(v6, a3, v12);
  v6[v11] = 0;
  sub_1000447EC();
  return sub_10002D86C(v6, &qword_1000612F8, &unk_100047AA0);
}

uint64_t sub_100034618()
{
  v1 = (type metadata accessor for JSSourceUrlParser(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_10004461C();
  sub_10002DF24();
  (*(v5 + 8))(v0 + v3);
  v6 = v1[7];
  sub_100043B7C();
  sub_10002DF24();
  (*(v7 + 8))(v0 + v3 + v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100034720(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for JSSourceUrlParser(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000333A0(a1, a2 & 1, v6);
}

uint64_t sub_1000347A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000347E0()
{
  result = qword_100061668;
  if (!qword_100061668)
  {
    sub_10000A584(&qword_100061660, &unk_100047D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061668);
  }

  return result;
}

unint64_t sub_100034844()
{
  result = qword_100061678;
  if (!qword_100061678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061678);
  }

  return result;
}

uint64_t sub_100034898(uint64_t a1, uint64_t a2)
{
  v4 = sub_100034EB4();
  v5(v4);
  sub_10002DF24();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1000348F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100034EB4();
  v5(v4);
  sub_10002DF24();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100034950(uint64_t a1)
{
  v2 = type metadata accessor for JSSourceFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000349AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003514(&qword_100061680, &qword_100047D78);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034A30()
{
  v1 = sub_100043B7C();
  sub_1000061E8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_100034AE8(uint64_t a1)
{
  v3 = *(sub_100043B7C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10003438C(a1, v4, v5);
}

unint64_t sub_100034B5C()
{
  result = qword_1000604B8;
  if (!qword_1000604B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000604B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JSSourceUrlParser.ParseError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100034C3CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100034C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100034EB4();
  v6 = sub_10004461C();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = v3;
  }

  else
  {
    v7 = sub_100043B7C();
    v8 = v3 + *(a3 + 20);
  }

  return sub_1000046E4(v8, a2, v7);
}

uint64_t sub_100034D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100034EB4();
  v8 = sub_10004461C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = v4;
  }

  else
  {
    v9 = sub_100043B7C();
    v10 = v4 + *(a4 + 20);
  }

  return sub_10000464C(v10, a2, a2, v9);
}

uint64_t sub_100034DD4(uint64_t a1)
{
  result = sub_10004461C();
  if (v2 <= 0x3F)
  {
    result = sub_100043B7C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100034E5C()
{
  result = qword_100061718;
  if (!qword_100061718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100061718);
  }

  return result;
}

uint64_t sub_100034EC0(uint64_t a1)
{
  v3 = sub_10004484C();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10005FF30 != -1)
  {
    swift_once();
  }

  v6 = sub_100043DBC();
  sub_1000060A4(v6, qword_100065200);
  sub_100003514(&qword_100061CF0, &unk_1000466A0);
  sub_100043D4C();
  *(swift_allocObject() + 16) = xmmword_100046830;
  v20 = type metadata accessor for LocalJavascriptLoader();
  v19[0] = v1;

  v7 = AMSLogKey();
  if (v7)
  {
    v8 = v7;
    sub_10004494C();
  }

  sub_100043D2C();

  sub_100004408(v19);
  sub_100043CFC();
  v9 = sub_100043B7C();
  v20 = v9;
  v10 = sub_1000049E0(v19);
  (*(*(v9 - 8) + 16))(v10, a1, v9);
  sub_100043D0C();
  sub_100006100(v19);
  sub_100043D9C();

  sub_10004490C();
  sub_10004485C();
  v20 = v3;
  v21 = &protocol witness table for JSSource;
  v11 = sub_1000049E0(v19);
  v12 = v17;
  (*(v17 + 16))(v11, v5, v3);
  v13 = sub_1000448FC();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v22 = v13;
  sub_100003514(&qword_100060498, "xV");
  sub_10003533C(v19, v18);
  v14 = sub_1000447BC();
  sub_100015C44(v19);
  (*(v12 + 8))(v5, v3);
  return v14;
}

unint64_t sub_1000352E8()
{
  result = qword_1000617C0;
  if (!qword_1000617C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000617C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocalJavascriptLoader.LoadError(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x100035434);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100035470()
{
  result = qword_1000617C8;
  if (!qword_1000617C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000617C8);
  }

  return result;
}

uint64_t sub_1000354C4()
{
  v0 = sub_100043DBC();
  sub_1000084CC(v0, qword_100065200);
  sub_1000060A4(v0, qword_100065200);
  return sub_100043DAC();
}

void sub_100035540(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_100044ADC();
  v5 = sub_100006644(v4);
  if (v5)
  {
    v6 = sub_100023B70(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_100044ADC();
  v23 = sub_100044ACC();
  v9 = v8;

  v10 = sub_100044ADC();
  v11 = sub_100044ACC();
  v13 = v12;

  if (v13)
  {
    sub_100035890();
    v14 = sub_100044ADC();
    v22 = sub_100044ACC();
    v16 = v15;

    if (v16)
    {
      v21 = v6;
      sub_10000B074();
      v17 = sub_100044ADC();
      v20 = sub_100044ACC();
      v19 = v18;

      if (v19)
      {

        *a2 = v21;
        a2[1] = v11;
        a2[2] = v13;
        a2[3] = v23;
        a2[4] = v9;
        a2[5] = v22;
        a2[6] = v16;
        a2[7] = v20;
        a2[8] = v19;
        return;
      }

      sub_10000B074();
    }

    else
    {

      sub_100035890();
    }
  }

  else
  {
  }

  sub_100044ADC();
  sub_1000446CC();
  sub_1000066BC();
  swift_allocError();
  sub_10004469C();
  swift_willThrow();
}

void sub_10003579C(void *a1@<X0>, void *a2@<X8>)
{
  sub_100035540(a1, __src);
  if (!v2)
  {
    memcpy(a2, __src, 0x48uLL);
  }
}

uint64_t sub_1000357F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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