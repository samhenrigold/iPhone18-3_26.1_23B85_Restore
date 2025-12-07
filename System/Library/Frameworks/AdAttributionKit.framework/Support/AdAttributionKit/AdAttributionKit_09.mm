uint64_t sub_1000D6EC8()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 944);

  return _swift_task_switch(sub_1000D6FE8, 0, 0);
}

uint64_t sub_1000D6FE8()
{
  v29 = *(v0 + 1752);
  v30 = *(v0 + 1257);
  v28 = *(v0 + 1648);
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1568);
  v4 = *(v0 + 1560);
  v5 = *(*(v0 + 1632) + 16);
  v5();
  sub_100014B50(v2, v4, &qword_10023A718, qword_1001BBA70);

  AdAttributionKitConversion.init()();

  AdAttributionKitConversion.conversionID.setter();
  AdAttributionKitConversion.advertisedItemID.setter();
  AdAttributionKitConversion.adNetworkID.setter();
  AdAttributionKitConversion.sourceID.setter();

  AdAttributionKitConversion.marketplaceID.setter();
  (v5)(v3, v28, v1);
  v29(v3, 0, 1, v1);
  AdAttributionKitConversion.conversionDate.setter();
  sub_100014B50(v4, v3, &qword_10023A718, qword_1001BBA70);
  AdAttributionKitConversion.impressionDate.setter();
  AdAttributionKitConversion.countryCode.setter();
  v6 = type metadata accessor for AdAttributionKitConversionType();
  v7 = *(v6 - 8);
  v8 = *(v0 + 1258);
  v9 = *(v0 + 1536);
  (*(v7 + 104))(v9, **(&off_10021E0F8 + v30), v6);
  (*(v7 + 56))(v9, 0, 1, v6);
  AdAttributionKitConversion.conversionType.setter();
  if (v8 == 1)
  {
    AdAttributionKitConversion.sourceDomain.setter();
  }

  else
  {
    AdAttributionKitConversion.publisherItemID.setter();
  }

  v10 = *(v0 + 1648);
  v11 = *(v0 + 1632);
  v12 = *(v0 + 1624);
  v13 = *(v0 + 1576);
  v14 = *(v0 + 1560);
  v15 = *(v0 + 1528);
  v16 = type metadata accessor for AdAttributionKitAdInteractionType();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v15, enum case for AdAttributionKitAdInteractionType.view(_:), v16);
  (*(v17 + 56))(v15, 0, 1, v16);
  AdAttributionKitConversion.adInteractionType.setter();
  sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
  sub_10000DAF8(v14, &qword_10023A718, qword_1001BBA70);
  v18 = *(v11 + 8);
  v18(v10, v12);
  sub_10000DAF8(v13, &qword_10023A718, qword_1001BBA70);
  v19 = *(v0 + 1608);
  *(v0 + 1792) = v18;
  (*(*(v0 + 1592) + 32))(*(v0 + 1616), v19, *(v0 + 1584));
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_10000DAC0(v20, qword_10023FD48);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Donating conversion event", v23, 2u);
  }

  v24 = *(v0 + 1504);

  sub_10000DA7C((v24 + 48), *(v24 + 72));
  v25 = swift_task_alloc();
  *(v0 + 1800) = v25;
  *v25 = v0;
  v25[1] = sub_1000D8390;
  v26 = *(v0 + 1616);

  return (sub_1000FB76C)(v26, &type metadata for BiomeEventStreamDog, &off_10021F658);
}

uint64_t sub_1000D7548()
{

  return _swift_task_switch(sub_1000D7644, 0, 0);
}

uint64_t sub_1000D7644()
{
  if (*(v0 + 1176))
  {
    v1 = *(v0 + 1232);
    v2 = *(v0 + 1472);
    sub_10000DAF8(v0 + 1168, &qword_10023CA40, &qword_1001BE2A0);
    if (!*(v2 + 16) || (v3 = sub_1000C3CA8(v1), (v4 & 1) == 0))
    {
      sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000DAC0(v19, qword_10023FD48);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Impression required for reporting", v22, 2u);
      }

      sub_1000E17B4();
      v15 = swift_allocError();
      *v23 = 4;
      swift_willThrow();
      goto LABEL_25;
    }

    v5 = *(v0 + 1680);
    v6 = *(v0 + 1520);
    v7 = *(*(v0 + 1472) + 56) + (v3 << 6);
    v8 = *v7;
    v9 = *(v7 + 8);
    v85 = *(v7 + 16);
    v86 = *(v7 + 56);
    v10 = type metadata accessor for AppImpressionPayload(0);
    v11 = sub_10003AFB8();
    v12 = sub_10003B00C();
    v13 = sub_1000E1D70(&qword_10023A808, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);
    v14 = sub_1000E1D70(&qword_10023A810, type metadata accessor for AppImpressionPayload, &protocol conformance descriptor for AppImpressionPayload);

    JWS.init(compactJWS:)(v8, v9, v10, v11, v12, v13, v14, v6);
    if (v5)
    {
      v15 = v5;
      v16 = &qword_10023B690;
      v17 = &qword_1001B9260;
      v18 = v0 + 1352;
LABEL_24:
      sub_10000DAF8(v18, v16, v17);
LABEL_25:
      *(v0 + 1824) = v15;
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_10000DAC0(v40, qword_10023FD48);
      swift_errorRetain();
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        swift_errorRetain();
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v45;
        *v44 = v45;
        _os_log_impl(&_mh_execute_header, v41, v42, "Encountered error while donating purchase event: %@", v43, 0xCu);
        sub_10000DAF8(v44, &qword_100239F10, &qword_1001B4FD0);
      }

      swift_errorRetain();
      sub_1000CA6E0(v15, (v0 + 496));
      v46 = swift_task_alloc();
      *(v0 + 1832) = v46;
      *v46 = v0;
      v46[1] = sub_1000D88FC;
      v47 = *(v0 + 1688);
      v48 = *(v0 + 1448);
      v49 = *(v0 + 1440);
      v50 = *(v0 + 1257);

      return sub_1000D8F60((v0 + 496), v49, v48, v47, v50, v15);
    }

    if (HIDWORD(*(*(v0 + 1520) + *(*(v0 + 1512) + 68) + *(v10 + 28))))
    {
      sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      sub_10000DAC0(v34, qword_10023FD48);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "Source id is required for reporting", v37, 2u);
      }

      v38 = *(v0 + 1520);

      sub_1000E17B4();
      v15 = swift_allocError();
      *v39 = 0;
      swift_willThrow();
      v16 = &qword_10023A7D0;
      v17 = &unk_1001B5840;
      v18 = v38;
      goto LABEL_24;
    }

    v51 = *(*(v0 + 1632) + 56);
    v51(*(v0 + 1552), 1, 1, *(v0 + 1624));
    if ((v86 & 1) == 0)
    {
      v52 = *(v0 + 1624);
      v53 = *(v0 + 1568);
      v54 = *(v0 + 1552);
      Date.init(timeIntervalSince1970:)();
      sub_10000DAF8(v54, &qword_10023A718, qword_1001BBA70);
      v51(v53, 0, 1, v52);
      sub_1000E1DB8(v53, v54);
    }

    v83 = v51;
    v87 = *(v0 + 1257);
    v81 = *(v0 + 1624);
    v55 = *(v0 + 1568);
    v56 = *(v0 + 1552);
    v57 = *(v0 + 1544);
    v82 = *(v0 + 1640);
    v58 = *(*(v0 + 1632) + 16);
    v58();
    sub_100014B50(v56, v57, &qword_10023A718, qword_1001BBA70);

    AdAttributionKitConversion.init()();

    AdAttributionKitConversion.conversionID.setter();
    AdAttributionKitConversion.advertisedItemID.setter();
    AdAttributionKitConversion.adNetworkID.setter();
    AdAttributionKitConversion.sourceID.setter();

    AdAttributionKitConversion.marketplaceID.setter();
    (v58)(v55, v82, v81);
    v83(v55, 0, 1, v81);
    AdAttributionKitConversion.conversionDate.setter();
    sub_100014B50(v57, v55, &qword_10023A718, qword_1001BBA70);
    AdAttributionKitConversion.impressionDate.setter();
    AdAttributionKitConversion.countryCode.setter();
    v59 = type metadata accessor for AdAttributionKitConversionType();
    v60 = *(v59 - 8);
    v61 = *(&off_10021E0F8 + v87);
    v62 = *(v0 + 1640);
    v63 = *(v0 + 1632);
    v64 = *(v0 + 1624);
    v84 = *(v0 + 1552);
    v65 = *(v0 + 1544);
    v66 = *(v0 + 1536);
    v67 = *(v0 + 1528);
    v88 = *(v0 + 1520);
    (*(v60 + 104))(v66, *v61, v59);
    (*(v60 + 56))(v66, 0, 1, v59);
    AdAttributionKitConversion.conversionType.setter();
    AdAttributionKitConversion.publisherItemID.setter();
    v68 = &enum case for AdAttributionKitAdInteractionType.click(_:);
    if (!v85)
    {
      v68 = &enum case for AdAttributionKitAdInteractionType.view(_:);
    }

    v69 = *v68;
    v70 = type metadata accessor for AdAttributionKitAdInteractionType();
    v71 = *(v70 - 8);
    (*(v71 + 104))(v67, v69, v70);
    (*(v71 + 56))(v67, 0, 1, v70);
    AdAttributionKitConversion.adInteractionType.setter();
    sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
    sub_10000DAF8(v65, &qword_10023A718, qword_1001BBA70);
    v72 = *(v63 + 8);
    v72(v62, v64);
    sub_10000DAF8(v84, &qword_10023A718, qword_1001BBA70);
    sub_10000DAF8(v88, &qword_10023A7D0, &unk_1001B5840);
    v73 = *(v0 + 1600);
    *(v0 + 1792) = v72;
    (*(*(v0 + 1592) + 32))(*(v0 + 1616), v73, *(v0 + 1584));
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_10000DAC0(v74, qword_10023FD48);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "Donating conversion event", v77, 2u);
    }

    v78 = *(v0 + 1504);

    sub_10000DA7C((v78 + 48), *(v78 + 72));
    v79 = swift_task_alloc();
    *(v0 + 1800) = v79;
    *v79 = v0;
    v79[1] = sub_1000D8390;
    v80 = *(v0 + 1616);

    return (sub_1000FB76C)(v80, &type metadata for BiomeEventStreamDog, &off_10021F658);
  }

  else
  {
    sub_10000DAF8(v0 + 1352, &qword_10023B690, &qword_1001B9260);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000DAC0(v24, qword_10023FD48);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 1656);
    v29 = *(v0 + 1632);
    v30 = *(v0 + 1624);
    if (v27)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "No eligible winning postback found", v31, 2u);
    }

    (*(v29 + 8))(v28, v30);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1000D8390()
{
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v2 = sub_1000D8B78;
  }

  else
  {
    v2 = sub_1000D84A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000D84A4()
{
  sub_1000CA6E0(0, (v0 + 720));
  v1 = swift_task_alloc();
  *(v0 + 1816) = v1;
  *v1 = v0;
  v1[1] = sub_1000D855C;
  v2 = *(v0 + 1688);
  v3 = *(v0 + 1448);
  v4 = *(v0 + 1440);
  v5 = *(v0 + 1257);

  return sub_1000D8F60((v0 + 720), v4, v3, v2, v5, 0);
}

uint64_t sub_1000D855C()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 720);

  return _swift_task_switch(sub_1000D8660, 0, 0);
}

uint64_t sub_1000D8660()
{
  v1 = v0[224];
  v2 = v0[207];
  v3 = v0[203];
  (*(v0[199] + 8))(v0[202], v0[198]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000D87CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D88FC()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 496);

  return _swift_task_switch(sub_1000D8A1C, 0, 0);
}

uint64_t sub_1000D8A1C(uint64_t a1)
{
  v2 = v1[207];
  v3 = v1[204];
  v4 = v1[203];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1000D8B78()
{
  (*(*(v0 + 1592) + 8))(*(v0 + 1616), *(v0 + 1584));
  v1 = *(v0 + 1808);
  *(v0 + 1824) = v1;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FD48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Encountered error while donating purchase event: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  swift_errorRetain();
  sub_1000CA6E0(v1, (v0 + 496));
  v8 = swift_task_alloc();
  *(v0 + 1832) = v8;
  *v8 = v0;
  v8[1] = sub_1000D88FC;
  v9 = *(v0 + 1688);
  v10 = *(v0 + 1448);
  v11 = *(v0 + 1440);
  v12 = *(v0 + 1257);

  return sub_1000D8F60((v0 + 496), v11, v10, v9, v12, v1);
}

__n128 sub_1000D8D88@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1].n128_u64[0];
  if (v3)
  {
    v4 = a1 + 2;
    for (i = v3 - 1; ; --i)
    {
      v6 = v4[13];
      v47 = v4[12];
      v48 = v6;
      v49 = v4[14];
      v7 = v4[9];
      v43 = v4[8];
      v44 = v7;
      v8 = v4[11];
      v45 = v4[10];
      v46 = v8;
      v9 = v4[5];
      v39 = v4[4];
      v40 = v9;
      v10 = v4[7];
      v41 = v4[6];
      v42 = v10;
      v11 = v4[1];
      v35 = *v4;
      v36 = v11;
      v12 = v4[3];
      v37 = v4[2];
      v38 = v12;
      if (v40.n128_u64[1])
      {
        if (*&v40 == __PAIR128__(0xE300000000000000, 3157556) || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v47.n128_u8[0] != 2 && (v47.n128_u8[0] & 1) != 0 && (v36.n128_u8[8] & 1) == 0 && !v36.n128_u64[0])
        {
          break;
        }
      }

      if (!i)
      {
        goto LABEL_12;
      }

      v4 += 15;
    }

    v32 = v47;
    v33 = v48;
    v34 = v49;
    v28 = v43;
    v29 = v44;
    v30 = v45;
    v31 = v46;
    v24 = v39;
    v25 = v40;
    v26 = v41;
    v27 = v42;
    v20 = v35;
    v21 = v36;
    v22 = v37;
    v23 = v38;
    MeasurementWindowConfiguration.sourceIDDigits.getter();
    sub_1000195FC(&v35, &v50);
    v62 = v32;
    v63 = v33;
    v64 = v34;
    v58 = v28;
    v59 = v29;
    v60 = v30;
    v61 = v31;
    v54 = v24;
    v55 = v25;
    v56 = v26;
    v57 = v27;
    v50 = v20;
    v51 = v21;
    v52 = v22;
    v53 = v23;
  }

  else
  {
LABEL_12:
    sub_1000E1E28(&v50);
  }

  v13 = v63;
  a2[12] = v62;
  a2[13] = v13;
  a2[14] = v64;
  v14 = v59;
  a2[8] = v58;
  a2[9] = v14;
  v15 = v61;
  a2[10] = v60;
  a2[11] = v15;
  v16 = v55;
  a2[4] = v54;
  a2[5] = v16;
  v17 = v57;
  a2[6] = v56;
  a2[7] = v17;
  v18 = v51;
  *a2 = v50;
  a2[1] = v18;
  result = v53;
  a2[2] = v52;
  a2[3] = result;
  return result;
}

uint64_t sub_1000D8F60(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 1016) = v6;
  *(v7 + 1008) = a6;
  *(v7 + 258) = a5;
  *(v7 + 1000) = a4;
  *(v7 + 992) = a3;
  *(v7 + 984) = a2;
  *(v7 + 976) = a1;
  v8 = a1[11];
  *(v7 + 672) = a1[10];
  *(v7 + 688) = v8;
  v9 = a1[13];
  *(v7 + 704) = a1[12];
  *(v7 + 720) = v9;
  v10 = a1[7];
  *(v7 + 608) = a1[6];
  *(v7 + 624) = v10;
  v11 = a1[9];
  *(v7 + 640) = a1[8];
  *(v7 + 656) = v11;
  v12 = a1[3];
  *(v7 + 544) = a1[2];
  *(v7 + 560) = v12;
  v13 = a1[5];
  *(v7 + 576) = a1[4];
  *(v7 + 592) = v13;
  v14 = a1[1];
  *(v7 + 512) = *a1;
  *(v7 + 528) = v14;
  v15 = sub_10000CDE0(&qword_10023CA20, &unk_1001BE240);
  *(v7 + 1024) = v15;
  *(v7 + 1032) = *(v15 - 8);
  *(v7 + 1040) = swift_task_alloc();

  return _swift_task_switch(sub_1000D907C, 0, 0);
}

uint64_t sub_1000D907C()
{
  if (ConversionType.isInstall.getter(*(v0 + 258)))
  {
    v1 = sub_10000DA7C((*(v0 + 1016) + 208), *(*(v0 + 1016) + 232));
    v2 = *v1;
    *(v0 + 1048) = *v1;

    return _swift_task_switch(sub_1000D923C, v2, 0);
  }

  else
  {
    v3 = *(v0 + 992);
    sub_10000DA7C((*(v0 + 1016) + 208), *(*(v0 + 1016) + 232));
    v4 = type metadata accessor for SnoutManager(0);
    v5 = swift_task_alloc();
    *(v0 + 1080) = v5;
    *v5 = v0;
    v5[1] = sub_1000D974C;
    v6 = *(v0 + 984);
    v7 = *(v0 + 976);

    return (sub_10016E27C)(v7, v6, v3, 1, v4, &off_100223858);
  }
}

