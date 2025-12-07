unint64_t sub_10000135C()
{
  result = qword_100014098;
  if (!qword_100014098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014098);
  }

  return result;
}

uint64_t sub_1000013E4()
{
  v0 = sub_10000C898();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C8D8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C988();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000C8A8();
  sub_100002374(v6, qword_100014310);
  sub_10000233C(v6, qword_100014310);
  sub_10000C928();
  sub_10000C8C8();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000C8B8();
}

uint64_t sub_1000015F8(uint64_t a1)
{
  v2 = type metadata accessor for FocusEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_1000023D8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10000C6C8();
  return sub_10000243C(a1);
}

uint64_t (*sub_100001688(uint64_t *a1))()
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
  *(v2 + 32) = sub_10000C6A8();
  return sub_1000016FC;
}

void sub_1000016FC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001748()
{
  result = qword_1000140A8;
  if (!qword_1000140A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140A8);
  }

  return result;
}

uint64_t sub_10000179C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002250();
  v5 = sub_1000022F8(&qword_100014100, &unk_10000D2B0);

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100001828()
{
  v0 = qword_100014068;

  return v0;
}

unint64_t sub_100001868()
{
  result = qword_1000140B0;
  if (!qword_1000140B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B0);
  }

  return result;
}

unint64_t sub_1000018C0()
{
  result = qword_1000140B8;
  if (!qword_1000140B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140B8);
  }

  return result;
}

unint64_t sub_100001918()
{
  result = qword_1000140C0;
  if (!qword_1000140C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140C0);
  }

  return result;
}

