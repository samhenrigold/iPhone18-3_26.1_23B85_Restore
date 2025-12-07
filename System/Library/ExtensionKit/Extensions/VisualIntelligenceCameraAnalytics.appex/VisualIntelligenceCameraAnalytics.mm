void *sub_1000015E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((*(*(*v4 + 88) + 32))(*(*v4 + 80), *(*v4 + 88)) == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_100009FA8();

    if ((v11 & 1) == 0)
    {
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      return result;
    }
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100001DB8(a3, v14);
  *(a4 + 24) = AssociatedTypeWitness;
  *(a4 + 32) = swift_getAssociatedConformanceWitness();
  sub_100001D04(a4);
  result = sub_100009ED8();
  if (v5)
  {
    return sub_100001D68(a4);
  }

  return result;
}

void *sub_100001764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v41 = a4;
  v5 = v4;
  v42 = a3;
  v8 = *(*v4 + 88);
  v9 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = sub_100009F18();
  v36 = *(v38 - 8);
  v11 = __chkstk_darwin(v38);
  v13 = &v34 - v12;
  v43 = *(AssociatedTypeWitness - 8);
  v14 = __chkstk_darwin(v11);
  v37 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v39 = &v34 - v16;
  if ((*(v8 + 32))(v9, v8) == a1 && v17 == a2)
  {
  }

  else
  {
    v35 = a2;
    v19 = sub_100009FA8();

    if ((v19 & 1) == 0)
    {
      type metadata accessor for BlockFactory.Error(0, v9, v8, v20);
      swift_getWitnessTable();
      swift_allocError();
      v21 = v35;
      *v22 = a1;
      v22[1] = v21;
      swift_willThrow();
    }
  }

  sub_100009BD8();
  sub_100001CBC(qword_1000142C0, &qword_10000AB08);
  v24 = swift_dynamicCast();
  v25 = v43;
  v26 = *(v43 + 56);
  if (v24)
  {
    v26(v13, 0, 1, AssociatedTypeWitness);
    v27 = v39;
    (*(v25 + 32))(v39, v13, AssociatedTypeWitness);
    v28 = v37;
    (*(v25 + 16))(v37, v27, AssociatedTypeWitness);
    v29 = v4[2];
    v38 = v5[3];
    v42 = *(v8 + 40);
    v30 = v41;
    *(v41 + 24) = v9;
    v30[4] = *(v8 + 8);
    sub_100001D04(v30);
    swift_unknownObjectRetain();
    v31 = v40;
    v42(v28, v29, v38, v9, v8);
    if (v31)
    {
      (*(v25 + 8))(v27, AssociatedTypeWitness);
      return sub_100001D68(v30);
    }

    else
    {
      return (*(v25 + 8))(v27, AssociatedTypeWitness);
    }
  }

  else
  {
    v26(v13, 1, 1, AssociatedTypeWitness);
    (*(v36 + 8))(v13, v38);
    type metadata accessor for BlockFactory.Error(0, v9, v8, v32);
    swift_getWitnessTable();
    swift_allocError();
    *v33 = 0;
    v33[1] = 0;
    return swift_willThrow();
  }
}