uint64_t sub_1000D923C()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1032);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 1008);
  v5 = *(v0 + 992);
  v6 = *(v0 + 984);
  v7 = *(v0 + 976);
  v8 = *(v0 + 688);
  *(v0 + 176) = *(v0 + 672);
  *(v0 + 192) = v8;
  v9 = *(v0 + 720);
  *(v0 + 208) = *(v0 + 704);
  *(v0 + 224) = v9;
  v10 = *(v0 + 624);
  *(v0 + 112) = *(v0 + 608);
  *(v0 + 128) = v10;
  v11 = *(v0 + 656);
  *(v0 + 144) = *(v0 + 640);
  *(v0 + 160) = v11;
  v12 = *(v0 + 560);
  *(v0 + 48) = *(v0 + 544);
  *(v0 + 64) = v12;
  v13 = *(v0 + 592);
  *(v0 + 80) = *(v0 + 576);
  *(v0 + 96) = v13;
  v14 = *(v0 + 528);
  *(v0 + 16) = *(v0 + 512);
  *(v0 + 32) = v14;
  *(v0 + 240) = v6;
  *(v0 + 248) = v5;
  *(v0 + 256) = 257;
  sub_1000E191C(v0 + 16);
  v15 = *(v0 + 224);
  *(v0 + 456) = *(v0 + 208);
  *(v0 + 472) = v15;
  *(v0 + 488) = *(v0 + 240);
  *(v0 + 504) = *(v0 + 256);
  v16 = *(v0 + 160);
  *(v0 + 392) = *(v0 + 144);
  *(v0 + 408) = v16;
  v17 = *(v0 + 192);
  *(v0 + 424) = *(v0 + 176);
  *(v0 + 440) = v17;
  v18 = *(v0 + 96);
  *(v0 + 328) = *(v0 + 80);
  *(v0 + 344) = v18;
  v19 = *(v0 + 128);
  *(v0 + 360) = *(v0 + 112);
  *(v0 + 376) = v19;
  v20 = *(v0 + 32);
  *(v0 + 264) = *(v0 + 16);
  *(v0 + 280) = v20;
  v21 = *(v0 + 64);
  *(v0 + 296) = *(v0 + 48);
  *(v0 + 312) = v21;

  sub_100010568(v7, v0 + 736);
  sub_10000CDE0(&qword_10023CA28, &unk_1001C3B60);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  if (v4 && (*(v0 + 960) = *(v0 + 1008), swift_errorRetain(), sub_10000CDE0(&qword_10023A710, &qword_1001B5480), sub_10001523C(0, &qword_10023C5D0, NSError_ptr), (swift_dynamicCast() & 1) != 0))
  {
    v22 = *(v0 + 976);
    v23 = *(v0 + 968);
    v50 = *(v22 + 48);
    v51 = *(v22 + 40);

    v24 = [v23 domain];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v48 = v26;
    v49 = v25;

    v47 = [v23 code];
    v27 = 0;
    v28 = *(v0 + 976);
  }

  else
  {
    v28 = *(v0 + 976);
    v50 = *(v28 + 6);
    v51 = *(v28 + 5);

    v47 = 0;
    v48 = 0;
    v49 = 0;
    v23 = 0;
    v27 = 1;
  }

  *(v0 + 1056) = v23;
  v46 = *(v28 + 85);
  v29 = *(v28 + 15);
  v30 = *(v28 + 128);
  v31 = *(v28 + 113);
  v32 = *(v28 + 83);
  v33 = *(v28 + 80);
  v34 = *v28;
  v35 = *(v28 + 185);
  v36 = *(v28 + 24);
  v37 = *(v28 + 25);
  v38 = *(v28 + 26);
  v39 = *(v28 + 27);
  v44 = v38;
  v45 = v36;
  *(v0 + 1088) = v30;
  *(v0 + 1096) = v27;
  sub_10000CDE0(&qword_10023BCB0, &unk_1001BE250);
  v40 = swift_allocObject();
  *(v0 + 1064) = v40;
  *(v40 + 16) = xmmword_1001B93B0;
  *(v40 + 32) = v34;
  *(v40 + 40) = v51;
  *(v40 + 48) = v50;
  *(v40 + 56) = v33;
  *(v40 + 57) = v32;
  *(v40 + 58) = v31;
  *(v40 + 64) = v29;
  *(v40 + 72) = *(v0 + 1088);
  *(v40 + 73) = v46;
  *(v40 + 80) = v49;
  *(v40 + 88) = v48;
  *(v40 + 96) = v47;
  *(v40 + 104) = *(v0 + 1096);
  *(v40 + 105) = v35;
  *(v40 + 112) = v45;
  *(v40 + 120) = v37;
  *(v40 + 128) = v44;
  *(v40 + 136) = v39;

  v41 = swift_task_alloc();
  *(v0 + 1072) = v41;
  *v41 = v0;
  v41[1] = sub_1000D95B8;
  v42 = *(v0 + 1000);

  return sub_10016D920(v40, v42);
}

uint64_t sub_1000D95B8()
{
  v1 = *(*v0 + 1048);

  return _swift_task_switch(sub_1000D96E4, v1, 0);
}

uint64_t sub_1000D96E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000D974C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000D985C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[219] = v4;
  v5[218] = a4;
  v5[217] = a3;
  v5[216] = a2;
  v5[215] = a1;
  return _swift_task_switch(sub_1000D988C, 0, 0);
}

uint64_t sub_1000D988C()
{
  v1 = *(v0 + 1728);
  v2 = *(v1 + 16);
  *(v0 + 1760) = v2;
  if (v2)
  {
    v3 = 0;
    v4 = (v0 + 1032);
    v5 = (v0 + 1432);
    v50 = (v0 + 1432);
    while (1)
    {
      *(v0 + 1768) = v3;
      v6 = (v1 + 96 * v3);
      v7 = v6[3];
      *v5 = v6[2];
      v5[1] = v7;
      v8 = v6[4];
      v9 = v6[5];
      v10 = v6[6];
      *(v5 + 73) = *(v6 + 105);
      v5[3] = v9;
      v5[4] = v10;
      v5[2] = v8;
      v11 = *(v0 + 1432);
      v12 = *(v0 + 1440);
      v58 = *(v0 + 1448);
      v56 = *(v0 + 1464);
      v57 = *(v0 + 1456);
      v54 = *(v0 + 1480);
      v55 = *(v0 + 1472);
      v52 = *(v0 + 1504);
      v53 = *(v0 + 1488);
      v51 = *(v0 + 1512);
      sub_100019760(v5, v0 + 1528);
      sub_100019760(v5, v0 + 1624);
      v13 = sub_1000BB714();
      v14 = sub_1000BB768();
      v15 = sub_1000BB7BC();
      v16 = sub_1000BB810();

      JWS.init(compactJWS:)(v11, v12, &type metadata for Postback.JWSPayload, v13, v14, v15, v16, v0 + 1232);
      *(v0 + 1776) = 0;
      v17 = *(v0 + 1408);
      *(v0 + 1192) = *(v0 + 1392);
      *(v0 + 1208) = v17;
      *(v0 + 1224) = *(v0 + 1424);
      v18 = *(v0 + 1344);
      *(v0 + 1128) = *(v0 + 1328);
      *(v0 + 1144) = v18;
      v19 = *(v0 + 1376);
      *(v0 + 1160) = *(v0 + 1360);
      *(v0 + 1176) = v19;
      v20 = *(v0 + 1280);
      *(v0 + 1064) = *(v0 + 1264);
      *(v0 + 1080) = v20;
      v21 = *(v0 + 1312);
      *(v0 + 1096) = *(v0 + 1296);
      *(v0 + 1112) = v21;
      v22 = *(v0 + 1248);
      *v4 = *(v0 + 1232);
      *(v0 + 1048) = v22;

      v5 = (v0 + 1432);
      sub_100019798(v50);
      v23 = *(v0 + 1176);
      v25 = *(v0 + 1192);
      v24 = *(v0 + 1208);
      *(v0 + 504) = v25;
      *(v0 + 520) = v24;
      v26 = *(v0 + 1112);
      v28 = *(v0 + 1128);
      v27 = *(v0 + 1144);
      *(v0 + 440) = v28;
      *(v0 + 456) = v27;
      v29 = *(v0 + 1144);
      v31 = *(v0 + 1160);
      v30 = *(v0 + 1176);
      *(v0 + 472) = v31;
      *(v0 + 488) = v30;
      v32 = *(v0 + 1048);
      v34 = *(v0 + 1064);
      v33 = *(v0 + 1080);
      *(v0 + 376) = v34;
      *(v0 + 392) = v33;
      v35 = *(v0 + 1080);
      v37 = *(v0 + 1096);
      v36 = *(v0 + 1112);
      *(v0 + 408) = v37;
      *(v0 + 424) = v36;
      v38 = *(v0 + 1048);
      v39 = *v4;
      *(v0 + 344) = *v4;
      *(v0 + 360) = v38;
      v40 = *(v0 + 1208);
      *(v0 + 240) = v25;
      *(v0 + 256) = v40;
      *(v0 + 176) = v28;
      *(v0 + 192) = v29;
      *(v0 + 208) = v31;
      *(v0 + 224) = v23;
      *(v0 + 112) = v34;
      *(v0 + 128) = v35;
      *(v0 + 144) = v37;
      *(v0 + 160) = v26;
      *(v0 + 288) = v57;
      *(v0 + 296) = v56;
      *(v0 + 304) = v55;
      *(v0 + 312) = v54;
      *(v0 + 320) = v53;
      *(v0 + 328) = v52;
      *(v0 + 336) = v51;
      *(v0 + 536) = *(v0 + 1224);
      *(v0 + 16) = v58;
      *(v0 + 24) = v57;
      *(v0 + 32) = v56;
      *(v0 + 40) = v55;
      *(v0 + 48) = v54;
      *(v0 + 56) = v53;
      *(v0 + 64) = v52;
      *(v0 + 72) = v51;
      *(v0 + 272) = *(v0 + 1224);
      *(v0 + 280) = v58;
      *(v0 + 80) = v39;
      *(v0 + 96) = v32;
      sub_1000BB8B8(v0 + 280, v0 + 544);
      sub_1000BB914(v0 + 16);
      if (*(v0 + 496))
      {
        sub_1000BB914(v0 + 280);
        if (!*(v0 + 504))
        {
          v42 = *v50;
          v43 = *(v0 + 1448);
          v44 = *(v0 + 1464);
          v45 = *(v0 + 1480);
          v46 = *(v0 + 1496);
          v41 = *(v0 + 1512);
          LOBYTE(v2) = *(v0 + 1520);
          goto LABEL_12;
        }

        sub_100019798(v50);
      }

      else
      {
        sub_100019798(v50);
        sub_1000BB914(v0 + 280);
      }

      v3 = *(v0 + 1768) + 1;
      if (v3 == *(v0 + 1760))
      {
        v41 = 0;
        LOBYTE(v2) = 0;
        goto LABEL_11;
      }

      v1 = *(v0 + 1728);
    }
  }

  v41 = 0;
LABEL_11:
  v42 = 0uLL;
  v43 = 0uLL;
  v44 = 0uLL;
  v45 = 0uLL;
  v46 = 0uLL;
LABEL_12:
  v47 = *(v0 + 1720);
  *v47 = v42;
  *(v47 + 16) = v43;
  *(v47 + 32) = v44;
  *(v47 + 48) = v45;
  *(v47 + 64) = v46;
  *(v47 + 80) = v41;
  *(v47 + 88) = v2;
  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1000D9E94()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 808);

  return _swift_task_switch(sub_1000D9F98, 0, 0);
}

uint64_t sub_1000D9F98()
{

  v1 = *(v0 + 1768) + 1;
  v2 = 0uLL;
  if (v1 == *(v0 + 1760))
  {
    v3 = 0;
    v4 = 0;
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    goto LABEL_11;
  }

  v9 = (v0 + 1032);
  v10 = (v0 + 1432);
  v49 = (v0 + 1432);
  while (1)
  {
    *(v0 + 1768) = v1;
    v11 = (*(v0 + 1728) + 96 * v1);
    v12 = v11[3];
    *v10 = v11[2];
    v10[1] = v12;
    v13 = v11[4];
    v14 = v11[5];
    v15 = v11[6];
    *(v10 + 73) = *(v11 + 105);
    v10[3] = v14;
    v10[4] = v15;
    v10[2] = v13;
    v16 = *(v0 + 1432);
    v17 = *(v0 + 1440);
    v57 = *(v0 + 1448);
    v55 = *(v0 + 1464);
    v56 = *(v0 + 1456);
    v53 = *(v0 + 1480);
    v54 = *(v0 + 1472);
    v51 = *(v0 + 1504);
    v52 = *(v0 + 1488);
    v50 = *(v0 + 1512);
    sub_100019760(v10, v0 + 1528);
    sub_100019760(v10, v0 + 1624);
    v18 = sub_1000BB714();
    v19 = sub_1000BB768();
    v20 = sub_1000BB7BC();
    v21 = sub_1000BB810();

    JWS.init(compactJWS:)(v16, v17, &type metadata for Postback.JWSPayload, v18, v19, v20, v21, v0 + 1232);
    *(v0 + 1776) = 0;
    v22 = *(v0 + 1408);
    *(v0 + 1192) = *(v0 + 1392);
    *(v0 + 1208) = v22;
    *(v0 + 1224) = *(v0 + 1424);
    v23 = *(v0 + 1344);
    *(v0 + 1128) = *(v0 + 1328);
    *(v0 + 1144) = v23;
    v24 = *(v0 + 1376);
    *(v0 + 1160) = *(v0 + 1360);
    *(v0 + 1176) = v24;
    v25 = *(v0 + 1280);
    *(v0 + 1064) = *(v0 + 1264);
    *(v0 + 1080) = v25;
    v26 = *(v0 + 1312);
    *(v0 + 1096) = *(v0 + 1296);
    *(v0 + 1112) = v26;
    v27 = *(v0 + 1248);
    *v9 = *(v0 + 1232);
    *(v0 + 1048) = v27;

    v10 = (v0 + 1432);
    sub_100019798(v49);
    v28 = *(v0 + 1176);
    v30 = *(v0 + 1192);
    v29 = *(v0 + 1208);
    *(v0 + 504) = v30;
    *(v0 + 520) = v29;
    v31 = *(v0 + 1112);
    v33 = *(v0 + 1128);
    v32 = *(v0 + 1144);
    *(v0 + 440) = v33;
    *(v0 + 456) = v32;
    v34 = *(v0 + 1144);
    v36 = *(v0 + 1160);
    v35 = *(v0 + 1176);
    *(v0 + 472) = v36;
    *(v0 + 488) = v35;
    v37 = *(v0 + 1048);
    v39 = *(v0 + 1064);
    v38 = *(v0 + 1080);
    *(v0 + 376) = v39;
    *(v0 + 392) = v38;
    v40 = *(v0 + 1080);
    v42 = *(v0 + 1096);
    v41 = *(v0 + 1112);
    *(v0 + 408) = v42;
    *(v0 + 424) = v41;
    v43 = *(v0 + 1048);
    v44 = *v9;
    *(v0 + 344) = *v9;
    *(v0 + 360) = v43;
    v45 = *(v0 + 1208);
    *(v0 + 240) = v30;
    *(v0 + 256) = v45;
    *(v0 + 176) = v33;
    *(v0 + 192) = v34;
    *(v0 + 208) = v36;
    *(v0 + 224) = v28;
    *(v0 + 112) = v39;
    *(v0 + 128) = v40;
    *(v0 + 144) = v42;
    *(v0 + 160) = v31;
    *(v0 + 288) = v56;
    *(v0 + 296) = v55;
    *(v0 + 304) = v54;
    *(v0 + 312) = v53;
    *(v0 + 320) = v52;
    *(v0 + 328) = v51;
    *(v0 + 336) = v50;
    *(v0 + 536) = *(v0 + 1224);
    *(v0 + 16) = v57;
    *(v0 + 24) = v56;
    *(v0 + 32) = v55;
    *(v0 + 40) = v54;
    *(v0 + 48) = v53;
    *(v0 + 56) = v52;
    *(v0 + 64) = v51;
    *(v0 + 72) = v50;
    *(v0 + 272) = *(v0 + 1224);
    *(v0 + 280) = v57;
    *(v0 + 80) = v44;
    *(v0 + 96) = v37;
    sub_1000BB8B8(v0 + 280, v0 + 544);
    sub_1000BB914(v0 + 16);
    if (*(v0 + 496))
    {
      break;
    }

    sub_100019798(v49);
    sub_1000BB914(v0 + 280);
LABEL_5:
    v1 = *(v0 + 1768) + 1;
    if (v1 == *(v0 + 1760))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0uLL;
      v6 = 0uLL;
      v7 = 0uLL;
      v8 = 0uLL;
      v2 = 0uLL;
      goto LABEL_11;
    }
  }

  sub_1000BB914(v0 + 280);
  if (*(v0 + 504))
  {
    sub_100019798(v49);
    goto LABEL_5;
  }

  v2 = *v49;
  v5 = *(v0 + 1448);
  v6 = *(v0 + 1464);
  v7 = *(v0 + 1480);
  v8 = *(v0 + 1496);
  v3 = *(v0 + 1512);
  v4 = *(v0 + 1520);
LABEL_11:
  v46 = *(v0 + 1720);
  *v46 = v2;
  *(v46 + 16) = v5;
  *(v46 + 32) = v6;
  *(v46 + 48) = v7;
  *(v46 + 64) = v8;
  *(v46 + 80) = v3;
  *(v46 + 88) = v4;
  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1000DA5C0(uint64_t a1, uint64_t a2)
{
  v3[107] = v2;
  v3[106] = a2;
  v3[105] = a1;
  v3[108] = type metadata accessor for InAppPurchaseDetails(0);
  v3[109] = swift_task_alloc();
  sub_10000CDE0(&qword_10023CA10, &qword_1001BE230);
  v3[110] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  v3[111] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[112] = v4;
  v3[113] = *(v4 - 8);
  v3[114] = swift_task_alloc();
  v5 = type metadata accessor for AdAttributionKitSystemReportedPurchase();
  v3[115] = v5;
  v3[116] = *(v5 - 8);
  v3[117] = swift_task_alloc();
  v3[118] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA7BC, 0, 0);
}

