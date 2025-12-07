Swift::Int sub_100452EB8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a1 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = a1 + 40;
    do
    {

      String.hash(into:)();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_10015AF7C(v7, a2);
  return Hasher._finalize()();
}

uint64_t sub_100452F5C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100453928(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

void sub_100452FAC(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  Hasher._combine(_:)(*(*v1 + 16));
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {

      String.hash(into:)();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  sub_10015AF7C(a1, v3);
}

Swift::Int sub_100453040(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v3 + 16));
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 40;
    do
    {

      String.hash(into:)();

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  sub_10015AF7C(v7, v2);
  return Hasher._finalize()();
}

uint64_t sub_1004530DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10014DEB0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_10014D57C(v2, v3);
}

uint64_t sub_100453138(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v3;
  if ((result & 1) == 0)
  {
    result = sub_1001705CC();
    *v4 = v9;
  }

  if (a2 < 0 || 1 << *(v9 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v9 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v9 + 36) == a3)
  {
    v10 = *(*(v9 + 48) + 16 * a2);
    *a1 = *(*(v9 + 56) + 8 * a2);
    sub_10015D658(a2, v9);
    *v4 = v9;
    return v10;
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_100453210(void *a1)
{
  v3 = sub_10000BA08(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_10000BA08(v6, v6[3]);
    sub_100007224(&qword_1008449A8, &qword_1006E4AD8);
    sub_10045338C(&qword_1008449B0, sub_100453338, &protocol witness table for String, &protocol conformance descriptor for <> [A : B]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5;
    sub_10000BB78(v6);
  }

  sub_10000BB78(a1);
  return v3;
}

unint64_t sub_100453338()
{
  result = qword_1008449B8;
  if (!qword_1008449B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449B8);
  }

  return result;
}

uint64_t sub_10045338C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_1008449A8, &qword_1006E4AD8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100453410()
{
  result = qword_1008449C8;
  if (!qword_1008449C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449C8);
  }

  return result;
}

unint64_t sub_100453478()
{
  result = qword_1008449D0;
  if (!qword_1008449D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449D0);
  }

  return result;
}

uint64_t sub_1004534CC(uint64_t (*a1)(unint64_t, char *, uint64_t), char a2, void *a3)
{
  v54 = a3;
  v6 = type metadata accessor for Locale.Region();
  v47 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  result = __chkstk_darwin(v9);
  v53 = &v45 - v12;
  v13 = *(a1 + 2);
  if (!v13)
  {
    return result;
  }

  v14 = *(result + 48);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v50 = *(v11 + 72);
  v45 = v15;
  v16 = v53;
  sub_100453C04(a1 + v15, v53);
  v17 = *(v47 + 32);
  v51 = (v47 + 32);
  v52 = v6;
  (v17)(v8, v16, v6);
  v49 = v14;
  v18 = *(v16 + v14);
  v19 = *v54;
  v21 = sub_10003ADF8(v8);
  v22 = v19[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
    goto LABEL_23;
  }

  LOBYTE(v3) = v20;
  v25 = v19[3];
  v46 = v18;
  if (v25 >= v24)
  {
    v18 = v51;
    if ((a2 & 1) == 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
LABEL_7:
      v28 = *v54;
      v48 = (v18 - 3);
      if (v3)
      {
        v3 = v52;
        (*(v18 - 3))(v8, v52);
        *(v28[7] + 8 * v21) = v46;

        v17 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v3 = v52;
        result = (v17)(v28[6] + *(v47 + 72) * v21, v8, v52);
        *(v28[7] + 8 * v21) = v46;
        v29 = v28[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_24;
        }

        v28[2] = v31;
        v17 = v13 - 1;
        if (v13 == 1)
        {
          return result;
        }
      }

      v13 = a1 + v50 + v45;
      while (1)
      {
        v32 = v53;
        sub_100453C04(v13, v53);
        a1 = *v18;
        (*v18)(v8, v32, v3);
        v33 = *(v32 + v49);
        v34 = *v54;
        v21 = sub_10003ADF8(v8);
        v36 = v34[2];
        v37 = (v35 & 1) == 0;
        v38 = v36 + v37;
        if (__OFADD__(v36, v37))
        {
          break;
        }

        v39 = v35;
        if (v34[3] < v38)
        {
          sub_10016B0F4(v38, 1);
          v40 = sub_10003ADF8(v8);
          if ((v39 & 1) != (v41 & 1))
          {
            goto LABEL_26;
          }

          v21 = v40;
        }

        v42 = *v54;
        if (v39)
        {
          v3 = v52;
          (*v48)(v8, v52);
          *(v42[7] + 8 * v21) = v33;

          v18 = v51;
        }

        else
        {
          v42[(v21 >> 6) + 8] |= 1 << v21;
          v18 = v51;
          v3 = v52;
          result = a1(v42[6] + *(v47 + 72) * v21, v8, v52);
          *(v42[7] + 8 * v21) = v33;
          v43 = v42[2];
          v30 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v30)
          {
            goto LABEL_24;
          }

          v42[2] = v44;
        }

        v13 += v50;
        if (!--v17)
        {
          return result;
        }
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      sub_1001721E8();
    }
  }

  sub_10016B0F4(v24, a2 & 1);
  v26 = sub_10003ADF8(v8);
  if ((v3 & 1) == (v27 & 1))
  {
    v21 = v26;
    v18 = v51;
    goto LABEL_7;
  }

LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100453928(void *a1)
{
  v3 = a1[3];
  sub_10000BA08(a1, v3);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    goto LABEL_7;
  }

  v3 = v12;
  sub_10000BA08(v11, v12);
  sub_100007224(&qword_10083B1F8, &unk_1006E4BD0);
  sub_100453B58();
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  if (!*(v10 + 16) || (v4 = sub_10003ADCC(0x746C7561666564, 0xE700000000000000), (v5 & 1) == 0))
  {

    type metadata accessor for DecodingError();
    swift_allocError();
    static DecodingError.dataCorruptedError(in:debugDescription:)();
    swift_willThrow();
    sub_10000BB78(v11);
LABEL_7:
    sub_10000BB78(a1);
    return v3;
  }

  sub_100453138(&v9, v4, *(v10 + 36));

  v3 = v9;
  v6 = sub_100452498(v10);
  if (*(v6 + 2))
  {
    sub_100007224(&qword_10083C248, &qword_1006DA840);
    v7 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v7 = &_swiftEmptyDictionarySingleton;
  }

  v9 = v7;
  sub_1004534CC(v6, 1, &v9);

  sub_10000BB78(v11);
  sub_10000BB78(a1);
  return v3;
}

unint64_t sub_100453B58()
{
  result = qword_1008449D8;
  if (!qword_1008449D8)
  {
    sub_10000B870(&qword_10083B1F8, &unk_1006E4BD0);
    sub_1000C3C40(&qword_100839860, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449D8);
  }

  return result;
}

uint64_t sub_100453C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100453C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083C258, &qword_1006DA850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100453CE4(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100453D4C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v8 = *(result + 32);
  v7 = *(result + 40);
  v9 = *(result + 48);
  v10 = *a3;

  result = sub_10003ADCC(v8, v7);
  v12 = v10[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v10[3] < v15)
  {
    sub_100167CF4(v15, v5 & 1);
    result = sub_10003ADCC(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v18 = *a3;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_11:
    v18[(result >> 6) + 8] |= 1 << result;
    v21 = (v18[6] + 16 * result);
    *v21 = v8;
    v21[1] = v7;
    *(v18[7] + 8 * result) = v9;
    v22 = v18[2];
    v14 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v14)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v18[2] = v23;
    v16 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v20 = result;
  sub_1001705CC();
  result = v20;
  v18 = *a3;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v19 = result;

  *(v18[7] + 8 * v19) = v9;

  v16 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 72);
    v3 = 1;
    while (1)
    {
      v7 = *(v5 - 2);
      v9 = *(v5 - 1);
      v6 = *v5;
      v25 = *a3;

      result = sub_10003ADCC(v7, v9);
      v27 = v25[2];
      v28 = (v26 & 1) == 0;
      v14 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v26;
      if (v25[3] < v29)
      {
        sub_100167CF4(v29, 1);
        result = sub_10003ADCC(v7, v9);
        if ((v8 & 1) != (v30 & 1))
        {
          goto LABEL_5;
        }
      }

      v31 = *a3;
      if (v8)
      {
        v24 = result;

        *(v31[7] + 8 * v24) = v6;
      }

      else
      {
        v31[(result >> 6) + 8] |= 1 << result;
        v32 = (v31[6] + 16 * result);
        *v32 = v7;
        v32[1] = v9;
        *(v31[7] + 8 * result) = v6;
        v33 = v31[2];
        v14 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v14)
        {
          goto LABEL_24;
        }

        v31[2] = v34;
      }

      v5 += 3;
      if (!--v16)
      {
        return result;
      }
    }
  }

  return result;
}

unint64_t sub_100453FC4()
{
  result = qword_1008449E0;
  if (!qword_1008449E0)
  {
    sub_10000B870(&qword_10083B1F8, &unk_1006E4BD0);
    sub_1000C3C40(&qword_100835690, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008449E0);
  }

  return result;
}

uint64_t sub_100454080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100027B9C;

  return sub_1004549AC(a1, a2, a3, a4);
}

uint64_t sub_10045414C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10045420C, 0, 0);
}

uint64_t sub_10045420C(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentProviderOptInAlertPresenter user has opted in allowing %s to become an authorized document provider", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  type metadata accessor for ExtensionPointManager();
  swift_allocObject();
  v1[7] = ExtensionPointManager.init(extensionPointIdentifier:)();
  v12 = swift_task_alloc();
  v1[8] = v12;
  *v12 = v1;
  v12[1] = sub_1004543FC;
  v14 = v1[2];
  v13 = v1[3];

  return ExtensionPointManager.setEnablement(for:to:)(v14, v13, 1);
}

uint64_t sub_1004543FC()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_10045566C;
  }

  else
  {
    v2 = sub_100455668;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100454510(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Logger();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1004545D0, 0, 0);
}

uint64_t sub_1004545D0(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  if (v4)
  {
    v9 = v1[2];
    v8 = v1[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentProviderOptInAlertPresenter user has opted out of allowing %s to become an authorized document provider", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  static MobileDocumentProvider.extensionPointIdentifier.getter();
  type metadata accessor for ExtensionPointManager();
  swift_allocObject();
  v1[7] = ExtensionPointManager.init(extensionPointIdentifier:)();
  v12 = swift_task_alloc();
  v1[8] = v12;
  *v12 = v1;
  v12[1] = sub_1004547C0;
  v14 = v1[2];
  v13 = v1[3];

  return ExtensionPointManager.setEnablement(for:to:)(v14, v13, 0);
}

uint64_t sub_1004547C0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_100454940;
  }

  else
  {
    v2 = sub_1004548D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004548D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100454940()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004549AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for AlertPresenter();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = type metadata accessor for AlertPresentationOutcome();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for AlertConfiguration();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_100454B90, 0, 0);
}

uint64_t sub_100454B90()
{
  static AlertConfiguration.webPresentmentProviderOptInAlertDisplayConfiguration(appName:)();
  AlertPresenter.init()();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_100454C48;
  v2 = v0[18];
  v3 = v0[15];

  return AlertPresenter.present(with:)(v3, v2);
}

uint64_t sub_100454C48()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  *(*v1 + 160) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1004555A8;
  }

  else
  {
    v5 = sub_100454DB8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100454DB8()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  (*(v3 + 16))(v1, v0[15], v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == enum case for AlertPresentationOutcome.defaultButtonTapped(_:))
  {
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1004550E4;
    v7 = v0[2];
    v6 = v0[3];

    return sub_10045414C(v7, v6);
  }

  else if (v4 == enum case for AlertPresentationOutcome.alternateButtonTapped(_:))
  {
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_1004553B4;
    v11 = v0[2];
    v10 = v0[3];

    return sub_100454510(v11, v10);
  }

  else
  {
    v12 = v0[17];
    v18 = v0[16];
    v19 = v0[18];
    v17 = v0[15];
    v13 = v0[12];
    v14 = v0[13];
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v15 = *(v14 + 8);
    v15(v17, v13);
    (*(v12 + 8))(v19, v18);
    v15(v0[14], v0[12]);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_1004550E4()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1004552D4;
  }

  else
  {
    v2 = sub_1004551F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004551F8()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[13] + 8))(v0[15], v0[12]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004552D4()
{
  v1 = v0[17];
  (*(v0[13] + 8))(v0[15], v0[12]);
  (*(v1 + 8))(v0[18], v0[16]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004553B4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1004554C8;
  }

  else
  {
    v2 = sub_100455664;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004554C8()
{
  v1 = v0[17];
  (*(v0[13] + 8))(v0[15], v0[12]);
  (*(v1 + 8))(v0[18], v0[16]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1004555A8()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100455670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v8 - 8);
  v10 = v20 - v9;
  sub_10000BBC4(a1, v20 - v9, &unk_100845860, &unk_1006BF9D0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000BE18(v10, &unk_100845860, &unk_1006BF9D0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v18 = (v15 | v13);
  if (v15 | v13)
  {
    v21[0] = 0;
    v21[1] = 0;
    v18 = v21;
    v21[2] = v13;
    v21[3] = v15;
  }

  v20[1] = 1;
  v20[2] = v18;
  v20[3] = v16;
  swift_task_create();
}

uint64_t sub_100455888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v34 = a1;
  v5 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6 = *(v5 - 8);
  v38 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v32 = &v31 - v7;
  v9 = type metadata accessor for PartialWebPresentmentRequest();
  v31 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v31 - v14;
  v36 = &v31 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(v12, a3, v9);
  v35 = *(v6 + 16);
  v17 = v5;
  v35(v8, a1, v5);
  v18 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v19 = *(v6 + 80);
  v20 = (v11 + v19 + v18) & ~v19;
  v33 = v19 | 7;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = v37;
  (*(v10 + 32))(&v21[v18], v12, v31);
  v22 = *(v6 + 32);
  v23 = &v21[v20];
  v24 = v32;
  v22(v23, v32, v17);

  v25 = sub_1003E653C(0, 0, v36, &unk_1006E4D18, v21);
  v26 = v24;
  v35(v24, v34, v17);
  v27 = (v19 + 16) & ~v19;
  v28 = (v38 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v22((v29 + v27), v26, v17);
  *(v29 + v28) = v25;
  return AsyncThrowingStream.Continuation.onTermination.setter();
}

uint64_t sub_100455C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = type metadata accessor for WebPresentmentRequestState();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844960, &qword_1006E48F8);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v9 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v6[13] = v9;
  v10 = *(v9 - 8);
  v6[14] = v10;
  v6[15] = *(v10 + 64);
  v6[16] = swift_task_alloc();
  v11 = type metadata accessor for WebPresentmentResponse();
  v6[17] = v11;
  v6[18] = *(v11 - 8);
  v6[19] = swift_task_alloc();

  return _swift_task_switch(sub_100455DFC, 0, 0);
}

uint64_t sub_100455DFC()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  (*(v3 + 16))(v1, v0[6], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[20] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_1004473BC;
  v7 = v0[19];
  v8 = v0[5];

  return sub_100455F28(v7, v8, &unk_1006E4D28, v5);
}

uint64_t sub_100455F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v5[8] = sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[11] = v6;
  *v6 = v5;
  v6[1] = sub_100456008;

  return sub_1004567E0();
}

uint64_t sub_100456008(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 112) = a1;

    return _swift_task_switch(sub_100456164, 0, 0);
  }
}

uint64_t sub_100456164()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 96) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  *(v4 + 32) = v1;
  *(v4 + 40) = v5;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_100456258;
  v7 = *(v0 + 80);

  return withDiscardingTaskGroup<A>(returning:isolation:body:)(v7);
}

uint64_t sub_100456258()
{

  return _swift_task_switch(sub_100456370, 0, 0);
}

uint64_t sub_100456370()
{
  sub_10000BBC4(v0[10], v0[9], &qword_100843BC8, &qword_1006E21F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[9];
  v3 = v0[10];
  if (EnumCaseMultiPayload == 1)
  {
    v0[2] = *v2;
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    swift_willThrowTypedImpl();
    sub_10000BE18(v3, &qword_100843BC8, &qword_1006E21F0);
  }

  else
  {
    v5 = v0[3];
    sub_10000BE18(v0[10], &qword_100843BC8, &qword_1006E21F0);
    v6 = type metadata accessor for WebPresentmentResponse();
    (*(*(v6 - 8) + 32))(v5, v2, v6);
  }

  v4 = v0[1];

  return v4();
}

void sub_1004564D8(uint64_t a1)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007224(&qword_100844958, &qword_1006E48F0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v12 - v8;
  (*(v7 + 16))(v12 - v8, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == enum case for AsyncThrowingStream.Continuation.Termination.finished<A, B>(_:) || v10 != enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:))
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v3 + 104))(v5, enum case for DIPError.Code.cancelled(_:), v2);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v11 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v12[1] = v11;
    sub_100007224(&qword_100844950, &unk_1006E48D0);
    AsyncThrowingStream.Continuation.finish(throwing:)();
    Task.cancel()();
  }
}

uint64_t sub_1004567E0()
{
  v1[5] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v3 = type metadata accessor for DIPError();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return _swift_task_switch(sub_100456914, 0, 0);
}

uint64_t sub_100456914()
{
  v1 = sub_10000BA08((*(v0 + 40) + 176), *(*(v0 + 40) + 200));
  *(v0 + 112) = v1;
  v2 = *v1;

  return _swift_task_switch(sub_100456988, v2, 0);
}

uint64_t sub_100456988()
{
  *(v0 + 120) = sub_100502254();
  *(v0 + 128) = 0;

  return _swift_task_switch(sub_100456A18, 0, 0);
}

uint64_t sub_100456A18()
{
  v1 = 0;
  result = v0[15];
  v3 = -1;
  v4 = -1 << *(result + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(result + 56);
  while (v5)
  {
    v6 = v1;
LABEL_10:
    v7 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v8 = *(result + 48) + 104 * (v7 | (v6 << 6));
    v9 = *(v8 + 16);
    v10 = *(v8 + 96);
    if (v9 == 2 && v10 >= 26)
    {

      v12 = v0[1];

      return v12(0);
    }
  }

  while (1)
  {
    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v6 >= ((63 - v4) >> 6))
    {
      break;
    }

    v5 = *(result + 56 + 8 * v6);
    ++v1;
    if (v5)
    {
      v1 = v6;
      goto LABEL_10;
    }
  }

  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_100456E64;

  return sub_100504E08();
}

uint64_t sub_100456BC8()
{
  v0[2] = v0[16];
  swift_errorRetain();
  sub_100007224(&qword_100833B90, &qword_1006D95C0);
  if (swift_dynamicCast() && (v1 = v0[12], v2 = v0[10], v3 = v0[11], v5 = v0[8], v4 = v0[9], v6 = v0[6], v7 = v0[7], (*(v3 + 32))(v1, v0[13], v2), DIPError.code.getter(), (*(v7 + 104))(v5, enum case for DIPError.Code.invalidAppleAccount(_:), v6), sub_100044DA8(&qword_10083B4D0, &type metadata accessor for DIPError.Code, &protocol conformance descriptor for DIPError.Code), dispatch thunk of RawRepresentable.rawValue.getter(), dispatch thunk of RawRepresentable.rawValue.getter(), v8 = *(v7 + 8), v8(v5, v6), v8(v4, v6), (*(v3 + 8))(v1, v2), v0[3] == v0[4]))
  {

    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_100456E64;

    return sub_100504E08();
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100456E64(char a1)
{
  v3 = *v1;

  v4 = *(v3 + 8);
  if (a1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return v4(v5);
}

uint64_t sub_100456FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 224) = a6;
  *(v7 + 232) = a7;
  *(v7 + 576) = a5;
  *(v7 + 208) = a3;
  *(v7 + 216) = a4;
  *(v7 + 192) = a1;
  *(v7 + 200) = a2;
  v8 = type metadata accessor for URL();
  *(v7 + 240) = v8;
  v9 = *(v8 - 8);
  *(v7 + 248) = v9;
  *(v7 + 256) = *(v9 + 64);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(0);
  *(v7 + 280) = v10;
  *(v7 + 288) = *(v10 - 8);
  *(v7 + 296) = swift_task_alloc();
  v11 = type metadata accessor for DIPError.Code();
  *(v7 + 304) = v11;
  *(v7 + 312) = *(v11 - 8);
  *(v7 + 320) = swift_task_alloc();
  sub_100007224(&qword_100844AB0, &qword_1006E4D60);
  *(v7 + 328) = swift_task_alloc();
  v12 = sub_100007224(&qword_100844AB8, &qword_1006E4D68);
  *(v7 + 336) = v12;
  *(v7 + 344) = *(v12 - 8);
  *(v7 + 352) = swift_task_alloc();
  v13 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  *(v7 + 360) = v13;
  v14 = *(v13 - 8);
  *(v7 + 368) = v14;
  *(v7 + 376) = *(v14 + 64);
  *(v7 + 384) = swift_task_alloc();
  v15 = type metadata accessor for PartialWebPresentmentRequest();
  *(v7 + 392) = v15;
  v16 = *(v15 - 8);
  *(v7 + 400) = v16;
  *(v7 + 408) = *(v16 + 64);
  *(v7 + 416) = swift_task_alloc();
  *(v7 + 424) = swift_task_alloc();
  sub_100007224(&unk_100845860, &unk_1006BF9D0);
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  v17 = sub_100007224(&qword_100844AC8, &qword_1006E4D78);
  *(v7 + 488) = v17;
  *(v7 + 496) = *(v17 - 8);
  *(v7 + 504) = swift_task_alloc();
  v18 = sub_100007224(&qword_100844AD0, &qword_1006E4D80);
  *(v7 + 512) = v18;
  v19 = *(v18 - 8);
  *(v7 + 520) = v19;
  *(v7 + 528) = *(v19 + 64);
  *(v7 + 536) = swift_task_alloc();
  *(v7 + 544) = swift_task_alloc();
  *(v7 + 552) = swift_task_alloc();
  *(v7 + 560) = swift_task_alloc();

  return _swift_task_switch(sub_100457480, 0, 0);
}

uint64_t sub_100457480()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  v4 = *(v0 + 496);
  v5 = *(v0 + 480);
  v6 = *(v0 + 576);
  v7 = *(*(v0 + 512) + 48);
  (*(v4 + 104))(v2, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v4 + 8))(v2, v3);
  v8 = type metadata accessor for TaskPriority();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v73 = *(v0 + 480);
  if (v6)
  {
    v10 = v7;
    if (v6 == 1)
    {
      v11 = *(v0 + 424);
      v13 = *(v0 + 400);
      v12 = *(v0 + 408);
      v14 = *(v0 + 384);
      v15 = *(v0 + 392);
      v16 = *(v0 + 368);
      v65 = v14;
      v17 = *(v0 + 360);
      v69 = *(v0 + 208);
      (*(v13 + 16))(v11, *(v0 + 216), v15);
      (*(v16 + 16))(v14, v1 + v10, v17);
      v18 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v19 = (v12 + *(v16 + 80) + v18) & ~*(v16 + 80);
      v20 = swift_allocObject();
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 4) = v69;
      (*(v13 + 32))(&v20[v18], v11, v15);
      (*(v16 + 32))(&v20[v19], v65, v17);

      v21 = &unk_1006E4E08;
    }

    else
    {
      v38 = *(v0 + 376);
      v39 = *(v0 + 368);
      v56 = *(v0 + 384);
      v59 = *(v0 + 232);
      v52 = *(v0 + 360);
      v54 = *(v0 + 224);
      v40 = *(v0 + 208);
      v64 = *(v39 + 16);
      v68 = v7;
      v64();
      v41 = (*(v39 + 80) + 40) & ~*(v39 + 80);
      v72 = v9;
      v42 = (v41 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = swift_allocObject();
      *(v43 + 2) = 0;
      *(v43 + 3) = 0;
      *(v43 + 4) = v40;
      v44 = *(v39 + 32);
      v44(&v43[v41], v56, v52);
      v45 = &v43[v42];
      *v45 = v54;
      *(v45 + 1) = v59;

      sub_100455670(v73, &unk_1006E4D90, v43);
      sub_10000BE18(v73, &unk_100845860, &unk_1006BF9D0);
      v72(v73, 1, 1, v8);
      (v64)(v56, v1 + v68, v52);
      v20 = swift_allocObject();
      *(v20 + 2) = 0;
      *(v20 + 3) = 0;
      *(v20 + 4) = v40;
      v44(&v20[v41], v56, v52);

      v21 = &unk_1006E4DA0;
    }

    v37 = v73;
    v36 = v20;
  }

  else
  {
    v57 = *(v0 + 424);
    v22 = *(v0 + 400);
    v70 = *(v0 + 408);
    v23 = *(v0 + 384);
    v53 = *(v0 + 392);
    v50 = v23;
    v63 = *(v0 + 376);
    v25 = *(v0 + 360);
    v24 = *(v0 + 368);
    v51 = v25;
    v61 = *(v0 + 224);
    v62 = *(v0 + 232);
    v66 = v8;
    v26 = *(v0 + 208);
    (*(v22 + 16))();
    v60 = *(v24 + 16);
    v60(v23, v1 + v7, v25);
    v67 = v7;
    v27 = (*(v22 + 80) + 40) & ~*(v22 + 80);
    v28 = *(v24 + 80);
    v29 = v70 + v28 + v27;
    v71 = v9;
    v30 = v29 & ~v28;
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    v55 = v26;
    *(v31 + 4) = v26;
    (*(v22 + 32))(&v31[v27], v57, v53);
    v58 = *(v24 + 32);
    v58(&v31[v30], v50, v51);

    v32 = sub_1003E653C(0, 0, v73, &unk_1006E4E18, v31);
    v71(v73, 1, 1, v66);
    v60(v50, v1 + v67, v51);
    v33 = (v28 + 48) & ~v28;
    v34 = swift_allocObject();
    *(v34 + 2) = 0;
    *(v34 + 3) = 0;
    *(v34 + 4) = v55;
    *(v34 + 5) = v32;
    v58(&v34[v33], v50, v51);
    v35 = &v34[(v63 + v33 + 7) & 0xFFFFFFFFFFFFFFF8];
    *v35 = v61;
    *(v35 + 1) = v62;

    sub_100455670(v73, &unk_1006E4E28, v34);
    sub_10000BE18(v73, &unk_100845860, &unk_1006BF9D0);
    v71(v73, 1, 1, v66);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v32;
    v21 = &unk_1006E4E38;
    v37 = v73;
  }

  sub_100455670(v37, v21, v36);
  sub_10000BE18(*(v0 + 480), &unk_100845860, &unk_1006BF9D0);
  sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  AsyncThrowingStream.makeAsyncIterator()();
  v46 = swift_task_alloc();
  *(v0 + 568) = v46;
  *v46 = v0;
  v46[1] = sub_100457BC4;
  v47 = *(v0 + 328);
  v48 = *(v0 + 336);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v47, 0, 0, v48, v0 + 184);
}

