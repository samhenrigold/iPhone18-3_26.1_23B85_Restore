Swift::Int sub_100022D80()
{
  sub_10006CDCC();
  sub_10006CB9C();

  return sub_10006CDFC();
}

uint64_t sub_100022E44(uint64_t a1)
{
  sub_10006CB9C();
}

Swift::Int sub_100022EF4()
{
  sub_10006CDCC();
  sub_10006CB9C();

  return sub_10006CDFC();
}

unint64_t sub_100022FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100025714(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100022FE4(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006B63;
  v3 = 0x6F6C63646C726F77;
  v4 = 0xE500000000000000;
  v5 = 0x72656D6974;
  if (*v1 != 2)
  {
    v5 = 0x63746177706F7473;
    v4 = 0xE900000000000068;
  }

  if (*v1)
  {
    v3 = 0x6D72616C61;
    v2 = 0xE500000000000000;
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

uint64_t sub_100023064(uint64_t a1)
{
  sub_100026370();
  v2 = sub_10006B65C();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_10002310C(uint64_t a1)
{
  v2 = sub_100025760();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100023158(uint64_t a1)
{
  v2 = sub_100025E08();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t (*sub_10002321C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006B5EC();
  return sub_100026428;
}

uint64_t sub_100023290()
{
  v17 = sub_10006B70C();
  v0 = *(v17 - 8);
  __chkstk_darwin(v17);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089B50, &qword_10007ADB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v17 - v7;
  v9 = sub_100003500(&qword_100089B58, &qword_10007ADB8);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_10006B8CC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003500(&qword_100089B60, &qword_10007ADC0);
  sub_10006B8AC();
  (*(v13 + 56))(v11, 1, 1, v12);
  v18 = 4;
  v14 = sub_10006B5DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17);
  sub_100025760();
  return sub_10006B62C();
}

uint64_t sub_1000235BC()
{
  v0 = sub_10006B75C();
  sub_1000263C4(v0, qword_10008FFE0);
  v1 = sub_100022560(v0, qword_10008FFE0);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_10002367C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008D990 != -1)
  {
    swift_once();
  }

  v2 = sub_10006B75C();
  v3 = sub_100022560(v2, qword_10008FFE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100023734(int a1)
{
  v20 = a1;
  v19 = sub_10006B70C();
  v1 = *(v19 - 8);
  __chkstk_darwin(v19);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003500(&qword_100089B50, &qword_10007ADB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  v10 = sub_100003500(&qword_100089B58, &qword_10007ADB8);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_10006B8CC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  sub_100003500(&qword_100089B60, &qword_10007ADC0);
  sub_10006B8AC();
  (*(v14 + 56))(v12, 1, 1, v13);
  v22 = 4;
  v15 = sub_10006B5DC();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  v16(v6, 1, 1, v15);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v19);
  sub_100025760();
  v17 = sub_10006B62C();
  v21 = v20;

  sub_10006B60C();

  return v17;
}

uint64_t sub_100023A64@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_100003500(&qword_100089B58, &qword_10007ADB8);
  __chkstk_darwin(v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_10006B8BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10006BC3C();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10006CB5C();
  __chkstk_darwin(v8 - 8);
  v16 = sub_10006B8CC();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  sub_10006CB4C();
  sub_10006BC0C();
  v10 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v11 = *(v4 + 104);
  v11(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10006B8DC();
  sub_10006CB4C();
  sub_10006BC0C();
  v11(v6, v10, v3);
  v12 = v17;
  sub_10006B8DC();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_10006B64C();
  v14 = sub_10006B63C();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_100023DE4()
{
  v0 = sub_10006B8CC();
  sub_1000263C4(v0, qword_10008FFF8);
  sub_100022560(v0, qword_10008FFF8);
  return sub_10006B8AC();
}

uint64_t sub_100023E8C(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_100022560(v5, a3);
}

uint64_t sub_100023F24@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100022560(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_100024010(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = sub_100022560(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t (*sub_1000240FC(uint64_t a1))()
{
  if (qword_10008D998[0] != -1)
  {
    swift_once();
  }

  v1 = sub_10006B8CC();
  sub_100022560(v1, qword_10008FFF8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100024190()
{
  v0 = sub_100003500(&qword_100089B70, &qword_10007ADC8);
  __chkstk_darwin(v0 - 8);
  sub_100025AE0();
  sub_10006B6DC();
  return sub_10006B6CC();
}

void *sub_100024274@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006B5FC();
  *a1 = v3;
  return result;
}

uint64_t (*sub_1000242E8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_10006B5EC();
  return sub_10002435C;
}

void sub_100024360(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1000243AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001F480();
  v5 = sub_100026370();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100024458@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_100022560(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_100024510(uint64_t a1)
{
  v2 = sub_10001F480();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_100024550(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003500(&qword_100089B70, &qword_10007ADC8);
  __chkstk_darwin(v2 - 8);
  sub_10006B6DC();
  return sub_10006B6CC();
}

uint64_t sub_100024628(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10001F480();
  v6 = sub_10002631C();
  v7 = sub_100026370();
  *v4 = v2;
  v4[1] = sub_1000246F4;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1000246F4()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000247FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000257B4();
  *a1 = result;
  return result;
}

uint64_t sub_100024824(uint64_t a1, __n128 a2)
{
  v3 = sub_100025AE0();

  return static AppIntent.persistentIdentifier.getter(a1, v3);
}

unint64_t sub_100024860(uint64_t a1)
{
  v1 = a1;
  sub_10006CDCC();
  sub_10006CB9C();

  v2 = sub_10006CDFC();

  return sub_10002494C(v1, v2);
}

unint64_t sub_10002494C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x72656D6974 : 0x63746177706F7473;
      v8 = v6 == 2 ? 0xE500000000000000 : 0xE900000000000068;
      v9 = *(*(v23 + 48) + v4) ? 0x6D72616C61 : 0x6F6C63646C726F77;
      v10 = *(*(v23 + 48) + v4) ? 0xE500000000000000 : 0xEA00000000006B63;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x72656D6974 : 0x63746177706F7473;
      v14 = v5 == 2 ? 0xE500000000000000 : 0xE900000000000068;
      v15 = v5 ? 0x6D72616C61 : 0x6F6C63646C726F77;
      v16 = v5 ? 0xE500000000000000 : 0xEA00000000006B63;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_10006CDAC();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100024AF8(uint64_t a1)
{
  v2 = sub_100003500(&qword_100089C58, &qword_10007B338);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003500(&qword_100089C60, &qword_10007B340);
    v7 = sub_10006CD7C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009264(v9, v5, &qword_100089C58, &qword_10007B338);
      v11 = *v5;
      result = sub_100024860(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100003500(&qword_100089C68, &qword_10007B348);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024CEC(uint64_t a1)
{
  v2 = sub_100003500(&qword_100089C40, &qword_10007B320);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003500(&qword_100089C48, &qword_10007B328);
    v7 = sub_10006CD7C();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100009264(v9, v5, &qword_100089C40, &qword_10007B320);
      v11 = *v5;
      result = sub_100024860(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_10006B69C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100024ED4()
{
  v0 = sub_100003500(&qword_100089C30, &qword_10007B310);
  __chkstk_darwin(v0 - 8);
  v43 = &v39 - v1;
  v2 = sub_100003500(&qword_100089B58, &qword_10007ADB8);
  __chkstk_darwin(v2 - 8);
  v55 = &v39 - v3;
  v59 = sub_10006B8BC();
  v4 = *(v59 - 8);
  __chkstk_darwin(v59);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10006BC3C();
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10006CB5C();
  __chkstk_darwin(v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10006B8CC();
  v13 = *(v60 - 8);
  __chkstk_darwin(v60);
  sub_100003500(&qword_100089C38, &qword_10007B318);
  v14 = sub_100003500(&qword_100089C40, &qword_10007B320);
  v56 = v14;
  v15 = *(v14 - 8);
  v51 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v44 = v17;
  *(v17 + 16) = xmmword_100079940;
  v42 = *(v14 + 48);
  *(v17 + v16) = 0;
  v18 = v17 + v16;
  sub_10006CB4C();
  sub_10006BC0C();
  v58 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v50 = *(v4 + 104);
  v57 = v4 + 104;
  v46 = v6;
  v19 = v59;
  v50(v6);
  sub_10006B8DC();
  v20 = *(v13 + 56);
  v48 = v13 + 56;
  v49 = v20;
  v21 = v55;
  v20(v55, 1, 1, v60);
  v22 = v43;
  sub_10006B66C();
  v52 = sub_10006B67C();
  v23 = *(v52 - 8);
  v53 = *(v23 + 56);
  v54 = v23 + 56;
  v53(v22, 0, 1, v52);
  v47 = v18;
  sub_10006B68C();
  v24 = v51;
  v25 = v56;
  v42 = *(v56 + 48);
  *(v18 + v51) = 1;
  v45 = v12;
  sub_10006CB4C();
  v39 = v9;
  sub_10006BC0C();
  v26 = v19;
  v27 = v50;
  (v50)(v46, v58, v26);
  sub_10006B8DC();
  v28 = v21;
  v29 = v60;
  v30 = v49;
  v49(v28, 1, 1, v60);
  sub_10006B66C();
  v53(v22, 0, 1, v52);
  sub_10006B68C();
  v42 = 2 * v24;
  v31 = v47;
  v40 = (v47 + 2 * v24);
  v41 = *(v25 + 48);
  *v40 = 3;
  sub_10006CB4C();
  sub_10006BC0C();
  v32 = v46;
  (v27)(v46, v58, v59);
  sub_10006B8DC();
  v33 = v55;
  v30(v55, 1, 1, v29);
  sub_10006B66C();
  v34 = v52;
  v35 = v53;
  v53(v22, 0, 1, v52);
  sub_10006B68C();
  v36 = (v31 + v42 + v51);
  v51 = *(v56 + 48);
  *v36 = 2;
  sub_10006CB4C();
  sub_10006BC0C();
  (v50)(v32, v58, v59);
  sub_10006B8DC();
  v49(v33, 1, 1, v60);
  sub_10006B66C();
  v35(v22, 0, 1, v34);
  sub_10006B68C();
  v37 = sub_100024CEC(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v37;
}

unint64_t sub_100025714(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100086B80;
  v6._object = a2;
  v4 = sub_10006CD8C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100025760()
{
  result = qword_100089B68;
  if (!qword_100089B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B68);
  }

  return result;
}

uint64_t sub_1000257B4()
{
  v18 = sub_10006B70C();
  v0 = *(v18 - 8);
  __chkstk_darwin(v18);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089B50, &qword_10007ADB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  v9 = sub_100003500(&qword_100089B58, &qword_10007ADB8);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_10006B8CC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100003500(&qword_100089B60, &qword_10007ADC0);
  sub_10006B8AC();
  (*(v13 + 56))(v11, 1, 1, v12);
  v20 = 4;
  v14 = sub_10006B5DC();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v18);
  sub_100025760();
  v16 = sub_10006B62C();
  v19 = 3;

  sub_10006B60C();

  return v16;
}

unint64_t sub_100025AE0()
{
  result = qword_100089B78;
  if (!qword_100089B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B78);
  }

  return result;
}

unint64_t sub_100025B38()
{
  result = qword_100089B80;
  if (!qword_100089B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B80);
  }

  return result;
}

unint64_t sub_100025B90()
{
  result = qword_100089B88;
  if (!qword_100089B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B88);
  }

  return result;
}

unint64_t sub_100025BE8()
{
  result = qword_100089B90;
  if (!qword_100089B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B90);
  }

  return result;
}

unint64_t sub_100025C40()
{
  result = qword_100089B98;
  if (!qword_100089B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089B98);
  }

  return result;
}

unint64_t sub_100025CA8()
{
  result = qword_100089BA0;
  if (!qword_100089BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BA0);
  }

  return result;
}

unint64_t sub_100025D00()
{
  result = qword_100089BA8;
  if (!qword_100089BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BA8);
  }

  return result;
}

unint64_t sub_100025D58()
{
  result = qword_100089BB0;
  if (!qword_100089BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BB0);
  }

  return result;
}

unint64_t sub_100025DB0()
{
  result = qword_100089BB8;
  if (!qword_100089BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BB8);
  }

  return result;
}

unint64_t sub_100025E08()
{
  result = qword_100089BC0;
  if (!qword_100089BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BC0);
  }

  return result;
}

unint64_t sub_100025EB0()
{
  result = qword_100089BC8;
  if (!qword_100089BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BC8);
  }

  return result;
}

unint64_t sub_100025F08()
{
  result = qword_100089BD0;
  if (!qword_100089BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BD0);
  }

  return result;
}

unint64_t sub_100025F60()
{
  result = qword_100089BD8;
  if (!qword_100089BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BD8);
  }

  return result;
}

unint64_t sub_100025FFC()
{
  result = qword_100089BF0;
  if (!qword_100089BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BF0);
  }

  return result;
}

unint64_t sub_100026058()
{
  result = qword_100089BF8;
  if (!qword_100089BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089BF8);
  }

  return result;
}

unint64_t sub_1000260B0()
{
  result = qword_100089C00;
  if (!qword_100089C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089C00);
  }

  return result;
}

unint64_t sub_100026108()
{
  result = qword_100089C08;
  if (!qword_100089C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089C08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ClockDestination(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClockDestination(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10002631C()
{
  result = qword_100089C20;
  if (!qword_100089C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089C20);
  }

  return result;
}

unint64_t sub_100026370()
{
  result = qword_100089C28;
  if (!qword_100089C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089C28);
  }

  return result;
}

uint64_t *sub_1000263C4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10002643C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10006CC6C();
  v8 = sub_10006CB0C();
  result = sub_10006CC4C();
  if (result < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = result;
  if (result)
  {
    v6 = 1;
    do
    {
      if (v6 % a1)
      {
        if (v5 == v6)
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = v6 - a1;
        if (__OFSUB__(v6, a1))
        {
          goto LABEL_15;
        }

        if (v6 < result)
        {
          goto LABEL_16;
        }

        sub_10006CC8C();
        sub_10006CD0C();
        swift_getWitnessTable();
        sub_10006CC7C();
        sub_10006CC6C();
        result = sub_10006CC5C();
        if (v5 == v6)
        {
          return v8;
        }
      }
    }

    while (!__OFADD__(v6++, 1));
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  sub_10006CC8C();
  sub_10006CD0C();
  swift_getWitnessTable();
  sub_10006CC7C();
  sub_10006CC6C();
  sub_10006CC5C();
  return v8;
}

uint64_t sub_100026608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26[2] = a1;
  v27 = a2;
  v2 = sub_10006BCDC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v6 - 8);
  v8 = v26 - v7;
  v9 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v9 - 8);
  v11 = v26 - v10;
  v12 = sub_100003500(&qword_100089C70, &qword_10007B9C0);
  __chkstk_darwin(v12 - 8);
  v14 = v26 - v13;
  v15 = sub_10006B7EC();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 56))(v14, 1, 1, v2, v17);
  v20 = sub_10006BD3C();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = v26[1];
  sub_10006B7DC();
  sub_10006B77C();
  sub_10006BCBC();
  sub_10006BCAC();
  (*(v3 + 8))(v5, v2);
  (*(v16 + 8))(v19, v15);
  v22 = sub_10006BB7C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v8, 1, v22) != 1)
  {
    return (*(v23 + 32))(v27, v8, v22);
  }

  (*(v23 + 16))(v27, v21, v22);
  result = (v24)(v8, 1, v22);
  if (result != 1)
  {
    return sub_100009204(v8, &qword_1000887E8, &qword_1000795A0);
  }

  return result;
}

uint64_t sub_100026A4C()
{
  v0 = sub_10006BD3C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006BB7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BB6C();
  v8 = sub_10006BCFC();
  v9 = *(v5 + 8);
  v9(v7, v4);
  sub_10006BD2C();
  sub_10006BB6C();
  v10 = sub_10006BCFC();
  v9(v7, v4);
  result = (*(v1 + 8))(v3, v0);
  if (!__OFSUB__(v8, v10))
  {
    return sub_10006BAFC();
  }

  __break(1u);
  return result;
}

uint64_t sub_100026C20(uint64_t a1)
{
  v13[1] = a1;
  v1 = sub_10006BD3C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006BB7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006BB6C();
  v9 = sub_10006BCFC();
  v10 = *(v6 + 8);
  v10(v8, v5);
  sub_10006BD2C();
  sub_10006BB6C();
  v11 = sub_10006BCFC();
  v10(v8, v5);
  result = (*(v2 + 8))(v4, v1);
  if (!__OFSUB__(v9, v11))
  {
    return sub_10006BAFC();
  }

  __break(1u);
  return result;
}

uint64_t sub_100026DF4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(NSDateFormatter) init];
  v3 = sub_10006CB6C();
  [v2 setDateFormat:v3];

  isa = sub_10006BD0C().super.isa;
  [v2 setTimeZone:isa];

  v5 = sub_10006BB1C().super.isa;
  v6 = [v2 stringFromDate:v5];

  v7 = sub_10006CB7C();
  return v7;
}

uint64_t sub_100026F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100003500(&qword_100088B58, &qword_100079D00);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_10006C1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CapMaxContentSizeCategory(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7, v12);
  sub_100010438();
  sub_10001049C(v6, v10, v14);
  sub_10006C6FC();
  return sub_100027124(v14);
}

uint64_t sub_100027124(uint64_t a1)
{
  v2 = type metadata accessor for CapMaxContentSizeCategory(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027180()
{
  v0 = sub_10006BC3C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  sub_10006BC0C();
  sub_10006BBCC();
  (*(v1 + 8))(v3, v0);
  v5 = sub_10006CB6C();

  v6 = [v4 numberingSystemForLocaleID:v5];

  if (!v6)
  {
    return 0;
  }

  v7 = sub_10006CB7C();
  v9 = v8;

  v10 = v7 == 1853120876 && v9 == 0xE400000000000000;
  if (!v10 && (sub_10006CDAC() & 1) == 0)
  {
    v12 = v7 == 1650553441 && v9 == 0xE400000000000000;
    if (v12 || (sub_10006CDAC() & 1) != 0)
    {

      return 1;
    }

    v13 = v7 == 1735288162 && v9 == 0xE400000000000000;
    if (v13 || (sub_10006CDAC() & 1) != 0)
    {

      return 2;
    }

    v14 = v7 == 1635149156 && v9 == 0xE400000000000000;
    if (v14 || (sub_10006CDAC() & 1) != 0)
    {

      return 3;
    }

    if (v7 == 1919579495 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 4;
    }

    if (v7 == 1970435431 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 5;
    }

    if (v7 == 1633971819 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 6;
    }

    if (v7 == 1919772779 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 7;
    }

    if (v7 == 1836674157 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 8;
    }

    if (v7 == 1768256621 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 9;
    }

    if (v7 == 1919777133 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 10;
    }

    if (v7 == 1801677935 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 11;
    }

    if (v7 == 1635349103 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 12;
    }

    if (v7 == 0x6365646C6D6174 && v9 == 0xE700000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 13;
    }

    if (v7 == 1970038132 && v9 == 0xE400000000000000 || (sub_10006CDAC() & 1) != 0)
    {

      return 14;
    }

    if (v7 == 0x74786562617261 && v9 == 0xE700000000000000)
    {
    }

    else
    {
      v15 = sub_10006CDAC();

      if ((v15 & 1) == 0)
      {
        return 0;
      }
    }

    return 15;
  }

  return 0;
}

uint64_t sub_10002776C(char a1)
{
  result = 1853120876;
  switch(a1)
  {
    case 1:
      result = 1650553441;
      break;
    case 2:
      result = 1735288162;
      break;
    case 3:
      result = 1635149156;
      break;
    case 4:
      result = 1919579495;
      break;
    case 5:
      result = 1970435431;
      break;
    case 6:
      result = 1633971819;
      break;
    case 7:
      result = 1919772779;
      break;
    case 8:
      result = 1836674157;
      break;
    case 9:
      result = 1768256621;
      break;
    case 10:
      result = 1919777133;
      break;
    case 11:
      result = 1801677935;
      break;
    case 12:
      result = 1635349103;
      break;
    case 13:
      result = 0x6365646C6D6174;
      break;
    case 14:
      result = 1970038132;
      break;
    case 15:
      result = 0x74786562617261;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000278D0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10002776C(*a1);
  v5 = v4;
  if (v3 == sub_10002776C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10006CDAC();
  }

  return v8 & 1;
}

Swift::Int sub_100027958()
{
  v1 = *v0;
  sub_10006CDCC();
  sub_10002776C(v1);
  sub_10006CB9C();

  return sub_10006CDFC();
}

uint64_t sub_1000279BC(uint64_t a1)
{
  sub_10002776C(*v1);
  sub_10006CB9C();
}

Swift::Int sub_100027A10()
{
  v1 = *v0;
  sub_10006CDCC();
  sub_10002776C(v1);
  sub_10006CB9C();

  return sub_10006CDFC();
}

unint64_t sub_100027A70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10002B264(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_100027AA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002776C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100027ACC()
{
  v0 = sub_10006BE1C();
  sub_1000263C4(v0, qword_100090010);
  sub_100022560(v0, qword_100090010);
  return sub_10006BE0C();
}

uint64_t sub_100027B78@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008E420 != -1)
  {
    swift_once();
  }

  v2 = sub_10006BE1C();
  v3 = sub_100022560(v2, qword_100090010);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_100027C20(uint64_t a1, unint64_t a2)
{
  if (qword_10008E420 != -1)
  {
    swift_once();
  }

  v4 = sub_10006BE1C();
  sub_100022560(v4, qword_100090010);

  oslog = sub_10006BDFC();
  v5 = sub_10006CCDC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10002ACBC(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, oslog, v5, "WorldClockWidget: %s", v6, 0xCu);
    sub_10002B2B0(v7);
  }
}

uint64_t sub_100027D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v50 = a2;
  v2 = sub_10006BCDC();
  __chkstk_darwin(v2 - 8);
  v48 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006BD3C();
  v46 = *(v4 - 8);
  v47 = v4;
  __chkstk_darwin(v4);
  v45 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_100089C78, &qword_10007B3C8);
  __chkstk_darwin(v6 - 8);
  v44 = &v33 - v7;
  v8 = sub_10006BADC();
  __chkstk_darwin(v8 - 8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10006BA1C();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10006BA3C();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v37 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10006BA0C();
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin(v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_10006B95C();
  v15 = *(v34 - 8);
  __chkstk_darwin(v34);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10006B98C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10006B99C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10006BABC();
  __chkstk_darwin(v26 - 8);
  sub_10006BAAC();
  v51._countAndFlagsBits = 0;
  v51._object = 0xE000000000000000;
  sub_10006BA9C(v51);
  sub_10006B97C();
  sub_10006B94C();
  sub_10006B96C();
  (*(v15 + 8))(v17, v34);
  (*(v19 + 8))(v21, v18);
  sub_10006BA6C();
  (*(v23 + 8))(v25, v22);
  v52._countAndFlagsBits = 58;
  v52._object = 0xE100000000000000;
  sub_10006BA9C(v52);
  sub_10006B9FC();
  sub_10006BA7C();
  (*(v35 + 8))(v14, v36);
  v53._countAndFlagsBits = 0;
  v53._object = 0xE000000000000000;
  sub_10006BA9C(v53);
  v28 = v38;
  v27 = v39;
  v29 = v41;
  (*(v39 + 104))(v38, enum case for Date.FormatStyle.Symbol.DayPeriod.Width.abbreviated(_:), v41);
  v30 = v37;
  sub_10006BA2C();
  (*(v27 + 8))(v28, v29);
  sub_10006BA8C();
  (*(v40 + 8))(v30, v42);
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  sub_10006BA9C(v54);
  sub_10006BACC();
  v31 = sub_10006BC3C();
  (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
  (*(v46 + 16))(v45, v49, v47);
  sub_10006BCBC();
  return sub_10006BB0C();
}

uint64_t sub_100028420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v2 = sub_10006BCDC();
  __chkstk_darwin(v2 - 8);
  v36 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006BD3C();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_100089C78, &qword_10007B3C8);
  __chkstk_darwin(v6 - 8);
  v32 = &v27 - v7;
  v8 = sub_10006BADC();
  __chkstk_darwin(v8 - 8);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10006BA0C();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10006B95C();
  v13 = *(v28 - 8);
  __chkstk_darwin(v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10006B98C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10006B99C();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10006BABC();
  __chkstk_darwin(v24 - 8);
  sub_10006BAAC();
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  sub_10006BA9C(v39);
  sub_10006B97C();
  sub_10006B94C();
  sub_10006B96C();
  (*(v13 + 8))(v15, v28);
  (*(v17 + 8))(v19, v16);
  sub_10006BA6C();
  (*(v21 + 8))(v23, v20);
  v40._countAndFlagsBits = 58;
  v40._object = 0xE100000000000000;
  sub_10006BA9C(v40);
  sub_10006B9FC();
  sub_10006BA7C();
  (*(v29 + 8))(v12, v30);
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_10006BA9C(v41);
  sub_10006BACC();
  v25 = sub_10006BC3C();
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  (*(v34 + 16))(v33, v37, v35);
  sub_10006BCBC();
  return sub_10006BB0C();
}

uint64_t sub_100028944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v32 = a2;
  v31 = sub_10006BC4C();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006BCDC();
  __chkstk_darwin(v4 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10006BD3C();
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003500(&qword_100089C78, &qword_10007B3C8);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_10006BADC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10006BA1C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10006BA3C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10006BABC();
  __chkstk_darwin(v20 - 8);
  sub_10006BAAC();
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  sub_10006BA9C(v33);
  (*(v13 + 104))(v15, enum case for Date.FormatStyle.Symbol.DayPeriod.Width.abbreviated(_:), v12);
  sub_10006BA2C();
  (*(v13 + 8))(v15, v12);
  sub_10006BA8C();
  (*(v17 + 8))(v19, v16);
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_10006BA9C(v34);
  sub_10006BACC();
  sub_10006BC0C();
  v21 = sub_10006BC3C();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  (*(v26 + 16))(v25, v30, v27);
  v22 = v29;
  v23 = v31;
  (*(v29 + 104))(v3, enum case for Calendar.Identifier.gregorian(_:), v31);
  sub_10006BC5C();
  (*(v22 + 8))(v3, v23);
  return sub_10006BB0C();
}

uint64_t sub_100028E08()
{
  v0 = sub_10006BBDC();
  if (*(v0 + 16))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_100028E64(uint64_t a1, uint64_t a2)
{
  v2 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v12[-v6];
  sub_10006BCEC();
  v8 = sub_10006BD3C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v4, 1, v8) == 1)
  {
    sub_10006BD1C();
    if (v10(v4, 1, v8) != 1)
    {
      sub_100009204(v4, &qword_100088BE0, &qword_10007B3C0);
    }
  }

  else
  {
    (*(v9 + 32))(v7, v4, v8);
  }

  (*(v9 + 56))(v7, 0, 1, v8);
  return sub_10006C50C();
}

uint64_t sub_100029018(uint64_t a1, uint64_t a2)
{
  v22 = sub_10006C54C();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10006BCEC();
  v11 = sub_10006BD3C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v7, 1, v11) == 1)
  {
    sub_10006BD1C();
    if (v13(v7, 1, v11) != 1)
    {
      sub_100009204(v7, &qword_100088BE0, &qword_10007B3C0);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v7, v11);
  }

  (*(v12 + 56))(v10, 0, 1, v11);
  v14 = sub_10006C50C();
  v16 = v15;
  v18 = v17;
  sub_10006C53C();
  v19 = sub_10006C57C();
  sub_1000070DC(v14, v16, v18 & 1);

  (*(v2 + 8))(v4, v22);
  return v19;
}

uint64_t sub_1000292D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v50 = a2;
  v2 = sub_10006B84C();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006BAEC();
  v5 = *(v4 - 8);
  v47 = v4;
  v48 = v5;
  __chkstk_darwin(v4);
  v46 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10006BA0C();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10006B9CC();
  v9 = *(v40 - 8);
  __chkstk_darwin(v40);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10006B9DC();
  v12 = *(v39 - 8);
  __chkstk_darwin(v39);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10006BA5C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v25 = sub_10006B86C();
  v44 = *(v25 - 8);
  v45 = v25;
  __chkstk_darwin(v25);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006B76C();
  sub_10006B9BC();
  sub_10006B9AC();
  (*(v9 + 8))(v11, v40);
  sub_10006B93C();
  (*(v12 + 8))(v14, v39);
  v28 = *(v16 + 8);
  v28(v18, v15);
  v29 = v41;
  sub_10006B9EC();
  sub_10006BA4C();
  (*(v42 + 8))(v29, v43);
  v28(v21, v15);
  v30 = v46;
  sub_10006B92C();
  v28(v24, v15);
  sub_10002B5B8(&qword_100089C80, &type metadata accessor for Date.AttributedStyle, &protocol conformance descriptor for Date.AttributedStyle);
  v31 = v30;
  v32 = v47;
  sub_10006BB5C();
  (*(v48 + 8))(v31, v32);
  if (qword_10008E428 != -1)
  {
    swift_once();
  }

  v33 = sub_10006BC3C();
  sub_100022560(v33, qword_100090028);
  if ((sub_100029924() & 1) == 0)
  {
    v34 = v36;
    sub_10006B85C();
    sub_100029E50(v34, v27);
    (*(v37 + 8))(v34, v38);
  }

  return (*(v44 + 32))(v50, v27, v45);
}

uint64_t sub_1000298C4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return sub_100022560(v5, a3);
}

uint64_t sub_100029924()
{
  v1 = sub_100003500(&qword_100089C78, &qword_10007B3C8);
  __chkstk_darwin(v1 - 8);
  v35 = &v35 - v2;
  v3 = sub_10006BC3C();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10006BC1C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v41 = &v35 - v9;
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  __chkstk_darwin(v13);
  v15 = &v35 - v14;
  v42 = v0;
  sub_10006BC2C();
  v39 = *(v6 + 104);
  v39(v12, enum case for Locale.HourCycle.oneToTwentyFour(_:), v5);
  sub_10002B5B8(&qword_100089C88, &type metadata accessor for Locale.HourCycle, &protocol conformance descriptor for Locale.HourCycle);
  sub_10006CBEC();
  sub_10006CBEC();
  if (v45 == v43 && v46 == v44)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_10006CDAC();
  }

  v17 = *(v6 + 8);
  v17(v12, v5);
  v17(v15, v5);

  if (v16)
  {
    goto LABEL_12;
  }

  v18 = v41;
  sub_10006BC2C();
  v19 = v40;
  v39(v40, enum case for Locale.HourCycle.zeroToTwentyThree(_:), v5);
  sub_10006CBEC();
  sub_10006CBEC();
  if (v45 == v43 && v46 == v44)
  {
    v17(v19, v5);
    v17(v18, v5);

LABEL_12:
    v33 = 1;
    return v33 & 1;
  }

  v20 = sub_10006CDAC();
  v17(v19, v5);
  v17(v18, v5);

  if (v20)
  {
    goto LABEL_12;
  }

  v21 = objc_opt_self();
  v22 = sub_10006CB6C();
  v23 = v36;
  sub_10006BC0C();
  isa = sub_10006BBEC().super.isa;
  v26 = v37;
  v25 = v38;
  (*(v37 + 8))(v23, v38);
  v27 = [v21 dateFormatFromTemplate:v22 options:0 locale:isa];

  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = sub_10006CB7C();
  v30 = v29;

  v45 = v28;
  v46 = v30;
  v43 = 97;
  v44 = 0xE100000000000000;
  v31 = v35;
  (*(v26 + 56))(v35, 1, 1, v25);
  sub_10002B2FC();
  sub_10006CCFC();
  v33 = v32;
  sub_100009204(v31, &qword_100089C78, &qword_10007B3C8);

  return v33 & 1;
}