uint64_t sub_1000019BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014060 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C8A8();
  v3 = sub_10000233C(v2, qword_100014310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100001A84(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_100002250();
  v6 = sub_1000022A4();
  v7 = sub_1000022F8(&qword_100014100, &unk_10000D2B0);
  *v4 = v2;
  v4[1] = sub_100001B6C;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_100001B6C()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_100001C74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001CE8();
  *a1 = result;
  return result;
}

uint64_t sub_100001C9C(uint64_t a1)
{
  v2 = sub_100001748();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001CE8()
{
  v0 = sub_10000C7F8();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100002208(&qword_1000140C8, &qword_10000D268);
  v3 = __chkstk_darwin(v2 - 8);
  v26 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v25 = v24 - v5;
  v6 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  __chkstk_darwin(v6 - 8);
  v8 = v24 - v7;
  v9 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  v12 = sub_10000C898();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C8D8();
  __chkstk_darwin(v16 - 8);
  v17 = sub_10000C988();
  __chkstk_darwin(v17 - 8);
  v18 = sub_10000C8A8();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v24[1] = sub_100002208(&qword_1000140E0, &qword_10000D280);
  sub_10000C928();
  sub_10000C8C8();
  (*(v13 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10000C8B8();
  (*(v19 + 56))(v11, 1, 1, v18);
  v20 = type metadata accessor for FocusEntity(0);
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_10000C678();
  v22 = *(*(v21 - 8) + 56);
  v22(v25, 1, 1, v21);
  v22(v26, 1, 1, v21);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_1000022F8(&qword_1000140E8, &unk_10000D2E8);
  return sub_10000C708();
}

uint64_t sub_100002208(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002250()
{
  result = qword_1000140F0;
  if (!qword_1000140F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140F0);
  }

  return result;
}

unint64_t sub_1000022A4()
{
  result = qword_1000140F8;
  if (!qword_1000140F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000140F8);
  }

  return result;
}

uint64_t sub_1000022F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FocusEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000233C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002374(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1000023D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000243C(uint64_t a1)
{
  v2 = type metadata accessor for FocusEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FocusEntity(uint64_t a1)
{
  result = qword_1000141E8;
  if (!qword_1000141E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002578()
{
  v0 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_10000C898();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C8D8();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10000C988();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C8A8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_10000C828();
  sub_100002374(v10, qword_100014328);
  sub_10000233C(v10, qword_100014328);
  sub_10000C928();
  sub_10000C8C8();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_10000C8B8();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_10000C818();
}

uint64_t sub_10000286C()
{
  v0 = sub_100002208(&qword_100014268, &qword_10000D808);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_10000C8A8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;

  sub_10000C888();
  (*(v7 + 16))(v10, v12, v6);
  sub_100002AD4(v5);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_10000C728();
  v13 = sub_10000C738();
  (*(*(v13 - 8) + 56))(v2, 0, 1, v13);
  sub_10000C748();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_100002AD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C898();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10000C8D8();
  __chkstk_darwin(v7 - 8);
  v8 = sub_10000C988();
  __chkstk_darwin(v8 - 8);
  v9 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  __chkstk_darwin(v9 - 8);
  v11 = &v16[-v10];
  v12 = type metadata accessor for FocusEntity(0);
  sub_100006240(v1 + *(v12 + 24), v11);
  v13 = sub_10000C8A8();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) != 1)
  {
    return (*(v14 + 32))(a1, v11, v13);
  }

  sub_1000062B0(v11, &qword_1000140D8, &qword_10000D278);
  sub_10000C928();
  sub_10000C8C8();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  return sub_10000C8B8();
}

uint64_t sub_100002D94(uint64_t a1)
{
  v1 = sub_100002208(&qword_100014270, &qword_10000D810);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  v5 = sub_100002208(&qword_100014278, qword_10000D818);
  __chkstk_darwin(v5);
  sub_100006310(&qword_1000140E8, type metadata accessor for FocusEntity, &unk_10000D2E8);
  sub_10000C7D8();
  v8._object = 0x800000010000DCF0;
  v8._countAndFlagsBits = 0xD00000000000002FLL;
  sub_10000C7C8(v8);
  (*(v2 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v1);
  sub_10000C7B8();
  (*(v2 + 8))(v4, v1);
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  sub_10000C7C8(v9);
  return sub_10000C7E8();
}

unint64_t sub_100003064()
{
  result = qword_100014120;
  if (!qword_100014120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014120);
  }

  return result;
}

uint64_t sub_1000030C8(uint64_t a1)
{
  sub_100006310(&qword_100014100, type metadata accessor for FocusEntity, &unk_10000D2B0);
  v2 = sub_10000C788();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_100003290@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1000032A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014078 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C828();
  v3 = sub_10000233C(v2, qword_100014328);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10000334C()
{
  result = qword_100014148;
  if (!qword_100014148)
  {
    sub_1000033B0(&qword_100014150, &qword_10000D460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014148);
  }

  return result;
}

uint64_t sub_1000033B0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000033F8(uint64_t a1)
{
  v2 = sub_100006310(&qword_1000140E8, type metadata accessor for FocusEntity, &unk_10000D2E8);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_1000034C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003584;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003584()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100003678(uint64_t a1)
{
  v2 = sub_100006310(&qword_100014140, type metadata accessor for FocusEntity, &unk_10000D4C8);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

void *sub_1000036F4(uint64_t a1)
{
  v3 = type metadata accessor for FocusEntity(0);
  v47 = *(v3 - 8);
  v48 = v3;
  __chkstk_darwin(v3);
  v5 = (v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_10000CAD8();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v58 = _swiftEmptyArrayStorage;
  sub_100004AC0(0, v6 & ~(v6 >> 63), 0);
  v7 = v58;
  if (v49)
  {
    result = sub_10000CA98();
  }

  else
  {
    result = sub_10000CA88();
    v9 = *(a1 + 36);
  }

  v55 = result;
  v56 = v9;
  v57 = v49 != 0;
  if ((v6 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v11 = a1;
    }

    v43 = a1 + 56;
    v44 = v11;
    v41[1] = v1;
    v42 = a1 + 64;
    v45 = v6;
    v46 = a1;
    while (v10 < v6)
    {
      v13 = __OFADD__(v10, 1);
      v14 = v10 + 1;
      if (v13)
      {
        goto LABEL_38;
      }

      v53 = v55;
      v50 = v14;
      v51 = v56;
      v52 = v57;
      sub_100004D64(v55, v56, v57, a1);
      v16 = v15;
      v17 = [v15 modeIdentifier];
      v18 = sub_10000C9B8();
      v20 = v19;

      v21 = [v16 name];
      v22 = sub_10000C9B8();
      v24 = v23;

      v25 = v48;
      v26 = *(v48 + 24);
      v27 = sub_10000C8A8();
      (*(*(v27 - 8) + 56))(v5 + v26, 1, 1, v27);

      *v5 = v18;
      v5[1] = v20;
      v5[2] = v22;
      v5[3] = v24;
      v28 = (v5 + *(v25 + 28));
      *v28 = 0;
      v28[1] = 0;
      v58 = v7;
      v30 = v7[2];
      v29 = v7[3];
      if (v30 >= v29 >> 1)
      {
        sub_100004AC0((v29 > 1), v30 + 1, 1);
        v7 = v58;
      }

      v7[2] = v30 + 1;
      sub_100005504(v5, v7 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v30);
      if (v49)
      {
        v6 = v45;
        a1 = v46;
        result = v53;
        if (!v52)
        {
          goto LABEL_43;
        }

        if (sub_10000CAA8())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        sub_100002208(&qword_100014258, &qword_10000D7F0);
        v12 = sub_10000CA08();
        sub_10000CAF8();
        result = v12(v54, 0);
      }

      else
      {
        v6 = v45;
        a1 = v46;
        result = v53;
        if (v52)
        {
          goto LABEL_44;
        }

        if ((v53 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v31 = 1 << *(v46 + 32);
        if (v53 >= v31)
        {
          goto LABEL_39;
        }

        v32 = v53 >> 6;
        v33 = *(v43 + 8 * (v53 >> 6));
        if (((v33 >> v53) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(v46 + 36) != v51)
        {
          goto LABEL_41;
        }

        v34 = v33 & (-2 << (v53 & 0x3F));
        if (v34)
        {
          v31 = __clz(__rbit64(v34)) | v53 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v35 = v32 << 6;
          v36 = v32 + 1;
          v37 = (v42 + 8 * v32);
          while (v36 < (v31 + 63) >> 6)
          {
            v39 = *v37++;
            v38 = v39;
            v35 += 64;
            ++v36;
            if (v39)
            {
              result = sub_100005568(v53, v51, 0);
              v31 = __clz(__rbit64(v38)) + v35;
              goto LABEL_34;
            }
          }

          result = sub_100005568(v53, v51, 0);
        }

LABEL_34:
        v40 = *(a1 + 36);
        v55 = v31;
        v56 = v40;
        v57 = 0;
      }

      v10 = v50;
      if (v50 == v6)
      {
        sub_100005568(v55, v56, v57);
        return v7;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100003B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10000635C;

  return sub_100005574(a2, a3);
}

uint64_t sub_100003C10(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10000635C;

  return sub_100004F64();
}

unint64_t sub_100003CBC()
{
  result = qword_100014160;
  if (!qword_100014160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014160);
  }

  return result;
}

unint64_t sub_100003D14()
{
  result = qword_100014168;
  if (!qword_100014168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014168);
  }

  return result;
}

uint64_t sub_100003D68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000637C;

  return sub_100005B40(a1);
}

uint64_t sub_100003E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100003ED0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100003ED0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_100003FD4()
{
  result = qword_100014170;
  if (!qword_100014170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014170);
  }

  return result;
}

unint64_t sub_100004028()
{
  result = qword_100014178;
  if (!qword_100014178)
  {
    sub_1000033B0(&qword_100014180, qword_10000D618);
    sub_100006310(&qword_100014138, type metadata accessor for FocusEntity, &unk_10000D468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014178);
  }

  return result;
}

uint64_t sub_1000040DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003064();
  *v5 = v2;
  v5[1] = sub_100003584;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100004190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100006358;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100004248()
{
  result = qword_100014188;
  if (!qword_100014188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014188);
  }

  return result;
}

uint64_t sub_1000042A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100004344;

  return sub_100004F64();
}

uint64_t sub_100004344(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10000448C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_100002208(&qword_1000140D8, &qword_10000D278);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10000455C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002208(&qword_1000140D8, &qword_10000D278);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000460C(uint64_t a1)
{
  sub_1000046A0(319);
  if (v1 <= 0x3F)
  {
    sub_1000046F8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000046A0(uint64_t a1)
{
  if (!qword_1000141F8)
  {
    sub_10000C8A8();
    v1 = sub_10000CA68();
    if (!v2)
    {
      atomic_store(v1, &qword_1000141F8);
    }
  }
}

void sub_1000046F8()
{
  if (!qword_100014200)
  {
    v0 = sub_10000CA68();
    if (!v1)
    {
      atomic_store(v0, &qword_100014200);
    }
  }
}

void *sub_100004748(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002208(&qword_100014248, &unk_10000D7E0);
  v10 = *(type metadata accessor for FocusEntity(0) - 8);
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
  v15 = *(type metadata accessor for FocusEntity(0) - 8);
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

void sub_100004920(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100004994(uint64_t result)
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

  v3 = sub_100004748(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  result = type metadata accessor for FocusEntity(0);
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

void *sub_100004AC0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100004AE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100004AE0(void *result, int64_t a2, char a3, void *a4)
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

  sub_100002208(&qword_100014248, &unk_10000D7E0);
  v10 = *(type metadata accessor for FocusEntity(0) - 8);
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
  v15 = *(type metadata accessor for FocusEntity(0) - 8);
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

uint64_t sub_100004CB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_100004D64(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_10000CAE8();
      sub_1000054B4();
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1000054B4();
    if (sub_10000CAB8() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_10000CAC8();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_10000CA48(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_10000CA58();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

uint64_t sub_100004F64()
{

  return _swift_task_switch(sub_100004FF0, 0, 0);
}

uint64_t sub_100004FF0()
{
  v1 = sub_10000C998();
  v2 = [objc_opt_self() serviceForClientIdentifier:v1];

  *(v0 + 16) = 0;
  v3 = [v2 availableModesWithError:v0 + 16];
  v4 = *(v0 + 16);
  sub_1000054B4();
  sub_100006310(&qword_100014240, sub_1000054B4, &protocol conformance descriptor for NSObject);
  v5 = sub_10000C9F8();
  v6 = v4;

  if (v6)
  {

    if (qword_100014080 != -1)
    {
      swift_once();
    }

    v7 = sub_10000C918();
    sub_10000233C(v7, qword_100014340);
    v8 = sub_10000CA28();
    v9 = v6;
    v10 = sub_10000C8F8();

    if (os_log_type_enabled(v10, v8))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v9;
      *v12 = v4;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v10, v8, "Error querying all available modes: %@", v11, 0xCu);
      sub_1000062B0(v12, &qword_100014250, &qword_10000DA90);
    }

    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v28 = sub_1000036F4(v5);

    sub_100002208(&qword_100014248, &unk_10000D7E0);
    v16 = (type metadata accessor for FocusEntity(0) - 8);
    v17 = *(*v16 + 72);
    v18 = (*(*v16 + 80) + 32) & ~*(*v16 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10000D2A0;
    v20 = (v19 + v18);
    v21 = v16[8];
    v22 = sub_10000C8A8();
    v23 = *(*(v22 - 8) + 56);
    v23(&v20[v21], 1, 1, v22);
    *v20 = 0x7375636F46;
    *(v20 + 1) = 0xE500000000000000;
    *(v20 + 2) = 0x7375636F46;
    *(v20 + 3) = 0xE500000000000000;
    v24 = &v20[v16[9]];
    *v24 = 0xD00000000000001BLL;
    *(v24 + 1) = 0x800000010000DC00;
    v25 = &v20[v17];
    v23(&v25[v16[8]], 1, 1, v22);
    strcpy(v25, "Focus Status");
    v25[13] = 0;
    *(v25 + 7) = -5120;
    strcpy(v25 + 16, "Focus Status");
    v25[29] = 0;
    *(v25 + 15) = -5120;
    v26 = &v25[v16[9]];
    *v26 = 0xD000000000000027;
    *(v26 + 1) = 0x800000010000DC20;
    sub_100004994(v19);

    v27 = *(v0 + 8);

    return v27(v28);
  }
}

unint64_t sub_1000054B4()
{
  result = qword_100014238;
  if (!qword_100014238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014238);
  }

  return result;
}

uint64_t sub_100005504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100005568(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_100005574(uint64_t a1, uint64_t a2)
{
  v2[6] = a1;
  v2[7] = a2;
  v2[8] = *(type metadata accessor for FocusEntity(0) - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000563C, 0, 0);
}

uint64_t sub_10000563C()
{
  v11 = v0;
  if (qword_100014080 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C918();
  sub_10000233C(v1, qword_100014340);

  v2 = sub_10000C8F8();
  v3 = sub_10000CA38();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_10000B360(v5, v4, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "Focus string query for: %{public}s", v6, 0xCu);
    sub_1000061A0(v7);
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_100005808;

  return sub_100004F64();
}

uint64_t sub_100005808(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100005960, 0, 0);
  }
}

void sub_100005960()
{
  v1 = v0[12];
  v17 = *(v1 + 16);
  if (v17)
  {
    v2 = 0;
    v3 = v0[10];
    v4 = v0[8];
    v16 = v0[12];
    while (v2 < *(v1 + 16))
    {
      v6 = v0[6];
      v5 = v0[7];
      v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v8 = *(v4 + 72);
      sub_1000023D8(v0[12] + v7 + v8 * v2, v0[10]);
      v9 = *(v3 + 24);
      v0[2] = *(v3 + 16);
      v0[3] = v9;
      v0[4] = v6;
      v0[5] = v5;
      sub_1000061EC();
      v10 = sub_10000CA78();
      v11 = v0[10];
      if (v10)
      {
        sub_100005504(v11, v0[9]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004AC0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        if (v13 >= v12 >> 1)
        {
          sub_100004AC0((v12 > 1), v13 + 1, 1);
        }

        v14 = v0[9];
        _swiftEmptyArrayStorage[2] = v13 + 1;
        sub_100005504(v14, _swiftEmptyArrayStorage + v7 + v13 * v8);
        v1 = v16;
      }

      else
      {
        sub_10000243C(v11);
      }

      if (v17 == ++v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v15 = v0[1];

    v15(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100005B40(uint64_t a1)
{
  v1[4] = a1;
  v1[5] = *(type metadata accessor for FocusEntity(0) - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100005C08, 0, 0);
}

uint64_t sub_100005C08()
{
  v12 = v0;
  if (qword_100014080 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C918();
  sub_10000233C(v1, qword_100014340);

  v2 = sub_10000C8F8();
  v3 = sub_10000CA38();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v6 = sub_10000C9D8();
    v8 = sub_10000B360(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Focus entities query for: %{public}s", v4, 0xCu);
    sub_1000061A0(v5);
  }

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_100005DEC;

  return sub_100004F64();
}

uint64_t sub_100005DEC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_100005F44, 0, 0);
  }
}

void sub_100005F44()
{
  v1 = v0[9];
  v16 = *(v1 + 16);
  if (v16)
  {
    v2 = 0;
    v15 = v0[7];
    v3 = v0[5];
    while (v2 < *(v1 + 16))
    {
      v4 = v0[7];
      v5 = v0[4];
      v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v7 = *(v3 + 72);
      sub_1000023D8(v0[9] + v6 + v7 * v2, v4);
      v8 = *(v15 + 8);
      v0[2] = *v4;
      v0[3] = v8;
      v9 = swift_task_alloc();
      *(v9 + 16) = v0 + 2;
      LOBYTE(v5) = sub_100004CB8(sub_100006148, v9, v5);

      v10 = v0[7];
      if (v5)
      {
        sub_100005504(v10, v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100004AC0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v12 = _swiftEmptyArrayStorage[2];
        v11 = _swiftEmptyArrayStorage[3];
        if (v12 >= v11 >> 1)
        {
          sub_100004AC0((v11 > 1), v12 + 1, 1);
        }

        v13 = v0[6];
        _swiftEmptyArrayStorage[2] = v12 + 1;
        sub_100005504(v13, _swiftEmptyArrayStorage + v6 + v12 * v7);
      }

      else
      {
        sub_10000243C(v10);
      }

      if (v16 == ++v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v14 = v0[1];

    v14(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_100006148(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000CB28() & 1;
  }
}

uint64_t sub_1000061A0(void *a1)
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

unint64_t sub_1000061EC()
{
  result = qword_100014260;
  if (!qword_100014260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014260);
  }

  return result;
}

uint64_t sub_100006240(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000062B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002208(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100006310(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100006380(uint64_t a1)
{
  v2 = sub_1000064D0();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100006428();
  sub_10000C8E8();
  return 0;
}

unint64_t sub_100006428()
{
  result = qword_100014280;
  if (!qword_100014280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014280);
  }

  return result;
}

unint64_t sub_1000064D0()
{
  result = qword_100014288;
  if (!qword_100014288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014288);
  }

  return result;
}

uint64_t sub_100006534()
{
  v0 = sub_10000C918();
  sub_100002374(v0, qword_100014340);
  sub_10000233C(v0, qword_100014340);
  return sub_10000C908();
}

unint64_t sub_1000065B4()
{
  result = qword_100014298;
  if (!qword_100014298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014298);
  }

  return result;
}

unint64_t sub_10000660C()
{
  result = qword_1000142A0;
  if (!qword_1000142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A0);
  }

  return result;
}

unint64_t sub_1000066E4()
{
  result = qword_1000142A8;
  if (!qword_1000142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A8);
  }

  return result;
}

uint64_t sub_100006738()
{
  v0 = sub_10000C898();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C8D8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C988();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10000C8A8();
  sub_100002374(v6, qword_100014358);
  sub_10000233C(v6, qword_100014358);
  sub_10000C928();
  sub_10000C8C8();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000C8B8();
}

uint64_t sub_100006938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = sub_10000C678();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  sub_10000C978();
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for FocusEntity(0);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_10000C898();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  sub_10000C8D8();
  v3[24] = swift_task_alloc();
  sub_10000C988();
  v3[25] = swift_task_alloc();
  sub_10000C8A8();
  v3[26] = swift_task_alloc();
  sub_100002208(&qword_1000140C8, &qword_10000D268);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  sub_100002208(&qword_1000140D0, &qword_10000D270);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();

  return _swift_task_switch(sub_100006CD8, 0, 0);
}

uint64_t sub_100006CD8()
{
  v20 = v0;
  if (qword_100014080 != -1)
  {
    swift_once();
  }

  v1 = sub_10000C918();
  *(v0 + 320) = sub_10000233C(v1, qword_100014340);
  v2 = sub_10000CA18();

  v3 = sub_10000C8F8();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 88);
    v6 = *(v0 + 96);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19 = v8;
    *v7 = 67109378;
    sub_10000C6B8();
    *(v7 + 4) = *(v0 + 457);

    *(v7 + 8) = 2080;
    sub_10000C6B8();
    v9 = (*(v6 + 48))(v4, 1, v5);
    v10 = *(v0 + 312);
    if (v9)
    {
      v11 = 0xE500000000000000;
      v12 = 0x3E6C696E3CLL;
    }

    else
    {
      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
    }

    sub_1000062B0(v10, &qword_1000140D0, &qword_10000D270);
    v13 = sub_10000B360(v12, v11, &v19);

    *(v7 + 10) = v13;
    _os_log_impl(&_mh_execute_header, v3, v2, "Receive Perform with enable: %{BOOL}d on focus name: %s", v7, 0x12u);
    sub_1000061A0(v8);
  }

  else
  {
  }

  v14 = sub_10000C998();
  v15 = [objc_opt_self() serviceForClientIdentifier:v14];
  *(v0 + 328) = v15;

  v16 = swift_task_alloc();
  *(v0 + 336) = v16;
  *v16 = v0;
  v16[1] = sub_100006FDC;
  v17 = *(v0 + 304);

  return sub_100009F58(v17, v15);
}

uint64_t sub_100006FDC()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_100009938;
  }

  else
  {
    v2 = sub_10000711C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10000711C(uint64_t a1)
{
  v127 = v1;
  v2 = *(v1 + 96);
  sub_10000C6B8();
  v3 = (v2 + 48);
  v4 = *(v1 + 88);
  if (*(v1 + 456) == 1)
  {
    v5 = *(v1 + 296);
    sub_10000C6B8();
    v6 = *v3;
    *(v1 + 352) = *v3;
    *(v1 + 360) = v3 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v7 = v6(v5, 1, v4);
    sub_1000062B0(v5, &qword_1000140D0, &qword_10000D270);
    if (v7 == 1)
    {
      *(v1 + 368) = sub_10000C6D8();
      v8 = swift_task_alloc();
      *(v1 + 376) = v8;
      *v8 = v1;
      v8[1] = sub_1000080E0;

      return sub_100004F64();
    }

    v14 = *(v1 + 352);
    v15 = *(v1 + 272);
    v16 = *(v1 + 88);
    sub_10000C6B8();
    v17 = v14(v15, 1, v16);
    v18 = *(v1 + 304);
    v19 = *(v1 + 272);
    if (v17 == 1)
    {
      v20 = *(v1 + 328);
      sub_1000062B0(v19, &qword_1000140D0, &qword_10000D270);
      sub_10000C28C();
      swift_allocError();
      swift_willThrow();

      sub_1000062B0(v18, &qword_1000140D0, &qword_10000D270);
LABEL_39:

      v108 = *(v1 + 8);

      return v108();
    }

    v36 = *(v1 + 352);
    v37 = *(v1 + 264);
    v38 = *(v1 + 88);
    sub_100005504(v19, *(v1 + 160));
    sub_10000C21C(v18, v37);
    v39 = v36(v37, 1, v38);
    v40 = *(v1 + 264);
    if (v39 == 1)
    {
      sub_1000062B0(v40, &qword_1000140D0, &qword_10000D270);
    }

    else
    {
      v78 = *(v1 + 152);
      v77 = *(v1 + 160);
      sub_100005504(v40, v78);
      if (*v78 == *v77 && v78[1] == v77[1] || (sub_10000CB28() & 1) != 0)
      {
        v79 = *(v1 + 328);
        v80 = *(v1 + 304);
        v81 = *(v1 + 160);
        v124 = *(v1 + 152);
        v82 = *(v1 + 64);
        v83 = *(v1 + 72);
        v84 = *(v1 + 56);
        sub_10000C968();
        v129._countAndFlagsBits = 0;
        v129._object = 0xE000000000000000;
        sub_10000C958(v129);
        sub_1000022F8(&qword_100014158, &unk_10000D500);
        sub_10000C948();
        v130._object = 0x800000010000DF10;
        v130._countAndFlagsBits = 0xD000000000000015;
        sub_10000C958(v130);
        sub_10000C668();
        sub_10000C698();

        (*(v82 + 8))(v83, v84);
        sub_1000062B0(v80, &qword_1000140D0, &qword_10000D270);
        sub_10000243C(v124);
        v85 = v81;
LABEL_38:
        sub_10000243C(v85);
        goto LABEL_39;
      }

      sub_10000243C(*(v1 + 152));
    }

    v41 = *(v1 + 160);
    v42 = *(v1 + 136);
    v43 = *(v1 + 144);
    v44 = [objc_opt_self() lifetimeUntilEndOfScheduleWithIdentifier:DNDDefaultScheduleIdentifier];
    v45 = sub_10000C998();
    v46 = sub_10000C998();
    v47 = [objc_opt_self() detailsWithIdentifier:v45 modeIdentifier:v46 lifetime:v44];
    v123 = v44;

    sub_1000023D8(v41, v43);
    sub_1000023D8(v41, v42);
    v48 = v47;
    v49 = sub_10000C8F8();
    v50 = sub_10000CA38();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v1 + 136);
    v53 = *(v1 + 144);
    if (v51)
    {
      v54 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v54 = 136446466;
      v56 = *(v53 + 16);
      v55 = *(v53 + 24);

      sub_10000243C(v53);
      v57 = sub_10000B360(v56, v55, v126);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2082;
      v58 = *v52;
      v59 = v52[1];

      sub_10000243C(v52);
      v60 = sub_10000B360(v58, v59, v126);

      *(v54 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v49, v50, "Activating mode: %{public}s (%{public}s)", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000243C(v52);
      sub_10000243C(v53);
    }

    v98 = *(v1 + 328);
    *(v1 + 24) = 0;
    v99 = [v98 activateModeWithDetails:v48 error:v1 + 24];

    v100 = *(v1 + 24);
    v101 = *(v1 + 328);
    v102 = *(v1 + 304);
    v103 = *(v1 + 160);
    if (v99)
    {
      v105 = *(v1 + 64);
      v104 = *(v1 + 72);
      v122 = *(v1 + 56);
      v106 = v100;
      sub_10000C968();
      v133._countAndFlagsBits = 539773775;
      v133._object = 0xE400000000000000;
      sub_10000C958(v133);
      sub_1000022F8(&qword_100014158, &unk_10000D500);
      sub_10000C948();
      v134._countAndFlagsBits = 0x69207375636F4620;
      v134._object = 0xED00002E6E6F2073;
      sub_10000C958(v134);
      sub_10000C668();
      sub_10000C698();

      (*(v105 + 8))(v104, v122);
    }

    else
    {
      v107 = v100;
      sub_10000C878();

      swift_willThrow();
    }

    sub_1000062B0(v102, &qword_1000140D0, &qword_10000D270);
    v85 = v103;
    goto LABEL_38;
  }

  v10 = *(v1 + 248);
  sub_10000C6B8();
  v11 = *v3;
  if ((*v3)(v10, 1, v4) == 1)
  {
    v12 = *(v1 + 248);
    v13 = *(v1 + 88);
    sub_10000C21C(*(v1 + 304), *(v1 + 256));
    if (v11(v12, 1, v13) != 1)
    {
      sub_1000062B0(*(v1 + 248), &qword_1000140D0, &qword_10000D270);
    }
  }

  else
  {
    v21 = *(v1 + 256);
    v22 = *(v1 + 88);
    v23 = *(v1 + 96);
    sub_100005504(*(v1 + 248), v21);
    (*(v23 + 56))(v21, 0, 1, v22);
  }

  v25 = (v1 + 240);
  v24 = *(v1 + 240);
  v26 = *(v1 + 88);
  sub_10000C21C(*(v1 + 256), v24);
  if (v11(v24, 1, v26) == 1)
  {
LABEL_15:
    v30 = *(v1 + 328);
    v31 = *(v1 + 304);
    v32 = *(v1 + 256);
    v34 = *(v1 + 64);
    v33 = *(v1 + 72);
    v35 = *(v1 + 56);
    sub_1000062B0(*v25, &qword_1000140D0, &qword_10000D270);
    sub_10000C658();
    sub_10000C698();

    (*(v34 + 8))(v33, v35);
    sub_1000062B0(v32, &qword_1000140D0, &qword_10000D270);
    sub_1000062B0(v31, &qword_1000140D0, &qword_10000D270);
    goto LABEL_39;
  }

  v25 = (v1 + 232);
  v27 = *(v1 + 232);
  v28 = *(v1 + 304);
  v29 = *(v1 + 88);
  sub_100005504(*(v1 + 240), *(v1 + 128));
  sub_10000C21C(v28, v27);
  if (v11(v27, 1, v29) == 1)
  {
    sub_10000243C(*(v1 + 128));
    goto LABEL_15;
  }

  v62 = *(v1 + 120);
  v61 = *(v1 + 128);
  sub_100005504(*(v1 + 232), v62);
  if (*v62 == *v61 && v62[1] == v61[1] || (sub_10000CB28() & 1) != 0)
  {
    v63 = *(v1 + 120);
    v64 = *(v1 + 104);
    sub_1000023D8(v63, *(v1 + 112));
    sub_1000023D8(v63, v64);
    v65 = sub_10000C8F8();
    v66 = sub_10000CA38();
    v67 = os_log_type_enabled(v65, v66);
    v68 = *(v1 + 104);
    v69 = *(v1 + 112);
    if (v67)
    {
      v70 = swift_slowAlloc();
      v126[0] = swift_slowAlloc();
      *v70 = 136446466;
      v71 = *(v69 + 16);
      v72 = *(v69 + 24);

      sub_10000243C(v69);
      v73 = sub_10000B360(v71, v72, v126);

      *(v70 + 4) = v73;
      *(v70 + 12) = 2082;
      v74 = *v68;
      v75 = v68[1];

      sub_10000243C(v68);
      v76 = sub_10000B360(v74, v75, v126);

      *(v70 + 14) = v76;
      _os_log_impl(&_mh_execute_header, v65, v66, "Deactivating mode: %{public}s (%{public}s)", v70, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000243C(v68);
      sub_10000243C(v69);
    }

    v86 = *(v1 + 328);
    *(v1 + 16) = 0;
    v87 = [v86 activateModeWithDetails:0 error:v1 + 16];
    v88 = *(v1 + 16);
    v89 = *(v1 + 328);
    v90 = *(v1 + 304);
    v91 = *(v1 + 256);
    v93 = *(v1 + 120);
    v92 = *(v1 + 128);
    if (v87)
    {
      v94 = *(v1 + 72);
      v125 = *(v1 + 128);
      v95 = *(v1 + 64);
      v121 = *(v1 + 56);
      v96 = v88;
      sub_10000C968();
      v131._countAndFlagsBits = 539773775;
      v131._object = 0xE400000000000000;
      sub_10000C958(v131);
      sub_10000C938(v93[1]);
      v132._countAndFlagsBits = 0x69207375636F4620;
      v132._object = 0xEE002E66666F2073;
      sub_10000C958(v132);
      sub_10000C668();
      sub_10000C698();

      (*(v95 + 8))(v94, v121);
      sub_1000062B0(v91, &qword_1000140D0, &qword_10000D270);
      sub_1000062B0(v90, &qword_1000140D0, &qword_10000D270);
      sub_10000243C(v93);
      v85 = v125;
    }

    else
    {
      v97 = v88;
      sub_10000C878();

      swift_willThrow();
      sub_1000062B0(v91, &qword_1000140D0, &qword_10000D270);
      sub_1000062B0(v90, &qword_1000140D0, &qword_10000D270);
      sub_10000243C(v93);
      v85 = v92;
    }

    goto LABEL_38;
  }

  v109 = *(v1 + 216);
  v111 = *(v1 + 120);
  v110 = *(v1 + 128);
  v112 = *(v1 + 56);
  v113 = *(v1 + 64);
  *(v1 + 416) = sub_10000C6D8();
  v114 = *(v110 + 16);
  v115 = *(v110 + 24);
  v116 = *(v111 + 16);
  *(v1 + 424) = v116;
  v117 = *(v111 + 24);
  *(v1 + 432) = v117;
  sub_10000AB2C(v114, v115, v116, v117);
  (*(v113 + 56))(v109, 0, 1, v112);
  v118 = swift_task_alloc();
  *(v1 + 440) = v118;
  *v118 = v1;
  v118[1] = sub_1000090BC;
  v119 = *(v1 + 216);
  v120 = *(v1 + 120);

  return IntentParameter.requestConfirmation(for:dialog:)(v120, v119);
}

uint64_t sub_1000080E0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 384) = a1;
  *(v3 + 392) = v1;

  if (v1)
  {

    v4 = sub_100008598;
  }

  else
  {
    v4 = sub_100008230;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100008230()
{
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[7];
  v6 = v0[8];
  sub_10000C928();
  sub_10000C8C8();
  (*(v4 + 104))(v2, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  sub_10000C8B8();
  sub_10000C688();
  (*(v6 + 56))(v1, 0, 1, v5);
  v7 = swift_task_alloc();
  v0[50] = v7;
  *v7 = v0;
  v7[1] = sub_1000083E8;
  v8 = v0[48];
  v9 = v0[36];
  v10 = v0[28];

  return IntentParameter.requestDisambiguation(among:dialog:)(v9, v8, v10);
}

uint64_t sub_1000083E8()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  sub_1000062B0(*(v2 + 224), &qword_1000140C8, &qword_10000D268);

  if (v0)
  {
    v3 = sub_100009B20;
  }

  else
  {
    v3 = sub_10000879C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100008598()
{
  v1 = *(v0 + 304);

  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000879C()
{
  v58 = v0;
  v2 = v0[35];
  v1 = v0[36];
  (*(v0[12] + 56))(v1, 0, 1, v0[11]);
  sub_10000C21C(v1, v2);
  sub_10000C6C8();
  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);
  v3 = v0[44];
  v4 = v0[34];
  v5 = v0[11];
  sub_10000C6B8();
  v6 = v3(v4, 1, v5);
  v7 = v0[38];
  v8 = v0[34];
  if (v6 != 1)
  {
    v10 = v0[44];
    v11 = v0[33];
    v12 = v0[11];
    sub_100005504(v8, v0[20]);
    sub_10000C21C(v7, v11);
    v13 = v10(v11, 1, v12);
    v14 = v0[33];
    if (v13 == 1)
    {
      sub_1000062B0(v14, &qword_1000140D0, &qword_10000D270);
    }

    else
    {
      v36 = v0[19];
      v35 = v0[20];
      sub_100005504(v14, v36);
      if (*v36 == *v35 && v36[1] == v35[1] || (sub_10000CB28() & 1) != 0)
      {
        v37 = v0[41];
        v38 = v0[38];
        v39 = v0[20];
        v56 = v0[19];
        v40 = v0[8];
        v41 = v0[9];
        v42 = v0[7];
        sub_10000C968();
        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        sub_10000C958(v60);
        sub_1000022F8(&qword_100014158, &unk_10000D500);
        sub_10000C948();
        v61._object = 0x800000010000DF10;
        v61._countAndFlagsBits = 0xD000000000000015;
        sub_10000C958(v61);
        sub_10000C668();
        sub_10000C698();

        (*(v40 + 8))(v41, v42);
        sub_1000062B0(v38, &qword_1000140D0, &qword_10000D270);
        sub_10000243C(v56);
        goto LABEL_14;
      }

      sub_10000243C(v0[19]);
    }

    v15 = v0[20];
    v16 = v0[17];
    v17 = v0[18];
    v18 = [objc_opt_self() lifetimeUntilEndOfScheduleWithIdentifier:DNDDefaultScheduleIdentifier];
    v19 = sub_10000C998();
    v20 = sub_10000C998();
    v21 = [objc_opt_self() detailsWithIdentifier:v19 modeIdentifier:v20 lifetime:v18];
    v55 = v18;

    sub_1000023D8(v15, v17);
    sub_1000023D8(v15, v16);
    v22 = v21;
    v23 = sub_10000C8F8();
    v24 = sub_10000CA38();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[17];
    v27 = v0[18];
    if (v25)
    {
      v28 = swift_slowAlloc();
      v57[0] = swift_slowAlloc();
      *v28 = 136446466;
      v30 = *(v27 + 16);
      v29 = *(v27 + 24);

      sub_10000243C(v27);
      v31 = sub_10000B360(v30, v29, v57);

      *(v28 + 4) = v31;
      *(v28 + 12) = 2082;
      v32 = *v26;
      v33 = v26[1];

      sub_10000243C(v26);
      v34 = sub_10000B360(v32, v33, v57);

      *(v28 + 14) = v34;
      _os_log_impl(&_mh_execute_header, v23, v24, "Activating mode: %{public}s (%{public}s)", v28, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_10000243C(v26);
      sub_10000243C(v27);
    }

    v43 = v0[41];
    v0[3] = 0;
    v44 = [v43 activateModeWithDetails:v22 error:v0 + 3];

    v45 = v0[3];
    v46 = v0[41];
    v47 = v0[38];
    v39 = v0[20];
    if (!v44)
    {
      v52 = v45;
      sub_10000C878();

      swift_willThrow();
      sub_1000062B0(v47, &qword_1000140D0, &qword_10000D270);
      sub_10000243C(v39);
      goto LABEL_16;
    }

    v49 = v0[8];
    v48 = v0[9];
    v54 = v0[7];
    v50 = v45;
    sub_10000C968();
    v62._countAndFlagsBits = 539773775;
    v62._object = 0xE400000000000000;
    sub_10000C958(v62);
    sub_1000022F8(&qword_100014158, &unk_10000D500);
    sub_10000C948();
    v63._countAndFlagsBits = 0x69207375636F4620;
    v63._object = 0xED00002E6E6F2073;
    sub_10000C958(v63);
    sub_10000C668();
    sub_10000C698();

    (*(v49 + 8))(v48, v54);
    sub_1000062B0(v47, &qword_1000140D0, &qword_10000D270);
LABEL_14:
    sub_10000243C(v39);

    v51 = v0[1];
    goto LABEL_17;
  }

  v9 = v0[41];
  sub_1000062B0(v8, &qword_1000140D0, &qword_10000D270);
  sub_10000C28C();
  swift_allocError();
  swift_willThrow();

  sub_1000062B0(v7, &qword_1000140D0, &qword_10000D270);
LABEL_16:

  v51 = v0[1];
LABEL_17:

  return v51();
}

uint64_t sub_1000090BC(char a1)
{
  v4 = *v2;
  *(v4 + 448) = v1;

  v5 = *(v4 + 216);
  if (v1)
  {
    sub_1000062B0(v5, &qword_1000140C8, &qword_10000D268);

    v6 = sub_100009D24;
  }

  else
  {
    *(v4 + 458) = a1 & 1;
    sub_1000062B0(v5, &qword_1000140C8, &qword_10000D268);

    v6 = sub_100009280;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100009280()
{
  v39 = v0;
  if ((*(v0 + 458) & 1) == 0)
  {
    v16 = *(v0 + 424);
    v15 = *(v0 + 432);
    v34 = *(v0 + 328);
    v17 = *(v0 + 304);
    v18 = *(v0 + 128);
    v35 = *(v0 + 120);
    v37 = *(v0 + 256);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    sub_10000C968();
    v41._countAndFlagsBits = 539904847;
    v41._object = 0xE400000000000000;
    sub_10000C958(v41);
    v42._countAndFlagsBits = v16;
    v42._object = v15;
    sub_10000C938(v42);
    v43._object = 0x800000010000DEF0;
    v43._countAndFlagsBits = 0xD000000000000012;
    sub_10000C958(v43);
    sub_10000C668();
    sub_10000C698();

    (*(v20 + 8))(v19, v21);
    v22 = v35;
LABEL_8:
    sub_1000062B0(v37, &qword_1000140D0, &qword_10000D270);
    sub_1000062B0(v17, &qword_1000140D0, &qword_10000D270);
    sub_10000243C(v22);
    sub_10000243C(v18);

    v31 = *(v0 + 8);
    goto LABEL_10;
  }

  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  sub_1000023D8(v1, *(v0 + 112));
  sub_1000023D8(v1, v2);
  v3 = sub_10000C8F8();
  v4 = sub_10000CA38();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  if (v5)
  {
    v8 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    *v8 = 136446466;
    v9 = *(v7 + 16);
    v10 = *(v7 + 24);

    sub_10000243C(v7);
    v11 = sub_10000B360(v9, v10, v38);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = *v6;
    v13 = v6[1];

    sub_10000243C(v6);
    v14 = sub_10000B360(v12, v13, v38);

    *(v8 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deactivating mode: %{public}s (%{public}s)", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000243C(v6);
    sub_10000243C(v7);
  }

  v23 = *(v0 + 328);
  *(v0 + 16) = 0;
  v24 = [v23 activateModeWithDetails:0 error:v0 + 16];
  v25 = *(v0 + 16);
  v26 = *(v0 + 328);
  v17 = *(v0 + 304);
  v27 = *(v0 + 256);
  v22 = *(v0 + 120);
  v18 = *(v0 + 128);
  if (v24)
  {
    v28 = *(v0 + 72);
    v37 = *(v0 + 256);
    v29 = *(v0 + 64);
    v36 = *(v0 + 56);
    v30 = v25;
    sub_10000C968();
    v44._countAndFlagsBits = 539773775;
    v44._object = 0xE400000000000000;
    sub_10000C958(v44);
    sub_10000C938(v22[1]);
    v45._countAndFlagsBits = 0x69207375636F4620;
    v45._object = 0xEE002E66666F2073;
    sub_10000C958(v45);
    sub_10000C668();
    sub_10000C698();

    (*(v29 + 8))(v28, v36);
    goto LABEL_8;
  }

  v32 = v25;
  sub_10000C878();

  swift_willThrow();
  sub_1000062B0(v27, &qword_1000140D0, &qword_10000D270);
  sub_1000062B0(v17, &qword_1000140D0, &qword_10000D270);
  sub_10000243C(v22);
  sub_10000243C(v18);

  v31 = *(v0 + 8);
LABEL_10:

  return v31();
}

uint64_t sub_100009938()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100009B20()
{
  v1 = *(v0 + 304);

  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100009D24()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 256);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);

  sub_1000062B0(v2, &qword_1000140D0, &qword_10000D270);
  sub_1000062B0(v1, &qword_1000140D0, &qword_10000D270);
  sub_10000243C(v4);
  sub_10000243C(v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100009F58(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_100002208(&qword_1000140D0, &qword_10000D270);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10000A020, 0, 0);
}

void sub_10000A020()
{
  v43 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = type metadata accessor for FocusEntity(0);
  v0[6] = v3;
  v4 = *(v3 - 8);
  v0[7] = v4;
  v5 = *(v4 + 56);
  v0[8] = v5;
  v0[9] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v3);
  v0[2] = 0;
  v6 = [v2 activeModeAssertionWithError:v0 + 2];
  v0[10] = v6;
  v7 = v0[2];
  if (v6)
  {
    v8 = v6;
    v9 = qword_100014080;
    v10 = v7;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = sub_10000C918();
    sub_10000233C(v11, qword_100014340);
    v12 = sub_10000CA18();
    v13 = v8;
    v14 = sub_10000C8F8();

    if (os_log_type_enabled(v14, v12))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42 = v16;
      *v15 = 136315138;
      v17 = [v13 debugDescription];
      v18 = sub_10000C9B8();
      v20 = v19;

      v21 = sub_10000B360(v18, v20, &v42);

      *(v15 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v12, "modeAssertion: %s", v15, 0xCu);
      sub_1000061A0(v16);
    }

    sub_100002208(&qword_100014300, &qword_10000DA98);
    v22 = swift_allocObject();
    v0[11] = v22;
    *(v22 + 16) = xmmword_10000D900;
    v23 = [v13 details];
    v24 = [v23 modeIdentifier];

    if (v24)
    {
      v25 = sub_10000C9B8();
      v27 = v26;

      *(v22 + 32) = v25;
      *(v22 + 40) = v27;
      v28 = swift_task_alloc();
      v0[12] = v28;
      *v28 = v0;
      v28[1] = sub_10000A5F0;

      sub_100005B40(v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v29 = v7;
    sub_10000C878();

    swift_willThrow();
    v30 = sub_10000C868();
    if (qword_100014090 != -1)
    {
      swift_once();
    }

    v31 = qword_100014290;
    sub_10000C390();
    v32 = v31;
    v33 = sub_10000CA58();

    if (v33)
    {

      v34 = v0[1];
    }

    else
    {
      if (qword_100014080 != -1)
      {
        swift_once();
      }

      v35 = sub_10000C918();
      sub_10000233C(v35, qword_100014340);
      v36 = sub_10000CA28();
      swift_errorRetain();
      v37 = sub_10000C8F8();

      if (os_log_type_enabled(v37, v36))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        swift_errorRetain();
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v40;
        *v39 = v40;
        _os_log_impl(&_mh_execute_header, v37, v36, "Error querying active mode assertion: %@", v38, 0xCu);
        sub_1000062B0(v39, &qword_100014250, &qword_10000DA90);
      }

      v41 = v0[3];

      swift_willThrow();
      sub_1000062B0(v41, &qword_1000140D0, &qword_10000D270);

      v34 = v0[1];
    }

    v34();
  }
}

uint64_t sub_10000A5F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_10000A880;
  }

  else
  {

    v4 = sub_10000A740;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000A740()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 24);
    v4 = *(*(v0 + 56) + 80);
    sub_1000023D8(v1 + ((v4 + 32) & ~v4), *(v0 + 40));

    sub_1000062B0(v3, &qword_1000140D0, &qword_10000D270);
    v5 = 0;
  }

  else
  {
    sub_1000062B0(*(v0 + 24), &qword_1000140D0, &qword_10000D270);

    v5 = 1;
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 24);
  (*(v0 + 64))(v6, v5, 1, *(v0 + 48));
  sub_10000C3DC(v6, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10000A880()
{
  v1 = v0[10];

  v2 = sub_10000C868();
  if (qword_100014090 != -1)
  {
    swift_once();
  }

  v3 = qword_100014290;
  sub_10000C390();
  v4 = v3;
  v5 = sub_10000CA58();

  if (v5)
  {

    v6 = v0[1];
  }

  else
  {
    if (qword_100014080 != -1)
    {
      swift_once();
    }

    v7 = sub_10000C918();
    sub_10000233C(v7, qword_100014340);
    v8 = sub_10000CA28();
    swift_errorRetain();
    v9 = sub_10000C8F8();

    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v9, v8, "Error querying active mode assertion: %@", v10, 0xCu);
      sub_1000062B0(v11, &qword_100014250, &qword_10000DA90);
    }

    v13 = v0[3];

    swift_willThrow();
    sub_1000062B0(v13, &qword_1000140D0, &qword_10000D270);

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_10000AB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainBundle];
  v13._countAndFlagsBits = 0x800000010000DFC0;
  v15._object = 0x800000010000DF30;
  v17._countAndFlagsBits = 0xD000000000000046;
  v17._object = 0x800000010000DF70;
  v16.value._countAndFlagsBits = 0;
  v15._countAndFlagsBits = 0xD000000000000034;
  v16.value._object = 0;
  v9.super.isa = v8;
  sub_10000C858(v15, v16, v9, v17, 0xD000000000000061, v13);

  sub_100002208(&qword_1000142E8, &qword_10000DA88);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10000D2A0;
  *(v10 + 56) = &type metadata for String;
  v11 = sub_10000C33C();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v11;
  *(v10 + 64) = v11;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;

  sub_10000C9A8();

  return sub_10000C658();
}

uint64_t sub_10000ACB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100014088 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C8A8();
  v3 = sub_10000233C(v2, qword_100014358);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000AD64(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003584;

  return sub_100006938(a1, v5, v4);
}

char *sub_10000AE10@<X0>(char **a1@<X8>)
{
  result = sub_10000B908();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000AE38(uint64_t a1)
{
  v2 = sub_1000066E4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10000AE74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000AE80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000AEC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000AF18()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    sub_1000033B0(&qword_1000142B8, "$\n");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

Swift::Int sub_10000AF7C()
{
  sub_10000CB78();
  sub_10000CB88(0);
  return sub_10000CB98();
}

Swift::Int sub_10000AFE8(uint64_t a1)
{
  sub_10000CB78();
  sub_10000CB88(0);
  return sub_10000CB98();
}

uint64_t sub_10000B038()
{
  v0 = sub_10000C898();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C8D8();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10000C988();
  __chkstk_darwin(v5 - 8);
  sub_10000C928();
  sub_10000C8C8();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_10000C8B8();
}

void sub_10000B208()
{
  v0 = objc_allocWithZone(NSError);
  v1 = sub_10000C998();
  v2 = [v0 initWithDomain:v1 code:0 userInfo:0];

  qword_100014290 = v2;
}

uint64_t sub_10000B280(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_10000B2CC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_10000B304(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_10000B360(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_10000B360(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000B42C(v11, 0, 0, 1, a1, a2);
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
    sub_10000C2E0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000061A0(v11);
  return v7;
}

unint64_t sub_10000B42C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_10000B538(a5, a6);
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
    result = sub_10000CB18();
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

void *sub_10000B538(uint64_t a1, unint64_t a2)
{
  v3 = sub_10000B584(a1, a2);
  sub_10000B6B4(&off_100010B58);
  return v3;
}

void *sub_10000B584(uint64_t a1, unint64_t a2)
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

  v6 = sub_10000B7A0(v5, 0);
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

  result = sub_10000CB18();
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
        v10 = sub_10000C9C8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10000B7A0(v10, 0);
        result = sub_10000CB08();
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

uint64_t sub_10000B6B4(uint64_t result)
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

  result = sub_10000B814(result, v11, 1, v3);
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

void *sub_10000B7A0(uint64_t a1, uint64_t a2)
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

  sub_100002208(&qword_1000142E0, &qword_10000DA80);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10000B814(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002208(&qword_1000142E0, &qword_10000DA80);
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

char *sub_10000B908()
{
  v0 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  __chkstk_darwin(v0 - 8);
  v54 = v38 - v1;
  v55 = sub_10000C7F8();
  v58 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002208(&qword_1000140C8, &qword_10000D268);
  v4 = __chkstk_darwin(v3 - 8);
  v49 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = v38 - v6;
  v7 = sub_100002208(&qword_1000142C0, &unk_10000DA50);
  __chkstk_darwin(v7 - 8);
  v48 = v38 - v8;
  v9 = sub_100002208(&qword_1000140D8, &qword_10000D278);
  __chkstk_darwin(v9 - 8);
  v56 = v38 - v10;
  v11 = sub_10000C898();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C8D8();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000C988();
  __chkstk_darwin(v16 - 8);
  v52 = sub_10000C8A8();
  v17 = *(v52 - 8);
  v18 = __chkstk_darwin(v52);
  __chkstk_darwin(v18);
  v51 = v38 - v19;
  v45 = sub_100002208(&qword_1000142C8, &qword_10000DA60);
  sub_10000C928();
  sub_10000C8C8();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v12 + 104);
  v50 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v38[0] = v11;
  v21(v14, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  v39 = v21;
  v38[1] = v12 + 104;
  sub_10000C8B8();
  v22 = *(v17 + 56);
  v43 = v17 + 56;
  v44 = v22;
  v22(v56, 1, 1, v52);
  v59[0] = 2;
  v23 = sub_10000C9E8();
  (*(*(v23 - 8) + 56))(v48, 1, 1, v23);
  sub_10000C928();
  sub_10000C8C8();
  v21(v14, v20, v11);
  sub_10000C8B8();
  v24 = v57;
  sub_10000C688();
  v40 = sub_10000C678();
  v25 = *(v40 - 8);
  v41 = *(v25 + 56);
  v42 = v25 + 56;
  v41(v24, 0, 1, v40);
  v46 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v58 + 104);
  v58 += 104;
  v47 = v26;
  v26(v53);
  v27 = v56;
  v48 = sub_10000C718();
  v45 = sub_100002208(&qword_1000142D0, &qword_10000DA68);
  sub_10000C928();
  sub_10000C8C8();
  v28 = v50;
  v29 = v38[0];
  v30 = v39;
  v39(v14, v50, v38[0]);
  sub_10000C8B8();
  v44(v27, 1, 1, v52);
  v31 = type metadata accessor for FocusEntity(0);
  (*(*(v31 - 8) + 56))(v54, 1, 1, v31);
  sub_10000C928();
  sub_10000C8C8();
  v32 = v29;
  v30(v14, v28, v29);
  sub_10000C8B8();
  v33 = v57;
  sub_10000C688();
  v34 = v40;
  v35 = v41;
  v41(v33, 0, 1, v40);
  sub_10000C928();
  sub_10000C8C8();
  v30(v14, v50, v32);
  sub_10000C8B8();
  v36 = v49;
  sub_10000C688();
  v35(v36, 0, 1, v34);
  v47(v53, v46, v55);
  sub_1000022F8(&qword_1000140E8, &unk_10000D2E8);
  sub_10000C708();
  return v48;
}

uint64_t sub_10000C21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000C28C()
{
  result = qword_1000142D8;
  if (!qword_1000142D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142D8);
  }

  return result;
}

uint64_t sub_10000C2E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_10000C33C()
{
  result = qword_1000142F0;
  if (!qword_1000142F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142F0);
  }

  return result;
}

unint64_t sub_10000C390()
{
  result = qword_1000142F8;
  if (!qword_1000142F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000142F8);
  }

  return result;
}

uint64_t sub_10000C3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002208(&qword_1000140D0, &qword_10000D270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SetFocusState.Error(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SetFocusState.Error(_WORD *result, int a2, int a3)
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

unint64_t sub_10000C534()
{
  result = qword_100014308;
  if (!qword_100014308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014308);
  }

  return result;
}