uint64_t sub_100457BC4()
{

  if (v0)
  {
    v1 = sub_1004589D8;
  }

  else
  {
    v1 = sub_100457CD4;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100457CD4()
{
  v1 = *(v0 + 328);
  if ((*(*(v0 + 288) + 48))(v1, 1, *(v0 + 280)) == 1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v5 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    **(v0 + 192) = v5;
    sub_100007224(&qword_100843BC8, &qword_1006E21F0);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    v6 = *(v0 + 560);
    DiscardingTaskGroup.cancelAll()();
    sub_10000BE18(v6, &qword_100844AD0, &qword_1006E4D80);

    v7 = *(v0 + 8);

    return v7();
  }

  sub_100461A88(v1, *(v0 + 296), type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v42 = *(v0 + 296);
      v43 = *(v0 + 192);
      (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
      v44 = type metadata accessor for WebPresentmentResponse();
      (*(*(v44 - 8) + 32))(v43, v42, v44);
      sub_100007224(&qword_100843BC8, &qword_1006E21F0);
      goto LABEL_3;
    }

    v10 = *(v0 + 560);
    v11 = *(v0 + 536);
    v79 = v11;
    v81 = *(v0 + 520);
    v12 = *(v0 + 440);
    v84 = *(v0 + 528);
    v95 = *(v0 + 432);
    v14 = *(v0 + 264);
    v13 = *(v0 + 272);
    v15 = *(v0 + 248);
    v80 = *(v0 + 256);
    v16 = *(v0 + 240);
    v93 = *(v0 + 232);
    v92 = *(v0 + 224);
    v90 = *(v0 + 576);
    v86 = *(v15 + 32);
    v88 = *(v0 + 208);
    v86(v13, *(v0 + 296), v16);
    v17 = type metadata accessor for TaskPriority();
    v82 = *(v17 - 8);
    (*(v82 + 56))(v12, 1, 1, v17);
    (*(v15 + 16))(v14, v13, v16);
    sub_10000BBC4(v10, v11, &qword_100844AD0, &qword_1006E4D80);
    v18 = (*(v15 + 80) + 48) & ~*(v15 + 80);
    v19 = (v80 + *(v81 + 80) + v18) & ~*(v81 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = (v20 + 16);
    *(v20 + 24) = 0;
    *(v20 + 32) = v90;
    *(v20 + 40) = v88;
    v86(v20 + v18, v14, v16);
    sub_10045E3CC(v79, v20 + v19);
    v22 = (v20 + ((v84 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = v92;
    v22[1] = v93;
    sub_10000BBC4(v12, v95, &unk_100845860, &unk_1006BF9D0);
    LODWORD(v19) = (*(v82 + 48))(v95, 1, v17);

    v23 = *(v0 + 432);
    if (v19 == 1)
    {
      sub_10000BE18(*(v0 + 432), &unk_100845860, &unk_1006BF9D0);
      if (*v21)
      {
LABEL_10:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v24 = dispatch thunk of Actor.unownedExecutor.getter();
        v26 = v25;
        swift_unknownObjectRelease();
LABEL_21:
        v62 = **(v0 + 200);
        v63 = swift_allocObject();
        *(v63 + 16) = &unk_1006E4DB8;
        *(v63 + 24) = v20;

        if (v26 | v24)
        {
          v64 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v24;
          *(v0 + 40) = v26;
        }

        else
        {
          v64 = 0;
        }

        v71 = *(v0 + 440);
        v72 = *(v0 + 272);
        v73 = *(v0 + 240);
        v74 = *(v0 + 248);
        *(v0 + 112) = 1;
        *(v0 + 120) = v64;
        *(v0 + 128) = v62;
        swift_task_create();

        sub_10000BE18(v71, &unk_100845860, &unk_1006BF9D0);
        (*(v74 + 8))(v72, v73);
        goto LABEL_38;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v82 + 8))(v23, v17);
      if (*v21)
      {
        goto LABEL_10;
      }
    }

    v24 = 0;
    v26 = 0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v45 = *(v0 + 560);
    v46 = *(v0 + 552);
    v83 = v46;
    v89 = *(v0 + 520);
    v47 = *(v0 + 472);
    v94 = v47;
    v96 = *(v0 + 464);
    v48 = *(v0 + 416);
    v85 = v48;
    v87 = *(v0 + 408);
    v50 = *(v0 + 392);
    v49 = *(v0 + 400);
    v51 = *(v0 + 216);
    v91 = *(v0 + 208);
    v52 = type metadata accessor for TaskPriority();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v47, 1, 1, v52);
    (*(v49 + 16))(v48, v51, v50);
    sub_10000BBC4(v45, v46, &qword_100844AD0, &qword_1006E4D80);
    v54 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v55 = (v87 + *(v89 + 80) + v54) & ~*(v89 + 80);
    v56 = swift_allocObject();
    v56[2] = 0;
    v57 = v56 + 2;
    v56[3] = 0;
    v56[4] = v91;
    (*(v49 + 32))(v56 + v54, v85, v50);
    sub_10045E3CC(v83, v56 + v55);
    sub_10000BBC4(v94, v96, &unk_100845860, &unk_1006BF9D0);
    LODWORD(v49) = (*(v53 + 48))(v96, 1, v52);

    v58 = *(v0 + 464);
    if (v49 == 1)
    {
      sub_10000BE18(*(v0 + 464), &unk_100845860, &unk_1006BF9D0);
      if (*v57)
      {
LABEL_18:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v59 = dispatch thunk of Actor.unownedExecutor.getter();
        v61 = v60;
        swift_unknownObjectRelease();
LABEL_29:
        v68 = **(v0 + 200);
        v69 = swift_allocObject();
        *(v69 + 16) = &unk_1006E4DF0;
        *(v69 + 24) = v56;

        if (v61 | v59)
        {
          v70 = v0 + 80;
          *(v0 + 80) = 0;
          *(v0 + 88) = 0;
          *(v0 + 96) = v59;
          *(v0 + 104) = v61;
        }

        else
        {
          v70 = 0;
        }

        v75 = *(v0 + 472);
        *(v0 + 160) = 1;
        *(v0 + 168) = v70;
        *(v0 + 176) = v68;
        goto LABEL_37;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v53 + 8))(v58, v52);
      if (*v57)
      {
        goto LABEL_18;
      }
    }

    v59 = 0;
    v61 = 0;
    goto LABEL_29;
  }

  v27 = *(v0 + 560);
  v28 = *(v0 + 544);
  v29 = *(v0 + 520);
  v30 = *(v0 + 448);
  v31 = *(v0 + 456);
  v32 = *(v0 + 208);
  v33 = type metadata accessor for TaskPriority();
  v34 = *(v33 - 8);
  (*(v34 + 56))(v31, 1, 1, v33);
  sub_10000BBC4(v27, v28, &qword_100844AD0, &qword_1006E4D80);
  v35 = (*(v29 + 80) + 40) & ~*(v29 + 80);
  v36 = swift_allocObject();
  v36[2] = 0;
  v37 = v36 + 2;
  v36[3] = 0;
  v36[4] = v32;
  sub_10045E3CC(v28, v36 + v35);
  sub_10000BBC4(v31, v30, &unk_100845860, &unk_1006BF9D0);
  LODWORD(v30) = (*(v34 + 48))(v30, 1, v33);

  v38 = *(v0 + 448);
  if (v30 != 1)
  {
    TaskPriority.rawValue.getter();
    (*(v34 + 8))(v38, v33);
    if (*v37)
    {
      goto LABEL_14;
    }

LABEL_24:
    v39 = 0;
    v41 = 0;
    goto LABEL_25;
  }

  sub_10000BE18(*(v0 + 448), &unk_100845860, &unk_1006BF9D0);
  if (!*v37)
  {
    goto LABEL_24;
  }

LABEL_14:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v39 = dispatch thunk of Actor.unownedExecutor.getter();
  v41 = v40;
  swift_unknownObjectRelease();
LABEL_25:
  v65 = **(v0 + 200);
  v66 = swift_allocObject();
  *(v66 + 16) = &unk_1006E4DD8;
  *(v66 + 24) = v36;

  if (v41 | v39)
  {
    v67 = v0 + 48;
    *(v0 + 48) = 0;
    *(v0 + 56) = 0;
    *(v0 + 64) = v39;
    *(v0 + 72) = v41;
  }

  else
  {
    v67 = 0;
  }

  v75 = *(v0 + 456);
  *(v0 + 136) = 1;
  *(v0 + 144) = v67;
  *(v0 + 152) = v65;
LABEL_37:
  swift_task_create();

  sub_10000BE18(v75, &unk_100845860, &unk_1006BF9D0);
LABEL_38:
  v76 = swift_task_alloc();
  *(v0 + 568) = v76;
  *v76 = v0;
  v76[1] = sub_100457BC4;
  v77 = *(v0 + 328);
  v78 = *(v0 + 336);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v77, 0, 0, v78, v0 + 184);
}

uint64_t sub_1004589D8()
{
  (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
  **(v0 + 192) = *(v0 + 184);
  sub_100007224(&qword_100843BC8, &qword_1006E21F0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 560);
  DiscardingTaskGroup.cancelAll()();
  sub_10000BE18(v1, &qword_100844AD0, &qword_1006E4D80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100458BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v8 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
  *(v5 + 48) = v8;
  v9 = swift_task_alloc();
  *(v5 + 32) = v9;
  *v9 = v5;
  v9[1] = sub_100458C84;

  return sub_100458E50(a4, a5 + v8);
}

uint64_t sub_100458C84()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100458DB8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100458DB8()
{
  v0[2] = v0[5];
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_100458E50(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for WebPresentmentResponse();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v3[12] = v6;
  v7 = *(v6 - 8);
  v3[13] = v7;
  v3[14] = *(v7 + 64);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(0);
  v3[20] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v3[24] = v9;
  v3[25] = *(v9 - 8);
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for WebPresentmentScannableCodeState(0);
  v3[27] = v10;
  v3[28] = *(v10 - 8);
  v3[29] = swift_task_alloc();
  sub_100007224(&qword_100844B10, &qword_1006E4E98);
  v3[30] = swift_task_alloc();
  v11 = sub_100007224(&qword_100844B18, &qword_1006E4EA0);
  v3[31] = v11;
  v3[32] = *(v11 - 8);
  v3[33] = swift_task_alloc();
  v12 = sub_100007224(&qword_100844B20, &qword_1006E4EA8);
  v3[34] = v12;
  v3[35] = *(v12 - 8);
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_100459250, 0, 0);
}

uint64_t sub_100459250()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  v4 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = v4[20];
  v7 = v4[21];
  sub_10000BA08(v4 + 17, v6);
  (*(v7 + 8))(v5, v6, v7);
  AsyncThrowingStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  *(v0 + 368) = enum case for MobileDocumentProviderAuxiliaryView.waitingForResponse(_:);
  *(v0 + 372) = enum case for MobileDocumentProviderAuxiliaryView.connecting(_:);
  v8 = swift_task_alloc();
  *(v0 + 296) = v8;
  *v8 = v0;
  v8[1] = sub_1004593AC;
  v9 = *(v0 + 272);
  v10 = *(v0 + 240);

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v10, 0, 0, v9, v0 + 16);
}

uint64_t sub_1004593AC()
{

  if (v0)
  {
    v1 = sub_10045A37C;
  }

  else
  {
    v1 = sub_1004594BC;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004594BC()
{
  v1 = *(v0 + 240);
  if ((*(*(v0 + 224) + 48))(v1, 1, *(v0 + 216)) == 1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    sub_100461A88(v1, *(v0 + 232), type metadata accessor for WebPresentmentScannableCodeState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = *(v0 + 372);
        v16 = *(v0 + 144);
        v17 = *(v0 + 96);
        v18 = *(v0 + 104);
        v19 = sub_10000BA08((*(v0 + 40) + 56), *(*(v0 + 40) + 80));
        (*(v18 + 104))(v16, v15, v17);
        v20 = *v19;
        *(v0 + 304) = *v19;
        v21 = sub_100459A48;
      }

      else
      {
        v32 = *(v0 + 368);
        v33 = *(v0 + 128);
        v34 = *(v0 + 96);
        v35 = *(v0 + 104);
        v36 = sub_10000BA08((*(v0 + 40) + 56), *(*(v0 + 40) + 80));
        (*(v35 + 104))(v33, v32, v34);
        v20 = *v36;
        *(v0 + 336) = *v36;
        v21 = sub_100459E8C;
      }

      return _swift_task_switch(v21, v20, 0);
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v23 = *(v0 + 176);
        v22 = *(v0 + 184);
        v25 = *(v0 + 160);
        v24 = *(v0 + 168);
        v27 = *(v0 + 80);
        v26 = *(v0 + 88);
        v28 = *(v0 + 72);
        (*(v27 + 32))(v26, *(v0 + 232), v28);
        (*(v27 + 16))(v25, v26, v28);
        swift_storeEnumTagMultiPayload();
        sub_100007224(&qword_100844AC0, &qword_1006E4D70);
        AsyncThrowingStream.Continuation.yield(_:)();
        (*(v23 + 8))(v22, v24);
        (*(v27 + 8))(v26, v28);
      }

      else
      {
        v9 = *(v0 + 200);
        v8 = *(v0 + 208);
        v11 = *(v0 + 184);
        v10 = *(v0 + 192);
        v12 = *(v0 + 168);
        v13 = *(v0 + 176);
        v14 = *(v0 + 160);
        (*(v9 + 32))(v8, *(v0 + 232), v10);
        (*(v9 + 16))(v14, v8, v10);
        swift_storeEnumTagMultiPayload();
        sub_100007224(&qword_100844AC0, &qword_1006E4D70);
        AsyncThrowingStream.Continuation.yield(_:)();
        (*(v13 + 8))(v11, v12);
        (*(v9 + 8))(v8, v10);
      }

      v29 = swift_task_alloc();
      *(v0 + 296) = v29;
      *v29 = v0;
      v29[1] = sub_1004593AC;
      v30 = *(v0 + 272);
      v31 = *(v0 + 240);

      return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v31, 0, 0, v30, v0 + 16);
    }
  }
}

uint64_t sub_100459A48()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[18], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[39] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_100459B80;

  return sub_10042B4BC("updateView(auxiliaryView:)", 26, 2, &unk_1006E4EB8, v5);
}

uint64_t sub_100459B80()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = v2[38];

    v4 = sub_100459CE8;
    v5 = v3;
  }

  else
  {
    v6 = v2[18];
    v7 = v2[12];
    v8 = v2[13];

    (*(v8 + 8))(v6, v7);
    v4 = sub_100461E78;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100459CE8()
{
  (*(v0[13] + 8))(v0[18], v0[12]);

  return _swift_task_switch(sub_100459D60, 0, 0);
}

uint64_t sub_100459D60()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100459E8C()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[12];
  (*(v2 + 16))(v1, v0[16], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[43] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[44] = v6;
  *v6 = v0;
  v6[1] = sub_100459FC4;

  return sub_10042B4BC("updateView(auxiliaryView:)", 26, 2, &unk_1006E4EB0, v5);
}

uint64_t sub_100459FC4()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = v2[42];

    v4 = sub_10045A1D8;
    v5 = v3;
  }

  else
  {
    v6 = v2[16];
    v7 = v2[12];
    v8 = v2[13];

    (*(v8 + 8))(v6, v7);
    v4 = sub_10045A12C;
    v5 = 0;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_10045A12C()
{
  v1 = swift_task_alloc();
  v0[37] = v1;
  *v1 = v0;
  v1[1] = sub_1004593AC;
  v2 = v0[34];
  v3 = v0[30];

  return __sScs8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v3, 0, 0, v2, v0 + 2);
}

uint64_t sub_10045A1D8()
{
  (*(v0[13] + 8))(v0[16], v0[12]);

  return _swift_task_switch(sub_10045A250, 0, 0);
}

uint64_t sub_10045A250()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10045A37C()
{
  (*(v0[35] + 8))(v0[36], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10045A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[5] = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(0);
  v4[6] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v6 = sub_100007224(&qword_100843D38, &qword_1006E2240);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v7 = sub_100007224(&qword_100843D40, &qword_1006E2248);
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  v4[16] = v8;
  v9 = *(v8 - 8);
  v4[17] = v9;
  v4[18] = *(v9 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_10045A6E4, 0, 0);
}

uint64_t sub_10045A6E4()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];
  v4 = sub_10000BA08((v0[3] + 56), *(v0[3] + 80));
  (*(v3 + 104))(v1, enum case for MobileDocumentProviderAuxiliaryView.enableBluetooth(_:), v2);
  v5 = *v4;
  v0[21] = *v4;

  return _swift_task_switch(sub_10045A790, v5, 0);
}

uint64_t sub_10045A790()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[16];
  (*(v2 + 16))(v1, v0[20], v3);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[22] = v5;
  (*(v2 + 32))(v5 + v4, v1, v3);
  v6 = swift_task_alloc();
  v0[23] = v6;
  *v6 = v0;
  v6[1] = sub_10045A8C8;

  return sub_10042B4BC("updateView(auxiliaryView:)", 26, 2, &unk_1006E4EC0, v5);
}

uint64_t sub_10045A8C8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = v2[21];
    v4 = sub_10045AB28;
  }

  else
  {
    (*(v2[17] + 8))(v2[20], v2[16]);
    v4 = sub_10045AA20;
    v3 = 0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10045AA20()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_10000BA08((v0[3] + 216), *(v0[3] + 240));
  sub_100503AC0(v1);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_10045AC94;
  v5 = v0[13];

  return AsyncStream.Iterator.next(isolation:)(v0 + 26, 0, 0, v5);
}

uint64_t sub_10045AB28()
{
  (*(v0[17] + 8))(v0[20], v0[16]);

  return _swift_task_switch(sub_10045ABA0, 0, 0);
}

uint64_t sub_10045ABA0()
{
  v1 = v0[24];
  sub_100007224(&qword_100844AD0, &qword_1006E4D80);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10045AC94()
{

  return _swift_task_switch(sub_10045AD90, 0, 0);
}

uint64_t sub_10045AD90()
{
  v1 = *(v0 + 208);
  if (v1 == 2)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
LABEL_5:

    v7 = *(v0 + 8);

    return v7();
  }

  if (v1)
  {
    v2 = *(v0 + 112);
    v11 = *(v0 + 120);
    v3 = *(v0 + 104);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);
    sub_100007224(&qword_100844AD0, &qword_1006E4D80);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100844AC0, &qword_1006E4D70);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v11, v3);
    goto LABEL_5;
  }

  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_10045AC94;
  v10 = *(v0 + 104);

  return AsyncStream.Iterator.next(isolation:)(v0 + 208, 0, 0, v10);
}