uint64_t sub_1000DA7BC()
{
  v1 = v0[106];
  v2 = objc_allocWithZone(LSApplicationRecord);
  v0[104] = 0;
  v3 = [v2 initWithStoreItemIdentifier:v1 error:v0 + 104];
  v4 = v0[104];
  if (v3)
  {
    v5 = v3;
    v6 = v0[107];
    v7 = v0[106];
    v0[102] = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
    v0[103] = &off_10021F840;
    v0[99] = v5;
    v8 = v4;
    v10 = v6[3];
    v9 = v6[4];
    v11 = v6[5];
    v12 = swift_allocObject();
    v0[119] = v12;
    *(v12 + 16) = v7;
    v13 = swift_task_alloc();
    v0[120] = v13;
    *v13 = v0;
    v13[1] = sub_1000DAA10;

    return sub_10010FF18((v0 + 69), sub_1000E2164, v12, v10, v9, v11);
  }

  else
  {
    v15 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1000DAA10()
{
  *(*v1 + 968) = v0;

  if (v0)
  {
    v2 = sub_1000DB488;
  }

  else
  {
    v2 = sub_1000DAB68;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DAB68()
{
  v1 = *(v0 + 600);
  *(v0 + 672) = *(v0 + 584);
  *(v0 + 688) = v1;
  *(v0 + 704) = *(v0 + 616);
  *(v0 + 720) = *(v0 + 632);
  v2 = *(v0 + 568);
  *(v0 + 640) = *(v0 + 552);
  *(v0 + 656) = v2;
  v3 = *(v0 + 656);
  *(v0 + 976) = v3;
  v4 = *(v0 + 664);
  *(v0 + 1096) = v4;
  v5 = *(v0 + 680);
  *(v0 + 984) = v5;
  v6 = *(v0 + 688);
  *(v0 + 992) = v6;
  if (!v6)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000DAC0(v11, qword_10023FD48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "No conversion metadata found";
    goto LABEL_14;
  }

  *(v0 + 464) = *(v0 + 552);
  *(v0 + 480) = v3;
  *(v0 + 488) = v4;
  v7 = *(v0 + 577);
  *(v0 + 496) = *(v0 + 584);
  *(v0 + 504) = v5;
  *(v0 + 489) = v7;
  *(v0 + 512) = v6;
  v8 = *(v0 + 624);
  *(v0 + 520) = *(v0 + 608);
  *(v0 + 536) = v8;

  if (sub_1000DC830((v0 + 464), (v0 + 792)))
  {

    sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000DAC0(v16, qword_10023FD48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Automatic reporting mode required for processing In-App Purchases";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);

LABEL_15:

    sub_10000DB58((v0 + 792));

    v17 = *(v0 + 8);

    return v17();
  }

  v9 = *(v0 + 840);
  v10 = *(v9 + *(*(v0 + 864) + 40));
  *(v0 + 1097) = v10;
  if (v10 != 2 && (v10 & 1) == 0)
  {
    NSDecimal.init(integerLiteral:)(v10, 0);
    v9 = *(v0 + 840);
LABEL_22:
    v53 = *(v0 + 1097);
    v21 = *(v0 + 904);
    v22 = *(v0 + 896);
    v52 = *(v0 + 888);
    v50 = *(v0 + 864);
    v51 = *(v0 + 912);
    NSDecimal.init(integerLiteral:)(*(v0 + 848), 1000);
    *(v0 + 1056) = static NSDecimal.* infix(_:_:)();
    *(v0 + 1064) = v23;
    *(v0 + 1072) = v24;
    *(v0 + 1076) = 0;
    *(v0 + 1084) = 0;
    *(v0 + 1092) = 0;
    NSDecimalRound((v0 + 1076), (v0 + 1056), 0, NSRoundPlain);
    NSDecimal._bridgeToObjectiveC()((v0 + 1076));
    v26 = v25;
    [v25 longLongValue];

    v27 = *(v21 + 16);
    v27(v51, v9 + *(v50 + 28), v22);

    AdAttributionKitSystemReportedPurchase.init()();
    AdAttributionKitSystemReportedPurchase.advertisedItemID.setter();
    AdAttributionKitSystemReportedPurchase.conversionID.setter();
    AdAttributionKitSystemReportedPurchase.price.setter();
    AdAttributionKitSystemReportedPurchase.quantity.setter();
    v27(v52, v51, v22);
    (*(v21 + 56))(v52, 0, 1, v22);
    AdAttributionKitSystemReportedPurchase.purchaseDate.setter();
    if (v53 == 2)
    {
      v28 = *(v0 + 880);
      v29 = enum case for AdAttributionKitOfferType.none(_:);
      v30 = type metadata accessor for AdAttributionKitOfferType();
      v31 = *(v30 - 8);
      (*(v31 + 104))(v28, v29, v30);
      (*(v31 + 56))(v28, 0, 1, v30);
    }

    else
    {
      v32 = *(v0 + 1097);
      v33 = type metadata accessor for AdAttributionKitOfferType();
      v34 = *(v33 - 8);
      v35 = (v34 + 56);
      v36 = *(v0 + 880);
      if (v32)
      {
        v37 = &enum case for AdAttributionKitOfferType.discounted(_:);
      }

      else
      {
        v37 = &enum case for AdAttributionKitOfferType.freeTrial(_:);
      }

      (*(v34 + 104))(*(v0 + 880), *v37, v33);
      (*v35)(v36, 0, 1, v33);
    }

    AdAttributionKitSystemReportedPurchase.offerType.setter();
    sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
    v38 = *(v0 + 944);
    v39 = *(v0 + 936);
    v40 = *(v0 + 928);
    v41 = *(v0 + 920);
    (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
    (*(v40 + 32))(v38, v39, v41);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    *(v0 + 1016) = sub_10000DAC0(v42, qword_10023FD48);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&_mh_execute_header, v43, v44, "Donating system reported purchase event", v45, 2u);
    }

    v46 = *(v0 + 856);

    sub_10000DA7C((v46 + 48), *(v46 + 72));
    v47 = swift_task_alloc();
    *(v0 + 1024) = v47;
    *v47 = v0;
    v47[1] = sub_1000DBC50;
    v48 = *(v0 + 944);

    return (sub_1000FBA18)(v48, &type metadata for BiomeEventStreamDog, &off_10021F658);
  }

  v20 = *(v9 + 32);
  v19 = *(v9 + 40);
  if (v20 == 4477781 && v19 == 0xE300000000000000)
  {
    goto LABEL_22;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v9 = *(v0 + 840);
    goto LABEL_22;
  }

  v49 = swift_task_alloc();
  *(v0 + 1000) = v49;
  *v49 = v0;
  v49[1] = sub_1000DB574;

  return sub_1000DCCA0(v0 + 728, v20, v19, v5, v6, v3, v4);
}

uint64_t sub_1000DB488()
{
  sub_10000DB58((v0 + 792));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000DB574()
{
  v2 = *v1;
  *(*v1 + 1008) = v0;

  if (v0)
  {

    sub_10000DAF8(v2 + 640, &qword_10023B690, &qword_1001B9260);
    v3 = sub_1000DC574;
  }

  else
  {
    v3 = sub_1000DB6DC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000DB6DC()
{
  static NSDecimal.* infix(_:_:)();
  sub_10003C344(v0 + 728);
  v34 = *(v0 + 1097);
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  v33 = *(v0 + 888);
  v31 = *(v0 + 864);
  v32 = *(v0 + 912);
  v3 = *(v0 + 840);
  NSDecimal.init(integerLiteral:)(*(v0 + 848), 1000);
  *(v0 + 1056) = static NSDecimal.* infix(_:_:)();
  *(v0 + 1064) = v4;
  *(v0 + 1072) = v5;
  *(v0 + 1076) = 0u;
  *(v0 + 1092) = 0;
  NSDecimalRound((v0 + 1076), (v0 + 1056), 0, NSRoundPlain);
  NSDecimal._bridgeToObjectiveC()((v0 + 1084));
  v7 = v6;
  [v6 longLongValue];

  v8 = *(v1 + 16);
  v8(v32, v3 + *(v31 + 28), v2);

  AdAttributionKitSystemReportedPurchase.init()();
  AdAttributionKitSystemReportedPurchase.advertisedItemID.setter();
  AdAttributionKitSystemReportedPurchase.conversionID.setter();
  AdAttributionKitSystemReportedPurchase.price.setter();
  AdAttributionKitSystemReportedPurchase.quantity.setter();
  v8(v33, v32, v2);
  (*(v1 + 56))(v33, 0, 1, v2);
  AdAttributionKitSystemReportedPurchase.purchaseDate.setter();
  if (v34 == 2)
  {
    v9 = *(v0 + 880);
    v10 = enum case for AdAttributionKitOfferType.none(_:);
    v11 = type metadata accessor for AdAttributionKitOfferType();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v9, v10, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  else
  {
    v13 = *(v0 + 1097);
    v14 = type metadata accessor for AdAttributionKitOfferType();
    v15 = *(v14 - 8);
    v16 = (v15 + 56);
    v17 = *(v0 + 880);
    if (v13)
    {
      v18 = &enum case for AdAttributionKitOfferType.discounted(_:);
    }

    else
    {
      v18 = &enum case for AdAttributionKitOfferType.freeTrial(_:);
    }

    (*(v15 + 104))(*(v0 + 880), *v18, v14);
    (*v16)(v17, 0, 1, v14);
  }

  AdAttributionKitSystemReportedPurchase.offerType.setter();
  sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
  v19 = *(v0 + 944);
  v20 = *(v0 + 936);
  v21 = *(v0 + 928);
  v22 = *(v0 + 920);
  (*(*(v0 + 904) + 8))(*(v0 + 912), *(v0 + 896));
  (*(v21 + 32))(v19, v20, v22);
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  *(v0 + 1016) = sub_10000DAC0(v23, qword_10023FD48);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Donating system reported purchase event", v26, 2u);
  }

  v27 = *(v0 + 856);

  sub_10000DA7C((v27 + 48), *(v27 + 72));
  v28 = swift_task_alloc();
  *(v0 + 1024) = v28;
  *v28 = v0;
  v28[1] = sub_1000DBC50;
  v29 = *(v0 + 944);

  return (sub_1000FBA18)(v29, &type metadata for BiomeEventStreamDog, &off_10021F658);
}

uint64_t sub_1000DBC50()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_1000DC0EC;
  }

  else
  {
    v2 = sub_1000DBD90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DBD90()
{
  v1 = *(v0 + 1097);
  v2 = *(v0 + 992);
  if (v1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1 & 1;
  }

  sub_1000C8DC0(*(*(v0 + 840) + 32), *(*(v0 + 840) + 40), v3, 0, (v0 + 240));
  v4 = swift_task_alloc();
  *(v0 + 1040) = v4;
  *v4 = v0;
  v4[1] = sub_1000DBE98;
  v5 = *(v0 + 984);
  v6 = *(v0 + 976);
  v7 = *(v0 + 1096);

  return sub_1000D8F60((v0 + 240), v5, v2, v6, v7, 0);
}

uint64_t sub_1000DBE98()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000DBFEC, 0, 0);
}

uint64_t sub_1000DBFEC()
{
  (*(v0[116] + 8))(v0[118], v0[115]);
  sub_10000DB58(v0 + 99);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000DC0EC()
{
  (*(*(v0 + 928) + 8))(*(v0 + 944), *(v0 + 920));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to donate system reported purchase event: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  v6 = *(v0 + 1032);
  v7 = *(v0 + 1097);
  v8 = *(v0 + 992);
  v9 = *(v0 + 840);

  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  if (v7 == 2)
  {
    v12 = 2;
  }

  else
  {
    v12 = v7 & 1;
  }

  swift_errorRetain();
  sub_1000C8DC0(v10, v11, v12, v6, (v0 + 16));
  v13 = swift_task_alloc();
  *(v0 + 1048) = v13;
  *v13 = v0;
  v13[1] = sub_1000DC310;
  v14 = *(v0 + 984);
  v15 = *(v0 + 976);
  v16 = *(v0 + 1096);

  return sub_1000D8F60((v0 + 16), v14, v8, v15, v16, v6);
}

uint64_t sub_1000DC310()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000DC480, 0, 0);
}

uint64_t sub_1000DC480(uint64_t a1)
{
  swift_willThrow();
  sub_10000DB58((v1 + 792));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1000DC574()
{
  v18 = v0;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v1 = v0[109];
  v2 = v0[105];
  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FD48);
  sub_1000E1A30(v2, v1);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[109];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315394;
    v11 = *(v7 + 32);
    v12 = *(v7 + 40);

    sub_1000A0B90(v7);
    v13 = sub_10017AD04(v11, v12, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to get currency exchange rate for %s: %@", v8, 0x16u);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v10);
  }

  else
  {

    sub_1000A0B90(v7);
  }

  sub_10000DB58(v0 + 99);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000DC830(void *a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[7] == 0xD000000000000012 && 0x80000001001CB3C0 == a1[8];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v9 = a2[3];
  v10 = a2[4];
  sub_10000DA7C(a2, v9);
  (*(v10 + 40))(v9, v10);
  v11 = Data.init(contentsOf:options:)();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  sub_1000BB9AC();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_10001BABC(v11, v13);

  v21[2] = v23;
  v21[3] = v24;
  v21[4] = v25;
  v21[0] = v21[5];
  v21[1] = v22;
  v15 = *(&v22 + 1);
  v16 = v25;
  sub_1000E198C(*(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1));
  sub_10009B180(v21);
  if (v15 != 1)
  {

    if ((*(&v16 + 1) - 1) >= 2)
    {
      if (v16 != 2 && (v16 & 1) != 0)
      {
        v18 = a1[10];
        if (v18)
        {
          if (*(&v16 + 1))
          {
            if (*(*(&v16 + 1) + 16))
            {
              v20[0] = a1[9];
              v20[1] = v18;
              __chkstk_darwin(v17);
              v20[-2] = v20;
              v14 = sub_1000E1818(sub_1000E19D8, &v20[-4], *(&v16 + 1));
              sub_1000D5520(v16, *(&v16 + 1));
              return v14 & 1;
            }

            sub_1000D5520(v16, *(&v16 + 1));
          }

LABEL_18:
          v14 = 1;
          return v14 & 1;
        }
      }

      sub_1000D5520(v16, *(&v16 + 1));
    }
  }

  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1000DCCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v8 + 1160) = v7;
  *(v8 + 1413) = a7;
  *(v8 + 1152) = a6;
  *(v8 + 1144) = a5;
  *(v8 + 1136) = a4;
  *(v8 + 1128) = a3;
  *(v8 + 1120) = a2;
  *(v8 + 1112) = a1;
  v9 = type metadata accessor for Date();
  *(v8 + 1168) = v9;
  v10 = *(v9 - 8);
  *(v8 + 1176) = v10;
  *(v8 + 1184) = *(v10 + 64);
  *(v8 + 1192) = swift_task_alloc();
  *(v8 + 1200) = swift_task_alloc();

  return _swift_task_switch(sub_1000DCD90, 0, 0);
}

uint64_t sub_1000DCD90()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1176);
  v4 = *(v0 + 1168);
  v5 = *(v0 + 1160);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1120);
  Date.init(timeIntervalSinceNow:)();
  v17 = *v5;
  *(v0 + 1208) = *v5;
  v16 = v5[1];
  *(v0 + 1216) = v16;
  v8 = v5[2];
  *(v0 + 1224) = v8;
  v9 = *(v3 + 16);
  *(v0 + 1232) = v9;
  *(v0 + 1240) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v2, v1, v4);
  v10 = *(v3 + 80);
  *(v0 + 1408) = v10;
  v11 = (v10 + 32) & ~v10;
  v12 = swift_allocObject();
  *(v0 + 1248) = v12;
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  v13 = *(v3 + 32);
  *(v0 + 1256) = v13;
  *(v0 + 1264) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v13(v12 + v11, v2, v4);

  v14 = swift_task_alloc();
  *(v0 + 1272) = v14;
  *v14 = v0;
  v14[1] = sub_1000DCF68;

  return sub_100110FF0(v0 + 688, sub_1000E2140, v12, v17, v16, v8);
}

uint64_t sub_1000DCF68()
{
  *(*v1 + 1280) = v0;

  if (v0)
  {
    v2 = sub_1000DE6D8;
  }

  else
  {
    v2 = sub_1000DD08C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DD08C()
{
  *(v0 + 1080) = *(v0 + 688);
  *(v0 + 1096) = *(v0 + 704);
  v1 = *(v0 + 712);
  v2 = *(v0 + 736);
  *(v0 + 976) = *(v0 + 720);
  *(v0 + 992) = v2;
  if (v1)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000DAC0(v3, qword_10023FD48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 1200);
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1168);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Tier 1 cache for currency exchange rates found", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    *(v0 + 1008) = *(v0 + 1080);
    *(v0 + 1024) = *(v0 + 1096);
    v11 = *(v0 + 992);
    *(v0 + 880) = *(v0 + 976);
    *(v0 + 896) = v11;
    v12 = *(v0 + 1112);

    v13 = *(v0 + 1024);
    *v12 = *(v0 + 1008);
    *(v12 + 16) = v13;
    *(v12 + 24) = v1;
    v14 = *(v0 + 896);
    *(v12 + 32) = *(v0 + 880);
    *(v12 + 48) = v14;
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    sub_1000E17B4();
    v17 = swift_allocError();
    *v18 = 6;
    swift_willThrow();
    *(v0 + 1376) = v17;
    *(v0 + 1104) = v17;
    swift_errorRetain();
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    if (swift_dynamicCast() && *(v0 + 1412) == 6)
    {

      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000DAC0(v19, qword_10023FD48);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Tier 1 cache miss", v22, 2u);
      }

      v23 = swift_task_alloc();
      *(v0 + 1288) = v23;
      *v23 = v0;
      v23[1] = sub_1000DD5EC;

      return sub_1000E0DE0();
    }

    else
    {

      if (qword_100239D08 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_10000DAC0(v24, qword_10023FD48);
      swift_errorRetain();
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 138412290;
        swift_errorRetain();
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 4) = v29;
        *v28 = v29;
        _os_log_impl(&_mh_execute_header, v25, v26, "Failed to retrieve exchange rate from tier 1 cache with error: %@", v27, 0xCu);
        sub_10000DAF8(v28, &qword_100239F10, &qword_1001B4FD0);
      }

      v30 = *(v0 + 1128);
      v31 = *(v0 + 1120);

      swift_errorRetain();
      sub_1000C8DC0(v31, v30, 2, v17, (v0 + 240));
      v32 = swift_task_alloc();
      *(v0 + 1384) = v32;
      *v32 = v0;
      v32[1] = sub_1000DE520;
      v33 = *(v0 + 1152);
      v34 = *(v0 + 1144);
      v35 = *(v0 + 1136);
      v36 = *(v0 + 1413);

      return sub_1000D8F60((v0 + 240), v35, v34, v33, v36, v17);
    }
  }
}

uint64_t sub_1000DD5EC()
{
  *(*v1 + 1296) = v0;

  if (v0)
  {
    v2 = sub_1000DEA6C;
  }

  else
  {
    v2 = sub_1000DD700;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DD700()
{
  v1 = *(v0 + 1256);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1168);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1120);
  v6 = (*(v0 + 1408) + 32) & ~*(v0 + 1408);
  (*(v0 + 1232))(v2, *(v0 + 1200), v3);
  v7 = swift_allocObject();
  *(v0 + 1304) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = v4;
  v1(v7 + v6, v2, v3);

  v8 = swift_task_alloc();
  *(v0 + 1312) = v8;
  *v8 = v0;
  v8[1] = sub_1000DD868;
  v9 = *(v0 + 1224);
  v10 = *(v0 + 1216);
  v11 = *(v0 + 1208);

  return sub_100110FF0(v0 + 816, sub_1000E1B5C, v7, v11, v10, v9);
}