uint64_t sub_100029E50(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_100003500(&qword_100089D80, &qword_10007B4A8);
  __chkstk_darwin(v3 - 8);
  v45 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v43 = sub_100003500(&qword_100089D88, &qword_10007B4B0);
  __chkstk_darwin(v43);
  v42 = &v41 - v7;
  v8 = sub_100003500(&qword_100089D90, &qword_10007B4B8);
  __chkstk_darwin(v8 - 8);
  v62 = &v41 - v9;
  v63 = sub_10006B7FC();
  v10 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v41 - v13;
  v14 = sub_10006B83C();
  v59 = *(v14 - 8);
  __chkstk_darwin(v14);
  v60 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_10006B81C();
  v16 = *(v61 - 8);
  __chkstk_darwin(v61);
  v65 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10006B84C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100003500(&qword_100089D98, &qword_10007B4C0);
  v23 = __chkstk_darwin(v22);
  v25 = &v41 - v24;
  (*(v19 + 16))(v21, a1, v18, v23);
  sub_10002B5B8(&qword_100089DA0, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  sub_10006CBDC();
  sub_10002B5B8(&qword_100089DA8, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  v58 = (v16 + 16);
  ++v59;
  v57 = (v10 + 48);
  v51 = (v10 + 16);
  v52 = (v10 + 32);
  v50 = (v10 + 88);
  v49 = enum case for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field.amPM(_:);
  v48 = (v10 + 8);
  v56 = (v16 + 8);
  v53 = v14;
  while (1)
  {
    v26 = v60;
    sub_10006CC9C();
    sub_10002B5B8(&qword_100089DB0, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
    v27 = sub_10006CB3C();
    (*v59)(v26, v14);
    if (v27)
    {
      break;
    }

    v28 = sub_10006CCBC();
    (*v58)(v65);
    v28(v64, 0);
    v29 = v18;
    sub_10006CCAC();
    sub_10002B600();
    v30 = v62;
    sub_10006B82C();
    if ((*v57)(v30, 1, v63) == 1)
    {
      sub_100009204(v62, &qword_100089D90, &qword_10007B4B8);
    }

    else
    {
      v31 = v54;
      v32 = v63;
      (*v52)(v54, v62, v63);
      v33 = v55;
      (*v51)(v55, v31, v32);
      v34 = (*v50)(v33, v32);
      if (v34 == v49)
      {
        v35 = v42;
        sub_10006B80C();
        v36 = v44;
        sub_10006C53C();
        v37 = sub_10006C54C();
        (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
        sub_10002B654();
        v47 = sub_10006B87C();
        sub_10002B6B8(v36, v45);
        sub_10002B728();
        sub_10006B89C();
        sub_100009204(v36, &qword_100089D80, &qword_10007B4A8);
        v47(v64, 0);
        sub_100009204(v35, &qword_100089D88, &qword_10007B4B0);
        (*v48)(v31, v63);
      }

      else
      {
        v38 = *v48;
        v39 = v63;
        (*v48)(v31, v63);
        v38(v33, v39);
      }

      v14 = v53;
      v18 = v29;
    }

    (*v56)(v65, v61);
  }

  return sub_100009204(v25, &qword_100089D98, &qword_10007B4C0);
}

uint64_t sub_10002A6A0()
{
  v0 = sub_10006BC3C();
  sub_1000263C4(v0, qword_100090028);
  sub_100022560(v0, qword_100090028);
  if (*(sub_10006BBDC() + 16))
  {

    return sub_10006BBBC();
  }

  else
  {

    return sub_10006BC0C();
  }
}

uint64_t sub_10002A734@<X0>(uint64_t a1@<X8>)
{
  if (qword_10008E428 != -1)
  {
    swift_once();
  }

  v2 = sub_10006BC3C();
  v3 = sub_100022560(v2, qword_100090028);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10002A7DC()
{
  v0 = sub_100003500(&qword_100089C78, &qword_10007B3C8);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = sub_10006BC3C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = sub_10006CB6C();
  sub_10006BC0C();
  isa = sub_10006BBEC().super.isa;
  (*(v4 + 8))(v6, v3);
  v10 = [v7 dateFormatFromTemplate:v8 options:0 locale:isa];

  if (v10)
  {
    v11 = sub_10006CB7C();
    v13 = v12;

    v18[2] = v11;
    v18[3] = v13;
    v18[0] = 97;
    v18[1] = 0xE100000000000000;
    (*(v4 + 56))(v2, 1, 1, v3);
    sub_10002B2FC();
    sub_10006CCFC();
    v15 = v14;
    sub_100009204(v2, &qword_100089C78, &qword_10007B3C8);

    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_10002AA0C()
{
  if (sub_100029924())
  {
    return 2;
  }

  isa = sub_10006BBEC().super.isa;
  v2 = [(objc_class *)isa positionOfDayPeriodInFormattedTime];

  if (v2 <= 2)
  {
    return (2 - v2);
  }

  else
  {
    return 2;
  }
}

uint64_t *sub_10002AA90()
{
  if (qword_10008E430 != -1)
  {
    swift_once();
  }

  return &qword_100090040;
}

uint64_t sub_10002AB1C(CGFloat a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10006CB6C();
  CTFontCreateWithNameAndOptions(v5, a1, 0, 0x20000uLL);

  result = sub_10006C48C();
  *a3 = result;
  return result;
}

uint64_t *sub_10002AB94()
{
  if (qword_10008E438 != -1)
  {
    swift_once();
  }

  return &qword_100090048;
}

uint64_t sub_10002AC08()
{
  v0 = [objc_opt_self() systemOrangeColor];
  result = sub_10006C70C();
  qword_100090050 = result;
  return result;
}

uint64_t *sub_10002AC48()
{
  if (qword_10008E440[0] != -1)
  {
    swift_once();
  }

  return &qword_100090050;
}

unint64_t sub_10002ACBC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10002AD88(v11, 0, 0, 1, a1, a2);
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
    sub_10002B77C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10002B2B0(v11);
  return v7;
}

unint64_t sub_10002AD88(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10002AE94(a5, a6);
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
    result = sub_10006CD4C();
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

void *sub_10002AE94(uint64_t a1, unint64_t a2)
{
  v3 = sub_10002AEE0(a1, a2);
  sub_10002B010(&off_100086F20);
  return v3;
}

void *sub_10002AEE0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10002B0FC(v5, 0);
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

  result = sub_10006CD4C();
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
        v10 = sub_10006CBCC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002B0FC(v10, 0);
        result = sub_10006CD1C();
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

uint64_t sub_10002B010(uint64_t result)
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

  result = sub_10002B170(result, v11, 1, v3);
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

void *sub_10002B0FC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003500(&qword_100089DD0, &qword_10007B4C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10002B170(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003500(&qword_100089DD0, &qword_10007B4C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_10002B264(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100086D80;
  v6._object = a2;
  v4 = sub_10006CD8C(v3, v6);

  if (v4 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10002B2B0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10002B2FC()
{
  result = qword_100089C90;
  if (!qword_100089C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089C90);
  }

  return result;
}

unint64_t sub_10002B354()
{
  result = qword_100089C98;
  if (!qword_100089C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089C98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NumberingSystem(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NumberingSystem(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002B51C(uint64_t *a1)
{
  type metadata accessor for CapMaxContentSizeCategory(255);
  sub_10006BF4C();
  sub_10002B5B8(&qword_100089D78, type metadata accessor for CapMaxContentSizeCategory, &unk_100079D08);
  return swift_getWitnessTable();
}

uint64_t sub_10002B5B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10002B600()
{
  result = qword_100089DB8;
  if (!qword_100089DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089DB8);
  }

  return result;
}

unint64_t sub_10002B654()
{
  result = qword_100089DC0;
  if (!qword_100089DC0)
  {
    sub_100007094(&qword_100089D88, &qword_10007B4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089DC0);
  }

  return result;
}

uint64_t sub_10002B6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003500(&qword_100089D80, &qword_10007B4A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10002B728()
{
  result = qword_100089DC8;
  if (!qword_100089DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089DC8);
  }

  return result;
}

uint64_t sub_10002B77C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002B84C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_10002B858()
{
  sub_10006C04C();
  sub_10003DF94(&qword_10008B9E8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10006C0BC();
  return v1;
}

void *sub_10002B8D4@<X0>(_BYTE *a1@<X8>)
{
  sub_10006C04C();
  sub_10003DF94(&qword_10008B9E8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey, &protocol conformance descriptor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10006C0BC();
  *a1 = v3;
  return result;
}

uint64_t sub_10002B9CC()
{
  v1 = sub_10006C0AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for WorldClockWidgetViewSingle(0) + 32));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_10006CCCC();
    v8 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_10002BB1C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WorldClockCity(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_100089DE0, &qword_10007B660);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_10002BCE4(v1);
  sub_10002B9CC();
  v9 = sub_100067C8C();

  if (v9 && (*(v1 + *(type metadata accessor for WorldClockEntry(0) + 24)) & 1) == 0)
  {
    sub_10000B690(v5);
    v15 = sub_100064BD8();
    sub_10003DD7C(v5, type metadata accessor for WorldClockCity);
    if (!v15)
    {
      v11 = sub_10006C75C();
      goto LABEL_5;
    }

    v10 = sub_10000EC70();
  }

  else
  {
    v10 = sub_10000E5A0();
  }

  v11 = *v10;

LABEL_5:
  v12 = (a1 + *(sub_100003500(&qword_100089DE8, &qword_10007B668) + 36));
  v13 = type metadata accessor for AccentedWidgetBackground(0);
  sub_10002E0E0(type metadata accessor for WorldClockWidgetViewSingle, v12 + *(v13 + 20));
  *v12 = v11;
  return sub_1000586D4(v8, a1, &qword_100089DE0, &qword_10007B660);
}

uint64_t sub_10002BCE4(uint64_t a1)
{
  v2 = type metadata accessor for WorldClockWidgetViewSingle(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_100003500(&qword_10008B9D0, &qword_10007CF48);
  __chkstk_darwin(v5);
  v7 = (&v15 - v6);
  v8 = type metadata accessor for PlaceholderViewSingle(0);
  __chkstk_darwin(v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for WorldClockEntry(0) + 24)) == 1)
  {
    v11 = sub_10002DF68(type metadata accessor for WorldClockWidgetViewSingle);
    sub_10002E0E0(type metadata accessor for WorldClockWidgetViewSingle, &v10[*(v8 + 24)]);
    *v10 = 0;
    v10[1] = v11 & 1;
    sub_10003DE44(v10, v7, type metadata accessor for PlaceholderViewSingle);
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008AFA8, &qword_10007C840);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008AFA0, &qword_10008AFA8, &qword_10007C840, &protocol conformance descriptor for GeometryReader<A>);
    sub_10006C26C();
    return sub_10003DD7C(v10, type metadata accessor for PlaceholderViewSingle);
  }

  else
  {
    sub_10003DE44(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WorldClockWidgetViewSingle);
    v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v14 = swift_allocObject();
    sub_10003DDDC(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for WorldClockWidgetViewSingle);
    *v7 = sub_100059A24;
    v7[1] = v14;
    swift_storeEnumTagMultiPayload();
    sub_100003500(&qword_10008AFA8, &qword_10007C840);
    sub_10003DF94(&qword_10008AF98, type metadata accessor for PlaceholderViewSingle, &unk_10007BBE0);
    sub_100011308(&qword_10008AFA0, &qword_10008AFA8, &qword_10007C840, &protocol conformance descriptor for GeometryReader<A>);
    return sub_10006C26C();
  }
}

uint64_t sub_10002C0A0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v7 = *(type metadata accessor for PlaceholderViewSingle(0) + 24);
  v8 = sub_10006C9EC();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a4[v7], a3, v8);
}

uint64_t sub_10002C128@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v38 = sub_10006C1AC();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SmallWorldClockView(0);
  __chkstk_darwin(v9);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_100003500(&qword_10008AFD0, &qword_10007C850);
  __chkstk_darwin(v40);
  v13 = &v38 - v12;
  v42 = sub_100003500(&qword_10008B9D8, &qword_10007CF50);
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v39 = &v38 - v14;
  sub_10006BEEC();
  sub_1000220D8();
  sub_1000209E4();
  sub_100020A1C();
  sub_100020A54();
  sub_100020A54();
  sub_100020AEC();
  sub_100020B24();
  sub_100020D9C();
  sub_10000B690(v11 + v9[5]);
  v15 = (v11 + v9[6]);
  v15[3] = &type metadata for SmallSizeDimentions;
  v15[4] = &off_1000865B8;
  v16 = swift_allocObject();
  *v15 = v16;
  v17 = v46[1];
  v16[1] = v46[0];
  v16[2] = v17;
  v18 = v46[3];
  v16[3] = v46[2];
  v16[4] = v18;
  sub_100057F94(v46, v45);
  v19 = sub_10002DF68(type metadata accessor for WorldClockWidgetViewSingle);
  v20 = v11 + v9[13];
  v43 = a1;
  sub_10002E0E0(type metadata accessor for WorldClockWidgetViewSingle, v20);
  *v11 = swift_getKeyPath();
  sub_100003500(&qword_100088FB8, &qword_100079CB0);
  swift_storeEnumTagMultiPayload();
  *(v11 + v9[7]) = 0;
  *(v11 + v9[8]) = 0;
  *(v11 + v9[9]) = 0;
  *(v11 + v9[10]) = 0;
  v21 = v11 + v9[11];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  *v21 = sub_10006BE6C();
  v21[8] = v22 & 1;
  *(v11 + v9[12]) = v19 & 1;
  v23 = v38;
  (*(v6 + 104))(v8, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v38);
  v24 = sub_10003DF94(&qword_100089E60, type metadata accessor for SmallWorldClockView, &unk_10007BC80);
  sub_100026F64(v8, v9, v24);
  (*(v6 + 8))(v8, v23);
  sub_10003DD7C(v11, type metadata accessor for SmallWorldClockView);
  v25 = [objc_opt_self() widgetURL];
  if (v25)
  {
    v26 = v25;
    sub_10006B8EC();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_10006B90C();
  (*(*(v28 - 8) + 56))(v5, v27, 1, v28);
  sub_1000549FC();
  v29 = v39;
  sub_10006C60C();
  sub_100009204(v5, &qword_100088B80, &qword_100079930);
  sub_100009204(v13, &qword_10008AFD0, &qword_10007C850);
  v30 = sub_10002C908();
  sub_10006C96C();
  v32 = v31;
  v34 = v33;
  sub_100058168(v46);
  v35 = v44;
  (*(v41 + 32))(v44, v29, v42);
  result = sub_100003500(&qword_10008B9E0, &qword_10007CF58);
  v37 = (v35 + *(result + 36));
  *v37 = v30;
  v37[1] = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  return result;
}

uint64_t sub_10002C778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_1000586D4(a1, a9, &qword_100088B58, &qword_100079D00);
  v18 = type metadata accessor for SmallWorldClockView(0);
  sub_10003DDDC(a2, a9 + v18[5], type metadata accessor for WorldClockCity);
  sub_10003D860(a3, a9 + v18[6]);
  *(a9 + v18[7]) = a4;
  *(a9 + v18[8]) = a5;
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  v19 = a9 + v18[11];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  *v19 = sub_10006BE6C();
  *(v19 + 8) = v20 & 1;
  *(a9 + v18[12]) = a8;
  v21 = v18[13];
  v22 = sub_10006C9EC();
  v23 = *(*(v22 - 8) + 32);

  return v23(a9 + v21, a10, v22);
}

double sub_10002C908()
{
  v1 = sub_10006C0AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for WorldClockWidgetViewSingle(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {
    result = 1.0;
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_10006CCCC();
    v8 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();
    sub_10002B84C(v6, 0);
    (*(v2 + 8))(v4, v1);
    result = 1.0;
    if (v11[15] != 1)
    {
      return result;
    }
  }

  sub_10002B9CC();
  v9 = sub_100067C8C();

  if (v9)
  {
    v10 = sub_100020A8C();
  }

  else
  {
    v10 = sub_100020AA4();
  }

  return *v10;
}

uint64_t sub_10002CAA8()
{
  v1 = type metadata accessor for WorldClockCity(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002B9CC();
  v4 = sub_100067C8C();

  if (v4 && (*(v0 + *(type metadata accessor for WorldClockEntry(0) + 24)) & 1) == 0)
  {
    sub_10000B690(v3);
    v6 = sub_100064BD8();
    sub_10003DD7C(v3, type metadata accessor for WorldClockCity);
    if (!v6)
    {
      return sub_10006C75C();
    }

    sub_10000EC70();
  }

  else
  {
    sub_10000E5A0();
  }
}

uint64_t sub_10002CB9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for AccentedWidgetBackground(0);
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 20);
  v11 = sub_10006C9EC();
  (*(*(v11 - 8) + 16))(&v8[v10], a2, v11);
  *v8 = a1;

  sub_10006C6FC();
  return sub_10003DD7C(v8, type metadata accessor for AccentedWidgetBackground);
}

uint64_t sub_10002CCD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  sub_10003DDDC(a1, a8, type metadata accessor for WorldClockEntry);
  v15 = type metadata accessor for WorldClockWidgetViewSingle(0);
  sub_1000586D4(a2, a8 + v15[5], &qword_100088A48, &unk_10007B6A0);
  v16 = a8 + v15[6];
  *v16 = a3;
  *(v16 + 8) = a4 & 1;
  result = sub_1000586D4(a5, a8 + v15[7], &qword_100089988, &qword_10007A9D8);
  v18 = a8 + v15[8];
  *v18 = a6;
  *(v18 + 8) = a7 & 1;
  return result;
}

uint64_t sub_10002CE20()
{
  v1 = sub_10006C2CC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_100089DF0, &qword_10007B6B0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_10006C1CC();
  *(v7 + 1) = 0x4000000000000000;
  v7[16] = 0;
  v8 = sub_100003500(&qword_100089DF8, &qword_10007B6B8);
  sub_10002CFE0(v0, &v7[*(v8 + 44)]);
  sub_10006C2BC();
  sub_100011308(&qword_100089E00, &qword_100089DF0, &qword_10007B6B0, &protocol conformance descriptor for VStack<A>);
  sub_10006C6AC();
  (*(v2 + 8))(v4, v1);
  return sub_100009204(v7, &qword_100089DF0, &qword_10007B6B0);
}

uint64_t sub_10002CFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v61 = a2;
  v3 = sub_100003500(&qword_10008B968, &qword_10007CF90);
  __chkstk_darwin(v3 - 8);
  v60 = &v55 - v4;
  v5 = sub_100003500(&qword_100088BD0, &qword_10007CEE0);
  __chkstk_darwin(v5 - 8);
  v57 = &v55 - v6;
  v7 = type metadata accessor for ClockDateText(0);
  __chkstk_darwin(v7 - 8);
  v59 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v55 - v10;
  v11 = sub_100003500(&qword_10008B970, &qword_10007CEE8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v55 - v13;
  v15 = sub_100003500(&qword_10008B978, &qword_10007CEF0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v19 = sub_100003500(&qword_10008B980, &qword_10007CEF8);
  v20 = v19 - 8;
  __chkstk_darwin(v19);
  v22 = &v55 - v21;
  v23 = sub_100003500(&qword_10008B988, &qword_10007CF00);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v56 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v55 - v27;
  __chkstk_darwin(v29);
  v31 = &v55 - v30;
  *v14 = sub_10006C0EC();
  *(v14 + 1) = 0x4008000000000000;
  v14[16] = 0;
  v32 = sub_100003500(&qword_10008B990, &qword_10007CF08);
  sub_10002D5DC(a1, &v14[*(v32 + 44)]);
  v33 = sub_10006C46C();
  KeyPath = swift_getKeyPath();
  v35 = &v14[*(v12 + 44)];
  *v35 = KeyPath;
  v35[1] = v33;
  sub_10006C94C();
  sub_10006BF6C();
  sub_1000586D4(v14, v18, &qword_10008B970, &qword_10007CEE8);
  v36 = &v18[*(v16 + 44)];
  v37 = v67;
  *(v36 + 4) = v66;
  *(v36 + 5) = v37;
  *(v36 + 6) = v68;
  v38 = v63;
  *v36 = v62;
  *(v36 + 1) = v38;
  v39 = v65;
  *(v36 + 2) = v64;
  *(v36 + 3) = v39;
  v40 = sub_10006C78C();
  v41 = swift_getKeyPath();
  sub_1000586D4(v18, v22, &qword_10008B978, &qword_10007CEF0);
  v42 = &v22[*(v20 + 44)];
  *v42 = v41;
  v42[1] = v40;
  v43 = swift_getKeyPath();
  sub_1000586D4(v22, v28, &qword_10008B980, &qword_10007CEF8);
  v44 = &v28[*(v24 + 44)];
  *v44 = v43;
  *(v44 + 1) = 1;
  v44[16] = 0;
  sub_1000586D4(v28, v31, &qword_10008B988, &qword_10007CF00);
  v45 = v57;
  sub_10003DE44(v55, v57, type metadata accessor for WorldClockCity);
  v46 = type metadata accessor for WorldClockCity(0);
  (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
  v47 = type metadata accessor for AlarmEntry(0);
  v48 = v60;
  (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
  v49 = v58;
  sub_10005C670(v45, v48, v58);
  v50 = v56;
  sub_100009264(v31, v56, &qword_10008B988, &qword_10007CF00);
  v51 = v59;
  sub_10003DE44(v49, v59, type metadata accessor for ClockDateText);
  v52 = v61;
  sub_100009264(v50, v61, &qword_10008B988, &qword_10007CF00);
  v53 = sub_100003500(&qword_10008B998, &qword_10007CF10);
  sub_10003DE44(v51, v52 + *(v53 + 48), type metadata accessor for ClockDateText);
  sub_10003DD7C(v49, type metadata accessor for ClockDateText);
  sub_100009204(v31, &qword_10008B988, &qword_10007CF00);
  sub_10003DD7C(v51, type metadata accessor for ClockDateText);
  return sub_100009204(v50, &qword_10008B988, &qword_10007CF00);
}

uint64_t sub_10002D5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003500(&qword_10008B9A0, &qword_10007CF18);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = (a1 + *(type metadata accessor for WorldClockCity(0) + 24));
  v11 = v10[1];
  v22[0] = *v10;
  v22[1] = v11;
  sub_10002B2FC();

  v12 = sub_10006C5BC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *v9 = sub_10006C0DC();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v19 = sub_100003500(&qword_10008B9A8, &qword_10007CF20);
  sub_10002D7BC(&v9[*(v19 + 44)]);
  sub_100009264(v9, v6, &qword_10008B9A0, &qword_10007CF18);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16 & 1;
  *(a2 + 24) = v18;
  v20 = sub_100003500(&qword_10008B9B0, &qword_10007CF28);
  sub_100009264(v6, a2 + *(v20 + 48), &qword_10008B9A0, &qword_10007CF18);
  sub_100050270(v12, v14, v16 & 1);

  sub_100009204(v9, &qword_10008B9A0, &qword_10007CF18);
  sub_100009204(v6, &qword_10008B9A0, &qword_10007CF18);
  sub_1000070DC(v12, v14, v16 & 1);
}

uint64_t sub_10002D7BC@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v1 = sub_10006C54C();
  v49 = *(v1 - 8);
  v50 = v1;
  __chkstk_darwin(v1);
  v47 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_10008B9B8, &qword_10007CF30);
  v54 = *(v3 - 8);
  v55 = v3;
  __chkstk_darwin(v3);
  v48 = &v46 - v4;
  v5 = sub_100003500(&qword_10008B9C0, &qword_10007CF38);
  __chkstk_darwin(v5 - 8);
  v56 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v46 - v8;
  v10 = 1;
  sub_100065940(1);
  v58 = v11;
  v59 = v12;
  sub_10002B2FC();
  v13 = sub_10006C5BC();
  v15 = v14;
  v17 = v16;
  v18 = sub_100001CF8();
  sub_100065940(v18 & 1);
  v58 = v19;
  v59 = v20;
  v21 = sub_10006C4FC();
  v52 = v22;
  v53 = v23;
  v51 = v24;
  sub_1000070DC(v13, v15, v17 & 1);

  if (sub_100065F94())
  {
    sub_100065CC0();
    v46 = v21;
    sub_10006C14C();
    v25 = sub_10006C59C();
    v27 = v26;
    v29 = v28;
    v30 = v47;
    sub_10006C53C();
    v31 = sub_10006C57C();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    sub_1000070DC(v25, v27, v29 & 1);

    (*(v49 + 8))(v30, v50);
    v58 = v31;
    v59 = v33;
    v60 = v35 & 1;
    v61 = v37;
    v38 = v48;
    sub_10006C68C();
    sub_1000070DC(v31, v33, v35 & 1);

    sub_1000586D4(v38, v9, &qword_10008B9B8, &qword_10007CF30);
    v10 = 0;
    v21 = v46;
  }

  (*(v54 + 56))(v9, v10, 1, v55);
  v39 = v56;
  sub_100009264(v9, v56, &qword_10008B9C0, &qword_10007CF38);
  v40 = v57;
  v42 = v52;
  v41 = v53;
  *v57 = v21;
  v40[1] = v42;
  v43 = v51 & 1;
  *(v40 + 16) = v51 & 1;
  v40[3] = v41;
  v44 = sub_100003500(&qword_10008B9C8, &qword_10007CF40);
  sub_100009264(v39, v40 + *(v44 + 48), &qword_10008B9C0, &qword_10007CF38);
  sub_100050270(v21, v42, v43);

  sub_100009204(v9, &qword_10008B9C0, &qword_10007CF38);
  sub_100009204(v39, &qword_10008B9C0, &qword_10007CF38);
  sub_1000070DC(v21, v42, v43);
}

uint64_t sub_10002DC54@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    result = sub_10006C14C();
    v7 = 158;
    v8 = "Time-Zone Widget: Abbreviation for 'minute' shown behind (trailing) a number for how many minutes the other time zone is apart from the current one, '+45 MIN'";
  }

  else
  {
    result = sub_10006C14C();
    v7 = 155;
    v8 = "Time-Zone Widget: Abbreviation for 'hours' shown behind (trailing) a number for how many hours the other time zone is apart from the current one, '+10 HRS'";
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  *(a2 + 32) = v8;
  *(a2 + 40) = v7;
  *(a2 + 48) = 2;
  return result;
}

uint64_t sub_10002DD3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v23 = a5;
  v10 = sub_10006C0AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003500(a1, a2);
  v15 = __chkstk_darwin(v14);
  v17 = &v22 - v16;
  v18 = a3(0, v15);
  sub_100009264(v5 + *(v18 + 20), v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a4(0);
    return (*(*(v19 - 8) + 32))(v23, v17, v19);
  }

  else
  {
    sub_10006CCCC();
    v21 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10002DF68(uint64_t (*a1)(void, __n128))
{
  v3 = sub_10006C0AC();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = v1 + *(a1(0, v5) + 24);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_10006CCCC();
    v10 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();
    sub_10002B84C(v9, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v9) = v12[15];
  }

  return v9 & 1;
}

uint64_t sub_10002E0E0@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10006C0AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003500(&qword_100089DD8, &qword_10007B628);
  v10 = __chkstk_darwin(v9);
  v12 = &v17 - v11;
  v13 = a1(0, v10);
  sub_100009264(v2 + *(v13 + 28), v12, &qword_100089DD8, &qword_10007B628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_10006C9EC();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    sub_10006CCCC();
    v16 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_10002E2F0@<X0>(uint64_t a1@<X8>)
{
  v93 = a1;
  v90 = type metadata accessor for MediumWorldClockView(0);
  __chkstk_darwin(v90);
  v78 = &v71 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003500(&qword_100089E08, &qword_10007B6C0);
  v80 = *(v3 - 8);
  __chkstk_darwin(v3);
  v79 = &v71 - v4;
  v87 = sub_100003500(&qword_100089E10, &unk_10007B6C8);
  __chkstk_darwin(v87);
  v89 = &v71 - v5;
  v6 = sub_100003500(&qword_100088B80, &qword_100079930);
  __chkstk_darwin(v6 - 8);
  v77 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v83 = &v71 - v9;
  v86 = type metadata accessor for SmallMultiWorldClockView(0);
  __chkstk_darwin(v86);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_100003500(&qword_100089E18, &qword_10007B6D8);
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v84 = &v71 - v11;
  v12 = sub_10006CA0C();
  v91 = *(v12 - 8);
  __chkstk_darwin(v12);
  v81 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v71 - v15;
  v17 = sub_100003500(&qword_100089E20, &qword_10007B6E0);
  __chkstk_darwin(v17);
  v92 = &v71 - v18;
  v19 = sub_100003500(&qword_100089E28, &qword_10007B6E8);
  __chkstk_darwin(v19);
  v21 = &v71 - v20;
  v22 = type metadata accessor for PlaceholderViewMulti(0);
  __chkstk_darwin(v22);
  v24 = (&v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for WorldClockEntry(0);
  if (*(v1 + *(v25 + 24)) == 1)
  {
    v26 = sub_10002DF68(type metadata accessor for WorldClockWidgetViewMulti);
    sub_10002E0E0(type metadata accessor for WorldClockWidgetViewMulti, v24 + *(v22 + 24));
    *v24 = swift_getKeyPath();
    sub_100003500(&qword_100088A40, &unk_100079800);
    swift_storeEnumTagMultiPayload();
    *(v24 + *(v22 + 20)) = v26 & 1;
    sub_10003DE44(v24, v21, type metadata accessor for PlaceholderViewMulti);
    swift_storeEnumTagMultiPayload();
    sub_10003DF94(&qword_100089E38, type metadata accessor for PlaceholderViewMulti, &unk_10007BC30);
    sub_10003DFDC();
    sub_10006C26C();
    return sub_10003DD7C(v24, type metadata accessor for PlaceholderViewMulti);
  }

  else
  {
    v28 = v25;
    v73 = v19;
    v74 = v22;
    v75 = v21;
    v72 = v3;
    v76 = v17;
    sub_10002DD3C(&qword_100088A40, &unk_100079800, type metadata accessor for WorldClockWidgetViewMulti, &type metadata accessor for WidgetFamily, v16);
    v29 = v91;
    v30 = *(v91 + 88);
    v31 = v30(v16, v12);
    v32 = enum case for WidgetFamily.systemSmall(_:);
    v33 = *(v29 + 8);
    v33(v16, v12);
    if (v31 == v32)
    {
      v34 = *(v1 + *(v28 + 20));

      v35 = sub_10002DF68(type metadata accessor for WorldClockWidgetViewMulti);
      v36 = v86;
      v37 = v82;
      sub_10002E0E0(type metadata accessor for WorldClockWidgetViewMulti, &v82[*(v86 + 28)]);
      *v37 = v34;
      *(v37 + 8) = 0;
      *(v37 + 9) = v35 & 1;
      *(v37 + *(v36 + 32)) = 0x4020000000000000;
      v38 = [objc_opt_self() widgetURL];
      v39 = v92;
      if (v38)
      {
        v40 = v83;
        v41 = v38;
        sub_10006B8EC();

        v42 = 0;
        v43 = v90;
      }

      else
      {
        v42 = 1;
        v43 = v90;
        v40 = v83;
      }

      v58 = sub_10006B90C();
      (*(*(v58 - 8) + 56))(v40, v42, 1, v58);
      v59 = sub_10003DF94(&qword_100089E50, type metadata accessor for SmallMultiWorldClockView, &unk_10007BCD0);
      v60 = v84;
      sub_10006C60C();
      sub_100009204(v40, &qword_100088B80, &qword_100079930);
      sub_10003DD7C(v37, type metadata accessor for SmallMultiWorldClockView);
      v61 = v85;
      v62 = v88;
      (*(v85 + 16))(v89, v60, v88);
      swift_storeEnumTagMultiPayload();
      v94 = v36;
      v95 = v59;
      swift_getOpaqueTypeConformance2();
      v63 = sub_10003DF94(&qword_100089E58, type metadata accessor for MediumWorldClockView, &unk_10007BD20);
      v94 = v43;
      v95 = v63;
      swift_getOpaqueTypeConformance2();
      sub_10006C26C();
      (*(v61 + 8))(v60, v62);
      v56 = 0;
      v57 = v75;
    }

    else
    {
      v44 = v81;
      sub_10002DD3C(&qword_100088A40, &unk_100079800, type metadata accessor for WorldClockWidgetViewMulti, &type metadata accessor for WidgetFamily, v81);
      v45 = v30(v44, v12);
      v46 = enum case for WidgetFamily.systemMedium(_:);
      v33(v44, v12);
      v39 = v92;
      if (v45 == v46)
      {
        v47 = v78;
        sub_10003DE44(v1, v78, type metadata accessor for WorldClockEntry);
        v48 = sub_10002DF68(type metadata accessor for WorldClockWidgetViewMulti);
        v49 = v90;
        sub_10002E0E0(type metadata accessor for WorldClockWidgetViewMulti, v47 + *(v90 + 32));
        *(v47 + v49[5]) = 0;
        v50 = v49[6];
        sub_100003500(&qword_100089080, &qword_100079E28);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_100079940;
        *(v51 + 32) = sub_10006C72C();
        *(v51 + 40) = sub_10006C77C();
        *(v51 + 48) = sub_10006C73C();
        *(v51 + 56) = sub_10006C74C();
        *(v47 + v50) = v51;
        *(v47 + v49[7]) = v48 & 1;
        *(v47 + v49[9]) = 0x4020000000000000;
        v52 = [objc_opt_self() widgetURL];
        if (v52)
        {
          v53 = v77;
          v54 = v52;
          sub_10006B8EC();

          v55 = 0;
        }

        else
        {
          v55 = 1;
          v53 = v77;
        }

        v64 = sub_10006B90C();
        (*(*(v64 - 8) + 56))(v53, v55, 1, v64);
        v65 = sub_10003DF94(&qword_100089E58, type metadata accessor for MediumWorldClockView, &unk_10007BD20);
        v66 = v79;
        sub_10006C60C();
        sub_100009204(v53, &qword_100088B80, &qword_100079930);
        sub_10003DD7C(v47, type metadata accessor for MediumWorldClockView);
        v67 = v80;
        v68 = v72;
        (*(v80 + 16))(v89, v66, v72);
        swift_storeEnumTagMultiPayload();
        v69 = sub_10003DF94(&qword_100089E50, type metadata accessor for SmallMultiWorldClockView, &unk_10007BCD0);
        v94 = v86;
        v95 = v69;
        swift_getOpaqueTypeConformance2();
        v94 = v49;
        v95 = v65;
        swift_getOpaqueTypeConformance2();
        sub_10006C26C();
        (*(v67 + 8))(v66, v68);
        v56 = 0;
        v57 = v75;
      }

      else
      {
        v56 = 1;
        v57 = v75;
      }
    }

    v70 = sub_100003500(&qword_100089E30, &unk_10007B6F0);
    (*(*(v70 - 8) + 56))(v39, v56, 1, v70);
    sub_100009264(v39, v57, &qword_100089E20, &qword_10007B6E0);
    swift_storeEnumTagMultiPayload();
    sub_10003DF94(&qword_100089E38, type metadata accessor for PlaceholderViewMulti, &unk_10007BC30);
    sub_10003DFDC();
    sub_10006C26C();
    return sub_100009204(v39, &qword_100089E20, &qword_10007B6E0);
  }
}

uint64_t sub_10002F030@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1000586D4(a1, a4, &qword_100088A48, &unk_10007B6A0);
  v7 = type metadata accessor for PlaceholderViewMulti(0);
  *(a4 + *(v7 + 20)) = a2;
  v8 = *(v7 + 24);
  v9 = sub_10006C9EC();
  v10 = *(*(v9 - 8) + 32);

  return v10(a4 + v8, a3, v9);
}

uint64_t sub_10002F0D4@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 9) = a3;
  v8 = type metadata accessor for SmallMultiWorldClockView(0);
  v9 = *(v8 + 28);
  v10 = sub_10006C9EC();
  result = (*(*(v10 - 8) + 32))(a5 + v9, a4, v10);
  *(a5 + *(v8 + 32)) = 0x4020000000000000;
  return result;
}

uint64_t sub_10002F164@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10003DDDC(a1, a5, type metadata accessor for WorldClockEntry);
  v9 = type metadata accessor for MediumWorldClockView(0);
  *(a5 + v9[5]) = a2;
  v10 = v9[6];
  sub_100003500(&qword_100089080, &qword_100079E28);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100079940;
  *(v11 + 32) = sub_10006C72C();
  *(v11 + 40) = sub_10006C77C();
  *(v11 + 48) = sub_10006C73C();
  *(v11 + 56) = sub_10006C74C();
  *(a5 + v10) = v11;
  *(a5 + v9[7]) = a3;
  v12 = v9[8];
  v13 = sub_10006C9EC();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a4, v13);
  *(a5 + v9[9]) = 0x4020000000000000;
  return result;
}

uint64_t sub_10002F27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10003DDDC(a1, a6, type metadata accessor for WorldClockEntry);
  v11 = type metadata accessor for WorldClockWidgetViewMulti(0);
  sub_1000586D4(a2, a6 + v11[5], &qword_100088A48, &unk_10007B6A0);
  v12 = a6 + v11[6];
  *v12 = a3;
  *(v12 + 8) = a4 & 1;
  return sub_1000586D4(a5, a6 + v11[7], &qword_100089988, &qword_10007A9D8);
}

uint64_t sub_10002F408@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v2 = sub_10006C1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallWorldClockView(0);
  __chkstk_darwin(v6);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100065FD4(v8 + *(v9 + 20));
  sub_100020B64(v23);
  v10 = (v8 + v6[6]);
  v10[3] = &type metadata for SmallSizeDimentions;
  v10[4] = &off_1000865B8;
  v11 = swift_allocObject();
  *v10 = v11;
  v12 = v23[1];
  v11[1] = v23[0];
  v11[2] = v12;
  v13 = v23[3];
  v11[3] = v23[2];
  v11[4] = v13;
  v14 = *v1;
  LOBYTE(v10) = v1[1];
  v15 = *(type metadata accessor for PlaceholderViewSingle(0) + 24);
  v16 = v6[13];
  v17 = sub_10006C9EC();
  (*(*(v17 - 8) + 16))(v8 + v16, &v1[v15], v17);
  *v8 = swift_getKeyPath();
  sub_100003500(&qword_100088FB8, &qword_100079CB0);
  swift_storeEnumTagMultiPayload();
  *(v8 + v6[7]) = 1;
  *(v8 + v6[8]) = 0;
  *(v8 + v6[9]) = v14;
  *(v8 + v6[10]) = 0;
  v18 = v8 + v6[11];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  *v18 = sub_10006BE6C();
  v18[8] = v19 & 1;
  *(v8 + v6[12]) = v10;
  (*(v3 + 104))(v5, enum case for ContentSizeCategory.extraExtraExtraLarge(_:), v2);
  v20 = sub_10003DF94(&qword_100089E60, type metadata accessor for SmallWorldClockView, &unk_10007BC80);
  sub_100026F64(v5, v6, v20);
  (*(v3 + 8))(v5, v2);
  return sub_10003DD7C(v8, type metadata accessor for SmallWorldClockView);
}

uint64_t sub_10002F77C(char a1, __n128 a2)
{
  result = type metadata accessor for PlaceholderViewMulti(0);
  *(v2 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_10002F820@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_10002F8C4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_10006C9EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_10002F98C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v2 = sub_10006BB7C();
  __chkstk_darwin(v2 - 8);
  v51 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for MediumWorldClockView(0);
  __chkstk_darwin(v57);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_100003500(&qword_100089E68, &qword_10007B700);
  __chkstk_darwin(v54);
  v56 = &v51 - v5;
  v55 = sub_100003500(&qword_100089E70, &qword_10007B708);
  __chkstk_darwin(v55);
  *&v53 = &v51 - v6;
  v7 = sub_10006CA0C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v51 - v12;
  sub_1000301B8(&qword_100088A40, &unk_100079800, &type metadata accessor for WidgetFamily, &v51 - v12);
  v14 = *(v8 + 88);
  v15 = v14(v13, v7);
  v16 = enum case for WidgetFamily.systemSmall(_:);
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v15 == v16)
  {
    v18 = sub_10006C93C();
    v19 = v53;
    *v53 = v18;
    *(v19 + 8) = v20;
    v21 = v19 + *(sub_100003500(&qword_100089E88, &qword_10007B720) + 44);
    sub_100003500(&qword_100088BC8, &unk_1000799A0);
    v22 = *(type metadata accessor for WorldClockCity(0) - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100079940;
    sub_100065FD4(v25 + v24);
    sub_100065FD4(v25 + v24 + v23);
    sub_100065FD4(v25 + v24 + 2 * v23);
    sub_100065FD4(v25 + v24 + 3 * v23);
    v26 = type metadata accessor for PlaceholderViewMulti(0);
    v27 = *(v26 + 24);
    LOBYTE(v24) = *(v1 + *(v26 + 20));
    v28 = type metadata accessor for SmallMultiWorldClockView(0);
    v29 = *(v28 + 28);
    v30 = sub_10006C9EC();
    (*(*(v30 - 8) + 16))(v21 + v29, v1 + v27, v30);
    *v21 = v25;
    *(v21 + 8) = 1;
    *(v21 + 9) = v24;
    *(v21 + *(v28 + 32)) = 0x4020000000000000;
    sub_100009264(v19, v56, &qword_100089E70, &qword_10007B708);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_100089E80, &qword_100089E70, &qword_10007B708, &protocol conformance descriptor for ZStack<A>);
    sub_10003DF94(&qword_100089E58, type metadata accessor for MediumWorldClockView, &unk_10007BD20);
    v31 = v58;
    sub_10006C26C();
    sub_100009204(v19, &qword_100089E70, &qword_10007B708);
LABEL_5:
    v34 = 0;
    goto LABEL_6;
  }

  sub_1000301B8(&qword_100088A40, &unk_100079800, &type metadata accessor for WidgetFamily, v10);
  v32 = v14(v10, v7);
  v33 = enum case for WidgetFamily.systemMedium(_:);
  v17(v10, v7);
  v34 = 1;
  v31 = v58;
  if (v32 == v33)
  {
    sub_100003500(&qword_100088BC8, &unk_1000799A0);
    v35 = *(type metadata accessor for WorldClockCity(0) - 8);
    v36 = *(v35 + 72);
    v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v38 = swift_allocObject();
    v53 = xmmword_100079940;
    *(v38 + 16) = xmmword_100079940;
    sub_100065FD4(v38 + v37);
    sub_100065FD4(v38 + v37 + v36);
    sub_100065FD4(v38 + v37 + 2 * v36);
    sub_100065FD4(v38 + v37 + 3 * v36);
    v39 = v51;
    sub_10006BB6C();
    v40 = sub_100001CF8();
    v41 = v52;
    sub_10000A260(v39, v38, v40 & 1, v52);
    v42 = type metadata accessor for PlaceholderViewMulti(0);
    v43 = *(v42 + 24);
    LOBYTE(v39) = *(v1 + *(v42 + 20));
    v44 = v57;
    v45 = *(v57 + 32);
    v46 = sub_10006C9EC();
    (*(*(v46 - 8) + 16))(v41 + v45, v1 + v43, v46);
    *(v41 + v44[5]) = 1;
    v47 = v44[6];
    sub_100003500(&qword_100089080, &qword_100079E28);
    v48 = swift_allocObject();
    *(v48 + 16) = v53;
    *(v48 + 32) = sub_10006C72C();
    *(v48 + 40) = sub_10006C77C();
    *(v48 + 48) = sub_10006C73C();
    *(v48 + 56) = sub_10006C74C();
    *(v41 + v47) = v48;
    *(v41 + v44[7]) = v39;
    *(v41 + v44[9]) = 0x4020000000000000;
    sub_10003DE44(v41, v56, type metadata accessor for MediumWorldClockView);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_100089E80, &qword_100089E70, &qword_10007B708, &protocol conformance descriptor for ZStack<A>);
    sub_10003DF94(&qword_100089E58, type metadata accessor for MediumWorldClockView, &unk_10007BD20);
    sub_10006C26C();
    sub_10003DD7C(v41, type metadata accessor for MediumWorldClockView);
    goto LABEL_5;
  }

LABEL_6:
  v49 = sub_100003500(&qword_100089E78, &unk_10007B710);
  return (*(*(v49 - 8) + 56))(v31, v34, 1, v49);
}