uint64_t sub_10045AFA0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 24) = a4;
  *(v8 + 192) = a3;
  v9 = type metadata accessor for URL();
  *(v8 + 64) = v9;
  v10 = *(v9 - 8);
  *(v8 + 72) = v10;
  *(v8 + 80) = *(v10 + 64);
  *(v8 + 88) = swift_task_alloc();
  v11 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  *(v8 + 96) = v11;
  *(v8 + 104) = *(v11 - 8);
  *(v8 + 112) = swift_task_alloc();
  v12 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  *(v8 + 120) = v12;
  *(v8 + 128) = *(v12 - 8);
  *(v8 + 136) = swift_task_alloc();

  return _swift_task_switch(sub_10045B138, 0, 0);
}

uint64_t sub_10045B138()
{
  v1 = *(v0 + 192);
  v2 = sub_10000BA08((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  if (v1 == 1)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    v6 = *(v0 + 40);
    (*(*(v0 + 72) + 16))(v3, *(v0 + 32), *(v0 + 64));
    (*(v4 + 104))(v3, enum case for MobileDocumentProviderViewServiceIdentifier.scannableCodeView(_:), v5);
    type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
    sub_1004333B0(v3);
    (*(v4 + 8))(v3, v5);
    v7 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) + 48);
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    *v8 = v0;
    v8[1] = sub_10045B314;
    v9 = *(v0 + 136);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    return sub_10045F408(v9, v6 + v7, v10, v11);
  }

  else
  {
    v13 = *v2;
    *(v0 + 160) = *v2;

    return _swift_task_switch(sub_10045B5A0, v13, 0);
  }
}

uint64_t sub_10045B314()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *v1;
  *(v5 + 152) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10045B4D4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10045B4D4()
{
  v1 = v0[19];
  sub_100007224(&qword_100844AD0, &qword_1006E4D80);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10045B5A0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  (*(v3 + 16))(v1, v0[4], v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[21] = v5;
  (*(v3 + 32))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_10045B6D8;

  return sub_10042B4BC("updateView(scannableCodePayload:)", 33, 2, &unk_1006E4EC8, v5);
}

uint64_t sub_10045B6D8()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {
    v3 = v2[20];

    return _swift_task_switch(sub_10045B834, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_10045B834()
{

  return _swift_task_switch(sub_10045B89C, 0, 0);
}

uint64_t sub_10045B89C()
{
  v1 = v0[23];
  sub_100007224(&qword_100844AD0, &qword_1006E4D80);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10045B968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Logger();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v6[9] = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(0);
  v6[10] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = type metadata accessor for WebPresentmentResponse();
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();

  return _swift_task_switch(sub_10045BB20, 0, 0);
}

uint64_t sub_10045BB20()
{
  sub_10000BA08((v0[3] + 96), *(v0[3] + 120));
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_10045BBCC;
  v2 = v0[16];
  v3 = v0[4];

  return sub_1003EBAE8(v2, v3);
}

uint64_t sub_10045BBCC()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_10045BE1C;
  }

  else
  {
    v2 = sub_10045BCE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045BCE0()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  (*(v2 + 16))(v0[10], v1, v3);
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_10045BE1C()
{
  if (static Task<>.isCancelled.getter())
  {
    defaultLogger()();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    v3 = os_log_type_enabled(v1, v2);
    v5 = v0[7];
    v4 = v0[8];
    v6 = v0[6];
    if (v3)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Remote dispatch task programmatically cancelled", v7, 2u);
    }

    else
    {
    }

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v0[2] = v0[18];
    sub_100007224(&qword_100844AC0, &qword_1006E4D70);
    AsyncThrowingStream.Continuation.finish(throwing:)();
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10045BFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[3] = a3;
  v8 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v7[12] = swift_task_alloc();
  v9 = sub_100007224(&qword_100844AE0, &qword_1006E4E58);
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_10045C114, 0, 0);
}

uint64_t sub_10045C114()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_10000BA08((v0[3] + 56), *(v0[3] + 80));
  v4 = enum case for MobileDocumentProviderAuxiliaryView.nativeHandoff(_:);
  v5 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v3);
  type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
  sub_1004333B0(v1);
  (*(v2 + 8))(v1, v3);
  type metadata accessor for MobileDocumentProviderRequestState(0);
  sub_1000BA30C(&qword_100844AE8, &qword_100844978, &qword_1006E4E50, &protocol conformance descriptor for AsyncThrowingStream<A, B>);

  AsyncMapSequence.init(_:transform:)();
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_10045C328;
  v7 = v0[15];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[5];

  return sub_100460834(v7, v10, v8, v9);
}

uint64_t sub_10045C328()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10045C4CC;
  }

  else
  {
    v2 = sub_10045C43C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10045C43C()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10045C4CC()
{
  v1 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  v0[2] = v1;
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v2 = v0[1];

  return v2();
}

uint64_t sub_10045C594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for MobileDocumentProviderRequestState(0);
  v3[6] = swift_task_alloc();

  return _swift_task_switch(sub_10045C62C, 0, 0);
}

uint64_t sub_10045C62C()
{
  sub_100461A24(v0[3], v0[6]);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    Task.cancel()();
  }

  else
  {
    sub_1004619C8(v0[6]);
  }

  sub_100461A24(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10045C70C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_10045C7E0;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v1, &unk_1006E4E48);
}

uint64_t sub_10045C7E0()
{

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_100041D3C, 0, 0);
  }
}

uint64_t sub_10045C904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  v8 = swift_task_alloc();
  *(v5 + 32) = v8;
  *v8 = v5;
  v8[1] = sub_10045C9B4;

  return sub_100458E50(a4, a5);
}

uint64_t sub_10045C9B4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10045CAE8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_10045CAE8()
{
  v0[2] = v0[5];
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();
  v1 = v0[1];

  return v1();
}

uint64_t sub_10045CB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v7 = type metadata accessor for MobileDocumentProviderViewServiceIdentifier();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_10045CC9C, 0, 0);
}

uint64_t sub_10045CC9C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_10000BA08((v0[3] + 56), *(v0[3] + 80));
  v4 = enum case for MobileDocumentProviderAuxiliaryView.enableBluetooth(_:);
  v5 = type metadata accessor for MobileDocumentProviderAuxiliaryView();
  (*(*(v5 - 8) + 104))(v1, v4, v5);
  (*(v2 + 104))(v1, enum case for MobileDocumentProviderViewServiceIdentifier.auxiliaryView(_:), v3);
  type metadata accessor for MobileDocumentProviderUIConnectionManager(0);
  sub_1004333B0(v1);
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_10045CE30;
  v7 = v0[12];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];

  return sub_10045F408(v7, v10, v8, v9);
}

uint64_t sub_10045CE30()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(v5 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10045CFE4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10045CFE4()
{
  v0[2] = v0[14];
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.finish(throwing:)();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10045D080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v4[4] = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(0);
  v4[5] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_100007224(&qword_100843D38, &qword_1006E2240);
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_100007224(&qword_100843D40, &qword_1006E2248);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return _swift_task_switch(sub_10045D24C, 0, 0);
}

uint64_t sub_10045D24C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  sub_10000BA08((v0[2] + 216), *(v0[2] + 240));
  sub_100503AC0(v1);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_10045D354;
  v5 = v0[12];

  return AsyncStream.Iterator.next(isolation:)(v0 + 16, 0, 0, v5);
}

uint64_t sub_10045D354()
{

  return _swift_task_switch(sub_10045D450, 0, 0);
}

uint64_t sub_10045D450()
{
  v1 = *(v0 + 128);
  if (v1 == 2)
  {
LABEL_4:
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));

    v5 = *(v0 + 8);

    return v5();
  }

  if (v1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 48);
    swift_storeEnumTagMultiPayload();
    sub_100007224(&qword_100844AC0, &qword_1006E4D70);
    AsyncThrowingStream.Continuation.yield(_:)();
    (*(v3 + 8))(v2, v4);
    goto LABEL_4;
  }

  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  *v7 = v0;
  v7[1] = sub_10045D354;
  v8 = *(v0 + 96);

  return AsyncStream.Iterator.next(isolation:)(v0 + 128, 0, 0, v8);
}

uint64_t sub_10045D5EC()
{
  sub_10000BB78(v0 + 2);
  sub_10000BB78(v0 + 7);
  sub_10000BB78(v0 + 12);
  sub_10000BB78(v0 + 17);
  sub_10000BB78(v0 + 22);
  sub_10000BB78(v0 + 27);

  return swift_deallocClassInstance();
}

uint64_t sub_10045D670(uint64_t a1)
{
  v3 = sub_100007224(&qword_100844948, &qword_1006E48C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  v9 = *v1;
  v10 = a1;
  type metadata accessor for WebPresentmentRequestState();
  (*(v4 + 104))(v6, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v3);
  return AsyncThrowingStream.init<>(_:bufferingPolicy:_:)();
}

uint64_t sub_10045D7AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_100455C04(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10045D918()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10045D9C0(uint64_t a1)
{
  sub_100007224(&qword_100844950, &unk_1006E48D0);

  sub_1004564D8(a1);
}

uint64_t sub_10045DA68(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1001B72CC;

  return v4();
}

uint64_t sub_10045DB50()
{
  v1 = sub_100007224(&qword_100844950, &unk_1006E48D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10045DBE4(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_100844950, &unk_1006E48D0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_1004476D8(a1, v1 + v5);
}

uint64_t sub_10045DCC8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100041F04;

  return sub_100456FEC(a1, a2, v6, v7, v10, v8, v9);
}

uint64_t type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(uint64_t a1)
{
  result = qword_100844BA0;
  if (!qword_100844BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045DDEC()
{
  v1 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10045DEDC()
{
  v2 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_10045CB70(v4, v5, v6, v0 + v3, v8, v9);
}

uint64_t sub_10045E014()
{
  v1 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10045E0EC()
{
  v2 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10045D080(v4, v5, v6, v0 + v3);
}

uint64_t sub_10045E1E4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[14];
  v13 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_10045E3CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844AD0, &qword_1006E4D80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10045E43C()
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v10 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v0 + 32);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_100041F04;

  return sub_10045AFA0(v7, v8, v13, v9, v0 + v3, v0 + v6, v11, v12);
}

uint64_t sub_10045E5E0()
{
  v1 = (sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10045E72C()
{
  v2 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_100041F04;

  return sub_10045A4A8(v4, v5, v6, v0 + v3);
}

uint64_t sub_10045E824()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_100007224(&qword_100844AD8, &qword_1006E4DA8);
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = v6[14];
  v13 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_10045E9F4()
{
  v2 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100844AD0, &qword_1006E4D80) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_100458BB8(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_10045EB5C()
{
  v2 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100041F04;

  return sub_10045C904(v7, v8, v9, v0 + v3, v0 + v6);
}

uint64_t sub_10045ECB0(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for PartialWebPresentmentRequest();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_100007224(a1, a2);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v2 + v8, v5);
  (*(v11 + 8))(v2 + v13, v10);

  return _swift_deallocObject(v2, v13 + v14, v15 | 7);
}

uint64_t sub_10045EE14(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PartialWebPresentmentRequest() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100041F04;

  return sub_10045B968(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_10045EF80()
{
  v1 = sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10045F078()
{
  v2 = *(sub_100007224(&qword_100844AC0, &qword_1006E4D70) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_100041F04;

  return sub_10045BFA8(v4, v5, v6, v7, v0 + v3, v9, v10);
}

uint64_t sub_10045F1B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10045F1F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100041F04;

  return sub_10045C6EC(v2, v3, v4);
}

uint64_t sub_10045F29C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100027B9C;

  return sub_1001AFDA4(a1, v1);
}

uint64_t sub_10045F35C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_100027B9C;

  return sub_10045C594(a1, a2, v2);
}

uint64_t sub_10045F408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(0);
  v4[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderRequestState(0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  sub_100007224(&qword_100844968, &qword_1006E4E80);
  v4[18] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844978, &qword_1006E4E50);
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = sub_100007224(&qword_100844970, &qword_1006E4920);
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_10045F6C8, 0, 0);
}

uint64_t sub_10045F6C8()
{
  (*(v0[20] + 16))(v0[21], v0[3], v0[19]);
  sub_1000BA30C(&qword_100844AE8, &qword_100844978, &qword_1006E4E50, &protocol conformance descriptor for AsyncThrowingStream<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10045F820;
  v3 = v0[22];
  v4 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_10045F820()
{

  if (v0)
  {
    v1 = sub_10045FF4C;
  }

  else
  {
    v1 = sub_10045F930;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10045F930()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    (*(v0[23] + 8))(v0[24], v0[22]);
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_6:

    v12 = v0[1];

    return v12();
  }

  sub_100461A88(v1, v0[17], type metadata accessor for MobileDocumentProviderRequestState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v20 = v0[17];
      v21 = v0[5];
      v22 = *v20;
      v0[26] = *v20;
      v25 = (v21 + *v21);
      v23 = swift_task_alloc();
      v0[27] = v23;
      *v23 = v0;
      v23[1] = sub_100460024;

      return v25(v22);
    }

    else
    {
      sub_1004619C8(v0[17]);
      v14 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
      v15 = swift_task_alloc();
      v0[25] = v15;
      *v15 = v0;
      v15[1] = sub_10045F820;
      v16 = v0[22];
      v17 = v0[18];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v17, 0, 0, v0 + 2, v16, v14);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 3) < 3)
    {
      v7 = v0[23];
      v6 = v0[24];
      v8 = v0[22];
      v10 = v0[13];
      v9 = v0[14];
      v11 = v0[12];
      sub_1004619C8(v0[17]);
      (*(v10 + 104))(v9, enum case for DIPError.Code.unexpectedDaemonState(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v7 + 8))(v6, v8);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v24 = sub_1005056DC;
      v18 = swift_task_alloc();
      v0[29] = v18;
      *v18 = v0;
      v19 = sub_100460138;
    }

    else
    {
      v24 = sub_100504E08;
      v18 = swift_task_alloc();
      v0[31] = v18;
      *v18 = v0;
      v19 = sub_100460408;
    }

    v18[1] = v19;

    return v24();
  }
}

uint64_t sub_10045FF4C()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100460024()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_10046074C;
  }

  else
  {
    v2 = sub_100460660;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100460138()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100460330;
  }

  else
  {
    v2 = sub_10046024C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046024C()
{
  v1 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_10045F820;
  v3 = v0[22];
  v4 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100460330()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100460408(char a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100460508, 0, 0);
}

uint64_t sub_100460508()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_10045F820;
  v6 = v0[22];
  v7 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 2, v6, v4);
}

uint64_t sub_100460660()
{
  v1 = sub_1000BA30C(&qword_100844B28, &qword_100844970, &qword_1006E4920, &protocol conformance descriptor for AsyncThrowingStream<A, B>.Iterator);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_10045F820;
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_10046074C()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100460834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for WebPresentmentRemoteDispatchingManager.StateTransition(0);
  v4[8] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844AF0, &qword_1006E4E78);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for DIPError.Code();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for MobileDocumentProviderRequestState(0);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  sub_100007224(&qword_100844968, &qword_1006E4E80);
  v4[18] = swift_task_alloc();
  v8 = sub_100007224(&qword_100844AE0, &qword_1006E4E58);
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v9 = sub_100007224(&qword_100844AF8, &qword_1006E4E88);
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100460AF4, 0, 0);
}

uint64_t sub_100460AF4()
{
  (*(v0[20] + 16))(v0[21], v0[3], v0[19]);
  sub_1000BA30C(&qword_100844B00, &qword_100844AE0, &qword_1006E4E58, &protocol conformance descriptor for AsyncMapSequence<A, B>);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88, &protocol conformance descriptor for AsyncMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_100460C4C;
  v3 = v0[22];
  v4 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100460C4C()
{

  if (v0)
  {
    v1 = sub_100461E54;
  }

  else
  {
    v1 = sub_100460D5C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100460D5C()
{
  v1 = v0[18];
  if ((*(v0[16] + 48))(v1, 1, v0[15]) == 1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[12];
    (*(v0[23] + 8))(v0[24], v0[22]);
    (*(v3 + 104))(v2, enum case for DIPError.Code.unexpectedDaemonState(_:), v4);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_6:

    v12 = v0[1];

    return v12();
  }

  sub_100461A88(v1, v0[17], type metadata accessor for MobileDocumentProviderRequestState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if ((EnumCaseMultiPayload - 1) >= 2)
    {
      v20 = v0[17];
      v21 = v0[5];
      v22 = *v20;
      v0[26] = *v20;
      v25 = (v21 + *v21);
      v23 = swift_task_alloc();
      v0[27] = v23;
      *v23 = v0;
      v23[1] = sub_100461378;

      return v25(v22);
    }

    else
    {
      sub_1004619C8(v0[17]);
      v14 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88, &protocol conformance descriptor for AsyncMapSequence<A, B>.Iterator);
      v15 = swift_task_alloc();
      v0[25] = v15;
      *v15 = v0;
      v15[1] = sub_100460C4C;
      v16 = v0[22];
      v17 = v0[18];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v17, 0, 0, v0 + 2, v16, v14);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 3) < 3)
    {
      v7 = v0[23];
      v6 = v0[24];
      v8 = v0[22];
      v10 = v0[13];
      v9 = v0[14];
      v11 = v0[12];
      sub_1004619C8(v0[17]);
      (*(v10 + 104))(v9, enum case for DIPError.Code.unexpectedDaemonState(_:), v11);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v7 + 8))(v6, v8);
      goto LABEL_6;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v24 = sub_1005056DC;
      v18 = swift_task_alloc();
      v0[29] = v18;
      *v18 = v0;
      v19 = sub_10046148C;
    }

    else
    {
      v24 = sub_100504E08;
      v18 = swift_task_alloc();
      v0[31] = v18;
      *v18 = v0;
      v19 = sub_100461684;
    }

    v18[1] = v19;

    return v24();
  }
}

uint64_t sub_100461378()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_100461E64;
  }

  else
  {
    v2 = sub_1004618DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046148C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_100461E74;
  }

  else
  {
    v2 = sub_1004615A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004615A0()
{
  v1 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88, &protocol conformance descriptor for AsyncMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  v0[25] = v2;
  *v2 = v0;
  v2[1] = sub_100460C4C;
  v3 = v0[22];
  v4 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 2, v3, v1);
}

uint64_t sub_100461684(char a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_100461784, 0, 0);
}

uint64_t sub_100461784()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844AC0, &qword_1006E4D70);
  AsyncThrowingStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);
  v4 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88, &protocol conformance descriptor for AsyncMapSequence<A, B>.Iterator);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_100460C4C;
  v6 = v0[22];
  v7 = v0[18];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 2, v6, v4);
}

uint64_t sub_1004618DC()
{
  v1 = sub_1000BA30C(&qword_100844B08, &qword_100844AF8, &qword_1006E4E88, &protocol conformance descriptor for AsyncMapSequence<A, B>.Iterator);
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_100460C4C;
  v3 = *(v0 + 176);
  v4 = *(v0 + 144);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v4, 0, 0, v0 + 16, v3, v1);
}

uint64_t sub_1004619C8(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentProviderRequestState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100461A24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentProviderRequestState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100461A88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100461B08(uint64_t a1)
{
  v4 = *(type metadata accessor for MobileDocumentProviderAuxiliaryView() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_10042C3E4(a1, v1 + v5);
}

uint64_t sub_100461BF8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100461C88(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100041F04;

  return sub_10042C124(a1, v1 + v5);
}

uint64_t sub_100461D60()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100461D98(uint64_t a1)
{
  sub_100461E0C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WebPresentmentResponse();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100461E0C()
{
  if (!qword_100844BB0)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_100844BB0);
    }
  }
}