uint64_t sub_1000DD868()
{
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v2 = sub_1000DEC78;
  }

  else
  {
    v2 = sub_1000DD98C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DD98C()
{
  *(v0 + 1056) = *(v0 + 816);
  *(v0 + 1072) = *(v0 + 832);
  v1 = *(v0 + 840);
  v2 = *(v0 + 864);
  *(v0 + 944) = *(v0 + 848);
  *(v0 + 960) = v2;
  if (v1)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000DAC0(v3, qword_10023FD48);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 1200);
    v8 = *(v0 + 1176);
    v9 = *(v0 + 1168);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Exchange rate fetched", v10, 2u);
    }

    (*(v8 + 8))(v7, v9);
    *(v0 + 1008) = *(v0 + 1056);
    *(v0 + 1024) = *(v0 + 1072);
    v11 = *(v0 + 960);
    *(v0 + 880) = *(v0 + 944);
    *(v0 + 896) = v11;
    v12 = *(v0 + 1112);

    v13 = *(v0 + 1024);
    *v12 = *(v0 + 1008);
    *(v12 + 16) = v13;
    *(v12 + 24) = v1;
    v14 = *(v0 + 896);
    *(v12 + 32) = *(v0 + 880);
    *(v12 + 48) = v14;
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000DAC0(v17, qword_10023FD48);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Critical error, we don't have currency exchange rate after fetching", v20, 2u);
    }

    sub_1000E17B4();
    v21 = swift_allocError();
    *v22 = 6;
    swift_willThrow();
    *(v0 + 1328) = v21;
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    *(v0 + 1336) = sub_10000DAC0(v17, qword_10023FD48);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to get exchange rate with error: %@", v25, 0xCu);
      sub_10000DAF8(v26, &qword_100239F10, &qword_1001B4FD0);
    }

    v28 = *(v0 + 1128);
    v29 = *(v0 + 1120);

    swift_errorRetain();
    sub_1000C8DC0(v29, v28, 2, v21, (v0 + 464));
    v30 = swift_task_alloc();
    *(v0 + 1344) = v30;
    *v30 = v0;
    v30[1] = sub_1000DDE00;
    v31 = *(v0 + 1152);
    v32 = *(v0 + 1144);
    v33 = *(v0 + 1136);
    v34 = *(v0 + 1413);

    return sub_1000D8F60((v0 + 464), v33, v32, v31, v34, v21);
  }
}

uint64_t sub_1000DDE00()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 464);

  return _swift_task_switch(sub_1000DDF20, 0, 0);
}

uint64_t sub_1000DDF20()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Falling back to tier 2 cache", v3, 2u);
  }

  if (qword_100239D10 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 1256);
  v4 = *(v0 + 1232);
  v5 = *(v0 + 1192);
  v6 = *(v0 + 1168);
  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);
  v9 = (*(v0 + 1408) + 32) & ~*(v0 + 1408);
  v10 = sub_10000DAC0(v6, qword_10023FD60);
  v4(v5, v10, v6);
  v11 = swift_allocObject();
  *(v0 + 1352) = v11;
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  v17(v11 + v9, v5, v6);

  v12 = swift_task_alloc();
  *(v0 + 1360) = v12;
  *v12 = v0;
  v12[1] = sub_1000DE148;
  v13 = *(v0 + 1224);
  v14 = *(v0 + 1216);
  v15 = *(v0 + 1208);

  return sub_100110FF0(v0 + 752, sub_1000E2140, v11, v15, v14, v13);
}

uint64_t sub_1000DE148()
{
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v2 = sub_1000DF050;
  }

  else
  {
    v2 = sub_1000DE26C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DE26C()
{
  *(v0 + 1032) = *(v0 + 752);
  *(v0 + 1048) = *(v0 + 768);
  v1 = *(v0 + 776);
  v2 = *(v0 + 800);
  *(v0 + 912) = *(v0 + 784);
  *(v0 + 928) = v2;
  if (v1)
  {
    (*(*(v0 + 1176) + 8))(*(v0 + 1200), *(v0 + 1168));
    *(v0 + 1008) = *(v0 + 1032);
    *(v0 + 1024) = *(v0 + 1048);
    v3 = *(v0 + 928);
    *(v0 + 880) = *(v0 + 912);
    *(v0 + 896) = v3;
    v4 = *(v0 + 1112);

    v5 = *(v0 + 1024);
    *v4 = *(v0 + 1008);
    *(v4 + 16) = v5;
    *(v4 + 24) = v1;
    v6 = *(v0 + 896);
    *(v4 + 32) = *(v0 + 880);
    *(v4 + 48) = v6;
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    sub_1000E17B4();
    v9 = swift_allocError();
    *v10 = 7;
    swift_willThrow();
    *(v0 + 1392) = v9;
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to get tier 2 cache: %@", v13, 0xCu);
      sub_10000DAF8(v14, &qword_100239F10, &qword_1001B4FD0);
    }

    v16 = *(v0 + 1128);
    v17 = *(v0 + 1120);

    swift_errorRetain();
    sub_1000C8DC0(v17, v16, 2, v9, (v0 + 16));
    v18 = swift_task_alloc();
    *(v0 + 1400) = v18;
    *v18 = v0;
    v18[1] = sub_1000DEE84;
    v19 = *(v0 + 1152);
    v20 = *(v0 + 1144);
    v21 = *(v0 + 1136);
    v22 = *(v0 + 1413);

    return sub_1000D8F60((v0 + 16), v21, v20, v19, v22, v9);
  }
}

uint64_t sub_1000DE520()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000DE640, 0, 0);
}

uint64_t sub_1000DE640()
{

  v1 = swift_task_alloc();
  *(v0 + 1288) = v1;
  *v1 = v0;
  v1[1] = sub_1000DD5EC;

  return sub_1000E0DE0();
}

uint64_t sub_1000DE6D8()
{
  v1 = *(v0 + 1280);
  *(v0 + 1376) = v1;
  *(v0 + 1104) = v1;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 1412) == 6;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {

    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_10000DAC0(v17, qword_10023FD48);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "Tier 1 cache miss", v20, 2u);
    }

    v21 = swift_task_alloc();
    *(v0 + 1288) = v21;
    *v21 = v0;
    v21[1] = sub_1000DD5EC;

    return sub_1000E0DE0();
  }

  else
  {

    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000DAC0(v3, qword_10023FD48);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Failed to retrieve exchange rate from tier 1 cache with error: %@", v6, 0xCu);
      sub_10000DAF8(v7, &qword_100239F10, &qword_1001B4FD0);
    }

    v9 = *(v0 + 1128);
    v10 = *(v0 + 1120);

    swift_errorRetain();
    sub_1000C8DC0(v10, v9, 2, v1, (v0 + 240));
    v11 = swift_task_alloc();
    *(v0 + 1384) = v11;
    *v11 = v0;
    v11[1] = sub_1000DE520;
    v12 = *(v0 + 1152);
    v13 = *(v0 + 1144);
    v14 = *(v0 + 1136);
    v15 = *(v0 + 1413);

    return sub_1000D8F60((v0 + 240), v14, v13, v12, v15, v1);
  }
}

uint64_t sub_1000DEA6C()
{
  v1 = *(v0 + 1296);
  *(v0 + 1328) = v1;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 1336) = sub_10000DAC0(v2, qword_10023FD48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get exchange rate with error: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 1128);
  v9 = *(v0 + 1120);

  swift_errorRetain();
  sub_1000C8DC0(v9, v8, 2, v1, (v0 + 464));
  v10 = swift_task_alloc();
  *(v0 + 1344) = v10;
  *v10 = v0;
  v10[1] = sub_1000DDE00;
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1413);

  return sub_1000D8F60((v0 + 464), v13, v12, v11, v14, v1);
}

uint64_t sub_1000DEC78()
{
  v1 = *(v0 + 1320);
  *(v0 + 1328) = v1;
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 1336) = sub_10000DAC0(v2, qword_10023FD48);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to get exchange rate with error: %@", v5, 0xCu);
    sub_10000DAF8(v6, &qword_100239F10, &qword_1001B4FD0);
  }

  v8 = *(v0 + 1128);
  v9 = *(v0 + 1120);

  swift_errorRetain();
  sub_1000C8DC0(v9, v8, 2, v1, (v0 + 464));
  v10 = swift_task_alloc();
  *(v0 + 1344) = v10;
  *v10 = v0;
  v10[1] = sub_1000DDE00;
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1144);
  v13 = *(v0 + 1136);
  v14 = *(v0 + 1413);

  return sub_1000D8F60((v0 + 464), v13, v12, v11, v14, v1);
}

uint64_t sub_1000DEE84()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000DEFA4, 0, 0);
}

uint64_t sub_1000DEFA4(uint64_t a1)
{
  v2 = v1[150];
  v3 = v1[147];
  v4 = v1[146];
  swift_willThrow();
  (*(v3 + 8))(v2, v4);

  v5 = v1[1];

  return v5();
}

uint64_t sub_1000DF050()
{
  v1 = *(v0 + 1368);
  *(v0 + 1392) = v1;
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get tier 2 cache: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  v7 = *(v0 + 1128);
  v8 = *(v0 + 1120);

  swift_errorRetain();
  sub_1000C8DC0(v8, v7, 2, v1, (v0 + 16));
  v9 = swift_task_alloc();
  *(v0 + 1400) = v9;
  *v9 = v0;
  v9[1] = sub_1000DEE84;
  v10 = *(v0 + 1152);
  v11 = *(v0 + 1144);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1413);

  return sub_1000D8F60((v0 + 16), v12, v11, v10, v13, v1);
}

uint64_t sub_1000DF214(uint64_t a1, uint64_t a2)
{
  v3[103] = v2;
  v3[102] = a2;
  v3[101] = a1;
  sub_10000CDE0(&qword_10023CA10, &qword_1001BE230);
  v3[104] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  v3[105] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[106] = v4;
  v3[107] = *(v4 - 8);
  v3[108] = swift_task_alloc();
  v5 = type metadata accessor for AdAttributionKitDeveloperReportedPurchase();
  v3[109] = v5;
  v3[110] = *(v5 - 8);
  v3[111] = swift_task_alloc();
  v3[112] = swift_task_alloc();

  return _swift_task_switch(sub_1000DF3E0, 0, 0);
}