uint64_t sub_1000301B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_10006C0AC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003500(a1, a2);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_100009264(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_10006CCCC();
    v19 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_10003040C(char a1, __n128 a2)
{
  result = type metadata accessor for SmallWorldClockView(0);
  *(v2 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1000304A8(char a1, __n128 a2)
{
  result = type metadata accessor for SmallWorldClockView(0);
  *(v2 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_100030544(char a1, __n128 a2)
{
  result = type metadata accessor for SmallWorldClockView(0);
  *(v2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_1000305E0(char a1, __n128 a2)
{
  result = type metadata accessor for SmallWorldClockView(0);
  *(v2 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_100030680@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SmallWorldClockView(0) + 52);
  v5 = sub_10006C9EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t sub_1000306FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_10006C2CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_100089E90, &qword_10007B728);
  __chkstk_darwin(v7);
  v9 = &v24 - v8;
  v10 = sub_100003500(&qword_100089E98, &qword_10007B730);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - v12;
  *v9 = sub_10006C93C();
  *(v9 + 1) = v14;
  v15 = sub_100003500(&qword_100089EA0, &qword_10007B738);
  sub_100030A50(v2, &v9[*(v15 + 44)]);
  sub_10006C93C();
  sub_10006BEDC();
  v16 = &v9[*(v7 + 36)];
  v17 = v29;
  *v16 = v28;
  *(v16 + 1) = v17;
  *(v16 + 2) = v30;
  sub_10006C2BC();
  v18 = sub_10003E244();
  sub_10006C6AC();
  (*(v4 + 8))(v6, v3);
  sub_100009204(v9, &qword_100089E90, &qword_10007B728);
  type metadata accessor for SmallWorldClockView(0);
  v26 = v7;
  v27 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_10006C68C();
  (*(v11 + 8))(v13, v10);
  v20 = (v19 + *(sub_100003500(&qword_100089EC0, &qword_10007B748) + 36));
  v21 = *(sub_100003500(&qword_100089EC8, &qword_10007B750) + 28);
  sub_10000FB98();
  v22 = sub_10006C1FC();
  (*(*(v22 - 8) + 56))(&v20[v21], 0, 1, v22);
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

uint64_t sub_100030A50@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v133 = a2;
  v131 = type metadata accessor for Clock(0);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v114 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v113 = &v105 - v5;
  v6 = sub_100003500(&qword_10008B930, &qword_10007CEB0);
  __chkstk_darwin(v6 - 8);
  v132 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v137 = &v105 - v9;
  v112 = type metadata accessor for ClockText(0);
  __chkstk_darwin(v112);
  v106 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_100003500(&qword_10008B938, &qword_10007CEB8);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v111 = &v105 - v11;
  v12 = sub_100003500(&qword_10008B940, &qword_10007CEC0);
  __chkstk_darwin(v12 - 8);
  v129 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v139 = &v105 - v15;
  v118 = sub_10006C0AC();
  v117 = *(v118 - 8);
  __chkstk_darwin(v118);
  v116 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v17 - 8);
  v119 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v105 - v20;
  v136 = sub_10006BD3C();
  v140 = *(v136 - 8);
  __chkstk_darwin(v136);
  v125 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v105 - v24;
  v26 = type metadata accessor for ClockFace(0);
  __chkstk_darwin(v26);
  v28 = (&v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_100003500(&qword_10008B948, &qword_10007CEC8);
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v126 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v141 = &v105 - v31;
  v32 = type metadata accessor for SmallWorldClockView(0);
  v33 = (a1 + v32[6]);
  v35 = v33[3];
  v34 = v33[4];
  v138 = v33;
  sub_10004F840(v33, v35);
  v36 = (*(v34 + 24))(v35, v34);
  LODWORD(v120) = sub_100031B6C();
  v37 = a1 + v32[5];
  v121 = v25;
  sub_1000657E8(v25);
  v38 = v32[7];
  v135 = *(a1 + v32[8]);
  v134 = *(a1 + v38);
  LODWORD(v35) = *(v37 + *(type metadata accessor for WorldClockCity(0) + 20));
  v39 = sub_10006BB7C();
  v40 = *(v39 - 8);
  v41 = v40;
  v109 = v35;
  v115 = v40;
  if (v35 == 1)
  {
    (*(v40 + 16))(v21, v37, v39);
    v41 = v115;
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v122 = v37;
  v43 = *(v41 + 56);
  v110 = v39;
  v108 = v41 + 56;
  v107 = v43;
  v43(v21, v42, 1, v39);
  sub_10003E1E0(v138, v143);
  sub_100003500(&qword_100089ED0, &unk_10007B788);
  if (swift_dynamicCast())
  {

    v44 = *(a1 + v32[11] + 8);

    if ((v44 & 1) == 0)
    {
      sub_10006CCCC();
      v45 = sub_10006C32C();
      sub_10006BDEC();

      v46 = v116;
      sub_10006C09C();
      swift_getAtKeyPath();

      (*(v117 + 8))(v46, v118);
    }

    v47 = v21;
    v48 = sub_10006763C();
  }

  else
  {
    v47 = v21;
    v48 = 1;
  }

  v49 = *(a1 + v32[10]);
  v50 = *(a1 + v32[12]);
  *(v28 + v26[14]) = swift_getKeyPath();
  sub_100003500(&qword_100089DD8, &qword_10007B628);
  swift_storeEnumTagMultiPayload();
  *v28 = v36;
  *(v28 + 8) = v120 & 1;
  v51 = *(v140 + 32);
  v52 = v28 + v26[6];
  v140 += 32;
  v120 = v51;
  v51(v52, v121, v136);
  *(v28 + v26[7]) = v135;
  v53 = v134;
  *(v28 + v26[8]) = v134;
  sub_1000586D4(v47, v28 + v26[9], &qword_1000887E8, &qword_1000795A0);
  *(v28 + v26[10]) = v48;
  v54 = v26[11];
  LODWORD(v121) = v49;
  *(v28 + v54) = v49;
  v55 = v26[12];
  *(v28 + v55) = sub_100027180();
  *(v28 + v26[13]) = v50;
  sub_10003DF94(&qword_10008B950, type metadata accessor for ClockFace, &unk_10007BDC0);
  sub_10006C63C();
  sub_10003DD7C(v28, type metadata accessor for ClockFace);
  if (v53)
  {
    v56 = 1;
    v57 = v137;
    v58 = v139;
    v59 = v124;
    v60 = v123;
    v61 = v122;
  }

  else
  {
    v62 = sub_100031B6C();
    v63 = v112;
    v64 = v106;
    v61 = v122;
    sub_10003DE44(v122, &v106[*(v112 + 20)], type metadata accessor for WorldClockCity);
    sub_10003E1E0(v138, &v64[v63[6]]);
    v65 = *(a1 + v32[9]);
    v66 = v32[13];
    v67 = v63[10];
    v68 = sub_10006C9EC();
    (*(*(v68 - 8) + 16))(&v64[v67], a1 + v66, v68);
    *&v64[v63[8]] = swift_getKeyPath();
    sub_100003500(&qword_100088FB8, &qword_100079CB0);
    swift_storeEnumTagMultiPayload();
    *v64 = v62;
    v64[v63[7]] = v65;
    v64[v63[9]] = v50;
    v69 = &v64[v63[11]];
    type metadata accessor for ClockWidgetEnvironmentObject(0);
    sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    *v69 = sub_10006BE6C();
    v69[8] = v70 & 1;
    sub_10003DF94(&qword_10008B958, type metadata accessor for ClockText, &unk_10007BF00);
    v71 = v111;
    sub_10006C5DC();
    sub_10003DD7C(v64, type metadata accessor for ClockText);
    v60 = v123;
    v58 = v139;
    v59 = v124;
    (*(v123 + 32))(v139, v71, v124);
    v56 = 0;
    v57 = v137;
  }

  (*(v60 + 56))(v58, v56, 1, v59);
  v72 = *(a1 + v32[11] + 8);

  if ((v72 & 1) == 0)
  {
    sub_10006CCCC();
    v73 = sub_10006C32C();
    sub_10006BDEC();

    v74 = v116;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v117 + 8))(v74, v118);
  }

  v75 = sub_10006763C();

  LOBYTE(v142) = v75;
  LOBYTE(v143[0]) = 0;
  sub_100010D34();
  if (sub_10006CB3C())
  {
    (*(v130 + 56))(v57, 1, 1, v131);
  }

  else
  {
    LODWORD(v124) = v50;
    v76 = sub_100031B6C();
    sub_1000657E8(v125);
    sub_10003E1E0(v138, &v142);
    v77 = 1;
    v78 = v110;
    if (v109)
    {
      (*(v115 + 16))(v119, v61, v110);
      v77 = 0;
    }

    v79 = v119;
    v107(v119, v77, 1, v78);
    v80 = sub_100031B6C();
    v81 = sub_10000F1C8(v80);
    v82 = sub_10000F088(v80);
    v83 = sub_10000F1C8(v80);
    v84 = v32[13];
    v85 = v131;
    v86 = *(v131 + 56);
    v87 = sub_10006C9EC();
    v88 = v114;
    (*(*(v87 - 8) + 16))(&v114[v86], a1 + v84, v87);
    *v88 = v76;
    v120(&v88[v85[5]], v125, v136);
    sub_10003D860(&v142, &v88[v85[6]]);
    v88[v85[7]] = v134;
    sub_1000586D4(v79, &v88[v85[8]], &qword_1000887E8, &qword_1000795A0);
    v88[v85[9]] = v135;
    v88[v85[10]] = 1;
    v89 = &v88[v85[11]];
    *v89 = xmmword_10007B4D0;
    *(v89 + 2) = 0x3F916872B020C49CLL;
    *(v89 + 3) = v81;
    *(v89 + 4) = v82;
    v89[40] = 1;
    *(v89 + 41) = v143[0];
    *(v89 + 11) = *(v143 + 3);
    *(v89 + 6) = v83;
    *(v89 + 7) = 0x3FC3333333333333;
    v88[v85[12]] = v121;
    v88[v85[13]] = v124;
    v90 = &v88[v85[15]];
    type metadata accessor for ClockWidgetEnvironmentObject(0);
    sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
    *v90 = sub_10006BE6C();
    v90[8] = v91 & 1;
    v92 = v113;
    sub_10003DDDC(v88, v113, type metadata accessor for Clock);
    v57 = v137;
    sub_10003DDDC(v92, v137, type metadata accessor for Clock);
    (*(v130 + 56))(v57, 0, 1, v85);
  }

  v93 = v127;
  v94 = *(v127 + 16);
  v95 = v126;
  v96 = v128;
  v94(v126, v141, v128);
  v97 = v139;
  v98 = v129;
  sub_100009264(v139, v129, &qword_10008B940, &qword_10007CEC0);
  v99 = v132;
  sub_100009264(v57, v132, &qword_10008B930, &qword_10007CEB0);
  v100 = v57;
  v101 = v133;
  v94(v133, v95, v96);
  v102 = sub_100003500(&qword_10008B960, &unk_10007CED0);
  sub_100009264(v98, &v101[*(v102 + 48)], &qword_10008B940, &qword_10007CEC0);
  sub_100009264(v99, &v101[*(v102 + 64)], &qword_10008B930, &qword_10007CEB0);
  sub_100009204(v100, &qword_10008B930, &qword_10007CEB0);
  sub_100009204(v97, &qword_10008B940, &qword_10007CEC0);
  v103 = *(v93 + 8);
  v103(v141, v96);
  sub_100009204(v99, &qword_10008B930, &qword_10007CEB0);
  sub_100009204(v98, &qword_10008B940, &qword_10007CEC0);
  return (v103)(v95, v96);
}

BOOL sub_100031B6C()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SmallWorldClockView(0);
  sub_10006C9BC();
  v6 = sub_10006C9AC();
  v7 = *(v2 + 8);
  v7(v4, v1);
  if (v6 & 1) != 0 && (*(v0 + v5[12]))
  {
    return 0;
  }

  if (*(v0 + v5[10]) & 1) == 0 && (*(v0 + v5[12]) & 1) == 0 && (sub_10006C9DC(), v8 = sub_10006C9AC(), v7(v4, v1), (v8))
  {
    return 0;
  }

  else
  {
    return (*(v0 + v5[9]) & 1) != 0 || sub_100064BD8();
  }
}

uint64_t sub_100031CE0()
{
  v1 = sub_10006C0AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 56;
  v5 = type metadata accessor for SmallWorldClockView(0);
  sub_10003E1E0(v0 + *(v5 + 24), v11);
  sub_100003500(&qword_100089ED0, &unk_10007B788);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v6 = *(v0 + *(v5 + 44) + 8);

  if ((v6 & 1) == 0)
  {
    sub_10006CCCC();
    v7 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
  }

  v8 = sub_10006763C();

  return v8;
}

uint64_t sub_100031E98@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, __n128 a10@<Q0>, uint64_t a11)
{
  *a9 = a10.n128_u64[0];
  *(a9 + 8) = a1;
  v18 = type metadata accessor for ClockFace(0);
  v19 = v18[6];
  v20 = sub_10006BD3C();
  (*(*(v20 - 8) + 32))(a9 + v19, a2, v20);
  *(a9 + v18[7]) = a3;
  *(a9 + v18[8]) = a4;
  sub_1000586D4(a5, a9 + v18[9], &qword_1000887E8, &qword_1000795A0);
  *(a9 + v18[10]) = a6;
  *(a9 + v18[11]) = a7;
  v21 = v18[12];
  *(a9 + v21) = sub_100027180();
  *(a9 + v18[13]) = a8;
  return sub_1000586D4(a11, a9 + v18[14], &qword_100089988, &qword_10007A9D8);
}

uint64_t sub_100031FCC@<X0>(char a1@<W0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  *a8 = a1;
  v16 = type metadata accessor for ClockText(0);
  sub_10003DDDC(a2, &a8[v16[5]], type metadata accessor for WorldClockCity);
  sub_10003D860(a3, &a8[v16[6]]);
  a8[v16[7]] = a4;
  sub_1000586D4(a5, &a8[v16[8]], &qword_100088B58, &qword_100079D00);
  a8[v16[9]] = a6;
  v17 = v16[10];
  v18 = sub_10006C9EC();
  (*(*(v18 - 8) + 32))(&a8[v17], a7, v18);
  v19 = &a8[v16[11]];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  result = sub_10006BE6C();
  *v19 = result;
  v19[8] = v21 & 1;
  return result;
}

uint64_t sub_100032138@<X0>(char a1@<W0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, _OWORD *a8@<X7>, _BYTE *a9@<X8>, char a10, char a11, uint64_t a12)
{
  *a9 = a1;
  v20 = type metadata accessor for Clock(0);
  v21 = v20[5];
  v22 = sub_10006BD3C();
  (*(*(v22 - 8) + 32))(&a9[v21], a2, v22);
  sub_10003D860(a3, &a9[v20[6]]);
  a9[v20[7]] = a4;
  sub_1000586D4(a5, &a9[v20[8]], &qword_1000887E8, &qword_1000795A0);
  a9[v20[9]] = a6;
  a9[v20[10]] = a7;
  v23 = &a9[v20[11]];
  v24 = a8[1];
  *v23 = *a8;
  v23[1] = v24;
  v25 = a8[3];
  v23[2] = a8[2];
  v23[3] = v25;
  a9[v20[12]] = a10;
  a9[v20[13]] = a11;
  v26 = v20[14];
  v27 = sub_10006C9EC();
  (*(*(v27 - 8) + 32))(&a9[v26], a12, v27);
  v28 = &a9[v20[15]];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  result = sub_10006BE6C();
  *v28 = result;
  v28[8] = v30 & 1;
  return result;
}

uint64_t sub_100032340@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = result;
  *(a3 + 32) = a2;
  return result;
}

uint64_t sub_100032360@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *(result + 16);
  *a4 = *result;
  *(a4 + 16) = v5;
  *(a4 + 24) = *(result + 24);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  *(a4 + 56) = a5;
  return result;
}

uint64_t sub_1000323D4@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for SmallMultiWorldClockView(0) + 28);
  v5 = sub_10006C9EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t sub_100032450(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for SmallMultiWorldClockView(0) + 28);
  v5 = sub_10006C9EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_100032514@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v4 = type metadata accessor for SmallMultiWorldClockView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_10003DE44(v2, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmallMultiWorldClockView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_10003DDDC(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for SmallMultiWorldClockView);
  *a1 = sub_10004EDA0;
  a1[1] = v8;
  return result;
}