uint64_t sub_100001BF0()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100001CBC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100001D04(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *sub_100001D68(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_100001DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100001E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100001E94(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001EA0(uint64_t a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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

uint64_t sub_100001F44(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100001F60(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_100001F90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001FB0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_100014348)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014348);
    }
  }
}

Swift::Int sub_100002040()
{
  v1 = *v0;
  sub_100009FF8();
  sub_10000A008(v1);
  return sub_10000A018();
}

Swift::Int sub_1000020B4(uint64_t a1)
{
  v2 = *v1;
  sub_100009FF8();
  sub_10000A008(v2);
  return sub_10000A018();
}

uint64_t sub_1000020F8()
{
  if (*v0)
  {
    return 0x726564616F6C7075;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_10000213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010000B400 == a2 || (sub_100009FA8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x726564616F6C7075 && a2 == 0xEA00000000006449)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_100009FA8();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100002244(uint64_t a1)
{
  v2 = sub_1000063A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100002280(uint64_t a1)
{
  v2 = sub_1000063A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000022BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100001CBC(&qword_1000144F0, &qword_10000AD78);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000714C(a1, a1[3]);
  sub_1000063A8();
  sub_10000A038();
  v14 = 0;
  sub_100009F88();
  if (!v5)
  {
    v13 = 1;
    sub_100009F88();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100002450(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  sub_100001DB8(a1, v14);
  sub_100001CBC(&qword_1000144F8, &qword_10000AD80);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v7 = v3 == v10 && v4 == v11;
  if (!v7 && (sub_100009FA8() & 1) == 0)
  {

LABEL_12:
    v8 = 0;
    return v8 & 1;
  }

  if (v5 == v12 && v6 == v13)
  {

    v8 = 1;
  }

  else
  {
    v8 = sub_100009FA8();
  }

  return v8 & 1;
}

uint64_t sub_10000256C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000061C4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *sub_1000025BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a4;
  v54 = a6;
  v63 = a5;
  v55 = sub_100009CA8();
  v12 = *(v55 - 8);
  __chkstk_darwin(v55);
  v52 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009D18();
  v59 = *(v14 - 8);
  v60 = v14;
  __chkstk_darwin(v14);
  v58 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100009C88();
  v44 = *(v16 - 8);
  v45 = v16;
  __chkstk_darwin(v16);
  v56 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_done) = 0;
  v18 = OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema;
  v19 = sub_100009CF8();
  (*(*(v19 - 8) + 56))(v6 + v18, 1, 1, v19);
  v6[2] = a1;
  v6[3] = a2;
  v20 = a2;
  v6[4] = a3;
  v6[5] = a4;
  v57 = v6;
  v21 = (v6 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_bookmarkConfig);
  v46 = v21;
  v22 = v54;
  *v21 = a5;
  v21[1] = v22;
  sub_100001CBC(&qword_100014500, &qword_10000AD88);
  v23 = (sub_100001CBC(&qword_100014508, &qword_10000AD90) - 8);
  v24 = (*(*v23 + 80) + 32) & ~*(*v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10000ABD0;
  v26 = (v25 + v24);
  v53 = v23[14];
  v54 = v25;
  v50 = v20;
  v51 = v25 + v24;
  *v26 = a1;
  v26[1] = v20;
  sub_100001CBC(&qword_100014510, &qword_10000AD98);
  v27 = sub_100001CBC(&qword_100014518, &qword_10000ADA0);
  v28 = *(*(v27 - 8) + 72);
  v29 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
  v48 = 2 * v28;
  v30 = swift_allocObject();
  v49 = v30;
  *(v30 + 16) = xmmword_10000ABE0;
  v31 = (v30 + v29);
  v47 = *(v27 + 48);
  *v31 = 0xD00000000000001CLL;
  v31[1] = 0x800000010000B450;
  v32 = enum case for TypeManifest.int64(_:);
  v33 = *(v12 + 104);
  v34 = v52;
  v35 = v55;
  v33(v52, enum case for TypeManifest.int64(_:), v55);
  swift_bridgeObjectRetain_n();

  swift_unknownObjectRetain();
  v66 = 1;
  sub_100009CB8();
  v36 = (v31 + v28);
  *v36 = 0xD000000000000031;
  v36[1] = 0x800000010000B470;
  v33(v34, v32, v35);
  v65 = 1;
  sub_100009CB8();
  v37 = (v31 + v48);
  *v37 = 0xD000000000000017;
  v37[1] = 0x800000010000B4B0;
  v33(v34, enum case for TypeManifest.bytes(_:), v35);
  v64 = 1;
  v38 = v56;
  sub_100009CB8();
  sub_1000063FC(v49);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v39 = v51;
  sub_100009D28();

  sub_1000065FC(v54);
  swift_setDeallocating();
  sub_100007334(v39, &qword_100014508, &qword_10000AD90);
  swift_deallocClassInstance();
  sub_1000067FC(&_swiftEmptyArrayStorage);
  v40 = v58;
  sub_100009D08();
  v41 = v61;
  sub_100009C68();
  if (v41)
  {
    swift_unknownObjectRelease();
    (*(v59 + 8))(v40, v60);
    v42 = v57;

    swift_unknownObjectRelease();
    sub_100007334(v42 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema, &qword_100014520, &qword_10000ADA8);
    type metadata accessor for UploadBlock(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v59 + 8))(v40, v60);
    swift_unknownObjectRelease();
    v42 = v57;
    (*(v44 + 32))(v57 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_schemaStore, v38, v45);
  }

  return v42;
}

uint64_t sub_100002CE0@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v2 = sub_100009CF8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001CBC(&qword_100014520, &qword_10000ADA8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema;
  swift_beginAccess();
  sub_1000073F8(v1 + v12, v11, &qword_100014520, &qword_10000ADA8);
  if ((*(v3 + 48))(v11, 1, v2) == 1)
  {
    sub_100007334(v11, &qword_100014520, &qword_10000ADA8);
    v13 = v17;
    result = sub_100009C78();
    if (v13)
    {
      return result;
    }

    (*(v3 + 16))(v9, v5, v2);
    (*(v3 + 56))(v9, 0, 1, v2);
    swift_beginAccess();
    sub_100007460(v9, v1 + v12);
    swift_endAccess();
  }

  else
  {
    v5 = v11;
  }

  return (*(v3 + 32))(v16, v5, v2);
}

uint64_t sub_100002F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100009C08();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009C18();
  v11 = sub_100003168(v10);
  (*(v8 + 8))(v10, v7);
  if (v11[2])
  {
    sub_10000356C(v11, a2, a3);
  }

  else
  {

    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v12 = sub_100009DE8();
    sub_100006DB0(v12, qword_100014F00);
    v13 = sub_100009DC8();
    v14 = sub_100009EE8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Data is empty", v15, 2u);
    }
  }

  *(v4 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_done) = 1;
  return 1;
}

void *sub_100003168(uint64_t a1)
{
  v38 = sub_100009B58();
  v2 = *(v38 - 8);
  v3 = __chkstk_darwin(v38);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v31 = &v30 - v5;
  v6 = sub_100009C08();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000073AC(&qword_1000145A0, &type metadata accessor for Dataset, &protocol conformance descriptor for Dataset);
  v10 = sub_100009E58();
  v41 = &_swiftEmptyArrayStorage;
  sub_100005DAC(0, v10 & ~(v10 >> 63), 0);
  v11 = v41;
  (*(v7 + 16))(v9, a1, v6);
  result = sub_100009E48();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v13 = v40;
    if (v10)
    {
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v15 = *(v39 + 16);
      v35 = v39;
      v36 = v15;
      v34 = v39 + v14;
      v32 = v2 + 8;
      v33 = v2 + 16;
      v16 = v40;
      while (v36 != v16)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v16 >= *(v35 + 16))
        {
          goto LABEL_22;
        }

        v17 = v37;
        v18 = v38;
        (*(v2 + 16))(v37, v34 + *(v2 + 72) * v16, v38);
        v19 = sub_100009B48();
        result = (*(v2 + 8))(v17, v18);
        v41 = v11;
        v21 = v11[2];
        v20 = v11[3];
        if (v21 >= v20 >> 1)
        {
          result = sub_100005DAC((v20 > 1), v21 + 1, 1);
          v11 = v41;
        }

        v11[2] = v21 + 1;
        v11[v21 + 4] = v19;
        ++v16;
        if (!--v10)
        {
          v40 = v16;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v16 = v40;
LABEL_12:
      v22 = v39;
      v23 = *(v39 + 16);
      if (v16 == v23)
      {
LABEL_13:

        return v11;
      }

      v37 = (v2 + 16);
      while (v16 < v23)
      {
        v24 = v22 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16;
        v40 = v16 + 1;
        v25 = v31;
        v26 = v38;
        (*(v2 + 16))(v31, v24, v38);
        v27 = sub_100009B48();
        result = (*(v2 + 8))(v25, v26);
        v41 = v11;
        v29 = v11[2];
        v28 = v11[3];
        if (v29 >= v28 >> 1)
        {
          result = sub_100005DAC((v28 > 1), v29 + 1, 1);
          v11 = v41;
        }

        v11[2] = v29 + 1;
        v11[v29 + 4] = v27;
        v23 = *(v22 + 16);
        v16 = v40;
        if (v40 == v23)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000356C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  ObjectType = a1;
  v5 = sub_100009B98();
  v75 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v57 - v9;
  v11 = sub_100009CF8();
  v76 = *(v11 - 8);
  v12 = *(v76 + 64);
  v13 = __chkstk_darwin(v11);
  __chkstk_darwin(v13);
  v15 = v57 - v14;
  result = sub_100002CE0(v57 - v14);
  v77 = v4;
  if (!v4)
  {
    v64 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v65 = v3;
    v66 = v8;
    v67 = v5;
    v68 = v10;
    v69 = v11;
    v17 = *(ObjectType + 16);
    if (v17)
    {
      v18 = (ObjectType + 32);
      v19 = v75;
      v62 = v75 + 16;
      v61 = v75 + 32;
      v59 = v76 + 16;
      v58 = v12 + 7;
      v57[1] = v76 + 32;
      v63 = (v75 + 8);
      v21 = v67;
      v20 = v68;
      v22 = v77;
      v60 = v15;
      while (1)
      {
        v23 = *v18;
        if (!*(*v18 + 16))
        {
          break;
        }

        v24 = sub_100005D28(0x6D6954746E657665, 0xEE00706D61747365, sub_100005A80);
        if ((v25 & 1) == 0)
        {

          break;
        }

        v26 = v66;
        (*(v19 + 16))(v66, *(v23 + 56) + *(v19 + 72) * v24, v21);
        (*(v19 + 32))(v20, v26, v21);
        sub_100009B88();
        if ((swift_dynamicCast() & 1) == 0)
        {

          swift_getObjectType();
          sub_100009BA8();
          if (qword_100014238 != -1)
          {
            swift_once();
          }

          v50 = sub_100009DE8();
          sub_100006DB0(v50, qword_100014F00);
          v51 = sub_100009DC8();
          v52 = sub_100009EF8();
          v53 = os_log_type_enabled(v51, v52);
          v46 = v69;
          if (v53)
          {
            v54 = swift_slowAlloc();
            *v54 = 0;
            _os_log_impl(&_mh_execute_header, v51, v52, "Invalid type of the event timestamp", v54, 2u);
          }

          sub_100006E7C();
          v55 = swift_allocError();
          *v56 = xmmword_10000ABF0;
          v77 = v55;
          swift_willThrow();
          (*v63)(v68, v21);
          return (*(v76 + 8))(v15, v46);
        }

        v27 = v78;
        sub_100003F10(v23);

        v28 = sub_100009CD8();
        v77 = v22;
        v29 = v28;
        v31 = v30;
        v72 = v18;
        v73 = v17;

        v32 = v70;
        ObjectType = swift_getObjectType();
        v33 = v76;
        v34 = v64;
        v35 = v69;
        (*(v76 + 16))(v64, v15, v69);
        v36 = (*(v33 + 80) + 16) & ~*(v33 + 80);
        v37 = (v58 + v36) & 0xFFFFFFFFFFFFFFF8;
        v38 = swift_allocObject();
        (*(v33 + 32))(v38 + v36, v34, v35);
        v39 = (v38 + v37);
        *v39 = v29;
        v39[1] = v31;
        sub_100006D5C(v29, v31);
        v40 = v71;
        sub_100009BA8();

        v41 = v77;
        sub_1000045E8(v29, v31, v32, v40, v27);
        v22 = v41;
        if (v41)
        {
          v77 = v41;
          sub_100006B14(v29, v31);
          (*v63)(v68, v67);
          v46 = v69;
          v15 = v60;
          return (*(v76 + 8))(v15, v46);
        }

        v21 = v67;
        v20 = v68;
        (*v63)(v68, v67);
        sub_100006B14(v29, v31);
        v18 = v72 + 1;
        v17 = v73 - 1;
        v15 = v60;
        v19 = v75;
        if (v73 == 1)
        {
          return (*(v76 + 8))(v15, v69);
        }
      }

      swift_getObjectType();
      sub_100009BA8();
      if (qword_100014238 != -1)
      {
        swift_once();
      }

      v42 = sub_100009DE8();
      sub_100006DB0(v42, qword_100014F00);
      v43 = sub_100009DC8();
      v44 = sub_100009EF8();
      v45 = os_log_type_enabled(v43, v44);
      v46 = v69;
      if (v45)
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v43, v44, "Event timestamp is missing", v47, 2u);
      }

      sub_100006E7C();
      v48 = swift_allocError();
      *v49 = 0;
      v49[1] = 0;
      v77 = v48;
      swift_willThrow();
      return (*(v76 + 8))(v15, v46);
    }

    else
    {
      return (*(v76 + 8))(v15, v69);
    }
  }

  return result;
}

uint64_t sub_100003D00()
{
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  sub_100009C58();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10000ABD0;
  sub_100006E7C();
  swift_allocError();
  *v1 = 0;
  v1[1] = 0;
  sub_100009C48();
  return v0;
}

uint64_t sub_100003E04()
{
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  sub_100009C58();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10000ABD0;
  sub_100006E7C();
  swift_allocError();
  *v1 = xmmword_10000ABF0;
  sub_100009C48();
  return v0;
}

uint64_t sub_100003F10(uint64_t a1)
{
  v51 = sub_100001CBC(&qword_100014580, &qword_10000AE28);
  v2 = __chkstk_darwin(v51);
  v45 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __chkstk_darwin(v2);
  v6 = &v44 - v5;
  __chkstk_darwin(v4);
  v46 = &v44 - v7;
  v49 = &_swiftEmptyDictionarySingleton;
  v57 = &_swiftEmptyDictionarySingleton;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v50 = a1;

  v14 = 0;
  while (v11)
  {
    v15 = v6;
LABEL_11:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v17 | (v14 << 6);
    v19 = *(v50 + 56);
    v20 = (*(v50 + 48) + 16 * v18);
    v22 = *v20;
    v21 = v20[1];
    v23 = sub_100009B98();
    v24 = v19 + *(*(v23 - 8) + 72) * v18;
    v25 = *(v51 + 48);
    v47 = *(v23 - 8);
    v26 = *(v47 + 16);
    v27 = v46;
    v48 = v23;
    v26(&v46[v25], v24);
    *v27 = v22;
    v27[1] = v21;
    v6 = v15;
    sub_1000072C4(v27, v15);

    sub_100009B88();
    sub_100001CBC(&qword_100014588, &qword_10000AE30);
    if (swift_dynamicCast())
    {
      if (!*(&v53 + 1))
      {
        goto LABEL_18;
      }

      sub_100007394(&v52, v56);
      sub_1000072C4(v15, v45);
      sub_100007394(v56, v55);
      v28 = v49[2];
      if (v49[3] <= v28)
      {
        sub_100005F00(v28 + 1, 1);
      }

      v29 = v57;
      v30 = *v45;
      v31 = v45[1];
      sub_100009FF8();
      sub_100009E28();
      result = sub_10000A018();
      v32 = (v29 + 8);
      v49 = v29;
      v33 = -1 << *(v29 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~v29[(v34 >> 6) + 8]) == 0)
      {
        v37 = 0;
        v38 = (63 - v33) >> 6;
        while (++v35 != v38 || (v37 & 1) == 0)
        {
          v39 = v35 == v38;
          if (v35 == v38)
          {
            v35 = 0;
          }

          v37 |= v39;
          v40 = *&v32[8 * v35];
          if (v40 != -1)
          {
            v36 = __clz(__rbit64(~v40)) + (v35 << 6);
            goto LABEL_27;
          }
        }

        goto LABEL_30;
      }

      v36 = __clz(__rbit64((-1 << v34) & ~v29[(v34 >> 6) + 8])) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
      v41 = *(v51 + 48);
      *&v32[(v36 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v36;
      v42 = v49;
      v43 = (v49[6] + 16 * v36);
      *v43 = v30;
      v43[1] = v31;
      sub_100007394(v55, v42[7] + 40 * v36);
      ++v42[2];
      result = (*(v47 + 8))(v45 + v41, v48);
    }

    else
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
LABEL_18:
      sub_100007334(v15, &qword_100014580, &qword_10000AE28);
      result = sub_100007334(&v52, &qword_100014590, &qword_10000AE38);
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return v49;
    }

    v11 = *(v8 + 8 * v16);
    ++v14;
    if (v11)
    {
      v15 = v6;
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000043A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100009C28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  sub_100009C58();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10000ABD0;
  (*(v5 + 104))(v7, enum case for LogEntry.EntryType.json(_:), v4);
  sub_100009CE8();
  if (v3)
  {
    (*(v5 + 8))(v7, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    sub_100009D48();

    sub_100009C38();
  }

  return v8;
}

void sub_1000045E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v37[0] = a3;
  v37[1] = a4;
  v41 = a2;
  v7 = sub_100001CBC(&qword_100014548, &qword_10000ADD0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v40 = (v37 - v8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = xmmword_10000AC00;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v13 = v5[4];
  v12 = v5[5];
  v14 = v5[3];
  v39 = v5[2];
  v38 = v5;
  v15 = sub_100009EC8();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v17 = v41;
  v16[4] = a1;
  v16[5] = v17;
  v16[6] = v13;
  v16[7] = v12;
  v16[8] = v39;
  v16[9] = v14;
  v16[10] = v10;
  v16[11] = v11;

  v18 = v11;
  v19 = (v10 + 16);
  v20 = v18;
  sub_100006D5C(a1, v17);
  sub_10000518C(0, 0, v40, &unk_10000ADF0, v16);

  sub_100009F08();
  os_unfair_lock_lock((v10 + 16));
  v41 = v10;
  v21 = *(v10 + 32);
  if (v21 == 2)
  {
    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v22 = sub_100009DE8();
    sub_100006DB0(v22, qword_100014F00);
    v23 = sub_100009DC8();
    v24 = sub_100009EE8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Successfully submitted even to the upload", v25, 2u);
    }

    swift_getObjectType();
    sub_100009BB8();
    os_unfair_lock_unlock(v19);
  }

  else
  {
    v26 = *(v41 + 24);
    swift_getObjectType();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v21;
    sub_100006E44(v26, v21);
    sub_100006E44(v26, v21);
    sub_100009BA8();

    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v28 = sub_100009DE8();
    sub_100006DB0(v28, qword_100014F00);
    sub_100006E44(v26, v21);
    v29 = sub_100009DC8();
    v30 = sub_100009EF8();
    sub_100006E58(v26, v21);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v21;
      v44 = v40;
      *v31 = 136315138;
      v42 = v26;
      sub_100006E44(v26, v21);
      v32 = sub_100009E08();
      v34 = v19;
      v35 = sub_100008B7C(v32, v33, &v44);

      *(v31 + 4) = v35;
      v19 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error uploading message: %s", v31, 0xCu);
      sub_100006ED0(v40);
    }

    sub_100006E7C();
    swift_allocError();
    *v36 = v26;
    v36[1] = v21;
    swift_willThrow();
    os_unfair_lock_unlock(v19);
  }
}

uint64_t sub_100004ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v13;
  *(v8 + 216) = v12;
  *(v8 + 200) = a7;
  *(v8 + 208) = a8;
  *(v8 + 184) = a5;
  *(v8 + 192) = a6;
  *(v8 + 176) = a4;
  v9 = sub_100001CBC(&qword_100014570, &qword_10000AE18);
  *(v8 + 240) = v9;
  *(v8 + 248) = *(v9 - 8);
  *(v8 + 256) = swift_task_alloc();

  return (_swift_task_switch)(sub_100004BC4, 0, 0);
}

uint64_t sub_100004BC4()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[31];
  v10 = v0[32];
  v4 = v0[30];
  v11 = [objc_opt_self() sharedLogger];
  v1[33] = v11;
  isa = sub_100009AC8().super.isa;
  v1[34] = isa;
  v6 = sub_100009DF8();
  v1[35] = v6;
  v7 = sub_100009DF8();
  v1[36] = v7;
  v1[2] = v1;
  v1[3] = sub_100004DF4;
  swift_continuation_init();
  v1[17] = v4;
  v8 = sub_100001D04(v1 + 14);
  sub_100001CBC(&qword_100014578, &qword_10000AE20);
  sub_100009E78();
  (*(v3 + 32))(v8, v10, v4);
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_1000050FC;
  v1[13] = &unk_100010BE0;
  [v11 reportDataPlatformBatchedEvent:isa forBundleID:v6 ofSchema:v7 completion:?];
  (*(v3 + 8))(v8, v4);

  return _swift_continuation_await(v2);
}

uint64_t sub_100004DF4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_100004F90;
  }

  else
  {
    v2 = sub_100004F04;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_100004F04()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);

  dispatch_group_leave(*(v0 + 232));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100004F90()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v2 = *(v0 + 280);
  v4 = *(v0 + 264);
  v5 = *(v0 + 224);
  swift_willThrow();

  os_unfair_lock_lock((v5 + 16));
  sub_100006E58(*(v5 + 24), *(v5 + 32));
  swift_getErrorValue();
  v6 = *(*(v0 + 152) - 8);
  swift_task_alloc();
  (*(v6 + 16))();
  v7 = sub_100009E08();
  v9 = v8;

  *(v5 + 24) = v7;
  *(v5 + 32) = v9;
  os_unfair_lock_unlock((v5 + 16));

  dispatch_group_leave(*(v0 + 232));

  v10 = *(v0 + 8);

  return v10();
}