uint64_t sub_1000DF3E0()
{
  sub_1000E0AD0(*(v0 + 808));
  sub_100014B50(*(v0 + 816), v0 + 768, &qword_10023A7E0, &qword_1001B5850);
  if (*(v0 + 792))
  {
    v3 = *(v0 + 824);
    sub_10000DA64((v0 + 768), v0 + 728);
    v4 = *(v0 + 752);
    v5 = *(v0 + 760);
    sub_10000DA7C((v0 + 728), v4);
    v6 = (*(v5 + 16))(v4, v5);
    *(v0 + 904) = v6;
    v8 = v3[3];
    v7 = v3[4];
    v9 = v3[5];
    v10 = swift_allocObject();
    *(v0 + 912) = v10;
    *(v10 + 16) = v6;
    v11 = swift_task_alloc();
    *(v0 + 920) = v11;
    *v11 = v0;
    v11[1] = sub_1000DF790;

    return sub_10010FF18(v0 + 552, sub_1000A0C60, v10, v8, v7, v9);
  }

  else
  {
    sub_10000DAF8(v0 + 768, &qword_10023A7E0, &qword_1001B5850);
    sub_1000E17B4();
    swift_allocError();
    *v12 = 8;
    swift_willThrow();

    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_1000DF790()
{
  *(*v1 + 928) = v0;

  if (v0)
  {
    v2 = sub_1000E0108;
  }

  else
  {
    v2 = sub_1000DF8E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000DF8E8()
{
  v1 = *(v0 + 600);
  *(v0 + 672) = *(v0 + 584);
  *(v0 + 688) = v1;
  *(v0 + 704) = *(v0 + 616);
  *(v0 + 720) = *(v0 + 632);
  v2 = *(v0 + 568);
  *(v0 + 640) = *(v0 + 552);
  *(v0 + 656) = v2;
  v3 = *(v0 + 656);
  *(v0 + 936) = v3;
  v4 = *(v0 + 664);
  *(v0 + 1040) = v4;
  v5 = *(v0 + 680);
  *(v0 + 944) = v5;
  v6 = *(v0 + 688);
  *(v0 + 952) = v6;
  if (!v6)
  {
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000DAC0(v11, qword_10023FD48);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_15;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "No conversion metadata found";
    goto LABEL_14;
  }

  *(v0 + 464) = *(v0 + 552);
  *(v0 + 480) = v3;
  *(v0 + 488) = v4;
  v7 = *(v0 + 577);
  *(v0 + 496) = *(v0 + 584);
  *(v0 + 504) = v5;
  *(v0 + 489) = v7;
  *(v0 + 512) = v6;
  v8 = *(v0 + 624);
  *(v0 + 520) = *(v0 + 608);
  *(v0 + 536) = v8;

  if (sub_1000DC830((v0 + 464), (v0 + 728)))
  {
    v9 = *(v0 + 808);
    v48 = type metadata accessor for DeveloperBillingEvent(0);
    v10 = *(v9 + *(v48 + 28));
    *(v0 + 1041) = v10;
    v49 = v10;
    if (v10 != 2 && (v10 & 1) == 0)
    {
      NSDecimal.init(integerLiteral:)((v10 & 1), 0);
      v9 = *(v0 + 808);
    }

    v46 = *(v0 + 864);
    v19 = *(v0 + 856);
    v45 = *(v0 + 848);
    v47 = *(v0 + 840);
    NSDecimal.init(integerLiteral:)(v47, 1000);
    *(v0 + 1000) = static NSDecimal.* infix(_:_:)();
    *(v0 + 1008) = v20;
    *(v0 + 1016) = v21;
    *(v0 + 1020) = 0;
    *(v0 + 1028) = 0;
    *(v0 + 1036) = 0;
    NSDecimalRound((v0 + 1020), (v0 + 1000), 0, NSRoundPlain);
    NSDecimal._bridgeToObjectiveC()((v0 + 1020));
    v23 = v22;
    [v22 longLongValue];

    v24 = *(v19 + 16);
    v24(v46, v9 + *(v48 + 24), v45);

    AdAttributionKitDeveloperReportedPurchase.init()();
    AdAttributionKitDeveloperReportedPurchase.advertisedItemID.setter();
    AdAttributionKitDeveloperReportedPurchase.conversionID.setter();
    AdAttributionKitDeveloperReportedPurchase.price.setter();
    AdAttributionKitDeveloperReportedPurchase.quantity.setter();
    v24(v47, v46, v45);
    (*(v19 + 56))(v47, 0, 1, v45);
    AdAttributionKitDeveloperReportedPurchase.purchaseDate.setter();
    if (v49 == 2)
    {
      v25 = *(v0 + 832);
      v26 = enum case for AdAttributionKitOfferType.none(_:);
      v27 = type metadata accessor for AdAttributionKitOfferType();
      v28 = *(v27 - 8);
      (*(v28 + 104))(v25, v26, v27);
      (*(v28 + 56))(v25, 0, 1, v27);
    }

    else
    {
      v29 = type metadata accessor for AdAttributionKitOfferType();
      v30 = *(v29 - 8);
      v31 = (v30 + 56);
      v32 = *(v0 + 832);
      if (v49)
      {
        v33 = &enum case for AdAttributionKitOfferType.discounted(_:);
      }

      else
      {
        v33 = &enum case for AdAttributionKitOfferType.freeTrial(_:);
      }

      (*(v30 + 104))(*(v0 + 832), *v33, v29);
      (*v31)(v32, 0, 1, v29);
    }

    AdAttributionKitDeveloperReportedPurchase.offerType.setter();
    sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
    v34 = *(v0 + 896);
    v35 = *(v0 + 888);
    v36 = *(v0 + 880);
    v37 = *(v0 + 872);
    (*(*(v0 + 856) + 8))(*(v0 + 864), *(v0 + 848));
    (*(v36 + 32))(v34, v35, v37);
    if (qword_100239D08 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    *(v0 + 960) = sub_10000DAC0(v38, qword_10023FD48);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Donating developer reported purchase event", v41, 2u);
    }

    v42 = *(v0 + 824);

    sub_10000DA7C((v42 + 48), *(v42 + 72));
    v43 = swift_task_alloc();
    *(v0 + 968) = v43;
    *v43 = v0;
    v43[1] = sub_1000E01E0;
    v44 = *(v0 + 896);

    return (sub_1000FBC48)(v44, &type metadata for BiomeEventStreamDog, &off_10021F658);
  }

  sub_10000DAF8(v0 + 640, &qword_10023B690, &qword_1001B9260);
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000DAC0(v16, qword_10023FD48);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = "Manual reporting mode required for processing developer reported billing events";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v12, v13, v15, v14, 2u);
  }

LABEL_15:

  sub_10000DB58((v0 + 728));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1000E0108()
{
  sub_10000DB58((v0 + 728));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E01E0()
{
  *(*v1 + 976) = v0;

  if (v0)
  {
    v2 = sub_1000E066C;
  }

  else
  {
    v2 = sub_1000E0320;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E0320()
{
  v1 = *(v0 + 1041);
  v2 = *(v0 + 952);
  if (v1 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = v1 & 1;
  }

  sub_1000C8278(v3, 0, (v0 + 240));
  v4 = swift_task_alloc();
  *(v0 + 984) = v4;
  *v4 = v0;
  v4[1] = sub_1000E0420;
  v5 = *(v0 + 944);
  v6 = *(v0 + 936);
  v7 = *(v0 + 1040);

  return sub_1000D8F60((v0 + 240), v5, v2, v6, v7, 0);
}

uint64_t sub_1000E0420()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_1000E0574, 0, 0);
}

uint64_t sub_1000E0574()
{
  (*(v0[110] + 8))(v0[112], v0[109]);
  sub_10000DB58(v0 + 91);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1000E066C()
{
  (*(*(v0 + 880) + 8))(*(v0 + 896), *(v0 + 872));
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to donate developer reported purchase event: %@", v3, 0xCu);
    sub_10000DAF8(v4, &qword_100239F10, &qword_1001B4FD0);
  }

  v6 = *(v0 + 976);
  v7 = *(v0 + 1041);
  v8 = *(v0 + 952);

  if (v7 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 & 1;
  }

  swift_errorRetain();
  sub_1000C8278(v9, v6, (v0 + 16));
  v10 = swift_task_alloc();
  *(v0 + 992) = v10;
  *v10 = v0;
  v10[1] = sub_1000E0880;
  v11 = *(v0 + 944);
  v12 = *(v0 + 936);
  v13 = *(v0 + 1040);

  return sub_1000D8F60((v0 + 16), v11, v8, v12, v13, v6);
}

uint64_t sub_1000E0880()
{
  v1 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_1000E09F0, 0, 0);
}

uint64_t sub_1000E09F0(uint64_t a1)
{
  swift_willThrow();
  sub_10000DB58((v1 + 728));

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1000E0AD0(uint64_t *a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (&v14 - v5);
  NSDecimal.init(integerLiteral:)(v5, 0);
  if (static NSDecimal.< infix(_:_:)())
  {
    sub_1000E17B4();
    swift_allocError();
    v8 = 2;
  }

  else if (a1[3] < 1)
  {
    sub_1000E17B4();
    swift_allocError();
    v8 = 3;
  }

  else
  {
    v9 = sub_100028B78(&off_100214470);
    v10 = type metadata accessor for DeveloperBillingEvent(0);
    v11 = sub_1000C2280(*(a1 + *(v10 + 28)), v9);

    if (v11)
    {
      static Date.now.getter();
      sub_1000E1D70(&qword_10023B530, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v12 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v3 + 8))(v6, v2);
      if ((v12 & 1) == 0)
      {
        return result;
      }

      sub_1000E17B4();
      swift_allocError();
      v8 = 1;
    }

    else
    {
      sub_1000E17B4();
      swift_allocError();
      v8 = 10;
    }
  }

  *v7 = v8;
  return swift_willThrow();
}

double sub_1000E0D20@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (qword_100239D18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Date();
  sub_10000DAC0(v5, qword_10023C9F8);
  sub_1000E2458(a1, v9);
  if (!v2)
  {
    v7 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v7;
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v10;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

uint64_t sub_1000E0E00()
{
  if (qword_100239D08 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FD48);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching server exchange rates", v4, 2u);
  }

  v5 = *(v0 + 128);

  sub_10000CE28(v5 + 88, v0 + 16);
  *(v0 + 96) = &type metadata for DogTools;
  *(v0 + 104) = &off_100217B48;
  *(v0 + 56) = xmmword_1001BE1D0;
  *(v0 + 112) = &type metadata for HTTP;
  *(v0 + 120) = &off_10021B990;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_1000E0F90;

  return sub_10001BF14();
}

uint64_t sub_1000E0F90(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1000E12EC;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_1000E10B8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000E10B8()
{
  v1 = v0[19];
  v2 = v0[16];
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = swift_allocObject();
  v0[20] = v6;
  *(v6 + 16) = v1;
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1000E11BC;

  return sub_10010F230(sub_10010F230, sub_1000E1C9C, v6, v4, v3, v5);
}

uint64_t sub_1000E11BC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1000E13B4;
  }

  else
  {
    v2 = sub_1000E1350;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E12EC()
{
  sub_1000E1C10(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E1350()
{
  sub_1000E1C10(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E13B4()
{
  sub_1000E1C10(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void sub_1000E1418(void *a1, uint64_t a2)
{
  v29 = type metadata accessor for Date();
  v5 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v8 = [a1 connection];
  v9 = sub_100084BCC(v8, 0, _swiftEmptyArrayStorage, 0, 0);
  if ([v9 deleteAllEntities])
  {

    v10 = 1 << *(a2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a2 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = (v5 + 8);

    v14 = 0;
    if (v12)
    {
      while (1)
      {
        v15 = v14;
LABEL_9:
        v16 = __clz(__rbit64(v12)) | (v15 << 6);
        v17 = (*(a2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(a2 + 56) + 20 * v16;
        v30 = *v20;
        v31 = *(v20 + 16);
        v32 = 1;

        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v22 = v21;
        (*v27)(v7, v29);
        v23 = v22 * 1000.0;
        if (COERCE__INT64(fabs(v22 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v23 <= -1.0)
        {
          goto LABEL_20;
        }

        if (v23 >= 1.84467441e19)
        {
          goto LABEL_21;
        }

        v33 = 0;
        v34 = v32;
        *v35 = v41;
        *&v35[3] = *(&v41 + 3);
        v36 = v19;
        v37 = v18;
        v38 = v30;
        v39 = v31;
        v40 = v23;
        v24 = [v28 connection];
        v25 = sub_1000EC884(&v33, v24);

        if (v2)
        {

          sub_10003C344(&v33);
          return;
        }

        v12 &= v12 - 1;

        sub_10003C344(&v33);
        v14 = v15;
        if (!v12)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v13)
        {

          return;
        }

        v12 = *(a2 + 64 + 8 * v15);
        ++v14;
        if (v12)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    type metadata accessor for AKSQLError(0);
    v41 = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_1000E1D70(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

unint64_t sub_1000E17B4()
{
  result = qword_10023CA18;
  if (!qword_10023CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA18);
  }

  return result;
}

uint64_t sub_1000E1818(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1000E18C4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000E191C(uint64_t result)
{
  v1 = *(result + 96) & 1;
  v2 = *(result + 112) & 0xFF01;
  v3 = *(result + 128) & 1;
  v4 = *(result + 144) & 0xFFFF01;
  v5 = *(result + 160) & 1;
  v6 = *(result + 184) & 0xFFFFFFLL;
  v7 = *(result + 240) & 0x103;
  *(result + 80) &= 0xFFFFFFFFFFFFuLL;
  *(result + 96) = v1;
  *(result + 112) = v2;
  *(result + 128) = v3;
  *(result + 144) = v4;
  *(result + 160) = v5;
  *(result + 184) = v6;
  *(result + 240) = v7;
  return result;
}

uint64_t sub_1000E198C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (result != 1)
  {

    return sub_1000D54FC(a6, a7);
  }

  return result;
}

uint64_t sub_1000E19D8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_1000E1A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InAppPurchaseDetails(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E1A98()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_1000E1B74@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Date();
  sub_10015E100(*(v1 + 16), *(v1 + 24), v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_1000E1C64()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E1CB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1000E1CF0@<D0>(uint64_t a1@<X8>)
{
  result = sub_1000E27A8(v6);
  if (!v1)
  {
    v4 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v4;
    *(a1 + 64) = v6[4];
    *(a1 + 80) = v7;
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t sub_1000E1D58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E1D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E1DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1000E1E28(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

__n128 sub_1000E1E50(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_1000E1E9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 248))
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

uint64_t sub_1000E1EE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 248) = 1;
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

    *(result + 248) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AggregatedReportingManagerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AggregatedReportingManagerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E20C0(uint64_t a1)
{
  result = sub_1000E17B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000E20EC()
{
  result = qword_10023CA50;
  if (!qword_10023CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA50);
  }

  return result;
}

double sub_1000E217C@<D0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023CA80, &qword_1001BE480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = [objc_opt_self() containsPredicateWithProperty:v10 values:v11];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CA88, &qword_1001BE488);
  swift_arrayDestroy();
  v14 = [v3 connection];
  v15 = v13;
  v16 = sub_10008692C(v14, v13, &off_1002165E0, 0, 0);
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v20[2] = &v23;
  sub_100036504(sub_1000E2B70, v20, v16);

  if (v4)
  {
    v21[2] = v25;
    v21[3] = v26;
    v21[4] = v27;
    v22 = v28;
    v21[0] = v23;
    v21[1] = v24;
    sub_1000E2A54(v21);
  }

  else
  {
    v18 = v26;
    *(a3 + 32) = v25;
    *(a3 + 48) = v18;
    *(a3 + 64) = v27;
    *(a3 + 80) = v28;
    result = *&v23;
    v19 = v24;
    *a3 = v23;
    *(a3 + 16) = v19;
  }

  return result;
}

void sub_1000E2458(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_10000CDE0(&qword_10023CA80, &qword_1001BE480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  *&v25 = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  Date.timeIntervalSince1970.getter();
  v12 = v11 * 1000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v12 <= -1.0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v12 >= 1.84467441e19)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v13 = String._bridgeToObjectiveC()();
  v14 = [v9 predicateWithProperty:v13 value:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)() comparisonType:6];
  swift_unknownObjectRelease();

  *(inited + 40) = v14;
  v15 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CA88, &qword_1001BE488);
  swift_arrayDestroy();
  v16 = [v3 connection];
  v17 = v15;
  v18 = sub_10008692C(v16, v15, &off_100216750, 0, 0);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  __chkstk_darwin(v18);
  v22[2] = &v25;
  v19 = v31;
  sub_100036504(sub_1000E2B70, v22, v18);
  if (v19)
  {

    v23[2] = v27;
    v23[3] = v28;
    v23[4] = v29;
    v24 = v30;
    v23[0] = v25;
    v23[1] = v26;
    sub_1000E2A54(v23);
  }

  else
  {

    v20 = v28;
    *(a2 + 32) = v27;
    *(a2 + 48) = v20;
    *(a2 + 64) = v29;
    *(a2 + 80) = v30;
    v21 = v26;
    *a2 = v25;
    *(a2 + 16) = v21;
  }
}

double sub_1000E27A8@<D0>(uint64_t a3@<X8>)
{
  v6 = [v3 connection];
  v7 = String._bridgeToObjectiveC()();

  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  v10 = sub_10008692C(v6, v9, _swiftEmptyArrayStorage, 0, 0);
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  v14[2] = &v17;
  sub_100036504(sub_1000E2A50, v14, v10);

  if (v4)
  {
    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v16 = v22;
    v15[0] = v17;
    v15[1] = v18;
    sub_1000E2A54(v15);
  }

  else
  {
    v12 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v12;
    *(a3 + 64) = v21;
    *(a3 + 80) = v22;
    result = *&v17;
    v13 = v18;
    *a3 = v17;
    *(a3 + 16) = v13;
  }

  return result;
}

id sub_1000E29F8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ConversionHistoryDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000E2A54(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023B690, &qword_1001B9260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E2ABC(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[2];
  v7 = a1[4];
  v22 = a1[3];
  v23 = v7;
  v24 = *(a1 + 10);
  v8 = a1[1];
  v19 = *a1;
  v20 = v8;
  v21 = v6;
  v9 = *(v5 + 16);
  v25[0] = *v5;
  v25[1] = v9;
  v11 = *(v5 + 48);
  v10 = *(v5 + 64);
  v12 = *(v5 + 32);
  v26 = *(v5 + 80);
  v25[3] = v11;
  v25[4] = v10;
  v25[2] = v12;
  sub_1000E2A54(v25);
  v13 = v20;
  *v5 = v19;
  *(v5 + 16) = v13;
  v14 = v22;
  v15 = v23;
  v16 = v21;
  *(v5 + 80) = v24;
  *(v5 + 48) = v14;
  *(v5 + 64) = v15;
  *(v5 + 32) = v16;
  *a3 = 1;
  return sub_100047148(&v19, v18);
}

unint64_t sub_1000E2B78()
{
  result = qword_10023CA90;
  if (!qword_10023CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA90);
  }

  return result;
}

unint64_t sub_1000E2BD0()
{
  result = qword_10023CA98;
  if (!qword_10023CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CA98);
  }

  return result;
}

unint64_t sub_1000E2C24(uint64_t a1)
{
  *(a1 + 8) = sub_10003BE30();
  result = sub_1000E2C54();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000E2C54()
{
  result = qword_10023CAE8;
  if (!qword_10023CAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CAE8);
  }

  return result;
}

uint64_t sub_1000E2CA8(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023CB18, &qword_1001BE5E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10000DA7C(a1, a1[3]);
  sub_1000E2BD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_1000E2E78()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E2F48(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000E3004(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E30D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E3438(*a1);
  *a2 = result;
  return result;
}

void sub_1000E3100(unint64_t *a1@<X8>)
{
  v2 = 0xEE0064695F6E6F69;
  v3 = 0x737265765F707061;
  v4 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000001001CA620;
  }

  v5 = 0x80000001001CA000;
  if (*v1)
  {
    v4 = 0xD000000000000015;
    v5 = 0x80000001001CAEA0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_1000E318C()
{
  v1 = 0x737265765F707061;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000E3214@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E3438(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000E324C(uint64_t a1)
{
  v2 = sub_1000E2BD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E3288(uint64_t a1)
{
  v2 = sub_1000E2BD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E32C4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000E3484(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

unint64_t sub_1000E3324()
{
  result = qword_10023CAF0;
  if (!qword_10023CAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CAF0);
  }

  return result;
}

unint64_t sub_1000E337C()
{
  result = qword_10023CAF8;
  if (!qword_10023CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CAF8);
  }

  return result;
}

unint64_t sub_1000E33D4()
{
  result = qword_10023CB00;
  if (!qword_10023CB00)
  {
    sub_10000CCC0(&qword_10023CB08, &qword_1001BE5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CB00);
  }

  return result;
}

unint64_t sub_1000E3438(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100216248, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E3484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023CB10, &qword_1001BE5E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000E2BD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v27 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v21 = v10;
  v25 = 2;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  HIDWORD(v19) = v14;
  v20 = v13;
  v24 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v23 = 1;
  v22 = BYTE4(v19) & 1;
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = v23;
  v17 = v20;
  v18 = v21;
  *(a2 + 16) = v9;
  *(a2 + 24) = v18;
  *(a2 + 32) = v12;
  *(a2 + 40) = v17;
  *(a2 + 48) = v22;
  *(a2 + 56) = v15;
  return result;
}

uint64_t sub_1000E36F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000E3740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000E37A4()
{
  result = qword_10023CB20;
  if (!qword_10023CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CB20);
  }

  return result;
}

uint64_t sub_1000E37F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = type metadata accessor for DispatchQoS.QoSClass();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003E61C();
  (*(v13 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v12);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v13 + 8))(v15, v12);
  (*(v9 + 16))(v11, v25, v8);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v20 = v26;
  v19 = v27;
  *(v18 + 2) = v26;
  *(v18 + 3) = v19;
  *(v18 + 4) = v28;
  (*(v9 + 32))(&v18[v17], v11, v8);
  aBlock[4] = sub_1000E3E4C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_10021E258;
  v21 = _Block_copy(aBlock);
  sub_1000438D8(v20, v19);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100014D60();
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  v23 = v29;
  v22 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v33 + 8))(v23, v22);
  (*(v31 + 8))(v7, v32);
}

uint64_t sub_1000E3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v6 = [v4 signatureFromData:isa type:1 bag:a3 error:v14];

  v7 = v14[0];
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v14[0] = v8;
    v14[1] = v10;
    sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v12 = v7;
    v13 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v14[0] = v13;
    sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_1000E3D74()
{
  v1 = sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  sub_10001BABC(*(v0 + 16), *(v0 + 24));
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000E3E4C()
{
  sub_10000CDE0(&unk_10023CB30, qword_1001BE700);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];

  return sub_1000E3C2C(v1, v2, v3);
}

uint64_t sub_1000E3EC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1000E3ED8@<Q0>(uint64_t a3@<X8>)
{
  v6 = [v3 connection];
  v7 = String._bridgeToObjectiveC()();

  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  v10 = sub_100086F10(v6, v9, _swiftEmptyArrayStorage, 0, 0);
  sub_1000E5480(v26);
  v23 = v26[6];
  v24 = v26[7];
  v25 = v26[8];
  v19 = v26[2];
  v20 = v26[3];
  v21 = v26[4];
  v22 = v26[5];
  v17 = v26[0];
  v18 = v26[1];
  v15[2] = &v17;
  sub_100036DBC(sub_1000E5510, v15, v10);

  if (v4)
  {
    v16[6] = v23;
    v16[7] = v24;
    v16[8] = v25;
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[5] = v22;
    v16[0] = v17;
    v16[1] = v18;
    sub_1000E54A4(v16);
  }

  else
  {
    v12 = v24;
    *(a3 + 96) = v23;
    *(a3 + 112) = v12;
    *(a3 + 128) = v25;
    v13 = v20;
    *(a3 + 32) = v19;
    *(a3 + 48) = v13;
    v14 = v22;
    *(a3 + 64) = v21;
    *(a3 + 80) = v14;
    result = v18;
    *a3 = v17;
    *(a3 + 16) = result;
  }

  return result;
}

void sub_1000E40C8()
{
  v2 = v0;
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = String._bridgeToObjectiveC()();
  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = objc_opt_self();
  v9 = [v8 predicateWithProperty:v6 value:v7 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = String._bridgeToObjectiveC()();
  v11 = [v8 predicateWithProperty:v10 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v11;
  v12 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v13 = [v2 connection];
  v14 = v12;
  v15 = sub_100086F10(v13, v12, _swiftEmptyArrayStorage, 0, 0);
  v17 = _swiftEmptyArrayStorage;
  __chkstk_darwin(v15);
  v16[2] = &v17;
  sub_100036DBC(sub_1000E550C, v16, v15);

  if (v1)
  {
  }
}

void *sub_1000E4390(void *a1)
{
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 predicateWithProperty:v8 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v9;
  v10 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v11 = [v1 connection];
  v12 = v10;
  v13 = sub_100086F10(v11, v10, _swiftEmptyArrayStorage, 0, 0);
  v17 = _swiftEmptyArrayStorage;
  v16[2] = &v17;
  sub_100036DBC(sub_1000E550C, v16, v13);

  v14 = v17;
  if (v2)
  {
  }

  return v14;
}

void *sub_1000E45E0(void *a1, uint64_t a2)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v10 = [objc_opt_self() containsPredicateWithProperty:v8 values:v9];
  swift_unknownObjectRelease();

  *(inited + 40) = v10;
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v12 = [v2 connection];
  v13 = v11;
  v14 = sub_100086F10(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  v17[2] = &v18;
  v18 = _swiftEmptyArrayStorage;
  sub_100036DBC(sub_1000E550C, v17, v14);

  v15 = v18;
  if (v3)
  {
  }

  return v15;
}

void *sub_1000E4850(uint64_t a1)
{
  v4 = [v1 connection];
  v5 = sub_100113DA4(11, a1);
  v6 = sub_100086F10(v4, v5, _swiftEmptyArrayStorage, 0, 0);
  v10 = _swiftEmptyArrayStorage;
  v9[2] = &v10;
  sub_100036DBC(sub_1000E550C, v9, v6);

  v7 = v10;
  if (v2)
  {
  }

  return v7;
}

__n128 sub_1000E4944@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v9;
  v10 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v11 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v12 = [objc_opt_self() containsPredicateWithProperty:v10 values:v11];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v14 = [v3 connection];
  v15 = v13;
  v16 = sub_100086F10(v14, v13, &off_100216778, 0, 0);
  sub_1000E5480(v32);
  v29 = v32[6];
  v30 = v32[7];
  v31 = v32[8];
  v25 = v32[2];
  v26 = v32[3];
  v27 = v32[4];
  v28 = v32[5];
  v23 = v32[0];
  v24 = v32[1];
  v21[2] = &v23;
  sub_100036DBC(sub_1000E549C, v21, v16);

  if (v4)
  {
    v22[6] = v29;
    v22[7] = v30;
    v22[8] = v31;
    v22[2] = v25;
    v22[3] = v26;
    v22[4] = v27;
    v22[5] = v28;
    v22[0] = v23;
    v22[1] = v24;
    sub_1000E54A4(v22);
  }

  else
  {
    v18 = v30;
    *(a3 + 96) = v29;
    *(a3 + 112) = v18;
    *(a3 + 128) = v31;
    v19 = v26;
    *(a3 + 32) = v25;
    *(a3 + 48) = v19;
    v20 = v28;
    *(a3 + 64) = v27;
    *(a3 + 80) = v20;
    result = v24;
    *a3 = v23;
    *(a3 + 16) = result;
  }

  return result;
}

void *sub_1000E4C5C(void *a1, void *a2)
{
  sub_10000CDE0(&qword_10023CBC8, &qword_1001BE750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 predicateWithProperty:v8 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v9;
  v10 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023CBD0, qword_1001BE758);
  swift_arrayDestroy();
  v11 = [v2 connection];
  v12 = v10;
  v13 = sub_100086F10(v11, v10, _swiftEmptyArrayStorage, 0, 0);
  v19 = _swiftEmptyArrayStorage;
  v18 = &v19;
  sub_100036DBC(sub_1000E550C, v17, v13);

  v14 = v19;
  if (v16)
  {
  }

  return v14;
}

void *sub_1000E4EB8()
{
  v2 = String._bridgeToObjectiveC()();
  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 value:v3 comparisonType:2];
  swift_unknownObjectRelease();

  v5 = [v0 connection];
  v6 = v4;
  v7 = sub_100086F10(v5, v4, &off_1002167A0, 0, 0);
  v11 = _swiftEmptyArrayStorage;
  v10[2] = &v11;
  sub_100036DBC(sub_1000E550C, v10, v7);

  v8 = v11;
  if (v1)
  {
  }

  return v8;
}

void *sub_1000E5034(void *a1)
{
  v3 = [v1 connection];
  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:4];
  swift_unknownObjectRelease();

  v7 = sub_100086F10(v3, v6, &off_1002167C8, 0, 0);
  v10[2] = &v11;
  v11 = _swiftEmptyArrayStorage;
  sub_100036DBC(sub_1000E5478, v10, v7);

  v8 = v11;
  if (v2)
  {
  }

  return v8;
}

id sub_1000E521C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GhostbackDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1000E5274(__int128 *a1, uint64_t a2, _BYTE *a3, _OWORD *a4)
{
  v6 = a1[7];
  v26 = a1[6];
  v27 = v6;
  v28 = a1[8];
  v7 = a1[3];
  v22 = a1[2];
  v23 = v7;
  v8 = a1[5];
  v24 = a1[4];
  v25 = v8;
  v9 = a1[1];
  v20 = *a1;
  v21 = v9;
  v10 = a4[7];
  v29[6] = a4[6];
  v29[7] = v10;
  v29[8] = a4[8];
  v11 = a4[3];
  v29[2] = a4[2];
  v29[3] = v11;
  v12 = a4[5];
  v29[4] = a4[4];
  v29[5] = v12;
  v13 = a4[1];
  v29[0] = *a4;
  v29[1] = v13;
  sub_1000E54A4(v29);
  v36 = v26;
  v37 = v27;
  v38 = v28;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v35 = v25;
  v30 = v20;
  v31 = v21;
  MeasurementWindowConfiguration.sourceIDDigits.getter();
  v14 = v37;
  a4[6] = v36;
  a4[7] = v14;
  a4[8] = v38;
  v15 = v33;
  a4[2] = v32;
  a4[3] = v15;
  v16 = v35;
  a4[4] = v34;
  a4[5] = v16;
  v17 = v31;
  *a4 = v30;
  a4[1] = v17;
  *a3 = 1;
  return sub_100070EEC(&v20, &v19);
}

__n128 sub_1000E536C(__n128 *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v29 = a1[8];
  v6 = a1[3];
  v23 = a1[2];
  v24 = v6;
  v7 = a1[5];
  v25 = a1[4];
  v26 = v7;
  v8 = a1[1];
  v21 = *a1;
  v22 = v8;
  v9 = *a4;
  sub_100070EEC(&v21, &v20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_100089418(0, *(v9 + 2) + 1, 1, v9);
    *a4 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_100089418((v11 > 1), v12 + 1, 1, v9);
    *a4 = v9;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[144 * v12];
  *(v13 + 2) = v21;
  v14 = v22;
  v15 = v23;
  v16 = v25;
  *(v13 + 5) = v24;
  *(v13 + 6) = v16;
  *(v13 + 3) = v14;
  *(v13 + 4) = v15;
  result = v26;
  v18 = v27;
  v19 = v29;
  *(v13 + 9) = v28;
  *(v13 + 10) = v19;
  *(v13 + 7) = result;
  *(v13 + 8) = v18;
  return result;
}

double sub_1000E5480(_OWORD *a1)
{
  result = 0.0;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1000E54A4(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023CBD8, &qword_1001C1840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E5514@<X0>(void *a1@<X8>)
{
  v3 = [*v1 targetApplicationRecord];
  result = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
  a1[3] = result;
  a1[4] = &off_10021F840;
  *a1 = v3;
  return result;
}

uint64_t sub_1000E559C()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_1000E56B8;
  v2 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A750, &qword_1001B5478);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100021CD4;
  v0[13] = &unk_10021E2E8;
  v0[14] = v2;
  [v1 openWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E56B8(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v3 = *(v2 + 8);
    v4 = 0;
  }

  else
  {
    v4 = *(*v1 + 152);
    v3 = *(v2 + 8);
  }

  return v3(v4);
}

uint64_t sub_1000E57D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return _swift_task_switch(sub_1000E57F8, 0, 0);
}

uint64_t sub_1000E57F8()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = String._bridgeToObjectiveC()();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_1000E5934;
  v4 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A750, &qword_1001B5478);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100021CD4;
  v0[13] = &unk_10021E2C0;
  v0[14] = v4;
  [v2 openApplicationWithBundleIdentifier:v3 usingConfiguration:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E5934()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_1000E5AA8;
  }

  else
  {
    v2 = sub_1000E5A44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E5A44()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000E5AA8(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1000E5B18(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10001523C(0, &qword_10023BC40, LSAppLink_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_1000E5C28()
{
  v1 = objc_opt_self();
  URL._bridgeToObjectiveC()(v2);
  v4 = v3;
  v0[20] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000E5D6C;
  v5 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&unk_10023CBE0, &unk_1001BE800);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000E5B18;
  v0[13] = &unk_10021E298;
  v0[14] = v5;
  [v1 getAppLinksWithURL:v4 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000E5D6C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1000E5F04;
  }

  else
  {
    v2 = sub_1000E5E7C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000E5E7C()
{
  v1 = v0[20];
  v2 = sub_100087C34(v0[18]);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1000E5F04(uint64_t a1)
{
  v2 = *(v1 + 160);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

id sub_1000E603C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PostbackUpdateTestingServiceListenerDelegate();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000E60A4(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10009E634();
  if (v8)
  {
    v9 = objc_opt_self();
    v10 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon17XPCClientProtocol_];
    [a1 setRemoteObjectInterface:v10];

    v11 = [v9 interfaceWithProtocol:&OBJC_PROTOCOL____TtP20AttributionKitCommon36PostbackUpdateTestingServiceProtocol_];
    [a1 setExportedInterface:v11];

    [a1 setExportedObject:*(v2 + OBJC_IVAR____TtC20AttributionKitDaemon44PostbackUpdateTestingServiceListenerDelegate_serviceBridge)];
    [a1 resume];
    v12 = [a1 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_10000CDE0(&unk_10023B880, &unk_1001B95F0);
    if (swift_dynamicCast())
    {
      swift_getObjectType();
      XPCClientProtocol.handleMessage(_:)(0, 0);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v13 = Logger.xpc.unsafeMutableAddressor();
    (*(v5 + 16))(v7, v13, v4);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Missing entitlement for TestingService", v16, 2u);
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8 & 1;
}

uint64_t sub_1000E6358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v25 = *(a1 + 16);
  sub_100146DA4(0, v1, 0);
  v2 = a1 + 56;
  result = _HashTable.startBucket.getter();
  v4 = v25;
  v5 = a1;
  v6 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v5 + 32))
  {
    v8 = result >> 6;
    v9 = 1 << result;
    if ((*(v2 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    v10 = *(v5 + 36);
    if (*(*(v5 + 48) + result))
    {
      v11 = 0x69746375646F7270;
    }

    else
    {
      v11 = 0x6D706F6C65766564;
    }

    if (*(*(v5 + 48) + result))
    {
      v12 = 0xEA00000000006E6FLL;
    }

    else
    {
      v12 = 0xEB00000000746E65;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];
    if (v14 >= v13 >> 1)
    {
      v23 = *(v5 + 36);
      v24 = result;
      sub_100146DA4((v13 > 1), v14 + 1, 1);
      v4 = v25;
      v5 = a1;
      v10 = v23;
      result = v24;
    }

    _swiftEmptyArrayStorage[2] = v14 + 1;
    v15 = &_swiftEmptyArrayStorage[2 * v14];
    v15[4] = v11;
    v15[5] = v12;
    v7 = 1 << *(v5 + 32);
    if (result >= v7)
    {
      goto LABEL_28;
    }

    v16 = *(v2 + 8 * v8);
    if ((v16 & v9) == 0)
    {
      goto LABEL_29;
    }

    if (v10 != *(v5 + 36))
    {
      goto LABEL_30;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v7 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v8 << 6;
      v19 = v8 + 1;
      v20 = (a1 + 64 + 8 * v8);
      while (v19 < (v7 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_10009C048(result, v10, 0);
          v4 = v25;
          v5 = a1;
          v7 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_10009C048(result, v10, 0);
      v4 = v25;
      v5 = a1;
    }

LABEL_4:
    ++v6;
    result = v7;
    if (v6 == v4)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000E6658(uint64_t a1, uint64_t a2)
{
  v5 = [v2 connection];
  v6 = String._bridgeToObjectiveC()();
  v13[1] = a2;

  v7 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v8 = [objc_opt_self() predicateWithProperty:v6 equalToValue:v7];
  swift_unknownObjectRelease();

  v9 = sub_100085B0C(v5, v8, _swiftEmptyArrayStorage, 0, 0);
  v13[0] = _swiftEmptyArrayStorage;
  v12[2] = v13;
  sub_1000354C4(sub_1000E7FD0, v12, v9);

  v10 = v13[0];
  if (v3)
  {
  }

  return v10;
}

void *sub_1000E67C0(void *a1, uint64_t a2)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v10 = [objc_opt_self() containsPredicateWithProperty:v8 values:v9];
  swift_unknownObjectRelease();

  *(inited + 40) = v10;
  v11 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v12 = [v2 connection];
  v13 = v11;
  v14 = sub_100085B0C(v12, v11, _swiftEmptyArrayStorage, 0, 0);
  v17[2] = &v18;
  v18 = _swiftEmptyArrayStorage;
  sub_1000354C4(sub_1000E7FD0, v17, v14);

  v15 = v18;
  if (v3)
  {
  }

  return v15;
}

void *sub_1000E6A30(uint64_t a1, uint64_t a2)
{
  sub_10009B518(a2);
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1001B5820;
  v5 = String._bridgeToObjectiveC()();
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = objc_opt_self();
  v8 = [v7 predicateWithProperty:v5 equalToValue:v6];
  swift_unknownObjectRelease();

  *(v4 + 32) = v8;
  v9 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v10 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v11 = [objc_opt_self() containsPredicateWithProperty:v9 values:v10];
  swift_unknownObjectRelease();

  *(v4 + 40) = v11;
  v12 = sub_10004FB24(v4);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v13 = [v2 connection];
  v14 = v12;
  v15 = sub_100085B0C(v13, v12, &off_1002143F8, 0, 0);
  sub_1000E7E80(v30);
  memcpy(v29, v30, 0x121uLL);
  v25[2] = v29;
  sub_1000354C4(sub_1000E7F48, v25, v15);
  if (v3)
  {

    memcpy(v28, v29, 0x121uLL);
    return sub_1000E7F50(v28);
  }

  else
  {
    v31 = v2;

    memcpy(v27, v29, 0x121uLL);
    memcpy(v28, v29, 0x121uLL);
    if (sub_1000E7FB8(v28) == 1)
    {

      return _swiftEmptyArrayStorage;
    }

    else
    {
      v17 = v28[22];
      v18 = v28[23];

      sub_1000E7F50(v27);
      v19 = String._bridgeToObjectiveC()();
      v26[0] = v17;
      v26[1] = v18;

      v20 = [v7 predicateWithProperty:v19 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();

      v21 = [v31 connection];
      v22 = v20;
      v23 = sub_100085B0C(v21, v20, &off_100214420, 0, 0);
      v26[0] = _swiftEmptyArrayStorage;
      __chkstk_darwin(v23);
      v24[2] = v26;
      sub_1000354C4(sub_1000E7FD0, v24, v23);

      return v26[0];
    }
  }
}

void *sub_1000E6E94(void *a1, void *a2)
{
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = objc_opt_self();
  v7 = [v6 predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  *(inited + 32) = v7;
  v8 = String._bridgeToObjectiveC()();
  v9 = [v6 predicateWithProperty:v8 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v9;
  v10 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v11 = [v2 connection];
  v12 = v10;
  v13 = sub_100085B0C(v11, v10, _swiftEmptyArrayStorage, 0, 0);
  v19 = _swiftEmptyArrayStorage;
  v18 = &v19;
  sub_1000354C4(sub_1000E7FD0, v17, v13);

  v14 = v19;
  if (v16)
  {
  }

  return v14;
}

void sub_1000E70F0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_1000E6358(a2);
  sub_10000CDE0(&qword_10023AD58, &qword_1001B7620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  Date.timeIntervalSince1970.getter();
  v7 = v6 * 1000.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_59;
  }

  if (v7 <= -1.0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v7 >= 1.84467441e19)
  {
LABEL_61:
    __break(1u);
    return;
  }

  v8 = String._bridgeToObjectiveC()();
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v10 = [objc_opt_self() predicateWithProperty:v8 value:v9 comparisonType:4];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  v11 = String._bridgeToObjectiveC()();
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  v12 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v13 = [objc_opt_self() containsPredicateWithProperty:v11 values:v12];
  swift_unknownObjectRelease();

  *(inited + 40) = v13;
  v14 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&unk_10023AD60, &qword_1001B7628);
  swift_arrayDestroy();
  v15 = [v4 connection];
  v16 = v14;
  v17 = sub_100085B0C(v15, v14, &off_100214448, 0, 0);
  v64[0] = _swiftEmptyArrayStorage;
  __chkstk_darwin(v17);
  v52[2] = v64;
  sub_1000354C4(sub_1000E7E78, v52, v17);

  if (v3)
  {

    return;
  }

  v18 = v64[0];
  v19 = *(v64[0] + 16);
  if (v19)
  {
    v54 = 0;
    v57 = v16;
    v20 = 0;
    v21 = v64[0] + 32;
    v55 = v19 - 1;
    v56 = _swiftEmptyArrayStorage;
    v58 = (v64[0] + 32);
    while (1)
    {
      v22 = (v21 + 296 * v20);
      v23 = v20;
      while (1)
      {
        if (v23 >= *(v18 + 16))
        {
          __break(1u);
          goto LABEL_57;
        }

        memcpy(v64, v22, 0x121uLL);
        if (BYTE2(v64[21]) != 1 || (v64[13] & 0x100) == 0)
        {
          goto LABEL_9;
        }

        if ((v64[21] & 0x100000000) == 0)
        {
          break;
        }

        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1000B3B24(v64, v63);

        if (v24)
        {
          goto LABEL_17;
        }

        sub_10003C04C(v64);
LABEL_9:
        ++v23;
        v22 += 296;
        if (v19 == v23)
        {
          goto LABEL_22;
        }
      }

      sub_1000B3B24(v64, v63);

LABEL_17:
      v25 = v56;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100147120(0, v25[2] + 1, 1);
        v25 = v65;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        sub_100147120((v27 > 1), v28 + 1, 1);
        v25 = v65;
      }

      v20 = v23 + 1;
      v25[2] = v28 + 1;
      v56 = v25;
      memcpy(&v25[37 * v28 + 4], v64, 0x121uLL);
      v21 = v58;
      if (v55 == v23)
      {
LABEL_22:
        v29 = 0;
        v30 = v18 + 32;
        v58 = _swiftEmptyArrayStorage;
        v16 = v57;
        v53 = v18 + 32;
LABEL_23:
        v31 = (v30 + 296 * v29);
        v32 = v29;
        while (v32 < *(v18 + 16))
        {
          memcpy(v64, v31, 0x121uLL);
          if (BYTE2(v64[21]) == 1)
          {
            if (BYTE4(v64[21]) == 1)
            {
              sub_1000B3B24(v64, v63);

LABEL_32:
              v34 = v58;
              v35 = swift_isUniquelyReferenced_nonNull_native();
              v65 = v34;
              if ((v35 & 1) == 0)
              {
                sub_100147120(0, v34[2] + 1, 1);
                v34 = v65;
              }

              v37 = v34[2];
              v36 = v34[3];
              if (v37 >= v36 >> 1)
              {
                sub_100147120((v36 > 1), v37 + 1, 1);
                v34 = v65;
              }

              v29 = v32 + 1;
              v34[2] = v37 + 1;
              v58 = v34;
              memcpy(&v34[37 * v37 + 4], v64, 0x121uLL);
              v16 = v57;
              v30 = v53;
              if (v55 != v32)
              {
                goto LABEL_23;
              }

LABEL_37:
              v38 = 0;
              v39 = v18 + 32;
              v40 = _swiftEmptyArrayStorage;
              v53 = v18 + 32;
LABEL_38:
              v41 = (v39 + 296 * v38);
              v42 = v38;
              while (v42 < *(v18 + 16))
              {
                memcpy(v64, v41, 0x121uLL);
                if (BYTE2(v64[21]) == 1 && (v64[13] & 0x100) == 0)
                {
                  if ((v64[21] & 0x100000000) == 0)
                  {
                    sub_1000B3B24(v64, v63);

LABEL_48:
                    v44 = swift_isUniquelyReferenced_nonNull_native();
                    v65 = v40;
                    if ((v44 & 1) == 0)
                    {
                      sub_100147120(0, v40[2] + 1, 1);
                      v40 = v65;
                    }

                    v46 = v40[2];
                    v45 = v40[3];
                    if (v46 >= v45 >> 1)
                    {
                      sub_100147120((v45 > 1), v46 + 1, 1);
                      v40 = v65;
                    }

                    v38 = v42 + 1;
                    v40[2] = v46 + 1;
                    memcpy(&v40[37 * v46 + 4], v64, 0x121uLL);
                    v16 = v57;
                    v39 = v53;
                    if (v55 == v42)
                    {
LABEL_53:
                      v47 = v56;
                      v48 = v58;
                      goto LABEL_55;
                    }

                    goto LABEL_38;
                  }

                  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  sub_1000B3B24(v64, v63);

                  if (v43)
                  {
                    goto LABEL_48;
                  }

                  sub_10003C04C(v64);
                }

                ++v42;
                v41 += 296;
                if (v19 == v42)
                {
                  goto LABEL_53;
                }
              }

              goto LABEL_58;
            }

            v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_1000B3B24(v64, v63);

            if (v33)
            {
              goto LABEL_32;
            }

            sub_10003C04C(v64);
          }

          ++v32;
          v31 += 296;
          if (v19 == v32)
          {
            goto LABEL_37;
          }
        }

LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }
  }

  v48 = _swiftEmptyArrayStorage;
  v47 = _swiftEmptyArrayStorage;
  v40 = _swiftEmptyArrayStorage;
LABEL_55:

  v64[0] = _swiftEmptyArrayStorage;
  v62 = _swiftEmptyArrayStorage;
  v63[0] = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  sub_1000E7A14(v47, v64, &v62, sub_1000E7FD4);

  v61 = _swiftEmptyArrayStorage;
  sub_1000E7A14(v48, v63, &v61, sub_1000E7FD4);

  v60 = _swiftEmptyArrayStorage;
  sub_1000E7A14(v40, &v65, &v60, sub_10003B8DC);

  v59 = _swiftEmptyArrayStorage;

  sub_1000474CC(v49);

  sub_1000474CC(v50);

  sub_1000474CC(v51);
}

uint64_t sub_1000E7A14(uint64_t result, uint64_t *a2, char **a3, uint64_t (*a4)(void *))
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 296)
    {
      memcpy(__dst, i, 0x121uLL);
      memcpy(__src, i, 0x121uLL);
      sub_1000B3B24(__dst, v10);
      sub_1000E7AF0(__src, a2, a3, a4);
      if (v4)
      {
        break;
      }

      memcpy(v10, __src, 0x121uLL);
      result = sub_10003C04C(v10);
      if (!--v5)
      {
        return result;
      }
    }

    memcpy(v10, __src, 0x121uLL);
    return sub_10003C04C(v10);
  }

  return result;
}

uint64_t sub_1000E7AF0(void *__src, uint64_t *a2, char **a3, uint64_t (*a4)(void *))
{
  memcpy(__dst, __src, 0x121uLL);
  v7 = *a2;
  v9 = __dst[11];
  v8 = __dst[12];
  v21[0] = __dst[11];
  v21[1] = __dst[12];
  v20[2] = v21;

  v10 = sub_1000E1818(a4, v20, v7);

  if (v10)
  {
  }

  v12 = *a3;
  sub_1000B3B24(__dst, v21);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_100088F84(0, *(v12 + 2) + 1, 1, v12);
    *a3 = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_100088F84((v14 > 1), v15 + 1, 1, v12);
    *a3 = v12;
  }

  *(v12 + 2) = v15 + 1;
  memcpy(&v12[296 * v15 + 32], __dst, 0x121uLL);
  v16 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((result & 1) == 0)
  {
    result = sub_100088BDC(0, *(v16 + 16) + 1, 1, v16);
    v16 = result;
    *a2 = result;
  }

  v18 = *(v16 + 16);
  v17 = *(v16 + 24);
  if (v18 >= v17 >> 1)
  {
    result = sub_100088BDC((v17 > 1), v18 + 1, 1, v16);
    v16 = result;
    *a2 = result;
  }

  *(v16 + 16) = v18 + 1;
  v19 = v16 + 16 * v18;
  *(v19 + 32) = v9;
  *(v19 + 40) = v8;
  return result;
}

id sub_1000E7D44(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PostbackDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void *sub_1000E7D9C(void *__src, uint64_t a2, uint64_t a3, char **a4)
{
  memcpy(__dst, __src, 0x121uLL);
  v5 = *a4;
  sub_1000B3B24(__dst, &v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_100088F84(0, *(v5 + 2) + 1, 1, v5);
    *a4 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_100088F84((v7 > 1), v8 + 1, 1, v5);
    *a4 = v5;
  }

  *(v5 + 2) = v8 + 1;
  return memcpy(&v5[296 * v8 + 32], __dst, 0x121uLL);
}

double sub_1000E7E80(uint64_t a1)
{
  *(a1 + 288) = 0;
  result = 0.0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1000E7EB0(void *__src, uint64_t a2, _BYTE *a3, void *a4)
{
  memcpy(__dst, __src, 0x121uLL);
  memcpy(v9, a4, 0x121uLL);
  sub_1000E7F50(v9);
  memcpy(__srca, __dst, sizeof(__srca));
  MeasurementWindowConfiguration.sourceIDDigits.getter();
  memcpy(a4, __srca, 0x121uLL);
  *a3 = 1;
  return sub_1000B3B24(__dst, &v7);
}

uint64_t sub_1000E7F50(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023CC48, &unk_1001BE910);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E7FB8(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E7FF0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E8010(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_1000E8050(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x636974796C616E41;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x636974796C616E41;
  }

  if (v4 == 1)
  {
    v6 = 0x80000001001BE940;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x80000001001CA690;
  }

  if (*a2 == 1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001001BE940;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x80000001001CA690;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000E812C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E81D8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000E8270(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000E8318@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9000(*a1);
  *a2 = result;
  return result;
}

void sub_1000E8348(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000073;
  v4 = 0x636974796C616E41;
  if (v2 == 1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001001BE940;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x80000001001CA690;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_1000E83B0()
{
  v1 = 0x636974796C616E41;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_1000E8414@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000E9000(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000E843C(uint64_t a1)
{
  v2 = sub_1000E9B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8478(uint64_t a1)
{
  v2 = sub_1000E9B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000E84B4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1000E904C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_1000E8504()
{
  v1 = 0x6B63696C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 2003134838;
  }
}

uint64_t sub_1000E8558@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000E92E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000E8580(uint64_t a1)
{
  v2 = sub_1000EA83C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E85BC(uint64_t a1)
{
  v2 = sub_1000EA83C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E85F8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E9400(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
    *(a1 + 25) = HIBYTE(v7);
  }

  return result;
}

uint64_t sub_1000E86C8@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1002167F0, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000E8720(uint64_t a1)
{
  v2 = sub_1000EA00C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E875C(uint64_t a1)
{
  v2 = sub_1000EA00C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E8798@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E9610(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1000E87CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD00000000000001CLL;
  }

  else
  {
    v3 = 0xD000000000000016;
  }

  if (v2)
  {
    v4 = "own";
  }

  else
  {
    v4 = "install-cooldown-hours";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD00000000000001CLL;
  }

  else
  {
    v6 = 0xD000000000000016;
  }

  if (*a2)
  {
    v7 = "install-cooldown-hours";
  }

  else
  {
    v7 = "own";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000E8878()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E88F8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000E8964(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000E89E0@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100214A18, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1000E8A40(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000001CLL;
  }

  else
  {
    v2 = 0xD000000000000016;
  }

  if (*v1)
  {
    v3 = "install-cooldown-hours";
  }

  else
  {
    v3 = "own";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1000E8A80()
{
  if (*v0)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1000E8ABC@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100214A18, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000E8B20(uint64_t a1)
{
  v2 = sub_1000E995C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8B5C(uint64_t a1)
{
  v2 = sub_1000E995C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8B98@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000E9794(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t sub_1000E8BD8()
{
  if (*v0)
  {
    return 0x656972746E756F63;
  }

  else
  {
    return 0x64656C62616E65;
  }
}

uint64_t sub_1000E8C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656972746E756F63 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000E8CFC(uint64_t a1)
{
  v2 = sub_1000EA890();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8D38(uint64_t a1)
{
  v2 = sub_1000EA890();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000E8D74@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EA0B4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

Swift::Int sub_1000E8DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000E8E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E8F04@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100216828, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_1000E8F5C(uint64_t a1)
{
  v2 = sub_1000EA3FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000E8F98(uint64_t a1)
{
  v2 = sub_1000EA3FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000E8FD4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EA288(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

unint64_t sub_1000E9000(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214978, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000E904C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023CC78, &qword_1001BEBB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_1000E9B94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  sub_10000CDE0(&qword_10023CC88, &qword_1001BEBB8);
  v28 = 0;
  sub_1000E9BE8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v21;
  v28 = 1;
  sub_1000E9CC8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v19 = v22;
  v20 = v21;
  v18 = v23;
  v26 = v24;
  v10 = v25;
  v28 = 2;
  sub_1000E9D1C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v21;
  v12 = v22;
  v27 = v10;
  result = sub_10000DB58(a1);
  v15 = v19;
  v14 = v20;
  *a2 = v9;
  *(a2 + 8) = v14;
  v16 = v18;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v26;
  *(a2 + 33) = v27;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_1000E92E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 2003134838 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63696C63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001001CCFF0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000E9400(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023CD28, &qword_1001BF138);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - v5;
  v7 = a1[3];
  sub_10000DA7C(a1, v7);
  sub_1000EA83C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    v17 = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = v8;
    v16 = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    HIDWORD(v12) = v11;
    v15 = 2;
    sub_10004DC18();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    sub_10000DB58(a1);
    v14 = v9 & 1;
    v13 = BYTE4(v12) & 1;
  }

  return v7;
}

void *sub_1000E9610(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023CCC8, &qword_1001BEDF0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_1000EA00C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_1000EA060();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000DB58(a1);
  }

  return v7;
}

uint64_t sub_1000E9794(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023CC50, &qword_1001BE9A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-v5];
  v7 = a1[3];
  sub_10000DA7C(a1, v7);
  sub_1000E995C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    v13[31] = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v9 = v8;
    v13[30] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    sub_10000DB58(a1);
    v13[24] = v9 & 1;
    v13[8] = v12 & 1;
  }

  return v7;
}

unint64_t sub_1000E995C()
{
  result = qword_10023CC58;
  if (!qword_10023CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC58);
  }

  return result;
}

uint64_t sub_1000E99C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1000E9A1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1000E9A90()
{
  result = qword_10023CC60;
  if (!qword_10023CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC60);
  }

  return result;
}

unint64_t sub_1000E9AE8()
{
  result = qword_10023CC68;
  if (!qword_10023CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC68);
  }

  return result;
}

unint64_t sub_1000E9B40()
{
  result = qword_10023CC70;
  if (!qword_10023CC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC70);
  }

  return result;
}

unint64_t sub_1000E9B94()
{
  result = qword_10023CC80;
  if (!qword_10023CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC80);
  }

  return result;
}

unint64_t sub_1000E9BE8()
{
  result = qword_10023CC90;
  if (!qword_10023CC90)
  {
    sub_10000CCC0(&qword_10023CC88, &qword_1001BEBB8);
    sub_1000E9C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC90);
  }

  return result;
}

unint64_t sub_1000E9C74()
{
  result = qword_10023CC98;
  if (!qword_10023CC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CC98);
  }

  return result;
}

unint64_t sub_1000E9CC8()
{
  result = qword_10023CCA0;
  if (!qword_10023CCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCA0);
  }

  return result;
}

unint64_t sub_1000E9D1C()
{
  result = qword_10023CCA8;
  if (!qword_10023CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCA8);
  }

  return result;
}

uint64_t sub_1000E9D80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_1000E9DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = a2 - 2147483646;
    *(result + 8) = 0;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
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

__n128 sub_1000E9E44(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1000E9E58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 26))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 25);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 25);
  }

  v5 = v4 - 4;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1000E9EAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1000E9F08()
{
  result = qword_10023CCB0;
  if (!qword_10023CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCB0);
  }

  return result;
}

unint64_t sub_1000E9F60()
{
  result = qword_10023CCB8;
  if (!qword_10023CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCB8);
  }

  return result;
}

unint64_t sub_1000E9FB8()
{
  result = qword_10023CCC0;
  if (!qword_10023CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCC0);
  }

  return result;
}

unint64_t sub_1000EA00C()
{
  result = qword_10023CCD0;
  if (!qword_10023CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCD0);
  }

  return result;
}

unint64_t sub_1000EA060()
{
  result = qword_10023CCD8;
  if (!qword_10023CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCD8);
  }

  return result;
}

uint64_t sub_1000EA0B4(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023CD38, &unk_1001BF140);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  sub_10000DA7C(a1, v7);
  sub_1000EA890();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10 = 0;
    v7 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
    v9[15] = 1;
    sub_1000EA8E4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000DB58(a1);
  return v7;
}

void *sub_1000EA288(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023CCE0, &qword_1001BEDF8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10000DA7C(a1, a1[3]);
  sub_1000EA3FC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_1000EA450();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000DB58(a1);
  }

  return v7;
}

unint64_t sub_1000EA3FC()
{
  result = qword_10023CCE8;
  if (!qword_10023CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCE8);
  }

  return result;
}

unint64_t sub_1000EA450()
{
  result = qword_10023CCF0;
  if (!qword_10023CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCF0);
  }

  return result;
}

uint64_t sub_1000EA4C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1000EA520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000EA580(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 26))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 25);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1000EA5D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1000EA630()
{
  result = qword_10023CCF8;
  if (!qword_10023CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CCF8);
  }

  return result;
}

unint64_t sub_1000EA688()
{
  result = qword_10023CD00;
  if (!qword_10023CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD00);
  }

  return result;
}

unint64_t sub_1000EA6E0()
{
  result = qword_10023CD08;
  if (!qword_10023CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD08);
  }

  return result;
}

unint64_t sub_1000EA738()
{
  result = qword_10023CD10;
  if (!qword_10023CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD10);
  }

  return result;
}

unint64_t sub_1000EA790()
{
  result = qword_10023CD18;
  if (!qword_10023CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD18);
  }

  return result;
}

unint64_t sub_1000EA7E8()
{
  result = qword_10023CD20;
  if (!qword_10023CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD20);
  }

  return result;
}

unint64_t sub_1000EA83C()
{
  result = qword_10023CD30;
  if (!qword_10023CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD30);
  }

  return result;
}

unint64_t sub_1000EA890()
{
  result = qword_10023CD40;
  if (!qword_10023CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD40);
  }

  return result;
}

unint64_t sub_1000EA8E4()
{
  result = qword_10023CD48;
  if (!qword_10023CD48)
  {
    sub_10000CCC0(&unk_10023C250, &qword_1001B58B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD48);
  }

  return result;
}

unint64_t sub_1000EA984()
{
  result = qword_10023CD50;
  if (!qword_10023CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD50);
  }

  return result;
}

unint64_t sub_1000EA9DC()
{
  result = qword_10023CD58;
  if (!qword_10023CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD58);
  }

  return result;
}

unint64_t sub_1000EAA34()
{
  result = qword_10023CD60;
  if (!qword_10023CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD60);
  }

  return result;
}

unint64_t sub_1000EAA8C()
{
  result = qword_10023CD68;
  if (!qword_10023CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD68);
  }

  return result;
}

unint64_t sub_1000EAAE4()
{
  result = qword_10023CD70;
  if (!qword_10023CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD70);
  }

  return result;
}

unint64_t sub_1000EAB3C()
{
  result = qword_10023CD78;
  if (!qword_10023CD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD78);
  }

  return result;
}

unint64_t sub_1000EABA8()
{
  result = qword_10023CD80;
  if (!qword_10023CD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CD80);
  }

  return result;
}

Swift::Int sub_1000EAC20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BF500[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000EACA8(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1001BF500[v2]);
  return Hasher._finalize()();
}

uint64_t sub_1000EACF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000EB018(*a1);
  *a2 = result;
  return result;
}

void sub_1000EAD48(_BYTE *a1, uint64_t a2)
{
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      sub_1000EB8C4(a2);
    }
  }

  else if (*a1)
  {
    v3 = [type metadata accessor for FrozenImpressionEntity() databaseTable];
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    sub_1000EB45C(v4, v6);

    v7 = String._bridgeToObjectiveC()();

    sub_1001ACB3C(a2, v7);
  }

  else
  {
    sub_1000EB330(a2);
  }
}

unint64_t sub_1000EAE24(void *a1)
{
  a1[1] = sub_1000EAE5C();
  a1[2] = sub_1000EAEB0();
  result = sub_1000EAF04();
  a1[3] = result;
  return result;
}

unint64_t sub_1000EAE5C()
{
  result = qword_10023CDC8;
  if (!qword_10023CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDC8);
  }

  return result;
}

unint64_t sub_1000EAEB0()
{
  result = qword_10023CDD0;
  if (!qword_10023CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDD0);
  }

  return result;
}

unint64_t sub_1000EAF04()
{
  result = qword_10023CDD8;
  if (!qword_10023CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDD8);
  }

  return result;
}

unint64_t sub_1000EAF5C()
{
  result = qword_10023CDE0;
  if (!qword_10023CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDE0);
  }

  return result;
}

unint64_t sub_1000EAFB4()
{
  result = qword_10023CDE8;
  if (!qword_10023CDE8)
  {
    sub_10000CCC0(&qword_10023CDF0, &qword_1001BF4A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CDE8);
  }

  return result;
}

uint64_t sub_1000EB018(uint64_t result)
{
  if (result > 17400)
  {
    if (result == 18000)
    {
      return 3;
    }

    if (result == 17401)
    {
      return 2;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    if (result == 17400)
    {
      return 1;
    }
  }

  return 4;
}

uint64_t sub_1000EB06C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(153);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x6973736572706D69;
  v7._object = 0xED000064695F6E6FLL;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C5458455420;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA650;
  v9._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA000;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6F7774656E5F6461;
  v13._object = 0xED000064695F6B72;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xA2C5458455420;
  v14._object = 0xE700000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6D617473656D6974;
  v15._object = 0xE900000000000070;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x52454745544E4920;
  v16._object = 0xEA00000000000A2CLL;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD000000000000010;
  v17._object = 0x80000001001CA670;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xA2C5458455420;
  v18._object = 0xE700000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x5F746361706D6F63;
  v19._object = 0xEB0000000073776ALL;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xA2C5458455420;
  v20._object = 0xE700000000000000;
  String.append(_:)(v20);
  v21._object = 0x80000001001CA620;
  v21._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v21);
  v22._object = 0x80000001001CB530;
  v22._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v22);
  v23._object = 0x80000001001CA000;
  v23._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 8236;
  v24._object = 0xE200000000000000;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x6F7774656E5F6461;
  v25._object = 0xED000064695F6B72;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000018;
  v26._object = 0x80000001001CB550;
  String.append(_:)(v26);
  return 0;
}