char *sub_100461E7C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = result;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
      v12 = *(v10 - 8);
      result = (v10 - 8);
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = (v6)(&v19, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v20;
      if (v20)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    v14 = v19;
    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v14;
    if ((result & 1) == 0)
    {
      result = sub_1003C5110(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v16 = *(v8 + 2);
    v15 = *(v8 + 3);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_1003C5110((v15 > 1), v16 + 1, 1, v8);
      v17 = v16 + 1;
      v8 = result;
    }

    *(v8 + 2) = v17;
    v18 = &v8[16 * v16];
    *(v18 + 4) = v21;
    *(v18 + 5) = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_100462018@<X0>(uint64_t a1@<X8>)
{
  v21 = type metadata accessor for ISO18013PresentmentType();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v20 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v20 - v14;
  __chkstk_darwin(v13);
  v16 = *(v6 + 104);
  v16(&v20 - v17, enum case for DIPError.Code.idcsUnknownReaderAuthAlgorithm(_:), v5);
  v16(v15, enum case for DIPError.Code.idcsMisformattedReaderAuthCerts(_:), v5);
  v16(v12, enum case for DIPError.Code.idcsMisformattedReaderAuthSignature(_:), v5);
  v16(v9, enum case for DIPError.Code.idcsInvalidReaderAuthSignature(_:), v5);
  COSESignatureValidator.init(errorCodeUnknownAlgorithm:errorCodeInvalidPublicKey:errorCodeMisformattedSignature:errorCodeInvalidSignature:)();
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  v18 = CBOREncoder.init()();
  *(a1 + *(type metadata accessor for WebPresentmentRequestAuthenticator(0) + 20)) = v18;
  (*(v2 + 104))(v4, enum case for ISO18013PresentmentType.webRequestForwarding(_:), v21);

  CBOREncoder.presentmentType.setter();
}

uint64_t type metadata accessor for WebPresentmentRequestAuthenticator(uint64_t a1)
{
  result = qword_100844C48;
  if (!qword_100844C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100462304(void (**a1)(char *, uint64_t), uint64_t a2, unint64_t a3, uint64_t a4)
{
  v142 = a4;
  v140 = type metadata accessor for DIPError.Code();
  v139 = *(v140 - 8);
  __chkstk_darwin(v140);
  v141 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  __chkstk_darwin(v8 - 8);
  v10 = &v131 - v9;
  v160 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v154 = *(v160 - 8);
  v11 = __chkstk_darwin(v160);
  v149 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v159 = &v131 - v13;
  v14 = type metadata accessor for COSE_Sign1();
  v147 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v150 = &v131 - v19;
  __chkstk_darwin(v18);
  v21 = &v131 - v20;
  v22 = ISO18013ReaderRequest.readerAuthAll.getter();
  v157 = a3 >> 60;
  v158 = a2;
  v148 = a3;
  v155 = v10;
  v156 = v14;
  if (!v22)
  {
    goto LABEL_80;
  }

  v23 = v22;
  v24 = *(v22 + 16);
  if (!v24)
  {

    a3 = v148;
    goto LABEL_80;
  }

  v137 = v21;
  v146 = a1;
  v25 = 0;
  v153 = v22 + ((*(v147 + 80) + 32) & ~*(v147 + 80));
  if (a2)
  {
    v26 = 0;
  }

  else
  {
    v26 = v148 == 0xC000000000000000;
  }

  v27 = !v26;
  LODWORD(v145) = v27;
  v151 = (v148 >> 62);
  v152 = v147 + 16;
  v28 = __OFSUB__(HIDWORD(a2), a2);
  v136 = v28;
  v135 = HIDWORD(a2) - a2;
  v138 = BYTE6(v148);
  v29 = (v147 + 8);
  while (1)
  {
    if (v25 >= *(v23 + 16))
    {
      goto LABEL_182;
    }

    (*(v147 + 16))(v17, v153 + *(v147 + 72) * v25, v14);
    v30 = COSE_Sign1.x509Chain.getter();
    if (!v30)
    {
      goto LABEL_31;
    }

    if (!v30[2])
    {

LABEL_31:
      v32 = 0;
      v31 = 0xF000000000000000;
LABEL_32:
      if (v157 > 0xE)
      {
        sub_10000B8B8(v158, v148);

        sub_10000BD94(v32, v31);
        goto LABEL_172;
      }

      goto LABEL_33;
    }

    v32 = v30[4];
    v31 = v30[5];
    sub_10000B8B8(v32, v31);

    if (v31 >> 60 == 15)
    {
      goto LABEL_32;
    }

    v33 = v151;
    if (v157 <= 0xE)
    {
      break;
    }

LABEL_33:
    v39 = v158;
    v40 = v148;
    sub_10000B8B8(v158, v148);
    sub_10000BD94(v32, v31);
    v41 = v39;
    v42 = v40;
LABEL_34:
    sub_10000BD94(v41, v42);
LABEL_35:
    ++v25;
    v14 = v156;
    (*v29)(v17, v156);
    v10 = v155;
    if (v24 == v25)
    {

      a3 = v148;
      a2 = v158;
LABEL_80:
      v67 = ISO18013ReaderRequest.docRequests.getter();
      v153 = *(v67 + 16);
      if (!v153)
      {
        v73 = _swiftEmptyArrayStorage;
LABEL_169:

        __chkstk_darwin(v114);
        v129 = v143;
        v130 = v142;
        v115 = sub_100461E7C(sub_1004648F4, &v127, v73);

        result = v115;
        if (!*(v115 + 2))
        {

          v117 = *(v139 + 104);
          v118 = v141;
          v119 = v140;
          v117(v141, enum case for DIPError.Code.webPresentmentRequestNotAuthenticated(_:), v140);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_100464910(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          v128 = 0x8000000100717710;
          v129 = 94;
          v127 = 0xD000000000000060;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          goto LABEL_174;
        }

        return result;
      }

      v68 = 0;
      v151 = (v147 + 48);
      v152 = v154 + 16;
      v145 = (v147 + 8);
      if (a2)
      {
        v69 = 0;
      }

      else
      {
        v69 = a3 == 0xC000000000000000;
      }

      v70 = !v69;
      LODWORD(v138) = v70;
      v71 = a3 >> 62;
      v72 = __OFSUB__(HIDWORD(a2), a2);
      v136 = v72;
      v135 = HIDWORD(a2) - a2;
      v137 = BYTE6(a3);
      v146 = (v154 + 8);
      v73 = _swiftEmptyArrayStorage;
      v147 = v154 + 32;
      v150 = v67;
      while (1)
      {
        if (v68 >= *(v67 + 16))
        {
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
        }

        v77 = v71;
        v78 = (*(v154 + 80) + 32) & ~*(v154 + 80);
        v79 = *(v154 + 72);
        (*(v154 + 16))(v159, v67 + v78 + v79 * v68, v160);
        ISO18013ReaderRequest.DocRequest.readerAuth.getter();
        if ((*v151)(v10, 1, v14) == 1)
        {
          sub_10000BE18(v10, &qword_10083F168, &unk_1006DEC40);
          goto LABEL_115;
        }

        v80 = COSE_Sign1.x509Chain.getter();
        (*v145)(v10, v14);
        if (!v80)
        {
          goto LABEL_115;
        }

        if (!v80[2])
        {

LABEL_115:
          v82 = 0;
          v81 = 0xF000000000000000;
LABEL_116:
          if (v157 > 0xE)
          {
            sub_10000B8B8(v158, a3);
            goto LABEL_118;
          }

LABEL_91:
          v74 = v158;
          sub_10000B8B8(v158, a3);
          sub_10000BD94(v82, v81);
          v75 = v74;
          v76 = a3;
LABEL_92:
          sub_10000BD94(v75, v76);
          goto LABEL_93;
        }

        v82 = v80[4];
        v81 = v80[5];
        sub_10000B8B8(v82, v81);

        if (v81 >> 60 == 15)
        {
          goto LABEL_116;
        }

        if (v157 > 0xE)
        {
          goto LABEL_91;
        }

        v83 = v81 >> 62;
        if (v81 >> 62 == 3)
        {
          break;
        }

        if (v83 > 1)
        {
          if (v83 != 2)
          {
            goto LABEL_134;
          }

          v93 = *(v82 + 16);
          v92 = *(v82 + 24);
          v45 = __OFSUB__(v92, v93);
          v91 = v92 - v93;
          if (v45)
          {
            goto LABEL_188;
          }

          if (v77 <= 1)
          {
            goto LABEL_131;
          }
        }

        else if (v83)
        {
          LODWORD(v91) = HIDWORD(v82) - v82;
          if (__OFSUB__(HIDWORD(v82), v82))
          {
            goto LABEL_187;
          }

          v91 = v91;
          if (v77 <= 1)
          {
LABEL_131:
            v94 = v137;
            if (v77)
            {
              v94 = v135;
              if (v136)
              {
                goto LABEL_185;
              }
            }

            goto LABEL_137;
          }
        }

        else
        {
          v91 = BYTE6(v81);
          if (v77 <= 1)
          {
            goto LABEL_131;
          }
        }

LABEL_135:
        if (v77 != 2)
        {
          if (!v91)
          {
LABEL_144:
            v99 = v158;
            sub_10000B8B8(v158, a3);
            sub_10000BD94(v99, a3);
            goto LABEL_118;
          }

LABEL_143:
          v98 = v158;
          sub_10000B8B8(v158, a3);
          sub_10000BD94(v98, a3);
          v75 = v82;
          v76 = v81;
          goto LABEL_92;
        }

        v96 = *(v158 + 16);
        v95 = *(v158 + 24);
        v45 = __OFSUB__(v95, v96);
        v94 = v95 - v96;
        if (v45)
        {
          goto LABEL_186;
        }

LABEL_137:
        if (v91 != v94)
        {
          goto LABEL_143;
        }

        if (v91 < 1)
        {
          goto LABEL_144;
        }

        if (v83 > 1)
        {
          if (v83 != 2)
          {
            memset(v162, 0, 14);
            v97 = v158;
            sub_10000B8B8(v158, a3);
            sub_1000363B4(v97, a3);
            sub_1000363B4(v82, v81);
            goto LABEL_157;
          }

          v100 = *(v82 + 24);
          v134 = *(v82 + 16);
          v133 = v100;
          v101 = v158;
          sub_10000B8B8(v158, a3);
          sub_1000363B4(v101, a3);
          sub_1000363B4(v82, v81);
          v102 = __DataStorage._bytes.getter();
          if (v102)
          {
            v103 = v102;
            v104 = __DataStorage._offset.getter();
            v105 = v134;
            if (__OFSUB__(v134, v104))
            {
              goto LABEL_197;
            }

            v132 = &v134[v103 - v104];
          }

          else
          {
            v132 = 0;
            v105 = v134;
          }

          if (__OFSUB__(v133, v105))
          {
            goto LABEL_196;
          }

          __DataStorage._length.getter();
          v111 = v132;
          v97 = v158;
          v112 = v158;
          a3 = v148;
        }

        else
        {
          if (!v83)
          {
            v162[0] = v82;
            LOWORD(v162[1]) = v81;
            BYTE2(v162[1]) = BYTE2(v81);
            BYTE3(v162[1]) = BYTE3(v81);
            BYTE4(v162[1]) = BYTE4(v81);
            BYTE5(v162[1]) = BYTE5(v81);
            v134 = v162 + BYTE6(v81);
            v97 = v158;
            sub_10000B8B8(v158, a3);
            sub_1000363B4(v97, a3);
            sub_1000363B4(v82, v81);
LABEL_157:
            v109 = v144;
            sub_1000C2B5C(v162, v97, a3, &v161);
            v144 = v109;
            if (v109)
            {
              goto LABEL_199;
            }

            sub_10000BD94(v97, a3);
            sub_10000BD94(v97, a3);
            sub_10000BD94(v82, v81);
            v110 = v161;
            goto LABEL_166;
          }

          v133 = v82;
          v134 = ((v82 >> 32) - v82);
          if (v82 >> 32 < v82)
          {
            goto LABEL_195;
          }

          v106 = v158;
          sub_10000B8B8(v158, a3);
          sub_1000363B4(v106, a3);
          sub_1000363B4(v82, v81);
          v107 = __DataStorage._bytes.getter();
          if (v107)
          {
            v132 = v107;
            v108 = __DataStorage._offset.getter();
            if (__OFSUB__(v133, v108))
            {
              goto LABEL_198;
            }

            v133 = &v132[v133 - v108];
          }

          else
          {
            v133 = 0;
          }

          __DataStorage._length.getter();
          v111 = v133;
          v97 = v158;
          v112 = v158;
        }

        v113 = v144;
        sub_1000C2B5C(v111, v112, a3, v162);
        v144 = v113;
        if (v113)
        {
LABEL_199:
          result = sub_10000BD94(v97, a3);
          __break(1u);
          return result;
        }

        sub_10000BD94(v97, a3);
        sub_10000BD94(v97, a3);
        sub_10000BD94(v82, v81);
        v110 = v162[0];
LABEL_166:
        sub_10000BD94(v82, v81);
        if (v110)
        {
          goto LABEL_119;
        }

LABEL_93:
        (*v146)(v159, v160);
        v14 = v156;
        v71 = v77;
LABEL_94:
        ++v68;
        v10 = v155;
        v67 = v150;
        if (v153 == v68)
        {
          goto LABEL_169;
        }
      }

      if (v82)
      {
        v84 = 0;
      }

      else
      {
        v84 = v81 == 0xC000000000000000;
      }

      v86 = !v84 || v77 < 3;
      if (((v86 | v138) & 1) == 0)
      {
        sub_10000B8B8(0, 0xC000000000000000);
        sub_10000BD94(0, 0xC000000000000000);
LABEL_118:
        sub_10000BD94(v82, v81);
LABEL_119:
        v87 = *v147;
        (*v147)(v149, v159, v160);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v163 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100172E0C(0, v73[2] + 1, 1);
          v73 = v163;
        }

        v90 = v73[2];
        v89 = v73[3];
        v71 = v77;
        if (v90 >= v89 >> 1)
        {
          sub_100172E0C((v89 > 1), v90 + 1, 1);
          v71 = v77;
          v73 = v163;
        }

        v73[2] = v90 + 1;
        v87(v73 + v78 + v90 * v79, v149, v160);
        a3 = v148;
        v14 = v156;
        goto LABEL_94;
      }

LABEL_134:
      v91 = 0;
      if (v77 <= 1)
      {
        goto LABEL_131;
      }

      goto LABEL_135;
    }
  }

  v34 = v31 >> 62;
  if (v31 >> 62 != 3)
  {
    if (v34 <= 1)
    {
      if (v34)
      {
        LODWORD(v38) = HIDWORD(v32) - v32;
        if (__OFSUB__(HIDWORD(v32), v32))
        {
          goto LABEL_190;
        }

        v38 = v38;
        if (v151 <= 1)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v38 = BYTE6(v31);
        if (v151 <= 1)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_40;
    }

    if (v34 == 2)
    {
      v48 = *(v32 + 16);
      v47 = *(v32 + 24);
      v45 = __OFSUB__(v47, v48);
      v38 = v47 - v48;
      if (v45)
      {
        goto LABEL_189;
      }

      goto LABEL_46;
    }

    v38 = 0;
    if (v151 > 1)
    {
      goto LABEL_40;
    }

LABEL_47:
    v49 = v33;
    v46 = v138;
    if (v49)
    {
      v46 = v135;
      if (v136)
      {
        goto LABEL_183;
      }
    }

LABEL_49:
    if (v38 == v46)
    {
      if (v38 < 1)
      {
        goto LABEL_177;
      }

      if (v34 > 1)
      {
        if (v34 != 2)
        {
          memset(v162, 0, 14);
          v50 = v158;
          v51 = v148;
          sub_10000B8B8(v158, v148);
          sub_1000363B4(v32, v31);
          goto LABEL_70;
        }

        v54 = *(v32 + 16);
        v134 = *(v32 + 24);
        sub_10000B8B8(v158, v148);
        sub_1000363B4(v32, v31);
        v55 = __DataStorage._bytes.getter();
        if (v55)
        {
          v132 = v54;
          v56 = v55;
          v57 = __DataStorage._offset.getter();
          v58 = v132;
          if (__OFSUB__(v132, v57))
          {
            goto LABEL_193;
          }

          v133 = &v132[v56 - v57];
        }

        else
        {
          v58 = v54;
          v133 = 0;
        }

        if (__OFSUB__(v134, v58))
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (!v34)
        {
          v162[0] = v32;
          LOWORD(v162[1]) = v31;
          BYTE2(v162[1]) = BYTE2(v31);
          BYTE3(v162[1]) = BYTE3(v31);
          BYTE4(v162[1]) = BYTE4(v31);
          BYTE5(v162[1]) = BYTE5(v31);
          v134 = v162 + BYTE6(v31);
          v50 = v158;
          v51 = v148;
          sub_10000B8B8(v158, v148);
          sub_1000363B4(v32, v31);
LABEL_70:
          v62 = v144;
          sub_1000C2B5C(v162, v50, v51, &v163);
          v144 = v62;
          sub_10000BD94(v32, v31);
          sub_10000BD94(v50, v51);
          v63 = v163;
          goto LABEL_77;
        }

        v133 = v32;
        v134 = ((v32 >> 32) - v32);
        if (v32 >> 32 < v32)
        {
          goto LABEL_191;
        }

        sub_10000B8B8(v158, v148);
        sub_1000363B4(v32, v31);
        v59 = __DataStorage._bytes.getter();
        if (v59)
        {
          v60 = v59;
          v61 = __DataStorage._offset.getter();
          if (__OFSUB__(v133, v61))
          {
            goto LABEL_194;
          }

          v133 = v133 - v61 + v60;
        }

        else
        {
          v133 = 0;
        }
      }

      __DataStorage._length.getter();
      v64 = v158;
      v65 = v148;
      v66 = v144;
      sub_1000C2B5C(v133, v158, v148, v162);
      v144 = v66;
      sub_10000BD94(v32, v31);
      sub_10000BD94(v64, v65);
      v63 = v162[0];
LABEL_77:
      sub_10000BD94(v32, v31);
      if (v63)
      {
        goto LABEL_180;
      }

      goto LABEL_35;
    }

    goto LABEL_55;
  }

  if (v32)
  {
    v35 = 0;
  }

  else
  {
    v35 = v31 == 0xC000000000000000;
  }

  v37 = !v35 || v151 < 3;
  if (((v37 | v145) & 1) == 0)
  {
    sub_10000B8B8(0, 0xC000000000000000);
    sub_10000BD94(0, 0xC000000000000000);
    v32 = 0;
    goto LABEL_179;
  }

  v38 = 0;
LABEL_46:
  v33 = v151;
  if (v151 <= 1)
  {
    goto LABEL_47;
  }

LABEL_40:
  if (v33 == 2)
  {
    v44 = *(v158 + 16);
    v43 = *(v158 + 24);
    v45 = __OFSUB__(v43, v44);
    v46 = v43 - v44;
    if (v45)
    {
      goto LABEL_184;
    }

    goto LABEL_49;
  }

  if (v38)
  {
LABEL_55:
    v52 = v158;
    v53 = v148;
    sub_10000B8B8(v158, v148);
    sub_10000BD94(v52, v53);
    v41 = v32;
    v42 = v31;
    goto LABEL_34;
  }

LABEL_177:
  v125 = v158;
  v126 = v148;
  sub_10000B8B8(v158, v148);
  sub_10000BD94(v125, v126);
LABEL_179:
  sub_10000BD94(v32, v31);
LABEL_180:

LABEL_172:
  v120 = v156;
  v121 = *(v147 + 32);
  v122 = v150;
  v121(v150, v17, v156);
  v123 = v137;
  v121(v137, v122, v120);
  v124 = v144;
  sub_100463718(v123, v146, v142);
  if (!v124)
  {
    (*v29)(v123, v120);
    return 0;
  }

  (*v29)(v123, v120);
  v117 = *(v139 + 104);
  v118 = v141;
  v119 = v140;
LABEL_174:
  v117(v118, enum case for DIPError.Code.internalError(_:), v119);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100464910(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v128 = 0x8000000100717710;
  v129 = 100;
  v127 = 0xD000000000000060;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_100463718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a1;
  v5 = type metadata accessor for Logger();
  v56 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v8 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v47 = &v44 - v11;
  v12 = sub_100007224(&qword_100841DF8, &qword_1006DEC50);
  __chkstk_darwin(v12 - 8);
  v49 = &v44 - v13;
  v14 = type metadata accessor for ISO18013SessionTranscript();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v50 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ISO18013DCAPISessionTranscript();
  (*(*(v20 - 8) + 16))(v17, a3, v20);
  v21 = *(v15 + 104);
  v48 = v17;
  v21(v17, enum case for ISO18013SessionTranscript.digitalCredentialAPI(_:), v14);
  v51 = a2;
  v22 = ISO18013ReaderRequest.docRequests.getter();
  v23 = *(v22 + 16);
  if (v23)
  {
    v45 = v7;
    v46 = v5;
    v64 = _swiftEmptyArrayStorage;
    sub_100172DCC(0, v23, 0);
    v24 = v64;
    v26 = *(v8 + 16);
    v25 = v8 + 16;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v44 = v22;
    v28 = v22 + v27;
    v59 = *(v25 + 56);
    v60 = v26;
    v57 = v10 + 32;
    v58 = (v25 - 8);
    v29 = v47;
    v30 = v10;
    do
    {
      v31 = v62;
      v32 = v63;
      v33 = v25;
      v60(v62, v28, v63);
      ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
      (*v58)(v31, v32);
      v64 = v24;
      v35 = v24[2];
      v34 = v24[3];
      if (v35 >= v34 >> 1)
      {
        sub_100172DCC((v34 > 1), v35 + 1, 1);
        v24 = v64;
      }

      v24[2] = v35 + 1;
      (*(v30 + 32))(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v35, v29, v61);
      v28 += v59;
      --v23;
      v25 = v33;
    }

    while (v23);

    v7 = v45;
    v5 = v46;
    v36 = v56;
  }

  else
  {
    v36 = v56;
  }

  ISO18013ReaderRequest.deviceRequestInfo.getter();
  v37 = v50;
  ISO18013ReaderAuthenticationAll.init(sessionTranscript:itemsRequestBytesAll:deviceRequestsInfoBytes:)();
  type metadata accessor for WebPresentmentRequestAuthenticator(0);
  sub_100464910(&qword_100844BE0, &type metadata accessor for ISO18013ReaderAuthenticationAll, &protocol conformance descriptor for ISO18013ReaderAuthenticationAll);
  sub_100464910(&qword_100841E08, &type metadata accessor for ISO18013ReaderAuthenticationAll, &protocol conformance descriptor for ISO18013ReaderAuthenticationAll);
  v38 = v53;
  v39 = v55;
  COSESignatureValidator.validateReaderAuth<A>(_:authenticationStructure:encoder:)();
  if (!v39)
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "WebPresentmentRequestAuthenticator ReaderAuthAll successfully validated", v42, 2u);
    }

    (*(v36 + 8))(v7, v5);
  }

  return (*(v52 + 8))(v37, v38);
}

uint64_t sub_100463D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v62 = a4;
  v57 = a3;
  v58 = a2;
  v5 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = __chkstk_darwin(v5);
  v51 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v52 = &v51 - v8;
  v56 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v9 = *(v56 - 8);
  __chkstk_darwin(v56);
  v11 = &v51 - v10;
  v12 = type metadata accessor for Logger();
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = __chkstk_darwin(v12);
  v55 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v51 - v15;
  v17 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  __chkstk_darwin(v17 - 8);
  v19 = &v51 - v18;
  v20 = type metadata accessor for COSE_Sign1();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  ISO18013ReaderRequest.DocRequest.readerAuth.getter();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000BE18(v19, &qword_10083F168, &unk_1006DEC40);
    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "No readerAuth found on document request, skipping.", v26, 2u);
    }

    result = (*(v59 + 8))(v16, v60);
    v28 = v62;
    *v62 = 0;
    v28[1] = 0;
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    ISO18013ReaderRequest.DocRequest.itemsRequest.getter();
    v29 = v61;
    v30 = sub_1004643FC(v23, v11, v57);
    if (v29)
    {
      (*(v9 + 8))(v11, v56);
      (*(v21 + 8))(v23, v20);
      v32 = v55;
      defaultLogger()();
      v34 = v52;
      v33 = v53;
      v35 = *(v53 + 16);
      v36 = v54;
      v35(v52, a1, v54);
      swift_errorRetain();
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        LODWORD(v58) = v38;
        v40 = v39;
        v57 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v63 = v61;
        *v40 = 136315394;
        v35(v51, v34, v36);
        v41 = String.init<A>(describing:)();
        v43 = v42;
        (*(v33 + 8))(v34, v36);
        v44 = sub_100141FE4(v41, v43, &v63);

        *(v40 + 4) = v44;
        *(v40 + 12) = 2112;
        swift_errorRetain();
        v45 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 14) = v45;
        v46 = v57;
        *v57 = v45;
        _os_log_impl(&_mh_execute_header, v37, v58, "Error while authenticating documentRequest %s reader auth: %@", v40, 0x16u);
        sub_10000BE18(v46, &unk_100833B50, &unk_1006D8FB0);

        sub_10000BB78(v61);

        result = (*(v59 + 8))(v55, v60);
      }

      else
      {

        (*(v33 + 8))(v34, v36);
        result = (*(v59 + 8))(v32, v60);
      }

      v50 = v62;
      *v62 = 0;
      v50[1] = 0;
    }

    else
    {
      v47 = v30;
      v48 = v31;
      (*(v9 + 8))(v11, v56);
      result = (*(v21 + 8))(v23, v20);
      v49 = v62;
      *v62 = v47;
      v49[1] = v48;
    }
  }

  return result;
}