void sub_1000050FC(uint64_t a1, void *a2)
{
  sub_10000714C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_100001CBC(&qword_100014570, &qword_10000AE18);
    sub_100009E88();
  }

  else
  {
    sub_100001CBC(&qword_100014570, &qword_10000AE18);
    sub_100009E98();
  }
}

uint64_t sub_10000518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001CBC(&qword_100014548, &qword_10000ADD0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_1000073F8(a3, v25 - v10, &qword_100014548, &qword_10000ADD0);
  v12 = sub_100009EC8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100007334(v11, &qword_100014548, &qword_10000ADD0);
  }

  else
  {
    sub_100009EB8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_100009E68();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_100009E18() + 32;
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

      sub_100007334(a3, &qword_100014548, &qword_10000ADD0);

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

  sub_100007334(a3, &qword_100014548, &qword_10000ADD0);
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

uint64_t sub_10000548C(uint64_t a1, unint64_t a2)
{
  sub_100001CBC(&qword_100014568, &qword_10000ADF8);
  sub_100009C58();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10000ABD0;
  sub_100006E7C();
  swift_allocError();
  *v5 = a1;
  v5[1] = a2;
  sub_100006E44(a1, a2);
  sub_100009C48();
  return v4;
}

uint64_t sub_1000055B0()
{

  v1 = OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock_schemaStore;
  v2 = sub_100009C88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  sub_100007334(v0 + OBJC_IVAR____TtC33VisualIntelligenceCameraAnalytics11UploadBlock__messageSchema, &qword_100014520, &qword_10000ADA8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UploadBlock(uint64_t a1)
{
  result = qword_100014378;
  if (!qword_100014378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000056E0(uint64_t a1)
{
  sub_100009C88();
  if (v1 <= 0x3F)
  {
    sub_1000057C4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000057C4(uint64_t a1)
{
  if (!qword_100014388)
  {
    sub_100009CF8();
    v1 = sub_100009F18();
    if (!v2)
    {
      atomic_store(v1, &qword_100014388);
    }
  }
}

void *sub_10000583C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  type metadata accessor for UploadBlock(0);
  v12 = swift_allocObject();
  result = sub_1000025BC(v8, v9, v10, v11, a2, a3);
  if (!v4)
  {
    *a4 = v12;
  }

  return result;
}

unint64_t sub_100005924()
{
  result = qword_100014490;
  if (!qword_100014490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014490);
  }

  return result;
}

uint64_t sub_100005978(uint64_t a1)
{
  result = sub_1000073AC(&qword_1000144C8, type metadata accessor for UploadBlock, &unk_10000AC90);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000059D4()
{
  result = qword_1000144D0;
  if (!qword_1000144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D0);
  }

  return result;
}

unint64_t sub_100005A2C()
{
  result = qword_1000144D8;
  if (!qword_1000144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D8);
  }

  return result;
}

unint64_t sub_100005A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100009FA8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100005B38(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100005C30;

  return v6(a1);
}

uint64_t sub_100005C30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100005D28(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_100009FF8();
  sub_100009E28();
  v5 = sub_10000A018();

  return a3(a1, a2, v5);
}

void *sub_100005DAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100005DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100005DCC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100001CBC(&qword_1000145A8, &qword_10000AE48);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_100001CBC(&qword_1000145B0, &qword_10000AE50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100005F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001CBC(&qword_100014598, &qword_10000AE40);
  v33 = v4;
  result = sub_100009F58();
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_100007394(v24, v34);
      }

      else
      {
        sub_100001DB8(v24, v34);
      }

      sub_100009FF8();
      sub_100009E28();
      result = sub_10000A018();
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
      result = sub_100007394(v34, *(v7 + 56) + 40 * v15);
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

uint64_t sub_1000061C4(void *a1)
{
  v3 = sub_100001CBC(&qword_1000144E0, &qword_10000AD70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000714C(a1, a1[3]);
  sub_1000063A8();
  sub_10000A028();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_100009F78();
    v10 = 1;
    sub_100009F78();
    (*(v4 + 8))(v6, v3);
  }

  sub_100006ED0(a1);
  return v7;
}

unint64_t sub_1000063A8()
{
  result = qword_1000144E8;
  if (!qword_1000144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E8);
  }

  return result;
}

unint64_t sub_1000063FC(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014518, &qword_10000ADA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001CBC(&qword_100014540, &qword_10000ADC8);
    v7 = sub_100009F68();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000073F8(v9, v5, &qword_100014518, &qword_10000ADA0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100005D28(*v5, v12, sub_100005A80);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_100009CC8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1000065FC(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014508, &qword_10000AD90);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001CBC(&qword_100014538, &qword_10000ADC0);
    v7 = sub_100009F68();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000073F8(v9, v5, &qword_100014508, &qword_10000AD90);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100005D28(*v5, v12, sub_100005A80);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_100009D38();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

unint64_t sub_1000067FC(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014528, &qword_10000ADB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100001CBC(&qword_100014530, &qword_10000ADB8);
    v7 = sub_100009F68();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000073F8(v9, v5, &qword_100014528, &qword_10000ADB0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100005D28(*v5, v12, sub_100005A80);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_100009C98();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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

uint64_t sub_1000069FC()
{
  v1 = sub_100001CBC(&qword_100014550, &qword_10000ADD8);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = sub_100001CBC(&qword_100014558, &qword_10000ADE0);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100006AB4()
{
  swift_unknownObjectRelease();
  sub_100006B14(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100006B14(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006B68(uint64_t a1)
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
  v11[1] = sub_100006C68;

  return sub_100004ADC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100006C68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100006D5C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_100006DB0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006DE8()
{
  if (*(v0 + 24) >= 2uLL)
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006E44(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_100006E58(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_100006E68(a1, a2);
  }

  return a1;
}

uint64_t sub_100006E68(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_100006E7C()
{
  result = qword_100014560;
  if (!qword_100014560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014560);
  }

  return result;
}

uint64_t sub_100006ED0(void *a1)
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

uint64_t sub_100006F1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100006F54(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000078C8;

  return sub_100005B38(a1, v4);
}

uint64_t sub_10000700C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100006C68;

  return sub_100005B38(a1, v4);
}

uint64_t sub_1000070D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_10000714C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007190()
{
  v1 = sub_100009CF8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  sub_100006B14(*(v0 + v5), *(v0 + v5 + 8));

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_100007230()
{
  v1 = *(sub_100009CF8() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1000043A8(v0 + v2, *v3, v3[1]);
}

uint64_t sub_1000072C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CBC(&qword_100014580, &qword_10000AE28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007334(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001CBC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007394(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000073AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000073F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001CBC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007460(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CBC(&qword_100014520, &qword_10000ADA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000074D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000074E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000753C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
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

uint64_t getEnumTagSinglePayload for UploadBlock.Config.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UploadBlock.Config.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100007718(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100007724(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10000776C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000077C0()
{
  result = qword_1000145B8;
  if (!qword_1000145B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145B8);
  }

  return result;
}

unint64_t sub_100007818()
{
  result = qword_1000145C0;
  if (!qword_1000145C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145C0);
  }

  return result;
}

unint64_t sub_100007870()
{
  result = qword_1000145C8;
  if (!qword_1000145C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000145C8);
  }

  return result;
}

uint64_t sub_1000078CC()
{
  v0 = sub_100009DE8();
  sub_100009A44(v0, qword_100014F00);
  sub_100006DB0(v0, qword_100014F00);
  return sub_100009DD8();
}

void sub_100007944(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_100009DF8();
  v5 = sub_100009DF8();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_100009AA8();
  }

  else
  {
    sub_100009F48();
    __break(1u);
  }
}

uint64_t sub_100007AAC(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *v1;
  v3 = sub_100009EA8();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  sub_100009AE8();
  v2[10] = swift_task_alloc();
  sub_100001CBC(&qword_100014678, &qword_10000B108);
  v2[11] = swift_task_alloc();
  sub_100001CBC(&qword_100014680, &qword_10000B110);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return (_swift_task_switch)(sub_100007C3C, 0, 0);
}

uint64_t sub_100007C3C()
{
  if (qword_100014238 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_100009DE8();
  v0[14] = sub_100006DB0(v2, qword_100014F00);
  v3 = v1;
  v4 = sub_100009DC8();
  v5 = sub_100009EE8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "Context: %@", v7, 0xCu);
    sub_100007334(v8, &qword_1000146A0, &qword_10000B128);
  }

  v11 = v0[5];
  v10 = v0[6];

  v0[2] = v11;
  v12 = swift_task_alloc();
  v0[15] = v12;
  v13 = sub_100009AF8();
  v0[16] = v13;
  v15 = sub_100008A64(&qword_100014670, v14, type metadata accessor for VisualIntelligenceCameraAnalytics, &unk_10000B080);
  v16 = sub_100008A64(&qword_100014688, 255, &type metadata accessor for PoirotDefaultTaskParameters, &protocol conformance descriptor for PoirotDefaultTaskParameters);
  v17 = sub_100008A64(&qword_100014690, 255, &type metadata accessor for PoirotDefaultTaskParameters, &protocol conformance descriptor for PoirotDefaultTaskParameters);
  *v12 = v0;
  v12[1] = sub_100007ED8;
  v18 = v0[13];
  v19 = v0[4];

  return MLHostExtension.loadConfig<A>(context:)(v18, v19, v10, v13, v15, v16, v17);
}

uint64_t sub_100007ED8()
{

  return (_swift_task_switch)(sub_100007FD4, 0, 0);
}

uint64_t sub_100007FD4()
{
  v2 = v0[12];
  v1 = v0[13];
  sub_100009134(v1);
  sub_100009DB8();
  sub_100009560(v1, v2);
  v3 = sub_100001CBC(&qword_100014698, &unk_10000B118);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[12];
  if (v5 == 1)
  {
    sub_100007334(v0[12], &qword_100014680, &qword_10000B110);
    v7 = 1;
  }

  else
  {
    sub_100009DA8();
    (*(v4 + 8))(v6, v3);
    v7 = 0;
  }

  v8 = v0[11];
  (*(*(v0[16] - 8) + 56))(v8, v7, 1);
  sub_100009AD8();
  sub_100009BF8();
  swift_allocObject();
  v9 = sub_100009BE8();
  sub_1000095D0(v8, v9, &protocol witness table for UserDefaultsTimeBookmark);
  sub_100007334(v0[11], &qword_100014678, &qword_10000B108);

  v10 = sub_100009DC8();
  v11 = sub_100009EE8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Execution is completed.", v12, 2u);
  }

  v13 = v0[13];

  v14 = objc_allocWithZone(sub_100009D78());
  v15 = sub_100009D68();
  sub_100007334(v13, &qword_100014680, &qword_10000B110);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_10000854C()
{
  objc_allocWithZone(sub_100009D78());
  v1 = sub_100009D68();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000085C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008658;

  return sub_100007AAC(a1);
}

uint64_t sub_100008658(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_100008754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100006C68;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_100008838(uint64_t a1, uint64_t a2)
{
  v3 = sub_100008A64(&qword_100014670, a2, type metadata accessor for VisualIntelligenceCameraAnalytics, &unk_10000B080);

  return MLHostExtension.configuration.getter(a1, v3);
}

uint64_t sub_1000088B4@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for VisualIntelligenceCameraAnalytics();
  sub_100008A64(&qword_1000145D0, v3, type metadata accessor for VisualIntelligenceCameraAnalytics, &unk_10000B0C0);
  sub_100009D58();
  return 0;
}

uint64_t sub_100008A64(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008AAC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100008B20(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100008B7C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100008B7C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100008C48(v11, 0, 0, 1, a1, a2);
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
    sub_1000070D4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006ED0(v11);
  return v7;
}

unint64_t sub_100008C48(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100008D54(a5, a6);
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
    result = sub_100009F38();
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

char *sub_100008D54(uint64_t a1, unint64_t a2)
{
  v3 = sub_100008DA0(a1, a2);
  sub_100008ED0(&off_100010948);
  return v3;
}

char *sub_100008DA0(uint64_t a1, unint64_t a2)
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

  v6 = sub_100008FBC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100009F38();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100009E38();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100008FBC(v10, 0);
        result = sub_100009F28();
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

uint64_t sub_100008ED0(uint64_t result)
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

  result = sub_100009030(result, v11, 1, v3);
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

void *sub_100008FBC(uint64_t a1, uint64_t a2)
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

  sub_100001CBC(&qword_1000146D8, &qword_10000B150);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100009030(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001CBC(&qword_1000146D8, &qword_10000B150);
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

_BYTE **sub_100009124(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100009134(uint64_t a1)
{
  v2 = sub_100001CBC(&qword_100014680, &qword_10000B110);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_100001CBC(&qword_100014698, &unk_10000B118);
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  sub_100009560(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007334(v4, &qword_100014680, &qword_10000B110);
    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v12 = sub_100009DE8();
    sub_100006DB0(v12, qword_100014F00);
    v13 = sub_100009DC8();
    v14 = sub_100009EE8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Execution without additional parameters", v15, 2u);
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    if (qword_100014238 != -1)
    {
      swift_once();
    }

    v16 = sub_100009DE8();
    sub_100006DB0(v16, qword_100014F00);
    (*(v6 + 16))(v9, v11, v5);
    v17 = sub_100009DC8();
    v18 = sub_100009EE8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = v26;
      *v19 = 136315138;
      sub_1000099FC(&qword_1000146D0, &qword_100014698, &unk_10000B118, &protocol conformance descriptor for MLHostParameters<A>);
      v20 = sub_100009F98();
      v22 = v21;
      v23 = *(v6 + 8);
      v23(v9, v5);
      v24 = sub_100008B7C(v20, v22, &v27);

      *(v19 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v17, v18, "Configuration: %s", v19, 0xCu);
      sub_100006ED0(v26);

      v23(v11, v5);
    }

    else
    {

      v25 = *(v6 + 8);
      v25(v9, v5);
      v25(v11, v5);
    }
  }
}

uint64_t sub_100009560(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001CBC(&qword_100014680, &qword_10000B110);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000095D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v5 = sub_100009B68();
  v22 = *(v5 - 8);
  v23 = v5;
  __chkstk_darwin(v5);
  v21 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001CBC(&qword_1000146A8, &qword_10000B130);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  v20[1] = v20 - v11;
  v13 = sub_100009AB8();
  __chkstk_darwin(v13 - 8);
  v20[2] = swift_getObjectType();
  v20[3] = sub_100001CBC(&qword_1000146B0, &qword_10000B138);
  sub_100007944(0x6C4164616F6C7055, 0xE90000000000006CLL);
  sub_100001CBC(&qword_1000146B8, &qword_10000B140);
  sub_100009B38();
  *(swift_allocObject() + 16) = xmmword_10000ABD0;
  v14 = BMVisualIntelligenceCameraLookupEventIdentifier;
  sub_100009B28();
  v15 = sub_100009B78();
  v16 = *(*(v15 - 8) + 56);
  v16(v12, 1, 1, v15);
  v16(v10, 1, 1, v15);
  sub_100001CBC(&qword_1000146C0, &qword_10000B148);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  v25 = v17;
  sub_100009BC8();
  sub_1000099FC(&qword_1000146C8, &qword_1000146C0, &qword_10000B148, &unk_10000AAD8);
  (*(v22 + 104))(v21, enum case for LoggingType.void(_:), v23);
  swift_unknownObjectRetain_n();
  v18 = v24;
  result = sub_100009B18();
  if (!v18)
  {
    sub_100009B08();
  }

  return result;
}

uint64_t sub_1000099B4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000099FC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000099B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_100009A44(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}