uint64_t sub_100032630@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_10006C93C();
  a3[1] = v5;
  v6 = a3 + *(sub_100003500(&qword_10008B8F0, &qword_10007CE78) + 44);
  v7 = sub_10006C1CC();
  v8 = type metadata accessor for SmallMultiWorldClockView(0);
  v9 = *(a2 + *(v8 + 32));
  *v6 = v7;
  *(v6 + 1) = v9;
  v6[16] = 0;
  sub_100003500(&qword_10008B8F8, &qword_10007CE80);
  sub_100032784(a2, v10);
  v11 = sub_10006C33C();
  *(a3 + *(sub_100003500(&qword_10008B900, &qword_10007CE88) + 36)) = v11;
  v12 = *sub_10000E5A0();
  v13 = *(v8 + 28);
  v14 = (a3 + *(sub_100003500(&qword_10008B908, &qword_10007CE90) + 36));
  v15 = *(type metadata accessor for AccentedWidgetBackground(0) + 20);
  v16 = sub_10006C9EC();
  (*(*(v16 - 8) + 16))(v14 + v15, a2 + v13, v16);
  *v14 = v12;
}

uint64_t sub_100032784(uint64_t *a1, __n128 a2)
{
  v3 = type metadata accessor for SmallMultiWorldClockView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v7 = sub_100032A00(*a1);
  sub_10006BEEC();
  v9 = (v8 - *(a1 + *(v4 + 40))) * 0.5;
  v10 = sub_1000220E4();
  v11 = sub_100020B24();
  v12 = sub_100020A1C();
  v13 = sub_100021260();
  v14 = sub_100021270();
  v15 = sub_100020A1C();
  sub_100021544(v10, v24, v9, v11, v12, v13, v14, v15);
  v16 = type metadata accessor for WorldClockCity(0);
  v17 = sub_10002643C(2, v7, v16);

  sub_10003DE44(a1, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmallMultiWorldClockView);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  sub_10003DDDC(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for SmallMultiWorldClockView);
  v20 = v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v24[1];
  *v20 = v24[0];
  *(v20 + 16) = v21;
  *(v20 + 32) = v24[2];
  *(v20 + 48) = v25;
  sub_100003500(&qword_10008B910, &qword_10007CE98);
  sub_100011308(&qword_10008B918, &qword_10008B910, &qword_10007CE98, &protocol conformance descriptor for HStack<A>);
  return sub_10006C8DC();
}

void *sub_100032A00(uint64_t a1)
{
  v2 = type metadata accessor for WorldClockCity(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = 0;
  v22 = a1;
  v10 = *(a1 + 16);
  v11 = &_swiftEmptyArrayStorage;
  do
  {
    if (v9 >= v10)
    {
      sub_1000662E4(v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10004EDCC(0, v11[2] + 1, 1, v11);
      }

      v19 = v11[2];
      v18 = v11[3];
      if (v19 >= v18 >> 1)
      {
        v11 = sub_10004EDCC((v18 > 1), v19 + 1, 1, v11);
      }

      v11[2] = v19 + 1;
      v12 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19;
      v13 = v5;
    }

    else
    {
      v14 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v15 = *(v3 + 72);
      sub_10003DE44(v22 + v14 + v15 * v9, v8, type metadata accessor for WorldClockCity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10004EDCC(0, v11[2] + 1, 1, v11);
      }

      v17 = v11[2];
      v16 = v11[3];
      if (v17 >= v16 >> 1)
      {
        v11 = sub_10004EDCC((v16 > 1), v17 + 1, 1, v11);
      }

      v11[2] = v17 + 1;
      v12 = v11 + v14 + v17 * v15;
      v13 = v8;
    }

    sub_10003DDDC(v13, v12, type metadata accessor for WorldClockCity);
    ++v9;
  }

  while (v9 != 4);
  return v11;
}

void sub_100032C60(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = type metadata accessor for SmallMultiWorldClockView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > a1)
  {
    v14 = *(a2 + 8 * a1 + 32);

    v15 = sub_10006C0EC();
    v16 = *(a3 + *(v11 + 32));
    *a5 = v15;
    *(a5 + 8) = v16;
    *(a5 + 16) = 0;
    sub_100003500(&qword_10008B920, &qword_10007CEA0);
    v21 = v14;
    sub_10003DE44(a3, &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SmallMultiWorldClockView);
    v17 = (*(v12 + 80) + 72) & ~*(v12 + 80);
    v18 = swift_allocObject();
    v19 = *(a4 + 16);
    *(v18 + 16) = *a4;
    *(v18 + 32) = v19;
    *(v18 + 48) = *(a4 + 32);
    *(v18 + 64) = *(a4 + 48);
    sub_10003DDDC(&v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17, type metadata accessor for SmallMultiWorldClockView);
    sub_100059794(a4, v20);
    sub_100003500(&qword_10008B898, &qword_10007CE50);
    type metadata accessor for SmallWorldClockView(0);
    sub_100011308(&qword_10008B8A8, &qword_10008B898, &qword_10007CE50, &protocol conformance descriptor for [A]);
    sub_10003DF94(&qword_100089E60, type metadata accessor for SmallWorldClockView, &unk_10007BC80);
    sub_10003DF94(&qword_10008B8C0, type metadata accessor for WorldClockCity, &unk_10007D630);
    sub_10006C8CC();
    return;
  }

  __break(1u);
}

uint64_t sub_100032FE8(char a1)
{
  result = type metadata accessor for MediumWorldClockView(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_100033060()
{
  sub_100003500(&qword_100089080, &qword_100079E28);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100079940;
  *(v0 + 32) = sub_10006C72C();
  *(v0 + 40) = sub_10006C77C();
  *(v0 + 48) = sub_10006C73C();
  *(v0 + 56) = sub_10006C74C();
  return v0;
}

uint64_t sub_1000330D0()
{
  type metadata accessor for MediumWorldClockView(0);
}

uint64_t sub_100033128(char a1)
{
  result = type metadata accessor for MediumWorldClockView(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1000331A0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediumWorldClockView(0) + 32);
  v4 = sub_10006C9EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_10003321C(uint64_t a1)
{
  v3 = *(type metadata accessor for MediumWorldClockView(0) + 32);
  v4 = sub_10006C9EC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1000332E0@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v3 = type metadata accessor for MediumWorldClockView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  sub_10003DE44(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MediumWorldClockView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_10003DDDC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for MediumWorldClockView);
  *a1 = sub_10004EFA8;
  a1[1] = v7;
  return result;
}

uint64_t sub_1000333FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v49 = sub_10006C31C();
  v48 = *(v49 - 8);
  __chkstk_darwin(v49);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediumWorldClockView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = v5 - 8;
  v46 = v5 - 8;
  __chkstk_darwin(v5 - 8);
  v9 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100003500(&qword_10008B880, &qword_10007CE38);
  __chkstk_darwin(v45);
  v11 = (&v42 - v10);
  sub_10006BEEC();
  v13 = v12;
  v15 = v14;
  *v11 = sub_10006C93C();
  v11[1] = v16;
  v17 = *(a1 + *(type metadata accessor for WorldClockEntry(0) + 20));
  v18 = *(v17 + 16);
  v19 = *(a1 + *(v8 + 44));
  v20 = (v11 + *(sub_100003500(&qword_10008B888, &qword_10007CE40) + 44));
  v21 = (v13 - v19 * (v18 - 1)) / v18;
  *v20 = sub_10006C0EC();
  v20[1] = v19;
  *(v20 + 16) = 0;
  v44 = *(sub_100003500(&qword_10008B890, &qword_10007CE48) + 44);
  v22 = sub_1000220E8();
  v23 = sub_100020B24();
  v24 = sub_100020A1C();
  v25 = sub_1000216B4();
  v26 = sub_1000216C4();
  v27 = sub_1000216D0();
  v28 = sub_100021270();
  v29 = sub_1000216D8();
  sub_100021770(v22, v52, v21, v23, v24, v25, v26, v27, v28, v29);
  v51 = v17;
  v43 = a1;
  sub_10003DE44(a1, v9, type metadata accessor for MediumWorldClockView);
  v30 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v31 = (v7 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v33 = v52[3];
  *(v32 + 48) = v52[2];
  *(v32 + 64) = v33;
  *(v32 + 80) = v53;
  v34 = v52[1];
  *(v32 + 16) = v52[0];
  *(v32 + 32) = v34;
  sub_10003DDDC(v9, v32 + v30, type metadata accessor for MediumWorldClockView);
  *(v32 + v31) = v21;
  *(v32 + ((v31 + 15) & 0xFFFFFFFFFFFFFFF8)) = v15;

  sub_100003500(&qword_10008B898, &qword_10007CE50);
  sub_100003500(&qword_10008B8A0, &qword_10007CE58);
  sub_100011308(&qword_10008B8A8, &qword_10008B898, &qword_10007CE50, &protocol conformance descriptor for [A]);
  sub_1000590A4();
  sub_10003DF94(&qword_10008B8C0, type metadata accessor for WorldClockCity, &unk_10007D630);
  sub_10006C8CC();
  sub_10006C30C();
  v50 = a1;
  sub_10006C93C();
  sub_100003500(&qword_10008B8C8, &qword_10007CE60);
  sub_100011308(&qword_10008B8D0, &qword_10008B880, &qword_10007CE38, &protocol conformance descriptor for ZStack<A>);
  sub_100059168();
  v35 = v47;
  sub_10006C69C();
  (*(v48 + 8))(v4, v49);
  sub_100009204(v11, &qword_10008B880, &qword_10007CE38);
  LOBYTE(v17) = sub_10006C33C();
  *(v35 + *(sub_100003500(&qword_10008B8E0, &qword_10007CE68) + 36)) = v17;
  v36 = *sub_10000E5A0();
  v37 = *(v46 + 40);
  v38 = (v35 + *(sub_100003500(&qword_10008B8E8, &qword_10007CE70) + 36));
  v39 = *(type metadata accessor for AccentedWidgetBackground(0) + 20);
  v40 = sub_10006C9EC();
  (*(*(v40 - 8) + 16))(v38 + v39, v43 + v37, v40);
  *v38 = v36;
}

uint64_t sub_100033A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1000586D4(a1, a8, &qword_100088B58, &qword_100079D00);
  v15 = type metadata accessor for MediumClockFaceView(0);
  sub_10003DDDC(a2, a8 + v15[5], type metadata accessor for WorldClockCity);
  sub_10003D860(a3, a8 + v15[6]);
  *(a8 + v15[7]) = a4;
  *(a8 + v15[8]) = a5;
  *(a8 + v15[9]) = 0x3FE199999999999ALL;
  *(a8 + v15[10]) = a6;
  v16 = v15[11];
  v17 = sub_10006C9EC();
  v18 = *(*(v17 - 8) + 32);

  return v18(a8 + v16, a7, v17);
}

__n128 sub_100033B28@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10006C9EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(type metadata accessor for MediumWorldClockView(0) + 32);
  sub_10006C9CC();
  v9 = sub_10006C9AC();
  (*(v5 + 8))(v7, v4);
  if (v9)
  {
    v10 = sub_10006C76C();
  }

  else
  {
    v10 = *sub_10000E5A0();
  }

  v11 = sub_10006C33C();
  v12 = (a2 + *(sub_100003500(&qword_10008B8C8, &qword_10007CE60) + 36));
  v13 = type metadata accessor for ClockWidgetAccentableOpacity(0);
  (*(v5 + 16))(v12 + *(v13 + 24), a1 + v8, v4);
  __asm { FMOV            V0.2D, #1.0 }

  *v12 = result;
  *a2 = v10;
  *(a2 + 8) = v11;
  return result;
}

uint64_t sub_100033C9C()
{
  v0 = sub_10006C9EC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumWorldClockView(0);
  sub_10006C9CC();
  v4 = sub_10006C9AC();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_10006C76C();
  }

  sub_10000E5A0();
}

uint64_t sub_100033D98(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = type metadata accessor for ClockWidgetAccentableOpacity(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 24);
  v13 = sub_10006C9EC();
  (*(*(v13 - 8) + 16))(v10 + v12, a1, v13);
  *v10 = a4;
  v10[1] = a5;
  sub_10006C6FC();
  return sub_10003DD7C(v10, type metadata accessor for ClockWidgetAccentableOpacity);
}

uint64_t sub_100033EFC@<X0>(uint64_t a1@<X0>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10003DE44(v5, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  result = sub_10003DDDC(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, a3);
  *a5 = a4;
  a5[1] = v13;
  return result;
}

uint64_t sub_1000340B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 24);

  return sub_10003E1E0(v4, a2);
}

uint64_t sub_100034120(char a1)
{
  result = type metadata accessor for MediumClockFaceView(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1000341BC(char a1)
{
  result = type metadata accessor for MediumClockFaceView(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_100034288@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediumClockFaceView(0) + 44);
  v4 = sub_10006C9EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100034304@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_10006C2CC();
  v19 = *(v2 - 8);
  v20 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_100089ED8, &qword_10007B798);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v18 = sub_100003500(&qword_100089EE0, &qword_10007B7A0);
  v8 = *(v18 - 8);
  __chkstk_darwin(v18);
  v10 = &v18 - v9;
  *v7 = sub_10006C1BC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11 = sub_100003500(&qword_100089EE8, &qword_10007B7A8);
  sub_100034610(v1, &v7[*(v11 + 44)]);
  v12 = &v7[*(v5 + 36)];
  v13 = *(sub_100003500(&qword_100089EC8, &qword_10007B750) + 28);
  type metadata accessor for MediumClockFaceView(0);
  sub_10000FB98();
  v14 = sub_10006C1FC();
  (*(*(v14 - 8) + 56))(v12 + v13, 0, 1, v14);
  *v12 = swift_getKeyPath();
  sub_10006C2BC();
  v15 = sub_10004F0AC();
  sub_10006C6AC();
  (*(v19 + 8))(v4, v20);
  sub_100009204(v7, &qword_100089ED8, &qword_10007B798);
  v22 = v5;
  v23 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v18;
  sub_10006C68C();
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_100034610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v238 = a2;
  v3 = sub_100003500(&qword_10008B7E0, &qword_10007CDB8);
  v236 = *(v3 - 8);
  v237 = v3;
  __chkstk_darwin(v3);
  v206 = &v194 - v4;
  v5 = sub_100003500(&qword_10008B7E8, &qword_10007CDC0);
  __chkstk_darwin(v5 - 8);
  v203 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v198 = &v194 - v8;
  v231 = sub_100003500(&qword_10008B7F0, &qword_10007CDC8);
  __chkstk_darwin(v231);
  v201 = &v194 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v197 = &v194 - v11;
  v232 = sub_100003500(&qword_10008B7F8, &qword_10007CDD0);
  __chkstk_darwin(v232);
  v200 = &v194 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v196 = &v194 - v14;
  v230 = sub_100003500(&qword_10008B800, &qword_10007CDD8);
  __chkstk_darwin(v230);
  v205 = &v194 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v204 = &v194 - v17;
  __chkstk_darwin(v18);
  v199 = &v194 - v19;
  __chkstk_darwin(v20);
  v202 = &v194 - v21;
  __chkstk_darwin(v22);
  v195 = &v194 - v23;
  __chkstk_darwin(v24);
  v233 = &v194 - v25;
  v26 = sub_100003500(&qword_10008B808, &qword_10007CDE0);
  __chkstk_darwin(v26 - 8);
  v235 = &v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v234 = &v194 - v29;
  v30 = sub_10006C1AC();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v194 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v194 - v35;
  v217 = sub_100003500(&qword_10008B810, &qword_10007CDE8);
  __chkstk_darwin(v217);
  v220 = &v194 - v37;
  v218 = sub_100003500(&qword_10008B818, &qword_10007CDF0);
  __chkstk_darwin(v218);
  v219 = &v194 - v38;
  v223 = sub_100003500(&qword_10008B820, &qword_10007CDF8);
  __chkstk_darwin(v223);
  v222 = &v194 - v39;
  v224 = sub_100003500(&qword_10008B828, &qword_10007CE00);
  __chkstk_darwin(v224);
  v229 = &v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v221 = (&v194 - v42);
  __chkstk_darwin(v43);
  v244 = &v194 - v44;
  v45 = sub_100003500(&qword_10008B830, &qword_10007CE08);
  __chkstk_darwin(v45 - 8);
  v228 = &v194 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = &v194 - v48;
  *v49 = sub_10006C93C();
  *(v49 + 8) = v50;
  v51 = *(sub_100003500(&qword_10008B838, &qword_10007CE10) + 44);
  v227 = v49;
  sub_100035C78(a1, v49 + v51);
  sub_1000301B8(&qword_100088FB8, &qword_100079CB0, &type metadata accessor for ContentSizeCategory, v36);
  v52 = *(v31 + 104);
  v226 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  v242 = v52;
  v243 = v31 + 104;
  v52(v33);
  LOBYTE(v49) = sub_10001088C(v36, v33);
  v53 = *(v31 + 8);
  v225 = v33;
  v53(v33, v30);
  v54 = v36;
  v246 = v31 + 8;
  v247 = v30;
  v245 = v53;
  v53(v36, v30);
  v55 = type metadata accessor for MediumClockFaceView(0);
  v56 = a1 + *(v55 + 20);
  v57 = type metadata accessor for WorldClockCity(0);
  v58 = 24;
  if (v49)
  {
    v58 = 28;
  }

  v216 = v57;
  v59 = *(v56 + *(v57 + v58));

  *&v283[0] = v59;
  *(&v283[0] + 1) = v60;
  v240 = sub_10002B2FC();
  v61 = sub_10006C5BC();
  v63 = v62;
  v65 = v64;
  sub_10006C3DC();
  v66 = sub_10006C4DC();
  v214 = v67;
  v215 = v66;
  v69 = v68;
  v213 = v70;
  sub_1000070DC(v61, v63, v65 & 1);

  v239 = v55;
  v71 = (a1 + *(v55 + 24));
  v72 = v71[3];
  v73 = v71[4];
  sub_10004F840(v71, v72);
  (*(v73 + 24))(v72, v73);
  sub_10006C93C();
  sub_10006BF6C();
  v211 = v69 & 1;
  v292 = v69 & 1;
  v74 = v71[3];
  v75 = v71[4];
  sub_10004F840(v71, v74);
  v241 = a1;
  v212 = &type metadata accessor for ContentSizeCategory;
  sub_1000301B8(&qword_100088FB8, &qword_100079CB0, &type metadata accessor for ContentSizeCategory, v54);
  v210 = (*(v75 + 208))(v54, v74, v75);
  v245(v54, v247);
  KeyPath = swift_getKeyPath();
  v208 = swift_getKeyPath();
  v77 = v71[3];
  v76 = v71[4];
  v207 = sub_10004F840(v71, v77);
  sub_1000301B8(&qword_100088FB8, &qword_100079CB0, &type metadata accessor for ContentSizeCategory, v54);
  v78 = *(v76 + 200);
  v79 = *(v217 + 9);
  v217 = v71;
  v80 = v220;
  v81 = &v220[v79];
  sub_100003500(&qword_100088FC8, &qword_100079CF0);
  v82 = v77;
  v83 = v247;
  v78(v54, v82, v76);
  v84 = v245;
  v245(v54, v83);
  *v81 = v208;
  v85 = v214;
  *v80 = v215;
  *(v80 + 1) = v85;
  v80[16] = v211;
  *(v80 + 3) = v213;
  v86 = v290;
  *(v80 + 6) = v289;
  *(v80 + 7) = v86;
  *(v80 + 8) = v291;
  v87 = v286;
  *(v80 + 2) = v285;
  *(v80 + 3) = v87;
  v88 = v288;
  *(v80 + 4) = v287;
  *(v80 + 5) = v88;
  v89 = v210;
  *(v80 + 18) = KeyPath;
  *(v80 + 19) = v89;
  v90 = sub_10006C78C();
  v91 = swift_getKeyPath();
  v92 = v80;
  v93 = v219;
  sub_1000586D4(v92, v219, &qword_10008B810, &qword_10007CDE8);
  v94 = (v93 + *(v218 + 36));
  *v94 = v91;
  v94[1] = v90;
  v95 = swift_getKeyPath();
  v96 = v93;
  v97 = v222;
  sub_1000586D4(v96, v222, &qword_10008B818, &qword_10007CDF0);
  v98 = v97 + *(v223 + 36);
  *v98 = v95;
  *(v98 + 8) = 1;
  *(v98 + 16) = 0;
  sub_100058A20();
  v99 = v221;
  sub_10006C6DC();
  sub_100009204(v97, &qword_10008B820, &qword_10007CDF8);
  v100 = (v241 + v239[5] + *(v216 + 24));
  v102 = *v100;
  v101 = v100[1];
  *&v283[0] = v102;
  *(&v283[0] + 1) = v101;
  v103 = v244;
  sub_10006BF1C();
  sub_100009204(v99, &qword_10008B828, &qword_10007CE00);
  sub_1000301B8(&qword_100088FB8, &qword_100079CB0, v212, v54);
  v104 = v225;
  v242(v225, enum case for ContentSizeCategory.accessibilityLarge(_:), v83);
  LOBYTE(v95) = sub_10004F258(v54, v104);
  v84(v104, v83);
  v84(v54, v83);
  if (v95)
  {
    v225 = v54;
    v105 = sub_1000651C8();
    v107 = v106;
    v109 = v108;
    sub_10006C3DC();
    v224 = sub_10006C4DC();
    v111 = v110;
    v113 = v112;
    v115 = v114;
    sub_1000070DC(v105, v107, v109 & 1);

    v116 = v217;
    v117 = v217[3];
    v118 = v217[4];
    sub_10004F840(v217, v117);
    (*(v118 + 24))(v117, v118);
    sub_10006C93C();
    sub_10006BF6C();
    v119 = v113 & 1;
    v284 = v113 & 1;
    v120 = v116[3];
    v121 = v116[4];
    sub_10004F840(v116, v120);
    v122 = (*(v121 + 48))(v120, v121);
    v123 = swift_getKeyPath();
    *&v266 = v224;
    *(&v266 + 1) = v111;
    LOBYTE(v267) = v119;
    *(&v267 + 1) = v115;
    v272 = v280;
    v273 = v281;
    v274 = v282;
    v268 = v276;
    v269 = v277;
    v270 = v278;
    v271 = v279;
    *&v275 = v123;
    *(&v275 + 1) = v122;
    v124 = v225;
    v125 = v247;
    v242(v225, v226, v247);
    v126 = sub_100003500(&qword_10008B860, &qword_10007CE18);
    v127 = sub_100058C48();
    v128 = v198;
    v223 = v127;
    v224 = v126;
    sub_100026F64(v124, v126, v127);
    v245(v124, v125);
    v283[6] = v272;
    v283[7] = v273;
    v283[8] = v274;
    v283[9] = v275;
    v283[3] = v269;
    v283[4] = v270;
    v283[5] = v271;
    v283[0] = v266;
    v283[1] = v267;
    v283[2] = v268;
    sub_100009204(v283, &qword_10008B860, &qword_10007CE18);
    v129 = sub_10006C74C();
    v130 = *(v241 + v239[9]);
    v131 = v241 + v239[11];
    v132 = v197;
    v133 = &v197[*(v231 + 36)];
    v239 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
    v134 = v239[6];
    v135 = sub_10006C9EC();
    v136 = *(v135 - 8);
    v137 = *(v136 + 16);
    v241 = v131;
    v221 = v137;
    v222 = v135;
    v220 = (v136 + 16);
    (v137)(v133 + v134, v131);
    *v133 = v129;
    v133[1] = v130;
    sub_1000586D4(v128, v132, &qword_10008B7E8, &qword_10007CDC0);
    v138 = swift_getKeyPath();
    v139 = v196;
    sub_1000586D4(v132, v196, &qword_10008B7F0, &qword_10007CDC8);
    v140 = v139 + *(v232 + 36);
    *v140 = v138;
    *(v140 + 8) = 1;
    *(v140 + 16) = 0;
    v141 = swift_getKeyPath();
    v142 = v139;
    v143 = v195;
    sub_1000586D4(v142, v195, &qword_10008B7F8, &qword_10007CDD0);
    v144 = (v143 + *(v230 + 36));
    *v144 = v141;
    v144[1] = 0x3FE0000000000000;
    sub_1000586D4(v143, v233, &qword_10008B800, &qword_10007CDD8);
    v145 = sub_100001CF8();
    sub_100065940(v145 & 1);
    *&v266 = v146;
    *(&v266 + 1) = v147;
    v148 = sub_10006C5BC();
    v150 = v149;
    v151 = v116;
    LOBYTE(v116) = v152;
    sub_10006C3DC();
    v153 = sub_10006C4DC();
    v155 = v154;
    LOBYTE(v128) = v156;
    v240 = v157;
    v158 = v116 & 1;
    v159 = v151;
    sub_1000070DC(v148, v150, v158);

    v160 = v151[3];
    v161 = v151[4];
    sub_10004F840(v151, v160);
    (*(v161 + 24))(v160, v161);
    sub_10006C93C();
    sub_10006BF6C();
    LOBYTE(v151) = v128 & 1;
    v265 = v128 & 1;
    v162 = v159[3];
    v163 = v159[4];
    sub_10004F840(v159, v162);
    v164 = (*(v163 + 48))(v162, v163);
    v165 = swift_getKeyPath();
    *&v248 = v153;
    *(&v248 + 1) = v155;
    LOBYTE(v249) = v151;
    *(&v249 + 1) = v240;
    v254 = v262;
    v255 = v263;
    v256 = v264;
    v250 = v258;
    v251 = v259;
    v252 = v260;
    v253 = v261;
    *&v257 = v165;
    *(&v257 + 1) = v164;
    v166 = v247;
    v242(v124, v226, v247);
    v167 = v203;
    sub_100026F64(v124, v224, v223);
    v245(v124, v166);
    v272 = v254;
    v273 = v255;
    v274 = v256;
    v275 = v257;
    v268 = v250;
    v269 = v251;
    v270 = v252;
    v271 = v253;
    v266 = v248;
    v267 = v249;
    sub_100009204(&v266, &qword_10008B860, &qword_10007CE18);
    v168 = sub_10006C74C();
    v169 = v201;
    v170 = &v201[*(v231 + 36)];
    v221(v170 + v239[6], v241, v222);
    *v170 = v168;
    v170[1] = v130;
    sub_1000586D4(v167, v169, &qword_10008B7E8, &qword_10007CDC0);
    v171 = swift_getKeyPath();
    v172 = v200;
    sub_1000586D4(v169, v200, &qword_10008B7F0, &qword_10007CDC8);
    v173 = v172 + *(v232 + 36);
    *v173 = v171;
    *(v173 + 8) = 1;
    *(v173 + 16) = 0;
    v174 = swift_getKeyPath();
    v175 = v199;
    sub_1000586D4(v172, v199, &qword_10008B7F8, &qword_10007CDD0);
    v176 = (v175 + *(v230 + 36));
    *v176 = v174;
    v176[1] = 0x3FE0000000000000;
    v177 = v202;
    sub_1000586D4(v175, v202, &qword_10008B800, &qword_10007CDD8);
    v178 = v233;
    v179 = v204;
    sub_100009264(v233, v204, &qword_10008B800, &qword_10007CDD8);
    v180 = v205;
    sub_100009264(v177, v205, &qword_10008B800, &qword_10007CDD8);
    v181 = v206;
    sub_100009264(v179, v206, &qword_10008B800, &qword_10007CDD8);
    v182 = sub_100003500(&qword_10008B870, &qword_10007CE28);
    sub_100009264(v180, v181 + *(v182 + 48), &qword_10008B800, &qword_10007CDD8);
    sub_100009204(v177, &qword_10008B800, &qword_10007CDD8);
    sub_100009204(v178, &qword_10008B800, &qword_10007CDD8);
    sub_100009204(v180, &qword_10008B800, &qword_10007CDD8);
    sub_100009204(v179, &qword_10008B800, &qword_10007CDD8);
    v183 = v234;
    sub_1000586D4(v181, v234, &qword_10008B7E0, &qword_10007CDB8);
    (*(v236 + 56))(v183, 0, 1, v237);
    v184 = v244;
  }

  else
  {
    v184 = v103;
    v183 = v234;
    (*(v236 + 56))(v234, 1, 1, v237);
  }

  v186 = v227;
  v185 = v228;
  sub_100009264(v227, v228, &qword_10008B830, &qword_10007CE08);
  v187 = v184;
  v188 = v229;
  sub_100009264(v187, v229, &qword_10008B828, &qword_10007CE00);
  v189 = v235;
  sub_100009264(v183, v235, &qword_10008B808, &qword_10007CDE0);
  v190 = v238;
  sub_100009264(v185, v238, &qword_10008B830, &qword_10007CE08);
  v191 = v183;
  v192 = sub_100003500(&qword_10008B868, &qword_10007CE20);
  sub_100009264(v188, v190 + *(v192 + 48), &qword_10008B828, &qword_10007CE00);
  sub_100009264(v189, v190 + *(v192 + 64), &qword_10008B808, &qword_10007CDE0);
  sub_100009204(v191, &qword_10008B808, &qword_10007CDE0);
  sub_100009204(v244, &qword_10008B828, &qword_10007CE00);
  sub_100009204(v186, &qword_10008B830, &qword_10007CE08);
  sub_100009204(v189, &qword_10008B808, &qword_10007CDE0);
  sub_100009204(v188, &qword_10008B828, &qword_10007CE00);
  return sub_100009204(v185, &qword_10008B830, &qword_10007CE08);
}

uint64_t sub_100035C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v86 = type metadata accessor for Clock(0);
  __chkstk_darwin(v86);
  v91 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v85 = &v77 - v5;
  __chkstk_darwin(v6);
  v89 = &v77 - v7;
  v8 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v8 - 8);
  v87 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v77 - v11;
  v98 = sub_10006BD3C();
  v102 = *(v98 - 8);
  __chkstk_darwin(v98);
  v97 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = (&v77 - v14);
  v15 = sub_10006C9EC();
  v96 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ClockFace(0);
  __chkstk_darwin(v18);
  v88 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v77 - v21);
  __chkstk_darwin(v23);
  v25 = &v77 - v24;
  v26 = type metadata accessor for MediumClockFaceView(0);
  v27 = (a1 + v26[6]);
  v29 = v27[3];
  v28 = v27[4];
  v82 = v27;
  sub_10004F840(v27, v29);
  v30 = (*(v28 + 24))(v29, v28);
  v31 = v26[11];
  sub_10006C9BC();
  v100 = v31;
  LOBYTE(v31) = sub_10006C9AC();
  v32 = *(v96 + 8);
  v101 = v15;
  v84 = v32;
  v95 = v96 + 8;
  v32(v17, v15);
  v78 = ((v31 & 1) == 0 || *(a1 + v26[10]) != 1) && sub_100064BD8();
  v99 = v25;
  v33 = a1 + v26[5];
  sub_1000657E8(v93);
  v34 = v26[8];
  v103 = a1;
  v94 = *(a1 + v34);
  v35 = *(v33 + *(type metadata accessor for WorldClockCity(0) + 20));
  v36 = sub_10006BB7C();
  v37 = *(v36 - 8);
  v38 = v37;
  v39 = 1;
  v80 = v35;
  if (v35)
  {
    (*(v37 + 16))(v92, v33, v36);
    v39 = 0;
  }

  v77 = v38;
  v40 = *(v38 + 56);
  v41 = v92;
  v81 = v36;
  v79 = v40;
  v40(v92, v39, 1, v36);
  v42 = *(v103 + v26[10]);
  *(v22 + v18[14]) = swift_getKeyPath();
  sub_100003500(&qword_100089DD8, &qword_10007B628);
  swift_storeEnumTagMultiPayload();
  *v22 = v30;
  *(v22 + 8) = v78;
  v43 = *(v102 + 32);
  v44 = v22 + v18[6];
  v45 = v93;
  v102 += 32;
  v93 = v43;
  (v43)(v44, v45, v98);
  *(v22 + v18[7]) = v94;
  *(v22 + v18[8]) = 0;
  sub_1000586D4(v41, v22 + v18[9], &qword_1000887E8, &qword_1000795A0);
  v46 = 1;
  *(v22 + v18[10]) = 1;
  *(v22 + v18[11]) = 0;
  v47 = v18[12];
  *(v22 + v47) = sub_100027180();
  v48 = v18[13];
  v49 = v42;
  *(v22 + v48) = v42;
  sub_10003DDDC(v22, v99, type metadata accessor for ClockFace);
  sub_10006C9BC();
  v50 = sub_10006C9AC();
  v51 = v84;
  v84(v17, v101);
  if ((v50 & 1) != 0 && v42)
  {
    v52 = 0;
  }

  else
  {
    v52 = sub_100064BD8();
    v46 = v42;
  }

  v53 = v87;
  sub_1000657E8(v97);
  sub_10003E1E0(v82, v105);
  v54 = *(v103 + v26[7]);
  v55 = v81;
  v83 = v49;
  if (v80)
  {
    (*(v77 + 16))(v53, v33, v81);
    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v79(v53, v56, 1, v55);
  sub_10006C9BC();
  v57 = v103;
  v58 = sub_10006C9AC();
  v51(v17, v101);
  v59 = v94;
  v60 = (v58 & v46 & 1) == 0 && sub_100064BD8();
  v61 = sub_10000F1C8(v60);
  v62 = sub_10000F088(v60);
  v63 = sub_10000F1C8(v60);
  v64 = v86;
  v65 = v85;
  (*(v96 + 16))(&v85[*(v86 + 56)], v57 + v100, v101);
  *v65 = v52;
  (v93)(&v65[v64[5]], v97, v98);
  sub_10003D860(v105, &v65[v64[6]]);
  v65[v64[7]] = v54;
  sub_1000586D4(v53, &v65[v64[8]], &qword_1000887E8, &qword_1000795A0);
  v65[v64[9]] = v59;
  v65[v64[10]] = 1;
  v66 = &v65[v64[11]];
  *v66 = xmmword_10007B4D0;
  *(v66 + 2) = 0x3F916872B020C49CLL;
  *(v66 + 3) = v61;
  *(v66 + 4) = v62;
  v66[40] = 1;
  *(v66 + 41) = *v104;
  *(v66 + 11) = *&v104[3];
  *(v66 + 6) = v63;
  *(v66 + 7) = 0x3FC3333333333333;
  v65[v64[12]] = 0;
  v65[v64[13]] = v83;
  v67 = &v65[v64[15]];
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  *v67 = sub_10006BE6C();
  v67[8] = v68 & 1;
  v69 = v65;
  v70 = v89;
  sub_10003DDDC(v69, v89, type metadata accessor for Clock);
  v71 = v99;
  v72 = v88;
  sub_10003DE44(v99, v88, type metadata accessor for ClockFace);
  v73 = v91;
  sub_10003DE44(v70, v91, type metadata accessor for Clock);
  v74 = v90;
  sub_10003DE44(v72, v90, type metadata accessor for ClockFace);
  v75 = sub_100003500(&qword_10008B878, &qword_10007CE30);
  sub_10003DE44(v73, v74 + *(v75 + 48), type metadata accessor for Clock);
  sub_10003DD7C(v70, type metadata accessor for Clock);
  sub_10003DD7C(v71, type metadata accessor for ClockFace);
  sub_10003DD7C(v73, type metadata accessor for Clock);
  return sub_10003DD7C(v72, type metadata accessor for ClockFace);
}