void sub_1000EB330(uint64_t a1)
{
  v2 = [type metadata accessor for PendingImpressionEntity() databaseTable];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  sub_1000EB06C(v3, v5);

  v6 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v6);

  v7 = [type metadata accessor for ImpressionEntity() databaseTable];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_1000EB06C(v8, v10);

  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);
}

uint64_t sub_1000EB45C(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(104);
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001001CB510;
  String.append(_:)(v4);
  v5._countAndFlagsBits = a1;
  v5._object = a2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 665632;
  v6._object = 0xE300000000000000;
  String.append(_:)(v6);
  v7._object = 0x80000001001CAD90;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0xA2C424F4C4220;
  v8._object = 0xE700000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0xD000000000000014;
  v9._object = 0x80000001001CADB0;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0xA2C424F4C4220;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v11._object = 0x80000001001CA000;
  v11._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x63616274736F6867;
  v13._object = 0xEC00000064695F6BLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x550A2C5458455420;
  v14._object = 0xEE0028455551494ELL;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x63616274736F6867;
  v15._object = 0xEC00000064695F6BLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001001CB550;
  String.append(_:)(v16);
  return 0;
}

void sub_1000EB628(uint64_t a1, uint64_t a2, void *a3)
{
  _StringGuts.grow(_:)(38);

  v6._countAndFlagsBits = a2;
  v6._object = a3;
  String.append(_:)(v6);
  v7._countAndFlagsBits = 0x205445530ALL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 0x6D6E6F7269766E65;
  v8._object = 0xEB00000000746E65;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 656424224;
  v9._object = 0xE400000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x69746375646F7270;
  v10._object = 0xEA00000000006E6FLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x2045524548570A27;
  v11._object = 0xE800000000000000;
  String.append(_:)(v11);
  v12._object = 0x80000001001CA650;
  v12._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x3B30203D2120;
  v13._object = 0xE600000000000000;
  String.append(_:)(v13);
  v14 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v14);

  _StringGuts.grow(_:)(37);

  v15._countAndFlagsBits = a2;
  v15._object = a3;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x205445530ALL;
  v16._object = 0xE500000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x6D6E6F7269766E65;
  v17._object = 0xEB00000000746E65;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 656424224;
  v18._object = 0xE400000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x6D706F6C65766564;
  v19._object = 0xEB00000000746E65;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x2045524548570A27;
  v20._object = 0xE800000000000000;
  String.append(_:)(v20);
  v21._object = 0x80000001001CA650;
  v21._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x3B30203D20;
  v22._object = 0xE500000000000000;
  String.append(_:)(v22);
  v23 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v23);
}