uint64_t sub_1004643FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a3;
  v35 = a1;
  v38 = a2;
  v4 = type metadata accessor for ISO18013ReaderRequest.ItemsRequest();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Logger();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_10083C078, &unk_1006E4F40);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ISO18013SessionTranscript();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ISO18013ReaderAuthentication();
  v36 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ISO18013DCAPISessionTranscript();
  (*(*(v18 - 8) + 16))(v14, v34, v18);
  (*(v12 + 104))(v14, enum case for ISO18013SessionTranscript.digitalCredentialAPI(_:), v11);
  v19 = *(v8 + 16);
  v34 = v7;
  v19(v10, v38, v7);
  ISO18013ReaderAuthentication.init(sessionTranscript:itemsRequestBytes:)();
  type metadata accessor for WebPresentmentRequestAuthenticator(0);
  sub_100464910(&qword_100844BE8, &type metadata accessor for ISO18013ReaderAuthentication, &protocol conformance descriptor for ISO18013ReaderAuthentication);
  sub_100464910(&qword_100841E18, &type metadata accessor for ISO18013ReaderAuthentication, &protocol conformance descriptor for ISO18013ReaderAuthentication);
  v20 = v37;
  COSESignatureValidator.validateReaderAuth<A>(_:authenticationStructure:encoder:)();
  if (v20)
  {
    (*(v36 + 8))(v17, v15);
  }

  else
  {
    v37 = v15;
    v22 = v28;
    v21 = v29;
    defaultLogger()();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "WebPresentmentRequestAuthenticator ReaderAuth successfully validated", v25, 2u);
    }

    (*(v22 + 8))(v21, v30);
    v26 = v31;
    CBOREncodedCBOR.value.getter();
    v3 = ISO18013ReaderRequest.ItemsRequest.docType.getter();
    (*(v32 + 8))(v26, v33);
    (*(v36 + 8))(v17, v37);
  }

  return v3;
}

uint64_t sub_100464910(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10046496C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for COSESignatureValidator();
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

uint64_t sub_100464A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for COSESignatureValidator();
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

uint64_t sub_100464AF4(uint64_t a1)
{
  result = type metadata accessor for COSESignatureValidator();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CBOREncoder();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100464B78()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "WebPresentmentRequestReleaser priming for release", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 112);
  os_unfair_lock_lock((v9 + 20));
  *(v9 + 16) = 1;
  os_unfair_lock_unlock((v9 + 20));
}

void sub_100464CDC()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "WebPresentmentRequestReleaser reseting", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = *(v1 + 112);
  os_unfair_lock_lock((v9 + 20));
  *(v9 + 16) = 0;
  os_unfair_lock_unlock((v9 + 20));
}

uint64_t sub_100464E34(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100464EF4, v1, 0);
}

uint64_t sub_100464EF4()
{
  v1 = *(v0[3] + 112);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    v7 = (*(v0[3] + 120) + **(v0[3] + 120));
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = sub_100465138;
    v4 = v0[2];

    return v7(v4);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.unexpectedDaemonState(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100465138()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100465250()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1004652B4()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return _swift_task_switch(sub_1004652D4, v2, 0);
}

uint64_t sub_1004652D4()
{
  sub_100464B78();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100465364(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100027B9C;

  return sub_100464E34(a1);
}

uint64_t sub_100465400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for DaemonAnalytics.WebPresentmentOutcomeTag();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for IdentityDocumentElement();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for ISO18013DCAPISessionTranscript();
  v4[27] = v8;
  v4[28] = *(v8 - 8);
  v4[29] = swift_task_alloc();
  v9 = type metadata accessor for COSEKey();
  v4[30] = v9;
  v4[31] = *(v9 - 8);
  v4[32] = swift_task_alloc();
  v10 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.Parameters();
  v4[33] = v10;
  v4[34] = *(v10 - 8);
  v4[35] = swift_task_alloc();
  v11 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation();
  v4[36] = v11;
  v4[37] = *(v11 - 8);
  v4[38] = swift_task_alloc();
  v12 = sub_100007224(&qword_100844E40, &unk_1006E50D0);
  v4[39] = v12;
  v4[40] = *(v12 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v13 = type metadata accessor for ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters();
  v4[43] = v13;
  v4[44] = *(v13 - 8);
  v4[45] = swift_task_alloc();
  v14 = type metadata accessor for ISO18013RequestForwardingRequest();
  v4[46] = v14;
  v4[47] = *(v14 - 8);
  v4[48] = swift_task_alloc();
  v15 = type metadata accessor for WebPresentmentRequest();
  v4[49] = v15;
  v4[50] = *(v15 - 8);
  v4[51] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v4[52] = v16;
  v4[53] = *(v16 - 8);
  v4[54] = swift_task_alloc();
  v17 = type metadata accessor for URL();
  v4[55] = v17;
  v4[56] = *(v17 - 8);
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_10046592C, 0, 0);
}

uint64_t sub_10046592C(uint64_t a1)
{
  v3 = v1[56];
  v2 = v1[57];
  v4 = v1[55];
  PartialWebPresentmentRequest.originatingURL.getter();
  v5 = URL.serializedOrigin.getter();
  v7 = v6;
  v1[58] = v5;
  v1[59] = v6;
  (*(v3 + 8))(v2, v4);
  if (v7)
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "WebPresentmentResponseBuilder buildResponse invoked.", v10, 2u);
    }

    v12 = v1[53];
    v11 = v1[54];
    v13 = v1[52];
    v14 = v1[17];

    (*(v12 + 8))(v11, v13);
    v15 = v14[10];
    v16 = v14[11];
    sub_10000BA08(v14 + 7, v15);
    v20 = (*(v16 + 8) + **(v16 + 8));
    v17 = swift_task_alloc();
    v1[60] = v17;
    *v17 = v1;
    v17[1] = sub_100465D48;

    return v20(v15, v16);
  }

  else
  {
    (*(v1[19] + 104))(v1[20], enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:), v1[18]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v19 = v1[1];

    return v19();
  }
}

uint64_t sub_100465D48()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1004689B8;
  }

  else
  {
    v2 = sub_100465E5C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100465E5C()
{
  v1 = v0[17];
  v2 = v1[10];
  v3 = v1[11];
  sub_10000BA08(v1 + 7, v2);
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  v0[62] = v4;
  *v4 = v0;
  v4[1] = sub_100465F8C;
  v5 = v0[51];

  return v7(v5, v2, v3);
}

uint64_t sub_100465F8C()
{
  *(*v1 + 504) = v0;

  if (v0)
  {
    v2 = sub_100468C70;
  }

  else
  {
    v2 = sub_1004660A0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004660A0()
{
  v1 = *(v0 + 504);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v2 = WebPresentmentRequest.requestData.getter();
  v4 = v3;
  sub_10046CE04(&qword_100844E48, &type metadata accessor for ISO18013RequestForwardingRequest, &protocol conformance descriptor for ISO18013RequestForwardingRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v1)
  {
    (*(*(v0 + 400) + 8))(*(v0 + 408), *(v0 + 392));
    sub_10000B90C(v2, v4);

LABEL_8:
    v34 = *(v0 + 176);
    v33 = *(v0 + 184);
    v35 = *(v0 + 160);
    v36 = *(v0 + 168);
    v37 = *(v0 + 152);
    v58 = *(v0 + 144);
    type metadata accessor for DaemonAnalytics();
    (*(v34 + 104))(v33, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v36);
    swift_errorRetain();
    static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

    (*(v34 + 8))(v33, v36);
    (*(v37 + 104))(v35, enum case for DIPError.Code.internalError(_:), v58);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v38 = *(v0 + 8);

    return v38();
  }

  v5 = *(v0 + 336);
  v6 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v47 = *(v0 + 312);
  v49 = *(v0 + 280);
  v9 = *(v0 + 272);
  v52 = *(v0 + 288);
  v55 = *(v0 + 264);
  sub_10000B90C(v2, v4);

  ISO18013RequestForwardingRequest.encryptionInfo.getter();
  Base64URLEncodedCBOR.value.getter();
  v10 = *(v6 + 8);
  v10(v5, v47);
  ISO18013RequestForwardingEncryptionInformation.parameters.getter();
  (*(v8 + 8))(v7, v52);
  if ((*(v9 + 88))(v49, v55) != enum case for ISO18013RequestForwardingEncryptionInformation.Parameters.dcapi(_:))
  {
    v24 = *(v0 + 400);
    v54 = *(v0 + 392);
    v57 = *(v0 + 408);
    v51 = *(v0 + 384);
    v25 = *(v0 + 368);
    v26 = *(v0 + 376);
    v28 = *(v0 + 152);
    v27 = *(v0 + 160);
    v29 = *(v0 + 144);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
    (*(v28 + 104))(v27, enum case for DIPError.Code.webPresentmentUnknownEncryptionProtocol(_:), v29);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v26 + 8))(v51, v25);
    (*(v24 + 8))(v57, v54);
    goto LABEL_8;
  }

  v12 = *(v0 + 352);
  v11 = *(v0 + 360);
  v13 = *(v0 + 344);
  v14 = *(v0 + 280);
  v15 = *(v0 + 256);
  v16 = *(v0 + 240);
  v17 = *(v0 + 248);
  (*(*(v0 + 272) + 96))(v14, *(v0 + 264));
  (*(v12 + 32))(v11, v14, v13);
  ISO18013RequestForwardingEncryptionInformation.DCAPIEncryptionParameters.recipientPublicKey.getter();
  v18 = COSEKey.publicKeyData.getter();
  v20 = v19;
  *(v0 + 512) = v18;
  *(v0 + 520) = v19;
  (*(v17 + 8))(v15, v16);
  if (v20 >> 60 == 15)
  {
    v21 = *(v0 + 400);
    v53 = *(v0 + 392);
    v56 = *(v0 + 408);
    v22 = *(v0 + 376);
    v48 = *(v0 + 368);
    v50 = *(v0 + 384);
    v23 = *(v0 + 352);
    v45 = *(v0 + 344);
    v46 = *(v0 + 360);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for DIPError.Code.webPresentmentInvalidEncryptionInformation(_:), *(v0 + 144));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v23 + 8))(v46, v45);
    (*(v22 + 8))(v50, v48);
    (*(v21 + 8))(v56, v53);
    goto LABEL_8;
  }

  v30 = *(v0 + 328);
  v31 = *(v0 + 312);
  ISO18013RequestForwardingRequest.encryptionInfo.getter();
  Base64URLEncodedCBOR.stringValue.getter();
  v10(v30, v31);

  ISO18013DCAPISessionTranscript.init(encryptionInfoString:origin:)();
  sub_100469280(*(v0 + 384), *(v0 + 128), *(v0 + 232));
  type metadata accessor for CBOREncoder();
  swift_allocObject();
  CBOREncoder.init()();
  sub_10046CE04(&qword_100844E50, &type metadata accessor for ISO18013DCAPISessionTranscript, &protocol conformance descriptor for ISO18013DCAPISessionTranscript);
  *(v0 + 528) = dispatch thunk of CBOREncoder.encode<A>(_:)();
  *(v0 + 536) = v32;
  v40 = *(v0 + 136);

  v41 = *(v40 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_permissionsValidationTask);
  v42 = swift_task_alloc();
  *(v0 + 544) = v42;
  v43 = sub_100007224(&qword_10083B4C0, &qword_1006D98B8);
  v44 = sub_100007224(&qword_100833B90, &qword_1006D95C0);
  *v42 = v0;
  v42[1] = sub_100466B94;

  return Task.value.getter(v0 + 96, v41, v43, v44, &protocol self-conformance witness table for Error);
}

uint64_t sub_100466B94()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_100468F28;
  }

  else
  {
    v2 = sub_100466CA8;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100466CA8()
{
  v1 = v0[12];
  v0[70] = v1;
  if (*(v1 + 16))
  {
    v2 = v0[25];
    v3 = v0[16];
    v63 = *v3;
    v0[71] = *v3;
    v4 = v3[1];
    v0[72] = v4;
    v88 = v0;
    v5 = objc_opt_self();
    v61 = v4;

    isa = Data._bridgeToObjectiveC()().super.isa;
    v7 = Data._bridgeToObjectiveC()().super.isa;
    v8 = v0;
    v60 = [v5 webProposalHPKEWithSessionTranscript:isa rawEncryptionKey:v7];

    v10 = sub_10046C3B4(v9);

    sub_100007224(&qword_100834970, &qword_1006DA7E0);
    v11 = static _DictionaryStorage.copy(original:)();
    v12 = v11;
    v13 = 0;
    v14 = v10[8];
    v65 = v10 + 8;
    v15 = 1 << *(v10 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v14;
    v18 = (v15 + 63) >> 6;
    v73 = v2;
    v87 = (v2 + 8);
    v75 = v11 + 64;
    v69 = v11;
    v71 = v10;
    v67 = v18;
    if ((v16 & v14) != 0)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_11:
        v22 = v19 | (v13 << 6);
        v23 = (v10[6] + 16 * v22);
        v24 = *v23;
        v25 = *(v10[7] + 8 * v22);
        v26 = *(v25 + 16);
        if (v26)
        {
          v80 = *v23;
          v82 = v22;
          v85 = v17;
          v86 = v13;
          v78 = v23[1];

          sub_100172D4C(0, v26, 0);
          v27 = v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
          v28 = *(v73 + 72);
          v29 = *(v73 + 16);
          do
          {
            v30 = v8[26];
            v31 = v8[24];
            v29(v30, v27, v31);
            v32 = IdentityDocumentElement.identifier.getter();
            v34 = v33;
            (*v87)(v30, v31);
            v36 = _swiftEmptyArrayStorage[2];
            v35 = _swiftEmptyArrayStorage[3];
            if (v36 >= v35 >> 1)
            {
              sub_100172D4C((v35 > 1), v36 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v36 + 1;
            v37 = &_swiftEmptyArrayStorage[2 * v36];
            v37[4] = v32;
            v37[5] = v34;
            v27 += v28;
            --v26;
            v8 = v88;
          }

          while (v26);

          v12 = v69;
          v10 = v71;
          v13 = v86;
          v18 = v67;
          v22 = v82;
          v17 = v85;
          v38 = v78;
          v24 = v80;
        }

        else
        {
        }

        *(v75 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
        v39 = (v12[6] + 16 * v22);
        *v39 = v24;
        v39[1] = v38;
        *(v12[7] + 8 * v22) = _swiftEmptyArrayStorage;
        v40 = v12[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          break;
        }

        v12[2] = v42;
        if (!v17)
        {
          goto LABEL_6;
        }
      }

LABEL_28:
      __break(1u);
    }

    else
    {
LABEL_6:
      v20 = v13;
      while (1)
      {
        v13 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          __break(1u);
          goto LABEL_28;
        }

        if (v13 >= v18)
        {
          break;
        }

        v21 = v65[v13];
        ++v20;
        if (v21)
        {
          v19 = __clz(__rbit64(v21));
          v17 = (v21 - 1) & v21;
          goto LABEL_11;
        }
      }

      v43 = v8[17];
      v44 = v8[14];
      v45 = v8[15];

      v8[2] = v63;
      v8[3] = v61;
      v8[4] = v44;
      v8[5] = v45;
      v8[6] = v60;
      v8[7] = v12;
      sub_10000BA08((v43 + 16), *(v43 + 40));
      sub_10000B8B8(v44, v45);
      v46 = swift_task_alloc();
      v8[73] = v46;
      *v46 = v8;
      v46[1] = sub_1004674B4;

      sub_10015F8B0((v8 + 2));
    }
  }

  else
  {
    v66 = v0[66];
    v68 = v0[67];
    v70 = v0[64];
    v72 = v0[65];
    v47 = v0[50];
    v81 = v0[49];
    v83 = v0[51];
    v48 = v0[47];
    v77 = v0[46];
    v79 = v0[48];
    v49 = v0[44];
    v74 = v0[43];
    v76 = v0[45];
    v50 = v0[28];
    v62 = v0[27];
    v64 = v0[29];
    v52 = v0[19];
    v51 = v0[20];
    v53 = v0[18];

    (*(v52 + 104))(v51, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v53);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v66, v68);
    sub_10000BD94(v70, v72);
    (*(v50 + 8))(v64, v62);
    (*(v49 + 8))(v76, v74);
    (*(v48 + 8))(v79, v77);
    (*(v47 + 8))(v83, v81);
    v54 = v0[22];
    v55 = v0[23];
    v57 = v0[20];
    v56 = v0[21];
    v58 = v0[19];
    v84 = v0[18];
    type metadata accessor for DaemonAnalytics();
    (*(v54 + 104))(v55, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v56);
    swift_errorRetain();
    static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

    (*(v54 + 8))(v55, v56);
    (*(v58 + 104))(v57, enum case for DIPError.Code.internalError(_:), v84);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v59 = v0[1];

    v59();
  }
}

uint64_t sub_1004674B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {

    v4 = sub_100467CF4;
  }

  else
  {
    v4 = sub_1004675D4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1004675D4()
{
  v1 = *(v0 + 128);
  v2 = (v1 + *(type metadata accessor for DigitalPresentmentEligibleProposalData(0) + 24));
  v3 = v2[3];
  v4 = v2[4];
  sub_10000BA08(v2, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  *(v0 + 608) = v5;
  *v5 = v0;
  v5[1] = sub_100467708;

  return v7(v3, v4);
}

uint64_t sub_100467708(char a1)
{
  *(*v1 + 648) = a1;

  return _swift_task_switch(sub_100467808, 0, 0);
}

uint64_t sub_100467808()
{
  if (*(v0 + 648) == 1)
  {
    v1 = *(*(v0 + 136) + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_transactionHistorySaveTask);
    v2 = swift_task_alloc();
    *(v0 + 616) = v2;
    v3 = sub_100007224(&qword_100843250, &qword_1006E0DF0);
    *v2 = v0;
    v2[1] = sub_100468054;

    return Task<>.value.getter(v0 + 64, v1, v3);
  }

  else
  {
    v18 = *(v0 + 528);
    v19 = *(v0 + 536);
    v20 = *(v0 + 512);
    v21 = *(v0 + 520);
    v4 = *(v0 + 400);
    v29 = *(v0 + 392);
    v30 = *(v0 + 408);
    v28 = *(v0 + 384);
    v5 = *(v0 + 376);
    v26 = *(v0 + 592);
    v27 = *(v0 + 368);
    v6 = *(v0 + 352);
    v24 = *(v0 + 344);
    v25 = *(v0 + 360);
    v7 = *(v0 + 224);
    v22 = *(v0 + 216);
    v23 = *(v0 + 232);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);

    (*(v9 + 104))(v8, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000B90C(v18, v19);
    sub_10000BD94(v20, v21);
    sub_10014B4A8(v0 + 16);

    (*(v7 + 8))(v23, v22);
    (*(v6 + 8))(v25, v24);
    (*(v5 + 8))(v28, v27);
    (*(v4 + 8))(v30, v29);
    v11 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    v15 = *(v0 + 152);
    v31 = *(v0 + 144);
    type metadata accessor for DaemonAnalytics();
    (*(v11 + 104))(v12, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v13);
    swift_errorRetain();
    static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

    (*(v11 + 8))(v12, v13);
    (*(v15 + 104))(v14, enum case for DIPError.Code.internalError(_:), v31);
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100467CF4()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[50];
  v20 = v0[49];
  v21 = v0[51];
  v4 = v0[47];
  v18 = v0[46];
  v19 = v0[48];
  v5 = v0[44];
  v17 = v0[45];
  v6 = v0[43];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_10000B90C(v0[66], v0[67]);
  sub_10000BD94(v2, v1);
  sub_10014B4A8((v0 + 2));
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v17, v6);
  (*(v4 + 8))(v19, v18);
  (*(v3 + 8))(v21, v20);
  v10 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v22 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v10 + 104))(v11, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v12);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v10 + 8))(v11, v12);
  (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v22);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100468054()
{
  v1 = *v0;
  v2 = *(*v0 + 576);
  v3 = *(*v0 + 568);
  v4 = *(*v0 + 560);
  v9 = *v0;

  v1[10] = v3;
  v1 += 10;
  v5 = *(v1 - 2);
  v1[68] = *(v1 - 1);
  v1[1] = v2;
  v1[3] = v4;
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v1[69] = v6;
  *v6 = v9;
  v6[1] = sub_10046823C;

  return v8();
}