BOOL sub_100036638()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MediumClockFaceView(0);
  sub_10006C9BC();
  v6 = sub_10006C9AC();
  (*(v2 + 8))(v4, v1);
  return ((v6 & 1) == 0 || (*(v0 + *(v5 + 40)) & 1) == 0) && sub_100064BD8();
}

double sub_100036748@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_10000F1C8(a1);
  v5 = sub_10000F088(a1);
  v6 = sub_10000F1C8(a1);
  result = 0.0585;
  *a2 = xmmword_10007B4D0;
  *(a2 + 16) = 0x3F916872B020C49CLL;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = 1;
  *(a2 + 48) = v6;
  *(a2 + 56) = 0x3FC3333333333333;
  return result;
}

uint64_t sub_1000367C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v8 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v11 + 24);
  v13 = sub_10006C9EC();
  (*(*(v13 - 8) + 16))(v10 + v12, a2, v13);
  *v10 = a1;
  v10[1] = a5;

  sub_10006C6FC();
  return sub_10003DD7C(v10, type metadata accessor for ClockWidgetAccentableForegroundColor);
}

uint64_t sub_10003694C(char a1, __n128 a2)
{
  result = type metadata accessor for ClockFace(0);
  *(v2 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_1000369E8(char a1, __n128 a2)
{
  result = type metadata accessor for ClockFace(0);
  *(v2 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_100036ACC(char a1, __n128 a2)
{
  result = type metadata accessor for ClockFace(0);
  *(v2 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_100036B68(char a1, __n128 a2)
{
  result = type metadata accessor for ClockFace(0);
  *(v2 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_100036C2C(char a1, __n128 a2)
{
  result = type metadata accessor for ClockFace(0);
  *(v2 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_100036CA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006C0AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_100089DD8, &qword_10007B628);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ClockFace(0);
  sub_100009264(v1 + *(v10 + 56), v9, &qword_100089DD8, &qword_10007B628);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006C9EC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10006CCCC();
    v13 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100036EAC()
{
  v1 = sub_100003500(&qword_100089F10, &qword_10007B7B8);
  __chkstk_darwin(v1);
  v3 = (&v7 - v2);
  *v3 = sub_10006C93C();
  v3[1] = v4;
  v5 = sub_100003500(&qword_100089F18, &qword_10007B7C0);
  sub_100036FB8(v0, v3 + *(v5 + 44));
  sub_100011308(&qword_100089F20, &qword_100089F10, &qword_10007B7B8, &protocol conformance descriptor for ZStack<A>);
  sub_10006C68C();
  return sub_100009204(v3, &qword_100089F10, &qword_10007B7B8);
}

uint64_t sub_100036FB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v194 = a2;
  v177 = sub_100003500(&qword_10008B0A0, &qword_10007C8A0);
  __chkstk_darwin(v177);
  v144 = (&v144 - v3);
  v178 = sub_100003500(&qword_10008B6E0, &qword_10007CCF0);
  v146 = *(v178 - 8);
  __chkstk_darwin(v178);
  v145 = &v144 - v4;
  v155 = sub_100003500(&qword_10008B090, &qword_10007C898);
  __chkstk_darwin(v155);
  v147 = (&v144 - v5);
  v160 = sub_100003500(&qword_10008B6E8, &qword_10007CCF8);
  v148 = *(v160 - 8);
  __chkstk_darwin(v160);
  v151 = &v144 - v6;
  v153 = sub_100003500(&qword_10008B6F0, &qword_10007CD00);
  __chkstk_darwin(v153);
  v154 = &v144 - v7;
  v172 = sub_100003500(&qword_10008B6F8, &qword_10007CD08);
  __chkstk_darwin(v172);
  v156 = &v144 - v8;
  v152 = sub_100003500(&qword_100089F48, &qword_10007B7E8);
  __chkstk_darwin(v152);
  v149 = &v144 - v9;
  v161 = sub_100003500(&qword_10008B700, &qword_10007CD10);
  v150 = *(v161 - 8);
  __chkstk_darwin(v161);
  v159 = &v144 - v10;
  v168 = sub_100003500(&qword_10008B068, &qword_10007C890);
  __chkstk_darwin(v168);
  v157 = (&v144 - v11);
  v180 = sub_100003500(&qword_10008B708, &qword_10007CD18);
  v158 = *(v180 - 8);
  __chkstk_darwin(v180);
  v163 = &v144 - v12;
  v174 = sub_100003500(&qword_10008B710, &qword_10007CD20);
  __chkstk_darwin(v174);
  v176 = &v144 - v13;
  v169 = sub_100003500(&qword_10008B718, &qword_10007CD28);
  __chkstk_darwin(v169);
  v171 = &v144 - v14;
  v164 = sub_100003500(&qword_10008B720, &qword_10007CD30);
  __chkstk_darwin(v164);
  v166 = &v144 - v15;
  v170 = sub_100003500(&qword_10008B728, &qword_10007CD38);
  __chkstk_darwin(v170);
  v167 = &v144 - v16;
  v175 = sub_100003500(&qword_10008B730, &qword_10007CD40);
  __chkstk_darwin(v175);
  v173 = &v144 - v17;
  v165 = sub_100003500(&qword_10008B058, &qword_10007C888);
  __chkstk_darwin(v165);
  v162 = (&v144 - v18);
  v191 = sub_100003500(&qword_10008B738, &qword_10007CD48);
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v181 = &v144 - v19;
  v20 = sub_100003500(&qword_10008B740, &qword_10007CD50);
  __chkstk_darwin(v20 - 8);
  v193 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v192 = &v144 - v23;
  v24 = sub_100003500(&qword_10008B748, &qword_10007CD58);
  __chkstk_darwin(v24);
  v26 = &v144 - v25;
  v186 = sub_100003500(&qword_10008B750, &qword_10007CD60);
  __chkstk_darwin(v186);
  v188 = &v144 - v27;
  v187 = sub_100003500(&qword_10008B758, &qword_10007CD68);
  __chkstk_darwin(v187);
  v184 = &v144 - v28;
  v183 = sub_100003500(&qword_10008B680, &qword_10007CC90);
  v29 = *(v183 - 8);
  __chkstk_darwin(v183);
  v31 = &v144 - v30;
  v32 = sub_100003500(&qword_10008B688, &qword_10007CC98);
  __chkstk_darwin(v32 - 8);
  v34 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v196 = &v144 - v36;
  v37 = sub_100003500(&qword_10008B760, &qword_10007CD70);
  __chkstk_darwin(v37);
  v39 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v144 - v41;
  v43 = sub_100003500(&qword_10008B768, &qword_10007CD78);
  __chkstk_darwin(v43 - 8);
  v189 = &v144 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v197 = &v144 - v46;
  v195 = type metadata accessor for ClockFace(0);
  v47 = v195[10];
  v48 = *(a1 + v47);
  v49 = sub_100010740(*(a1 + v47), 4);
  v179 = v48;
  v185 = a1;
  if (v49 || sub_100010740(v48, 0))
  {
    v182 = v24;
    v50 = *(sub_10006BF5C() + 20);
    v51 = enum case for RoundedCornerStyle.continuous(_:);
    v52 = sub_10006C16C();
    (*(*(v52 - 8) + 104))(&v42[v50], v51, v52);
    __asm { FMOV            V0.2D, #20.0 }

    *v42 = _Q0;
    v58 = sub_100038E20();
    v59 = sub_100003500(&qword_10008B7C8, &qword_10007CDA0);
    *&v42[*(v59 + 52)] = v58;
    *&v42[*(v59 + 56)] = 256;
    sub_10006C93C();
    sub_10006BEDC();
    v60 = &v42[*(sub_100003500(&qword_10008B7D0, &qword_10007CDA8) + 36)];
    v61 = v202;
    *v60 = v201;
    *(v60 + 1) = v61;
    *(v60 + 2) = v203;
    v62 = &v42[*(v37 + 36)];
    v63 = type metadata accessor for ClockWidgetAccentableOpacity(0);
    sub_100036CA4(&v62[*(v63 + 24)]);
    *v62 = xmmword_10007B4E0;
    if (sub_100010740(v48, 0) && ((*(a1 + v195[7]) & 1) != 0 || *(a1 + v195[8]) == 1))
    {
      sub_10003BAD4(0, a1, v31);
      v64 = v183;
      v65 = &v31[*(v183 + 36)];
      sub_100036CA4(&v65[*(v63 + 24)]);
      __asm { FMOV            V0.2D, #1.0 }

      *v65 = _Q0;
      v67 = v196;
      sub_1000586D4(v31, v196, &qword_10008B680, &qword_10007CC90);
      v68 = 0;
    }

    else
    {
      v68 = 1;
      v67 = v196;
      v64 = v183;
    }

    (*(v29 + 56))(v67, v68, 1, v64);
    sub_100009264(v42, v39, &qword_10008B760, &qword_10007CD70);
    sub_100009264(v67, v34, &qword_10008B688, &qword_10007CC98);
    v69 = v184;
    sub_100009264(v39, v184, &qword_10008B760, &qword_10007CD70);
    v70 = sub_100003500(&qword_10008B7D8, &qword_10007CDB0);
    sub_100009264(v34, v69 + *(v70 + 48), &qword_10008B688, &qword_10007CC98);
    sub_100009204(v34, &qword_10008B688, &qword_10007CC98);
    sub_100009204(v39, &qword_10008B760, &qword_10007CD70);
    sub_100009264(v69, v188, &qword_10008B758, &qword_10007CD68);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_10008B770, &qword_10008B758, &qword_10007CD68, &protocol conformance descriptor for TupleView<A>);
    sub_100058560();
    sub_10006C26C();
    sub_100009204(v69, &qword_10008B758, &qword_10007CD68);
    sub_100009204(v196, &qword_10008B688, &qword_10007CC98);
    v71 = v42;
    v72 = &qword_10008B760;
    v73 = &qword_10007CD70;
  }

  else
  {
    v74 = sub_100039034();
    sub_10006C93C();
    sub_10006BEDC();
    *&v200[6] = v201;
    *&v200[22] = v202;
    *&v200[38] = v203;
    v75 = &v26[*(v24 + 36)];
    v76 = type metadata accessor for ClockWidgetAccentableOpacity(0);
    sub_100036CA4(&v75[*(v76 + 24)]);
    *v75 = 0x3FC3333333333333;
    *(v75 + 1) = 0x3FF0000000000000;
    v77 = *&v200[16];
    *(v26 + 10) = *v200;
    *v26 = v74;
    *(v26 + 4) = 256;
    *(v26 + 26) = v77;
    *(v26 + 42) = *&v200[32];
    *(v26 + 7) = *&v200[46];
    sub_100009264(v26, v188, &qword_10008B748, &qword_10007CD58);
    swift_storeEnumTagMultiPayload();
    sub_100011308(&qword_10008B770, &qword_10008B758, &qword_10007CD68, &protocol conformance descriptor for TupleView<A>);
    sub_100058560();
    sub_10006C26C();
    v71 = v26;
    v72 = &qword_10008B748;
    v73 = &qword_10007CD58;
  }

  sub_100009204(v71, v72, v73);
  v78 = v185;
  v79 = 1;
  v80 = v192;
  if ((*(v185 + v195[7]) & 1) == 0 && (*(v185 + v195[8]) & 1) == 0)
  {
    v81 = v179;
    if (sub_100010740(v179, 2))
    {
      v82 = sub_10006C93C();
      v83 = v162;
      *v162 = v82;
      *(v83 + 8) = v84;
      v85 = sub_100003500(&qword_100089F28, &qword_10007B7C8);
      sub_10003980C(v78, v83 + *(v85 + 44));
      sub_100009264(v83, v166, &qword_10008B058, &qword_10007C888);
      swift_storeEnumTagMultiPayload();
      sub_100011308(&qword_10008B050, &qword_10008B058, &qword_10007C888, &protocol conformance descriptor for ZStack<A>);
      v86 = sub_100011308(&qword_10008B060, &qword_10008B068, &qword_10007C890, &protocol conformance descriptor for ZStack<A>);
      v198 = v168;
      v199 = v86;
      swift_getOpaqueTypeConformance2();
      v87 = v167;
      sub_10006C26C();
      sub_100009264(v87, v171, &qword_10008B728, &qword_10007CD38);
      swift_storeEnumTagMultiPayload();
      sub_1000587C8();
      sub_1000588EC();
      v88 = v173;
      sub_10006C26C();
      sub_100009204(v87, &qword_10008B728, &qword_10007CD38);
      sub_100009264(v88, v176, &qword_10008B730, &qword_10007CD40);
      swift_storeEnumTagMultiPayload();
      sub_10005873C();
      v89 = sub_100011308(&qword_10008B098, &qword_10008B0A0, &qword_10007C8A0, &protocol conformance descriptor for ZStack<A>);
      v198 = v177;
      v199 = v89;
      swift_getOpaqueTypeConformance2();
      v90 = v181;
      sub_10006C26C();
      sub_100009204(v88, &qword_10008B730, &qword_10007CD40);
      sub_100009204(v83, &qword_10008B058, &qword_10007C888);
    }

    else if (sub_100010740(v81, 1))
    {
      v91 = sub_10006C93C();
      v92 = v157;
      *v157 = v91;
      *(v92 + 8) = v93;
      v94 = sub_100003500(&qword_100089F30, &qword_10007B7D0);
      sub_10003A438(v78, (v92 + *(v94 + 44)));
      v95 = sub_100011308(&qword_10008B060, &qword_10008B068, &qword_10007C890, &protocol conformance descriptor for ZStack<A>);
      v96 = v163;
      v97 = v168;
      sub_10006C5EC();
      sub_100009204(v92, &qword_10008B068, &qword_10007C890);
      v98 = v158;
      (*(v158 + 16))(v166, v96, v180);
      swift_storeEnumTagMultiPayload();
      sub_100011308(&qword_10008B050, &qword_10008B058, &qword_10007C888, &protocol conformance descriptor for ZStack<A>);
      v198 = v97;
      v199 = v95;
      swift_getOpaqueTypeConformance2();
      v99 = v167;
      sub_10006C26C();
      sub_100009264(v99, v171, &qword_10008B728, &qword_10007CD38);
      swift_storeEnumTagMultiPayload();
      sub_1000587C8();
      sub_1000588EC();
      v100 = v173;
      sub_10006C26C();
      sub_100009204(v99, &qword_10008B728, &qword_10007CD38);
      sub_100009264(v100, v176, &qword_10008B730, &qword_10007CD40);
      swift_storeEnumTagMultiPayload();
      sub_10005873C();
      v101 = sub_100011308(&qword_10008B098, &qword_10008B0A0, &qword_10007C8A0, &protocol conformance descriptor for ZStack<A>);
      v198 = v177;
      v199 = v101;
      swift_getOpaqueTypeConformance2();
      v102 = v181;
      sub_10006C26C();
      v90 = v102;
      sub_100009204(v100, &qword_10008B730, &qword_10007CD40);
      (*(v98 + 8))(v163, v180);
    }

    else if (sub_100010740(v81, 3))
    {
      v103 = v149;
      sub_1000392E0(v149);
      v104 = sub_100055108();
      v105 = v159;
      v106 = v152;
      sub_10006C5EC();
      sub_100009204(v103, &qword_100089F48, &qword_10007B7E8);
      v107 = v150;
      (*(v150 + 16))(v154, v105, v161);
      swift_storeEnumTagMultiPayload();
      v198 = v106;
      v199 = v104;
      swift_getOpaqueTypeConformance2();
      v108 = sub_100011308(&qword_10008B088, &qword_10008B090, &qword_10007C898, &protocol conformance descriptor for ZStack<A>);
      v198 = v155;
      v199 = v108;
      swift_getOpaqueTypeConformance2();
      v109 = v156;
      sub_10006C26C();
      sub_100009264(v109, v171, &qword_10008B6F8, &qword_10007CD08);
      swift_storeEnumTagMultiPayload();
      sub_1000587C8();
      sub_1000588EC();
      v110 = v173;
      sub_10006C26C();
      sub_100009204(v109, &qword_10008B6F8, &qword_10007CD08);
      sub_100009264(v110, v176, &qword_10008B730, &qword_10007CD40);
      swift_storeEnumTagMultiPayload();
      sub_10005873C();
      v111 = sub_100011308(&qword_10008B098, &qword_10008B0A0, &qword_10007C8A0, &protocol conformance descriptor for ZStack<A>);
      v198 = v177;
      v199 = v111;
      swift_getOpaqueTypeConformance2();
      v112 = v181;
      sub_10006C26C();
      v90 = v112;
      sub_100009204(v110, &qword_10008B730, &qword_10007CD40);
      (*(v107 + 8))(v159, v161);
    }

    else if (sub_100010740(v81, 4))
    {
      v113 = sub_10006C93C();
      v114 = v147;
      *v147 = v113;
      *(v114 + 8) = v115;
      v116 = sub_100003500(&qword_100089F50, &qword_10007B7F0);
      sub_10003A984(v114 + *(v116 + 44));
      v117 = sub_100011308(&qword_10008B088, &qword_10008B090, &qword_10007C898, &protocol conformance descriptor for ZStack<A>);
      v118 = v151;
      v119 = v155;
      sub_10006C5EC();
      sub_100009204(v114, &qword_10008B090, &qword_10007C898);
      v120 = v148;
      (*(v148 + 16))(v154, v118, v160);
      swift_storeEnumTagMultiPayload();
      v121 = sub_100055108();
      v198 = v152;
      v199 = v121;
      swift_getOpaqueTypeConformance2();
      v198 = v119;
      v199 = v117;
      swift_getOpaqueTypeConformance2();
      v122 = v156;
      sub_10006C26C();
      sub_100009264(v122, v171, &qword_10008B6F8, &qword_10007CD08);
      swift_storeEnumTagMultiPayload();
      sub_1000587C8();
      sub_1000588EC();
      v123 = v173;
      sub_10006C26C();
      sub_100009204(v122, &qword_10008B6F8, &qword_10007CD08);
      sub_100009264(v123, v176, &qword_10008B730, &qword_10007CD40);
      swift_storeEnumTagMultiPayload();
      sub_10005873C();
      v124 = sub_100011308(&qword_10008B098, &qword_10008B0A0, &qword_10007C8A0, &protocol conformance descriptor for ZStack<A>);
      v198 = v177;
      v199 = v124;
      swift_getOpaqueTypeConformance2();
      v125 = v181;
      sub_10006C26C();
      v90 = v125;
      sub_100009204(v123, &qword_10008B730, &qword_10007CD40);
      (*(v120 + 8))(v151, v160);
    }

    else
    {
      if (!sub_100010740(v81, 0))
      {
        v135 = 1;
        v90 = v181;
        goto LABEL_23;
      }

      v126 = sub_10006C93C();
      v127 = v144;
      *v144 = v126;
      *(v127 + 8) = v128;
      v129 = sub_100003500(&qword_100089F58, &qword_10007B7F8);
      sub_10003B140(v78, v127 + *(v129 + 44));
      v130 = sub_100011308(&qword_10008B098, &qword_10008B0A0, &qword_10007C8A0, &protocol conformance descriptor for ZStack<A>);
      v131 = v145;
      v132 = v177;
      sub_10006C5EC();
      sub_100009204(v127, &qword_10008B0A0, &qword_10007C8A0);
      v133 = v146;
      v134 = v178;
      (*(v146 + 16))(v176, v131, v178);
      swift_storeEnumTagMultiPayload();
      sub_10005873C();
      v198 = v132;
      v199 = v130;
      swift_getOpaqueTypeConformance2();
      v90 = v181;
      sub_10006C26C();
      (*(v133 + 8))(v131, v134);
    }

    v135 = 0;
LABEL_23:
    v136 = sub_100003500(&qword_10008B7A0, &qword_10007CD90);
    (*(*(v136 - 8) + 56))(v90, v135, 1, v136);
    sub_1000586D4(v90, v80, &qword_10008B738, &qword_10007CD48);
    v79 = 0;
  }

  (*(v190 + 56))(v80, v79, 1, v191);
  v137 = v197;
  v138 = v189;
  sub_100009264(v197, v189, &qword_10008B768, &qword_10007CD78);
  v139 = v193;
  sub_100009264(v80, v193, &qword_10008B740, &qword_10007CD50);
  v140 = v194;
  sub_100009264(v138, v194, &qword_10008B768, &qword_10007CD78);
  v141 = sub_100003500(&qword_10008B7A8, &qword_10007CD98);
  v142 = v140 + *(v141 + 48);
  *v142 = 0;
  *(v142 + 8) = 1;
  sub_100009264(v139, v140 + *(v141 + 64), &qword_10008B740, &qword_10007CD50);
  sub_100009204(v80, &qword_10008B740, &qword_10007CD50);
  sub_100009204(v137, &qword_10008B768, &qword_10007CD78);
  sub_100009204(v139, &qword_10008B740, &qword_10007CD50);
  return sub_100009204(v138, &qword_10008B768, &qword_10007CD78);
}

uint64_t sub_100038E20()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_100036CA4(&v15 - v6);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    return sub_10006C76C();
  }

  v11 = type metadata accessor for ClockFace(0);
  v12 = *(v0 + *(v11 + 52));
  if (*(v0 + *(v11 + 32)) == 1)
  {
    if (*(v0 + *(v11 + 52)))
    {
      return sub_10000F088(1);
    }

    goto LABEL_12;
  }

  sub_100036CA4(v7);
  if (v12)
  {
    sub_10006C9DC();
    v13 = sub_10006C9AC();
    v9(v4, v1);
    v9(v7, v1);
    if ((v13 & 1) != 0 && *(v0 + 8) == 1)
    {
      return sub_10000F088(1);
    }

    return sub_10006C75C();
  }

  sub_10006C9BC();
  v14 = sub_10006C9AC();
  v9(v4, v1);
  v9(v7, v1);
  if (v14)
  {
    return sub_10006C75C();
  }

LABEL_12:
  sub_10000E7A8();
}

uint64_t sub_100039034()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_100036CA4(&v15 - v6);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    return sub_10006C78C();
  }

  v11 = type metadata accessor for ClockFace(0);
  if (*(v0 + *(v11 + 52)) & 1) != 0 || *(v0 + *(v11 + 44)) == 1 && (sub_100036CA4(v7), sub_10006C9DC(), v13 = sub_10006C9AC(), v9(v4, v1), v9(v7, v1), (v13))
  {
    sub_100036CA4(v7);
    sub_10006C9DC();
    v12 = sub_10006C9AC();
    v9(v4, v1);
    v9(v7, v1);
    if (v12)
    {
      return sub_10000F088(*(v0 + 8));
    }

    else
    {
      return sub_10000F088(0);
    }
  }

  else
  {
    sub_100036CA4(v7);
    sub_10006C9BC();
    v14 = sub_10006C9AC();
    v9(v4, v1);
    v9(v7, v1);
    if (v14)
    {
      return sub_10006C75C();
    }

    else
    {
      sub_10000E7A8();
    }
  }
}

double sub_1000392E0@<D0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v2 = sub_10006C9EC();
  v36 = *(v2 - 8);
  v37 = v2;
  __chkstk_darwin(v2);
  v4 = &v33[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v33[-v6];
  v8 = sub_100003500(&qword_100089F38, &qword_10007B7D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-v9];
  v11 = sub_10006C7DC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_100003500(&qword_100089F40, &qword_10007B7E0);
  __chkstk_darwin(v35);
  v16 = &v33[-v15];
  v34 = *(v1 + 8);
  sub_10006C82C();
  (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
  sub_10006C81C();

  (*(v12 + 8))(v14, v11);
  v17 = enum case for Image.TemplateRenderingMode.template(_:);
  v18 = sub_10006C80C();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  v20 = sub_10006C7EC();

  sub_100009204(v10, &qword_100089F38, &qword_10007B7D8);
  sub_100036CA4(v7);
  sub_10006C9CC();
  LOBYTE(v17) = sub_10006C9AC();
  v21 = *(v36 + 8);
  v22 = v4;
  v23 = v37;
  v21(v22, v37);
  v21(v7, v23);
  if (v17)
  {
    v24 = sub_10006C78C();
  }

  else
  {
    if (*(v1 + *(type metadata accessor for ClockFace(0) + 52)))
    {
      v25 = v34;
    }

    else
    {
      v25 = 0;
    }

    v24 = sub_10000F3A8(v25);
  }

  v26 = v24;
  v27 = (v16 + *(v35 + 36));
  v28 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
  sub_100036CA4(v27 + *(v28 + 24));
  *v27 = v26;
  v27[1] = 0x3FF0000000000000;
  *v16 = v20;
  sub_10006C93C();
  sub_10006BEDC();
  v29 = v38;
  sub_1000586D4(v16, v38, &qword_100089F40, &qword_10007B7E0);
  v30 = (v29 + *(sub_100003500(&qword_100089F48, &qword_10007B7E8) + 36));
  v31 = v40;
  *v30 = v39;
  v30[1] = v31;
  result = *&v41;
  v30[2] = v41;
  return result;
}

uint64_t sub_1000397A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_10006C93C();
  a4[1] = v9;
  sub_100003500(a1, a2);
  return a3(v4);
}

uint64_t sub_10003980C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v64 = sub_100003500(&qword_10008B6B0, &qword_10007CCC0) - 8;
  __chkstk_darwin(v64);
  v65 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = (&v48 - v4);
  v5 = sub_100003500(&qword_100089F38, &qword_10007B7D8);
  __chkstk_darwin(v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_10006C7DC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100003500(&qword_10008B6B8, &qword_10007CCC8) - 8;
  __chkstk_darwin(v61);
  v62 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = (&v48 - v15);
  sub_100039EF4(v14);
  sub_10006C82C();
  v60 = enum case for Image.ResizingMode.stretch(_:);
  v17 = *(v9 + 104);
  v58 = v9 + 104;
  v59 = v17;
  v52 = v8;
  v17(v11);
  sub_10006C81C();

  v18 = *(v9 + 8);
  v56 = v9 + 8;
  v57 = v18;
  v18(v11, v8);
  v19 = enum case for Image.TemplateRenderingMode.template(_:);
  v55 = enum case for Image.TemplateRenderingMode.template(_:);
  v20 = sub_10006C80C();
  v21 = *(v20 - 8);
  v54 = *(v21 + 104);
  v54(v7, v19, v20);
  v53 = *(v21 + 56);
  v53(v7, 0, 1, v20);
  v22 = sub_10006C7EC();

  sub_100009204(v7, &qword_100089F38, &qword_10007B7D8);
  v23 = sub_10003A088();
  v50 = sub_100003500(&qword_100089F40, &qword_10007B7E0);
  v24 = (v16 + *(v50 + 36));
  v49 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
  sub_100036CA4(v24 + *(v49 + 24));
  *v24 = v23;
  v24[1] = 0x3FF0000000000000;
  *v16 = v22;
  sub_10006C93C();
  sub_10006BEDC();
  v25 = *(sub_100003500(&qword_100089F48, &qword_10007B7E8) + 36);
  v51 = v16;
  v26 = (v16 + v25);
  v27 = v68;
  *v26 = v67;
  v26[1] = v27;
  v26[2] = v69;
  v28 = (v16 + *(v61 + 44));
  v61 = type metadata accessor for ClockWidgetAccentableOpacity(0);
  sub_100036CA4(v28 + *(v61 + 24));
  __asm { FMOV            V0.2D, #1.0 }

  *v28 = _Q0;
  sub_10006C82C();
  v34 = v52;
  v59(v11, v60, v52);
  sub_10006C81C();

  v57(v11, v34);
  v54(v7, v55, v20);
  v53(v7, 0, 1, v20);
  v35 = sub_10006C7EC();

  sub_100009204(v7, &qword_100089F38, &qword_10007B7D8);
  v36 = sub_10003A290();
  v37 = v63;
  v38 = (v63 + *(v50 + 36));
  sub_100036CA4(v38 + *(v49 + 24));
  *v38 = v36;
  v38[1] = 0x3FF0000000000000;
  *v37 = v35;
  v39 = (v37 + *(sub_100003500(&qword_10008B6C0, &qword_10007CCD0) + 36));
  sub_100036CA4(v39 + *(v61 + 24));
  *v39 = 0x3FD3333333333333;
  v39[1] = 0x3FF0000000000000;
  sub_10006C93C();
  sub_10006BEDC();
  v40 = (v37 + *(v64 + 44));
  v41 = v71;
  *v40 = v70;
  v40[1] = v41;
  v40[2] = v72;
  v42 = v51;
  v43 = v62;
  sub_100009264(v51, v62, &qword_10008B6B8, &qword_10007CCC8);
  v44 = v65;
  sub_100009264(v37, v65, &qword_10008B6B0, &qword_10007CCC0);
  v45 = v66;
  sub_100009264(v43, v66, &qword_10008B6B8, &qword_10007CCC8);
  v46 = sub_100003500(&qword_10008B6C8, &qword_10007CCD8);
  sub_100009264(v44, v45 + *(v46 + 48), &qword_10008B6B0, &qword_10007CCC0);
  sub_100009204(v37, &qword_10008B6B0, &qword_10007CCC0);
  sub_100009204(v42, &qword_10008B6B8, &qword_10007CCC8);
  sub_100009204(v44, &qword_10008B6B0, &qword_10007CCC0);
  return sub_100009204(v43, &qword_10008B6B8, &qword_10007CCC8);
}

unint64_t sub_100039EF4(__n128 a1)
{
  v2 = 0xD00000000000001DLL;
  switch(*(v1 + *(type metadata accessor for ClockFace(0) + 48)))
  {
    case 1:
    case 2:
    case 9:
    case 0xE:
      v2 = 0xD00000000000001ELL;
      break;
    case 3:
      v2 = 0xD000000000000022;
      break;
    case 4:
    case 5:
    case 0xB:
      v2 = 0xD000000000000020;
      break;
    case 6:
    case 0xA:
      v2 = 0xD00000000000001FLL;
      break;
    case 8:
      v2 = 0xD000000000000021;
      break;
    case 0xF:
      v2 = 0xD00000000000001CLL;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_10003A088()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ClockFace(0);
  if ((*(v0 + *(v8 + 52)) & 1) == 0)
  {
    if (*(v0 + *(v8 + 44)) != 1 || (sub_100036CA4(v7), sub_10006C9DC(), v12 = sub_10006C9AC(), v13 = *(v2 + 8), v13(v4, v1), v13(v7, v1), (v12 & 1) == 0))
    {
      sub_100036CA4(v7);
      sub_10006C9BC();
      v14 = sub_10006C9AC();
      v15 = *(v2 + 8);
      v15(v4, v1);
      v15(v7, v1);
      if (v14)
      {
        sub_10000EA30();
      }

      goto LABEL_8;
    }
  }

  sub_100036CA4(v7);
  sub_10006C9DC();
  v9 = sub_10006C9AC();
  v10 = *(v2 + 8);
  v10(v4, v1);
  v10(v7, v1);
  if ((v9 & 1) == 0)
  {
LABEL_8:
    v11 = 0;
    return sub_10000F1C8(v11);
  }

  v11 = *(v0 + 8);
  return sub_10000F1C8(v11);
}

uint64_t sub_10003A290()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_100036CA4(&v14 - v6);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    return sub_10006C78C();
  }

  v11 = type metadata accessor for ClockFace(0);
  if (*(v0 + *(v11 + 52)) & 1) != 0 || *(v0 + *(v11 + 44)) == 1 && (sub_100036CA4(v7), sub_10006C9DC(), v13 = sub_10006C9AC(), v9(v4, v1), v9(v7, v1), (v13))
  {
    v12 = *(v0 + 8);
  }

  else
  {
    v12 = 0;
  }

  return sub_10000F308(v12);
}

double sub_10003A438@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100003500(&qword_100089F38, &qword_10007B7D8);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = sub_10006C7DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for ClockFace(0) + 48);
  if ((sub_1000278AC(*(a1 + v11)) & 1) == 0)
  {
    sub_100039EF4(v12);
  }

  sub_10006C82C();
  (*(v8 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v7);
  sub_10006C81C();

  (*(v8 + 8))(v10, v7);
  v13 = enum case for Image.TemplateRenderingMode.template(_:);
  v14 = sub_10006C80C();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v6, v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  v16 = sub_10006C7EC();

  sub_100009204(v6, &qword_100089F38, &qword_10007B7D8);
  v17 = sub_10003A088();
  v18 = (a2 + *(sub_100003500(&qword_100089F40, &qword_10007B7E0) + 36));
  v19 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
  sub_100036CA4(v18 + *(v19 + 24));
  *v18 = v17;
  v18[1] = 0x3FF0000000000000;
  *a2 = v16;
  sub_10006C93C();
  sub_10006BEDC();
  v20 = (a2 + *(sub_100003500(&qword_100089F48, &qword_10007B7E8) + 36));
  v21 = v23[1];
  *v20 = v23[0];
  v20[1] = v21;
  result = *&v24;
  v20[2] = v24;
  return result;
}

unint64_t sub_10003A77C(__n128 a1)
{
  v2 = 0xD00000000000001FLL;
  v3 = *(v1 + *(type metadata accessor for ClockFace(0) + 48));
  if (v3 == 3)
  {
    return 0xD000000000000024;
  }

  if (v3 == 1)
  {
    return 0xD000000000000020;
  }

  return v2;
}

unint64_t sub_10003A7FC()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_10003A834()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_100036CA4(&v12 - v6);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    return sub_10006C78C();
  }

  if (*(v0 + *(type metadata accessor for ClockFace(0) + 52)) == 1)
  {
    v11 = *(v0 + 8);
  }

  else
  {
    v11 = 0;
  }

  return sub_10000F3A8(v11);
}

uint64_t sub_10003A984@<X0>(uint64_t a2@<X8>)
{
  v56 = a2;
  v2 = sub_100003500(&qword_100089F38, &qword_10007B7D8);
  __chkstk_darwin(v2 - 8);
  v4 = &v41 - v3;
  v5 = sub_10006C7DC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100003500(&qword_100089F48, &qword_10007B7E8) - 8;
  __chkstk_darwin(v57);
  v55 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v54 = &v41 - v11;
  __chkstk_darwin(v12);
  v53 = (&v41 - v13);
  v15 = __chkstk_darwin(v14);
  v17 = (&v41 - v16);
  sub_10003AFAC(v15);
  sub_10006C82C();
  v52 = enum case for Image.ResizingMode.stretch(_:);
  v18 = *(v6 + 104);
  v46 = v6 + 104;
  v51 = v18;
  v44 = v5;
  v18(v8);
  sub_10006C81C();

  v19 = *(v6 + 8);
  v49 = v6 + 8;
  v50 = v19;
  v19(v8, v5);
  v20 = enum case for Image.TemplateRenderingMode.template(_:);
  v48 = enum case for Image.TemplateRenderingMode.template(_:);
  v21 = sub_10006C80C();
  v22 = *(v21 - 8);
  v47 = *(v22 + 104);
  v47(v4, v20, v21);
  v45 = *(v22 + 56);
  v45(v4, 0, 1, v21);
  v23 = sub_10006C7EC();

  sub_100009204(v4, &qword_100089F38, &qword_10007B7D8);
  v24 = sub_10003A088();
  v42 = sub_100003500(&qword_100089F40, &qword_10007B7E0);
  v25 = (v17 + *(v42 + 36));
  v41 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
  sub_100036CA4(v25 + *(v41 + 24));
  *v25 = v24;
  v25[1] = 0x3FF0000000000000;
  v43 = v17;
  *v17 = v23;
  sub_10006C93C();
  sub_10006BEDC();
  v26 = (v17 + *(v57 + 44));
  v27 = v59;
  *v26 = v58;
  v26[1] = v27;
  v26[2] = v60;
  sub_10006C82C();
  v28 = v44;
  v51(v8, v52, v44);
  sub_10006C81C();

  v50(v8, v28);
  v47(v4, v48, v21);
  v45(v4, 0, 1, v21);
  v29 = sub_10006C7EC();

  sub_100009204(v4, &qword_100089F38, &qword_10007B7D8);
  v30 = sub_10003A290();
  v31 = v53;
  v32 = (v53 + *(v42 + 36));
  sub_100036CA4(v32 + *(v41 + 24));
  *v32 = v30;
  v32[1] = 0x3FD3333333333333;
  *v31 = v29;
  sub_10006C93C();
  sub_10006BEDC();
  v33 = (v31 + *(v57 + 44));
  v34 = v62;
  *v33 = v61;
  v33[1] = v34;
  v33[2] = v63;
  v35 = v43;
  v36 = v54;
  sub_100009264(v43, v54, &qword_100089F48, &qword_10007B7E8);
  v37 = v55;
  sub_100009264(v31, v55, &qword_100089F48, &qword_10007B7E8);
  v38 = v56;
  sub_100009264(v36, v56, &qword_100089F48, &qword_10007B7E8);
  v39 = sub_100003500(&qword_10008B6A8, &qword_10007CCB8);
  sub_100009264(v37, v38 + *(v39 + 48), &qword_100089F48, &qword_10007B7E8);
  sub_100009204(v31, &qword_100089F48, &qword_10007B7E8);
  sub_100009204(v35, &qword_100089F48, &qword_10007B7E8);
  sub_100009204(v37, &qword_100089F48, &qword_10007B7E8);
  return sub_100009204(v36, &qword_100089F48, &qword_10007B7E8);
}

unint64_t sub_10003AFAC(__n128 a1)
{
  v2 = 0xD00000000000001DLL;
  switch(*(v1 + *(type metadata accessor for ClockFace(0) + 48)))
  {
    case 1:
    case 2:
    case 9:
    case 0xE:
      v2 = 0xD00000000000001ELL;
      break;
    case 3:
      v2 = 0xD000000000000022;
      break;
    case 4:
    case 5:
    case 0xB:
      v2 = 0xD000000000000020;
      break;
    case 6:
    case 0xA:
      v2 = 0xD00000000000001FLL;
      break;
    case 8:
      v2 = 0xD000000000000021;
      break;
    case 0xF:
      v2 = 0xD00000000000001CLL;
      break;
    default:
      return v2;
  }

  return v2;
}

uint64_t sub_10003B140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v82 = a2;
  v2 = sub_100003500(&qword_10008B680, &qword_10007CC90);
  v78 = *(v2 - 8);
  v79 = v2;
  __chkstk_darwin(v2);
  v70 = &v67 - v3;
  v4 = sub_100003500(&qword_10008B688, &qword_10007CC98);
  __chkstk_darwin(v4 - 8);
  v81 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = &v67 - v7;
  v8 = sub_10006C9EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v67 - v13;
  v15 = sub_100003500(&qword_100089F38, &qword_10007B7D8);
  __chkstk_darwin(v15 - 8);
  v17 = &v67 - v16;
  v18 = sub_10006C7DC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100003500(&qword_10008B690, &qword_10007CCA0);
  __chkstk_darwin(v72);
  v75 = (&v67 - v22);
  v74 = sub_100003500(&qword_10008B698, &qword_10007CCA8);
  __chkstk_darwin(v74);
  v77 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v73 = &v67 - v25;
  __chkstk_darwin(v26);
  v83 = &v67 - v27;
  sub_10006C82C();
  (*(v19 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v18);
  sub_10006C81C();

  (*(v19 + 8))(v21, v18);
  v28 = v8;
  v29 = enum case for Image.TemplateRenderingMode.template(_:);
  v30 = sub_10006C80C();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v17, v29, v30);
  (*(v31 + 56))(v17, 0, 1, v30);
  v71 = sub_10006C7EC();

  sub_100009204(v17, &qword_100089F38, &qword_10007B7D8);
  v32 = type metadata accessor for ClockFace(0);
  v33 = v76;
  v34 = *(v76 + *(v32 + 52));
  if (v34)
  {
    v35 = 0.66;
  }

  else
  {
    v35 = 0.15;
  }

  v36 = v76;
  sub_100036CA4(v14);
  sub_10006C9CC();
  v37 = sub_10006C9AC();
  v38 = *(v9 + 8);
  v68 = v11;
  v38(v11, v28);
  v69 = v9 + 8;
  v38(v14, v28);
  if (v37)
  {
    v39 = *sub_10000E7A8();
  }

  else
  {
    if (v34)
    {
      v40 = *(v33 + 8);
    }

    else
    {
      v40 = 0;
    }

    v39 = sub_10000F3A8(v40);
  }

  v41 = v75;
  v42 = (v75 + *(v72 + 36));
  v43 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
  sub_100036CA4(v42 + *(v43 + 24));
  *v42 = v39;
  v42[1] = 0x3FC3333333333333;
  *v41 = v71;
  v41[1] = v35;
  sub_10006C93C();
  sub_10006BEDC();
  v44 = v41;
  v45 = v73;
  sub_1000586D4(v44, v73, &qword_10008B690, &qword_10007CCA0);
  v46 = (v45 + *(v74 + 36));
  v47 = v85;
  *v46 = v84;
  v46[1] = v47;
  v46[2] = v86;
  sub_1000586D4(v45, v83, &qword_10008B698, &qword_10007CCA8);
  if (v34 & 1) != 0 && (sub_100036CA4(v14), v48 = v68, sub_10006C9BC(), v49 = sub_10006C9AC(), v38(v48, v28), v38(v14, v28), (v49))
  {
    v50 = 1;
    v51 = v79;
    v52 = v80;
  }

  else
  {
    v53 = v70;
    sub_10003BAD4(1, v36, v70);
    v51 = v79;
    v54 = (v53 + *(v79 + 36));
    v55 = type metadata accessor for ClockWidgetAccentableOpacity(0);
    sub_100036CA4(v54 + *(v55 + 24));
    __asm { FMOV            V0.2D, #1.0 }

    *v54 = _Q0;
    v52 = v80;
    sub_1000586D4(v53, v80, &qword_10008B680, &qword_10007CC90);
    v50 = 0;
  }

  (*(v78 + 56))(v52, v50, 1, v51);
  v61 = v83;
  v62 = v77;
  sub_100009264(v83, v77, &qword_10008B698, &qword_10007CCA8);
  v63 = v81;
  sub_100009264(v52, v81, &qword_10008B688, &qword_10007CC98);
  v64 = v82;
  sub_100009264(v62, v82, &qword_10008B698, &qword_10007CCA8);
  v65 = sub_100003500(&qword_10008B6A0, &qword_10007CCB0);
  sub_100009264(v63, v64 + *(v65 + 48), &qword_10008B688, &qword_10007CC98);
  sub_100009204(v52, &qword_10008B688, &qword_10007CC98);
  sub_100009204(v61, &qword_10008B698, &qword_10007CCA8);
  sub_100009204(v63, &qword_10008B688, &qword_10007CC98);
  return sub_100009204(v62, &qword_10008B698, &qword_10007CCA8);
}

uint64_t sub_10003B97C()
{
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_100036CA4(&v12 - v6);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (v8)
  {
    sub_10000E7A8();
  }

  else
  {
    if (*(v0 + *(type metadata accessor for ClockFace(0) + 52)) == 1)
    {
      v11 = *(v0 + 8);
    }

    else
    {
      v11 = 0;
    }

    return sub_10000F3A8(v11);
  }
}

uint64_t sub_10003BAD4@<X0>(int a1@<W0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v191 = a1;
  v203 = a3;
  v185 = sub_100003500(&qword_10008B180, &qword_10007C910);
  __chkstk_darwin(v185);
  v187 = &v168 - v4;
  v186 = sub_100003500(&qword_10008B170, &qword_10007C908);
  __chkstk_darwin(v186);
  v196 = &v168 - v5;
  v205 = sub_100003500(&qword_10008B160, &qword_10007C900);
  __chkstk_darwin(v205);
  v188 = &v168 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v189 = &v168 - v8;
  v201 = sub_100003500(&qword_10008B6D0, &qword_10007CCE0);
  __chkstk_darwin(v201);
  v202 = &v168 - v9;
  v10 = sub_100003500(&qword_100089F38, &qword_10007B7D8);
  __chkstk_darwin(v10 - 8);
  v200 = &v168 - v11;
  v12 = sub_10006C7DC();
  v198 = *(v12 - 8);
  v199 = v12;
  __chkstk_darwin(v12);
  v197 = &v168 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10006CADC();
  v183 = *(v14 - 8);
  v184 = v14;
  __chkstk_darwin(v14);
  v181 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_10006C9EC();
  v16 = *(v192 - 8);
  __chkstk_darwin(v192);
  v18 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v168 - v20;
  v190 = sub_100003500(&qword_10008B130, &qword_10007C8E8);
  __chkstk_darwin(v190);
  v23 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v168 - v25;
  v194 = sub_100003500(&qword_10008B120, &qword_10007C8E0);
  __chkstk_darwin(v194);
  v172 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v173 = &v168 - v29;
  v195 = sub_100003500(&qword_10008B110, &qword_10007C8D8);
  __chkstk_darwin(v195);
  v175 = &v168 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v168 - v32;
  v169 = sub_100003500(&qword_10008B100, &qword_10007C8D0);
  __chkstk_darwin(v169);
  v171 = &v168 - v34;
  v170 = sub_100003500(&qword_10008B0F0, &qword_10007C8C8);
  __chkstk_darwin(v170);
  v174 = &v168 - v35;
  v176 = sub_100003500(&qword_10008B0D8, &qword_10007C8C0);
  __chkstk_darwin(v176);
  v177 = &v168 - v36;
  v37 = sub_100003500(&qword_10008B6D8, &qword_10007CCE8);
  v178 = *(v37 - 8);
  v179 = v37;
  __chkstk_darwin(v37);
  v193 = &v168 - v38;
  v204 = sub_100003500(&qword_10008B0D0, &qword_10007C8B8);
  __chkstk_darwin(v204);
  v180 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v182 = &v168 - v41;
  v42 = *(sub_10006BF5C() + 20);
  v43 = enum case for RoundedCornerStyle.continuous(_:);
  v44 = sub_10006C16C();
  v45 = *(*(v44 - 8) + 104);
  if (v191)
  {
    v45(&v26[v42], v43, v44);
    __asm { FMOV            V0.2D, #20.0 }

    *v26 = _Q0;
    sub_10004F670();

    sub_10006C96C();
    sub_10006BEFC();
    v51 = sub_100003500(&qword_10008B140, &qword_10007C8F0);
    v52 = &v26[*(v51 + 52)];
    v53 = v228;
    *v52 = v227;
    *(v52 + 1) = v53;
    *(v52 + 4) = v229;
    *&v26[*(v51 + 56)] = 256;
    v54 = sub_100026EFC();
    v55 = *v54;
    v56 = v54[1];
    sub_10006C96C();
    v57 = &v26[*(v190 + 36)];
    *v57 = v55;
    *(v57 + 1) = v56;
    *(v57 + 2) = v58;
    *(v57 + 3) = v59;
    sub_100036CA4(v21);
    sub_10006C9BC();
    v60 = sub_10006C9AC();
    v61 = *(v16 + 8);
    v62 = v18;
    v63 = v192;
    v61(v62, v192);
    v61(v21, v63);
    if ((v60 & 1) != 0 && (*(a2 + *(type metadata accessor for ClockFace(0) + 52)) & 1) == 0)
    {
      v64 = sub_100026F1C();
    }

    else
    {
      v64 = sub_100026EE4();
    }

    v81 = *v64;
    v80 = v64[1];
    sub_10006C96C();
    v83 = v82;
    v85 = v84;
    v86 = v173;
    sub_1000586D4(v26, v173, &qword_10008B130, &qword_10007C8E8);
    v87 = (v86 + *(v194 + 36));
    *v87 = v81;
    v87[1] = v80;
    v87[2] = v83;
    v87[3] = v85;
    sub_1000586D4(v86, v33, &qword_10008B120, &qword_10007C8E0);
    v88 = &v33[*(v195 + 36)];
    *v88 = 0x4000000000000000;
    v88[8] = 0;
    v89 = v171;
    sub_1000586D4(v33, v171, &qword_10008B110, &qword_10007C8D8);
    *(v89 + *(v169 + 36)) = 3;
    sub_10006C93C();
    sub_10006BEDC();
    v90 = v89;
    v91 = v174;
    sub_1000586D4(v90, v174, &qword_10008B100, &qword_10007C8D0);
    v92 = (v91 + *(v170 + 36));
    v93 = v231;
    *v92 = v230;
    v92[1] = v93;
    v92[2] = v232;
    v94 = *sub_100026F4C();
    sub_10006C96C();
    v96 = v95;
    v98 = v97;
    v99 = v177;
    sub_1000586D4(v91, v177, &qword_10008B0F0, &qword_10007C8C8);
    v100 = (v99 + *(v176 + 36));
    *v100 = v94;
    v100[1] = v96;
    v100[2] = v98;
    v102 = v183;
    v101 = v184;
    v103 = v181;
    (*(v183 + 104))(v181, enum case for _ClockHandRotationEffect.Period.secondHand(_:), v184);
    type metadata accessor for ClockFace(0);
    sub_10006C96C();
    sub_1000554E0();
    sub_10006C5FC();
    (*(v102 + 8))(v103, v101);
    sub_100009204(v99, &qword_10008B0D8, &qword_10007C8C0);
    v104 = sub_10006C93C();
    v106 = v105;
    sub_10006C82C();
    v108 = v197;
    v107 = v198;
    v109 = v199;
    (*(v198 + 104))(v197, enum case for Image.ResizingMode.stretch(_:), v199);
    sub_10006C81C();

    (*(v107 + 8))(v108, v109);
    v110 = enum case for Image.TemplateRenderingMode.template(_:);
    v111 = sub_10006C80C();
    v112 = *(v111 - 8);
    v113 = v200;
    (*(v112 + 104))(v200, v110, v111);
    (*(v112 + 56))(v113, 0, 1, v111);
    v114 = sub_10006C7EC();
    v199 = v114;

    sub_100009204(v113, &qword_100089F38, &qword_10007B7D8);
    sub_10006C93C();
    sub_10006BEDC();
    v115 = v233;
    LOBYTE(v112) = v234;
    v116 = v235;
    v117 = v236;
    v118 = v237;
    v119 = v238;
    v210 = v234;
    v208 = v236;
    *&v211 = v104;
    *(&v211 + 1) = v106;
    *&v212 = v114;
    *(&v212 + 1) = v233;
    LOBYTE(v213) = v234;
    *(&v213 + 1) = *v209;
    DWORD1(v213) = *&v209[3];
    *(&v213 + 1) = v235;
    LOBYTE(v214) = v236;
    *(&v214 + 1) = *v207;
    DWORD1(v214) = *&v207[3];
    *(&v214 + 1) = v237;
    v215 = v238;
    v120 = v180;
    (*(v178 + 32))(v180, v193, v179);
    v121 = v120 + *(v204 + 36);
    v122 = v214;
    *(v121 + 32) = v213;
    *(v121 + 48) = v122;
    *(v121 + 64) = v215;
    v123 = v212;
    *v121 = v211;
    *(v121 + 16) = v123;
    v216 = v104;
    v217 = v106;
    v218 = v199;
    v219 = v115;
    v220 = v112;
    *v221 = *v209;
    *&v221[3] = *&v209[3];
    v222 = v116;
    v223 = v117;
    *v224 = *v207;
    *&v224[3] = *&v207[3];
    v225 = v118;
    v226 = v119;
    sub_100009264(&v211, v206, &qword_10008B150, &qword_10007C8F8);
    sub_100009204(&v216, &qword_10008B150, &qword_10007C8F8);
    v124 = v182;
    sub_1000586D4(v120, v182, &qword_10008B0D0, &qword_10007C8B8);
    sub_100009264(v124, v202, &qword_10008B0D0, &qword_10007C8B8);
    swift_storeEnumTagMultiPayload();
    sub_1000553EC();
    sub_100055854();
    sub_10006C26C();
    return sub_100009204(v124, &qword_10008B0D0, &qword_10007C8B8);
  }

  else
  {
    v45(&v23[v42], v43, v44);
    __asm { FMOV            V0.2D, #20.0 }

    *v23 = _Q0;
    sub_10004F670();

    sub_10006C96C();
    sub_10006BEFC();
    v66 = sub_100003500(&qword_10008B140, &qword_10007C8F0);
    v67 = &v23[*(v66 + 52)];
    v68 = v228;
    *v67 = v227;
    *(v67 + 1) = v68;
    *(v67 + 4) = v229;
    *&v23[*(v66 + 56)] = 256;
    v69 = sub_100026EFC();
    v70 = *v69;
    v71 = v69[1];
    sub_10006C96C();
    v72 = &v23[*(v190 + 36)];
    *v72 = v70;
    *(v72 + 1) = v71;
    *(v72 + 2) = v73;
    *(v72 + 3) = v74;
    sub_100036CA4(v21);
    sub_10006C9BC();
    v75 = sub_10006C9AC();
    v76 = *(v16 + 8);
    v77 = v18;
    v78 = v192;
    v76(v77, v192);
    v76(v21, v78);
    if ((v75 & 1) != 0 && (*(a2 + *(type metadata accessor for ClockFace(0) + 52)) & 1) == 0)
    {
      v79 = sub_100026F1C();
    }

    else
    {
      v79 = sub_100026EE4();
    }

    v127 = *v79;
    v126 = v79[1];
    sub_10006C96C();
    v129 = v128;
    v131 = v130;
    v132 = v172;
    sub_1000586D4(v23, v172, &qword_10008B130, &qword_10007C8E8);
    v133 = (v132 + *(v194 + 36));
    *v133 = v127;
    v133[1] = v126;
    v133[2] = v129;
    v133[3] = v131;
    v134 = v132;
    v135 = v175;
    sub_1000586D4(v134, v175, &qword_10008B120, &qword_10007C8E0);
    v136 = v135 + *(v195 + 36);
    *v136 = 0x4000000000000000;
    *(v136 + 8) = 0;
    sub_10006C93C();
    sub_10006BEDC();
    v137 = v187;
    sub_1000586D4(v135, v187, &qword_10008B110, &qword_10007C8D8);
    v138 = (v137 + *(v185 + 36));
    v139 = v231;
    *v138 = v230;
    v138[1] = v139;
    v138[2] = v232;
    v140 = *sub_100026F34();
    sub_10006C96C();
    v142 = v141;
    v144 = v143;
    v145 = v196;
    sub_1000586D4(v137, v196, &qword_10008B180, &qword_10007C910);
    v146 = (v145 + *(v186 + 36));
    *v146 = v140;
    v146[1] = v142;
    v146[2] = v144;
    v147 = sub_10006C93C();
    v195 = v148;
    sub_10006C82C();
    v150 = v197;
    v149 = v198;
    v151 = v199;
    (*(v198 + 104))(v197, enum case for Image.ResizingMode.stretch(_:), v199);
    sub_10006C81C();

    (*(v149 + 8))(v150, v151);
    v152 = enum case for Image.TemplateRenderingMode.template(_:);
    v153 = sub_10006C80C();
    v154 = *(v153 - 8);
    v155 = v200;
    (*(v154 + 104))(v200, v152, v153);
    (*(v154 + 56))(v155, 0, 1, v153);
    v156 = sub_10006C7EC();
    v199 = v156;

    sub_100009204(v155, &qword_100089F38, &qword_10007B7D8);
    sub_10006C93C();
    sub_10006BEDC();
    v157 = v233;
    LOBYTE(v154) = v234;
    v158 = v235;
    v159 = v236;
    v160 = v237;
    v161 = v238;
    v210 = v234;
    v208 = v236;
    v162 = v195;
    *&v211 = v147;
    *(&v211 + 1) = v195;
    *&v212 = v156;
    *(&v212 + 1) = v233;
    LOBYTE(v213) = v234;
    *(&v213 + 1) = *v209;
    DWORD1(v213) = *&v209[3];
    *(&v213 + 1) = v235;
    LOBYTE(v214) = v236;
    *(&v214 + 1) = *v207;
    DWORD1(v214) = *&v207[3];
    *(&v214 + 1) = v237;
    v215 = v238;
    v163 = v188;
    sub_1000586D4(v196, v188, &qword_10008B170, &qword_10007C908);
    v164 = v163 + *(v205 + 36);
    v165 = v214;
    *(v164 + 32) = v213;
    *(v164 + 48) = v165;
    *(v164 + 64) = v215;
    v166 = v212;
    *v164 = v211;
    *(v164 + 16) = v166;
    v216 = v147;
    v217 = v162;
    v218 = v199;
    v219 = v157;
    v220 = v154;
    *v221 = *v209;
    *&v221[3] = *&v209[3];
    v222 = v158;
    v223 = v159;
    *v224 = *v207;
    *&v224[3] = *&v207[3];
    v225 = v160;
    v226 = v161;
    sub_100009264(&v211, v206, &qword_10008B150, &qword_10007C8F8);
    sub_100009204(&v216, &qword_10008B150, &qword_10007C8F8);
    v167 = v189;
    sub_1000586D4(v163, v189, &qword_10008B160, &qword_10007C900);
    sub_100009264(v167, v202, &qword_10008B160, &qword_10007C900);
    swift_storeEnumTagMultiPayload();
    sub_1000553EC();
    sub_100055854();
    sub_10006C26C();
    return sub_100009204(v167, &qword_10008B160, &qword_10007C900);
  }
}

uint64_t sub_10003CE08(uint64_t a1)
{
  sub_10004F670();
}

uint64_t sub_10003CEC4@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_10006C9EC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_100089F60, &qword_10007B800);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100003500(&qword_100089F68, &qword_10007B808);
  sub_100011308(&qword_100089F70, &qword_100089F68, &qword_10007B808, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10006C5EC();
  type metadata accessor for ClockWidgetAccentableOpacity(0);
  sub_10006C9CC();
  v9 = v15;
  v10 = sub_10006C9AC();
  (*(v2 + 8))(v4, v1);
  v11 = 8;
  if (v10)
  {
    v11 = 0;
  }

  v12 = *(v9 + v11);
  v13 = v16;
  (*(v6 + 32))(v16, v8, v5);
  result = sub_100003500(&qword_100089F78, &qword_10007B810);
  *(v13 + *(result + 36)) = v12;
  return result;
}

uint64_t sub_10003D0F8@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *a2 = a3;
  a2[1] = a4;
  v6 = *(type metadata accessor for ClockWidgetAccentableOpacity(0) + 24);
  v7 = sub_10006C9EC();
  v8 = *(*(v7 - 8) + 32);

  return v8(a2 + v6, a1, v7);
}

uint64_t sub_10003D17C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v16[1] = a1;
  v17 = a2;
  v2 = sub_10006C9EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_100089F60, &qword_10007B800);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v16 - v8;
  sub_100003500(&qword_100089F68, &qword_10007B808);
  sub_100011308(&qword_100089F70, &qword_100089F68, &qword_10007B808, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10006C5EC();
  sub_10006C9CC();
  v10 = v16[2];
  v11 = sub_10006C9AC();
  (*(v3 + 8))(v5, v2);
  v12 = 8;
  if (v11)
  {
    v12 = 0;
  }

  v13 = *(v10 + v12);
  v14 = v17;
  (*(v7 + 32))(v17, v9, v6);
  result = sub_100003500(&qword_100089F78, &qword_10007B810);
  *(v14 + *(result + 36)) = v13;
  return result;
}

uint64_t sub_10003D3E4(uint64_t a1)
{
  v3 = *(type metadata accessor for AccentedWidgetBackground(0) + 20);
  v4 = sub_10006C9EC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_10003D4A8(uint64_t a1)
{
  v7[1] = a1;
  v2 = sub_10006C31C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C30C();
  v8 = v1;
  sub_10006C93C();
  sub_100003500(&qword_100089F80, &qword_10007B818);
  sub_100003500(&qword_100089F88, &qword_10007B820);
  sub_100011308(&qword_100089F90, &qword_100089F80, &qword_10007B818, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004F7BC();
  sub_10006C69C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10003D648@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10006C9EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccentedWidgetBackground(0);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [objc_opt_self() clearColor];
    v10 = sub_10006C70C();
  }

  else
  {
    v10 = *a1;
  }

  result = sub_10006C33C();
  *a2 = v10;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10003D77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for AccentedWidgetBackground(0) + 20);
  v6 = sub_10006C9EC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_10003D860(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10003D878(uint64_t a1)
{
  v7[1] = a1;
  v2 = sub_10006C31C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006C30C();
  v8 = v1;
  sub_10006C93C();
  sub_100003500(&qword_100089F80, &qword_10007B818);
  sub_100003500(&qword_100089F88, &qword_10007B820);
  sub_100011308(&qword_100089F90, &qword_100089F80, &qword_10007B818, &protocol conformance descriptor for _ViewModifier_Content<A>);
  sub_10004F7BC();
  sub_10006C69C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_10003DAA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v3 = sub_10006C9EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_100089FA0, &qword_10007B828);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  type metadata accessor for ClockWidgetAccentableForegroundColor(0);
  sub_10006C9CC();
  v10 = sub_10006C9AC();
  v11 = *(v4 + 8);
  v11(v6, v3);
  if (v10)
  {
    v12 = sub_10006C78C();
  }

  else
  {
    v12 = *v2;
  }

  KeyPath = swift_getKeyPath();
  v14 = sub_100003500(&qword_100089FA8, &qword_10007B860);
  (*(*(v14 - 8) + 16))(v9, v20, v14);
  v15 = &v9[*(v7 + 36)];
  *v15 = KeyPath;
  v15[1] = v12;
  sub_10006C9CC();
  v16 = sub_10006C9AC();
  v11(v6, v3);
  v17 = 1.0;
  if (v16)
  {
    v17 = *(v2 + 1);
  }

  v18 = v21;
  sub_1000586D4(v9, v21, &qword_100089FA0, &qword_10007B828);
  result = sub_100003500(&qword_100089FB0, &qword_10007B868);
  *(v18 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_10003DCF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  v6 = *(type metadata accessor for ClockWidgetAccentableForegroundColor(0) + 24);
  v7 = sub_10006C9EC();
  v8 = *(*(v7 - 8) + 32);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_10003DD7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10003DDDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DEAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003DF94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10003DFDC()
{
  result = qword_100089E40;
  if (!qword_100089E40)
  {
    sub_100007094(&qword_100089E20, &qword_10007B6E0);
    sub_10003E060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089E40);
  }

  return result;
}

unint64_t sub_10003E060()
{
  result = qword_100089E48;
  if (!qword_100089E48)
  {
    sub_100007094(&qword_100089E30, &unk_10007B6F0);
    type metadata accessor for SmallMultiWorldClockView(255);
    sub_10003DF94(&qword_100089E50, type metadata accessor for SmallMultiWorldClockView, &unk_10007BCD0);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for MediumWorldClockView(255);
    sub_10003DF94(&qword_100089E58, type metadata accessor for MediumWorldClockView, &unk_10007BD20);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089E48);
  }

  return result;
}

uint64_t sub_10003E1A8()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10003E1E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10003E244()
{
  result = qword_100089EA8;
  if (!qword_100089EA8)
  {
    sub_100007094(&qword_100089E90, &qword_10007B728);
    sub_100011308(&qword_100089EB0, &qword_100089EB8, &qword_10007B740, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100089EA8);
  }

  return result;
}

uint64_t sub_10003E3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10006C0AC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_100088FB8, &qword_100079CB0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ClockText(0);
  sub_100009264(v1 + *(v10 + 32), v9, &qword_100088FB8, &qword_100079CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10006C1AC();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_10006CCCC();
    v13 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_10003E5D0(char a1, __n128 a2)
{
  result = type metadata accessor for ClockText(0);
  *(v2 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_10003E648@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for ClockText(0) + 40);
  v5 = sub_10006C9EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t sub_10003E6C4(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for ClockText(0) + 40);
  v5 = sub_10006C9EC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

__n128 sub_10003E788@<Q0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = sub_10006C0AC();
  v54 = *(v2 - 8);
  v55 = v2;
  __chkstk_darwin(v2);
  v52 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10006C1AC();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_100089FB8, &qword_10007B870);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = v46 - v8;
  v51 = sub_100003500(&qword_100089FC0, &unk_10007B878);
  __chkstk_darwin(v51);
  v56 = v46 - v10;
  sub_10003EE18(v1, v9);
  KeyPath = swift_getKeyPath();
  v47 = type metadata accessor for ClockText(0);
  v11 = (v1 + *(v47 + 24));
  v12 = v11[3];
  v13 = v11[4];
  v46[1] = sub_10004F840(v11, v12);
  sub_10003E3A4(v5);
  v14 = *(v13 + 200);
  v15 = *(v7 + 44);
  v53 = v9;
  v16 = &v9[v15];
  sub_100003500(&qword_100088FC8, &qword_100079CF0);
  v14(v5, v12, v13);
  (*(v49 + 8))(v5, v50);
  *v16 = KeyPath;
  v17 = *(v1 + *(v47 + 44) + 8);

  if ((v17 & 1) == 0)
  {
    sub_10006CCCC();
    v18 = sub_10006C32C();
    sub_10006BDEC();

    v19 = v52;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v54 + 8))(v19, v55);
  }

  v20 = sub_100067C8C();

  v21 = v11[3];
  v22 = v11[4];
  sub_10004F840(v11, v21);
  (*(v22 + 24))(v21, v22);
  v24 = 0.256;
  if (v20)
  {
    v24 = 0.298;
  }

  v25 = v23 * v24;

  if ((v17 & 1) == 0)
  {
    sub_10006CCCC();
    v26 = sub_10006C32C();
    sub_10006BDEC();

    v27 = v52;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v54 + 8))(v27, v55);
  }

  v28 = sub_100067C8C();

  v29 = v11[3];
  v30 = v11[4];
  sub_10004F840(v11, v29);
  (*(v30 + 24))(v29, v30);
  v32 = 0.252;
  if (v28)
  {
    v32 = 0.295;
  }

  v33 = v31 * v32;
  v34 = sub_10006C33C();
  v35 = v56;
  sub_1000586D4(v53, v56, &qword_100089FB8, &qword_10007B870);
  v36 = v35 + *(v51 + 36);
  *v36 = v34;
  *(v36 + 8) = v25;
  *(v36 + 16) = 0;
  *(v36 + 24) = v33;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  v37 = v11[3];
  v38 = v11[4];
  sub_10004F840(v11, v37);
  (*(v38 + 24))(v37, v38);
  v39 = v11[3];
  v40 = v11[4];
  sub_10004F840(v11, v39);
  (*(v40 + 24))(v39, v40);
  sub_10006C93C();
  sub_10006BF6C();
  v41 = v57;
  sub_1000586D4(v35, v57, &qword_100089FC0, &unk_10007B878);
  v42 = v41 + *(sub_100003500(&qword_100089FC8, &unk_10007B888) + 36);
  v43 = v63;
  *(v42 + 64) = v62;
  *(v42 + 80) = v43;
  *(v42 + 96) = v64;
  v44 = v59;
  *v42 = v58;
  *(v42 + 16) = v44;
  result = v61;
  *(v42 + 32) = v60;
  *(v42 + 48) = result;
  return result;
}