uint64_t sub_1000EB8C4(uint64_t a1)
{
  _StringGuts.grow(_:)(34);

  strcpy(v31, "ALTER TABLE ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  v2 = type metadata accessor for PendingImpressionEntity();
  v3 = [v2 databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0x4C4F432044444120;
  v8._object = 0xEC000000204E4D55;
  String.append(_:)(v8);
  v9._countAndFlagsBits = 0x6D6E6F7269766E65;
  v9._object = 0xEB00000000746E65;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x3B5458455420;
  v10._object = 0xE600000000000000;
  String.append(_:)(v10);
  v11 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v11);

  v12 = [v2 databaseTable];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1000EB628(a1, v13, v15);

  _StringGuts.grow(_:)(34);

  strcpy(v31, "ALTER TABLE ");
  BYTE5(v31[1]) = 0;
  HIWORD(v31[1]) = -5120;
  v16 = type metadata accessor for ImpressionEntity();
  v17 = [v16 databaseTable];
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0x4C4F432044444120;
  v22._object = 0xEC000000204E4D55;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x6D6E6F7269766E65;
  v23._object = 0xEB00000000746E65;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x3B5458455420;
  v24._object = 0xE600000000000000;
  String.append(_:)(v24);
  v25 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v25);

  v26 = [v16 databaseTable];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  sub_1000EB628(a1, v27, v29);
}