uint64_t sub_10046823C()
{
  *(*v1 + 640) = v0;

  if (v0)
  {
    v2 = sub_100468648;
  }

  else
  {
    v2 = sub_10046838C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10046838C()
{
  v11 = v0[74];
  v14 = v0[66];
  v15 = v0[67];
  v16 = v0[64];
  v17 = v0[65];
  v1 = v0[48];
  v23 = v0[49];
  v24 = v0[51];
  v21 = v0[46];
  v22 = v0[50];
  v2 = v0[44];
  v19 = v0[45];
  v20 = v0[47];
  v18 = v0[43];
  v3 = v0[28];
  v12 = v0[27];
  v13 = v0[29];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  type metadata accessor for DaemonAnalytics();
  (*(v5 + 104))(v4, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.success(_:), v6);
  sub_10046C728(v1);
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v5 + 8))(v4, v6);
  type metadata accessor for DigitalPresentmentResponse();
  v7 = [v11 responseData];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = dispatch thunk of DigitalPresentmentResponse.__allocating_init(encryptedData:)();
  sub_10000B90C(v14, v15);
  sub_10000BD94(v16, v17);
  sub_10014B4A8((v0 + 2));

  (*(v3 + 8))(v13, v12);
  (*(v2 + 8))(v19, v18);
  (*(v20 + 8))(v1, v21);
  (*(v22 + 8))(v24, v23);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_100468648()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[50];
  v21 = v0[49];
  v22 = v0[51];
  v20 = v0[48];
  v4 = v0[47];
  v19 = v0[46];
  v5 = v0[44];
  v17 = v0[74];
  v18 = v0[45];
  v6 = v0[43];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_10000B90C(v0[66], v0[67]);
  sub_10000BD94(v2, v1);
  sub_10014B4A8((v0 + 2));

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v18, v6);
  (*(v4 + 8))(v20, v19);
  (*(v3 + 8))(v22, v21);
  v10 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v23 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v10 + 104))(v11, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v12);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v10 + 8))(v11, v12);
  (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v23);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1004689B8()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v8 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v1 + 104))(v2, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v3);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v1 + 8))(v2, v3);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100468C70()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  v8 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v1 + 104))(v2, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v3);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v1 + 8))(v2, v3);
  (*(v5 + 104))(v4, enum case for DIPError.Code.internalError(_:), v8);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100468F28()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = v0[50];
  v20 = v0[49];
  v21 = v0[51];
  v4 = v0[47];
  v18 = v0[46];
  v19 = v0[48];
  v5 = v0[44];
  v17 = v0[45];
  v6 = v0[43];
  v7 = v0[28];
  v8 = v0[29];
  v9 = v0[27];
  sub_10000B90C(v0[66], v0[67]);
  sub_10000BD94(v2, v1);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v17, v6);
  (*(v4 + 8))(v19, v18);
  (*(v3 + 8))(v21, v20);
  v10 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v12 = v0[21];
  v14 = v0[19];
  v22 = v0[18];
  type metadata accessor for DaemonAnalytics();
  (*(v10 + 104))(v11, enum case for DaemonAnalytics.WebPresentmentOutcomeTag.failure(_:), v12);
  swift_errorRetain();
  static DaemonAnalytics.sendWebPresentmentOutcomeEvent(outcome:serializedOrigin:certificateChainCount:error:)();

  (*(v10 + 8))(v11, v12);
  (*(v14 + 104))(v13, enum case for DIPError.Code.internalError(_:), v22);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_100469280(uint64_t a1, NSObject *a2, uint64_t (*a3)(char *, void (**)(char *, uint64_t), uint64_t))
{
  v119 = a3;
  v130 = a1;
  v135 = type metadata accessor for Logger();
  v129 = *(v135 - 8);
  v5 = __chkstk_darwin(v135);
  v120 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v124 = &v102 - v8;
  __chkstk_darwin(v7);
  v113 = &v102 - v9;
  v10 = type metadata accessor for DIPError.Code();
  v126 = *(v10 - 8);
  v127 = v10;
  __chkstk_darwin(v10);
  v128 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_100007224(&qword_100844E60, &qword_1006E50F0);
  v12 = __chkstk_darwin(v134);
  v131 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v102 - v14;
  v132 = sub_100007224(&qword_100844E68, &unk_1006E50F8);
  v15 = __chkstk_darwin(v132);
  v122 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v125 = &v102 - v17;
  v136 = type metadata accessor for ISO18013Version();
  v139 = *(v136 - 8);
  v18 = __chkstk_darwin(v136);
  v138 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v137 = &v102 - v21;
  __chkstk_darwin(v20);
  v23 = &v102 - v22;
  v24 = type metadata accessor for ISO18013ReaderRequest();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v115 = (&v102 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __chkstk_darwin(v26);
  v117 = (&v102 - v29);
  __chkstk_darwin(v28);
  v31 = &v102 - v30;
  v32 = sub_100007224(&qword_100844E58, &unk_1006E50E0);
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v114 = &v102 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v116 = &v102 - v37;
  __chkstk_darwin(v36);
  v39 = &v102 - v38;
  v40 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal(0) + 52);
  v118 = a2;
  v41 = a2 + v40;
  v42 = *(v41 + 1);
  if (v42 >> 60 == 15)
  {
    if (*(*sub_10000BA08((v3 + 16), *(v3 + 40)) + 16) == 1)
    {
      v43 = v124;
      defaultLogger()();
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = v135;
      if (v46)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "Bypassing consistency checks due to developer test mode being disabled", v48, 2u);
      }

      v49 = v129;
      return (*(v49 + 8))(v43, v47);
    }

    (*(v126 + 104))(v128, enum case for DIPError.Code.webPresentmentTrustedAuthenticationCertificateMissing(_:), v127);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v47 = v135;
    goto LABEL_22;
  }

  v108 = v3;
  v111 = *v41;
  sub_10000B8B8(v111, v42);
  ISO18013RequestForwardingRequest.deviceRequest.getter();
  Base64URLEncodedCBOR.value.getter();
  v51 = *(v33 + 8);
  v50 = v33 + 8;
  v107 = v51;
  v51(v39, v32);
  ISO18013ReaderRequest.version.getter();
  v54 = *(v25 + 8);
  v53 = v25 + 8;
  v52 = v54;
  v54(v31, v24);
  static ISO18013ReaderRequest.supportedVersion.getter();
  static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
  v121 = sub_10046CE04(&qword_100844E70, &type metadata accessor for ISO18013Version, &protocol conformance descriptor for ISO18013Version);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v104 = v52;
    v102 = v50;
    v103 = v32;
    v105 = v53;
    v106 = v24;
    v112 = v42;
    v56 = v139;
    v124 = v23;
    v57 = v136;
    v59 = v139 + 32;
    v58 = *(v139 + 32);
    v60 = v133;
    v58(v133, v137, v136);
    v61 = v134;
    v58((v60 + *(v134 + 48)), v138, v57);
    v62 = v131;
    sub_10046CE4C(v60, v131);
    v110 = *(v61 + 48);
    v63 = v125;
    v58(v125, v62, v57);
    v64 = *(v56 + 8);
    v64(v110 + v62, v57);
    sub_10046CEBC(v60, v62);
    v65 = v63 + *(v132 + 36);
    v66 = v62 + *(v61 + 48);
    v109 = v59;
    v58(v65, v66, v57);
    v110 = v64;
    v139 = v56 + 8;
    v64(v62, v57);
    if (dispatch thunk of static Comparable.<= infix(_:_:)())
    {
      v67 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_10000BE18(v63, &qword_100844E68, &unk_1006E50F8);
      if (v67)
      {
        v110(v124, v57);
        v68 = v116;
        ISO18013RequestForwardingRequest.deviceRequest.getter();
        v69 = v117;
        v70 = v103;
        Base64URLEncodedCBOR.value.getter();
        v107(v68, v70);
        v71 = v111;
        v72 = v112;
        v73 = v123;
        sub_10046A2A8(v111, v112, v69, v118, v119);
        v47 = v135;
        if (v73)
        {
LABEL_10:
          v104(v69, v106);
          sub_10000BD94(v71, v72);
LABEL_22:
          v93 = [objc_opt_self() standardUserDefaults];
          static DaemonInternalDefaultsKeys.WebPresentment.disableFirstPartyRequestConsistencyCheck.getter();
          v94 = String._bridgeToObjectiveC()();

          v95 = [v93 BOOLForKey:v94];

          if (!v95)
          {
            return swift_willThrow();
          }

          v43 = v120;
          defaultLogger()();
          swift_errorRetain();
          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = v43;
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            *v99 = 138412290;
            swift_errorRetain();
            v101 = _swift_stdlib_bridgeErrorToNSError();
            *(v99 + 4) = v101;
            *v100 = v101;
            _os_log_impl(&_mh_execute_header, v96, v97, "Disable first party request consistency check flag is enabled. Ignoring the error that occurred during consistency check: %@", v99, 0xCu);
            sub_10000BE18(v100, &unk_100833B50, &unk_1006D8FB0);

            v43 = v98;
          }

          else
          {
          }

          goto LABEL_27;
        }

LABEL_17:
        v104(v69, v106);
        v43 = v113;
        defaultLogger()();
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&_mh_execute_header, v90, v91, "Successfully validated consistency of incoming ISO request against the previously received partial request", v92, 2u);
        }

        sub_10000BD94(v71, v112);

LABEL_27:
        v49 = v129;
        return (*(v49 + 8))(v43, v47);
      }
    }

    else
    {
      sub_10000BE18(v63, &qword_100844E68, &unk_1006E50F8);
    }

    v74 = v137;
    static ISO18013ReaderRequest.supportedVersionSecondEdition.getter();
    v75 = v138;
    static ISO18013ReaderRequest.nextMajorUnsupportedVersion.getter();
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v76 = v133;
      v58(v133, v74, v57);
      v77 = v134;
      v58((v76 + *(v134 + 48)), v75, v57);
      v78 = v131;
      sub_10046CE4C(v76, v131);
      v79 = *(v77 + 48);
      v80 = v122;
      v58(v122, v78, v57);
      v81 = (v78 + v79);
      v82 = v110;
      v110(v81, v57);
      sub_10046CEBC(v76, v78);
      v58((v80 + *(v132 + 36)), (v78 + *(v77 + 48)), v57);
      v83 = v57;
      v84 = v82;
      v82(v78, v83);
      v85 = v124;
      if (dispatch thunk of static Comparable.<= infix(_:_:)())
      {
        v86 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_10000BE18(v80, &qword_100844E68, &unk_1006E50F8);
        v84(v85, v83);
        v47 = v135;
        if (v86)
        {
          v87 = v114;
          ISO18013RequestForwardingRequest.deviceRequest.getter();
          v69 = v115;
          v88 = v103;
          Base64URLEncodedCBOR.value.getter();
          v107(v87, v88);
          v71 = v111;
          v72 = v112;
          v89 = v123;
          sub_10046AA34(v111, v112, v69, v118, v119);
          if (v89)
          {
            goto LABEL_10;
          }

          goto LABEL_17;
        }
      }

      else
      {
        sub_10000BE18(v80, &qword_100844E68, &unk_1006E50F8);
        v82(v85, v83);
        v47 = v135;
      }

      (*(v126 + 104))(v128, enum case for DIPError.Code.webPresentmentUnknownDeviceRequestVersion(_:), v127);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      sub_10000BD94(v111, v112);
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10046A2A8(void (***a1)(char *, uint64_t), unint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v50 = a4;
  v52 = a1;
  v54 = type metadata accessor for DIPError.Code();
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v56 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  __chkstk_darwin(v12 - 8);
  v48 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Logger();
  v14 = *(v53 - 1);
  v15 = __chkstk_darwin(v53);
  v49 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v47 - v17;
  defaultLogger()();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v47 = a3;
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Validating consistency of a first edition request", v21, 2u);
    v6 = v5;
    a3 = v47;
  }

  v22 = *(v14 + 8);
  v23 = v53;
  v22(v18, v53);
  sub_10000BA08((v51 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator), *(v51 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator + 24));
  v24 = sub_100462304(a3, v52, a2, a5);
  if (v6)
  {
    (*(v10 + 104))(v56, enum case for DIPError.Code.internalError(_:), v54);
  }

  else
  {
    if (v24)
    {
      v52 = &v47;
      v25 = v50;
      v26 = *(v50 + 72);
      v55[0] = *(v50 + 64);
      v55[1] = v26;
      v27 = __chkstk_darwin(v24);
      v46 = v55;
      v28 = sub_10035C8E4(sub_1000307C0, &v44, v27);

      if (v28)
      {
        return result;
      }

      v30 = v49;
      defaultLogger()();
      v31 = v48;
      sub_1001774B0(v25, v48);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v52 = v34;
        v35 = v31;
        v36 = swift_slowAlloc();
        v55[0] = v36;
        *v34 = 136315138;
        v37 = *(v35 + 64);
        v38 = *(v35 + 72);

        sub_100177514(v35);
        v39 = sub_100141FE4(v37, v38, v55);

        v40 = v52;
        *(v52 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v32, v33, "Selected proposal contains document type %s, but there is no individual document request that has been authenticated.", v40, 0xCu);
        sub_10000BB78(v36);

        v41 = v49;
        v42 = v53;
      }

      else
      {

        sub_100177514(v31);
        v41 = v30;
        v42 = v23;
      }

      v22(v41, v42);
      v53 = "uest authentications";
      v43 = *(v10 + 104);
      v43(v56, enum case for DIPError.Code.webPresentmentRequestNotAuthenticated(_:), v54);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v45 = 0x8000000100717AE0;
      v46 = 261;
      v44 = 0xD000000000000074;
    }

    else
    {
      v53 = ":sessionTranscript:)";
      v43 = *(v10 + 104);
      v43(v56, enum case for DIPError.Code.webPresentmentFirstEditionRequestCannotBeAuthenticatedViaAll(_:), v54);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v45 = 0x8000000100717AE0;
      v46 = 256;
      v44 = 0xD000000000000074;
    }

    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v43(v56, enum case for DIPError.Code.internalError(_:), v54);
  }

  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v45 = 0x8000000100717AE0;
  v46 = 264;
  v44 = 0xD000000000000074;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10046AA34(uint64_t a1, unint64_t a2, void (**a3)(char *, uint64_t), NSObject *a4, uint64_t (*a5)(char *, void (**)(char *, uint64_t), uint64_t))
{
  v118 = a2;
  v119 = a5;
  v111 = a4;
  v123 = a3;
  v117 = a1;
  v5 = type metadata accessor for DigitalPresentmentEligibleProposalData(0);
  __chkstk_darwin(v5 - 8);
  v109 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for DIPError.Code();
  v115 = *(v125 - 8);
  __chkstk_darwin(v125);
  v116 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for ISO18013ReaderRequest();
  v100 = *(v104 - 8);
  v8 = __chkstk_darwin(v104);
  v99 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v97 - v10;
  v11 = type metadata accessor for ISO18013ReaderRequest.DeviceRequestInfo();
  v106 = *(v11 - 8);
  v107 = v11;
  __chkstk_darwin(v11);
  v105 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100007224(&qword_100841DF8, &qword_1006DEC50);
  __chkstk_darwin(v13 - 8);
  v110 = &v97 - v14;
  v15 = type metadata accessor for PartialWebPresentmentDocumentRequest();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PartialWebPresentmentMobileDocumentRequest();
  v112 = *(v19 - 8);
  v113 = v19;
  v20 = __chkstk_darwin(v19);
  v98 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v101 = &v97 - v23;
  __chkstk_darwin(v22);
  v114 = &v97 - v24;
  v122 = type metadata accessor for Logger();
  v25 = *(v122 - 8);
  v26 = __chkstk_darwin(v122);
  v108 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v102 = &v97 - v29;
  __chkstk_darwin(v28);
  v31 = &v97 - v30;
  defaultLogger()();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Validating consistency of a second edition request", v34, 2u);
  }

  v35 = *(v25 + 8);
  v35(v31, v122);
  sub_10000BA08((v121 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator), *(v121 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator + 24));
  v36 = v120;
  v37 = sub_100462304(v123, v117, v118, v119);
  if (!v36)
  {
    v120 = v37;
    PartialWebPresentmentRequest.documentRequest.getter();
    if ((*(v16 + 88))(v18, v15) != enum case for PartialWebPresentmentDocumentRequest.iso18013MobileDocument(_:))
    {

      (*(v16 + 8))(v18, v15);
      v45 = v116;
      v46 = *(v115 + 104);
      v46(v116, enum case for DIPError.Code.webPresentmentUnknownPresentmentProtocol(_:), v125);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v95 = 0x8000000100717C10;
      v96 = 290;
      v94 = 0xD000000000000075;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      v46(v45, enum case for DIPError.Code.internalError(_:), v125);
      goto LABEL_23;
    }

    v121 = v35;
    (*(v16 + 96))(v18, v15);
    v38 = v112;
    v39 = v113;
    v40 = (*(v112 + 32))(v114, v18, v113);
    v41 = v120;
    if (v120)
    {
      v42 = v111;
      isa = v111[9].isa;
      v124[0] = v111[8].isa;
      v124[1] = isa;
      __chkstk_darwin(v40);
      v96 = v124;
      if ((sub_10035C8E4(sub_1000F713C, &v94, v41) & 1) == 0)
      {
        v51 = v108;
        defaultLogger()();
        v52 = v109;
        sub_1001774B0(v42, v109);
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v124[0] = v56;
          *v55 = 136315138;
          v57 = *(v52 + 64);
          v58 = *(v52 + 72);

          sub_100177514(v52);
          v59 = sub_100141FE4(v57, v58, v124);

          *(v55 + 4) = v59;
          _os_log_impl(&_mh_execute_header, v53, v54, "Selected proposal contains document type %s, but there is no individual document request that has been authenticated.", v55, 0xCu);
          sub_10000BB78(v56);
        }

        else
        {

          sub_100177514(v52);
        }

        v121(v51, v122);
        v89 = v116;
        v90 = *(v115 + 104);
        v90(v116, enum case for DIPError.Code.webPresentmentRequestNotAuthenticated(_:), v125);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        v95 = 0x8000000100717C10;
        v96 = 308;
        v94 = 0xD000000000000075;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        (*(v112 + 8))(v114, v113);
        v90(v89, enum case for DIPError.Code.internalError(_:), v125);
        goto LABEL_23;
      }

      return (*(v38 + 8))(v114, v39);
    }

    v47 = v110;
    v48 = v123;
    ISO18013ReaderRequest.deviceRequestInfo.getter();
    v49 = sub_100007224(&qword_100841E68, &unk_1006DECD0);
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(v47, 1, v49) == 1)
    {
      sub_10000BE18(v47, &qword_100841DF8, &qword_1006DEC50);
    }

    else
    {
      v60 = v47;
      v61 = v105;
      CBOREncodedCBOR.value.getter();
      (*(v50 + 8))(v60, v49);
      v62 = ISO18013ReaderRequest.DeviceRequestInfo.useCases.getter();
      (*(v106 + 8))(v61, v107);
      if (v62)
      {
        PartialWebPresentmentMobileDocumentRequest.useCases.getter();
        ISO18013ReaderRequest.docRequests.getter();
        v63 = v48;
        v64 = Array<A>.isEquivalentTo(_:documentRequests:)();

        if ((v64 & 1) == 0)
        {
          v65 = v102;
          defaultLogger()();
          v66 = v101;
          v120 = *(v38 + 16);
          v120(v101, v114, v39);
          v67 = v100;
          v119 = *(v100 + 16);
          v119(v103, v63, v104);
          v68 = Logger.logObject.getter();
          v69 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v110 = v70;
            v118 = swift_slowAlloc();
            v124[0] = v118;
            *v70 = 136315394;
            LODWORD(v117) = v69;
            v71 = v101;
            v111 = v68;
            v72 = v113;
            v120(v98, v101, v113);
            v73 = String.init<A>(describing:)();
            v75 = v74;
            v76 = *(v38 + 8);
            v120 = ((v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v123 = v76;
            (v76)(v71, v72);
            v77 = sub_100141FE4(v73, v75, v124);

            v78 = v110;
            *(v110 + 4) = v77;
            *(v78 + 6) = 2080;
            v79 = v103;
            v80 = v104;
            v119(v99, v103, v104);
            v81 = String.init<A>(describing:)();
            v83 = v82;
            (*(v67 + 8))(v79, v80);
            v84 = sub_100141FE4(v81, v83, v124);

            *(v78 + 14) = v84;
            v85 = v111;
            _os_log_impl(&_mh_execute_header, v111, v117, "Partial mobile document request %s is not equivalent to raw ISO request %s", v78, 0x16u);
            swift_arrayDestroy();

            v86 = v102;
          }

          else
          {

            (*(v67 + 8))(v103, v104);
            v91 = *(v38 + 8);
            v120 = ((v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v123 = v91;
            (v91)(v66, v113);
            v86 = v65;
          }

          v121(v86, v122);
          v92 = v116;
          v93 = *(v115 + 104);
          v93(v116, enum case for DIPError.Code.webPresentmentRequestInconsistent(_:), v125);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
          swift_allocError();
          v95 = 0x8000000100717C10;
          v96 = 302;
          v94 = 0xD000000000000075;
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();
          (v123)(v114, v113);
          v93(v92, enum case for DIPError.Code.internalError(_:), v125);
          goto LABEL_23;
        }

        return (*(v38 + 8))(v114, v39);
      }
    }

    v123 = "document request";
    v87 = v116;
    v88 = *(v115 + 104);
    v88(v116, enum case for DIPError.Code.webPresentmentSecondEditionRequestMissingUseCases(_:), v125);
    v122 = sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    v95 = 0x8000000100717C10;
    v96 = 296;
    v94 = 0xD000000000000075;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v38 + 8))(v114, v39);
    v88(v87, enum case for DIPError.Code.internalError(_:), v125);
    goto LABEL_23;
  }

  (*(v115 + 104))(v116, enum case for DIPError.Code.internalError(_:), v125);
LABEL_23:
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10046CE04(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  v95 = 0x8000000100717C10;
  v96 = 312;
  v94 = 0xD000000000000075;
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
}