uint64_t sub_10003EE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_100003500(&qword_10008B230, &qword_10007C948);
  __chkstk_darwin(v3);
  v5 = &v49 - v4;
  v6 = sub_100003500(&qword_10008B5F8, &qword_10007CC08);
  __chkstk_darwin(v6);
  v8 = &v49 - v7;
  v9 = sub_100003500(&qword_10008B220, &qword_10007C940);
  __chkstk_darwin(v9 - 8);
  v52 = (&v49 - v10);
  v51 = sub_100003500(&qword_10008B210, &qword_10007C938);
  __chkstk_darwin(v51);
  v54 = &v49 - v11;
  v57 = sub_100003500(&qword_10008B200, &qword_10007C930);
  __chkstk_darwin(v57);
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v55 = &v49 - v14;
  v15 = sub_10006C0AC();
  v50 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ClockText(0);
  v19 = *(a1 + v18[11] + 8);

  if ((v19 & 1) == 0)
  {
    sub_10006CCCC();
    v49 = v15;
    v20 = sub_10006C32C();
    sub_10006BDEC();

    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v50 + 8))(v17, v49);
  }

  v21 = sub_100067D1C();

  if (v21)
  {
    v22 = sub_10006C93C();
    v23 = v52;
    *v52 = v22;
    *(v23 + 8) = v24;
    v25 = sub_100003500(&qword_10008B608, &qword_10007CC18);
    sub_10003F548(a1, v23 + *(v25 + 44));
    v26 = (a1 + v18[6]);
    v50 = a1;
    v27 = v26[3];
    v28 = v26[4];
    sub_10004F840(v26, v27);
    (*(v28 + 24))(v27, v28);
    sub_10006C93C();
    sub_10006BF6C();
    v29 = v54;
    sub_1000586D4(v23, v54, &qword_10008B220, &qword_10007C940);
    v30 = (v29 + *(v51 + 36));
    v31 = v63;
    v30[4] = v62;
    v30[5] = v31;
    v30[6] = v64;
    v32 = v59;
    *v30 = v58;
    v30[1] = v32;
    v33 = v61;
    v30[2] = v60;
    v30[3] = v33;
    v34 = v18[10];
    v35 = v53;
    v36 = &v53[*(v57 + 36)];
    v37 = *(type metadata accessor for ClockWidgetAccentableOpacity(0) + 24);
    v38 = sub_10006C9EC();
    (*(*(v38 - 8) + 16))(&v36[v37], v50 + v34, v38);
    *v36 = 0x3FE0000000000000;
    *(v36 + 1) = 0x3FF0000000000000;
    sub_1000586D4(v29, v35, &qword_10008B210, &qword_10007C938);
    v39 = v55;
    sub_1000586D4(v35, v55, &qword_10008B200, &qword_10007C930);
    sub_100009264(v39, v8, &qword_10008B200, &qword_10007C930);
    swift_storeEnumTagMultiPayload();
    sub_1000561A8();
    sub_10005631C();
    sub_10006C26C();
    v40 = v39;
    v41 = &qword_10008B200;
    v42 = &qword_10007C930;
  }

  else
  {
    *v5 = sub_10006C1BC();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v43 = sub_100003500(&qword_10008B600, &qword_10007CC10);
    sub_100040FA8(a1, &v5[*(v43 + 44)]);
    v44 = v18[10];
    v45 = &v5[*(v3 + 36)];
    v46 = *(type metadata accessor for ClockWidgetAccentableOpacity(0) + 24);
    v47 = sub_10006C9EC();
    (*(*(v47 - 8) + 16))(&v45[v46], a1 + v44, v47);
    *v45 = 0x3FE0000000000000;
    *(v45 + 1) = 0x3FF0000000000000;
    sub_100009264(v5, v8, &qword_10008B230, &qword_10007C948);
    swift_storeEnumTagMultiPayload();
    sub_1000561A8();
    sub_10005631C();
    sub_10006C26C();
    v40 = v5;
    v41 = &qword_10008B230;
    v42 = &qword_10007C948;
  }

  return sub_100009204(v40, v41, v42);
}

