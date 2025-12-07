unint64_t sub_100019650()
{
  result = qword_1000E50A8;
  if (!qword_1000E50A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E50A8);
  }

  return result;
}

uint64_t sub_1000196A4(uint64_t a1)
{
  v2 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_100017A54(&qword_1000E50B8, &qword_1000AA4A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1000A3390();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3380();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_10001AA70(a1, v4);
    v13 = sub_1000A1700();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_10001AAE0(v4);
      v16 = 0u;
      v17 = 0u;
    }

    else
    {
      *(&v17 + 1) = v13;
      v15 = sub_10001AB48(&v16);
      (*(v14 + 32))(v15, v4, v13);
    }

    sub_10007BF9C(&v16, v11);
    return sub_10001AAE0(a1);
  }

  return result;
}

unint64_t sub_100019910@<X0>(uint64_t a2@<X8>)
{
  v62 = a2;
  v63 = type metadata accessor for NewsTimelineEntry(0);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v56 - v8;
  v10 = sub_1000A1700();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v56 - v15;
  sub_100018688((v2 + 16), *(v2 + 40));
  sub_10001C2A0(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10001AAE0(v9);
    v17 = 1;
    v18 = v62;
    return (*(v61 + 56))(v18, v17, 1, v63);
  }

  (*(v11 + 32))(v16, v9, v10);
  sub_1000A16A0();
  v20 = v64;
  v21 = sub_1000A1710();
  if (v20)
  {
    v34 = *(v11 + 8);
    v34(v14, v10);
    return (v34)(v16, v10);
  }

  else
  {
    v23 = v22;
    v59 = v14;
    v64 = v21;
    sub_1000A14E0();
    swift_allocObject();
    v24 = sub_1000A14D0();
    v25 = *(v11 + 16);
    v58 = v16;
    v25(v7, v16, v10);
    v57 = v11;
    v26 = *(v11 + 56);
    v27 = v10;
    v26(v7, 0, 1, v10);
    v28 = sub_1000A14C0();
    v30 = v29;
    v31 = v23;
    v66 = *v29;
    swift_bridgeObjectRetain_n();
    sub_1000196A4(v7);
    *v30 = v66;

    v28(v65, 0);

    sub_10001ABAC(&qword_1000E50C0, &unk_1000A9C64);
    v32 = v60;
    v33 = v63;
    sub_1000A14B0();
    v56[1] = v24;
    sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1000AA450;
    v36 = *(v33 + 20);
    v37 = (v32 + v36 + *(type metadata accessor for TodayContent(0) + 44));
    v39 = *v37;
    v38 = v37[1];
    *(v35 + 56) = &type metadata for String;
    result = sub_10001A97C();
    v40 = result;
    *(v35 + 64) = result;
    if (v38)
    {
      v41 = v39;
    }

    else
    {
      v41 = 0;
    }

    v42 = 0xE000000000000000;
    if (v38)
    {
      v42 = v38;
    }

    *(v35 + 32) = v41;
    *(v35 + 40) = v42;
    v43 = v23 >> 62;
    if ((v23 >> 62) > 1)
    {
      v44 = 0;
      if (v43 != 2)
      {
        goto LABEL_21;
      }

      v46 = *(v64 + 16);
      v45 = *(v64 + 24);
      v44 = v45 - v46;
      if (!__OFSUB__(v45, v46))
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (!v43)
    {
      v44 = BYTE6(v23);
LABEL_21:
      v47 = objc_opt_self();

      v48 = [v47 stringFromByteCount:v44 countStyle:0];
      v49 = sub_1000A2D40();
      v51 = v50;

      *(v35 + 96) = &type metadata for String;
      *(v35 + 104) = v40;
      *(v35 + 72) = v49;
      *(v35 + 80) = v51;
      sub_10001A9D0();
      v52 = sub_1000A3190();
      v53 = sub_1000A3090();
      sub_1000A1DB0("loaded timeline entry from store, id=%{public}@, size=%{public}@", 64, 2, &_mh_execute_header, v52, v53, v35);

      sub_10001AA1C(v64, v31);
      v54 = *(v57 + 8);
      v54(v59, v27);
      v54(v58, v27);
      v55 = v62;
      sub_10001ABF0(v60, v62);
      v18 = v55;
      v17 = 0;
      return (*(v61 + 56))(v18, v17, 1, v63);
    }

    if (!__OFSUB__(HIDWORD(v64), v64))
    {
      v44 = HIDWORD(v64) - v64;
      goto LABEL_21;
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100019F14()
{
  sub_1000A35F0();
  sub_1000A3600(0);
  return sub_1000A3620();
}

Swift::Int sub_100019F80(uint64_t a1)
{
  sub_1000A35F0();
  sub_1000A3600(0);
  return sub_1000A3620();
}

uint64_t sub_100019FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000A3560();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10001A06C(uint64_t a1)
{
  v2 = sub_10001B2E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001A0A8(uint64_t a1)
{
  v2 = sub_10001B2E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001A0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100017A54(&qword_1000E50B8, &qword_1000AA4A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-v5];
  v7 = sub_1000A3390();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000A3380();
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    if (*(a1 + 16) && (v12 = sub_100031620(v10), (v13 & 1) != 0))
    {
      sub_10001B390(*(a1 + 56) + 32 * v12, v17);
      (*(v8 + 8))(v10, v7);
      v14 = sub_1000A1700();
      v15 = swift_dynamicCast();
      return (*(*(v14 - 8) + 56))(a2, v15 ^ 1u, 1, v14);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v16 = sub_1000A1700();
      return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  return result;
}

uint64_t sub_10001A354(void *a1, UIImage *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v54 = a5;
  v46 = a4;
  v49 = a3;
  v50 = a2;
  v6 = sub_1000A1630();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E50E8, &qword_1000AA5E8);
  v47 = *(v8 - 8);
  v48 = v8;
  __chkstk_darwin(v8);
  v51 = &v40 - v9;
  v10 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_1000A1700();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v40 - v18;
  sub_100018688(a1, a1[3]);
  v20 = sub_1000A3650();
  sub_10001A0F8(v20, v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001AAE0(v12);
    sub_10001B294();
    v21 = swift_allocError();
    *v22 = 0;
    result = swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    v24 = UIImagePNGRepresentation(v50);
    v25 = v19;
    if (v24)
    {
      v26 = v24;
      v41 = sub_1000A1730();
      v50 = v27;

      sub_100018688(a1, a1[3]);
      sub_10001B2E8();
      v28 = v19;
      sub_1000A3660();
      v52 = v49;
      v53 = v46;
      v29 = v42;
      v30 = v43;
      v31 = v44;
      (*(v43 + 104))(v42, enum case for URL.DirectoryHint.notDirectory(_:), v44);
      sub_10001B33C();

      sub_1000A16F0();
      v32 = v41;
      (*(v30 + 8))(v29, v31);
      v33 = v50;

      v34 = v45;
      sub_1000A1740();
      v21 = v34;
      if (!v34)
      {
        v45 = v28;
        v37 = v48;
        v38 = v51;
        sub_1000A34E0();
        sub_10001AA1C(v32, v33);
        v39 = *(v14 + 8);
        v39(v17, v13);
        (*(v47 + 8))(v38, v37);
        return (v39)(v45, v13);
      }

      sub_10001AA1C(v32, v33);
      v35 = *(v14 + 8);
      v35(v17, v13);
      (*(v47 + 8))(v51, v48);
      result = (v35)(v28, v13);
    }

    else
    {
      sub_10001B294();
      v21 = swift_allocError();
      *v36 = 2;
      swift_willThrow();
      result = (*(v14 + 8))(v25, v13);
    }
  }

  *v54 = v21;
  return result;
}

void (*sub_10001A8C8@<X0>(void (**a1)(char *, uint64_t)@<X8>, void *a2@<X0>))(char *, uint64_t)
{
  result = sub_10001AD68(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

void sub_10001A8F8(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = objc_autoreleasePoolPush();
  sub_10001A354(a1, v3, v4, v5, &v7);
  objc_autoreleasePoolPop(v6);
}

unint64_t sub_10001A97C()
{
  result = qword_1000E5280;
  if (!qword_1000E5280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5280);
  }

  return result;
}

unint64_t sub_10001A9D0()
{
  result = qword_1000E76B0;
  if (!qword_1000E76B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E76B0);
  }

  return result;
}

uint64_t sub_10001AA1C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_10001AA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AAE0(uint64_t a1)
{
  v2 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_10001AB48(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10001ABAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NewsTimelineEntry(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001ABF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_10001AC64(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001AC78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001ACC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001AD14()
{
  result = qword_1000E50C8;
  if (!qword_1000E50C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E50C8);
  }

  return result;
}

void (*sub_10001AD68(void *a1))(char *, uint64_t)
{
  v29 = sub_1000A1630();
  v26 = *(v29 - 1);
  __chkstk_darwin(v29);
  v27 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100017A54(&qword_1000E50D0, &qword_1000AA5E0);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1000A1700();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v28 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  sub_100018688(a1, a1[3]);
  v15 = sub_1000A3630();
  sub_10001A0F8(v15, v8);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001AAE0(v8);
    sub_10001B294();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v15 = sub_100018688(a1, a1[3]);
    sub_10001B2E8();
    v17 = v34;
    sub_1000A3640();
    if (v17)
    {
      (*(v10 + 8))(v14, v9);
    }

    else
    {
      v25 = sub_1000A3480();
      v32 = v25;
      v33 = v19;
      v34 = v19;
      v20 = v26;
      (*(v26 + 104))(v27, enum case for URL.DirectoryHint.notDirectory(_:), v29);
      sub_10001B33C();
      sub_1000A16F0();
      (*(v20 + 8))(v27, v29);
      sub_1000A16D0();
      v29 = objc_allocWithZone(UIImage);
      v21 = sub_1000A2D10();

      v15 = [v29 initWithContentsOfFile:v21];

      if (v15)
      {
        v22 = *(v10 + 8);
        v22(v28, v9);
        (*(v30 + 8))(v5, v31);
        v22(v14, v9);
        sub_100018720(a1);
        return v15;
      }

      sub_10001B294();
      swift_allocError();
      *v23 = 1;
      swift_willThrow();
      v15 = *(v10 + 8);
      v15(v28, v9);
      (*(v30 + 8))(v5, v31);
      v15(v14, v9);
    }
  }

  sub_100018720(a1);
  return v15;
}

unint64_t sub_10001B294()
{
  result = qword_1000E50D8;
  if (!qword_1000E50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E50D8);
  }

  return result;
}

unint64_t sub_10001B2E8()
{
  result = qword_1000E50E0;
  if (!qword_1000E50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E50E0);
  }

  return result;
}

unint64_t sub_10001B33C()
{
  result = qword_1000E85E0;
  if (!qword_1000E85E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E85E0);
  }

  return result;
}

uint64_t sub_10001B390(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for EntryStoreImage.Errors(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntryStoreImage.Errors(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntryStoreImage.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for EntryStoreImage.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10001B630()
{
  result = qword_1000E50F0;
  if (!qword_1000E50F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E50F0);
  }

  return result;
}

unint64_t sub_10001B688()
{
  result = qword_1000E50F8;
  if (!qword_1000E50F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E50F8);
  }

  return result;
}

unint64_t sub_10001B6E0()
{
  result = qword_1000E5100;
  if (!qword_1000E5100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5100);
  }

  return result;
}

unint64_t sub_10001B738()
{
  result = qword_1000E5108;
  if (!qword_1000E5108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5108);
  }

  return result;
}

id sub_10001B7AC()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle.newsToday2 = result;
  return result;
}

uint64_t *NSBundle.newsToday2.unsafeMutableAddressor()
{
  if (qword_1000E46C0 != -1)
  {
    swift_once();
  }

  return &static NSBundle.newsToday2;
}

id static NSBundle.newsToday2.getter()
{
  if (qword_1000E46C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSBundle.newsToday2;

  return v0;
}

void static NSBundle.newsToday2.setter(uint64_t a1)
{
  if (qword_1000E46C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSBundle.newsToday2;
  static NSBundle.newsToday2 = a1;
}

uint64_t (*static NSBundle.newsToday2.modify(uint64_t a1))()
{
  if (qword_1000E46C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_10001BA08()
{
  v1 = OBJC_IVAR____TtC7NewsTag16WidgetAssetStore____lazy_storage___pruneThrottler;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsTag16WidgetAssetStore____lazy_storage___pruneThrottler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsTag16WidgetAssetStore____lazy_storage___pruneThrottler);
  }

  else
  {
    v4 = [objc_allocWithZone(FCOperationThrottler) initWithDelegate:v0];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void *sub_10001BA80()
{
  v0 = sub_1000A1700();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v39 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_opt_self() defaultManager];
  sub_1000A1670(v4);
  v6 = v5;
  v41 = 0;
  v7 = [v3 contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:0 options:4 error:&v41];

  v8 = v41;
  if (!v7)
  {
    v26 = v41;
    v27 = sub_1000A1600();

    v28 = swift_willThrow();
    v29 = PrefetchLog(v28);
    v30 = sub_1000A3070();
    sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1000AA7C0;
    v41 = 0;
    v42 = 0xE000000000000000;
    v40 = v27;
    sub_100017A54(&unk_1000E52C0, &qword_1000AA8A0);
    sub_1000A3370();
    v32 = v41;
    v33 = v42;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 64) = sub_10001A97C();
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    sub_1000A1DB0("failed to scan for files with %{public}@", 40, 2, &_mh_execute_header, v29, v30, v31);

    return _swiftEmptyArrayStorage;
  }

  v9 = sub_1000A2F10();
  v10 = v8;

  v11 = *(v9 + 16);
  if (!v11)
  {

    return _swiftEmptyArrayStorage;
  }

  v41 = _swiftEmptyArrayStorage;
  sub_10001EC74(0, v11, 0);
  v12 = v41;
  v14 = *(v1 + 16);
  v13 = v1 + 16;
  v15 = *(v13 + 64);
  v35 = v9;
  v16 = v9 + ((v15 + 32) & ~v15);
  v36 = *(v13 + 56);
  v37 = v14;
  v38 = v13;
  v17 = (v13 - 8);
  do
  {
    v18 = v39;
    v37(v39, v16, v0);
    v19 = sub_1000A1660();
    v21 = v20;
    v22 = v0;
    (*v17)(v18, v0);
    v41 = v12;
    v24 = v12[2];
    v23 = v12[3];
    if (v24 >= v23 >> 1)
    {
      sub_10001EC74((v23 > 1), v24 + 1, 1);
      v12 = v41;
    }

    v12[2] = v24 + 1;
    v25 = &v12[2 * v24];
    v25[4] = v19;
    v25[5] = v21;
    v16 += v36;
    --v11;
    v0 = v22;
  }

  while (v11);

  return v12;
}

uint64_t sub_10001BE0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v6 = sub_1000A1700();
  v32 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10001C598();
  v34 = v9;

  v35._countAndFlagsBits = 45;
  v35._object = 0xE100000000000000;
  sub_1000A2E10(v35);

  v36._countAndFlagsBits = a1;
  v36._object = a2;
  sub_1000A2E10(v36);

  v11 = v33;
  v10 = v34;
  v30 = v3;
  v12 = sub_1000A1690();
  v13 = PrefetchLog(v12);
  v14 = sub_1000A3060();
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000AA7C0;
  sub_10001FCC0(qword_1000E8840, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v16 = sub_1000A3550();
  v18 = v17;
  *(v15 + 56) = &type metadata for String;
  *(v15 + 64) = sub_10001A97C();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_1000A1DB0("creating directory at %@", 24, 2, &_mh_execute_header, v13, v14, v15);

  v19 = [objc_opt_self() defaultManager];
  sub_1000A1670(v20);
  v22 = v21;
  v33 = 0;
  LOBYTE(v14) = [v19 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:&v33];

  v24 = v33;
  if (v14)
  {
    v33 = *(v30 + OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_lock);
    __chkstk_darwin(v23);
    *(&v29 - 4) = v25;
    *(&v29 - 3) = v11;
    *(&v29 - 2) = v10;
    *(&v29 - 1) = v8;
    sub_1000A19A0();
    v26 = v24;

    sub_1000A1B40();
  }

  else
  {
    v28 = v33;

    sub_1000A1600();

    swift_willThrow();
  }

  return (*(v32 + 8))(v8, v6);
}

uint64_t sub_10001C1D4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();

  sub_10001D990(&v11, a2, a3);
  swift_endAccess();

  v9 = sub_1000A1700();
  return (*(*(v9 - 8) + 16))(a5, a4, v9);
}

uint64_t sub_10001C2A0@<X0>(uint64_t a2@<X8>)
{
  v15[5] = *&v2[OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_lock];
  sub_1000A19A0();

  sub_100017A54(&qword_1000E52A8, &qword_1000AA888);
  sub_1000A1B40();

  v4 = *(v15[0] + 2);
  if (v4)
  {
    v14 = a2;
    v5 = sub_1000851E4(v4, 0);
    v6 = sub_100086308(v15, v5 + 4, v4, v15[0]);
    v7 = v15[0];
    v8 = v2;

    sub_10001FBA0(v7);
    if (v6 != v4)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    a2 = v14;
  }

  else
  {
    v9 = v2;
    v5 = _swiftEmptyArrayStorage;
  }

  v15[0] = v5;
  v10 = v2;
  sub_100021B40(v15, v10);

  if (*(v15[0] + 2))
  {

    sub_1000A1690();

    v11 = 0;
  }

  else
  {

    v11 = 1;
  }

  v12 = sub_1000A1700();
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t sub_10001C4DC@<X0>(__int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  swift_beginAccess();
  v10 = *a2;
  v9 = *(a2 + 24);
  sub_10001FDA0(&v10, v8);
  sub_10001FE10(&v9, v8);

  v6 = sub_10002051C(v5, a2);
  sub_10001FE6C(&v10, &unk_1000E8A70, &qword_1000AA8B0);
  result = sub_10001FECC(&v9);
  *a3 = v6;
  return result;
}

uint64_t sub_10001C598()
{
  v1 = v0;
  sub_100017A54(&qword_1000E5290, &unk_1000ADE60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000AA7D0;
  v3 = v0[3];
  v4 = v0[4];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  if (*v1)
  {
    v5 = v1[1];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);

    v8 = v7(ObjectType, v5);
  }

  else
  {

    v9 = 0xE300000000000000;
    v8 = 7104878;
  }

  *(v2 + 48) = v8;
  *(v2 + 56) = v9;
  v10 = CHSWidgetFamilyDescription();
  v11 = sub_1000A2D40();
  v13 = v12;

  *(v2 + 64) = v11;
  *(v2 + 72) = v13;
  sub_100017A54(&qword_1000E5298, &qword_1000AA880);
  sub_10001E9B4();
  v14 = sub_1000A2CA0();

  return v14;
}

uint64_t sub_10001C6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_100017A54(&qword_1000E52B0, &qword_1000AA890);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_1000A15D0();
  v26 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000A1700();
  v11 = *(v27 - 8);
  __chkstk_darwin(v27);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1690();
  sub_100017A54(&qword_1000E52B8, &qword_1000AA898);
  inited = swift_initStackObject();
  v25 = xmmword_1000AA7C0;
  *(inited + 16) = xmmword_1000AA7C0;
  *(inited + 32) = NSURLCreationDateKey;
  v15 = NSURLCreationDateKey;
  sub_10001FBA8(inited);
  swift_setDeallocating();
  sub_10001FC64(inited + 32);
  sub_1000A1650();
  v24 = a1;

  sub_1000A15C0();
  (*(v26 + 8))(v10, v8);
  v16 = sub_1000A1810();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v7, 1, v16) == 1)
  {
    v18 = sub_10001FE6C(v7, &qword_1000E52B0, &qword_1000AA890);
    v19 = PrefetchLog(v18);
    v20 = sub_1000A3070();
    sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_10001A97C();
    *(v21 + 32) = v24;
    *(v21 + 40) = a2;

    sub_1000A1DB0("unable to find creation date of file for key %@", 47, 2, &_mh_execute_header, v19, v20, v21);

    _s7NewsTag16TelemetryManagerC13lastFlushDate33_4E4017AC2BCC1D1AC48C0D84A0E547E910Foundation0G0Vvpfi_0();
    return (*(v11 + 8))(v13, v27);
  }

  else
  {
    (*(v11 + 8))(v13, v27);
    return (*(v17 + 32))(v28, v7, v16);
  }
}

id WidgetPersonalizationConfigurationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WidgetAssetStore(uint64_t a1)
{
  result = qword_1000E5200;
  if (!qword_1000E5200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001CD1C(uint64_t a1)
{
  result = sub_1000A1700();
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

uint64_t sub_10001CDDC(uint64_t *a1, uint64_t a2)
{
  v2 = PrefetchLog(a1);
  v3 = sub_1000A3070();
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000AA7C0;
  v5 = sub_1000A2F20();
  v7 = v6;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_10001A97C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  sub_1000A1DB0("identified active infos as %@", 29, 2, &_mh_execute_header, v2, v3, v4);

  sub_1000A19A0();

  sub_1000A1B40();
}

uint64_t sub_10001CF3C(uint64_t a1, char *a2)
{
  v4 = 0;
  v82 = sub_1000A1700();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &_swiftEmptySetSingleton;
  v92 = &_swiftEmptySetSingleton;
  v7 = *(a1 + 16);
  v84 = OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_keysOfInterest;
  v8 = swift_beginAccess();
  v83 = a2;
  if (!v7)
  {
LABEL_24:
    v30 = PrefetchLog(v8);
    v31 = sub_1000A3070();
    v78 = sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
    v32 = swift_allocObject();
    v87 = xmmword_1000AA7C0;
    *(v32 + 16) = xmmword_1000AA7C0;
    v33 = sub_1000A3020();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    v77 = sub_10001A97C();
    *(v32 + 64) = v77;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    sub_1000A1DB0("identified new keys of interest as %@", 37, 2, &_mh_execute_header, v30, v31, v32);

    v36 = v84;
    swift_beginAccess();
    v37 = *&a2[v36];
    v38 = v6[2];
    v39 = v37[2];
    v75 = v6;
    if (v38 > v39 >> 3)
    {

      v40 = sub_10001F0F8(v6, v37);
      v41 = v40;
    }

    else
    {
      v90 = v37;

      v40 = sub_10001EFCC(v6);
      v41 = v90;
    }

    v42 = PrefetchLog(v40);
    v43 = sub_1000A3070();
    v44 = swift_allocObject();
    *(v44 + 16) = v87;
    v45 = sub_1000A3020();
    v46 = v77;
    *(v44 + 56) = &type metadata for String;
    *(v44 + 64) = v46;
    *(v44 + 32) = v45;
    *(v44 + 40) = v47;
    sub_1000A1DB0("identified keys to remove as %@", 31, 2, &_mh_execute_header, v42, v43, v44);

    v48 = 0;
    v49 = v41 + 56;
    v50 = 1 << v41[32];
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v41 + 7);
    *&v87 = OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_directoryUrl;
    v53 = (v50 + 63) >> 6;
    v86 = (v80 + 8);
    v76 = xmmword_1000AA450;
    v88 = v41;
    while (v52)
    {
      v56 = v48;
LABEL_37:
      v52 &= v52 - 1;

      v57 = v81;
      sub_1000A1690();

      v58 = [objc_opt_self() defaultManager];
      sub_1000A1670(v59);
      v61 = v60;
      v90 = 0;
      v62 = [v58 removeItemAtURL:v60 error:&v90];

      if (v62)
      {
        v54 = *v86;
        v55 = v90;
        v54(v57, v82);
      }

      else
      {
        v63 = v90;
        v79 = sub_1000A1600();

        v64 = swift_willThrow();
        v85 = PrefetchLog(v64);
        LODWORD(v80) = sub_1000A3070();
        v65 = swift_allocObject();
        *(v65 + 16) = v76;
        sub_10001FCC0(qword_1000E8840, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v66 = v82;
        v67 = sub_1000A3550();
        v68 = v77;
        *(v65 + 56) = &type metadata for String;
        *(v65 + 64) = v68;
        *(v65 + 32) = v67;
        *(v65 + 40) = v69;
        v90 = 0;
        v91 = 0xE000000000000000;
        v89 = v79;
        sub_100017A54(&unk_1000E52C0, &qword_1000AA8A0);
        sub_1000A3370();
        v70 = v90;
        v71 = v91;
        *(v65 + 96) = &type metadata for String;
        *(v65 + 104) = v68;
        *(v65 + 72) = v70;
        *(v65 + 80) = v71;
        v72 = v85;
        a2 = v83;
        sub_1000A1DB0("unable to remove %@ with %{public}@", 35, 2, &_mh_execute_header, v85, v80, v65);

        (*v86)(v57, v66);
      }

      v48 = v56;
    }

    while (1)
    {
      v56 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v56 >= v53)
      {

        *&a2[v84] = v75;
      }

      v52 = *&v49[8 * v56];
      ++v48;
      if (v52)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  v9 = (a1 + 64);
  while (1)
  {
    v12 = *v9;
    v13 = *(v9 - 1);
    v94[0] = *(v9 - 2);
    v94[1] = v13;
    v95 = v12;
    v14 = *&v94[0];
    swift_bridgeObjectRetain_n();
    v15 = v14;

    v17 = sub_10002051C(v16, v94);
    v88 = v12;

    *&v87 = v15;

    v18 = *(v17 + 16);
    if (v18)
    {
      v85 = 0;
      sub_100017A54(&qword_1000E5290, &unk_1000ADE60);
      v19 = swift_allocObject();
      v20 = j__malloc_size(v19);
      v21 = v20 - 32;
      if (v20 < 32)
      {
        v21 = v20 - 17;
      }

      v19[2] = v18;
      v19[3] = 2 * (v21 >> 4);
      v86 = sub_100086308(&v93, v19 + 4, v18, v17);
      v22 = v93;
      v23 = a2;

      sub_10001FBA0(v22);
      if (v86 != v18)
      {
        goto LABEL_41;
      }

      a2 = v83;
      v4 = v85;
    }

    else
    {
      v24 = a2;
      v19 = _swiftEmptyArrayStorage;
    }

    v93 = v19;
    v25 = a2;
    sub_100021B40(&v93, v25);
    if (v4)
    {
      break;
    }

    v11 = v93;
    v26 = *(v93 + 2);
    if (v26 >= 2)
    {
      v27 = v26 - 2;
    }

    else
    {
      v27 = 0;
    }

    if (v26 >= 3)
    {
      v28 = v26 - v27;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v11;
      if (!isUniquelyReferenced_nonNull_native || v28 > *(v11 + 3) >> 1)
      {
        if (v26 <= v28)
        {
          v10 = v26 - v27;
        }

        else
        {
          v10 = v26;
        }

        v11 = sub_100084A64(isUniquelyReferenced_nonNull_native, v10, 1, v11);
        v93 = v11;
      }

      sub_100021C48(0, v27, 0);
    }

    sub_100021BD8(v11);

    v9 += 5;
    if (!--v7)
    {
      v6 = v92;
      goto LABEL_24;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10001D7D4(uint64_t a1)
{
  v1 = PrefetchLog(a1);
  v2 = sub_1000A3060();
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000AA7C0;
  sub_100017A54(&unk_1000E52C0, &qword_1000AA8A0);
  sub_1000A3370();
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_10001A97C();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_1000A1DB0("pruning failed with error %{public}@", 36, 2, &_mh_execute_header, v1, v2, v3);
}

uint64_t sub_10001D990(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1000A35F0();
  sub_1000A2DD0();
  v8 = sub_1000A3620();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000A3560() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10001E168(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_10001DAE0(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1000A2D40();
  sub_1000A35F0();
  sub_1000A2DD0();
  v7 = sub_1000A3620();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_1000A2D40();
      v13 = v12;
      if (v11 == sub_1000A2D40() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_1000A3560();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_10001E2E8(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_10001DC8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100017A54(&qword_1000E5288, &unk_1000AA870);
  result = sub_1000A3280();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1000A35F0();
      sub_1000A2DD0();
      result = sub_1000A3620();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10001DEEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100017A54(&unk_1000E52D0, &qword_1000AA8A8);
  result = sub_1000A3280();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000A2D40();
      sub_1000A35F0();
      sub_1000A2DD0();
      v18 = sub_1000A3620();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_10001E168(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10001DC8C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10001E4D0();
      goto LABEL_16;
    }

    sub_10001E77C(v8 + 1);
  }

  v10 = *v4;
  sub_1000A35F0();
  sub_1000A2DD0();
  result = sub_1000A3620();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000A3560();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000A3580();
  __break(1u);
  return result;
}

uint64_t sub_10001E2E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10001DEEC(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10001E62C();
      goto LABEL_16;
    }

    sub_10001EA20(v7 + 1);
  }

  v9 = *v3;
  sub_1000A2D40();
  sub_1000A35F0();
  sub_1000A2DD0();
  v10 = sub_1000A3620();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for URLResourceKey(0);
    do
    {
      v13 = sub_1000A2D40();
      v15 = v14;
      if (v13 == sub_1000A2D40() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_1000A3560();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_1000A3580();
  __break(1u);
  return result;
}

void *sub_10001E4D0()
{
  v1 = v0;
  sub_100017A54(&qword_1000E5288, &unk_1000AA870);
  v2 = *v0;
  v3 = sub_1000A3270();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

id sub_10001E62C()
{
  v1 = v0;
  sub_100017A54(&unk_1000E52D0, &qword_1000AA8A8);
  v2 = *v0;
  v3 = sub_1000A3270();
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

uint64_t sub_10001E77C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100017A54(&qword_1000E5288, &unk_1000AA870);
  result = sub_1000A3280();
  v5 = result;
  if (*(v3 + 16))
  {
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
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1000A35F0();

      sub_1000A2DD0();
      result = sub_1000A3620();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_10001E9B4()
{
  result = qword_1000E52A0;
  if (!qword_1000E52A0)
  {
    sub_100017A9C(&qword_1000E5298, &qword_1000AA880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E52A0);
  }

  return result;
}

uint64_t sub_10001EA20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100017A54(&unk_1000E52D0, &qword_1000AA8A8);
  result = sub_1000A3280();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1000A2D40();
      sub_1000A35F0();
      v18 = v17;
      sub_1000A2DD0();
      v19 = sub_1000A3620();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

char *sub_10001EC74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006E2B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10001EC94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10006E6E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t *sub_10001ECB4(unint64_t *result, uint64_t a2, uint64_t a3, __int128 *a4)
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

    v8 = *a4;
    v11 = *(a4 + 24);
    v12 = v8;
    sub_10001FDA0(&v12, v10);
    sub_10001FE10(&v11, v10);
    v9 = sub_100020254(v7, a2, a3, a4);

    sub_10001FE6C(&v12, &unk_1000E8A70, &qword_1000AA8B0);
    sub_10001FECC(&v11);
    sub_10001FE6C(&v12, &unk_1000E8A70, &qword_1000AA8B0);
    sub_10001FECC(&v11);
    return v9;
  }

  return result;
}

uint64_t sub_10001EDA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100017A54(&qword_1000E5288, &unk_1000AA870);
  result = sub_1000A3290();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1000A35F0();

    sub_1000A2DD0();
    result = sub_1000A3620();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10001EFCC(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10001F668(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_10001F0F8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1000A35F0();

    sub_1000A2DD0();
    v23 = sub_1000A3620();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1000A3560() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_10001EDA8(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_1000A35F0();

            sub_1000A2DD0();
            v41 = sub_1000A3620();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_1000A3560() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_10001F7A4(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_10001FBA0(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001F668(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1000A35F0();
  sub_1000A2DD0();
  v6 = sub_1000A3620();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1000A3560() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10001E4D0();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_10001F9DC(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_10001F7A4(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_10001EDA8(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1000A35F0();

        sub_1000A2DD0();
        v19 = sub_1000A3620();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1000A3560() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

unint64_t sub_10001F9DC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1000A3240();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1000A35F0();

        sub_1000A2DD0();
        v10 = sub_1000A3620();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10001FBA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_10001FCC0(&qword_1000E4D78, type metadata accessor for URLResourceKey, &unk_1000AA3C0);
  result = sub_1000A3030();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10001DAE0(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10001FC64(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001FCC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001FD08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000A3030();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10001D990(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10001FDA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&unk_1000E8A70, &qword_1000AA8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001FE6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100017A54(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10001FF20()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10001FF60(uint64_t a1, uint64_t a2)
{
  v5 = PrefetchLog(a1);
  v6 = sub_1000A3060();
  sub_1000A1DB0("pruning asset store", 19, 2, &_mh_execute_header, v5, v6, _swiftEmptyArrayStorage);

  sub_100017A54(&unk_1000E52E0, qword_1000AA8B8);
  sub_1000A1BF0();
  *(swift_allocObject() + 16) = v2;
  v7 = v2;
  v8 = sub_1000A1B60();
  sub_1000A1B80();

  v9 = sub_1000A1B60();
  sub_1000A1B90();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_1000A1B60();
  sub_1000A1BB0();
}

uint64_t sub_100020120()
{
  sub_100018688((*(v0 + 16) + OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_infoService), *(*(v0 + 16) + OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_infoService + 24));
  sub_1000A2B00();
  return sub_100073154();
}

uint64_t sub_100020198()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000201EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t *sub_100020254(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v35 = result;
  v36 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v37 = a3 + 56;
  while (v10)
  {
    v19 = __clz(__rbit64(v10));
    v40 = (v10 - 1) & v10;
LABEL_13:
    v39 = v19 | (v6 << 6);
    v43 = *(*(v5 + 48) + 16 * v39 + 8);
    sub_100017A54(&qword_1000E5290, &unk_1000ADE60);
    v22 = swift_allocObject();
    v23 = v22;
    v42 = *(a4 + 24);
    v24 = v42;
    *(v22 + 16) = xmmword_1000AA7D0;
    *(v22 + 32) = v24;
    if (*a4)
    {
      v25 = *(a4 + 8);
      ObjectType = swift_getObjectType();
      v27 = v11;
      v28 = a4;
      v29 = *(v25 + 16);

      sub_10001FE10(&v42, v41);
      v30 = v25;
      v5 = a3;
      v31 = v29(ObjectType, v30);
      a4 = v28;
      v11 = v27;
      v7 = v37;
      v23[6] = v31;
      v23[7] = v32;
    }

    else
    {
      *(v22 + 48) = 7104878;
      *(v22 + 56) = 0xE300000000000000;

      sub_10001FE10(&v42, v41);
    }

    v12 = CHSWidgetFamilyDescription();
    v13 = sub_1000A2D40();
    v15 = v14;

    v23[8] = v13;
    v23[9] = v15;
    v41[0] = v23;
    sub_100017A54(&qword_1000E5298, &qword_1000AA880);
    sub_10001E9B4();
    v16 = sub_1000A2CA0();
    v18 = v17;

    v44._countAndFlagsBits = v16;
    v44._object = v18;
    LOBYTE(v16) = sub_1000A2E70(v44);

    v10 = v40;
    if (v16)
    {
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_18:

        return sub_10001EDA8(v35, a2, v36, v5);
      }
    }
  }

  v20 = v6;
  while (1)
  {
    v6 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_18;
    }

    v21 = *(v7 + 8 * v6);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002051C(uint64_t a1, __int128 *a2)
{
  v2 = a1;
  v54 = *a2;
  v48 = a2;
  v52 = *(a2 + 24);
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = 8 * v4;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_23;
  }

  sub_10001FDA0(&v54, v53);
  for (i = sub_10001FE10(&v52, v53); ; i = )
  {
    v42[1] = v42;
    __chkstk_darwin(i);
    v43 = v42 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v5);
    v44 = 0;
    v4 = 0;
    v7 = v2 + 56;
    v8 = 1 << *(v2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v2 + 56);
    v11 = (v8 + 63) >> 6;
    v47 = xmmword_1000AA7D0;
    v45 = v2 + 56;
    while (v10)
    {
      v19 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v22 = v19 | (v4 << 6);
      v23 = *(v2 + 48);
      v46 = v22;
      v24 = (v23 + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v50 = v26;
      v51 = v25;
      sub_100017A54(&qword_1000E5290, &unk_1000ADE60);
      v27 = swift_allocObject();
      v28 = v27;
      v29 = v52;
      *(v27 + 16) = v47;
      *(v27 + 32) = v29;
      if (v54)
      {
        v49 = v10;
        v30 = *(&v54 + 1);
        ObjectType = swift_getObjectType();
        v32 = v11;
        v33 = v2;
        v34 = *(v30 + 16);
        sub_10001FE10(&v52, v53);

        v35 = v30;
        v10 = v49;
        v36 = v34(ObjectType, v35);
        v2 = v33;
        v11 = v32;
        v7 = v45;
        v28[6] = v36;
        v28[7] = v37;
      }

      else
      {
        *(v27 + 48) = 7104878;
        *(v27 + 56) = 0xE300000000000000;
        sub_10001FE10(&v52, v53);
      }

      v12 = CHSWidgetFamilyDescription();
      v13 = sub_1000A2D40();
      v15 = v14;

      v28[8] = v13;
      v28[9] = v15;
      v53[0] = v28;
      sub_100017A54(&qword_1000E5298, &qword_1000AA880);
      sub_10001E9B4();
      v16 = sub_1000A2CA0();
      v18 = v17;

      v55._countAndFlagsBits = v16;
      v55._object = v18;
      v5 = sub_1000A2E70(v55);

      if (v5)
      {
        *&v43[(v46 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v46;
        if (__OFADD__(v44++, 1))
        {
          __break(1u);
LABEL_20:
          v39 = sub_10001EDA8(v43, v42[2], v44, v2);
          goto LABEL_21;
        }
      }
    }

    v20 = v4;
    while (1)
    {
      v4 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        goto LABEL_20;
      }

      v21 = *(v7 + 8 * v4);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v10 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_23:
    sub_10001FDA0(&v54, v53);
    sub_10001FE10(&v52, v53);

    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
      break;
    }
  }

  v41 = swift_slowAlloc();
  sub_10001FDA0(&v54, v53);
  sub_10001FE10(&v52, v53);
  v39 = sub_10001ECB4(v41, v4, v2, v48);

LABEL_21:
  sub_10001FE6C(&v54, &unk_1000E8A70, &qword_1000AA8B0);
  sub_10001FECC(&v52);
  return v39;
}

uint64_t sub_10002097C(uint64_t *a1, uint64_t *a2, char *a3, uint64_t *a4, uint64_t a5)
{
  v55 = a5;
  v58 = sub_1000A1810();
  v9 = *(v58 - 8);
  v10 = __chkstk_darwin(v58);
  v57 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v56 = &v48 - v12;
  v13 = a2 - a1 + 15;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 4;
  v15 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 4;
  v52 = a4;
  if (v14 >= v15 >> 4)
  {
    v17 = a4;
    v32 = a2;
    if (a4 != a2 || &a2[2 * v16] <= a4)
    {
      memmove(a4, a2, 16 * v16);
      v17 = v52;
    }

    v59 = &v17[2 * v16];
    if (a3 - a2 >= 16 && a2 > a1)
    {
      v50 = (v9 + 8);
      v54 = a1;
LABEL_27:
      v49 = v32 - 2;
      v33 = a3 - 16;
      v34 = v59;
      v51 = v32;
      do
      {
        v35 = v33;
        v36 = v33 + 16;
        v38 = *(v34 - 2);
        v37 = *(v34 - 1);
        v34 -= 2;
        v40 = *(v32 - 2);
        v39 = *(v32 - 1);

        v41 = v56;
        sub_10001C6E4(v38, v37, v56);
        v42 = v57;
        sub_10001C6E4(v40, v39, v57);
        LODWORD(v53) = sub_1000A1790();
        v43 = *v50;
        v44 = v42;
        v45 = v58;
        (*v50)(v44, v58);
        v43(v41, v45);

        if (v53)
        {
          v17 = v52;
          a3 = v35;
          v46 = v49;
          if (v36 != v51)
          {
            *v35 = *v49;
          }

          if (v59 <= v17 || (v32 = v46, v46 <= v54))
          {
            v32 = v46;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        v17 = v52;
        if (v36 != v59)
        {
          *v35 = *v34;
        }

        v33 = v35 - 16;
        v59 = v34;
        v32 = v51;
      }

      while (v34 > v17);
      v59 = v34;
    }
  }

  else
  {
    v17 = a4;
    if (a4 != a1 || &a1[2 * v14] <= a4)
    {
      memmove(a4, a1, 16 * v14);
      v17 = v52;
    }

    v59 = &v17[2 * v14];
    if (a2 - a1 >= 16 && a2 < a3)
    {
      v18 = a2;
      v52 = (v9 + 8);
      v53 = a3;
      while (1)
      {
        v54 = a1;
        v20 = *v18;
        v19 = v18[1];
        v22 = *v17;
        v21 = v17[1];
        v23 = v17;

        v24 = v56;
        sub_10001C6E4(v20, v19, v56);
        v25 = v57;
        sub_10001C6E4(v22, v21, v57);
        LOBYTE(v22) = sub_1000A1790();
        v26 = *v52;
        v27 = v25;
        v28 = v58;
        (*v52)(v27, v58);
        v26(v24, v28);

        if ((v22 & 1) == 0)
        {
          break;
        }

        v29 = v18;
        v30 = v54;
        v31 = v54 == v18;
        v18 += 2;
        v17 = v23;
        if (!v31)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v30 + 2;
        if (v17 >= v59 || v18 >= v53)
        {
          goto LABEL_20;
        }
      }

      v29 = v23;
      v17 = v23 + 2;
      v30 = v54;
      if (v54 == v23)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v30 = *v29;
      goto LABEL_18;
    }

LABEL_20:
    v32 = a1;
  }

LABEL_38:
  if (v32 != v17 || v32 >= (v17 + ((v59 - v17 + (v59 - v17 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v32, v17, 16 * ((v59 - v17) / 16));
  }

  return 1;
}

void sub_100020DD4(char **a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_1000701E8(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 16 * *v10);
      v23 = (v9 + 16 * *v13);
      v14 = (v9 + 16 * v5);
      v15 = v21;
      sub_10002097C(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_100020F74(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v129 = a4;
  v130 = a1;
  v142 = sub_1000A1810();
  v8 = __chkstk_darwin(v142);
  v141 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v140 = &v127 - v11;
  v145 = _swiftEmptyArrayStorage;
  v134 = a3;
  v12 = a3[1];
  if (v12 >= 1)
  {
    v139 = (v10 + 8);
    v127 = a5;
    v143 = a5;
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    while (1)
    {
      v135 = v14;
      v15 = v13;
      v16 = v13 + 1;
      if (v16 >= v12)
      {
        v29 = v16;
        v37 = v129;
      }

      else
      {
        v137 = v12;
        v17 = *v134;
        v18 = (*v134 + 16 * v16);
        v19 = *v18;
        v5 = v18[1];
        v132 = 16 * v15;
        v20 = (v17 + 16 * v15);
        v21 = *v20;
        v23 = v20[1];
        v22 = (v20 + 5);

        v24 = v140;
        sub_10001C6E4(v19, v5, v140);
        v25 = v141;
        sub_10001C6E4(v21, v23, v141);
        LODWORD(v138) = sub_1000A1790();
        v26 = *v139;
        v27 = v142;
        (*v139)(v25, v142);
        v133 = v26;
        (v26)(v24, v27);

        v128 = v15;
        v28 = v15 + 2;
        while (1)
        {
          v29 = v137;
          if (v137 == v28)
          {
            break;
          }

          v30 = *(v22 - 1);
          v5 = *v22;
          v32 = *(v22 - 3);
          v31 = *(v22 - 2);

          v33 = v140;
          sub_10001C6E4(v30, v5, v140);
          v34 = v141;
          sub_10001C6E4(v32, v31, v141);
          LOBYTE(v144) = sub_1000A1790() & 1;
          LODWORD(v144) = v144;
          v35 = v142;
          v36 = v133;
          (v133)(v34, v142);
          (v36)(v33, v35);

          ++v28;
          v22 += 2;
          if ((v138 & 1) != v144)
          {
            v29 = v28 - 1;
            break;
          }
        }

        v15 = v128;
        v37 = v129;
        v38 = v132;
        if (v138)
        {
          if (v29 < v128)
          {
            goto LABEL_117;
          }

          if (v128 < v29)
          {
            v39 = 0;
            v40 = 16 * v29;
            v41 = v128;
            do
            {
              if (v41 != v29 + v39 - 1)
              {
                v46 = *v134;
                if (!*v134)
                {
                  goto LABEL_122;
                }

                v42 = (v46 + v38);
                v43 = v46 + v40;
                v44 = *v42;
                v45 = v42[1];
                *v42 = *(v43 - 16);
                *(v43 - 16) = v44;
                *(v43 - 8) = v45;
              }

              ++v41;
              --v39;
              v40 -= 16;
              v38 += 16;
            }

            while (v41 < v29 + v39);
          }
        }
      }

      v47 = v134[1];
      if (v29 >= v47)
      {
        goto LABEL_29;
      }

      if (__OFSUB__(v29, v15))
      {
        goto LABEL_116;
      }

      if (v29 - v15 >= v37)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v15, v37))
      {
        goto LABEL_118;
      }

      if (v15 + v37 >= v47)
      {
        v48 = v134[1];
      }

      else
      {
        v48 = v15 + v37;
      }

      if (v48 < v15)
      {
LABEL_119:
        __break(1u);
LABEL_120:
        v123 = v143;

        __break(1u);
LABEL_121:
        v124 = v143;

        __break(1u);
LABEL_122:
        v125 = v143;

        __break(1u);
LABEL_123:
        v126 = v143;

        __break(1u);
        goto LABEL_124;
      }

      if (v29 == v48)
      {
LABEL_29:
        v49 = v29;
        if (v29 < v15)
        {
          goto LABEL_115;
        }
      }

      else
      {
        v138 = *v134;
        v107 = (v138 + 16 * v29);
        v128 = v15;
        v108 = v15 - v29;
        v131 = v48;
        do
        {
          v137 = v29;
          v109 = (v138 + 16 * v29);
          v110 = *v109;
          v111 = v109[1];
          v132 = v108;
          v133 = v107;
          do
          {
            v112 = *(v107 - 2);
            v5 = *(v107 - 1);

            v113 = v140;
            sub_10001C6E4(v110, v111, v140);
            v114 = v141;
            sub_10001C6E4(v112, v5, v141);
            LODWORD(v144) = sub_1000A1790();
            v115 = *v139;
            v116 = v114;
            v117 = v142;
            (*v139)(v116, v142);
            v115(v113, v117);

            if ((v144 & 1) == 0)
            {
              break;
            }

            if (!v138)
            {
              goto LABEL_120;
            }

            v110 = *v107;
            v111 = v107[1];
            *v107 = *(v107 - 1);
            *(v107 - 1) = v111;
            *(v107 - 2) = v110;
            v107 -= 2;
          }

          while (!__CFADD__(v108++, 1));
          v29 = v137 + 1;
          v107 = v133 + 2;
          v108 = v132 - 1;
          v49 = v131;
        }

        while (v137 + 1 != v131);
        v15 = v128;
        if (v131 < v128)
        {
          goto LABEL_115;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v131 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v135 = sub_1000702FC(0, *(v135 + 2) + 1, 1, v135);
      }

      v52 = *(v135 + 2);
      v51 = *(v135 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v135 = sub_1000702FC((v51 > 1), v52 + 1, 1, v135);
      }

      v54 = v135;
      *(v135 + 2) = v53;
      v55 = v54 + 32;
      v56 = &v54[16 * v52 + 32];
      v57 = v131;
      *v56 = v15;
      *(v56 + 1) = v57;
      v144 = *v130;
      if (!v144)
      {
        goto LABEL_123;
      }

      if (v52)
      {
        v14 = v135;
        v138 = v55;
        while (1)
        {
          v58 = v53 - 1;
          if (v53 >= 4)
          {
            break;
          }

          if (v53 == 3)
          {
            v59 = *(v14 + 4);
            v60 = *(v14 + 5);
            v69 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            v62 = v69;
LABEL_50:
            if (v62)
            {
              goto LABEL_105;
            }

            v75 = &v14[16 * v53];
            v77 = *v75;
            v76 = *(v75 + 1);
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_107;
            }

            v81 = &v55[16 * v58];
            v83 = *v81;
            v82 = *(v81 + 1);
            v69 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v69)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v79, v84))
            {
              goto LABEL_112;
            }

            if (v79 + v84 >= v61)
            {
              if (v61 < v84)
              {
                v58 = v53 - 2;
              }

              goto LABEL_72;
            }

            goto LABEL_65;
          }

          if (v53 < 2)
          {
            goto LABEL_113;
          }

          v85 = &v14[16 * v53];
          v87 = *v85;
          v86 = *(v85 + 1);
          v69 = __OFSUB__(v86, v87);
          v79 = v86 - v87;
          v80 = v69;
LABEL_65:
          if (v80)
          {
            goto LABEL_109;
          }

          v88 = &v55[16 * v58];
          v90 = *v88;
          v89 = *(v88 + 1);
          v69 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v69)
          {
            goto LABEL_111;
          }

          if (v91 < v79)
          {
            goto LABEL_4;
          }

LABEL_72:
          if (v58 - 1 >= v53)
          {
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
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
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          v96 = *v134;
          if (!*v134)
          {
            goto LABEL_121;
          }

          v97 = &v55[16 * v58 - 16];
          v98 = *v97;
          v99 = v58;
          v5 = &v55[16 * v58];
          v100 = *(v5 + 1);
          v101 = (v96 + 16 * *v97);
          v102 = (v96 + 16 * *v5);
          v103 = (v96 + 16 * v100);
          v104 = v143;
          v105 = v136;
          sub_10002097C(v101, v102, v103, v144, v104);
          v136 = v105;
          if (v105)
          {

            v145 = v135;
            v5 = v127;
            goto LABEL_95;
          }

          v14 = v135;
          if (v100 < v98)
          {
            goto LABEL_100;
          }

          v106 = *(v135 + 2);
          if (v99 > v106)
          {
            goto LABEL_101;
          }

          *v97 = v98;
          *(v97 + 1) = v100;
          if (v99 >= v106)
          {
            goto LABEL_102;
          }

          v53 = v106 - 1;
          memmove(v5, v5 + 16, 16 * (v106 - 1 - v99));
          *(v14 + 2) = v106 - 1;
          v55 = v138;
          if (v106 <= 2)
          {
            goto LABEL_4;
          }
        }

        v63 = &v55[16 * v53];
        v64 = *(v63 - 8);
        v65 = *(v63 - 7);
        v69 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        if (v69)
        {
          goto LABEL_103;
        }

        v68 = *(v63 - 6);
        v67 = *(v63 - 5);
        v69 = __OFSUB__(v67, v68);
        v61 = v67 - v68;
        v62 = v69;
        if (v69)
        {
          goto LABEL_104;
        }

        v70 = &v14[16 * v53];
        v72 = *v70;
        v71 = *(v70 + 1);
        v69 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v69)
        {
          goto LABEL_106;
        }

        v69 = __OFADD__(v61, v73);
        v74 = v61 + v73;
        if (v69)
        {
          goto LABEL_108;
        }

        if (v74 >= v66)
        {
          v92 = &v55[16 * v58];
          v94 = *v92;
          v93 = *(v92 + 1);
          v69 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v69)
          {
            goto LABEL_114;
          }

          if (v61 < v95)
          {
            v58 = v53 - 2;
          }

          goto LABEL_72;
        }

        goto LABEL_50;
      }

      v14 = v135;
LABEL_4:
      v12 = v134[1];
      v13 = v131;
      if (v131 >= v12)
      {
        v145 = v14;
        v5 = v127;
        goto LABEL_92;
      }
    }
  }

  v119 = a5;
  v5 = a5;
LABEL_92:
  v120 = *v130;
  v121 = v136;
  if (*v130)
  {
    v122 = v5;
    sub_100020DD4(&v145, v120, v134, v122);
    if (v121)
    {

LABEL_95:
    }

    else
    {
    }
  }

  else
  {
LABEL_124:

    __break(1u);
  }
}

uint64_t sub_1000217EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v34 = a5;
  v37 = sub_1000A1810();
  v9 = __chkstk_darwin(v37);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v35 = &v28 - v13;
  v29 = a2;
  if (a3 != a2)
  {
    v14 = *a4;
    v33 = (v12 + 8);
    v38 = v14;
    v15 = (v14 + 16 * a3);
    v16 = a1 - a3;
    v17 = v35;
LABEL_5:
    v31 = v15;
    v32 = a3;
    v18 = (v38 + 16 * a3);
    v19 = *v18;
    v20 = v18[1];
    v30 = v16;
    while (1)
    {
      v22 = *(v15 - 2);
      v21 = *(v15 - 1);

      sub_10001C6E4(v19, v20, v17);
      v23 = v36;
      sub_10001C6E4(v22, v21, v36);
      v39 = sub_1000A1790();
      v24 = *v33;
      v25 = v23;
      v26 = v37;
      (*v33)(v25, v37);
      v24(v17, v26);

      if ((v39 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v15 = v31 + 2;
        v16 = v30 - 1;
        if (v32 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v19 = *v15;
      v20 = v15[1];
      *v15 = *(v15 - 1);
      *(v15 - 1) = v20;
      *(v15 - 2) = v19;
      v15 -= 2;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_100021A10(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_1000A3540(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_1000A2F60();
        v8[2] = v7;
      }

      v10[0] = v8 + 4;
      v10[1] = v7;
      v9 = v4;
      sub_100020F74(v10, v11, a1, v6, v9);

      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1000217EC(0, v3, 1, a1, v4);
  }
}

void sub_100021B40(char **a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000704A8(v3);
  }

  v5 = *(v3 + 2);
  v7[0] = (v3 + 32);
  v7[1] = v5;
  v6 = v4;
  sub_100021A10(v7, v6);

  *a1 = v3;
}

uint64_t sub_100021BD8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_10001D990(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_100021C48(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100021D20(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Item(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[9];

  return v16(v17, a2, v15);
}

uint64_t sub_100021EEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Item(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_1000220C8(uint64_t a1)
{
  sub_1000221CC(319, &qword_1000E5360, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_1000221CC(319, &qword_1000E5368, &type metadata for EdgeInsets);
    if (v2 <= 0x3F)
    {
      sub_100022218(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Item(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for TodayContent(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for LayoutContext(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1000221CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1000A1E30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100022218(uint64_t a1)
{
  if (!qword_1000E5370)
  {
    sub_1000A2A50();
    v1 = sub_1000A1E30();
    if (!v2)
    {
      atomic_store(v1, &qword_1000E5370);
    }
  }
}

uint64_t sub_10002228C()
{
  v1 = sub_1000A2140();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1000A3080();
    v6 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();
    v7 = sub_100028064(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_1000223D4@<X0>(void *a1@<X8>)
{
  v3 = sub_1000A2140();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallContentView(0);
  sub_100028B94(v1 + *(v10 + 24), v9, &qword_1000E5408, &qword_1000AAA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A2A50();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_1000225DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_1000A2340();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000A1F40();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v38);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Item(0);
  __chkstk_darwin(v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v12 - 8);
  v14 = &v37 - v13;
  v39 = sub_100017A54(&qword_1000E53B0, &qword_1000AA980);
  __chkstk_darwin(v39);
  v16 = (&v37 - v15);
  v17 = sub_100017A54(&qword_1000E53B8, &qword_1000AA988);
  v40 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  v20 = sub_100017A54(&qword_1000E53C0, &qword_1000AA990);
  v41 = *(v20 - 8);
  v42 = v20;
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  *v16 = sub_1000A28C0();
  v16[1] = v23;
  sub_100017A54(&qword_1000E53C8, &qword_1000AA998);
  sub_100022D50(v2);
  v24 = type metadata accessor for SmallContentView(0);
  v25 = *(v24 + 28);
  v46 = v2;
  sub_100027EDC(v2 + v25, v11, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100024FE4(v11, type metadata accessor for Item);
    v26 = sub_1000A1700();
    (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  }

  else
  {
    sub_100028C0C(v11, v8, type metadata accessor for Item.Headline);
    sub_100028B94(&v8[*(v38 + 24)], v14, &unk_1000E5DD0, &unk_1000AB260);
    sub_100024FE4(v8, type metadata accessor for Item.Headline);
  }

  v27 = sub_100029050(&qword_1000E53D0, &qword_1000E53B0, &qword_1000AA980, &protocol conformance descriptor for ZStack<A>);
  v28 = v39;
  sub_1000A2570();
  sub_10001FE6C(v14, &unk_1000E5DD0, &unk_1000AB260);
  sub_10001FE6C(v16, &qword_1000E53B0, &qword_1000AA980);
  v29 = v46 + *(v24 + 36);
  if (*(v29 + *(type metadata accessor for LayoutContext(0) + 44)) == 1)
  {
    v30 = v43;
    sub_1000A1F30();
    v31 = v45;
  }

  else
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100025044(&qword_1000E53D8, &type metadata accessor for RedactionReasons, &protocol conformance descriptor for RedactionReasons);
    sub_100017A54(&qword_1000E53E0, &qword_1000AA9A0);
    sub_100029050(&qword_1000E53E8, &qword_1000E53E0, &qword_1000AA9A0, &protocol conformance descriptor for [A]);
    v31 = v45;
    v30 = v43;
    sub_1000A3230();
  }

  v51 = v28;
  v52 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000A2660();
  (*(v44 + 8))(v30, v31);
  (*(v40 + 8))(v19, v17);
  v33 = v47;
  v34 = sub_1000A2330();
  __chkstk_darwin(v34);
  sub_1000A28C0();
  v51 = v17;
  v52 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v42;
  sub_1000A2600();
  (*(v49 + 8))(v33, v50);
  return (*(v41 + 8))(v22, v35);
}

uint64_t sub_100022D50(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E5418, &qword_1000AAA50);
  __chkstk_darwin(v2);
  v4 = &v27[-v3];
  v5 = sub_100017A54(&qword_1000E5420, &qword_1000AAA58);
  v6 = __chkstk_darwin(v5 - 8);
  v29 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v27[-v8];
  v31 = sub_100017A54(&qword_1000E5428, &qword_1000AAA60);
  __chkstk_darwin(v31);
  v30 = &v27[-v10];
  v11 = sub_1000A2A50();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v17 = &v27[-v16];
  if (sub_10002228C() & 1) != 0 || (sub_1000223D4(v17), sub_1000A2A40(), v28 = sub_1000A2A30(), v18 = *(v12 + 8), v18(v15, v11), v18(v17, v11), (v28))
  {
    v19 = sub_1000A28C0();
    v20 = v30;
    *v30 = v19;
    *(v20 + 8) = v21;
    v22 = v20 + *(sub_100017A54(&qword_1000E5438, &qword_1000AAA68) + 44);
    *v9 = sub_1000A2180();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v23 = sub_100017A54(&qword_1000E5440, &qword_1000AAA70);
    sub_1000231C0(a1, &v9[*(v23 + 44)]);
    sub_100024108(&v32);
    v24 = v32;
    v25 = v29;
    sub_100028B94(v9, v29, &qword_1000E5420, &qword_1000AAA58);
    sub_100028B94(v25, v22, &qword_1000E5420, &qword_1000AAA58);
    *(v22 + *(sub_100017A54(&qword_1000E5448, &qword_1000AAA78) + 48)) = v24;

    sub_10001FE6C(v9, &qword_1000E5420, &qword_1000AAA58);

    sub_10001FE6C(v25, &qword_1000E5420, &qword_1000AAA58);
    sub_100028B94(v20, v4, &qword_1000E5428, &qword_1000AAA60);
    swift_storeEnumTagMultiPayload();
    sub_100029050(&qword_1000E5430, &qword_1000E5428, &qword_1000AAA60, &protocol conformance descriptor for ZStack<A>);
    sub_1000A22F0();
    return sub_10001FE6C(v20, &qword_1000E5428, &qword_1000AAA60);
  }

  else
  {
    sub_100024108(&v32);
    *v4 = v32;
    swift_storeEnumTagMultiPayload();
    sub_100029050(&qword_1000E5430, &qword_1000E5428, &qword_1000AAA60, &protocol conformance descriptor for ZStack<A>);
    return sub_1000A22F0();
  }
}

uint64_t sub_1000231C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_100017A54(&qword_1000E5450, &qword_1000AAA80);
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v35 = (&v35 - v4);
  v36 = type metadata accessor for Item(0);
  __chkstk_darwin(v36);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A2A50();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v35 - v12;
  v14 = sub_100017A54(&qword_1000E5458, &qword_1000AAA88);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  sub_1000223D4(v13);
  sub_1000A2A40();
  v20 = sub_1000A2A30();
  v21 = *(v8 + 8);
  v21(v11, v7);
  v21(v13, v7);
  v22 = 1;
  if (v20)
  {
    v23 = type metadata accessor for SmallContentView(0);
    sub_100027EDC(a1 + *(v23 + 28), v6, type metadata accessor for Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100024FE4(v6, type metadata accessor for Item);
    v22 = 1;
    if (EnumCaseMultiPayload != 1)
    {
      v25 = sub_1000A2270();
      v26 = v35;
      *v35 = v25;
      *(v26 + 8) = 0;
      *(v26 + 16) = 1;
      v27 = sub_100017A54(&qword_1000E5468, &qword_1000AAA98);
      sub_1000235CC(v26 + *(v27 + 44));
      sub_100027904(v26, v19, &qword_1000E5450, &qword_1000AAA80);
      v22 = 0;
    }
  }

  (*(v37 + 56))(v19, v22, 1, v38);
  v28 = sub_1000A2270();
  sub_100023BB0(&v40);
  v29 = v40;
  sub_100028B94(v19, v17, &qword_1000E5458, &qword_1000AAA88);
  v30 = v39;
  sub_100028B94(v17, v39, &qword_1000E5458, &qword_1000AAA88);
  v31 = sub_100017A54(&qword_1000E5460, &qword_1000AAA90);
  v32 = v30 + *(v31 + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = v30 + *(v31 + 64);
  *v33 = v28;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  *(v33 + 24) = v29;
  *(v33 + 32) = 0;
  *(v33 + 40) = 1;

  sub_10001FE6C(v19, &qword_1000E5458, &qword_1000AAA88);

  return sub_10001FE6C(v17, &qword_1000E5458, &qword_1000AAA88);
}

uint64_t sub_1000235CC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SmallBackgroundView(0);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100017A54(&qword_1000E5470, &qword_1000AAAA0);
  v6 = v5 - 8;
  v7 = __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = v21 - v11;
  __chkstk_darwin(v10);
  v14 = v21 - v13;
  sub_10002381C(v4);
  sub_1000A28C0();
  sub_1000A1F60();
  sub_100028C0C(v4, v12, type metadata accessor for SmallBackgroundView);
  v15 = &v12[*(v6 + 44)];
  v16 = v21[5];
  *(v15 + 4) = v21[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v21[6];
  v17 = v21[1];
  *v15 = v21[0];
  *(v15 + 1) = v17;
  v18 = v21[3];
  *(v15 + 2) = v21[2];
  *(v15 + 3) = v18;
  sub_100027904(v12, v14, &qword_1000E5470, &qword_1000AAAA0);
  sub_100028B94(v14, v9, &qword_1000E5470, &qword_1000AAAA0);
  sub_100028B94(v9, a1, &qword_1000E5470, &qword_1000AAAA0);
  v19 = a1 + *(sub_100017A54(&qword_1000E5478, &qword_1000AAAA8) + 48);
  *v19 = 0;
  *(v19 + 8) = 1;
  sub_10001FE6C(v14, &qword_1000E5470, &qword_1000AAAA0);
  return sub_10001FE6C(v9, &qword_1000E5470, &qword_1000AAAA0);
}

uint64_t sub_10002381C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Item.Headline(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = type metadata accessor for Item(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v35 - v14;
  v16 = *(type metadata accessor for SmallContentView(0) + 28);
  v37 = sub_1000901D4();
  v17 = sub_100090358();
  sub_100027EDC(v2 + v16, v15, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100024FE4(v15, type metadata accessor for Item);
  }

  else
  {
    sub_100028C0C(v15, v9, type metadata accessor for Item.Headline);
    v18 = &v9[*(v4 + 28)];
    v19 = *v18;
    v20 = *(v18 + 1);
    sub_1000278C4(*v18, v20);
    sub_100024FE4(v9, type metadata accessor for Item.Headline);
    if (v20)
    {

      goto LABEL_6;
    }
  }

  v19 = 0;
LABEL_6:
  sub_100027EDC(v2 + v16, v13, type metadata accessor for Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_100024FE4(v13, type metadata accessor for Item);
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    sub_100028C0C(v13, v7, type metadata accessor for Item.Headline);
    [*v7 thumbnailFocalFrame];
    v38 = v23;
    v39 = v22;
    v35 = v25;
    v36 = v24;
    sub_100024FE4(v7, type metadata accessor for Item.Headline);
    *&v26 = v38;
    *(&v26 + 1) = v35;
    v38 = v26;
    *&v26 = v39;
    *(&v26 + 1) = v36;
    v39 = v26;
  }

  v27 = EnumCaseMultiPayload == 1;
  KeyPath = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = type metadata accessor for SmallBackgroundView(0);
  *(a1 + v30[10]) = v29;
  sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  swift_storeEnumTagMultiPayload();
  *a1 = v37;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19;
  v31 = v39;
  *(a1 + 40) = v38;
  *(a1 + 24) = v31;
  *(a1 + 56) = v27;
  v32 = v30[8];
  *(a1 + v32) = swift_getKeyPath();
  sub_100017A54(&qword_1000E5410, &unk_1000AC8C0);
  result = swift_storeEnumTagMultiPayload();
  v34 = a1 + v30[9];
  *v34 = KeyPath;
  *(v34 + 8) = 0;
  return result;
}

uint64_t sub_100023BB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1000A2770();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E5480, &qword_1000AAAB0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = sub_100017A54(&qword_1000E5488, &qword_1000AAAB8);
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v28 = sub_100017A54(&qword_1000E5490, &qword_1000AAAC0);
  __chkstk_darwin(v28);
  v13 = v1 + *(type metadata accessor for SmallContentView(0) + 32);
  v14 = *(v13 + *(type metadata accessor for TodayContent(0) + 24));
  if (*(v14 + 16) && (v15 = *(type metadata accessor for Section(0) - 8), *(v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 24) == 1))
  {
    v27 = a1;
    if (qword_1000E46E0 != -1)
    {
      swift_once();
    }

    v16 = qword_1000F1BA8;
    sub_1000A2750();
    (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v17 = sub_1000A27D0();

    (*(v4 + 8))(v6, v3);
    sub_1000A28C0();
    sub_1000A1E90();
    LOBYTE(v35[0]) = 0;
    *&v34[6] = v37;
    *&v34[22] = v38;
    *&v34[38] = v39;
    v18 = sub_1000A26E0();
    KeyPath = swift_getKeyPath();
    *(v32 + 2) = *v34;
    *&v31 = v17;
    *(&v31 + 1) = 0x3FF0000000000000;
    LOWORD(v32[0]) = 0;
    *(&v32[1] + 2) = *&v34[16];
    *(&v32[2] + 2) = *&v34[32];
    *&v32[3] = *&v34[46];
    *(&v32[3] + 1) = KeyPath;
    v33 = v18;
    sub_100017A54(&qword_1000E5498, &qword_1000AAAF8);
    sub_100027A1C();
    sub_1000A2560();
    v35[2] = v32[1];
    v35[3] = v32[2];
    v35[4] = v32[3];
    v36 = v33;
    v35[0] = v31;
    v35[1] = v32[0];
    sub_10001FE6C(v35, &qword_1000E5498, &qword_1000AAAF8);
    sub_1000A26B0();
    v20 = sub_1000A2700();

    v21 = &v9[*(sub_100017A54(&qword_1000E54D8, &qword_1000AAB18) + 36)];
    *v21 = v20;
    *(v21 + 8) = xmmword_1000AA8D0;
    *(v21 + 3) = 0x3FF0000000000000;
    sub_1000A26B0();
    v22 = sub_1000A2700();

    v23 = &v9[*(v7 + 36)];
    *v23 = v22;
    *(v23 + 8) = xmmword_1000AA8E0;
    *(v23 + 3) = 0x4000000000000000;
    v24 = sub_100027BE4();
    sub_1000A25A0();
    sub_10001FE6C(v9, &qword_1000E5480, &qword_1000AAAB0);
    *&v31 = v7;
    *(&v31 + 1) = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v30;
    sub_1000A25F0();
    (*(v29 + 8))(v12, v25);
    sub_100027D38();
    result = sub_1000A2820();
    *v27 = result;
  }

  else
  {
    result = sub_1000A2820();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100024108@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v54 = sub_1000A2320();
  v3 = *(v54 - 8);
  __chkstk_darwin(v54);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallHeadlineContentView(0);
  __chkstk_darwin(v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100017A54(&qword_1000E5500, &qword_1000AAB20);
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v11 = &v53 - v10;
  v56 = sub_100017A54(&qword_1000E5508, &qword_1000AAB28);
  __chkstk_darwin(v56);
  v55 = &v53 - v12;
  v13 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v13 - 8);
  v15 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Item(0);
  __chkstk_darwin(v16);
  v18 = (&v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for SmallContentView(0);
  sub_100027EDC(v2 + v19[7], v18, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = v18[1];
    v62 = *v18;
    v63 = v20;
    sub_10001B33C();
    v21 = sub_1000A2550();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [objc_opt_self() secondaryLabelColor];
    v29 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
    v30 = [v28 resolvedColorWithTraitCollection:v29];

    v31 = sub_1000A2740();
    v62 = v21;
    v63 = v23;
    v64 = v25 & 1;
    v65 = v27;
    v66 = v31;
    sub_100027E88();
    result = sub_1000A2820();
    v33 = result;
  }

  else
  {
    sub_100028C0C(v18, v15, type metadata accessor for Item.Headline);
    sub_100027EDC(v15, &v8[v6[6]], type metadata accessor for Item.Headline);
    sub_100027EDC(v2 + v19[8], &v8[v6[7]], type metadata accessor for TodayContent);
    sub_100027EDC(v2 + v19[9], &v8[v6[8]], type metadata accessor for LayoutContext);
    KeyPath = swift_getKeyPath();
    *&v8[v6[5]] = swift_getKeyPath();
    sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
    swift_storeEnumTagMultiPayload();
    *v8 = KeyPath;
    v8[8] = 0;
    sub_1000A2310();
    v35 = sub_100025044(&qword_1000E5518, type metadata accessor for SmallHeadlineContentView, &unk_1000AAB7C);
    v53 = v11;
    sub_1000A2620();
    (*(v3 + 8))(v5, v54);
    sub_100024FE4(v8, type metadata accessor for SmallHeadlineContentView);
    sub_100017A54(&qword_1000E5290, &unk_1000ADE60);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000AA450;
    v37 = *v15;
    v38 = [*v15 title];
    if (v38)
    {
      v39 = v38;
      v40 = sub_1000A2D40();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0xE000000000000000;
    }

    *(v36 + 32) = v40;
    *(v36 + 40) = v42;
    v43 = [v37 sourceName];
    if (v43)
    {
      v44 = v43;
      v45 = sub_1000A2D40();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xE000000000000000;
    }

    v48 = v53;
    *(v36 + 48) = v45;
    *(v36 + 56) = v47;
    v62 = v36;
    sub_100017A54(&qword_1000E5298, &qword_1000AA880);
    sub_100029050(&qword_1000E52A0, &qword_1000E5298, &qword_1000AA880, &protocol conformance descriptor for [A]);
    v49 = sub_1000A2CA0();
    v51 = v50;

    v62 = v49;
    v63 = v51;
    v60 = v6;
    v61 = v35;
    swift_getOpaqueTypeConformance2();
    sub_10001B33C();
    v52 = v58;
    sub_1000A25E0();

    (*(v57 + 8))(v48, v52);
    sub_100027F48();
    v33 = sub_1000A2820();
    result = sub_100024FE4(v15, type metadata accessor for Item.Headline);
  }

  *v59 = v33;
  return result;
}

uint64_t sub_1000247F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v33 = a1;
  v32 = type metadata accessor for SmallBackgroundView(0);
  __chkstk_darwin(v32);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100017A54(&qword_1000E53F0, &qword_1000AA9A8);
  __chkstk_darwin(v31);
  v30 = &v26 - v4;
  v27 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Item(0);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_1000A1700();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v28 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v26 - v17;
  v19 = type metadata accessor for SmallContentView(0);
  v20 = v1 + v19[9];
  if (*(v20 + *(type metadata accessor for LayoutContext(0) + 44)) == 1)
  {
    v21 = v2 + v19[8];
    v22 = type metadata accessor for TodayContent(0);
    sub_100028B94(v21 + *(v22 + 36), v12, &unk_1000E5DD0, &unk_1000AB260);
  }

  else
  {
    sub_100027EDC(v2 + v19[7], v9, type metadata accessor for Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100024FE4(v9, type metadata accessor for Item);
      (*(v14 + 56))(v12, 1, 1, v13);
    }

    else
    {
      sub_100028C0C(v9, v6, type metadata accessor for Item.Headline);
      sub_100028B94(&v6[*(v27 + 24)], v12, &unk_1000E5DD0, &unk_1000AB260);
      sub_100024FE4(v6, type metadata accessor for Item.Headline);
    }
  }

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001FE6C(v12, &unk_1000E5DD0, &unk_1000AB260);
    sub_10002381C(v29);
    sub_100025044(&qword_1000E53F8, type metadata accessor for SmallBackgroundView, &unk_1000AC854);
    result = sub_1000A2820();
    v24 = result;
  }

  else
  {
    (*(v14 + 32))(v18, v12, v13);
    v25 = (*(v14 + 16))(v28, v18, v13);
    __chkstk_darwin(v25);
    *(&v26 - 2) = v2;
    sub_100025044(&qword_1000E53F8, type metadata accessor for SmallBackgroundView, &unk_1000AC854);
    sub_1000A2440();
    sub_100029050(&qword_1000E5400, &qword_1000E53F0, &qword_1000AA9A8, &protocol conformance descriptor for Link<A>);
    v24 = sub_1000A2820();
    result = (*(v14 + 8))(v18, v13);
  }

  *v33 = v24;
  return result;
}

uint64_t sub_100024D9C@<X0>(void *a1@<X8>)
{
  v3 = sub_1000A2140();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallHeadlineContentView(0);
  sub_100028B94(v1 + *(v10 + 20), v9, &qword_1000E5408, &qword_1000AAA10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A2A50();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100024FA8@<X0>(void *a1@<X8>)
{
  result = sub_1000247F4(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_100024FE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100025044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000250B0()
{
  v1 = sub_1000A2A50();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = sub_1000A2140();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1000A3080();
    v14 = sub_1000A2360();
    v21 = v0;
    v15 = v2;
    v16 = v14;
    sub_1000A1DC0();

    v2 = v15;
    sub_1000A2130();
    swift_getAtKeyPath();
    v17 = sub_100028064(v12, 0);
    (*(v9 + 8))(v11, v8, v17);
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_100024D9C(v7);
    sub_1000A2A40();
    v18 = sub_1000A2A30();
    v19 = *(v2 + 8);
    v19(v5, v1);
    v19(v7, v1);
    v13 = v18 ^ 1;
    return v13 & 1;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v13 = 0;
  return v13 & 1;
}

uint64_t sub_100025310()
{
  v1 = sub_100017A54(&qword_1000E55C8, &qword_1000AABD0);
  __chkstk_darwin(v1);
  v3 = &v18 - v2;
  v4 = sub_100017A54(&qword_1000E55D0, &qword_1000AABD8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = sub_100017A54(&qword_1000E55D8, &qword_1000AABE0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_1000250B0();
  v11 = sub_1000A2280();
  if (v10)
  {
    *v9 = v11;
    *(v9 + 1) = 0;
    v9[16] = 1;
    v12 = sub_100017A54(&qword_1000E55F8, &qword_1000AABF0);
    sub_100026880(v0, &v9[*(v12 + 44)]);
    sub_100028B94(v9, v6, &qword_1000E55D8, &qword_1000AABE0);
    swift_storeEnumTagMultiPayload();
    sub_100029050(&qword_1000E55E8, &qword_1000E55D8, &qword_1000AABE0, &protocol conformance descriptor for VStack<A>);
    sub_100029050(&qword_1000E55F0, &qword_1000E55C8, &qword_1000AABD0, &protocol conformance descriptor for VStack<A>);
    sub_1000A22F0();
    v13 = v9;
    v14 = &qword_1000E55D8;
    v15 = &qword_1000AABE0;
  }

  else
  {
    *v3 = v11;
    *(v3 + 1) = 0;
    v3[16] = 1;
    v16 = sub_100017A54(&qword_1000E55E0, &qword_1000AABE8);
    sub_100025620(&v3[*(v16 + 44)]);
    sub_100028B94(v3, v6, &qword_1000E55C8, &qword_1000AABD0);
    swift_storeEnumTagMultiPayload();
    sub_100029050(&qword_1000E55E8, &qword_1000E55D8, &qword_1000AABE0, &protocol conformance descriptor for VStack<A>);
    sub_100029050(&qword_1000E55F0, &qword_1000E55C8, &qword_1000AABD0, &protocol conformance descriptor for VStack<A>);
    sub_1000A22F0();
    v13 = v3;
    v14 = &qword_1000E55C8;
    v15 = &qword_1000AABD0;
  }

  return sub_10001FE6C(v13, v14, v15);
}

uint64_t sub_100025620@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100017A54(&qword_1000E56D0, &qword_1000AACF0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v48 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v41[-v6];
  v8 = sub_100017A54(&qword_1000E56D8, &qword_1000AACF8);
  v9 = __chkstk_darwin(v8 - 8);
  v54 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v12 = &v41[-v11];
  v13 = sub_100017A54(&qword_1000E5618, &unk_1000AAC20);
  v14 = __chkstk_darwin(v13 - 8);
  v55 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v41[-v16];
  type metadata accessor for SmallHeadlineContentView(0);
  v18 = sub_100090618();
  v19 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  if (v18)
  {
    v19 = sub_100061A50();
    sub_1000A28C0();
    sub_1000A1E90();
    v61 = v68;
    v60 = v69;
    v59 = v70;
    v58 = v71;
    v57 = v72;
    v56 = v73;
  }

  v53 = v19;
  v47 = v17;
  sub_100025D04(v17);
  v20 = sub_1000453FC();
  [v20 capHeight];

  sub_1000456A0();
  sub_1000A28C0();
  sub_1000A1E90();
  v52 = v74;
  v51 = v76;
  v50 = v78;
  v49 = v79;
  v64 = 1;
  v63 = v75;
  v62 = v77;
  *v12 = sub_1000A2180();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v21 = &v12[*(sub_100017A54(&qword_1000E56E0, &qword_1000AAD00) + 44)];
  sub_10002636C(v7);
  v43 = v12;
  v22 = *(v3 + 16);
  v23 = v48;
  v22(v48, v7, v2);
  v22(v21, v23, v2);
  v24 = &v21[*(sub_100017A54(&qword_1000E56E8, &qword_1000AAD08) + 48)];
  *v24 = 0;
  v24[8] = 0;
  v25 = *(v3 + 8);
  v25(v7, v2);
  v25(v23, v2);
  sub_1000A28C0();
  sub_1000A1E90();
  v48 = v80;
  v46 = v82;
  v45 = v84;
  v44 = v85;
  v67 = 1;
  v66 = v81;
  v65 = v83;
  v26 = v17;
  v27 = v55;
  sub_100028B94(v26, v55, &qword_1000E5618, &unk_1000AAC20);
  v28 = v64;
  LOBYTE(v22) = v63;
  LOBYTE(v23) = v62;
  v29 = v12;
  v30 = v54;
  sub_100028B94(v29, v54, &qword_1000E56D8, &qword_1000AACF8);
  LOBYTE(v20) = v67;
  v31 = v66;
  v42 = v65;
  v32 = v61;
  *a1 = v53;
  *(a1 + 8) = v32;
  v33 = v59;
  *(a1 + 16) = v60;
  *(a1 + 24) = v33;
  v34 = v57;
  *(a1 + 32) = v58;
  *(a1 + 40) = v34;
  *(a1 + 48) = v56;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  v35 = sub_100017A54(&qword_1000E56F0, &qword_1000AAD10);
  sub_100028B94(v27, a1 + v35[16], &qword_1000E5618, &unk_1000AAC20);
  v36 = a1 + v35[20];
  *v36 = 0;
  *(v36 + 8) = v28;
  *(v36 + 16) = v52;
  *(v36 + 24) = v22;
  *(v36 + 32) = v51;
  *(v36 + 40) = v23;
  v37 = v49;
  *(v36 + 48) = v50;
  *(v36 + 56) = v37;
  sub_100028B94(v30, a1 + v35[24], &qword_1000E56D8, &qword_1000AACF8);
  v38 = a1 + v35[28];
  *v38 = 0;
  *(v38 + 8) = v20;
  *(v38 + 16) = v48;
  *(v38 + 24) = v31;
  *(v38 + 32) = v46;
  *(v38 + 40) = v42;
  v39 = v44;
  *(v38 + 48) = v45;
  *(v38 + 56) = v39;
  sub_10001FE6C(v43, &qword_1000E56D8, &qword_1000AACF8);
  sub_10001FE6C(v47, &qword_1000E5618, &unk_1000AAC20);
  sub_10001FE6C(v30, &qword_1000E56D8, &qword_1000AACF8);
  sub_10001FE6C(v27, &qword_1000E5618, &unk_1000AAC20);
}

uint64_t sub_100025D04@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = sub_1000A2240();
  v69 = *(v2 - 8);
  v70 = v2;
  __chkstk_darwin(v2);
  v67 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SourceView(0);
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100017A54(&qword_1000E56A0, &qword_1000AACD8);
  __chkstk_darwin(v61);
  v8 = &v57 - v7;
  v9 = sub_100017A54(&qword_1000E56A8, &qword_1000AACE0);
  v62 = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v60 = &v57 - v10;
  v64 = sub_100017A54(&qword_1000E56B0, &qword_1000AACE8);
  __chkstk_darwin(v64);
  v12 = &v57 - v11;
  v65 = sub_100017A54(&qword_1000E5618, &unk_1000AAC20);
  __chkstk_darwin(v65);
  v66 = &v57 - v13;
  v14 = (v1 + *(type metadata accessor for SmallHeadlineContentView(0) + 24));
  v15 = sub_1000907C8();
  v16 = *v14;
  v58 = *v14;
  if (v15)
  {
    [v16 sourceNameImageScale];
    v72 = v17;
    v71 = v15;
  }

  else
  {
    v18 = [v16 sourceName];
    if (v18)
    {
      v19 = v18;
      v71 = sub_1000A2D40();
      v72 = v20;
    }

    else
    {
      v71 = 0;
      v72 = 0xE000000000000000;
    }
  }

  v21 = v14 + *(type metadata accessor for Item.Headline(0) + 28);
  if (*(v21 + 1))
  {
    v22 = *v21;
    if (v22)
    {
      v23 = v22;
      [v23 ts_luminance];
      sub_100028E34(0, &unk_1000E5F20, UIColor_ptr);
      sub_1000A3150();
    }
  }

  v59 = v15;
  v24 = v15 != 0;
  v26 = v71;
  v25 = v72;
  sub_100028BFC(v71, v72, v24);
  sub_10004765C();
  v28 = v27;
  sub_10004765C();
  v30 = v29 + 3.0;
  KeyPath = swift_getKeyPath();
  *&v6[v4[5]] = swift_getKeyPath();
  sub_100017A54(&qword_1000E5408, &qword_1000AAA10);
  swift_storeEnumTagMultiPayload();
  *v6 = KeyPath;
  v6[8] = 0;
  v32 = &v6[v4[6]];
  *v32 = v26;
  *(v32 + 1) = v25;
  v32[16] = v24;
  v33 = &v6[v4[7]];
  *v33 = v28;
  *(v33 + 1) = v30;
  v34 = sub_1000250B0();
  v35 = sub_1000A26E0();
  if ((v34 & 1) == 0)
  {
    v36 = sub_1000A2700();

    v35 = v36;
  }

  v37 = v64;
  v38 = swift_getKeyPath();
  sub_100028C0C(v6, v8, type metadata accessor for SourceView);
  v39 = &v8[*(v61 + 36)];
  *v39 = v38;
  v39[1] = v35;
  sub_100028C74();
  v40 = v60;
  sub_1000A2560();
  sub_10001FE6C(v8, &qword_1000E56A0, &qword_1000AACD8);
  sub_1000A26B0();
  v41 = sub_1000A2700();

  (*(v62 + 32))(v12, v40, v63);
  v42 = &v12[*(v37 + 36)];
  *v42 = v41;
  v42[1] = 0x4020000000000000;
  v42[2] = 0;
  v42[3] = 0;
  v43 = [v58 sourceName];
  if (v43)
  {
    v44 = v43;
    v45 = sub_1000A2D40();
    v47 = v46;
  }

  else
  {
    v45 = 0;
    v47 = 0xE000000000000000;
  }

  v48 = v59 != 0;
  v73 = v45;
  v74 = v47;
  sub_10001B33C();
  v49 = sub_1000A2550();
  v51 = v50;
  v53 = v52;
  sub_100028D5C();
  v54 = v66;
  sub_1000A25B0();
  sub_100028640(v49, v51, v53 & 1);

  sub_10001FE6C(v12, &qword_1000E56B0, &qword_1000AACE8);
  v55 = v67;
  sub_1000A2210();
  sub_1000A1F00();
  sub_100028E24(v71, v72, v48);
  (*(v69 + 8))(v55, v70);
  return sub_10001FE6C(v54, &qword_1000E5618, &unk_1000AAC20);
}

uint64_t sub_10002636C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v51 = sub_1000A1870();
  v50 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SmallHeadlineContentView(0);
  sub_1000453FC();
  v4 = sub_1000A2430();
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000AA7D0;
  v6 = *(v1 + *(v3 + 24));
  v7 = [v6 identifier];
  v8 = sub_1000A2D40();
  v10 = v9;

  *(v5 + 56) = &type metadata for String;
  v11 = sub_10001A97C();
  *(v5 + 64) = v11;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  v12 = [v6 title];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1000A2D40();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  *(v5 + 96) = &type metadata for String;
  *(v5 + 104) = v11;
  *(v5 + 72) = v14;
  *(v5 + 80) = v16;
  *&v54 = 0;
  *(&v54 + 1) = 0xE000000000000000;
  v17 = [v6 language];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1000A2D40();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  *&v52[0] = v19;
  *(&v52[0] + 1) = v21;
  sub_100017A54(&unk_1000E7E10, &qword_1000ADB20);
  sub_1000A3370();

  v22 = v54;
  *(v5 + 136) = &type metadata for String;
  *(v5 + 144) = v11;
  *(v5 + 112) = v22;
  sub_100028E34(0, &qword_1000E76B0, OS_os_log_ptr);
  v23 = sub_1000A3190();
  v24 = sub_1000A3090();
  sub_1000A1DB0("creating smallTitleView for headline with identifier: %@, with title: %@, with language: %@", 91, 2, &_mh_execute_header, v23, v24, v5);

  v25 = [v6 title];
  if (v25)
  {
    v26 = v25;
    sub_1000A2D40();
  }

  v27 = sub_1000A24C0();
  v29 = v28;
  v31 = v30;

  v47[1] = v4;

  sub_1000A26B0();
  sub_1000A2700();

  v32 = sub_1000A24D0();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_100028640(v27, v29, v31 & 1);

  KeyPath = swift_getKeyPath();
  v40 = sub_1000A26E0();
  v41 = swift_getKeyPath();
  v60 = v36 & 1;
  v59 = 0;
  *&v54 = v32;
  *(&v54 + 1) = v34;
  LOBYTE(v55) = v36 & 1;
  *(&v55 + 1) = v38;
  *&v56 = KeyPath;
  *(&v56 + 1) = 3;
  LOBYTE(v57) = 0;
  *(&v57 + 1) = v41;
  v58 = v40;
  v42 = [v6 language];
  if (v42)
  {
    v43 = v42;
    sub_1000A2D40();
  }

  v44 = v48;
  sub_1000A1860();
  v45 = [v6 language];
  if (v45)
  {
  }

  sub_100017A54(&qword_1000E56F8, &unk_1000AD5A0);
  sub_100028EE0();
  sub_1000A2610();

  (*(v50 + 8))(v44, v51);
  v52[2] = v56;
  v52[3] = v57;
  v53 = v58;
  v52[1] = v55;
  v52[0] = v54;
  return sub_10001FE6C(v52, &qword_1000E56F8, &unk_1000AD5A0);
}

uint64_t sub_100026880@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100017A54(&qword_1000E5600, &qword_1000AABF8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v8 = &v25[-v7];
  *v8 = sub_1000A2180();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_100017A54(&qword_1000E5608, &qword_1000AAC00);
  sub_100026AE4(a1, &v8[*(v9 + 44)]);
  sub_1000A28C0();
  sub_1000A1E90();
  v29 = v38;
  v30 = v36;
  v27 = v41;
  v28 = v40;
  v44 = 1;
  v43 = v37;
  v42 = v39;
  sub_10002733C(v33);
  v10 = v33[0];
  v11 = v33[1];
  v12 = v34;
  v13 = v35;
  v31 = v6;
  sub_100028B94(v8, v6, &qword_1000E5600, &qword_1000AABF8);
  v14 = v44;
  v15 = v43;
  v26 = v42;
  v16 = v6;
  v17 = v32;
  sub_100028B94(v16, v32, &qword_1000E5600, &qword_1000AABF8);
  v18 = sub_100017A54(&qword_1000E5610, &qword_1000AAC08);
  v19 = v17 + v18[12];
  *v19 = 0;
  *(v19 + 8) = v14;
  v20 = v29;
  *(v19 + 16) = v30;
  *(v19 + 24) = v15;
  *(v19 + 32) = v20;
  *(v19 + 40) = v26;
  v21 = v27;
  *(v19 + 48) = v28;
  *(v19 + 56) = v21;
  v22 = v17 + v18[16];
  *v22 = v10;
  *(v22 + 8) = v11;
  *(v22 + 16) = v12;
  *(v22 + 24) = v13;
  v23 = v17 + v18[20];
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_100028630(v10, v11, v12);

  sub_10001FE6C(v8, &qword_1000E5600, &qword_1000AABF8);
  sub_100028640(v10, v11, v12);

  return sub_10001FE6C(v31, &qword_1000E5600, &qword_1000AABF8);
}

uint64_t sub_100026AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v67 = a2;
  v2 = sub_100017A54(&qword_1000E5618, &unk_1000AAC20);
  v3 = __chkstk_darwin(v2 - 8);
  v66 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v71 = &v54 - v5;
  v6 = sub_100017A54(&qword_1000E5620, &unk_1000ACC60);
  v7 = __chkstk_darwin(v6 - 8);
  v64 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v54 - v9;
  v10 = sub_100017A54(&qword_1000E5628, &unk_1000AAC30);
  __chkstk_darwin(v10);
  v12 = (&v54 - v11);
  v62 = sub_100017A54(&qword_1000E5630, &unk_1000ACC70);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v14 = &v54 - v13;
  v15 = sub_100017A54(&qword_1000E5638, &qword_1000AAC40);
  v16 = __chkstk_darwin(v15 - 8);
  v69 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v68 = &v54 - v18;
  v61 = sub_1000A2790();
  v19 = sub_1000A26A0();
  KeyPath = swift_getKeyPath();
  v21 = sub_1000A2410();
  v22 = swift_getKeyPath();
  v23 = (v12 + *(v10 + 36));
  v24 = *(sub_100017A54(&qword_1000E5640, &qword_1000AAC78) + 28);
  v25 = enum case for Image.Scale.medium(_:);
  v26 = sub_1000A27B0();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  *v12 = v61;
  v12[1] = KeyPath;
  v12[2] = v19;
  v12[3] = v22;
  v12[4] = v21;
  v27 = sub_1000288E8();
  sub_1000A2560();
  sub_10001FE6C(v12, &qword_1000E5628, &unk_1000AAC30);
  v78 = v10;
  v79 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v68;
  v29 = v62;
  sub_1000A25F0();
  (*(v63 + 8))(v14, v29);
  sub_1000A28C0();
  sub_1000A1E90();
  v63 = v72;
  v62 = v74;
  v61 = v76;
  v60 = v77;
  v86 = 1;
  v85 = v73;
  v84 = v75;
  sub_1000A2410();
  v30 = sub_1000A24C0();
  v32 = v31;
  LOBYTE(v14) = v33;

  sub_1000A26E0();
  v34 = sub_1000A2480();
  v36 = v35;
  LOBYTE(v24) = v37;
  v39 = v38;

  sub_100028640(v30, v32, v14 & 1);

  v78 = v34;
  v79 = v36;
  LOBYTE(v80) = v24 & 1;
  v81 = v39;
  v82 = 0x3FE6666666666666;
  sub_100017A54(&qword_1000E5688, &qword_1000ACDA0);
  sub_100028B10();
  v40 = v70;
  sub_1000A25F0();
  sub_100028640(v34, v36, v24 & 1);

  sub_1000A28C0();
  sub_1000A1E90();
  v59 = v78;
  v58 = v80;
  v57 = v82;
  v56 = v83;
  v89 = 1;
  v88 = v79;
  v87 = v81;
  v41 = v71;
  sub_100025D04(v71);
  v42 = v69;
  sub_100028B94(v28, v69, &qword_1000E5638, &qword_1000AAC40);
  LOBYTE(v30) = v86;
  LOBYTE(v36) = v85;
  LOBYTE(v24) = v84;
  v43 = v64;
  sub_100028B94(v40, v64, &qword_1000E5620, &unk_1000ACC60);
  v54 = v89;
  v55 = v88;
  LODWORD(v65) = v87;
  v44 = v66;
  sub_100028B94(v41, v66, &qword_1000E5618, &unk_1000AAC20);
  v45 = v42;
  v46 = v67;
  sub_100028B94(v45, v67, &qword_1000E5638, &qword_1000AAC40);
  v47 = sub_100017A54(&qword_1000E5698, &qword_1000AACD0);
  v48 = v46 + v47[12];
  *v48 = 0;
  *(v48 + 8) = v30;
  *(v48 + 16) = v63;
  *(v48 + 24) = v36;
  *(v48 + 32) = v62;
  *(v48 + 40) = v24;
  v49 = v60;
  *(v48 + 48) = v61;
  *(v48 + 56) = v49;
  sub_100028B94(v43, v46 + v47[16], &qword_1000E5620, &unk_1000ACC60);
  v50 = v46 + v47[20];
  *v50 = 0;
  *(v50 + 8) = v54;
  *(v50 + 16) = v59;
  *(v50 + 24) = v55;
  *(v50 + 32) = v58;
  *(v50 + 40) = v65;
  v51 = v56;
  *(v50 + 48) = v57;
  *(v50 + 56) = v51;
  sub_100028B94(v44, v46 + v47[24], &qword_1000E5618, &unk_1000AAC20);
  v52 = v46 + v47[28];
  *v52 = 0;
  *(v52 + 8) = 1;
  sub_10001FE6C(v71, &qword_1000E5618, &unk_1000AAC20);
  sub_10001FE6C(v70, &qword_1000E5620, &unk_1000ACC60);
  sub_10001FE6C(v68, &qword_1000E5638, &qword_1000AAC40);
  sub_10001FE6C(v44, &qword_1000E5618, &unk_1000AAC20);
  sub_10001FE6C(v43, &qword_1000E5620, &unk_1000ACC60);
  return sub_10001FE6C(v69, &qword_1000E5638, &qword_1000AAC40);
}

uint64_t sub_10002733C@<X0>(uint64_t *a1@<X8>)
{
  v61 = a1;
  v2 = sub_1000A1870();
  v59 = *(v2 - 8);
  v60 = v2;
  __chkstk_darwin(v2);
  v58 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallHeadlineContentView(0);
  sub_1000453FC();
  v5 = sub_1000A2430();
  sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000AA7D0;
  v7 = *(v1 + *(v4 + 24));
  v8 = [v7 identifier];
  v9 = sub_1000A2D40();
  v11 = v10;

  *(v6 + 56) = &type metadata for String;
  v12 = sub_10001A97C();
  *(v6 + 64) = v12;
  *(v6 + 32) = v9;
  *(v6 + 40) = v11;
  v13 = [v7 title];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1000A2D40();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v12;
  *(v6 + 72) = v15;
  *(v6 + 80) = v17;
  v65 = 0;
  v66 = 0xE000000000000000;
  v18 = [v7 language];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000A2D40();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v63 = v20;
  v64 = v22;
  sub_100017A54(&unk_1000E7E10, &qword_1000ADB20);
  sub_1000A3370();

  v23 = v65;
  v24 = v66;
  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v12;
  *(v6 + 112) = v23;
  *(v6 + 120) = v24;
  sub_100028E34(0, &qword_1000E76B0, OS_os_log_ptr);
  v25 = sub_1000A3190();
  v26 = sub_1000A3090();
  sub_1000A1DB0("creating largeTitleView for headline with identifier: %@, with title: %@, with language: %@", 91, 2, &_mh_execute_header, v25, v26, v6);

  v27 = [v7 title];
  v62 = v7;
  if (v27)
  {
    v28 = v27;
    sub_1000A2D40();
  }

  v29 = sub_1000A24C0();
  v31 = v30;
  v33 = v32;

  v57 = v5;

  sub_1000A26B0();
  sub_1000A2700();

  v34 = sub_1000A24D0();
  v36 = v35;
  v38 = v37;

  sub_100028640(v29, v31, v33 & 1);

  sub_1000A26E0();
  v39 = sub_1000A2480();
  v41 = v40;
  v43 = v42;

  sub_100028640(v34, v36, v38 & 1);

  v44 = [v62 language];
  if (v44)
  {
    v45 = v44;
    sub_1000A2D40();
  }

  v46 = v58;
  sub_1000A1860();
  v47 = [v62 language];
  if (v47)
  {
  }

  v48 = sub_1000A24A0();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_100028640(v39, v41, v43 & 1);

  result = (*(v59 + 8))(v46, v60);
  v56 = v61;
  *v61 = v48;
  v56[1] = v50;
  *(v56 + 16) = v52 & 1;
  v56[3] = v54;
  return result;
}

id sub_1000278C4(id result, void *a2)
{
  if (a2)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_100027904(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100017A54(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10002796C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A2000();
  *a1 = result;
  return result;
}

uint64_t sub_100027998@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A2000();
  *a1 = result;
  return result;
}

unint64_t sub_100027A1C()
{
  result = qword_1000E54A0;
  if (!qword_1000E54A0)
  {
    sub_100017A9C(&qword_1000E5498, &qword_1000AAAF8);
    sub_100027AD4();
    sub_100029050(&qword_1000E54C8, &qword_1000E54D0, &qword_1000AAB10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E54A0);
  }

  return result;
}

unint64_t sub_100027AD4()
{
  result = qword_1000E54A8;
  if (!qword_1000E54A8)
  {
    sub_100017A9C(&qword_1000E54B0, &qword_1000AAB00);
    sub_100027B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E54A8);
  }

  return result;
}

unint64_t sub_100027B60()
{
  result = qword_1000E54B8;
  if (!qword_1000E54B8)
  {
    sub_100017A9C(&qword_1000E54C0, &qword_1000AAB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E54B8);
  }

  return result;
}

unint64_t sub_100027BE4()
{
  result = qword_1000E54E0;
  if (!qword_1000E54E0)
  {
    sub_100017A9C(&qword_1000E5480, &qword_1000AAAB0);
    sub_100027C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E54E0);
  }

  return result;
}

unint64_t sub_100027C70()
{
  result = qword_1000E54E8;
  if (!qword_1000E54E8)
  {
    sub_100017A9C(&qword_1000E54D8, &qword_1000AAB18);
    sub_100017A9C(&qword_1000E5498, &qword_1000AAAF8);
    sub_100027A1C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E54E8);
  }

  return result;
}

unint64_t sub_100027D38()
{
  result = qword_1000E54F0;
  if (!qword_1000E54F0)
  {
    sub_100017A9C(&qword_1000E5490, &qword_1000AAAC0);
    sub_100017A9C(&qword_1000E5480, &qword_1000AAAB0);
    sub_100027BE4();
    swift_getOpaqueTypeConformance2();
    sub_100025044(&qword_1000E54F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E54F0);
  }

  return result;
}

uint64_t sub_100027E50(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100027E88()
{
  result = qword_1000E5510;
  if (!qword_1000E5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5510);
  }

  return result;
}

uint64_t sub_100027EDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100027F48()
{
  result = qword_1000E5520;
  if (!qword_1000E5520)
  {
    sub_100017A9C(&qword_1000E5508, &qword_1000AAB28);
    type metadata accessor for SmallHeadlineContentView(255);
    sub_100025044(&qword_1000E5518, type metadata accessor for SmallHeadlineContentView, &unk_1000AAB7C);
    swift_getOpaqueTypeConformance2();
    sub_100025044(&qword_1000E54F8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5520);
  }

  return result;
}

double sub_100028064(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100028084(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v8 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for Item.Headline(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_11;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[8];

  return v16(v17, a2, v15);
}

uint64_t sub_100028250(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
    return result;
  }

  v8 = sub_100017A54(&qword_1000E52F0, &unk_1000AA900);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for Item.Headline(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_9;
  }

  v13 = type metadata accessor for TodayContent(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v15 = type metadata accessor for LayoutContext(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[8];

  return v16(v17, a2, a2, v15);
}

void sub_10002840C(uint64_t a1)
{
  sub_1000221CC(319, &qword_1000E5360, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_100022218(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Item.Headline(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for TodayContent(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for LayoutContext(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1000284E8()
{
  sub_100017A9C(&qword_1000E53C0, &qword_1000AA990);
  sub_100017A9C(&qword_1000E53B8, &qword_1000AA988);
  sub_100017A9C(&qword_1000E53B0, &qword_1000AA980);
  sub_100029050(&qword_1000E53D0, &qword_1000E53B0, &qword_1000AA980, &protocol conformance descriptor for ZStack<A>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100028630(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_100028640(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100028650@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000A2110();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000286B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A2090();
  *a1 = result;
  return result;
}

uint64_t sub_1000286E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A2090();
  *a1 = result;
  return result;
}

uint64_t sub_1000287D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1000288E8()
{
  result = qword_1000E5648;
  if (!qword_1000E5648)
  {
    sub_100017A9C(&qword_1000E5628, &unk_1000AAC30);
    sub_1000289A0();
    sub_100029050(&qword_1000E5680, &qword_1000E5640, &qword_1000AAC78, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5648);
  }

  return result;
}

unint64_t sub_1000289A0()
{
  result = qword_1000E5650;
  if (!qword_1000E5650)
  {
    sub_100017A9C(&qword_1000E5658, &qword_1000AACB0);
    sub_100028A58();
    sub_100029050(&qword_1000E5670, &qword_1000E5678, &unk_1000AACC0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5650);
  }

  return result;
}

unint64_t sub_100028A58()
{
  result = qword_1000E5660;
  if (!qword_1000E5660)
  {
    sub_100017A9C(&qword_1000E5668, &qword_1000AACB8);
    sub_100029050(&qword_1000E54C8, &qword_1000E54D0, &qword_1000AAB10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5660);
  }

  return result;
}

unint64_t sub_100028B10()
{
  result = qword_1000E5690;
  if (!qword_1000E5690)
  {
    sub_100017A9C(&qword_1000E5688, &qword_1000ACDA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5690);
  }

  return result;
}

uint64_t sub_100028B94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100017A54(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id sub_100028BFC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_100028C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100028C74()
{
  result = qword_1000E56B8;
  if (!qword_1000E56B8)
  {
    sub_100017A9C(&qword_1000E56A0, &qword_1000AACD8);
    sub_100025044(&qword_1000E56C0, type metadata accessor for SourceView, &unk_1000AB9B0);
    sub_100029050(&qword_1000E54C8, &qword_1000E54D0, &qword_1000AAB10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E56B8);
  }

  return result;
}

unint64_t sub_100028D5C()
{
  result = qword_1000E56C8;
  if (!qword_1000E56C8)
  {
    sub_100017A9C(&qword_1000E56B0, &qword_1000AACE8);
    sub_100017A9C(&qword_1000E56A0, &qword_1000AACD8);
    sub_100028C74();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E56C8);
  }

  return result;
}

void sub_100028E24(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100028E34(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100028E7C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000A2110();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100028EE0()
{
  result = qword_1000E5700;
  if (!qword_1000E5700)
  {
    sub_100017A9C(&qword_1000E56F8, &unk_1000AD5A0);
    sub_100028F98();
    sub_100029050(&qword_1000E54C8, &qword_1000E54D0, &qword_1000AAB10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5700);
  }

  return result;
}

unint64_t sub_100028F98()
{
  result = qword_1000E5708;
  if (!qword_1000E5708)
  {
    sub_100017A9C(&qword_1000E5710, &unk_1000AAD50);
    sub_100029050(&qword_1000E5718, &qword_1000E5720, &qword_1000ABD10, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5708);
  }

  return result;
}

uint64_t sub_100029050(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002909C()
{
  result = qword_1000E5728;
  if (!qword_1000E5728)
  {
    sub_100017A9C(&qword_1000E5730, &qword_1000AAD60);
    sub_100029050(&qword_1000E55E8, &qword_1000E55D8, &qword_1000AABE0, &protocol conformance descriptor for VStack<A>);
    sub_100029050(&qword_1000E55F0, &qword_1000E55C8, &qword_1000AABD0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5728);
  }

  return result;
}

uint64_t sub_100029188()
{
  sub_100018720(v0 + 2);
  sub_100018720(v0 + 7);
  sub_100018720(v0 + 12);

  return swift_deallocClassInstance();
}

Swift::Int sub_1000291F4(uint64_t *a1)
{
  v2 = *(type metadata accessor for Session(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000704BC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10002943C(v6);
  *a1 = v3;
  return result;
}

void sub_10002929C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_100017A54(&unk_1000E88B0, &qword_1000AAE10);
      v7 = *(type metadata accessor for Session(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        type metadata accessor for Session(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

Swift::Int sub_10002943C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000A3540(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Session(0);
        v6 = sub_1000A2F60();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Session(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10002997C(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100029568(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100029568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AppearanceEvent(0);
  __chkstk_darwin(v8 - 8);
  v52 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000A1810();
  v10 = *(v51 - 8);
  v11 = __chkstk_darwin(v51);
  v53 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v37 - v13;
  v47 = type metadata accessor for Session(0);
  v14 = __chkstk_darwin(v47);
  v46 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v56 = &v37 - v17;
  result = __chkstk_darwin(v16);
  v55 = &v37 - v20;
  v39 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v48 = (v10 + 8);
    v49 = (v10 + 32);
    v23 = v21 + v22 * (a3 - 1);
    v44 = -v22;
    v45 = v21;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v21 + v22 * a3;
LABEL_5:
    v42 = v23;
    v43 = a3;
    v40 = v25;
    v41 = v24;
    v54 = v24;
    while (1)
    {
      v26 = v55;
      sub_10002C4E4(v25, v55, type metadata accessor for Session);
      v27 = v56;
      sub_10002C4E4(v23, v56, type metadata accessor for Session);
      v28 = v52;
      sub_10002C4E4(v26, v52, type metadata accessor for AppearanceEvent);
      v29 = v50;
      v30 = *v49;
      v31 = v51;
      (*v49)(v50, v28, v51);
      sub_10002C4E4(v27, v28, type metadata accessor for AppearanceEvent);
      v32 = v53;
      v30(v53, v28, v31);
      v33 = sub_1000A1790();
      v34 = *v48;
      (*v48)(v32, v31);
      v34(v29, v31);
      sub_10002C41C(v56, type metadata accessor for Session);
      result = sub_10002C41C(v55, type metadata accessor for Session);
      if ((v33 & 1) == 0)
      {
LABEL_4:
        a3 = v43 + 1;
        v23 = v42 + v38;
        v24 = v41 - 1;
        v25 = v40 + v38;
        if (v43 + 1 == v39)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v35 = v46;
      sub_10002C47C(v25, v46, type metadata accessor for Session);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002C47C(v35, v23, type metadata accessor for Session);
      v23 += v44;
      v25 += v44;
      if (__CFADD__(v54++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10002997C(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v130 = a1;
  v8 = type metadata accessor for AppearanceEvent(0);
  __chkstk_darwin(v8 - 8);
  v149 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_1000A1810();
  v10 = *(v148 - 8);
  v11 = __chkstk_darwin(v148);
  v150 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v147 = &v127 - v13;
  v144 = type metadata accessor for Session(0);
  v138 = *(v144 - 8);
  v14 = __chkstk_darwin(v144);
  v16 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v143 = &v127 - v18;
  v19 = __chkstk_darwin(v17);
  v152 = &v127 - v20;
  result = __chkstk_darwin(v19);
  v153 = &v127 - v22;
  v23 = a3[1];
  v134 = a3;
  if (v23 < 1)
  {
    v25 = _swiftEmptyArrayStorage;
LABEL_93:
    a4 = *v130;
    if (!*v130)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1000701E8(v25);
      v25 = result;
    }

    v154 = v25;
    v123 = *(v25 + 2);
    if (v123 >= 2)
    {
      while (1)
      {
        v124 = *a3;
        if (!*a3)
        {
          goto LABEL_129;
        }

        a3 = *&v25[16 * v123];
        v125 = *&v25[16 * v123 + 24];
        sub_10002A618((v124 + *(v138 + 72) * a3), (v124 + *(v138 + 72) * *&v25[16 * v123 + 16]), v124 + *(v138 + 72) * v125, a4);
        if (v5)
        {
        }

        if (v125 < a3)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1000701E8(v25);
        }

        if (v123 - 2 >= *(v25 + 2))
        {
          goto LABEL_119;
        }

        v126 = &v25[16 * v123];
        *v126 = a3;
        *(v126 + 1) = v125;
        v154 = v25;
        result = sub_10007015C(v123 - 1);
        v25 = v154;
        v123 = *(v154 + 2);
        a3 = v134;
        if (v123 <= 1)
        {
        }
      }
    }
  }

  v127 = a4;
  v24 = 0;
  v145 = (v10 + 8);
  v146 = (v10 + 32);
  v25 = _swiftEmptyArrayStorage;
  v128 = v16;
  while (1)
  {
    v26 = v24;
    v139 = v25;
    if (v24 + 1 >= v23)
    {
      ++v24;
    }

    else
    {
      v140 = v23;
      v129 = v5;
      v27 = *a3;
      v28 = *a3 + *(v138 + 72) * (v24 + 1);
      v142 = *(v138 + 72);
      v29 = v142;
      v30 = v27;
      v151 = v27;
      v131 = v24;
      v31 = v28;
      v32 = v153;
      sub_10002C4E4(v28, v153, type metadata accessor for Session);
      v33 = v30 + v29 * v24;
      v34 = v152;
      sub_10002C4E4(v33, v152, type metadata accessor for Session);
      v35 = v32;
      v36 = v149;
      sub_10002C4E4(v35, v149, type metadata accessor for AppearanceEvent);
      v37 = v147;
      v38 = *v146;
      v39 = v148;
      (*v146)(v147, v36, v148);
      sub_10002C4E4(v34, v36, type metadata accessor for AppearanceEvent);
      v40 = v150;
      v137 = v38;
      v38(v150, v36, v39);
      LODWORD(v141) = sub_1000A1790();
      v41 = *v145;
      (*v145)(v40, v39);
      v136 = v41;
      v41(v37, v39);
      sub_10002C41C(v152, type metadata accessor for Session);
      result = sub_10002C41C(v153, type metadata accessor for Session);
      a4 = v131 + 2;
      v42 = v151 + v142 * (v131 + 2);
      while (1)
      {
        v24 = v140;
        if (v140 == a4)
        {
          break;
        }

        v43 = v153;
        sub_10002C4E4(v42, v153, type metadata accessor for Session);
        v151 = v31;
        v44 = v31;
        v45 = v152;
        sub_10002C4E4(v44, v152, type metadata accessor for Session);
        v46 = v149;
        sub_10002C4E4(v43, v149, type metadata accessor for AppearanceEvent);
        v47 = v147;
        v48 = v148;
        v49 = v137;
        v137(v147, v46, v148);
        sub_10002C4E4(v45, v46, type metadata accessor for AppearanceEvent);
        v50 = v150;
        v49(v150, v46, v48);
        v51 = sub_1000A1790() & 1;
        v52 = v136;
        v136(v50, v48);
        v52(v47, v48);
        sub_10002C41C(v45, type metadata accessor for Session);
        result = sub_10002C41C(v153, type metadata accessor for Session);
        ++a4;
        v42 += v142;
        v31 = v151 + v142;
        v53 = (v141 & 1) == v51;
        v25 = v139;
        if (!v53)
        {
          v24 = a4 - 1;
          break;
        }
      }

      v5 = v129;
      a3 = v134;
      v54 = v128;
      v26 = v131;
      if (v141)
      {
        if (v24 < v131)
        {
          goto LABEL_122;
        }

        if (v131 < v24)
        {
          a4 = v142 * (v24 - 1);
          v55 = v24 * v142;
          v56 = v24;
          v57 = v131 * v142;
          do
          {
            if (v26 != --v56)
            {
              v58 = *v134;
              if (!*v134)
              {
                goto LABEL_128;
              }

              sub_10002C47C(v58 + v57, v54, type metadata accessor for Session);
              if (v57 < a4 || v58 + v57 >= (v58 + v55))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002C47C(v54, v58 + a4, type metadata accessor for Session);
              v25 = v139;
            }

            ++v26;
            a4 -= v142;
            v55 -= v142;
            v57 += v142;
          }

          while (v26 < v56);
          v5 = v129;
          a3 = v134;
          v26 = v131;
        }
      }
    }

    v59 = a3[1];
    if (v24 < v59)
    {
      if (__OFSUB__(v24, v26))
      {
        goto LABEL_121;
      }

      if (v24 - v26 < v127)
      {
        if (__OFADD__(v26, v127))
        {
          goto LABEL_123;
        }

        if (v26 + v127 < v59)
        {
          v59 = v26 + v127;
        }

        if (v59 < v26)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        v133 = v59;
        if (v24 != v59)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v24 < v26)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000702FC(0, *(v25 + 2) + 1, 1, v25);
      v25 = result;
    }

    a4 = *(v25 + 2);
    v78 = *(v25 + 3);
    v79 = a4 + 1;
    if (a4 >= v78 >> 1)
    {
      result = sub_1000702FC((v78 > 1), a4 + 1, 1, v25);
      v25 = result;
    }

    *(v25 + 2) = v79;
    v80 = &v25[16 * a4];
    *(v80 + 4) = v26;
    *(v80 + 5) = v24;
    if (!*v130)
    {
      goto LABEL_130;
    }

    if (a4)
    {
      v81 = *v130;
      while (1)
      {
        v82 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v83 = *(v25 + 4);
          v84 = *(v25 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_62:
          if (v86)
          {
            goto LABEL_109;
          }

          v99 = &v25[16 * v79];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_112;
          }

          v105 = &v25[16 * v82 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_116;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v82 = v79 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v109 = &v25[16 * v79];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_76:
        if (v104)
        {
          goto LABEL_111;
        }

        v112 = &v25[16 * v82];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_114;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_83:
        a4 = v82 - 1;
        if (v82 - 1 >= v79)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
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
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v120 = *&v25[16 * a4 + 32];
        v121 = *&v25[16 * v82 + 40];
        sub_10002A618((*a3 + *(v138 + 72) * v120), (*a3 + *(v138 + 72) * *&v25[16 * v82 + 32]), *a3 + *(v138 + 72) * v121, v81);
        if (v5)
        {
        }

        if (v121 < v120)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_1000701E8(v25);
        }

        if (a4 >= *(v25 + 2))
        {
          goto LABEL_106;
        }

        v122 = &v25[16 * a4];
        *(v122 + 4) = v120;
        *(v122 + 5) = v121;
        v154 = v25;
        result = sub_10007015C(v82);
        v25 = v154;
        v79 = *(v154 + 2);
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v25[16 * v79 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_107;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_108;
      }

      v94 = &v25[16 * v79];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_110;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_113;
      }

      if (v98 >= v90)
      {
        v116 = &v25[16 * v82 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_117;
        }

        if (v85 < v119)
        {
          v82 = v79 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v23 = a3[1];
    if (v24 >= v23)
    {
      goto LABEL_93;
    }
  }

  v129 = v5;
  v60 = *a3;
  v61 = *(v138 + 72);
  v62 = *a3 + v61 * (v24 - 1);
  v141 = -v61;
  v131 = v26;
  v63 = v26 - v24;
  v142 = v60;
  v132 = v61;
  v64 = v60 + v24 * v61;
LABEL_33:
  v140 = v24;
  v135 = v64;
  v136 = v63;
  a4 = v63;
  v137 = v62;
  v65 = v62;
  while (1)
  {
    v151 = a4;
    v66 = v153;
    sub_10002C4E4(v64, v153, type metadata accessor for Session);
    v67 = v152;
    sub_10002C4E4(v65, v152, type metadata accessor for Session);
    v68 = v149;
    sub_10002C4E4(v66, v149, type metadata accessor for AppearanceEvent);
    v69 = v147;
    v70 = *v146;
    v71 = v148;
    (*v146)(v147, v68, v148);
    sub_10002C4E4(v67, v68, type metadata accessor for AppearanceEvent);
    v72 = v150;
    v70(v150, v68, v71);
    v73 = sub_1000A1790();
    a4 = v145;
    v74 = *v145;
    (*v145)(v72, v71);
    v74(v69, v71);
    sub_10002C41C(v152, type metadata accessor for Session);
    result = sub_10002C41C(v153, type metadata accessor for Session);
    if ((v73 & 1) == 0)
    {
LABEL_32:
      v24 = v140 + 1;
      v62 = v137 + v132;
      v63 = v136 - 1;
      v64 = v135 + v132;
      if (v140 + 1 != v133)
      {
        goto LABEL_33;
      }

      v5 = v129;
      v24 = v133;
      a3 = v134;
      v25 = v139;
      v26 = v131;
      goto LABEL_41;
    }

    v75 = v151;
    if (!v142)
    {
      break;
    }

    v76 = v143;
    sub_10002C47C(v64, v143, type metadata accessor for Session);
    swift_arrayInitWithTakeFrontToBack();
    sub_10002C47C(v76, v65, type metadata accessor for Session);
    v65 += v141;
    v64 += v141;
    v77 = __CFADD__(v75, 1);
    a4 = v75 + 1;
    if (v77)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_10002A618(char *a1, char *a2, unint64_t a3, char *a4)
{
  v71 = a3;
  v7 = type metadata accessor for AppearanceEvent(0);
  __chkstk_darwin(v7 - 8);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000A1810();
  v9 = *(v66 - 8);
  v10 = __chkstk_darwin(v66);
  v65 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v52 - v12;
  v62 = type metadata accessor for Session(0);
  v13 = __chkstk_darwin(v62);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v13);
  v70 = &v52 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_59;
  }

  v19 = v71 - a2;
  if (v71 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_60;
  }

  v20 = (a2 - a1) / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = &a4[v22];
    if (v22 >= 1)
    {
      v38 = -v18;
      v55 = (v9 + 8);
      v56 = (v9 + 32);
      v39 = v37;
      v68 = a1;
      v69 = a4;
      v57 = -v18;
      do
      {
        v53 = v37;
        v40 = &a2[v38];
        v58 = a2;
        v59 = &a2[v38];
        while (1)
        {
          v41 = v71;
          if (a2 <= a1)
          {
            v74 = a2;
            v72 = v53;
            goto LABEL_57;
          }

          v54 = v37;
          v71 += v38;
          v60 = &v39[v38];
          v61 = v41;
          v42 = v70;
          sub_10002C4E4(&v39[v38], v70, type metadata accessor for Session);
          v43 = v63;
          sub_10002C4E4(v40, v63, type metadata accessor for Session);
          v44 = v67;
          sub_10002C4E4(v42, v67, type metadata accessor for AppearanceEvent);
          v45 = *v56;
          v46 = v64;
          v47 = v66;
          (*v56)(v64, v44, v66);
          sub_10002C4E4(v43, v44, type metadata accessor for AppearanceEvent);
          v48 = v65;
          v45(v65, v44, v47);
          v49 = sub_1000A1790();
          v50 = *v55;
          (*v55)(v48, v47);
          v50(v46, v47);
          sub_10002C41C(v43, type metadata accessor for Session);
          sub_10002C41C(v70, type metadata accessor for Session);
          if (v49)
          {
            break;
          }

          v51 = v60;
          v37 = v60;
          if (v61 < v39 || v71 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v59;
            a1 = v68;
            v38 = v57;
          }

          else
          {
            v40 = v59;
            a1 = v68;
            v38 = v57;
            if (v61 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v37;
          a2 = v58;
          if (v51 <= v69)
          {
            goto LABEL_55;
          }
        }

        if (v61 < v58 || v71 >= v58)
        {
          a2 = v59;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v68;
          v37 = v54;
          v38 = v57;
        }

        else
        {
          a2 = v59;
          a1 = v68;
          v37 = v54;
          v38 = v57;
          if (v61 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v39 > v69);
    }

LABEL_55:
    v74 = a2;
    v72 = v37;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || &a1[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < v71)
    {
      v58 = (v9 + 8);
      v59 = (v9 + 32);
      v60 = v18;
      do
      {
        v68 = a1;
        v69 = a4;
        v24 = v70;
        sub_10002C4E4(a2, v70, type metadata accessor for Session);
        v25 = v63;
        sub_10002C4E4(a4, v63, type metadata accessor for Session);
        v26 = v67;
        sub_10002C4E4(v24, v67, type metadata accessor for AppearanceEvent);
        v27 = *v59;
        v28 = v64;
        v29 = v66;
        (*v59)(v64, v26, v66);
        sub_10002C4E4(v25, v26, type metadata accessor for AppearanceEvent);
        v30 = a2;
        v31 = v65;
        v27(v65, v26, v29);
        v32 = sub_1000A1790();
        v33 = *v58;
        (*v58)(v31, v29);
        v33(v28, v29);
        a4 = v69;
        sub_10002C41C(v25, type metadata accessor for Session);
        sub_10002C41C(v70, type metadata accessor for Session);
        if (v32)
        {
          v34 = v60;
          v35 = v68;
          if (v68 < v30 || v68 >= &v30[v60])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v68 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = &v30[v34];
        }

        else
        {
          v34 = v60;
          v36 = &a4[v60];
          v35 = v68;
          if (v68 < a4 || v68 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v30;
          }

          else
          {
            a2 = v30;
            if (v68 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v73 = v36;
          a4 += v34;
        }

        a1 = &v35[v34];
        v74 = a1;
      }

      while (a4 < v61 && a2 < v71);
    }
  }

LABEL_57:
  sub_1000701FC(&v74, &v73, &v72);
  return 1;
}

void sub_10002ADB4(void *a1)
{
  v2 = sub_100017A54(&qword_1000E5818, &unk_1000AAE00);
  v3 = __chkstk_darwin(v2 - 8);
  v51 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v55 = &v40 - v5;
  v58 = type metadata accessor for Session(0);
  v6 = *(v58 - 8);
  v7 = __chkstk_darwin(v58);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v50 = &v40 - v11;
  __chkstk_darwin(v10);
  v56 = &v40 - v12;
  v13 = a1[2];

  if (v13 >= 5)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = sub_100070400(a1);
    }

    v46 = v13;
    v47 = a1;
    v15 = a1[2];
    v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    if (v15)
    {
      v17 = 0;
      v45 = 0;
      v57 = *(v6 + 72);
      v43 = v16 + v57;
      v54 = v16;
      do
      {
        v18 = v57 * v17;
        v53 = v15;
        v19 = v57 * (v17 - v15);
        while (1)
        {
          v20 = v17;
          v21 = v16 + v18;
          v22 = v56;
          sub_10002C4E4(v21, v56, type metadata accessor for Session);
          v23 = v55;
          sub_100028B94(v22 + *(v58 + 24), v55, &qword_1000E5818, &unk_1000AAE00);
          v24 = type metadata accessor for EngagementEvent(0);
          v25 = *(*(v24 - 8) + 48);
          v26 = v25(v23, 1, v24);
          sub_10001FE6C(v23, &qword_1000E5818, &unk_1000AAE00);
          sub_10002C41C(v22, type metadata accessor for Session);
          if (v26 == 1)
          {
            break;
          }

          v17 = v20 + 1;
          v18 += v57;
          v19 += v57;
          v16 = v54;
          if (v20 + 1 >= v53)
          {
            goto LABEL_22;
          }
        }

        v41 = v21;
        v42 = v18;
        v27 = 0;
        v48 = v54 + v57 * (v53 - 1);
        v49 = v25;
        v28 = v20;
        v15 = v53;
        do
        {
          if (v28 >= --v15)
          {
            v16 = v54;
            goto LABEL_22;
          }

          v29 = v50;
          sub_10002C4E4(v48 + v27, v50, type metadata accessor for Session);
          v30 = v51;
          sub_100028B94(v29 + *(v58 + 24), v51, &qword_1000E5818, &unk_1000AAE00);
          v52 = v49(v30, 1, v24);
          sub_10001FE6C(v30, &qword_1000E5818, &unk_1000AAE00);
          sub_10002C41C(v29, type metadata accessor for Session);
          v19 += v57;
          v27 -= v57;
        }

        while (v52 == 1);
        v31 = v41;
        v32 = v44;
        sub_10002C47C(v41, v44, type metadata accessor for Session);
        v33 = v57 * v53 + v27;
        if (v42 < v33 || v31 >= v43 + v27 + v57 * v53)
        {
          v16 = v54;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v16 = v54;
          if (v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        sub_10002C47C(v32, v33 + v16, type metadata accessor for Session);
        v17 = v28 + 1;
      }

      while (v17 < v15);
    }

    else
    {
      v45 = 0;
    }

LABEL_22:
    if (v47[2] <= 5uLL)
    {
    }

    else
    {
      sub_10002929C(v47, v16, 0, 0xBuLL);
    }

    v35 = v45;
    v59 = v34;

    sub_1000291F4(&v59);
    if (v35)
    {

      __break(1u);
    }

    else
    {
      swift_bridgeObjectRelease_n();
      v36 = v59;
      sub_100017A54(&unk_1000E5270, &unk_1000AAC10);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1000AA450;
      *(v37 + 56) = &type metadata for Int;
      *(v37 + 64) = &protocol witness table for Int;
      *(v37 + 32) = v46;
      v38 = *(v36 + 16);
      *(v37 + 96) = &type metadata for Int;
      *(v37 + 104) = &protocol witness table for Int;
      *(v37 + 72) = v38;
      sub_10001A9D0();
      v39 = sub_1000A3190();
      sub_1000A3090();
      sub_1000A1DB0("event-processing sidecar task limited sessions from %ld to %ld", v40, v41);
    }
  }
}

uint64_t sub_10002B374(char *a1, char *a2)
{
  v92 = a2;
  v85 = sub_100017A54(&qword_1000E57E8, &qword_1000AADD0);
  v3 = __chkstk_darwin(v85);
  v84 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v83 = &v82 - v5;
  v86 = sub_100017A54(&qword_1000E57F0, &qword_1000AADD8);
  v6 = __chkstk_darwin(v86);
  v87 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v94 = &v82 - v8;
  v9 = sub_1000A1810();
  v96 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v95 = &v82 - v14;
  __chkstk_darwin(v13);
  v16 = &v82 - v15;
  v17 = sub_100017A54(&qword_1000E8A40, &qword_1000AADE0);
  __chkstk_darwin(v17 - 8);
  v19 = &v82 - v18;
  v20 = type metadata accessor for NewsTimelineEntry(0);
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v90 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v93 = &v82 - v25;
  v89 = v26;
  __chkstk_darwin(v24);
  v28 = &v82 - v27;
  v29 = *(type metadata accessor for TaskContext(0) + 20);
  v91 = a1;
  sub_100028B94(&a1[v29], v19, &qword_1000E8A40, &qword_1000AADE0);
  v88 = v21;
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10001FE6C(v19, &qword_1000E8A40, &qword_1000AADE0);
    sub_10001A9D0();
    v30 = sub_1000A3190();
    v31 = sub_1000A3090();
    sub_1000A1DB0("event-processing sidecar task done, because there is no last entry", 66, 2, &_mh_execute_header, v30, v31, _swiftEmptyArrayStorage);

    sub_100017A54(&unk_1000E5DC0, &qword_1000AADE8);
    swift_allocObject();
    return sub_1000A1BA0();
  }

  else
  {
    sub_10002C47C(v19, v28, type metadata accessor for NewsTimelineEntry);
    sub_1000A1800();
    sub_10002C3D8(&qword_1000E57F8, &protocol conformance descriptor for Date);
    v33 = v16;
    if (sub_1000A2CB0())
    {
      v34 = v9;
      v35 = v93;
      sub_10002C4E4(v28, v93, type metadata accessor for NewsTimelineEntry);
      sub_10001A9D0();
      v36 = sub_1000A3190();
      v37 = sub_1000A3090();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v97 = v39;
        *v38 = 136315138;
        sub_10002C3D8(&qword_1000E5810, &protocol conformance descriptor for Date);
        v40 = sub_1000A3550();
        v41 = v28;
        v43 = v42;
        sub_10002C41C(v35, type metadata accessor for NewsTimelineEntry);
        v44 = sub_10008B5B0(v40, v43, &v97);
        v28 = v41;

        *(v38 + 4) = v44;
        _os_log_impl(&_mh_execute_header, v36, v37, "event-processing sidecar task cannot query because the last entry dated %s is in the future", v38, 0xCu);
        sub_100018720(v39);
      }

      else
      {

        sub_10002C41C(v35, type metadata accessor for NewsTimelineEntry);
      }

      v50 = v96;
      sub_100017A54(&unk_1000E5DC0, &qword_1000AADE8);
      swift_allocObject();
      v51 = sub_1000A1BA0();
      (*(v50 + 1))(v33, v34);
      sub_10002C41C(v28, type metadata accessor for NewsTimelineEntry);
      return v51;
    }

    else
    {
      sub_1000A17B0();
      v45 = sub_1000A2CC0();
      v46 = v96;
      v47 = v9;
      v82 = v28;
      if (v45)
      {
        v48 = v96;
        v49 = v95;
        (*(v96 + 4))(v95, v12, v47);
      }

      else
      {
        (*(v96 + 1))(v12, v9);
        v48 = v46;
        v52 = *(v46 + 2);
        v49 = v95;
        v52(v95, v28, v47);
      }

      result = sub_1000A2CD0();
      if (result)
      {
        v53 = *(v48 + 2);
        v54 = v83;
        v53(v83, v49, v47);
        v55 = v85;
        v53((v54 + *(v85 + 48)), v33, v47);
        v93 = v33;
        v56 = v84;
        sub_100028B94(v54, v84, &qword_1000E57E8, &qword_1000AADD0);
        v57 = *(v55 + 48);
        v58 = *(v48 + 4);
        v59 = v94;
        v58(v94, v56, v47);
        v60 = *(v48 + 1);
        v60(v56 + v57, v47);
        v61 = v54;
        v62 = v87;
        sub_10002BF04(v61, v56);
        v58((v59 + *(v86 + 36)), v56 + *(v55 + 48), v47);
        v96 = v60;
        v60(v56, v47);
        sub_100028B94(v59, v62, &qword_1000E57F0, &qword_1000AADD8);
        sub_10001A9D0();
        v63 = sub_1000A3190();
        v64 = sub_1000A3090();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *v65 = 136446210;
          v97 = 0;
          v98 = 0xE000000000000000;
          v99 = v66;
          sub_1000A3370();
          v100._countAndFlagsBits = 3026478;
          v100._object = 0xE300000000000000;
          sub_1000A2E10(v100);
          sub_1000A3370();
          v67 = v97;
          v68 = v98;
          sub_10001FE6C(v62, &qword_1000E57F0, &qword_1000AADD8);
          v69 = sub_10008B5B0(v67, v68, &v99);

          *(v65 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v63, v64, "event-processing sidecar task will process events in range %{public}s", v65, 0xCu);
          sub_100018720(v66);
        }

        else
        {

          v70 = sub_10001FE6C(v62, &qword_1000E57F0, &qword_1000AADD8);
        }

        __chkstk_darwin(v70);
        v71 = v91;
        v72 = v92;
        v73 = v94;
        *(&v82 - 4) = v92;
        *(&v82 - 3) = v73;
        *(&v82 - 2) = v71;
        sub_100017A54(&qword_1000E5800, &qword_1000AADF0);
        sub_1000A1BF0();

        v74 = sub_1000A1B60();
        sub_100017A54(&qword_1000E5808, &qword_1000AADF8);
        sub_1000A1B80();

        v75 = v82;
        v76 = v90;
        sub_10002C4E4(v82, v90, type metadata accessor for NewsTimelineEntry);
        v77 = (*(v88 + 80) + 24) & ~*(v88 + 80);
        v78 = swift_allocObject();
        *(v78 + 16) = v72;
        sub_10002C47C(v76, v78 + v77, type metadata accessor for NewsTimelineEntry);

        v79 = sub_1000A1B60();
        v80 = sub_1000A1B70();

        v81 = v96;
        v96(v95, v47);
        v81(v93, v47);
        sub_10002C41C(v75, type metadata accessor for NewsTimelineEntry);
        sub_10001FE6C(v73, &qword_1000E57F0, &qword_1000AADD8);
        return v80;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10002BF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E57E8, &qword_1000AADD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002BFA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1000581F4(*a1);
  sub_10002ADB4(v3);
  v5 = v4;

  *a2 = v5;
  return result;
}

uint64_t sub_10002BFF0()
{
  v1 = (type metadata accessor for NewsTimelineEntry(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_1000A1810();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);

  v7 = type metadata accessor for TodayContent(0);
  v8 = v6 + *(v7 + 20);
  v9 = type metadata accessor for Banner(0);
  if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
  {
    v18 = v4;

    v10 = v9[7];
    v11 = sub_1000A1700();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(&v8[v10], 1, v11))
    {
      (*(v12 + 8))(&v8[v10], v11);
    }

    v13 = *&v8[v9[9]];
    if (v13 != 1)
    {
    }

    sub_10002C2D8(*&v8[v9[10]], *&v8[v9[10] + 8]);
    v4 = v18;
  }

  swift_unknownObjectRelease();
  v14 = *(v7 + 36);
  v15 = sub_1000A1700();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v6 + v14, 1, v15))
  {
    (*(v16 + 8))(v6 + v14, v15);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10002C2D8(void *a1, void *a2)
{
}

uint64_t sub_10002C310(uint64_t *a1)
{
  v3 = *(type metadata accessor for NewsTimelineEntry(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *a1;
  sub_100018688((*(v1 + 16) + 96), *(*(v1 + 16) + 120));
  type metadata accessor for SessionReporter();
  return sub_100031214(v5, v1 + v4);
}

uint64_t sub_10002C3D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000A1810();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002C41C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C47C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 sub_10002C558(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002C56C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10002C5B4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_10002C628@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100017A54(&qword_1000E5820, &qword_1000AAEF8);
  __chkstk_darwin(v2 - 8);
  v4 = v21 - v3;
  sub_100017A54(&qword_1000E5828, &qword_1000AAF00);
  inited = swift_initStackObject();
  v21[0] = xmmword_1000AA7C0;
  *(inited + 16) = xmmword_1000AA7C0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100017A54(&qword_1000E5830, &qword_1000AAF08);
  v6 = swift_initStackObject();
  *(v6 + 16) = v21[0];
  *(v6 + 32) = UIFontWeightTrait;
  *(v6 + 40) = UIFontWeightSemibold;
  v7 = UIFontDescriptorTraitsAttribute;
  v8 = UIFontWeightTrait;
  v9 = sub_10006C0CC(v6);
  swift_setDeallocating();
  sub_10001FE6C(v6 + 32, &qword_1000E5838, &qword_1000AAF10);
  *(inited + 64) = sub_100017A54(&qword_1000E5840, &qword_1000AAF18);
  *(inited + 40) = v9;
  sub_10006C1BC(inited);
  swift_setDeallocating();
  sub_10001FE6C(inited + 32, &qword_1000E5848, &qword_1000ADB50);
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline];
  type metadata accessor for AttributeName(0);
  sub_10002CCB0();
  isa = sub_1000A2C50().super.isa;

  v12 = [v10 fontDescriptorByAddingAttributes:isa];

  v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  sub_1000A2430();
  *v4 = sub_1000A2270();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v14 = sub_100017A54(&qword_1000E5850, &qword_1000AAF20);
  sub_10002C978(&v4[*(v14 + 44)]);
  sub_1000A28C0();
  sub_1000A1F60();

  sub_10002CD08(v4, a1);
  v15 = a1 + *(sub_100017A54(&qword_1000E5858, &qword_1000AAF28) + 36);
  result = *(&v21[11] + 8);
  v17 = *(&v21[13] + 8);
  v18 = *(&v21[14] + 8);
  *(v15 + 64) = *(&v21[12] + 8);
  *(v15 + 80) = v17;
  *(v15 + 96) = v18;
  v19 = *(&v21[9] + 8);
  v20 = *(&v21[10] + 8);
  *v15 = *(&v21[8] + 8);
  *(v15 + 16) = v19;
  *(v15 + 32) = v20;
  *(v15 + 48) = result;
  return result;
}

uint64_t sub_10002C978@<X0>(void *a3@<X8>)
{
  v43 = a3;
  v42 = sub_100017A54(&qword_1000E5860, &qword_1000AAF30);
  v36 = *(v42 - 8);
  v3 = v36;
  v4 = __chkstk_darwin(v42);
  v41 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_1000A24C0();
  v10 = v9;
  v12 = v11;
  v13 = sub_1000A2480();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_100028640(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v44 = v13;
  v45 = v15;
  v17 &= 1u;
  LOBYTE(v46) = v17;
  v47 = v19;
  v48 = KeyPath;
  LOBYTE(v49) = 1;
  sub_100017A54(&qword_1000E5868, &qword_1000AAF68);
  sub_10002CDCC();
  v35 = v7;
  sub_1000A25A0();
  sub_100028640(v13, v15, v17);

  sub_1000A28C0();
  sub_1000A1E90();
  v39 = v46;
  v40 = v44;
  v37 = v49;
  v38 = v48;
  v52 = 1;
  v51 = v45;
  v50 = v47;
  v21 = *(v3 + 16);
  v22 = v41;
  v23 = v7;
  v24 = v42;
  v21(v41, v23, v42);
  v25 = v52;
  LOBYTE(v15) = v51;
  LOBYTE(v3) = v50;
  v26 = v43;
  *v43 = 0;
  *(v26 + 8) = 1;
  v27 = sub_100017A54(&qword_1000E5888, &qword_1000AAF78);
  v28 = v24;
  v21(v26 + *(v27 + 48), v22, v24);
  v29 = v26 + *(v27 + 64);
  *v29 = 0;
  v29[8] = v25;
  v30 = v39;
  *(v29 + 2) = v40;
  v29[24] = v15;
  *(v29 + 4) = v30;
  v29[40] = v3;
  v31 = v37;
  *(v29 + 6) = v38;
  *(v29 + 7) = v31;
  v32 = *(v36 + 8);
  v32(v35, v28);
  return (v32)(v22, v28);
}

unint64_t sub_10002CCB0()
{
  result = qword_1000E4DB0;
  if (!qword_1000E4DB0)
  {
    type metadata accessor for AttributeName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E4DB0);
  }

  return result;
}

uint64_t sub_10002CD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E5820, &qword_1000AAEF8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CD78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A2070();
  *a1 = result;
  return result;
}

unint64_t sub_10002CDCC()
{
  result = qword_1000E5870;
  if (!qword_1000E5870)
  {
    sub_100017A9C(&qword_1000E5868, &qword_1000AAF68);
    sub_100029050(&qword_1000E5878, &qword_1000E5880, &qword_1000AAF70, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5870);
  }

  return result;
}

unint64_t sub_10002CE88()
{
  result = qword_1000E5890;
  if (!qword_1000E5890)
  {
    sub_100017A9C(&qword_1000E5858, &qword_1000AAF28);
    sub_100029050(&qword_1000E5898, &qword_1000E5820, &qword_1000AAEF8, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5890);
  }

  return result;
}

uint64_t sub_10002CF40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100018688(a1, a1[3]);
  v3 = type metadata accessor for NTTodayContextResultsService();
  result = sub_1000A1A00();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_1000DA0B8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10002CFB4(void *a1)
{
  v2 = sub_1000A1700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E5A90, &unk_1000AB028);
  result = sub_1000A1A00();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  sub_1000A16C0();

  sub_1000A1670(v9);
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E5A28, FCNetworkBehaviorMonitor_ptr);
  result = sub_1000A1A00();
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() nt_contentContextWithConfigurationManager:v7 contentHostDirectory:v11 networkBehaviorMonitor:result];
    swift_unknownObjectRelease();

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10002D184(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &unk_1000E5AA0, off_1000D5820);
  result = sub_1000A1A00();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_10002D1E8(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &unk_1000E5AA0, off_1000D5820);
  result = sub_1000A1A00();
  if (result)
  {
    v2 = result;
    v3 = [result asWidgetUpdateEventTracker];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10002D270(void *a1)
{
  v2 = sub_1000A30D0();
  __chkstk_darwin(v2);
  v3 = sub_1000A30E0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A2930();
  __chkstk_darwin(v7 - 8);
  sub_100028E34(0, &qword_1000E87E0, OS_dispatch_queue_ptr);
  sub_1000A2920();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v15[1] = _swiftEmptyArrayStorage;
  sub_10002E52C();
  sub_100017A54(&qword_1000E5AE8, &unk_1000AD340);
  sub_10002E584();
  sub_1000A3230();
  v8 = sub_1000A3120();
  sub_100018688(a1, a1[3]);
  sub_100017A54(&unk_1000E59A0, qword_1000B00F0);
  result = sub_1000A1A00();
  if (result)
  {
    v10 = result;
    sub_100018688(a1, a1[3]);
    sub_100017A54(&qword_1000E5AF8, &unk_1000AB078);
    result = sub_1000A1A00();
    if (result)
    {
      v11 = result;
      sub_100018688(a1, a1[3]);
      sub_100017A54(&unk_1000E5B00, &qword_1000AB088);
      sub_1000A29B0();
      sub_1000A29A0();
      v12 = sub_1000A19E0();

      v13 = [objc_allocWithZone(FCAsyncSerialQueue) init];
      v14 = [objc_allocWithZone(NTTodayContext) initWithContentContext:v10 feedPersonalizerFactory:v11 groupingService:0 todayBannerValidator:0 articleExposureRegistry:v12 processVariant:0 accessQueue:v8 fetchQueue:v13];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

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

id sub_10002D5FC(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&unk_1000E59A0, qword_1000B00F0);
  result = sub_1000A1A00();
  if (result)
  {
    v2 = [result news_core_ConfigurationManager];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10002D684()
{
  v0 = objc_allocWithZone(FCNetworkBehaviorMonitor);

  return [v0 initWithOptions:7 cacheDirectory:0];
}

void *sub_10002D6D0(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E5A18, NTTodayContext_ptr);
  result = sub_1000A1A00();
  if (result)
  {
    v2 = result;
    type metadata accessor for NTTodayContextResultsService();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = 0;
    result[4] = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10002D754(void *a1)
{
  v2 = sub_100017A54(&unk_1000E5DD0, &unk_1000AB260);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  v5 = FCBundle();
  if (!v5)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = v5;
  v7 = sub_1000A2D10();
  v8 = [v6 objectForInfoDictionaryKey:v7];

  if (v8)
  {
    sub_1000A3210();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v9 = 0x6E776F6E6B6E55;
  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v34;
      goto LABEL_10;
    }
  }

  else
  {
    sub_10002E4C4(&v37);
  }

  v10 = 0xE700000000000000;
LABEL_10:
  v11 = FCBundle();
  if (!v11)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11;
  v13 = sub_1000A2D10();
  v14 = [v12 objectForInfoDictionaryKey:v13];

  if (v14)
  {
    sub_1000A3210();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v33[4];
      v15 = v34;
      goto LABEL_19;
    }
  }

  else
  {
    sub_10002E4C4(&v37);
  }

  v15 = 0xE700000000000000;
LABEL_19:
  v33[1] = v15;
  v16 = [objc_opt_self() defaultConfiguration];
  v17 = 1;
  v18 = FCURLForContainerizedUserAccountCachesDirectory();
  v33[2] = v10;
  v33[3] = v9;
  if (v18)
  {
    v19 = v18;
    sub_1000A16C0();

    v17 = 0;
  }

  v20 = sub_1000A1700();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v4, v17, 1, v20);
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E5A98, &qword_1000AB038);
  v22 = sub_1000A1A00();
  if (!v22)
  {
    goto LABEL_30;
  }

  v23 = v22;
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E5A28, FCNetworkBehaviorMonitor_ptr);
  v24 = sub_1000A1A00();
  if (!v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = v24;
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    v27 = 0;
  }

  else
  {
    sub_1000A1670(v26);
    v27 = v28;
    (*(v21 + 8))(v4, v20);
  }

  v29 = objc_allocWithZone(FCConfigurationManager);
  v30 = sub_1000A2D10();
  v31 = sub_1000A2D10();
  v32 = [v29 initWithContextConfiguration:v16 contentHostDirectoryFileURL:v27 feldsparIDProvider:v23 appShortVersionString:v30 buildNumberString:v31 networkBehaviorMonitor:v25];

  swift_unknownObjectRelease();
  if (v32)
  {

    return;
  }

LABEL_32:
  __break(1u);
}

id sub_10002DBE0()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

id sub_10002DC20(void *a1)
{
  sub_100017A54(&qword_1000E88F0, &unk_1000AB040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000AAF80;
  sub_100018688(a1, a1[3]);
  sub_100017A54(&unk_1000E5C10, &unk_1000AF040);
  result = sub_1000A19E0();
  if (result)
  {
    *(v2 + 32) = result;
    sub_100018688(a1, a1[3]);
    sub_100028E34(0, &unk_1000E5AB0, off_1000D5838);
    result = sub_1000A1A00();
    if (result)
    {
      *(v2 + 40) = result;
      v4 = objc_allocWithZone(FTAggregateWidgetEventTracker);
      sub_100017A54(&unk_1000E5AC0, &unk_1000AB050);
      isa = sub_1000A2F00().super.isa;

      v6 = [v4 initWithEventTrackers:isa];

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_10002DDA8()
{
  v0 = sub_1000A1B50();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1A60();
  sub_100017A54(&qword_1000E9290, qword_1000AAFD8);
  sub_1000A1AE0();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_1000A1960();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1000A1A60();
  sub_100017A54(&unk_1000E59A0, qword_1000B00F0);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A60();
  sub_100017A54(&unk_1000E5C10, &unk_1000AF040);
  sub_1000A1AD0();

  sub_1000A1A60();
  sub_100017A54(&qword_1000E5A10, &unk_1000B00E0);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A60();
  sub_100028E34(0, &qword_1000E5A18, NTTodayContext_ptr);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A60();
  sub_100017A54(&qword_1000E5A20, &unk_1000AB018);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A60();
  sub_100028E34(0, &qword_1000E5A28, FCNetworkBehaviorMonitor_ptr);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A60();
  type metadata accessor for FCFeedPersonalizationConfigurationSet(0);
  sub_1000A1AE0();

  sub_1000A1A70();
  type metadata accessor for NTTodayContextResultsService();
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A70();
  sub_100017A54(&qword_1000E5A90, &unk_1000AB028);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A70();
  sub_100017A54(&qword_1000E5A98, &qword_1000AB038);
  sub_1000A1AD0();

  v5(v3, v4, v0);
  sub_1000A1960();

  v6(v3, v0);
  sub_1000A1A70();
  sub_100028E34(0, &unk_1000E5AA0, off_1000D5820);
  sub_1000A1AD0();

  return result;
}

uint64_t sub_10002E4C4(uint64_t a1)
{
  v2 = sub_100017A54(&unk_1000E5AD0, qword_1000AB060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002E52C()
{
  result = qword_1000E5AE0;
  if (!qword_1000E5AE0)
  {
    sub_1000A30D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5AE0);
  }

  return result;
}

unint64_t sub_10002E584()
{
  result = qword_1000E5AF0;
  if (!qword_1000E5AF0)
  {
    sub_100017A9C(&qword_1000E5AE8, &unk_1000AD340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E5AF0);
  }

  return result;
}

uint64_t sub_10002E614@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100017A54(&qword_1000E5B18, &qword_1000AB120);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v19 - v9;
  v19[1] = a1;
  sub_1000A2560();
  if (qword_1000E46E8 != -1)
  {
    swift_once();
  }

  v11 = [qword_1000F1BB0 imageWithRenderingMode:2];
  v12 = sub_1000A2750();
  v13 = sub_1000A26E0();
  KeyPath = swift_getKeyPath();
  v15 = *(v5 + 16);
  v15(v8, v10, v4);
  v15(a2, v8, v4);
  v16 = &a2[*(sub_100017A54(&qword_1000E5B20, &qword_1000AB158) + 48)];
  *v16 = v12;
  *(v16 + 1) = KeyPath;
  *(v16 + 2) = v13;
  v17 = *(v5 + 8);

  v17(v10, v4);

  return (v17)(v8, v4);
}