uint64_t sub_10046BBCC()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 56));
  v1 = OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_partialRequest;
  v2 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WebPresentmentResponseBuilder(uint64_t a1)
{
  result = qword_100844D90;
  if (!qword_100844D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10046BCFC(uint64_t a1)
{
  result = type metadata accessor for PartialWebPresentmentRequest();
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

uint64_t sub_10046BDA8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char **a7@<X8>)
{
  v14 = sub_10001F370(a3, a3[3]);
  __chkstk_darwin(v14);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_10001F370(a4, a4[3]);
  __chkstk_darwin(v18);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_10046C0C0(a1, a2, *v16, v20, a5, a6);
  sub_10000BB78(a4);
  result = sub_10000BB78(a3);
  *a7 = v22;
  return result;
}

uint64_t sub_10046BF68(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100027B9C;

  return sub_10046CF2C();
}

uint64_t sub_10046C010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10013898C;

  return sub_100465400(a1, a2, a3);
}

char *sub_10046C0C0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a5;
  v30 = a6;
  v10 = type metadata accessor for DigitalPresentmentSessionManager();
  v34[3] = v10;
  v34[4] = &off_100809E48;
  v34[0] = a3;
  v11 = type metadata accessor for WebPresentmentRequestAuthenticator(0);
  v32 = v11;
  v33 = &off_100811F68;
  v12 = sub_100032DBC(v31);
  sub_10046C350(a4, v12);
  type metadata accessor for WebPresentmentResponseBuilder(0);
  v13 = swift_allocObject();
  v14 = sub_10001F370(v34, v10);
  __chkstk_darwin(v14);
  v16 = (&v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_10001F370(v31, v32);
  __chkstk_darwin(v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = *v16;
  *(v13 + 5) = v10;
  *(v13 + 6) = &off_100809E48;
  *(v13 + 2) = v22;
  v23 = &v13[OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_requestAuthenticator];
  v23[3] = v11;
  v23[4] = &off_100811F68;
  v24 = sub_100032DBC(v23);
  sub_10046C350(v20, v24);
  sub_10001F358(a1, (v13 + 56));
  v25 = OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_partialRequest;
  v26 = type metadata accessor for PartialWebPresentmentRequest();
  (*(*(v26 - 8) + 32))(&v13[v25], a2, v26);
  v27 = v30;
  *&v13[OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_transactionHistorySaveTask] = v29;
  *&v13[OBJC_IVAR____TtC8coreidvd29WebPresentmentResponseBuilder_permissionsValidationTask] = v27;
  sub_10000BB78(v31);
  sub_10000BB78(v34);
  return v13;
}

uint64_t sub_10046C350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebPresentmentRequestAuthenticator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_10046C3B4(uint64_t a1)
{
  v2 = type metadata accessor for IdentityDocumentElement();
  v3 = __chkstk_darwin(v2);
  v49 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v53 = &v42 - v6;
  v7 = &_swiftEmptyDictionarySingleton;
  v54 = &_swiftEmptyDictionarySingleton;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return v7;
  }

  v10 = *(v5 + 16);
  v9 = v5 + 16;
  v44 = *(v9 + 64);
  v11 = *(v9 + 56);
  v47 = (v44 + 32) & ~v44;
  v48 = v10;
  v12 = a1 + v47;
  v51 = (v9 + 16);
  v43 = xmmword_1006BF520;
  v45 = v2;
  v46 = v9;
  v50 = v11;
  while (1)
  {
    v52 = v8;
    v14 = v9;
    v48(v53, v12, v2);
    v18 = IdentityDocumentElement.namespace.getter();
    v20 = v19;
    v22 = sub_10003ADCC(v18, v19);
    v23 = v7[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (v7[3] < v25)
    {
      sub_100168464(v25, 1);
      v7 = v54;
      v27 = sub_10003ADCC(v18, v20);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_19;
      }

      v22 = v27;
    }

    if (v26)
    {

      v29 = v7[7];
      v30 = *v51;
      (*v51)(v49, v53, v2);
      v31 = *(v29 + 8 * v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v29 + 8 * v22) = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v31 = sub_1003C573C(0, v31[2] + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v34 = v31[2];
      v33 = v31[3];
      if (v34 >= v33 >> 1)
      {
        v31 = sub_1003C573C((v33 > 1), v34 + 1, 1, v31);
        *(v29 + 8 * v22) = v31;
      }

      v14 = v46;
      v13 = v47;
      v31[2] = v34 + 1;
      v15 = v50;
      v16 = v31 + v13 + v34 * v50;
      v2 = v45;
      v17 = v52;
      v30(v16, v49, v45);
    }

    else
    {
      sub_100007224(&qword_10083C0D8, &qword_1006DA600);
      v35 = v47;
      v36 = swift_allocObject();
      *(v36 + 16) = v43;
      (*v51)((v36 + v35), v53, v2);
      v7[(v22 >> 6) + 8] |= 1 << v22;
      v37 = (v7[6] + 16 * v22);
      *v37 = v18;
      v37[1] = v20;
      *(v7[7] + 8 * v22) = v36;
      v38 = v7[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_18;
      }

      v7[2] = v40;
      v15 = v50;
      v17 = v52;
    }

    v12 += v15;
    v8 = v17 - 1;
    v9 = v14;
    if (!v8)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10046C728(void (*a1)(void, void, void))
{
  v2 = sub_100007224(&qword_10083F168, &unk_1006DEC40);
  __chkstk_darwin(v2 - 8);
  v4 = v58 - v3;
  v5 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v7 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for COSE_Sign1();
  v69 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for ISO18013ReaderRequest();
  v11 = *(v71 - 1);
  v12 = __chkstk_darwin(v71);
  v65 = v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = v58 - v14;
  v16 = sub_100007224(&qword_100844E58, &unk_1006E50E0);
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v62 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v58 - v20;
  v70 = a1;
  ISO18013RequestForwardingRequest.deviceRequest.getter();
  Base64URLEncodedCBOR.value.getter();
  v22 = *(v17 + 8);
  v23 = v21;
  v24 = v68;
  v63 = v17 + 8;
  v64 = v16;
  v61 = v22;
  v22(v23, v16);
  v25 = ISO18013ReaderRequest.readerAuthAll.getter();
  v26 = *(v11 + 8);
  v66 = v11 + 8;
  v60 = v26;
  v26(v15, v71);
  v74 = v8;
  if (v25)
  {
    v58[1] = v25;
    v59 = v4;
    v27 = *(v25 + 16);
    if (v27)
    {
      v28 = *(v69 + 16);
      v29 = v25 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
      v72 = *(v69 + 72);
      v73 = v28;
      v30 = (v69 + 8);
      v31 = _swiftEmptyArrayStorage;
      v28(v10, v29, v8);
      while (1)
      {
        v32 = COSE_Sign1.x509Chain.getter();
        (*v30)(v10, v8);
        if (v32)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1003C5718(0, v31[2] + 1, 1, v31);
          }

          v34 = v31[2];
          v33 = v31[3];
          if (v34 >= v33 >> 1)
          {
            v31 = sub_1003C5718((v33 > 1), v34 + 1, 1, v31);
          }

          v31[2] = v34 + 1;
          v31[v34 + 4] = v32;
          v8 = v74;
        }

        v29 += v72;
        if (!--v27)
        {
          break;
        }

        v73(v10, v29, v8);
      }
    }

    else
    {
      v31 = _swiftEmptyArrayStorage;
    }

    v35 = v31[2];

    v24 = v68;
    v4 = v59;
  }

  else
  {
    v35 = 0;
  }

  v36 = v62;
  ISO18013RequestForwardingRequest.deviceRequest.getter();
  v38 = v64;
  v37 = v65;
  Base64URLEncodedCBOR.value.getter();
  v61(v36, v38);
  v39 = ISO18013ReaderRequest.docRequests.getter();
  v60(v37, v71);
  v40 = *(v39 + 16);
  if (v40)
  {
    v65 = v39;
    v66 = v35;
    v41 = v67 + 16;
    v42 = *(v67 + 16);
    v43 = v39 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v44 = *(v67 + 72);
    v72 = (v69 + 48);
    v73 = v44;
    v45 = (v67 + 8);
    v69 += 8;
    v70 = v42;
    v71 = _swiftEmptyArrayStorage;
    v67 += 16;
    while (1)
    {
      v46 = v41;
      v42(v7, v43, v24);
      ISO18013ReaderRequest.DocRequest.readerAuth.getter();
      v47 = v7;
      v48 = v74;
      if ((*v72)(v4, 1, v74) == 1)
      {
        (*v45)(v47, v24);
        sub_10000BE18(v4, &qword_10083F168, &unk_1006DEC40);
        v7 = v47;
      }

      else
      {
        v49 = COSE_Sign1.x509Chain.getter();
        v50 = v47;
        (*v45)(v47, v24);
        v51 = v4;
        (*v69)(v4, v48);
        if (v49)
        {
          v52 = v71;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1003C5718(0, v52[2] + 1, 1, v52);
          }

          v7 = v50;
          v54 = v52[2];
          v53 = v52[3];
          if (v54 >= v53 >> 1)
          {
            v52 = sub_1003C5718((v53 > 1), v54 + 1, 1, v52);
          }

          v52[2] = v54 + 1;
          v71 = v52;
          v52[v54 + 4] = v49;
          v41 = v67;
          v24 = v68;
          v4 = v51;
          v42 = v70;
          goto LABEL_19;
        }

        v7 = v50;
        v42 = v70;
      }

      v41 = v46;
LABEL_19:
      v43 += v73;
      if (!--v40)
      {

        v35 = v66;
        v55 = v71;
        goto LABEL_30;
      }
    }
  }

  v55 = _swiftEmptyArrayStorage;
LABEL_30:
  v56 = v55[2];

  result = v35 + v56;
  if (__OFADD__(v35, v56))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10046CE04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10046CE4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844E60, &qword_1006E50F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046CEBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100844E60, &qword_1006E50F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046CF2C()
{
  v1 = type metadata accessor for Logger();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10046CFE8, 0, 0);
}

uint64_t sub_10046CFE8(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "WebPresentmentResponseBuilder prepareForRetry invoked. This is a no-op.", v4, 2u);
  }

  v6 = v1[3];
  v5 = v1[4];
  v7 = v1[2];

  (*(v6 + 8))(v5, v7);

  v8 = v1[1];

  return v8();
}

void *sub_10046D128(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t))
{
  v30 = a5;
  v41 = a4(0);
  v9 = __chkstk_darwin(v41);
  v38 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v30 - v13;
  v37 = *(a3 + 16);
  if (v37)
  {
    v14 = 0;
    v34 = (v12 + 8);
    v35 = (v12 + 32);
    v36 = v12 + 16;
    v39 = _swiftEmptyArrayStorage;
    v32 = a2;
    v33 = a3;
    v31 = a1;
    while (v14 < *(a3 + 16))
    {
      v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v16 = *(v12 + 72);
      v17 = a3;
      v18 = a3 + v15 + v16 * v14;
      v19 = v12;
      v20 = a1;
      v21 = v40;
      (*(v12 + 16))(v40, v18, v41);
      v22 = v21;
      a1 = v20;
      v23 = v20(v22);
      if (v5)
      {
        (*v34)(v40, v41);
        v29 = v39;

        return v29;
      }

      if (v23)
      {
        v24 = *v35;
        (*v35)(v38, v40, v41);
        v25 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v30(0, v25[2] + 1, 1);
          v25 = v42;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v30(v27 > 1, v28 + 1, 1);
          v25 = v42;
        }

        v25[2] = v28 + 1;
        v39 = v25;
        result = (v24)(v25 + v15 + v28 * v16, v38, v41);
        a3 = v33;
        a1 = v31;
      }

      else
      {
        result = (*v34)(v40, v41);
        a3 = v17;
      }

      ++v14;
      v12 = v19;
      if (v37 == v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_14:

    return v39;
  }

  return result;
}

uint64_t sub_10046D410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000BBC4(a1, &v14, &qword_100844E78, &qword_1006E5140);
  if (v15)
  {
    sub_10000BE18(a1, &qword_100844E78, &qword_1006E5140);
    sub_10001F358(&v14, &v16);
  }

  else
  {
    v6 = type metadata accessor for DeviceInformationProvider();
    v13[3] = v6;
    v13[4] = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC(v13);
    DeviceInformationProvider.init()();
    type metadata accessor for UserDefaultsConfiguration();
    v13[5] = static UserDefaultsConfiguration.standard.getter();
    v7 = sub_100134AD0();
    sub_100108074(v13);
    v8 = type metadata accessor for WebPresentmentBrandStore();
    v9 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v9 + 112) = [objc_allocWithZone(DIWebPresentmentBrandStore) init];
    v17 = &type metadata for WebPresentmentBrandConfigurationManager;
    v18 = &off_1008109C8;
    v10 = swift_allocObject();
    *&v16 = v10;
    *(v10 + 40) = v8;
    *(v10 + 48) = &off_1008109F0;
    *(v10 + 16) = v9;
    *(v10 + 88) = v6;
    *(v10 + 96) = &protocol witness table for DeviceInformationProvider;
    sub_100032DBC((v10 + 64));
    DeviceInformationProvider.init()();
    v11 = static UserDefaultsConfiguration.standard.getter();
    sub_10000BE18(a1, &qword_100844E78, &qword_1006E5140);
    *(v10 + 56) = v7 & 1;
    *(v10 + 104) = v11;
    if (v15)
    {
      sub_10000BE18(&v14, &qword_100844E78, &qword_1006E5140);
    }
  }

  result = sub_10001F358(&v16, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_10046D5EC()
{
  sub_10000BB78((v0 + 16));
  sub_10000BB78((v0 + 64));

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10046D634(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10046D794, 0, 0);
}

uint64_t sub_10046D794(uint64_t a1)
{
  v2 = UserDefaultsConfiguration.userDefaults.getter();
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.WebPresentment.disablePermissionsCheck.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Disabling permissions check because internal flag is set to true", v7, 2u);
    }

    v8 = v1[11];
    v9 = v1[8];
    v10 = v1[9];

    (*(v10 + 8))(v8, v9);
    goto LABEL_5;
  }

  v15 = v1[2];
  v14 = v1[3];
  sub_10000BA08(v14, v14[3]);
  v16 = sub_100436584(v15);
  v1[12] = v17;
  if (!v17)
  {
LABEL_5:
    v11 = *(v1[2] + 80);

    v12 = v1[1];

    return v12(v11);
  }

  v18 = v14[3];
  v19 = v16;
  v20 = v17;
  sub_10000BA08(v1[3], v18);
  v21 = swift_task_alloc();
  v1[13] = v21;
  *v21 = v1;
  v21[1] = sub_10046DA2C;

  return sub_100436AC0(v19, v20);
}

uint64_t sub_10046DA2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {
    v4 = sub_10046DF00;
  }

  else
  {

    v4 = sub_10046DB48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10046DB48()
{
  v1 = v0[2];
  v3 = v1[8];
  v2 = v1[9];
  if (v1[12])
  {

    Locale.Region.init(_:)();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[7];
  v8 = type metadata accessor for Locale.Region();
  (*(*(v8 - 8) + 56))(v7, v4, 1, v8);
  v9 = sub_10046DF90(v6, v3, v2, v7);
  sub_10000BE18(v7, &unk_100849BA0, &qword_1006D95F0);

  if (v5)
  {
LABEL_5:

    v10 = v0[1];

    return v10();
  }

  v12 = v0[3];
  v13 = *(v0[2] + 80);
  v14 = swift_task_alloc();
  *(v14 + 16) = v12;
  *(v14 + 24) = v9;

  v15 = sub_10046D128(sub_10046E880, v14, v13, &type metadata accessor for IdentityDocumentElement, sub_100173594);

  if (!v15[2])
  {

    defaultLogger()();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Throwing permissions error: filtering would return empty elements", v19, 2u);
    }

    v21 = v0[9];
    v20 = v0[10];
    v22 = v0[8];
    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[4];

    (*(v21 + 8))(v20, v22);
    (*(v24 + 104))(v23, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v25);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_10046DF00()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10046DF90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v35 = a4;
  v7 = type metadata accessor for DIPError.Code();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Logger();
  v9 = *(v36 - 8);
  __chkstk_darwin(v36);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100007224(&unk_100849BA0, &qword_1006D95F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v35 - v13;
  v15 = type metadata accessor for Locale.Region();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v19 = sub_10003ADCC(a2, a3);
    if (v20)
    {
      v21 = (*(a1 + 56) + 16 * v19);
      v23 = *v21;
      v22 = v21[1];
      sub_10000BBC4(v35, v14, &unk_100849BA0, &qword_1006D95F0);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {

        sub_10000BE18(v14, &unk_100849BA0, &qword_1006D95F0);
LABEL_13:
        v28 = sub_1006973D4(v23);

        return v28;
      }

      (*(v16 + 32))(v18, v14, v15);
      v29 = *(v22 + 16);

      if (v29)
      {

        v30 = sub_10003ADF8(v18);
        if (v31)
        {
          v32 = v30;

          v33 = *(*(v22 + 56) + 8 * v32);

          v28 = sub_1006973D4(v33);

          (*(v16 + 8))(v18, v15);
          return v28;
        }
      }

      (*(v16 + 8))(v18, v15);
      goto LABEL_13;
    }
  }

  defaultLogger()();

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100141FE4(a2, a3, &v40);
    _os_log_impl(&_mh_execute_header, v24, v25, "Throwing permissions error: no entry for documentType %s", v26, 0xCu);
    sub_10000BB78(v27);
  }

  (*(v9 + 8))(v11, v36);
  (*(v37 + 104))(v39, enum case for DIPError.Code.webPresentmentMissingRequiredRequestElementPermission(_:), v38);
  v28 = sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return v28;
}

uint64_t sub_10046E4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for IdentityDocumentElement();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v36 - v10;
  v12 = type metadata accessor for Logger();
  v43 = *(v12 - 8);
  v44 = v12;
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10046E8A0();
  v17 = v16;
  v42 = v15;
  v18 = sub_1006932A8(v15, v16, a3);
  v19 = v18;
  if (v18)
  {
  }

  else
  {
    v41 = v18;
    defaultLogger()();
    v20 = *(v6 + 16);
    v20(v11, a1, v5);
    v20(v9, a1, v5);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v23 = 136315650;
      v39 = v21;
      v24 = IdentityDocumentElement.namespace.getter();
      v38 = v22;
      v26 = v25;
      v37 = *(v6 + 8);
      v37(v11, v5);
      v27 = sub_100141FE4(v24, v26, &v45);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = IdentityDocumentElement.identifier.getter();
      v30 = v29;
      v37(v9, v5);
      v31 = sub_100141FE4(v28, v30, &v45);

      *(v23 + 14) = v31;
      *(v23 + 22) = 2080;
      v32 = sub_100141FE4(v42, v17, &v45);

      *(v23 + 24) = v32;
      v33 = v39;
      _os_log_impl(&_mh_execute_header, v39, v38, "Non-fatal permissions error: no permission for element '%s:%s' (canonical identifier '%s')", v23, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      v34 = *(v6 + 8);
      v34(v9, v5);
      v34(v11, v5);
    }

    (*(v43 + 8))(v14, v44);
    v19 = v41;
  }

  return v19 & 1;
}

uint64_t sub_10046E8A0()
{
  v0 = sub_100007224(&qword_100844E80, &qword_1006E5158);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v18 - v4;
  IdentityDocumentElement.namespace.getter();
  ISO18013KnownNamespaces.init(rawValue:)();
  v6 = type metadata accessor for ISO18013KnownNamespaces();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_9;
  }

  sub_10000BBC4(v5, v3, &qword_100844E80, &qword_1006E5158);
  v8 = (*(v7 + 88))(v3, v6);
  if (v8 == enum case for ISO18013KnownNamespaces.iso18013_5_1(_:))
  {
    IdentityDocumentElement.identifier.getter();
    v9 = static ISO18013_5_1_ElementIdentifier.isAgeOverElement(_:)();
  }

  else
  {
    if (v8 != enum case for ISO18013KnownNamespaces.iso23220_1(_:))
    {
      (*(v7 + 8))(v3, v6);
      goto LABEL_9;
    }

    IdentityDocumentElement.identifier.getter();
    v9 = static ISO23220_1_ElementIdentifier.isAgeOverElement(_:)();
  }

  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_9:
    v18 = IdentityDocumentElement.namespace.getter();
    v19 = v14;
    v15._countAndFlagsBits = 58;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = IdentityDocumentElement.identifier.getter();
    String.append(_:)(v16);

    v13 = v18;
    sub_10000BE18(v5, &qword_100844E80, &qword_1006E5158);
    return v13;
  }

  sub_10000BE18(v5, &qword_100844E80, &qword_1006E5158);
  v18 = IdentityDocumentElement.namespace.getter();
  v19 = v11;
  v12._countAndFlagsBits = 0x65766F5F6567613ALL;
  v12._object = 0xEC0000004E4E5F72;
  String.append(_:)(v12);
  return v18;
}

void *sub_10046EB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100020260(a1, v10);
  type metadata accessor for WebPresentmentCABLEClient();
  swift_allocObject();
  sub_10001F640(a2, a3);
  sub_10001F640(a4, a5);
  return sub_10043D09C(v10, a2, a3, a4, a5);
}