uint64_t sub_10003F548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100003500(&qword_10008B610, &qword_10007CC20);
  __chkstk_darwin(v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = sub_100003500(&qword_10008B618, &qword_10007CC28);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  sub_10003F7FC(&v25 - v14);
  v16 = sub_1000418B4(sub_10000F448);
  v17 = *(type metadata accessor for ClockText(0) + 40);
  v18 = &v15[*(v10 + 44)];
  v19 = *(type metadata accessor for ClockWidgetAccentableForegroundColor(0) + 24);
  v20 = sub_10006C9EC();
  (*(*(v20 - 8) + 16))(v18 + v19, a1 + v17, v20);
  *v18 = v16;
  v18[1] = 0x3FF0000000000000;
  *v8 = sub_10006C1BC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v21 = sub_100003500(&qword_10008B620, &qword_10007CC30);
  sub_10003FBE0(a1, &v8[*(v21 + 44)]);
  sub_100009264(v15, v12, &qword_10008B618, &qword_10007CC28);
  sub_100009264(v8, v5, &qword_10008B610, &qword_10007CC20);
  v22 = v26;
  sub_100009264(v12, v26, &qword_10008B618, &qword_10007CC28);
  v23 = sub_100003500(&qword_10008B628, &qword_10007CC38);
  sub_100009264(v5, v22 + *(v23 + 48), &qword_10008B610, &qword_10007CC20);
  sub_100009204(v8, &qword_10008B610, &qword_10007CC20);
  sub_100009204(v15, &qword_10008B618, &qword_10007CC28);
  sub_100009204(v5, &qword_10008B610, &qword_10007CC20);
  return sub_100009204(v12, &qword_10008B618, &qword_10007CC28);
}

uint64_t sub_10003F7FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = type metadata accessor for ClockText(0);
  v44 = v1 + *(v6 + 20);
  sub_1000657E8(v5);
  v7 = sub_10006BD3C();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = sub_10006C50C();
  v10 = v9;
  v12 = v11;
  sub_1000418B4(sub_10000F448);
  v41 = sub_10006C4EC();
  v42 = v13;
  v15 = v14;
  v17 = v16;

  sub_1000070DC(v8, v10, v12 & 1);

  v18 = v6;
  if (*(v2 + *(v6 + 36)) == 1)
  {
    sub_10002AA90();
  }

  else
  {
    sub_10002AB94();
  }

  v19 = v41;
  v43 = sub_10006C52C();
  v21 = v20;
  v23 = v22;
  v40 = v24;

  sub_1000070DC(v19, v15, v17 & 1);

  v25 = (v2 + *(v18 + 24));
  v26 = v25[3];
  v27 = v25[4];
  sub_10004F840(v25, v26);
  (*(v27 + 24))(v26, v27);
  sub_10006C93C();
  sub_10006BEDC();
  v60 = v23 & 1;
  KeyPath = swift_getKeyPath();
  v61 = 0;
  v29 = swift_getKeyPath();
  v30 = swift_getKeyPath();
  *&v46 = v43;
  *(&v46 + 1) = v21;
  LOBYTE(v47) = v23 & 1;
  *(&v47 + 1) = v40;
  v48 = v55;
  v49 = v56;
  v50 = v57;
  *&v51 = KeyPath;
  *(&v51 + 1) = 1;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = v29;
  *&v53 = 0x3F847AE147AE147BLL;
  *(&v53 + 1) = v30;
  v54 = 1;
  v31 = type metadata accessor for WidgetUtilities();
  v32 = type metadata accessor for WorldClockCity(0);
  v33 = (*(v31 + 120))(*(v44 + *(v32 + 32)), *(v44 + *(v32 + 32) + 8));
  v35 = v34;
  v37 = v36;
  sub_100003500(&qword_100089FD0, &qword_10007B928);
  sub_10004F884();
  sub_10006C66C();
  sub_1000070DC(v33, v35, v37 & 1);

  v58[6] = v52;
  v58[7] = v53;
  v59 = v54;
  v58[2] = v48;
  v58[3] = v49;
  v58[4] = v50;
  v58[5] = v51;
  v58[0] = v46;
  v58[1] = v47;
  return sub_100009204(v58, &qword_100089FD0, &qword_10007B928);
}

uint64_t sub_10003FBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_100003500(&qword_10008B630, &qword_10007CC40);
  v32 = *(v3 - 8);
  v33 = v3;
  __chkstk_darwin(v3);
  v5 = (&v32 - v4);
  v6 = sub_100003500(&qword_10008B638, &qword_10007CC48);
  __chkstk_darwin(v6 - 8);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_100003500(&qword_10008A088, &qword_10007B988);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  sub_10003FFD8(&v32 - v18);
  v20 = (a1 + *(type metadata accessor for ClockText(0) + 24));
  v22 = v20[3];
  v21 = v20[4];
  sub_10004F840(v20, v22);
  if ((*(v21 + 192))(v22, v21))
  {
    v23 = v20[3];
    v24 = v20[4];
    sub_10004F840(v20, v23);
    v25 = (*(v24 + 24))(v23, v24) * 0.49;
    sub_100040800(v16);
    sub_100009264(v16, v13, &qword_10008A088, &qword_10007B988);
    *v5 = v25;
    *(v5 + 8) = 0;
    v26 = sub_100003500(&qword_10008B648, &qword_10007CC58);
    sub_100009264(v13, v5 + *(v26 + 48), &qword_10008A088, &qword_10007B988);
    sub_100009204(v16, &qword_10008A088, &qword_10007B988);
    sub_100009204(v13, &qword_10008A088, &qword_10007B988);
    sub_1000586D4(v5, v10, &qword_10008B630, &qword_10007CC40);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v32 + 56))(v10, v27, 1, v33);
  sub_100009264(v19, v16, &qword_10008A088, &qword_10007B988);
  v28 = v34;
  sub_100009264(v10, v34, &qword_10008B638, &qword_10007CC48);
  v29 = v35;
  sub_100009264(v16, v35, &qword_10008A088, &qword_10007B988);
  v30 = sub_100003500(&qword_10008B640, &qword_10007CC50);
  sub_100009264(v28, v29 + *(v30 + 48), &qword_10008B638, &qword_10007CC48);
  sub_100009204(v10, &qword_10008B638, &qword_10007CC48);
  sub_100009204(v19, &qword_10008A088, &qword_10007B988);
  sub_100009204(v28, &qword_10008B638, &qword_10007CC48);
  return sub_100009204(v16, &qword_10008A088, &qword_10007B988);
}

uint64_t sub_10003FFD8@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v65 = sub_10006C0AC();
  v74 = *(v65 - 8);
  __chkstk_darwin(v65);
  v73 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10006C1AC();
  v66 = *(v3 - 8);
  v67 = v3;
  __chkstk_darwin(v3);
  v5 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003500(&qword_10008A040, &qword_10007B960);
  __chkstk_darwin(v6 - 8);
  v71 = v62 - v7;
  v75 = type metadata accessor for ClockText(0);
  v8 = v1 + v75[5];
  v68 = type metadata accessor for WorldClockCity(0);
  v69 = v8;
  v9 = (v8 + *(v68 + 28));
  v10 = v9[1];
  *&v92[0] = *v9;
  *(&v92[0] + 1) = v10;
  v11 = sub_10002B2FC();

  v70 = v11;
  v12 = sub_10006C5BC();
  v14 = v13;
  v16 = v15;
  sub_1000418B4(sub_10000F128);
  v17 = sub_10006C4EC();
  v62[1] = v18;
  v63 = v17;
  v20 = v19;
  v22 = v21;

  sub_1000070DC(v12, v14, v16 & 1);

  v23 = v75[6];
  v64 = v1;
  v24 = *(v1 + v23 + 24);
  v25 = *(v1 + v23 + 32);
  sub_10004F840((v64 + v23), *(v64 + v23 + 24));
  sub_10003E3A4(v5);
  (*(v25 + 208))(v5, v24, v25);
  (*(v66 + 8))(v5, v67);
  v26 = v63;
  v27 = sub_10006C52C();
  v29 = v28;
  v31 = v30;

  sub_1000070DC(v26, v20, v22 & 1);

  sub_10006C3DC();
  v32 = sub_10006C4DC();
  v66 = v33;
  v67 = v32;
  v35 = v34;
  v37 = v36;
  sub_1000070DC(v27, v29, v31 & 1);
  v38 = v65;

  v39 = *(v64 + v75[11] + 8);

  if ((v39 & 1) == 0)
  {
    sub_10006CCCC();
    v40 = sub_10006C32C();
    sub_10006BDEC();

    v41 = v73;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v74 + 8))(v41, v38);
  }

  sub_100067D1C();

  sub_10006C93C();
  sub_10006BF6C();
  v101 = v37 & 1;
  KeyPath = swift_getKeyPath();
  v102 = 0;

  if ((v39 & 1) == 0)
  {
    sub_10006CCCC();
    v43 = sub_10006C32C();
    sub_10006BDEC();

    v44 = v73;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v74 + 8))(v44, v38);
  }

  v45 = sub_100067D1C();

  sub_10006C96C();
  v47 = v46;
  v49 = v48;

  if ((v39 & 1) == 0)
  {
    sub_10006CCCC();
    v50 = sub_10006C32C();
    sub_10006BDEC();

    v51 = v73;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v74 + 8))(v51, v38);
  }

  v52 = 1.0;
  if (v45)
  {
    v53 = 0.8;
  }

  else
  {
    v53 = 1.0;
  }

  v54 = sub_100067D1C();

  if (!v54)
  {
    v52 = 0.6;
  }

  v55 = swift_getKeyPath();
  *&v78 = v67;
  *(&v78 + 1) = v35;
  LOBYTE(v79) = v37 & 1;
  *(&v79 + 1) = v66;
  v84 = v98;
  v85 = v99;
  v86 = v100;
  v80 = v94;
  v81 = v95;
  v83 = v97;
  v82 = v96;
  *&v87 = KeyPath;
  *(&v87 + 1) = 1;
  LOBYTE(v88) = 0;
  *(&v88 + 1) = v53;
  *&v89 = v53;
  *(&v89 + 1) = v47;
  *&v90 = v49;
  *(&v90 + 1) = v55;
  v91 = v52;
  v56 = (v69 + *(v68 + 24));
  v58 = *v56;
  v57 = v56[1];
  v76 = v58;
  v77 = v57;
  sub_100003500(&qword_10008A048, &qword_10007B968);
  sub_10004FB30();
  v59 = v71;
  sub_10006C67C();
  v92[10] = v88;
  v92[11] = v89;
  v92[12] = v90;
  v93 = v91;
  v92[6] = v84;
  v92[7] = v85;
  v92[8] = v86;
  v92[9] = v87;
  v92[2] = v80;
  v92[3] = v81;
  v92[4] = v82;
  v92[5] = v83;
  v92[0] = v78;
  v92[1] = v79;
  sub_100009204(v92, &qword_10008A048, &qword_10007B968);
  v60 = v72;
  sub_1000586D4(v59, v72, &qword_10008A040, &qword_10007B960);
  result = sub_100003500(&qword_10008A088, &qword_10007B988);
  *(v60 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_100040800@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v2 = sub_10006C0AC();
  v71 = *(v2 - 8);
  v72 = v2;
  __chkstk_darwin(v2);
  v70 = v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10006C1AC();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003500(&qword_10008A040, &qword_10007B960);
  __chkstk_darwin(v7 - 8);
  v75 = v63 - v8;
  v9 = type metadata accessor for ClockText(0);
  v73 = *(v9 + 20);
  sub_100065940(1);
  *&v93[0] = v10;
  *(&v93[0] + 1) = v11;
  v74 = sub_10002B2FC();
  v12 = sub_10006C5BC();
  v14 = v13;
  v16 = v15;
  sub_1000418B4(sub_10000F128);
  v17 = sub_10006C4EC();
  v64 = v18;
  v65 = v17;
  v20 = v19;
  v63[1] = v21;

  sub_1000070DC(v12, v14, v16 & 1);

  v66 = v9;
  v22 = (v1 + *(v9 + 24));
  v23 = v22[3];
  v24 = v22[4];
  sub_10004F840(v22, v23);
  v69 = v1;
  sub_10003E3A4(v6);
  (*(v24 + 208))(v6, v23, v24);
  (*(v67 + 8))(v6, v68);
  LOBYTE(v6) = v20;
  v25 = v64;
  v26 = v65;
  v27 = sub_10006C52C();
  v29 = v28;
  v31 = v30;
  v63[0] = v32;

  sub_1000070DC(v26, v25, v6 & 1);

  sub_10006C3DC();
  v33 = sub_10006C4DC();
  v67 = v34;
  v68 = v33;
  v36 = v35;
  v38 = v37;
  sub_1000070DC(v27, v29, v31 & 1);

  v39 = v22[3];
  v40 = v22[4];
  sub_10004F840(v22, v39);
  (*(v40 + 24))(v39, v40);
  sub_10006C93C();
  sub_10006BF6C();
  v41 = v38 & 1;
  v102 = v38 & 1;
  KeyPath = swift_getKeyPath();
  v103 = 0;
  v43 = *(v69 + *(v66 + 44) + 8);

  if ((v43 & 1) == 0)
  {
    sub_10006CCCC();
    v44 = sub_10006C32C();
    sub_10006BDEC();

    v45 = v70;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v71 + 8))(v45, v72);
  }

  v46 = sub_100067D1C();

  sub_10006C96C();
  v48 = v47;
  v50 = v49;

  if ((v43 & 1) == 0)
  {
    sub_10006CCCC();
    v51 = sub_10006C32C();
    sub_10006BDEC();

    v52 = v70;
    sub_10006C09C();
    swift_getAtKeyPath();

    (*(v71 + 8))(v52, v72);
  }

  v53 = 1.0;
  if (v46)
  {
    v54 = 0.8;
  }

  else
  {
    v54 = 1.0;
  }

  v55 = sub_100067D1C();

  if (!v55)
  {
    v53 = 0.6;
  }

  v56 = swift_getKeyPath();
  *&v79 = v68;
  *(&v79 + 1) = v36;
  LOBYTE(v80) = v41;
  *(&v80 + 1) = v67;
  v85 = v99;
  v86 = v100;
  v87 = v101;
  v81 = v95;
  v82 = v96;
  v84 = v98;
  v83 = v97;
  *&v88 = KeyPath;
  *(&v88 + 1) = 1;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = v54;
  *&v90 = v54;
  *(&v90 + 1) = v48;
  *&v91 = v50;
  *(&v91 + 1) = v56;
  v92 = v53;
  v57 = sub_100001CF8();
  sub_100065940(v57 & 1);
  v77 = v58;
  v78 = v59;
  sub_100003500(&qword_10008A048, &qword_10007B968);
  sub_10004FB30();
  v60 = v75;
  sub_10006C67C();

  v93[10] = v89;
  v93[11] = v90;
  v93[12] = v91;
  v94 = v92;
  v93[6] = v85;
  v93[7] = v86;
  v93[8] = v87;
  v93[9] = v88;
  v93[2] = v81;
  v93[3] = v82;
  v93[4] = v83;
  v93[5] = v84;
  v93[0] = v79;
  v93[1] = v80;
  sub_100009204(v93, &qword_10008A048, &qword_10007B968);
  v61 = v76;
  sub_1000586D4(v60, v76, &qword_10008A040, &qword_10007B960);
  result = sub_100003500(&qword_10008A088, &qword_10007B988);
  *(v61 + *(result + 36)) = 1;
  return result;
}

uint64_t sub_100040FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v106 = sub_100003500(&qword_10008B650, &qword_10007CC60);
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v101 = (&v91 - v3);
  v94 = sub_10006C0AC();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100003500(&qword_10008B658, &qword_10007CC68);
  __chkstk_darwin(v5 - 8);
  v105 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v103 = &v91 - v8;
  v9 = sub_100003500(&qword_10008A088, &qword_10007B988);
  __chkstk_darwin(v9 - 8);
  v97 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v91 - v12;
  v14 = sub_100003500(&qword_10008B660, &qword_10007CC70);
  __chkstk_darwin(v14);
  v100 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v96 = &v91 - v17;
  __chkstk_darwin(v18);
  v99 = &v91 - v19;
  __chkstk_darwin(v20);
  v22 = &v91 - v21;
  v23 = sub_100003500(&qword_10008B668, &qword_10007CC78);
  __chkstk_darwin(v23);
  v102 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v91 - v26;
  __chkstk_darwin(v28);
  v108 = &v91 - v29;
  sub_10003FFD8(v13);
  v30 = sub_10006C34C();
  v95 = type metadata accessor for ClockText(0);
  v31 = *(v95 + 24);
  v98 = a1;
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 24);
  v34 = *(a1 + v31 + 32);
  sub_10004F840((a1 + v31), v33);
  if ((*(v34 + 192))(v33, v34))
  {
    v35 = v32[3];
    v36 = v32[4];
    sub_10004F840(v32, v35);
    (*(v36 + 24))(v35, v36);
  }

  sub_10006BE4C();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1000586D4(v13, v22, &qword_10008A088, &qword_10007B988);
  v45 = &v22[*(v14 + 36)];
  *v45 = v30;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = sub_10006C35C();
  v47 = v32[3];
  v48 = v32[4];
  sub_10004F840(v32, v47);
  if (((*(v48 + 192))(v47, v48) & 1) == 0)
  {
    v49 = v32[3];
    v50 = v32[4];
    sub_10004F840(v32, v49);
    (*(v50 + 24))(v49, v50);
  }

  sub_10006BE4C();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  sub_1000586D4(v22, v27, &qword_10008B660, &qword_10007CC70);
  v59 = &v27[*(v23 + 36)];
  *v59 = v46;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  sub_1000586D4(v27, v108, &qword_10008B668, &qword_10007CC78);
  v60 = v32[3];
  v61 = v32[4];
  sub_10004F840(v32, v60);
  if ((*(v61 + 192))(v60, v61))
  {
    v63 = v97;
    v62 = v98;
    sub_100040800(v97);
    v64 = sub_10006C34C();
    v65 = v32[3];
    v66 = v32[4];
    sub_10004F840(v32, v65);
    (*(v66 + 24))(v65, v66);
    LOBYTE(v65) = *(v62 + *(v95 + 44) + 8);

    v67 = v103;
    if ((v65 & 1) == 0)
    {
      sub_10006CCCC();
      v68 = sub_10006C32C();
      sub_10006BDEC();

      v69 = v92;
      sub_10006C09C();
      swift_getAtKeyPath();

      (*(v93 + 8))(v69, v94);
    }

    sub_100067C8C();

    sub_10006BE4C();
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v78 = v96;
    sub_1000586D4(v63, v96, &qword_10008A088, &qword_10007B988);
    v79 = v78 + *(v14 + 36);
    *v79 = v64;
    *(v79 + 8) = v71;
    *(v79 + 16) = v73;
    *(v79 + 24) = v75;
    *(v79 + 32) = v77;
    *(v79 + 40) = 0;
    v80 = v99;
    sub_1000586D4(v78, v99, &qword_10008B660, &qword_10007CC70);
    v81 = v100;
    sub_100009264(v80, v100, &qword_10008B660, &qword_10007CC70);
    v82 = v101;
    *v101 = 0;
    *(v82 + 8) = 1;
    v83 = sub_100003500(&qword_10008B678, &qword_10007CC88);
    sub_100009264(v81, v82 + *(v83 + 48), &qword_10008B660, &qword_10007CC70);
    sub_100009204(v80, &qword_10008B660, &qword_10007CC70);
    sub_100009204(v81, &qword_10008B660, &qword_10007CC70);
    sub_1000586D4(v82, v67, &qword_10008B650, &qword_10007CC60);
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v67 = v103;
  }

  (*(v104 + 56))(v67, v84, 1, v106);
  v85 = v108;
  v86 = v102;
  sub_100009264(v108, v102, &qword_10008B668, &qword_10007CC78);
  v87 = v105;
  sub_100009264(v67, v105, &qword_10008B658, &qword_10007CC68);
  v88 = v107;
  sub_100009264(v86, v107, &qword_10008B668, &qword_10007CC78);
  v89 = sub_100003500(&qword_10008B670, &qword_10007CC80);
  sub_100009264(v87, v88 + *(v89 + 48), &qword_10008B658, &qword_10007CC68);
  sub_100009204(v67, &qword_10008B658, &qword_10007CC68);
  sub_100009204(v85, &qword_10008B668, &qword_10007CC78);
  sub_100009204(v87, &qword_10008B658, &qword_10007CC68);
  return sub_100009204(v86, &qword_10008B668, &qword_10007CC78);
}