__SecCertificate *sub_1000EBBA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __SecCertificate *a8)
{
  v11 = Data.init(base64Encoded:options:)();
  if (v12 >> 60 != 15)
  {
    v41 = v11;
    v42 = v12;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = SecCertificateCreateWithData(0, isa);

    if (v15)
    {
      v16 = SecCertificateCopyKey(v15);
      if (v16)
      {
        v40 = v15;
        v15 = v16;
        v17 = SecKeyCopyExternalRepresentation(v16, 0);
        if (v17)
        {
          v18 = v17;
          v39 = v15;
          v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v38 = v20;

          v21 = Data.init(base64Encoded:options:)();
          if (v22 >> 60 == 15)
          {
            sub_10005CA88();
            swift_allocError();
            *v23 = 7;
            swift_willThrow();
            v24 = v19;
            v25 = v38;
          }

          else
          {
            v29 = v21;
            v30 = v22;
            v31 = Data.init(base64Encoded:options:)();
            a8 = v40;
            if (v32 >> 60 == 15)
            {
              sub_10005CA88();
              swift_allocError();
              *v33 = 9;
              swift_willThrow();
              sub_10005CB30(v29, v30);
              sub_10001BABC(v19, v38);

LABEL_17:
              goto LABEL_18;
            }

            v34 = v31;
            v35 = v32;
            sub_10000DA7C((v8 + 16), *(v8 + 40));
            v36 = SKANUTClient.finalize(publicInput:evaluatedElement:proof:publicKey:)();
            if (!v9)
            {
              a8 = v36;
              sub_10005CB30(v34, v35);
              sub_10005CB30(v29, v30);
              sub_10001BABC(v19, v38);

              sub_10005CB30(v41, v42);
              return a8;
            }

            sub_10005CB30(v34, v35);
            sub_10005CB30(v29, v30);
            v24 = v19;
            v25 = v38;
          }

          sub_10001BABC(v24, v25);

          goto LABEL_17;
        }

        sub_10005CA88();
        swift_allocError();
        *v28 = 5;
        swift_willThrow();
      }

      else
      {
        sub_10005CA88();
        swift_allocError();
        *v27 = 4;
        swift_willThrow();
      }
    }

    else
    {
      sub_10005CA88();
      swift_allocError();
      *v26 = 3;
      swift_willThrow();
    }

LABEL_18:
    sub_10005CB30(v41, v42);
    return a8;
  }

  sub_10005CA88();
  swift_allocError();
  *v13 = 2;
  swift_willThrow();
  return a8;
}

uint64_t sub_1000EBF14()
{
  sub_10000DB58((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1000EBF70()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 32;
  *(v0 + 48) = 0u;
  *(v0 + 32) = 0u;
  v1 = (v0 + 32);
  SecRandomCopyBytes(kSecRandomDefault, 0x20uLL, (v0 + 32));
  v2 = sub_100098A3C(v1, 0x20uLL);

  return v2;
}

unint64_t sub_1000EBFFC()
{
  v0 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  __chkstk_darwin(v0 - 8);
  v38 = &v33 - v1;
  v2 = type metadata accessor for Calendar();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DateComponents();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date();
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = __chkstk_darwin(v8);
  v33 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  Date.init()();
  sub_10000CDE0(&qword_10023A720, &unk_1001B5460);
  v13 = type metadata accessor for Calendar.Component();
  v14 = *(v13 - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1001B75D0;
  v18 = v17 + v16;
  v19 = *(v14 + 104);
  v19(v18, enum case for Calendar.Component.year(_:), v13);
  v19(v18 + v15, enum case for Calendar.Component.month(_:), v13);
  v19(v18 + 2 * v15, enum case for Calendar.Component.day(_:), v13);
  sub_100028384(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  static Calendar.current.getter();
  Calendar.dateComponents(_:from:)();

  v20 = v37;
  v21 = *(v36 + 8);
  v21(v4, v37);
  static Calendar.current.getter();
  v22 = v38;
  Calendar.date(from:)();
  v23 = v20;
  v24 = v34;
  v21(v4, v23);
  v25 = v22;
  v26 = v35;
  if ((*(v24 + 48))(v25, 1, v35) == 1)
  {
    (*(v39 + 8))(v7, v40);
    (*(v24 + 8))(v12, v26);
    sub_1000B3CC8(v25);
    return 0;
  }

  v28 = v33;
  (*(v24 + 32))(v33, v25, v26);
  Date.timeIntervalSince1970.getter();
  v30 = v29;
  v31 = *(v24 + 8);
  v31(v28, v26);
  (*(v39 + 8))(v7, v40);
  result = (v31)(v12, v26);
  v32 = v30 * 1000.0;
  if (COERCE__INT64(fabs(v30 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v32 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v32 < 1.84467441e19)
  {
    return v32;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000EC504(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000EC54C(uint64_t result, int a2, int a3)
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

unint64_t sub_1000EC5B4(uint64_t a1)
{
  result = sub_10005CA88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EC5E0()
{
  result = qword_10023CEA0;
  if (!qword_10023CEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CEA0);
  }

  return result;
}

id sub_1000EC7D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppDistributorMetadataEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000EC830()
{
  result = qword_10023CED0;
  if (!qword_10023CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023CED0);
  }

  return result;
}

id sub_1000EC8C4(uint64_t *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v5 = JSONEncoder.init()();
  sub_1000EEF1C(a1, v5, type metadata accessor for SnoutStoryModel, &qword_10023A0B0, type metadata accessor for SnoutStoryModel, &unk_1001B3C8C);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[1])
      {
        type metadata accessor for SnoutStoryEntity();
        v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v6 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v8 = *a1;
        type metadata accessor for SnoutStoryEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v8 onConnection:a2];
        v9 = Dictionary._bridgeToObjectiveC()().super.isa;

        v10 = [a2 setValuesWithDictionary:v9];

        if ((v10 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ECBDC(__int128 *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EED8C(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for SoloEventEntity();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v5 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = *a1;
        type metadata accessor for SoloEventEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:a2];
        v8 = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [a2 setValuesWithDictionary:v8];

        if ((v9 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ECEDC(uint64_t *a1, id a2, uint64_t (*a3)(void))
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v7 = JSONEncoder.init()();
  sub_1000EEF1C(a1, v7, type metadata accessor for ImpressionModel, &qword_10023B0F0, type metadata accessor for ImpressionModel, &unk_1001B800C);

  if (!v3)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[1])
      {
        a3(0);
        v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = *a1;
        a3(0);
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v10 onConnection:a2];
        v11 = Dictionary._bridgeToObjectiveC()().super.isa;

        v12 = [a2 setValuesWithDictionary:v11];

        if ((v12 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ED22C(_BYTE *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF094(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[8])
      {
        type metadata accessor for PostbackEntity();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v5 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = *a1;
        type metadata accessor for PostbackEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:a2];
        v8 = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [a2 setValuesWithDictionary:v8];

        if ((v9 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ED500(uint64_t *a1, id a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF1F0(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      type metadata accessor for ConversionTagEntity();
      v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      if (v6)
      {
        v8 = v7;
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v8 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        a2 = [v7 initWithPersistentID:v5 onConnection:a2];
        v10 = Dictionary._bridgeToObjectiveC()().super.isa;

        v11 = [a2 setValuesWithDictionary:v10];

        if ((v11 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000ED804(uint64_t *a1, id a2, void (*a3)(void *__return_ptr, uint64_t *, uint64_t), uint64_t (*a4)(void))
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v9 = JSONEncoder.init()();
  a3(v16, a1, v9);

  if (!v4)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[1])
      {
        a4(0);
        v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v10 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *a1;
        a4(0);
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v12 onConnection:a2];
        v13 = Dictionary._bridgeToObjectiveC()().super.isa;

        v14 = [a2 setValuesWithDictionary:v13];

        if ((v14 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EDAEC(__int128 *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF498(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for FinalizedTokenEntity();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v5 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = *a1;
        type metadata accessor for FinalizedTokenEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:a2];
        v8 = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [a2 setValuesWithDictionary:v8];

        if ((v9 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EDE00(__int128 *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF758(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for ConversionHistoryEntity();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v5 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = *a1;
        type metadata accessor for ConversionHistoryEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:a2];
        v8 = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [a2 setValuesWithDictionary:v8];

        if ((v9 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE0D4(__int128 *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EF8BC(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for ItemIdentifierBundleIDMapEntity();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v5 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = *a1;
        type metadata accessor for ItemIdentifierBundleIDMapEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:a2];
        v8 = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [a2 setValuesWithDictionary:v8];

        if ((v9 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE3A8(uint64_t *a1, id a2, void (*a3)(void *__return_ptr, uint64_t *, uint64_t), uint64_t (*a4)(void))
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v9 = JSONEncoder.init()();
  a3(v16, a1, v9);

  if (!v4)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (a1[1])
      {
        a4(0);
        v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v10 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = *a1;
        a4(0);
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v12 onConnection:a2];
        v13 = Dictionary._bridgeToObjectiveC()().super.isa;

        v14 = [a2 setValuesWithDictionary:v13];

        if ((v14 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE690(__int128 *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EFB6C(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for FrozenImpressionEntity();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v5 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = *a1;
        type metadata accessor for FrozenImpressionEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:a2];
        v8 = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [a2 setValuesWithDictionary:v8];

        if ((v9 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

id sub_1000EE964(__int128 *a1, id a2)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_1000EFCC8(a1);

  if (!v2)
  {
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      if (*(a1 + 8))
      {
        type metadata accessor for GhostbackEntity();
        v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        a2 = [v5 initWithPropertyValues:isa onConnection:a2];

        if (([a2 existsInDatabase] & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v7 = *a1;
        type metadata accessor for GhostbackEntity();
        a2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v7 onConnection:a2];
        v8 = Dictionary._bridgeToObjectiveC()().super.isa;

        v9 = [a2 setValuesWithDictionary:v8];

        if ((v9 & 1) == 0)
        {
LABEL_8:
          type metadata accessor for AKSQLError(0);
          sub_10008976C(_swiftEmptyArrayStorage);
          sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
        }
      }
    }

    else
    {
      type metadata accessor for AKSQLError(0);
      sub_10008976C(_swiftEmptyArrayStorage);
      sub_1000F1A1C(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }
  }

  return a2;
}

uint64_t sub_1000EEC38(__int128 *a1)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  sub_10005D188();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EED8C(__int128 *a1)
{
  v2 = a1[13];
  v31 = a1[12];
  v32 = v2;
  v33 = a1[14];
  v3 = a1[9];
  v27 = a1[8];
  v28 = v3;
  v4 = a1[11];
  v29 = a1[10];
  v30 = v4;
  v5 = a1[5];
  v23 = a1[4];
  v24 = v5;
  v6 = a1[7];
  v25 = a1[6];
  v26 = v6;
  v7 = a1[1];
  v19 = *a1;
  v20 = v7;
  v8 = a1[3];
  v21 = a1[2];
  v22 = v8;
  sub_1000F19C8();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v11 = result;
    v12 = v10;
    v13 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = 0;
    v15 = [v13 JSONObjectWithData:isa options:4 error:&v18];

    v16 = v18;
    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v11, v12);
      return swift_unknownObjectRelease();
    }

    else
    {
      v17 = v16;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v11, v12);
    }
  }

  return result;
}

uint64_t sub_1000EEF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  a3(0);
  sub_1000F1A1C(a4, a5, a6);
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v6)
  {
    v12 = result;
    v13 = v11;
    v14 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = 0;
    v16 = [v14 JSONObjectWithData:isa options:4 error:&v19];

    v17 = v19;
    if (v16)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v12, v13);
      return swift_unknownObjectRelease();
    }

    else
    {
      v18 = v17;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v12, v13);
    }
  }

  return result;
}

uint64_t *sub_1000EF094(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1000AF17C();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v4 = result;
    v5 = v3;
    v6 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v11 = 0;
    v8 = [v6 JSONObjectWithData:isa options:4 error:&v11];

    v9 = v11;
    if (v8)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v4, v5);
      return swift_unknownObjectRelease();
    }

    else
    {
      v10 = v9;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v4, v5);
    }
  }

  return result;
}

uint64_t sub_1000EF1F0(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 4);
  sub_1000A9244();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EF344(__int128 *a1)
{
  v2 = a1[1];
  v14 = *a1;
  v15 = v2;
  v3 = a1[3];
  v16 = a1[2];
  v17 = v3;
  sub_1000E2C54();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EF498(__int128 *a1)
{
  v2 = a1[5];
  v19 = a1[4];
  *v20 = v2;
  *&v20[15] = *(a1 + 95);
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = a1[3];
  v17 = a1[2];
  v18 = v4;
  sub_1000F1AB8();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v7 = result;
    v8 = v6;
    v9 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = 0;
    v11 = [v9 JSONObjectWithData:isa options:4 error:&v14];

    v12 = v14;
    if (v11)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v7, v8);
      return swift_unknownObjectRelease();
    }

    else
    {
      v13 = v12;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v7, v8);
    }
  }

  return result;
}

uint64_t sub_1000EF5FC(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = a1[2];
  v16 = *(a1 + 6);
  sub_1000F1A64();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EF758(__int128 *a1)
{
  v2 = a1[3];
  v16 = a1[2];
  v17 = v2;
  v18 = a1[4];
  v19 = *(a1 + 10);
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  sub_1000464D4();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EF8BC(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 4);
  sub_10007C520();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EFA10(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = a1[2];
  v16 = *(a1 + 6);
  sub_100010C38();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v5 = result;
    v6 = v4;
    v7 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = 0;
    v9 = [v7 JSONObjectWithData:isa options:4 error:&v12];

    v10 = v12;
    if (v9)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v5, v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      v11 = v10;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v5, v6);
    }
  }

  return result;
}

uint64_t sub_1000EFB6C(__int128 *a1)
{
  v2 = a1[3];
  v16 = a1[2];
  v17 = v2;
  v18 = *(a1 + 8);
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  sub_100071428();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v6 = result;
    v7 = v5;
    v8 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v13 = 0;
    v10 = [v8 JSONObjectWithData:isa options:4 error:&v13];

    v11 = v13;
    if (v10)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v6, v7);
      return swift_unknownObjectRelease();
    }

    else
    {
      v12 = v11;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v6, v7);
    }
  }

  return result;
}

uint64_t sub_1000EFCC8(__int128 *a1)
{
  v2 = a1[7];
  v22 = a1[6];
  v23 = v2;
  v24 = a1[8];
  v3 = a1[3];
  v18 = a1[2];
  v19 = v3;
  v4 = a1[5];
  v20 = a1[4];
  v21 = v4;
  v5 = a1[1];
  v16 = *a1;
  v17 = v5;
  sub_10006F5C8();
  result = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v8 = result;
    v9 = v7;
    v10 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v15 = 0;
    v12 = [v10 JSONObjectWithData:isa options:4 error:&v15];

    v13 = v15;
    if (v12)
    {
      _bridgeAnyObjectToAny(_:)();
      sub_10001BABC(v8, v9);
      return swift_unknownObjectRelease();
    }

    else
    {
      v14 = v13;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      return sub_10001BABC(v8, v9);
    }
  }

  return result;
}