uint64_t sub_10046EBC0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[23] = v4;
  v3[24] = *(v4 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = type metadata accessor for WebPresentmentScannableCodeState(0);
  v3[27] = swift_task_alloc();
  v5 = sub_100007224(&qword_100844F88, &qword_1006E52B8);
  v3[28] = v5;
  v3[29] = *(v5 - 8);
  v3[30] = swift_task_alloc();
  v6 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v3[31] = v6;
  v7 = *(v6 - 8);
  v3[32] = v7;
  v3[33] = *(v7 + 64);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v9 = type metadata accessor for PartialWebPresentmentRequest();
  v3[42] = v9;
  v3[43] = *(v9 - 8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v3[47] = v10;
  v3[48] = *(v10 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_10046EF84, v2, 0);
}

uint64_t sub_10046EF84(uint64_t a1)
{
  v172 = v1;
  v2 = v1[22];
  v4 = *(v2 + 168);
  v3 = (v2 + 168);
  if (v4)
  {
    defaultLogger()();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Could not start scannable code session, request already in progress", v7, 2u);
    }

    v8 = v1[51];
    v9 = v1[47];
    v10 = v1[48];
    v12 = v1[24];
    v11 = v1[25];
    v13 = v1[23];

    v14 = *(v10 + 8);
    v14(v8, v9);
    (*(v12 + 104))(v11, enum case for DIPError.Code.webPresentmentRequestAlreadyInProgress(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v15 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_5;
  }

  v161 = v3;
  v29 = v1[46];
  v30 = v1[42];
  v31 = v1[43];
  v32 = v1[20];
  defaultLogger()();
  v33 = *(v31 + 16);
  v33(v29, v32, v30);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();
  v36 = os_log_type_enabled(v34, v35);
  v37 = v1[62];
  v39 = v1[47];
  v38 = v1[48];
  v40 = v1[46];
  v150 = v33;
  if (v36)
  {
    loga = v34;
    v41 = v1[45];
    v168 = v1[47];
    v43 = v1[42];
    v42 = v1[43];
    v160 = v1[62];
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v171[0] = v45;
    *v44 = 136315138;
    v33(v41, v40, v43);
    v46 = String.init<A>(describing:)();
    v47 = v35;
    v49 = v48;
    v154 = *(v42 + 8);
    v154(v40, v43);
    v50 = sub_100141FE4(v46, v49, v171);

    *(v44 + 4) = v50;
    _os_log_impl(&_mh_execute_header, loga, v47, "Starting scannable code session with partialRequest %s", v44, 0xCu);
    sub_10000BB78(v45);

    v51 = *(v38 + 8);
    v51(v160, v168);
  }

  else
  {
    v63 = v1[42];
    v64 = v1[43];

    v154 = *(v64 + 8);
    v154(v40, v63);
    v51 = *(v38 + 8);
    v51(v37, v39);
  }

  v1[63] = v51;
  v65 = v1[41];
  v66 = v1[36];
  v67 = v1[37];
  PartialWebPresentmentRequest.originatingURL.getter();
  v68 = URL.serializedOrigin.getter();
  v70 = v69;
  v1[64] = v69;
  v71 = *(v67 + 8);
  v1[65] = v71;
  v1[66] = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v71)(v65, v66);
  v170 = v51;
  if (!v70)
  {
    v106 = v1[44];
    v107 = v1[42];
    v108 = v1[20];
    defaultLogger()();
    v150(v106, v108, v107);
    v109 = Logger.logObject.getter();
    v167 = static os_log_type_t.error.getter();
    v110 = os_log_type_enabled(v109, v167);
    v111 = v1[52];
    v112 = v1[47];
    v113 = v1[44];
    v114 = v1[42];
    if (v110)
    {
      v153 = v1[47];
      v115 = v1[38];
      v146 = v1[36];
      v116 = swift_slowAlloc();
      logb = v71;
      v117 = swift_slowAlloc();
      v171[0] = v117;
      *v116 = 136315138;
      v149 = v111;
      PartialWebPresentmentRequest.originatingURL.getter();
      v118 = URL.absoluteString.getter();
      v120 = v119;
      (logb)(v115, v146);
      v154(v113, v114);
      v121 = sub_100141FE4(v118, v120, v171);

      *(v116 + 4) = v121;
      _os_log_impl(&_mh_execute_header, v109, v167, "Failed to get serializedOrigin from partialRequest originatingURL %s", v116, 0xCu);
      sub_10000BB78(v117);

      v122 = v149;
      v123 = v153;
    }

    else
    {

      v154(v113, v114);
      v122 = v111;
      v123 = v112;
    }

    v14 = v170;
    v170(v122, v123);
    (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentCouldNotSerializeOrigin(_:), v1[23]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v15 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v137 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v138 = String._bridgeToObjectiveC()();

    [v137 removeObjectForKey:{v138, 0xD00000000000002BLL, 0x8000000100717F00, 85}];

    *v161 = 0;
    v161[1] = 0;
    swift_unknownObjectRelease();
LABEL_5:
    type metadata accessor for Code(0);
    v1[11] = 12;
    swift_errorRetain();
    sub_100473ABC(&qword_1008330E8, 255, type metadata accessor for Code, &unk_1006BEF78);
    v16 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v16 & 1) != 0 || (v1[12] = v15, swift_errorRetain(), sub_100007224(&qword_100833B90, &qword_1006D95C0), v17 = swift_dynamicCast(), v18 = v1[13], , v17) && v18 == 4)
    {
      defaultLogger()();
      swift_errorRetain();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.debug.getter();

      v21 = os_log_type_enabled(v19, v20);
      v22 = v1[50];
      v23 = v1[47];
      if (v21)
      {
        v163 = v1[50];
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v171[0] = v25;
        *v24 = 136315138;
        v1[17] = v15;
        swift_errorRetain();
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100141FE4(v26, v27, v171);

        *(v24 + 4) = v28;
        _os_log_impl(&_mh_execute_header, v19, v20, "Bridging ASC error to cancelled error: %s", v24, 0xCu);
        sub_10000BB78(v25);

        v14(v163, v23);
      }

      else
      {

        v14(v22, v23);
      }

      (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v1[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v52 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v1[16] = v52;
    }

    else
    {
      defaultLogger()();
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      v55 = os_log_type_enabled(v53, v54);
      v56 = v1[49];
      v57 = v1[47];
      if (v55)
      {
        v164 = v1[49];
        v58 = swift_slowAlloc();
        v169 = v14;
        v171[0] = swift_slowAlloc();
        v59 = v171[0];
        *v58 = 136315138;
        v1[15] = v15;
        swift_errorRetain();
        v60 = String.init<A>(describing:)();
        v62 = sub_100141FE4(v60, v61, v171);

        *(v58 + 4) = v62;
        _os_log_impl(&_mh_execute_header, v53, v54, "Bridging ASC error to service unavailable error: %s", v58, 0xCu);
        sub_10000BB78(v59);

        v169(v164, v57);
      }

      else
      {

        v14(v56, v57);
      }

      (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v1[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v135 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v1[14] = v135;
    }

    AsyncThrowingStream.Continuation.finish(throwing:)();

    v136 = v1[1];

    return v136();
  }

  defaultLogger()();

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();

  v74 = os_log_type_enabled(v72, v73);
  v165 = v1[61];
  v75 = v1[47];
  v147 = v70;
  v148 = v68;
  log = v71;
  if (v74)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v171[0] = v77;
    *v76 = 136315138;
    *(v76 + 4) = sub_100141FE4(v68, v70, v171);
    _os_log_impl(&_mh_execute_header, v72, v73, "Partial request had commandOrigin %s", v76, 0xCu);
    sub_10000BB78(v77);
  }

  v51(v165, v75);
  v144 = v1[40];
  v155 = v1[39];
  v166 = v1[37];
  v151 = v1[36];
  v78 = v1[35];
  v79 = v1[32];
  v80 = v1[31];
  v141 = v1[34];
  v142 = v1[22];
  v140 = v1[21];
  v143 = *(v142 + 152);
  v81 = *(v79 + 16);
  v81(v78);
  v82 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v83 = swift_allocObject();
  v84 = *(v79 + 32);
  v84(v83 + v82, v78, v80);
  (v81)(v141, v140, v80);
  v85 = swift_allocObject();
  v84(v85 + v82, v141, v80);
  v86 = v143(v142 + 112, sub_1004738A4, v83, sub_100473944, v85);
  v88 = v87;

  v1[67] = v86;
  *v161 = v86;
  v162 = v88;
  *(v142 + 176) = v88;
  swift_unknownObjectRetain();
  v89 = swift_unknownObjectRelease();
  (*(v86 + 192))(v89);
  defaultLogger()();
  v90 = v155;
  v156 = *(v166 + 16);
  v156(v90, v144, v151);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.info.getter();
  v93 = os_log_type_enabled(v91, v92);
  v94 = v1[60];
  v95 = v1[47];
  v96 = v1[39];
  v97 = v1[36];
  if (v93)
  {
    v152 = v1[60];
    v98 = swift_slowAlloc();
    v145 = v95;
    v99 = swift_slowAlloc();
    v171[0] = v99;
    *v98 = 136315138;
    v100 = URL.absoluteString.getter();
    v102 = v101;
    (log)(v96, v97);
    v103 = sub_100141FE4(v100, v102, v171);

    *(v98 + 4) = v103;
    _os_log_impl(&_mh_execute_header, v91, v92, "Got QR code payload from caBLE client: %s", v98, 0xCu);
    sub_10000BB78(v99);

    v104 = v145;
    v105 = v152;
  }

  else
  {

    (log)(v96, v97);
    v105 = v94;
    v104 = v95;
  }

  v170(v105, v104);
  if (_isInternalBuild.getter())
  {
    v124 = UserDefaultsConfiguration.userDefaults.getter();
    URL.absoluteString.getter();
    v125 = String._bridgeToObjectiveC()();

    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v126 = String._bridgeToObjectiveC()();

    [v124 setObject:v125 forKey:v126];
  }

  v127 = v1[30];
  v128 = v1[28];
  v129 = v1[29];
  v156(v1[27], v1[40], v1[36]);
  swift_storeEnumTagMultiPayload();
  AsyncThrowingStream.Continuation.yield(_:)();
  v130 = *(v129 + 8);
  v1[68] = v130;
  v1[69] = (v129 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v130(v127, v128);
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  inited = swift_initStackObject();
  v1[70] = inited;
  *(inited + 20) = 0;
  *(inited + 16) = 0;
  v1[18] = 0;
  v132 = swift_task_alloc();
  v1[71] = v132;
  v132[2] = v1 + 18;
  v132[3] = v86;
  v132[4] = v162;
  v132[5] = v148;
  v132[6] = v147;
  sub_100473ABC(&qword_100844F90, v133, type metadata accessor for WebPresentmentScannableCodeManager, &unk_1006E5260);
  v134 = swift_task_alloc();
  v1[72] = v134;
  *v134 = v1;
  v134[1] = sub_10047039C;

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v134, &unk_1006E52C8);
}

uint64_t sub_10047039C()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  if (v0)
  {
    v3 = *(v2 + 176);

    v4 = sub_100471F0C;
  }

  else
  {
    v3 = *(v2 + 176);

    v4 = sub_1004704EC;
  }

  return _swift_task_switch(v4, v3, 0);
}

void sub_1004704EC()
{
  v169 = v0;
  v1 = v0;
  v2 = v0[73];
  v3 = v0[70];
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_100473B04;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock((v3 + 20));
  sub_100473B38((v3 + 16), v168);
  os_unfair_lock_unlock((v3 + 20));
  if (v2)
  {
    return;
  }

  v6 = v168[0];

  v167 = v1;
  if (v6)
  {
    v163 = v1[65];
    v7 = v1[40];
    v8 = v1[36];
    v9 = v1[22];
    (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v1[23]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v10 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    v163(v7, v8);
    swift_unknownObjectRelease();
    v11 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v12 = String._bridgeToObjectiveC()();

    [v11 removeObjectForKey:{v12, 0xD00000000000002BLL, 0x8000000100717F00, 116}];

    *(v9 + 168) = 0;
    *(v9 + 176) = 0;
    swift_unknownObjectRelease();
    v13 = (v1 + 63);
    goto LABEL_24;
  }

  if (!v1[18] || (objc_opt_self(), (v14 = swift_dynamicCastObjCClass()) == 0))
  {
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "Could not cast returned credential to ASCDigitalIdentityCredential", v35, 2u);
    }

    v159 = v1[65];
    v36 = (v1 + 63);
    v37 = v1[63];
    v38 = v1[53];
    v39 = v1[47];
    v148 = v1[36];
    v151 = v1[40];
    v41 = v1[24];
    v40 = v1[25];
    v42 = v1[23];
    v43 = v167[22];

    v37(v38, v39);
    v13 = v36;
    (*(v41 + 104))(v40, enum case for DIPError.Code.webPresentmentUnexpectedDaemonState(_:), v42);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v10 = swift_allocError();
    v1 = v167;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    v159(v151, v148);
    swift_unknownObjectRelease();
    v44 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v45 = String._bridgeToObjectiveC()();

    [v44 removeObjectForKey:{v45, 0xD00000000000002BLL, 0x8000000100717F00, 121}];

    *(v43 + 168) = 0;
    *(v43 + 176) = 0;
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v15 = v14;
  swift_unknownObjectRetain();
  defaultLogger()();
  swift_unknownObjectRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v1 + 63;
  v20 = v1[63];
  v21 = v1[59];
  v22 = &selRef_setSupportedEncoding_;
  v23 = v1[47];
  if (v18)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v168[0] = v25;
    *v24 = 136315138;
    v26 = v19;
    v27 = [v15 commandResponseData];
    v153 = v21;
    v158 = v20;
    v28 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = Data.base64EncodedString(options:)(0);
    sub_10000B90C(v28, v30);
    v19 = v26;
    v22 = &selRef_setSupportedEncoding_;
    v32 = sub_100141FE4(v31._countAndFlagsBits, v31._object, v168);

    *(v24 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "Received command response data from caBLE client: %s", v24, 0xCu);
    sub_10000BB78(v25);
    v1 = v167;

    v158(v153, v23);
  }

  else
  {

    v20(v21, v23);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  v46 = [v15 v22[342]];
  v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  sub_100473B80();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_10000B90C(v47, v49);

  v50 = v1[5];
  v51 = v1[6];
  v52 = *(v1 + 56);
  defaultLogger()();
  sub_100410C30(v50, v51, v52);
  v53 = Logger.logObject.getter();
  v54 = v1;
  v55 = static os_log_type_t.debug.getter();
  sub_100410B88(v50, v51, v52);
  v56 = os_log_type_enabled(v53, v55);
  v57 = v54[63];
  v154 = v54[47];
  v160 = v54[58];
  v149 = v19;
  v164 = v51;
  if (v56)
  {
    v58 = swift_slowAlloc();
    v145 = v57;
    v59 = swift_slowAlloc();
    v168[0] = v59;
    *v58 = 136315138;
    v54[8] = v50;
    v54[9] = v51;
    *(v54 + 80) = v52;
    v60 = v50;
    sub_100410C30(v50, v51, v52);
    v61 = String.init<A>(describing:)();
    v63 = sub_100141FE4(v61, v62, v168);

    *(v58 + 4) = v63;
    _os_log_impl(&_mh_execute_header, v53, v55, "Decoded command response from data: %s", v58, 0xCu);
    sub_10000BB78(v59);

    v145(v160, v154);
  }

  else
  {
    v60 = v50;

    v57(v160, v154);
  }

  if (v52)
  {
    v64 = v60;
    v152 = v60;
    if (v60 == 0x4E41435F52455355 && v164 == 0xEE0044454C4C4543 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      defaultLogger()();
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v65, v66, "Received cancelled error from caBLE client: user cancelled", v67, 2u);
      }

      v155 = v167[65];
      v68 = v167[63];
      v69 = v167[57];
      v70 = v167[47];
      v144 = v167[40];
      v71 = v167[36];
      v72 = v167[25];
      v73 = v167[24];
      v74 = v167[23];
      v75 = v167[22];

      v68(v69, v70);
      (*(v73 + 104))(v72, enum case for DIPError.Code.webPresentmentCancelled(_:), v74);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v10 = swift_allocError();
      v76 = 136;
    }

    else
    {
      if ((v60 != 0x415F454349564544 || v164 != 0xEE00444554524F42) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        sub_100410C30(v60, v164, 1);
        defaultLogger()();
        sub_100410C30(v60, v164, 1);
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.error.getter();
        sub_100410B88(v64, v164, 1);
        v135 = os_log_type_enabled(v133, v134);
        v136 = v167[63];
        v137 = v167[55];
        v138 = v167[47];
        if (v135)
        {
          v139 = swift_slowAlloc();
          v162 = v136;
          v140 = swift_slowAlloc();
          v168[0] = v140;
          *v139 = 136315138;
          v141 = sub_100141FE4(v64, v164, v168);
          sub_100410B88(v64, v164, 1);
          *(v139 + 4) = v141;
          _os_log_impl(&_mh_execute_header, v133, v134, "Received other error from caBLE client: %s", v139, 0xCu);
          sub_10000BB78(v140);

          v162(v137, v138);
        }

        else
        {
          sub_100410B88(v64, v164, 1);

          v136(v137, v138);
        }

        v1 = v167;
        v157 = v167[65];
        v147 = v167[40];
        v142 = v167[36];
        v75 = v167[22];
        (*(v167[24] + 104))(v167[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v167[23]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v10 = swift_allocError();
        v143 = 142;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        sub_100410B88(v152, v164, 1);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v157(v147, v142);
        goto LABEL_23;
      }

      defaultLogger()();
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        *v126 = 0;
        _os_log_impl(&_mh_execute_header, v124, v125, "Received cancelled error from caBLE client: device aborted", v126, 2u);
      }

      v155 = v167[65];
      v127 = v167[63];
      v128 = v167[56];
      v129 = v167[47];
      v144 = v167[40];
      v71 = v167[36];
      v130 = v167[25];
      v131 = v167[24];
      v132 = v167[23];
      v75 = v167[22];

      v127(v128, v129);
      (*(v131 + 104))(v130, enum case for DIPError.Code.webPresentmentCancelled(_:), v132);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v10 = swift_allocError();
      v76 = 139;
    }

    v143 = v76;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_100410B88(v152, v164, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v77 = v71;
    v1 = v167;
    v155(v144, v77);
LABEL_23:
    swift_unknownObjectRelease();
    v78 = UserDefaultsConfiguration.userDefaults.getter();
    static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
    v79 = String._bridgeToObjectiveC()();

    [v78 removeObjectForKey:{v79, 0xD00000000000002BLL, 0x8000000100717F00, v143}];

    *(v75 + 168) = 0;
    *(v75 + 176) = 0;
    swift_unknownObjectRelease();
    v13 = v149;
LABEL_24:
    v80 = *v13;
    type metadata accessor for Code(0);
    v1[11] = 12;
    swift_errorRetain();
    sub_100473ABC(&qword_1008330E8, 255, type metadata accessor for Code, &unk_1006BEF78);
    v81 = static _ErrorCodeProtocol.~= infix(_:_:)();

    if ((v81 & 1) != 0 || (v1[12] = v10, swift_errorRetain(), sub_100007224(&qword_100833B90, &qword_1006D95C0), v82 = swift_dynamicCast(), v83 = v1[13], , v82) && v83 == 4)
    {
      defaultLogger()();
      swift_errorRetain();
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.debug.getter();

      v86 = os_log_type_enabled(v84, v85);
      v87 = v1[50];
      v88 = v1[47];
      if (v86)
      {
        v89 = swift_slowAlloc();
        v165 = v80;
        v90 = swift_slowAlloc();
        v168[0] = v90;
        *v89 = 136315138;
        v1[17] = v10;
        swift_errorRetain();
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        v91 = String.init<A>(describing:)();
        v93 = sub_100141FE4(v91, v92, v168);

        *(v89 + 4) = v93;
        v1 = v167;
        _os_log_impl(&_mh_execute_header, v84, v85, "Bridging ASC error to cancelled error: %s", v89, 0xCu);
        sub_10000BB78(v90);

        v165(v87, v88);
      }

      else
      {

        v80(v87, v88);
      }

      (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v1[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v94 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v1[16] = v94;
    }

    else
    {
      defaultLogger()();
      swift_errorRetain();
      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.debug.getter();

      v97 = os_log_type_enabled(v95, v96);
      v98 = v1[49];
      v99 = v1[47];
      if (v97)
      {
        v166 = v80;
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v168[0] = v101;
        *v100 = 136315138;
        v1[15] = v10;
        swift_errorRetain();
        v102 = String.init<A>(describing:)();
        v104 = sub_100141FE4(v102, v103, v168);

        *(v100 + 4) = v104;
        v1 = v167;
        _os_log_impl(&_mh_execute_header, v95, v96, "Bridging ASC error to service unavailable error: %s", v100, 0xCu);
        sub_10000BB78(v101);

        v166(v98, v99);
      }

      else
      {

        v80(v98, v99);
      }

      (*(v1[24] + 104))(v1[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v1[23]);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      v105 = swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      v1[14] = v105;
    }

    AsyncThrowingStream.Continuation.finish(throwing:)();

    goto LABEL_36;
  }

  v107 = v167;
  sub_100410C30(v60, v164, 0);
  defaultLogger()();
  sub_100410C30(v60, v164, 0);
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.debug.getter();
  sub_100410B88(v60, v164, 0);
  v110 = os_log_type_enabled(v108, v109);
  v111 = v167[63];
  v112 = v167[54];
  v113 = v167[47];
  if (v110)
  {
    v114 = swift_slowAlloc();
    v161 = v111;
    v115 = swift_slowAlloc();
    v168[0] = v115;
    *v114 = 136315138;
    v116 = Data.base64EncodedString(options:)(0);
    v117 = sub_100141FE4(v116._countAndFlagsBits, v116._object, v168);

    *(v114 + 4) = v117;
    _os_log_impl(&_mh_execute_header, v108, v109, "Received encrypted response from caBLE client: %s", v114, 0xCu);
    sub_10000BB78(v115);

    v107 = v167;

    v161(v112, v113);
  }

  else
  {

    v111(v112, v113);
  }

  v118 = v107[68];
  v156 = v107[65];
  v146 = v107[36];
  v150 = v107[40];
  v119 = v107[30];
  v120 = v107[28];
  v121 = v167[22];
  sub_100410C30(v60, v164, 0);
  WebPresentmentResponse.init(responseData:)();
  v1 = v167;
  swift_storeEnumTagMultiPayload();
  AsyncThrowingStream.Continuation.yield(_:)();
  v118(v119, v120);
  v167[19] = 0;
  AsyncThrowingStream.Continuation.finish(throwing:)();
  sub_100410B88(v60, v164, 0);
  sub_100410B88(v60, v164, 0);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v156(v150, v146);
  swift_unknownObjectRelease();
  v122 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
  v123 = String._bridgeToObjectiveC()();

  [v122 removeObjectForKey:v123];

  *(v121 + 168) = 0;
  *(v121 + 176) = 0;
  swift_unknownObjectRelease();
LABEL_36:

  v106 = v1[1];

  v106();
}

uint64_t sub_100471F0C()
{
  v40 = v0;
  v1 = v0[65];
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[22];
  swift_unknownObjectRelease();
  v1(v2, v3);
  swift_unknownObjectRelease();
  v5 = UserDefaultsConfiguration.userDefaults.getter();
  static DaemonInternalDefaultsKeys.WebPresentment.scannableCodePayloadOutput.getter();
  v6 = String._bridgeToObjectiveC()();

  [v5 removeObjectForKey:v6];

  *(v4 + 168) = 0;
  *(v4 + 176) = 0;
  swift_unknownObjectRelease();
  v7 = v0[73];
  v8 = v0[63];
  type metadata accessor for Code(0);
  v0[11] = 12;
  swift_errorRetain();
  sub_100473ABC(&qword_1008330E8, 255, type metadata accessor for Code, &unk_1006BEF78);
  LOBYTE(v5) = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v5 & 1) != 0 || (v0[12] = v7, swift_errorRetain(), sub_100007224(&qword_100833B90, &qword_1006D95C0), v9 = swift_dynamicCast(), v10 = v0[13], , v9) && v10 == 4)
  {
    defaultLogger()();
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[50];
    v15 = v0[47];
    if (v13)
    {
      v35 = v0[50];
      v16 = swift_slowAlloc();
      v37 = v8;
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315138;
      v0[17] = v7;
      swift_errorRetain();
      sub_100007224(&qword_100833B90, &qword_1006D95C0);
      v18 = String.init<A>(describing:)();
      v20 = sub_100141FE4(v18, v19, &v39);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v11, v12, "Bridging ASC error to cancelled error: %s", v16, 0xCu);
      sub_10000BB78(v17);

      v37(v35, v15);
    }

    else
    {

      v8(v14, v15);
    }

    (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentCancelled(_:), v0[23]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v21 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v0[16] = v21;
  }

  else
  {
    defaultLogger()();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = v0[49];
    v36 = v0[47];
    if (v24)
    {
      v38 = v8;
      v26 = swift_slowAlloc();
      v34 = v25;
      v27 = swift_slowAlloc();
      v39 = v27;
      *v26 = 136315138;
      v0[15] = v7;
      swift_errorRetain();
      v28 = String.init<A>(describing:)();
      v30 = sub_100141FE4(v28, v29, &v39);

      *(v26 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v22, v23, "Bridging ASC error to service unavailable error: %s", v26, 0xCu);
      sub_10000BB78(v27);

      v38(v34, v36);
    }

    else
    {

      v8(v25, v36);
    }

    (*(v0[24] + 104))(v0[25], enum case for DIPError.Code.webPresentmentServiceUnavailable(_:), v0[23]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100473ABC(&qword_100834130, 255, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    v31 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v0[14] = v31;
  }

  AsyncThrowingStream.Continuation.finish(throwing:)();

  v32 = v0[1];

  return v32();
}

uint64_t sub_1004726C4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for WebPresentmentScannableCodeState(0);
  __chkstk_darwin(v2);
  v3 = sub_100007224(&qword_100844F88, &qword_1006E52B8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  swift_storeEnumTagMultiPayload();
  sub_100007224(&qword_100844F78, &qword_1006E5298);
  AsyncThrowingStream.Continuation.yield(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10047281C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a2;
  v9 = type metadata accessor for WebPresentmentCABLEClient();
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_100472970;

  return (sub_10043E374)(a5, a6, v9, &off_100810CF8);
}

uint64_t sub_100472970(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return _swift_task_switch(sub_100472ABC, 0, 0);
  }
}

uint64_t sub_100472ABC()
{
  **(v0 + 16) = *(v0 + 32);
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100472B2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v27 = a2;
  v2 = type metadata accessor for PartialWebPresentmentRequest();
  v28 = *(v2 - 8);
  v29 = v2;
  v30 = *(v28 + 64);
  __chkstk_darwin(v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v32 = &v25 - v6;
  v7 = sub_100007224(&qword_100844F70, &qword_1006E5290);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  type metadata accessor for WebPresentmentScannableCodeState(0);
  (*(v8 + 104))(v10, enum case for AsyncThrowingStream.Continuation.BufferingPolicy.unbounded<A, B>(_:), v7);
  static AsyncThrowingStream.makeStream<>(of:throwing:bufferingPolicy:)();
  (*(v8 + 8))(v10, v7);
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v32, 1, 1, v17);
  v18 = v28;
  v19 = v29;
  (*(v28 + 16))(v4, v26, v29);
  (*(v12 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v11);
  v20 = v18;
  v21 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v22 = (v30 + *(v12 + 80) + v21) & ~*(v12 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v31;
  (*(v20 + 32))(&v23[v21], v4, v19);
  (*(v12 + 32))(&v23[v22], v25, v11);

  sub_1003E653C(0, 0, v32, &unk_1006E52A8, v23);
  AsyncThrowingStream.Continuation.onTermination.setter();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_100472F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_100027B9C;

  return sub_10046EBC0(a5, a6);
}

void sub_100472FF0(uint64_t a1)
{
  v2 = sub_100007224(&qword_100844F80, &qword_1006E52B0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  (*(v3 + 16))(&v7 - v4, a1, v2);
  LODWORD(a1) = (*(v3 + 88))(v5, v2);
  v6 = enum case for AsyncThrowingStream.Continuation.Termination.cancelled<A, B>(_:);
  (*(v3 + 8))(v5, v2);
  if (a1 == v6)
  {
    Task.cancel()();
  }
}

uint64_t sub_100473138()
{
  sub_10000BB78((v0 + 112));

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for WebPresentmentScannableCodeState(uint64_t a1)
{
  result = qword_100845010;
  if (!qword_100845010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047321C()
{
  v1 = type metadata accessor for PartialWebPresentmentRequest();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_100007224(&qword_100844F78, &qword_1006E5298);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}