uint64_t sub_1000418B4(uint64_t (*a1)(uint64_t))
{
  v3 = sub_10006C9EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ClockText(0);
  sub_10006C9CC();
  v8 = sub_10006C9AC();
  v9 = *(v4 + 8);
  v9(v6, v3);
  if (v8)
  {
    return sub_10006C78C();
  }

  sub_10006C9BC();
  v11 = sub_10006C9AC();
  v9(v6, v3);
  if ((v11 & 1) != 0 || !v1[*(v7 + 36)])
  {
    v12 = 0;
  }

  else
  {
    v12 = *v1;
  }

  return a1(v12);
}

uint64_t sub_100041A0C()
{
  v1 = sub_10006C1AC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for ClockText(0) + 24));
  v6 = v5[3];
  v7 = v5[4];
  sub_10004F840(v5, v6);
  sub_10003E3A4(v4);
  v8 = (*(v7 + 208))(v4, v6, v7);
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_100041B28(__n128 a1)
{
  if (*(v1 + *(type metadata accessor for ClockText(0) + 36)) == 1)
  {
    sub_10002AA90();
  }

  else
  {
    sub_10002AB94();
  }
}

uint64_t sub_100041BA4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_100041C6C(char a1)
{
  result = type metadata accessor for Clock(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_100041D50(char a1)
{
  result = type metadata accessor for Clock(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_100041DEC(char a1)
{
  result = type metadata accessor for Clock(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t sub_100041E64@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Clock(0) + 44);

  return sub_10004FDB0(v3, a1);
}

uint64_t sub_100041ECC(char a1)
{
  result = type metadata accessor for Clock(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_100041F68(char a1)
{
  result = type metadata accessor for Clock(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t sub_100041FE4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Clock(0) + 56);
  v4 = sub_10006C9EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100042060(uint64_t a1)
{
  v3 = *(type metadata accessor for Clock(0) + 56);
  v4 = sub_10006C9EC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_100042124()
{
  type metadata accessor for ClockWidgetEnvironmentObject(0);
  sub_10003DF94(&qword_100089220, type metadata accessor for ClockWidgetEnvironmentObject, &unk_10007D7D8);
  return sub_10006BE6C();
}

uint64_t sub_100042194@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v40 = sub_10006C19C();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003500(&qword_100088BE0, &qword_10007B3C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_10006C2CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003500(&qword_10008A090, &qword_10007B990);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v34 = sub_100003500(&qword_10008A098, &qword_10007B998);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v15 = &v34 - v14;
  v35 = sub_100003500(&qword_10008A0A0, &qword_10007B9A0);
  __chkstk_darwin(v35);
  v17 = &v34 - v16;
  *v13 = sub_10006C1BC();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v18 = sub_100003500(&qword_10008A0A8, &qword_10007B9A8);
  sub_1000426B0(v2, &v13[*(v18 + 44)]);
  sub_10006C93C();
  sub_10006BEDC();
  v19 = &v13[*(v11 + 36)];
  v20 = v44;
  *v19 = v43;
  *(v19 + 1) = v20;
  *(v19 + 2) = v45;
  sub_10006C2AC();
  v21 = sub_10004FDE8();
  sub_10006C6AC();
  (*(v8 + 8))(v10, v7);
  sub_100009204(v13, &qword_10008A090, &qword_10007B990);
  v22 = *(type metadata accessor for Clock(0) + 20);
  v23 = sub_10006BD3C();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v6, v2 + v22, v23);
  (*(v24 + 56))(v6, 0, 1, v23);
  v25 = sub_10006C4CC();
  v27 = v26;
  LOBYTE(v6) = v28;
  v41 = v11;
  v42 = v21;
  swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_10006C66C();
  sub_1000070DC(v25, v27, v6 & 1);

  (*(v36 + 8))(v15, v29);
  v30 = v37;
  sub_10006C17C();
  v31 = v39;
  sub_10006BF2C();
  (*(v38 + 8))(v30, v40);
  sub_100009204(v17, &qword_10008A0A0, &qword_10007B9A0);
  result = sub_100003500(&qword_10008A0C8, &qword_10007B9B8);
  v33 = v31 + *(result + 36);
  *v33 = 0;
  *(v33 + 8) = 0;
  return result;
}

__n128 sub_1000426B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003500(&qword_10008B528, &qword_10007CB58);
  __chkstk_darwin(v4 - 8);
  v6 = (v18 - v5);
  *v6 = sub_10006C93C();
  v6[1] = v7;
  v8 = sub_100003500(&qword_10008B530, &qword_10007CB60);
  sub_1000428DC(a1, v6 + *(v8 + 44));
  v9 = (a1 + *(type metadata accessor for Clock(0) + 24));
  v10 = v9[3];
  v11 = v9[4];
  sub_10004F840(v9, v10);
  (*(v11 + 24))(v10, v11);
  v12 = v9[3];
  v13 = v9[4];
  sub_10004F840(v9, v12);
  (*(v13 + 24))(v12, v13);
  sub_10006C93C();
  sub_10006BF6C();
  sub_1000586D4(v6, a2, &qword_10008B528, &qword_10007CB58);
  v14 = a2 + *(sub_100003500(&qword_10008B538, &qword_10007CB68) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_1000428DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v307 = a2;
  v3 = sub_100003500(&qword_10008B540, &qword_10007CB70);
  v306 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v243 - v4;
  v275 = sub_100003500(&qword_10008B548, &qword_10007CB78);
  v250 = *(v275 - 8);
  __chkstk_darwin(v275);
  v249 = &v243 - v6;
  v298 = sub_10006C9EC();
  v289 = *(v298 - 8);
  __chkstk_darwin(v298);
  v248 = &v243 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_100003500(&qword_10008B550, &qword_10007CB80);
  __chkstk_darwin(v273);
  v274 = &v243 - v8;
  v269 = sub_10006BD3C();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v266 = &v243 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = sub_10006C0AC();
  v252 = *(v253 - 8);
  __chkstk_darwin(v253);
  v251 = &v243 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v281 = sub_100003500(&qword_10008A100, &qword_10007B9F8);
  __chkstk_darwin(v281);
  v12 = &v243 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v265 = &v243 - v14;
  v272 = sub_100003500(&qword_10008B558, &qword_10007CB88);
  __chkstk_darwin(v272);
  v264 = &v243 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v267 = &v243 - v17;
  v296 = sub_100003500(&qword_10008B560, &qword_10007CB90);
  v295 = *(v296 - 8);
  __chkstk_darwin(v296);
  v290 = &v243 - v18;
  v19 = sub_100003500(&qword_10008B568, &qword_10007CB98);
  __chkstk_darwin(v19 - 8);
  v297 = &v243 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v305 = &v243 - v22;
  v294 = sub_100003500(&qword_10008B570, &qword_10007CBA0);
  __chkstk_darwin(v294);
  v278 = &v243 - v23;
  v258 = sub_100003500(&qword_10008A0F0, &qword_10007B9E8);
  __chkstk_darwin(v258);
  v259 = &v243 - v24;
  v263 = sub_100003500(&qword_10008B578, &qword_10007CBA8);
  v288 = *(v263 - 8);
  __chkstk_darwin(v263);
  v261 = &v243 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v277 = &v243 - v27;
  v280 = sub_10006CADC();
  v279 = *(v280 - 8);
  __chkstk_darwin(v280);
  v262 = (&v243 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v29);
  v257 = &v243 - v30;
  __chkstk_darwin(v31);
  v271 = &v243 - v32;
  v254 = sub_100003500(&qword_10008A0D0, &qword_10007B9C8);
  __chkstk_darwin(v254);
  v255 = &v243 - v33;
  v260 = sub_100003500(&qword_10008B580, &qword_10007CBB0);
  v276 = *(v260 - 8);
  __chkstk_darwin(v260);
  v256 = &v243 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v287 = &v243 - v36;
  v37 = sub_100003500(&qword_1000887E8, &qword_1000795A0);
  __chkstk_darwin(v37 - 8);
  v39 = &v243 - v38;
  v291 = sub_100003500(&qword_10008B588, &qword_10007CBB8);
  __chkstk_darwin(v291);
  v293 = &v243 - v40;
  v283 = sub_100003500(&qword_10008B590, &qword_10007CBC0);
  __chkstk_darwin(v283);
  v284 = &v243 - v41;
  v292 = sub_100003500(&qword_10008B598, &qword_10007CBC8);
  __chkstk_darwin(v292);
  v286 = &v243 - v42;
  v282 = sub_100003500(&qword_10008B5A0, &qword_10007CBD0);
  __chkstk_darwin(v282);
  v285 = &v243 - v43;
  v44 = sub_100003500(&qword_10008A0F8, &qword_10007B9F0);
  __chkstk_darwin(v44 - 8);
  v46 = &v243 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v299 = (&v243 - v48);
  v49 = sub_100003500(&qword_10008A0E8, &qword_10007B9E0);
  __chkstk_darwin(v49 - 8);
  v51 = &v243 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v300 = &v243 - v53;
  v54 = sub_100003500(&qword_10008B5A8, &qword_10007CBD8);
  __chkstk_darwin(v54 - 8);
  v304 = &v243 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v303 = &v243 - v57;
  v302 = sub_10006BB7C();
  v301 = *(v302 - 8);
  __chkstk_darwin(v302);
  v59 = &v243 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v62 = &v243 - v61;
  v63 = type metadata accessor for Clock(0);
  if ((*(a1 + *(v63 + 36)) & 1) == 0)
  {
    v67 = a1;
    v244 = v12;
    v246 = v5;
    v247 = v3;
    v68 = (a1 + *(v63 + 24));
    v69 = v68[3];
    v70 = v68[4];
    v308 = v63;
    v245 = v68;
    sub_10004F840(v68, v69);
    v71 = (*(v70 + 24))(v69, v70) * 0.5;
    v72 = a1 + v308[11];
    v73 = *(v72 + 8);
    v74 = v71 - v71 * *v72;
    v75 = v71 - v71 * *(v72 + 16);
    sub_100044F48(v62);
    v77 = *(a1 + v308[7]);
    v270 = v62;
    if (v77)
    {
      v78 = v300;
      sub_100045364(v62, v300, v76);
      v79 = v299;
      sub_100045840(v62, v299);
      sub_100009264(v78, v51, &qword_10008A0E8, &qword_10007B9E0);
      sub_100009264(v79, v46, &qword_10008A0F8, &qword_10007B9F0);
      v80 = v285;
      sub_100009264(v51, v285, &qword_10008A0E8, &qword_10007B9E0);
      v81 = sub_100003500(&qword_10008B5F0, &qword_10007CC00);
      sub_100009264(v46, v80 + *(v81 + 48), &qword_10008A0F8, &qword_10007B9F0);
      sub_100009204(v46, &qword_10008A0F8, &qword_10007B9F0);
      sub_100009204(v51, &qword_10008A0E8, &qword_10007B9E0);
      sub_100009264(v80, v284, &qword_10008B5A0, &qword_10007CBD0);
      swift_storeEnumTagMultiPayload();
      sub_100011308(&qword_10008B5C0, &qword_10008B5A0, &qword_10007CBD0, &protocol conformance descriptor for TupleView<A>);
      v82 = v286;
      sub_10006C26C();
      sub_100009264(v82, v293, &qword_10008B598, &qword_10007CBC8);
      swift_storeEnumTagMultiPayload();
      sub_100058424();
      sub_100011308(&qword_10008B5C8, &qword_10008B570, &qword_10007CBA0, &protocol conformance descriptor for TupleView<A>);
      sub_10006C26C();
      sub_100009204(v82, &qword_10008B598, &qword_10007CBC8);
      sub_100009204(v80, &qword_10008B5A0, &qword_10007CBD0);
      sub_100009204(v299, &qword_10008A0F8, &qword_10007B9F0);
      sub_100009204(v300, &qword_10008A0E8, &qword_10007B9E0);
      v83 = sub_10004610C();
      _ZF = *(a1 + v308[10]) == 1;
      v85 = a1;
      v300 = v83;
      if (!_ZF)
      {
        v170 = v305;
LABEL_22:
        (*(v295 + 56))(v170, 1, 1, v296);
        v185 = 0;
        LODWORD(v308) = 0;
        v186 = 0.0;
LABEL_39:
        v229 = sub_100046884();
        v230 = *sub_10000E6F4();
        v231 = v303;
        v232 = v304;
        sub_100009264(v303, v304, &qword_10008B5A8, &qword_10007CBD8);
        v233 = v170;
        v234 = v297;
        sub_100009264(v233, v297, &qword_10008B568, &qword_10007CB98);
        v235 = v232;
        v236 = v246;
        sub_100009264(v235, v246, &qword_10008B5A8, &qword_10007CBD8);
        v237 = sub_100003500(&qword_10008B5D0, &qword_10007CBE8);
        v238 = v236 + v237[12];
        *v238 = v74;
        *(v238 + 8) = v300;
        *(v238 + 16) = 256;
        sub_100009264(v234, v236 + v237[16], &qword_10008B568, &qword_10007CB98);
        v239 = v236 + v237[20];
        *v239 = v186;
        *(v239 + 8) = v185;
        *(v239 + 16) = v308;
        v240 = v236 + v237[24];
        *&v311 = v75;
        *(&v311 + 1) = v229;
        LOWORD(v312) = 256;
        *(&v312 + 1) = v230;
        v313 = 0x3FF0000000000000uLL;
        v314 = 0;

        sub_100009264(&v311, &v315, &qword_10008B5D8, &qword_10007CBF0);

        v241 = v312;
        *v240 = v311;
        *(v240 + 16) = v241;
        *(v240 + 32) = v313;
        *(v240 + 48) = v314;
        sub_100009204(v305, &qword_10008B568, &qword_10007CB98);
        sub_100009204(v231, &qword_10008B5A8, &qword_10007CBD8);
        (*(v301 + 8))(v270, v302);
        v315 = v75;
        v316 = v229;
        v317 = 256;
        v318 = v309;
        v319 = v310;
        v320 = v230;
        v321 = 0x3FF0000000000000;
        v322 = 0;
        v323 = 0;
        sub_100009204(&v315, &qword_10008B5D8, &qword_10007CBF0);

        sub_100009204(v234, &qword_10008B568, &qword_10007CB98);

        sub_100009204(v304, &qword_10008B5A8, &qword_10007CBD8);
        v242 = v307;
        sub_1000586D4(v236, v307, &qword_10008B540, &qword_10007CB70);
        return (*(v306 + 56))(v242, 0, 1, v247);
      }

      v86 = v308;
      v87 = sub_10000F268(1);
      v88 = *(v85 + v86[15] + 8);

      if ((v88 & 1) == 0)
      {
        sub_10006CCCC();
        v89 = sub_10006C32C();
        sub_10006BDEC();

        v90 = v251;
        sub_10006C09C();
        swift_getAtKeyPath();

        (*(v252 + 8))(v90, v253);
      }

      v91 = sub_10006763C();

      if (v91 == 3)
      {
        v92 = 0.93;
      }

      else
      {
        v92 = dbl_10007B4F0[v91 == 4];
      }

      v93 = v245;
      v94 = v245[3];
      v95 = v245[4];
      sub_10004F840(v245, v94);
      v96 = (*(v95 + 24))(v94, v95);
      v97 = v93[3];
      v98 = v93[4];
      sub_10004F840(v93, v97);
      v99 = (*(v98 + 96))(v97, v98);
      v100 = v308[14];
      v101 = v265;
      v102 = &v265[*(v281 + 36)];
      v103 = type metadata accessor for ClockWidgetAccentableOpacity(0);
      (*(v289 + 16))(&v102[*(v103 + 24)], v85 + v100, v298);
      __asm { FMOV            V0.2D, #1.0 }

      *v102 = _Q0;
      *v101 = 1;
      *(v101 + 8) = v87;
      *(v101 + 16) = v99;
      *(v101 + 24) = v92;
      *(v101 + 32) = v96;
      *(v101 + 40) = 1;
      *(v101 + 48) = 0x3FC3333333333333;
      v108 = v266;
      sub_10006BD2C();
      v109 = enum case for _ClockHandRotationEffect.Period.secondHand(_:);
      v110 = v279;
      v111 = v257;
      v112 = v280;
      (*(v279 + 104))(v257, enum case for _ClockHandRotationEffect.Period.secondHand(_:), v280);
      v113 = v262;
      (*(v110 + 32))(v262, v111, v112);
      v114 = (*(v110 + 88))(v113, v112);
      v115 = v290;
      if (v114 == enum case for _ClockHandRotationEffect.Period.custom(_:))
      {
        (*(v110 + 96))(v113, v112);
        v116 = *v113;
        v170 = v305;
      }

      else
      {
        v170 = v305;
        if (v114 == enum case for _ClockHandRotationEffect.Period.hourHand(_:))
        {
          v116 = 43200.0;
        }

        else if (v114 == enum case for _ClockHandRotationEffect.Period.minuteHand(_:))
        {
          v116 = 3600.0;
        }

        else if (v114 == v109)
        {
          v116 = 60.0;
        }

        else
        {
          (*(v110 + 8))(v113, v112);
          v116 = 0.0;
        }
      }

      v215 = sub_10006BCFC();
      sub_10006B91C();
      v217 = v216;
      (*(v268 + 8))(v108, v269);
      v218 = fmod(v217 + v215, v116);
      v219 = (v218 + v218) * 3.14159265 / v116;
      sub_10006C96C();
      v221 = v220;
      v223 = v222;
      v224 = v264;
      sub_1000586D4(v101, v264, &qword_10008A100, &qword_10007B9F8);
      v225 = v224 + *(v272 + 36);
      *v225 = v219;
      *(v225 + 8) = v221;
      *(v225 + 16) = v223;
      v226 = v267;
      sub_1000586D4(v224, v267, &qword_10008B558, &qword_10007CB88);
      sub_100009264(v226, v274, &qword_10008B558, &qword_10007CB88);
      swift_storeEnumTagMultiPayload();
      sub_1000584D4();
      v227 = sub_100056B74();
      v315 = *&v281;
      v316 = v227;
      swift_getOpaqueTypeConformance2();
      v181 = v115;
      sub_10006C26C();
      sub_100009204(v226, &qword_10008B558, &qword_10007CB88);
    }

    else
    {
      sub_100009264(a1 + v308[8], v39, &qword_1000887E8, &qword_1000795A0);
      v117 = v301;
      v118 = v302;
      if ((*(v301 + 48))(v39, 1, v302) == 1)
      {
        sub_100009204(v39, &qword_1000887E8, &qword_1000795A0);
        v119 = v67;
        v120 = sub_100045C74();
        v121 = v245;
        v122 = v245[3];
        v123 = v245[4];
        sub_10004F840(v245, v122);
        v124 = (*(v123 + 24))(v122, v123);
        v125 = v121[3];
        v126 = v121[4];
        sub_10004F840(v121, v125);
        v127 = (*(v126 + 72))(v125, v126);
        v128 = *(v72 + 40);
        LODWORD(v300) = v128;
        v129 = *(v72 + 56);
        v130 = sub_100003500(&qword_10008A0D8, &qword_10007B9D0);
        v131 = v255;
        v132 = &v255[*(v130 + 36)];
        v133 = *(sub_10006BF5C() + 20);
        v134 = enum case for RoundedCornerStyle.continuous(_:);
        v135 = sub_10006C16C();
        (*(*(v135 - 8) + 104))(&v132[v133], v134, v135);
        __asm { FMOV            V0.2D, #2.0 }

        *v132 = _Q0;
        *&v132[*(sub_100003500(&qword_10008A0E0, &qword_10007B9D8) + 36)] = 256;
        *v131 = 0;
        *(v131 + 8) = v120;
        *(v131 + 16) = v127;
        *(v131 + 24) = 0x3FE0B020C49BA5E3;
        *(v131 + 32) = v124;
        *(v131 + 40) = v128;
        *(v131 + 48) = v129;
        v137 = v308;
        v138 = v308[14];
        v283 = v138;
        v139 = (v131 + *(v254 + 36));
        v284 = type metadata accessor for ClockWidgetAccentableForegroundColor(0);
        v140 = *(v284 + 24);
        v141 = *(v289 + 16);
        v269 = v289 + 16;
        v282 = v141;
        v141(v139 + v140, v119 + v138, v298);
        *v139 = v120;
        v139[1] = 0x3FF0000000000000;
        v142 = v279;
        v143 = *(v279 + 104);
        v286 = (v279 + 104);
        v299 = v143;
        v144 = v271;
        v145 = v280;
        (v143)(v271, enum case for _ClockHandRotationEffect.Period.hourHand(_:), v280);
        v285 = v137[5];

        sub_10006C96C();
        sub_100056854();
        sub_10006C5FC();
        v146 = *(v142 + 8);
        v146(v144, v145);
        sub_100009204(v131, &qword_10008A0D0, &qword_10007B9C8);
        v147 = sub_100045C74();
        v148 = v121[3];
        v149 = v121[4];
        sub_10004F840(v121, v148);
        v150 = (*(v149 + 24))(v148, v149);
        v151 = v121[3];
        v152 = v121[4];
        sub_10004F840(v121, v151);
        v153 = (*(v152 + 72))(v151, v152);
        v154 = v259;
        v155 = &v259[*(v258 + 36)];
        v156 = v155 + *(v284 + 24);
        v243 = v119;
        v282(v156, v119 + v283, v298);
        *v155 = v147;
        v155[1] = 0x3FF0000000000000;
        *v154 = 0;
        *(v154 + 8) = v147;
        *(v154 + 16) = v153;
        *(v154 + 24) = 0x3FECCCCCCCCCCCCDLL;
        *(v154 + 32) = v150;
        *(v154 + 40) = v300;
        *(v154 + 48) = v129;
        (v299)(v144, enum case for _ClockHandRotationEffect.Period.minuteHand(_:), v145);

        sub_10006C96C();
        sub_100056AAC();
        v157 = v277;
        sub_10006C5FC();
        v146(v144, v145);
        sub_100009204(v154, &qword_10008A0F0, &qword_10007B9E8);
        v158 = *(v276 + 16);
        v159 = v256;
        v160 = v260;
        v158(v256, v287, v260);
        v161 = v288;
        v162 = *(v288 + 16);
        v163 = v261;
        v164 = v263;
        v162(v261, v157, v263);
        v158(v278, v159, v160);
        v165 = sub_100003500(&qword_10008B5B0, &qword_10007CBE0);
        v166 = v278;
        v162(&v278[*(v165 + 48)], v163, v164);
        v167 = *(v161 + 8);
        v288 = v161 + 8;
        v167(v163, v164);
        v168 = *(v276 + 8);
        v168(v159, v160);
        sub_100009264(v166, v293, &qword_10008B570, &qword_10007CBA0);
        swift_storeEnumTagMultiPayload();
        sub_100058424();
        sub_100011308(&qword_10008B5C8, &qword_10008B570, &qword_10007CBA0, &protocol conformance descriptor for TupleView<A>);
        sub_10006C26C();
        sub_100009204(v166, &qword_10008B570, &qword_10007CBA0);
        v167(v277, v164);
        v168(v287, v160);
        v169 = v243;
      }

      else
      {
        v171.n128_f64[0] = (*(v117 + 32))(v59, v39, v118);
        v172 = v300;
        v173 = v67;
        sub_100045364(v59, v300, v171);
        v174 = v299;
        sub_100045840(v59, v299);
        sub_100009264(v172, v51, &qword_10008A0E8, &qword_10007B9E0);
        sub_100009264(v174, v46, &qword_10008A0F8, &qword_10007B9F0);
        v175 = v285;
        sub_100009264(v51, v285, &qword_10008A0E8, &qword_10007B9E0);
        v176 = sub_100003500(&qword_10008B5F0, &qword_10007CC00);
        sub_100009264(v46, v175 + *(v176 + 48), &qword_10008A0F8, &qword_10007B9F0);
        sub_100009204(v46, &qword_10008A0F8, &qword_10007B9F0);
        sub_100009204(v51, &qword_10008A0E8, &qword_10007B9E0);
        sub_100009264(v175, v284, &qword_10008B5A0, &qword_10007CBD0);
        swift_storeEnumTagMultiPayload();
        sub_100011308(&qword_10008B5C0, &qword_10008B5A0, &qword_10007CBD0, &protocol conformance descriptor for TupleView<A>);
        v177 = v286;
        sub_10006C26C();
        sub_100009264(v177, v293, &qword_10008B598, &qword_10007CBC8);
        swift_storeEnumTagMultiPayload();
        sub_100058424();
        sub_100011308(&qword_10008B5C8, &qword_10008B570, &qword_10007CBA0, &protocol conformance descriptor for TupleView<A>);
        sub_10006C26C();
        sub_100009204(v177, &qword_10008B598, &qword_10007CBC8);
        sub_100009204(v175, &qword_10008B5A0, &qword_10007CBD0);
        sub_100009204(v174, &qword_10008A0F8, &qword_10007B9F0);
        sub_100009204(v300, &qword_10008A0E8, &qword_10007B9E0);
        (*(v301 + 8))(v59, v302);
        v169 = v173;
      }

      v178 = sub_10004610C();
      v179 = v308;
      v180 = *(v169 + v308[10]);
      v170 = v305;
      v181 = v290;
      v300 = v178;
      if ((v180 & 1) == 0)
      {
        goto LABEL_22;
      }

      if (*(v169 + v308[13]) == 1)
      {
        v182 = v248;
        sub_10006C9BC();
        v183 = sub_10006C9AC();
        (*(v289 + 8))(v182, v298);
        v179 = v308;
        if (v183)
        {
          v184 = 1;
LABEL_38:
          v186 = v71 - v71 * v73;
          v228 = sub_100003500(&qword_10008B5E8, &qword_10007CBF8);
          (*(*(v228 - 8) + 56))(v181, v184, 1, v228);
          sub_1000586D4(v181, v170, &qword_10008B560, &qword_10007CB90);
          (*(v295 + 56))(v170, 0, 1, v296);
          v185 = sub_10004672C();

          LODWORD(v308) = 256;
          goto LABEL_39;
        }
      }

      v187 = v179;
      v188 = sub_10004672C();
      LOBYTE(v187) = *(v169 + v187[15] + 8);

      if ((v187 & 1) == 0)
      {
        sub_10006CCCC();
        v189 = sub_10006C32C();
        sub_10006BDEC();

        v190 = v251;
        sub_10006C09C();
        swift_getAtKeyPath();

        (*(v252 + 8))(v190, v253);
      }

      v191 = sub_10006763C();

      if (v191 == 3)
      {
        v192 = 0.93;
      }

      else
      {
        v192 = dbl_10007B4F0[v191 == 4];
      }

      v193 = v245;
      v194 = v245[3];
      v195 = v245[4];
      sub_10004F840(v245, v194);
      v196 = (*(v195 + 24))(v194, v195);
      v197 = v193[3];
      v198 = v193[4];
      sub_10004F840(v193, v197);
      v199 = (*(v198 + 96))(v197, v198);
      v200 = v308[14];
      v201 = v281;
      v202 = v244;
      v203 = &v244[*(v281 + 36)];
      v204 = type metadata accessor for ClockWidgetAccentableOpacity(0);
      (*(v289 + 16))(&v203[*(v204 + 24)], v169 + v200, v298);
      __asm { FMOV            V0.2D, #1.0 }

      *v203 = _Q0;
      *v202 = 1;
      *(v202 + 8) = v188;
      *(v202 + 16) = v199;
      *(v202 + 24) = v192;
      *(v202 + 32) = v196;
      *(v202 + 40) = 1;
      *(v202 + 48) = 0x3FC3333333333333;
      v206 = v279;
      v207 = v271;
      v208 = v280;
      (*(v279 + 104))(v271, enum case for _ClockHandRotationEffect.Period.secondHand(_:), v280);
      sub_10006C96C();
      v209 = sub_100056B74();
      v210 = v249;
      sub_10006C5FC();
      (*(v206 + 8))(v207, v208);
      sub_100009204(v202, &qword_10008A100, &qword_10007B9F8);
      v211 = v250;
      v212 = v275;
      (*(v250 + 16))(v274, v210, v275);
      swift_storeEnumTagMultiPayload();
      sub_1000584D4();
      v315 = *&v201;
      v316 = v209;
      swift_getOpaqueTypeConformance2();
      v213 = v290;
      sub_10006C26C();
      v214 = v210;
      v181 = v213;
      (*(v211 + 8))(v214, v212);
    }

    v184 = 0;
    goto LABEL_38;
  }

  v64 = *(v306 + 56);
  v65 = v307;

  return v64(v65, 1, 1, v3);
}