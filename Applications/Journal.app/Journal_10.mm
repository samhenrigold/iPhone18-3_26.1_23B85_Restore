uint64_t sub_10011A350()
{
  v1 = v0;
  v2 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v2 - 8);
  v5 = &v12[-v4];
  if (*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {

    sub_1000768B4(v5);

    v6 = type metadata accessor for MultiPinMapAssetMetadata();
    if ((*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v3 = sub_100004F84(v5, &unk_100AD5B30, &unk_100941F80);
    }

    else
    {
      v7 = MultiPinMapAssetMetadata.isSlim.getter();
      v3 = sub_100004F84(v5, &unk_100AD5B30, &unk_100941F80);
      if (v7 != 2 && (v7 & 1) != 0)
      {
        LOBYTE(v8) = 1;
        return v8 & 1;
      }
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_context);
  if (v8)
  {
    __chkstk_darwin(v3);
    *&v12[-16] = v1;
    v10 = v9;
    sub_1000F24EC(&qword_100AD38E8, &qword_100941FB8);
    NSManagedObjectContext.performAndWait<A>(_:)();

    LOBYTE(v8) = v12[15];
  }

  return v8 & 1;
}

BOOL sub_10011A520()
{
  v39 = type metadata accessor for VisitAssetMetadata();
  v1 = *(v39 - 8);
  __chkstk_darwin(v39);
  v3 = v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&unk_100AEED30, &qword_100941FB0);
  v38 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v34 - v8;
  v10 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v10 - 8);
  v12 = v34 - v11;
  v13 = type metadata accessor for MultiPinMapAssetMetadata();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v14 + 56))(v12, 1, 1, v13, v15);
    goto LABEL_11;
  }

  sub_1000768B4(v12);

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
LABEL_11:
    sub_100004F84(v12, &unk_100AD5B30, &unk_100941F80);
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_12;
  }

  (*(v14 + 32))(v17, v12, v13);
  v18 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v14 + 8))(v17, v13);
  v19 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v20 = *(v18 + 16);
    if (v20)
    {
      v35 = v6;
      v40 = _swiftEmptyArrayStorage;
      sub_100199A44(0, v20, 0);
      v19 = v40;
      v22 = *(v1 + 16);
      v21 = v1 + 16;
      v23 = *(v21 + 64);
      v34[1] = v18;
      v24 = v18 + ((v23 + 32) & ~v23);
      v36 = *(v21 + 56);
      v37 = v22;
      do
      {
        v25 = v39;
        v37(v3, v24, v39);
        VisitAssetMetadata.assetSource.getter();
        (*(v21 - 8))(v3, v25);
        v40 = v19;
        v27 = *(v19 + 2);
        v26 = *(v19 + 3);
        if (v27 >= v26 >> 1)
        {
          sub_100199A44((v26 > 1), v27 + 1, 1);
          v19 = v40;
        }

        *(v19 + 2) = v27 + 1;
        sub_100021CEC(v9, v19 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v27, &unk_100AEED30, &qword_100941FB0);
        v24 += v36;
        --v20;
      }

      while (v20);

      v6 = v35;
    }

    else
    {
    }
  }

LABEL_12:
  v28 = enum case for AssetSource.automatic(_:);
  v29 = type metadata accessor for AssetSource();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v6, v28, v29);
  (*(v30 + 56))(v6, 0, 1, v29);
  LOBYTE(v28) = sub_1006B7490(v6, v19);
  sub_100004F84(v6, &unk_100AEED30, &qword_100941FB0);
  if (v28)
  {
    v31 = sub_1008906D0(v19);

    v32 = *(v31 + 16);

    return v32 == 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_10011AA48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 185) = a3;
  *(v4 + 16) = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v4 + 40) = v6;
  *(v4 + 48) = *(v6 - 8);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  *(v4 + 72) = swift_task_alloc();
  v7 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 - 8);
  *(v4 + 96) = swift_task_alloc();
  v8 = type metadata accessor for MultiPinMapAssetMetadata();
  *(v4 + 104) = v8;
  *(v4 + 112) = *(v8 - 8);
  *(v4 + 120) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v4 + 128) = v9;
  *(v4 + 136) = v11;

  return _swift_task_switch(sub_10011AC4C, v9, v11);
}

uint64_t sub_10011AC4C()
{
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 96);
  if (!*(v1 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v4 + 56))(*(v0 + 96), 1, 1, *(v0 + 104));
    goto LABEL_9;
  }

  sub_1000768B4(v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
LABEL_9:
    sub_100004F84(*(v0 + 96), &unk_100AD5B30, &unk_100941F80);
LABEL_10:

    v20 = *(v0 + 8);

    return v20();
  }

  (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
  if (MultiPinMapAssetMetadata.isSlim.getter() == 2)
  {
    v6 = *(v0 + 32);
    v7 = *&v6[OBJC_IVAR____TtC7Journal5Asset_context];
    *(v0 + 160) = v7;
    if (v7)
    {
      v9 = *(v0 + 48);
      v8 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = *(v0 + 185);
      v12 = swift_allocObject();
      *(v0 + 168) = v12;
      *(v12 + 16) = v6;
      *(v12 + 24) = v11;
      (*(v9 + 104))(v8, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v10);
      v13 = v6;
      v7;
      v14 = swift_task_alloc();
      *(v0 + 176) = v14;
      v15 = sub_1000F24EC(&qword_100AD38E0, &qword_100954620);
      *v14 = v0;
      v14[1] = sub_10011B5A8;
      v16 = *(v0 + 56);
      v17 = sub_10011D4B4;
      v18 = v0 + 184;
      v19 = v12;

      return NSManagedObjectContext.perform<A>(schedule:_:)(v18, v16, v17, v19, v15);
    }

    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    goto LABEL_10;
  }

  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  v24 = *(v0 + 104);
  v25 = *(v0 + 80);
  v26 = *(v0 + 88);
  v27 = *(v0 + 72);
  MultiPinMapAssetMetadata.isSlim.setter();
  (*(v22 + 16))(v27, v23, v24);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8, &unk_100941FA0);
  v28 = swift_allocObject();
  (*(v26 + 56))(v28 + *(*v28 + 104), 1, 1, v25);
  *(v28 + *(*v28 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v27, v28 + *(*v28 + 120), &qword_100AD38D0, &qword_1009522B0);
  *(v1 + v2) = v28;

  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  if (!v18)
  {
    __break(1u);
    return NSManagedObjectContext.perform<A>(schedule:_:)(v18, v16, v17, v19, v15);
  }

  v29 = v18;
  v30 = *(v0 + 32);
  ObjectType = swift_getObjectType();
  v32 = v30;
  v33 = swift_task_alloc();
  *(v0 + 144) = v33;
  *v33 = v0;
  v33[1] = sub_10011B0CC;
  v34 = *(v0 + 24);
  v35 = *(v0 + 16);

  return sub_10078BBDC(v35, v34, ObjectType, v29);
}

uint64_t sub_10011B0CC()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10011B1EC, v3, v2);
}

uint64_t sub_10011B1EC()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_10011B2A0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);

  return sub_1001DA5A8(v3, v2);
}

uint64_t sub_10011B2A0()
{
  v1 = *v0;

  v2 = *(v1 + 136);
  v3 = *(v1 + 128);

  return _swift_task_switch(sub_10011B3C0, v3, v2);
}

uint64_t sub_10011B3C0()
{
  v1 = *(v0 + 32);
  v2 = *&v1[OBJC_IVAR____TtC7Journal5Asset_context];
  *(v0 + 160) = v2;
  if (v2)
  {
    v4 = *(v0 + 48);
    v3 = *(v0 + 56);
    v5 = *(v0 + 40);
    v6 = *(v0 + 185);
    v7 = swift_allocObject();
    *(v0 + 168) = v7;
    *(v7 + 16) = v1;
    *(v7 + 24) = v6;
    (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
    v8 = v1;
    v2;
    v9 = swift_task_alloc();
    *(v0 + 176) = v9;
    v10 = sub_1000F24EC(&qword_100AD38E0, &qword_100954620);
    *v9 = v0;
    v9[1] = sub_10011B5A8;
    v11 = *(v0 + 56);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 184, v11, sub_10011D4B4, v7, v10);
  }

  else
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_10011B5A8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[20];
    (*(v2[6] + 8))(v2[7], v2[5]);

    v5 = v2[16];
    v6 = v2[17];

    return _swift_task_switch(sub_10011B6FC, v5, v6);
  }
}

uint64_t sub_10011B6FC()
{
  (*(v0[14] + 8))(v0[15], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10011B7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v5 = type metadata accessor for VisitAssetMetadata();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = type metadata accessor for MultiPinMapAssetMetadata();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v3 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v13 + 56))(v11, 1, 1, v12, v14);
    goto LABEL_15;
  }

  sub_1000768B4(v11);

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_15:
    sub_100004F84(v11, &unk_100AD5B30, &unk_100941F80);
    goto LABEL_16;
  }

  (*(v13 + 32))(v16, v11, v12);
  v17 = MultiPinMapAssetMetadata.visitsData.getter();
  result = (*(v13 + 8))(v16, v12);
  if (!v17)
  {
LABEL_16:
    v24 = *(v6 + 56);
    v25 = a3;
    return v24(v25, 1, 1, v5);
  }

  v27 = a3;
  v19 = *(v17 + 16);
  if (!v19)
  {
LABEL_19:

    v24 = *(v6 + 56);
    v25 = v27;
    return v24(v25, 1, 1, v5);
  }

  v20 = 0;
  v28 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  while (v20 < *(v17 + 16))
  {
    (*(v6 + 16))(v8, v28 + *(v6 + 72) * v20, v5);
    v21 = VisitAssetMetadata.id.getter();
    if (v30)
    {
      if (v21 == v29 && v22 == v30)
      {

LABEL_21:

        v26 = v27;
        (*(v6 + 32))(v27, v8, v5);
        return (*(v6 + 56))(v26, 0, 1, v5);
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v23)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    ++v20;
    result = (*(v6 + 8))(v8, v5);
    if (v19 == v20)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_10011BB64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiPinMapAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10011BBC8(char *a1)
{
  v169 = a1;
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v143 = &v130 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v142 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1000F24EC(&qword_100AD38B8, &unk_1009611A0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v138 = &v130 - v5;
  v136 = sub_1000F24EC(&unk_100AEBEA0, &unk_100941F90);
  v135 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v130 - v6;
  v139 = sub_1000F24EC(&qword_100AD38C0, &qword_1009611B0);
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v134 = &v130 - v7;
  v132 = type metadata accessor for UTType();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v145 = &v130 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v130 - v13;
  __chkstk_darwin(v15);
  v144 = &v130 - v16;
  __chkstk_darwin(v17);
  v19 = &v130 - v18;
  v168 = type metadata accessor for VisitAssetMetadata();
  v20 = *(v168 - 8);
  __chkstk_darwin(v168);
  v22 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v23 - 8);
  v150 = &v130 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v130 - v26;
  __chkstk_darwin(v28);
  v149 = &v130 - v29;
  __chkstk_darwin(v30);
  v164 = &v130 - v31;
  __chkstk_darwin(v32);
  v34 = &v130 - v33;
  v36 = __chkstk_darwin(v35);
  v37 = *(v10 + 56);
  v152 = &v130 - v38;
  v37(v36);
  v153 = v34;
  v170 = v9;
  v154 = v37;
  v155 = v10 + 56;
  (v37)(v34, 1, 1, v9);
  v39 = *(v169 + 2);
  if (v39)
  {
    v148 = v14;
    v40 = *(v20 + 16);
    v41 = v20 + 16;
    v42 = &v169[(*(v20 + 80) + 32) & ~*(v20 + 80)];
    v159 = (v10 + 32);
    v160 = v40;
    v146 = (v10 + 8);
    v43 = _swiftEmptyArrayStorage;
    v44 = *(v41 + 56);
    v162 = v27;
    v163 = v41;
    v157 = (v41 - 8);
    v158 = v44;
    v45 = &unk_10093B4E0;
    v156 = _swiftEmptyArrayStorage;
    v46 = v19;
    v147 = v19;
    v161 = v22;
    v167 = (v10 + 48);
    v40(v22, v42, v168);
    while (1)
    {
      v47 = VisitAssetMetadata.placeName.getter();
      if (v48)
      {
        v49 = v47;
        v50 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10009BCC8(0, *(v43 + 2) + 1, 1, v43);
        }

        v52 = *(v43 + 2);
        v51 = *(v43 + 3);
        if (v52 >= v51 >> 1)
        {
          v43 = sub_10009BCC8((v51 > 1), v52 + 1, 1, v43);
        }

        *(v43 + 2) = v52 + 1;
        v53 = &v43[2 * v52];
        *(v53 + 4) = v49;
        *(v53 + 5) = v50;
      }

      v54 = VisitAssetMetadata.mapItemData.getter();
      v169 = v43;
      if (v55 >> 60 != 15)
      {
        v56 = v54;
        v57 = v55;
        sub_10011D468();
        v58 = static NSCoding<>.create(from:)();
        v59 = sub_10003A5C8(v56, v57);
        if (v58)
        {
          v60 = [v58 _addressFormattedAsSinglelineAddress];
          if (v60 || (v60 = [v58 name]) != 0)
          {
            v61 = v60;
            v151 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = v62;
          }

          else
          {
            v100 = VisitAssetMetadata.placeName.getter();
            if (!v101)
            {

              goto LABEL_22;
            }

            v63 = v101;
            v151 = v100;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = sub_10009BCC8(0, *(v156 + 2) + 1, 1, v156);
          }

          v65 = *(v156 + 2);
          v64 = *(v156 + 3);
          if (v65 >= v64 >> 1)
          {
            v156 = sub_10009BCC8((v64 > 1), v65 + 1, 1, v156);
          }

          v66 = v156;
          *(v156 + 2) = v65 + 1;
          v67 = &v66[2 * v65];
          *(v67 + 4) = v151;
          *(v67 + 5) = v63;
        }
      }

LABEL_22:
      v68 = v164;
      VisitAssetMetadata.visitStartTime.getter();
      v69 = *v167;
      v70 = (*v167)(v68, 1, v170);
      v165 = v42;
      v166 = v39;
      if (v70 == 1)
      {
        sub_100004F84(v68, &unk_100AD4790, v45);
LABEL_26:
        v43 = v169;
        v78 = v162;
        goto LABEL_31;
      }

      v71 = v68;
      v72 = *v159;
      v73 = v45;
      v74 = v170;
      (*v159)(v46, v71, v170);
      v75 = v152;
      v76 = v149;
      sub_1000082B4(v152, v149, &unk_100AD4790, v73);
      if (v69(v76, 1, v74) == 1)
      {
        sub_100004F84(v75, &unk_100AD4790, v73);
        sub_100004F84(v76, &unk_100AD4790, v73);
        v77 = v170;
        v72(v75, v46, v170);
        (v154)(v75, 0, 1, v77);
        v22 = v161;
        v45 = v73;
        v42 = v165;
        v39 = v166;
        goto LABEL_26;
      }

      v79 = v144;
      v80 = v76;
      v81 = v170;
      v72(v144, v80, v170);
      v82 = static Date.< infix(_:_:)();
      v83 = *v146;
      (*v146)(v79, v81);
      if (v82)
      {
        v84 = v152;
        sub_100004F84(v152, &unk_100AD4790, &unk_10093B4E0);
        v85 = v170;
        v72(v84, v46, v170);
        (v154)(v84, 0, 1, v85);
        v45 = &unk_10093B4E0;
        v43 = v169;
        v22 = v161;
        v78 = v162;
      }

      else
      {
        v83(v46, v170);
        v43 = v169;
        v22 = v161;
        v78 = v162;
        v45 = &unk_10093B4E0;
      }

      v42 = v165;
      v39 = v166;
LABEL_31:
      VisitAssetMetadata.visitEndTime.getter();
      if (v69(v78, 1, v170) == 1)
      {
        (*v157)(v22, v168);
        sub_100004F84(v78, &unk_100AD4790, v45);
      }

      else
      {
        v86 = v78;
        v87 = *v159;
        v88 = v148;
        v89 = v170;
        (*v159)(v148, v86, v170);
        v90 = v153;
        v91 = v45;
        v92 = v150;
        sub_1000082B4(v153, v150, &unk_100AD4790, v91);
        if (v69(v92, 1, v89) == 1)
        {
          v93 = v161;
          (*v157)(v161, v168);
          sub_100004F84(v90, &unk_100AD4790, v91);
          sub_100004F84(v92, &unk_100AD4790, v91);
          v87(v90, v88, v89);
          (v154)(v90, 0, 1, v89);
          v46 = v147;
          v43 = v169;
          v42 = v165;
          v39 = v166;
          v22 = v93;
          v45 = v91;
        }

        else
        {
          v94 = v145;
          v87(v145, v92, v89);
          v95 = static Date.> infix(_:_:)();
          v96 = *v146;
          (*v146)(v94, v89);
          v22 = v161;
          (*v157)(v161, v168);
          if (v95)
          {
            v97 = v153;
            sub_100004F84(v153, &unk_100AD4790, &unk_10093B4E0);
            v98 = v170;
            v87(v97, v88, v170);
            v99 = v98;
            v45 = &unk_10093B4E0;
            (v154)(v97, 0, 1, v99);
            v46 = v147;
            v43 = v169;
            v42 = v165;
            v39 = v166;
          }

          else
          {
            v96(v88, v170);
            v46 = v147;
            v43 = v169;
            v42 = v165;
            v39 = v166;
            v45 = &unk_10093B4E0;
          }
        }
      }

      v42 += v158;
      if (!--v39)
      {
        goto LABEL_41;
      }

      v160(v22, v42, v168);
    }
  }

  v43 = _swiftEmptyArrayStorage;
  v156 = _swiftEmptyArrayStorage;
LABEL_41:
  v102 = v130;
  static UTType.calendarEvent.getter();
  v103 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = UTType._bridgeToObjectiveC()().super.isa;
  v170 = [v103 initWithContentType:isa];

  (*(v131 + 8))(v102, v132);
  v171 = v43;
  v105 = v135;
  v106 = v133;
  v107 = v136;
  (*(v135 + 104))(v133, enum case for ListFormatStyle.ListType.and<A, B>(_:), v136);
  v108 = v140;
  v109 = v138;
  v110 = v141;
  (*(v140 + 104))(v138, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v141);
  sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  sub_10000B58C(&qword_100AD38C8, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
  v111 = v134;
  static FormatStyle.list<A>(type:width:)();
  (*(v108 + 8))(v109, v110);
  (*(v105 + 8))(v106, v107);
  sub_10000B58C(&unk_100AEBEB0, &qword_100AD38C0, &qword_1009611B0, &protocol conformance descriptor for ListFormatStyle<A, B>);
  v112 = v139;
  Sequence.formatted<A>(_:)();
  (*(v137 + 8))(v111, v112);

  v113 = v172;
  v114 = v173;
  v171 = v156;
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
  v115 = BidirectionalCollection<>.joined(separator:)();
  v117 = v116;

  v118 = v170;
  sub_10012B77C(v113, v114, v115, v117, v119);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v120 = String.init(localized:table:bundle:locale:comment:)();
  v122 = v121;
  sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
  v123 = swift_allocObject();
  *(v123 + 16) = xmmword_100940080;
  v124 = v152;
  v125 = sub_10012C00C(v120, v122, v152);
  v127 = v126;

  *(v123 + 32) = v125;
  *(v123 + 40) = v127;
  v128 = Array._bridgeToObjectiveC()().super.isa;

  [v118 setAlternateNames:v128];

  sub_100004F84(v153, &unk_100AD4790, &unk_10093B4E0);
  sub_100004F84(v124, &unk_100AD4790, &unk_10093B4E0);
  return v118;
}

void *sub_10011CCB8()
{
  v1 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v0 + OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata))
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
    goto LABEL_6;
  }

  sub_1000768B4(v3);

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
LABEL_6:
    sub_100004F84(v3, &unk_100AD5B30, &unk_100941F80);
    return 0;
  }

  (*(v5 + 32))(v8, v3, v4);
  v9 = MultiPinMapAssetMetadata.visitsData.getter();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v10 = sub_10011BBC8(v9);

    return v10;
  }

  return 0;
}

char *sub_10011CEC0(char *a1, uint64_t a2)
{
  v52 = a2;
  v55 = a1;
  v53 = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  __chkstk_darwin(v53);
  v51 = &v40 - v2;
  v3 = type metadata accessor for MultiPinMapAssetMetadata();
  v49 = *(v3 - 8);
  v50 = v3;
  __chkstk_darwin(v3);
  v48 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for UUID();
  v40 = *(v47 - 8);
  v5 = v40;
  __chkstk_darwin(v47);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v40 - v8;
  v9 = type metadata accessor for AssetSource();
  v44 = *(v9 - 8);
  v10 = v44;
  __chkstk_darwin(v9);
  v46 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v43 = &v40 - v13;
  v15 = type metadata accessor for AssetType();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v22 = &v40 - v21;
  v23 = *(v16 + 104);
  v41 = v15;
  v23(&v40 - v21, enum case for AssetType.multiPinMap(_:), v15, v20);
  v42 = *(v10 + 16);
  v42(v14, v55, v9);
  v24 = v54;
  UUID.init()();
  v25 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset(0));
  *&v25[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = 0;
  v26 = *(v5 + 16);
  v27 = v45;
  v28 = v47;
  v26(v45, v24, v47);
  (*(v16 + 16))(v18, v22, v15);
  v29 = v46;
  v30 = v43;
  v42(v46, v43, v9);
  v31 = sub_100285908(v27, v18, v29);
  (*(v40 + 8))(v54, v28);
  v32 = *(v44 + 8);
  v32(v30, v9);
  (*(v16 + 8))(v22, v41);
  v33 = v31;
  v34 = v48;
  MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
  v32(v55, v9);
  v35 = v51;
  (*(v49 + 32))(v51, v34, v50);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8, &unk_100941FA0);
  v36 = swift_allocObject();
  v37 = *(*v36 + 104);
  v38 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  (*(*(v38 - 8) + 56))(v36 + v37, 1, 1, v38);
  *(v36 + *(*v36 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v35, v36 + *(*v36 + 120), &qword_100AD38D0, &qword_1009522B0);
  *&v33[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = v36;

  return v33;
}

unint64_t sub_10011D468()
{
  result = qword_100AD5A90;
  if (!qword_100AD5A90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD5A90);
  }

  return result;
}

uint64_t sub_10011D4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = a1;
  v37 = sub_1000F24EC(&unk_100AD9850, &qword_100942010);
  __chkstk_darwin(v37);
  v36 = &v32 - v3;
  v4 = type metadata accessor for InsightsHighlightsView(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v35 = v6;
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000F24EC(&qword_100AD3B48, &qword_100942148);
  __chkstk_darwin(v39);
  v13 = &v32 - v12;
  v34 = v4;
  v14 = v2 + *(v4 + 44);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v17 = sub_1000467F0(v15, 0);
    (*(v9 + 8))(v11, v8, v17);
    LOBYTE(v15) = v40;
  }

  v40 = static Alignment.center.getter();
  v41 = v18;
  sub_100122F6C();
  v19 = AnyLayout.init<A>(_:)();
  *v13 = v15;
  *(v13 + 1) = v19;
  v20 = sub_1000F24EC(&qword_100AD3B58, &qword_100942150);
  sub_10011D9DC(v2, &v13[*(v20 + 44)]);
  sub_100122FC0(v2, v7, type metadata accessor for InsightsHighlightsView);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v33 = v13;
  v22 = swift_allocObject();
  sub_100123034(v7, v22 + v21);
  v23 = &v13[*(v39 + 36)];
  v24 = sub_1000F24EC(&qword_100AD3B68, &qword_100942170);
  static TaskPriority.userInitiated.getter();
  sub_1000082B4(v2, &v23[*(v24 + 40)], &unk_100AD9850, &qword_100942010);
  *v23 = &unk_100942168;
  *(v23 + 1) = v22;
  sub_1000F24EC(&qword_100AD3A58, &unk_1009420D0);
  v25 = v36;
  State.wrappedValue.getter();
  sub_100122FC0(v2, v7, type metadata accessor for InsightsHighlightsView);
  v26 = swift_allocObject();
  sub_100123034(v7, v26 + v21);
  sub_1001231E4();
  sub_1001235B0();
  v27 = v38;
  v28 = v33;
  View.onChange<A>(of:initial:_:)();

  sub_100004F84(v25, &unk_100AD9850, &qword_100942010);
  sub_100004F84(v28, &qword_100AD3B48, &qword_100942148);
  sub_100122FC0(v2, v7, type metadata accessor for InsightsHighlightsView);
  v29 = swift_allocObject();
  sub_100123034(v7, v29 + v21);
  result = sub_1000F24EC(&qword_100AD3BE0, &qword_1009421A0);
  v31 = (v27 + *(result + 36));
  *v31 = sub_1001236AC;
  v31[1] = v29;
  v31[2] = 0;
  v31[3] = 0;
  return result;
}

uint64_t sub_10011D9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  *(&v85 + 1) = type metadata accessor for PlainButtonStyle();
  v76 = *(*(&v85 + 1) - 8);
  __chkstk_darwin(*(&v85 + 1));
  v75 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsightsHighlightsView(0);
  v71 = *(v4 - 8);
  v5 = *(v71 + 64);
  __chkstk_darwin(v4);
  v72 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = sub_1000F24EC(&qword_100AD3BB0, &unk_100942190);
  v74 = *(v85 - 8);
  __chkstk_darwin(v85);
  v73 = &v69 - v6;
  v86 = sub_1000F24EC(&qword_100AD3C10, &qword_1009421D8);
  v78 = *(v86 - 8);
  __chkstk_darwin(v86);
  v77 = &v69 - v7;
  v84 = type metadata accessor for Date();
  v82 = *(v84 - 8);
  v8 = *(v82 + 64);
  __chkstk_darwin(v84);
  __chkstk_darwin(v9);
  v79 = &v69 - v10;
  v87 = sub_1000F24EC(&qword_100AD3C18, &qword_1009421E0);
  __chkstk_darwin(v87);
  v12 = &v69 - v11;
  v80 = sub_1000F24EC(&qword_100AD3C20, &qword_1009421E8);
  __chkstk_darwin(v80);
  v81 = &v69 - v13;
  v88 = sub_1000F24EC(&qword_100AD3BA8, &qword_100942188);
  __chkstk_darwin(v88);
  v83 = &v69 - v14;
  v15 = type metadata accessor for InsightsHighlightsView.Phase(0);
  __chkstk_darwin(v15);
  v17 = (&v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AD3A50, &qword_1009420C8);
  v21 = a1;
  State.wrappedValue.getter();
  sub_100122FC0(v20, v17, type metadata accessor for InsightsHighlightsView.Phase);
  sub_100123924(v20, type metadata accessor for InsightsHighlightsView.LoadingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_100123924(v17, type metadata accessor for InsightsHighlightsView.Phase);
      LocalizedStringKey.init(stringLiteral:)();
      v23 = Text.init(_:tableName:bundle:comment:)();
      v25 = v24;
      v27 = v26;
      static Font.headline.getter();
      v28 = Text.font(_:)();
      v30 = v29;
      v32 = v31;

      sub_1000594D0(v23, v25, v27 & 1);

      LODWORD(v90) = static HierarchicalShapeStyle.secondary.getter();
      v33 = Text.foregroundStyle<A>(_:)();
      v35 = v34;
      v37 = v36;
      v39 = v38;
      sub_1000594D0(v28, v30, v32 & 1);

      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v97 = v37 & 1;
      *v12 = v33;
      *(v12 + 1) = v35;
      v12[16] = v37 & 1;
      *(v12 + 3) = v39;
      v40 = v95;
      *(v12 + 6) = v94;
      *(v12 + 7) = v40;
      *(v12 + 8) = v96;
      v41 = v91;
      *(v12 + 2) = v90;
      *(v12 + 3) = v41;
      v42 = v93;
      *(v12 + 4) = v92;
      *(v12 + 5) = v42;
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD3BC8, &unk_10095A340);
      sub_1001233E0();
      sub_10012352C();
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      v66 = sub_10000B58C(&qword_100AD3BB8, &qword_100AD3BB0, &unk_100942190, &protocol conformance descriptor for Button<A>);
      v67 = sub_100123664(&qword_100AD2918, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
      v90 = v85;
      *&v91 = v66;
      *(&v91 + 1) = v67;
      swift_getOpaqueTypeConformance2();
      v68 = v83;
      _ConditionalContent<>.init(storage:)();
      sub_1000082B4(v68, v12, &qword_100AD3BA8, &qword_100942188);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD3BC8, &unk_10095A340);
      sub_1001233E0();
      sub_10012352C();
      _ConditionalContent<>.init(storage:)();
      return sub_100004F84(v68, &qword_100AD3BA8, &qword_100942188);
    }
  }

  else
  {
    v70 = *v17;
    v44 = sub_1000F24EC(&qword_100AD3B60, &qword_100942160);
    v45 = v82;
    v46 = *(v82 + 32);
    v47 = v17 + *(v44 + 48);
    v48 = v79;
    v49 = v84;
    v46(v79, v47, v84);
    v50 = v21;
    v51 = v72;
    sub_100122FC0(v50, v72, type metadata accessor for InsightsHighlightsView);
    v52 = *(v45 + 16);
    v69 = v12;
    v52(&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v49);
    v53 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v54 = (v5 + *(v45 + 80) + v53) & ~*(v45 + 80);
    v55 = swift_allocObject();
    sub_100123034(v51, v55 + v53);
    v56 = (v46)(v55 + v54, &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v49);
    __chkstk_darwin(v56);
    sub_1000F24EC(&qword_100AD3C28, &qword_1009421F0);
    sub_10000B58C(&qword_100AD3C30, &qword_100AD3C28, &qword_1009421F0, &protocol conformance descriptor for ZStack<A>);
    v57 = v73;
    Button.init(action:label:)();
    v58 = v75;
    PlainButtonStyle.init()();
    v59 = sub_10000B58C(&qword_100AD3BB8, &qword_100AD3BB0, &unk_100942190, &protocol conformance descriptor for Button<A>);
    v60 = sub_100123664(&qword_100AD2918, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    v61 = v77;
    v62 = v85;
    View.buttonStyle<A>(_:)();
    (*(v76 + 8))(v58, *(&v62 + 1));
    (*(v74 + 8))(v57, v62);
    v63 = v78;
    v64 = v86;
    (*(v78 + 16))(v81, v61, v86);
    swift_storeEnumTagMultiPayload();
    v90 = v62;
    *&v91 = v59;
    *(&v91 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    v65 = v83;
    _ConditionalContent<>.init(storage:)();
    sub_1000082B4(v65, v69, &qword_100AD3BA8, &qword_100942188);
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD3BC8, &unk_10095A340);
    sub_1001233E0();
    sub_10012352C();
    _ConditionalContent<>.init(storage:)();

    sub_100004F84(v65, &qword_100AD3BA8, &qword_100942188);
    (*(v63 + 8))(v61, v64);
    return (*(v82 + 8))(v79, v84);
  }
}

uint64_t sub_10011E6B4(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Calendar();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1000F24EC(&unk_100AD9850, &qword_100942010);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  type metadata accessor for InsightsHighlightsView(0);
  sub_100048878(v5);
  if (qword_100AD0BA8 != -1)
  {
    swift_once();
  }

  Calendar.dateComponents(_:from:)();
  (*(v3 + 8))(v5, v2);
  v12 = type metadata accessor for DateComponents();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  sub_1000082B4(v11, v8, &unk_100AD9850, &qword_100942010);
  sub_1000F24EC(&qword_100AD3A58, &unk_1009420D0);
  State.wrappedValue.setter();
  return sub_100004F84(v11, &unk_100AD9850, &qword_100942010);
}

uint64_t sub_10011E8FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.bottomLeading.getter();
  a3[1] = v6;
  v7 = sub_1000F24EC(&qword_100AD3C38, &qword_1009421F8);
  return sub_10011E95C(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_10011E95C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v117 = a2;
  v123 = a3;
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v121 = *(v4 - 8);
  v122 = v4;
  __chkstk_darwin(v4);
  v116 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for Date.FormatStyle();
  v113 = *(v120 - 8);
  __chkstk_darwin(v120);
  v106 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v110 = &v90 - v9;
  __chkstk_darwin(v10);
  v115 = &v90 - v11;
  v12 = type metadata accessor for Date();
  v103 = *(v12 - 8);
  v104 = v12;
  __chkstk_darwin(v12);
  v109 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AccessibilityChildBehavior();
  v101 = *(v14 - 8);
  v102 = v14;
  __chkstk_darwin(v14);
  v100 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000F24EC(&qword_100AD3C40, &qword_100942200);
  __chkstk_darwin(v105);
  v99 = &v90 - v16;
  v17 = sub_1000F24EC(&qword_100AD3C48, &qword_100942208);
  v107 = *(v17 - 8);
  v108 = v17;
  __chkstk_darwin(v17);
  v19 = &v90 - v18;
  v20 = sub_1000F24EC(&qword_100AD3C50, &qword_100942210);
  __chkstk_darwin(v20 - 8);
  v119 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v90 - v23;
  type metadata accessor for PhotoAsset(0);
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    v25 = v24;
    KeyPath = swift_getKeyPath();
    *&v128 = v25;
    *(&v128 + 1) = KeyPath;
    LOBYTE(v129) = 0;
    v27 = a1;

    sub_1000F24EC(&qword_100AD3C88, &qword_100942230);
    sub_1000F24EC(&qword_100AD3C98, &qword_100942238);
    sub_10000B58C(&qword_100AD3C80, &qword_100AD3C88, &qword_100942230, &unk_100942578);
    sub_10000B58C(&qword_100AD3C90, &qword_100AD3C98, &qword_100942238, &unk_100942578);
LABEL_5:
    _ConditionalContent<>.init(storage:)();
    v128 = v131;
    LOWORD(v129) = v132;
    goto LABEL_6;
  }

  type metadata accessor for LivePhotoAsset(0);
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v30 = swift_getKeyPath();
    *&v128 = v29;
    *(&v128 + 1) = v30;
    LOBYTE(v129) = 1;
    v31 = a1;

    sub_1000F24EC(&qword_100AD3C88, &qword_100942230);
    sub_1000F24EC(&qword_100AD3C98, &qword_100942238);
    sub_10000B58C(&qword_100AD3C80, &qword_100AD3C88, &qword_100942230, &unk_100942578);
    sub_10000B58C(&qword_100AD3C90, &qword_100AD3C98, &qword_100942238, &unk_100942578);
    goto LABEL_5;
  }

  type metadata accessor for VideoAsset(0);
  v86 = swift_dynamicCastClass();
  if (!v86)
  {
    v128 = 0uLL;
    LOBYTE(v129) = 1;
    sub_1000F24EC(&qword_100AD3C58, &qword_100942218);
    sub_10000B58C(&qword_100AD3C60, &qword_100AD3C58, &qword_100942218, &unk_100942578);
    _ConditionalContent<>.init(storage:)();
    v128 = v131;
    LOBYTE(v129) = v132;
    BYTE1(v129) = 1;
    sub_1000F24EC(&qword_100AD3C68, &qword_100942220);
    sub_1000F24EC(&qword_100AD3C70, &qword_100942228);
    sub_100123AE8();
    sub_100123BC8();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_7;
  }

  v87 = v86;
  v88 = swift_getKeyPath();
  *&v128 = v87;
  *(&v128 + 1) = v88;
  LOBYTE(v129) = 0;
  v89 = a1;

  sub_1000F24EC(&qword_100AD3C58, &qword_100942218);
  sub_10000B58C(&qword_100AD3C60, &qword_100AD3C58, &qword_100942218, &unk_100942578);
  _ConditionalContent<>.init(storage:)();
  v128 = v131;
  LOBYTE(v129) = v132;
  BYTE1(v129) = 1;
LABEL_6:
  sub_1000F24EC(&qword_100AD3C68, &qword_100942220);
  sub_1000F24EC(&qword_100AD3C70, &qword_100942228);
  sub_100123AE8();
  sub_100123BC8();
  _ConditionalContent<>.init(storage:)();

LABEL_7:
  v32 = v131;
  v33 = v132;
  v34 = BYTE1(v132);
  v93 = v131;
  v94 = v132;
  v95 = *(&v131 + 1);
  v96 = BYTE1(v132);
  sub_1000F24EC(&qword_100AD3CA8, &qword_100942240);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100940050;
  v98 = sub_100123C80;
  v97 = sub_100123CB8;
  sub_100123EF4(v32, *(&v32 + 1), v33, v34, sub_100123C80, sub_100123CB8);
  static Color.black.getter();
  v36 = Color.opacity(_:)();

  *(v35 + 32) = v36;
  *(v35 + 40) = static Color.clear.getter();
  static UnitPoint.bottomLeading.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v124 = v139;
  v37 = v140;
  v38 = v141;
  v39 = v142;
  v40 = v143;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *&v126[6] = v144[0];
  *&v126[22] = v144[1];
  *&v126[38] = v144[2];
  v41 = static HorizontalAlignment.leading.getter();
  LOBYTE(v131) = 0;
  v42 = v117;
  sub_10011F98C(v117, v127);
  *&v125[7] = v127[0];
  *&v125[23] = v127[1];
  *&v125[39] = v127[2];
  *&v125[55] = v127[3];
  v43 = v131;
  v44 = swift_getKeyPath();
  v45 = sub_1000F24EC(&qword_100AD3CB0, &unk_100942278);
  v46 = v99;
  v47 = &v99[*(v45 + 36)];
  v48 = *(sub_1000F24EC(&qword_100AD20A8, &qword_100940250) + 28);
  v49 = enum case for ColorScheme.dark(_:);
  v50 = type metadata accessor for ColorScheme();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = v44;
  v51 = *v125;
  *(v46 + 33) = *&v125[16];
  v52 = *&v125[48];
  *(v46 + 49) = *&v125[32];
  *(v46 + 65) = v52;
  *v46 = v41;
  *(v46 + 8) = 0xC000000000000000;
  *(v46 + 16) = v43;
  *(v46 + 80) = *&v125[63];
  *(v46 + 17) = v51;
  v53 = static Color.black.getter();
  v54 = v46 + *(sub_1000F24EC(&qword_100AD3CB8, &qword_100942288) + 36);
  *v54 = v53;
  *(v54 + 8) = xmmword_100941FD0;
  *(v54 + 24) = 0x4000000000000000;
  LOBYTE(v53) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v55 = v105;
  v56 = v46 + *(v105 + 36);
  *v56 = v53;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;
  v61 = v100;
  static AccessibilityChildBehavior.ignore.getter();
  v91 = sub_100123CF8();
  v92 = v19;
  View.accessibilityElement(children:)();
  (*(v101 + 8))(v61, v102);
  sub_100004F84(v46, &qword_100AD3C40, &qword_100942200);
  (*(v103 + 16))(v109, v42, v104);
  v62 = v106;
  static FormatStyle<>.dateTime.getter();
  v63 = v111;
  static Date.FormatStyle.Symbol.Month.wide.getter();
  v64 = v110;
  Date.FormatStyle.month(_:)();
  (*(v112 + 8))(v63, v114);
  v65 = *(v113 + 8);
  v66 = v120;
  v65(v62, v120);
  v67 = v116;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v121 + 8))(v67, v122);
  v65(v64, v66);
  sub_100123664(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  sub_100123664(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v68 = Text.init<A>(_:format:)();
  v70 = v69;
  LOBYTE(v67) = v71;
  *&v131 = v55;
  *(&v131 + 1) = v91;
  swift_getOpaqueTypeConformance2();
  v72 = v118;
  v73 = v108;
  v74 = v92;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v68, v70, v67 & 1);

  (*(v107 + 8))(v74, v73);
  v75 = v119;
  sub_1000082B4(v72, v119, &qword_100AD3C50, &qword_100942210);
  v77 = v123;
  v76 = v124;
  v78 = v93;
  v79 = v95;
  *v123 = v93;
  v77[1] = v79;
  LOBYTE(v74) = v94;
  *(v77 + 16) = v94;
  LOBYTE(v73) = v96;
  *(v77 + 17) = v96;
  *&v128 = v76;
  *(&v128 + 1) = v37;
  *&v129 = v38;
  *(&v129 + 1) = v39;
  *&v130[0] = v40;
  WORD4(v130[0]) = 256;
  *(v130 + 10) = *v126;
  *(&v130[1] + 10) = *&v126[16];
  *(&v130[2] + 10) = *&v126[32];
  *(&v130[3] + 1) = *&v126[46];
  v80 = v128;
  *(v77 + 5) = v129;
  *(v77 + 3) = v80;
  v81 = v130[0];
  v82 = v130[1];
  v83 = v130[2];
  *(v77 + 13) = v130[3];
  *(v77 + 11) = v83;
  *(v77 + 9) = v82;
  *(v77 + 7) = v81;
  v84 = sub_1000F24EC(&qword_100AD3CF0, &qword_100942298);
  sub_1000082B4(v75, v77 + *(v84 + 64), &qword_100AD3C50, &qword_100942210);
  sub_100123EF4(v78, v79, v74, v73, v98, v97);
  sub_1000082B4(&v128, &v131, qword_100AD3CF8, &qword_1009422A0);
  sub_100123EF4(v78, v79, v74, v73, sub_100123F0C, sub_100123F44);
  sub_100004F84(v72, &qword_100AD3C50, &qword_100942210);
  sub_100004F84(v75, &qword_100AD3C50, &qword_100942210);
  *&v131 = v124;
  *(&v131 + 1) = v37;
  v132 = v38;
  v133 = v39;
  v134 = v40;
  v135 = 256;
  v136 = *v126;
  v137 = *&v126[16];
  *v138 = *&v126[32];
  *&v138[14] = *&v126[46];
  sub_100004F84(&v131, qword_100AD3CF8, &qword_1009422A0);
  return sub_100123EF4(v78, v79, v74, v73, sub_100123F0C, sub_100123F44);
}

uint64_t sub_10011F8DC(void **a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = *(*a2 + *a5);
  *(*a2 + *a5) = *a1;
  v9 = v7;

  return a6();
}

void sub_10011F928(void **a1, void *a2)
{
  v2 = *a1;
  v4 = *(*a2 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
  *(*a2 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset) = *a1;
  v3 = v2;
  sub_100099584(v4);
}

double sub_10011F98C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v53 = a1;
  v57 = a2;
  v3 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date.FormatStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v52 = type metadata accessor for Date();
  v14 = *(v52 - 8);
  v15 = __chkstk_darwin(v52);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = *(v14 + 16);
  v51(v17, a1, v15);
  static FormatStyle<>.dateTime.getter();
  static Date.FormatStyle.Symbol.Month.abbreviated.getter();
  Date.FormatStyle.month(_:)();
  (*(v6 + 8))(v8, v5);
  v18 = *(v10 + 8);
  v49 = v10 + 8;
  v50 = v18;
  v44[0] = v9;
  v18(v12, v9);
  v44[2] = sub_100123664(&qword_100AD3CE8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  v44[1] = sub_100123664(&qword_100AD5BF0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v19 = Text.init<A>(_:format:)();
  v21 = v20;
  LOBYTE(v8) = v22;
  static Font.footnote.getter();
  Font.bold()();

  v23 = Text.font(_:)();
  v47 = v24;
  v48 = v23;
  v46 = v25;
  v45 = v26;

  sub_1000594D0(v19, v21, v8 & 1);

  (v51)(v17, v53, v52);
  static FormatStyle<>.dateTime.getter();
  v27 = v54;
  static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
  Date.FormatStyle.day(_:)();
  (*(v55 + 8))(v27, v56);
  v50(v12, v44[0]);
  v28 = Text.init<A>(_:format:)();
  v30 = v29;
  LOBYTE(v19) = v31;
  static Font.title.getter();
  Font.bold()();

  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v17) = v35;
  v37 = v36;

  sub_1000594D0(v28, v30, v19 & 1);

  v38 = v45 & 1;
  v58 = v45 & 1;
  v60 = v45 & 1;
  v59 = v17 & 1;
  v39 = v57;
  v40 = v47;
  v41 = v48;
  v42 = v46;
  *v57 = v48;
  v39[1] = v42;
  *(v39 + 16) = v38;
  v39[3] = v40;
  v39[4] = v32;
  v39[5] = v34;
  *(v39 + 48) = v17 & 1;
  v39[7] = v37;
  sub_1000F24DC(v41, v42, v38);

  sub_1000F24DC(v32, v34, v17 & 1);

  sub_1000594D0(v32, v34, v17 & 1);

  sub_1000594D0(v41, v42, v58);

  return result;
}

uint64_t sub_10011FED0(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011FF68, v3, v2);
}

uint64_t sub_10011FF68()
{

  sub_10011FFCC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10011FFCC()
{
  v188 = type metadata accessor for EnvironmentValues();
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = v179 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1000F24EC(&qword_100AD3BE8, &qword_1009421A8);
  v183 = *(v184 - 8);
  __chkstk_darwin(v184);
  v196 = v179 - v2;
  v195 = type metadata accessor for AssetType();
  v194 = *(v195 - 8);
  __chkstk_darwin(v195);
  v193 = v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v192 = v179 - v5;
  __chkstk_darwin(v6);
  v191 = v179 - v7;
  v8 = type metadata accessor for Calendar.Component();
  v211 = *(v8 - 8);
  v212 = v8;
  __chkstk_darwin(v8);
  v201 = v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD3750, &unk_1009421B0);
  __chkstk_darwin(v10 - 8);
  v202 = v179 - v11;
  v206 = type metadata accessor for DateInterval();
  v205 = *(v206 - 8);
  __chkstk_darwin(v206);
  v204 = v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v13 - 8);
  v181 = v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v182 = v179 - v16;
  __chkstk_darwin(v17);
  v210 = v179 - v18;
  v199 = sub_1000F24EC(&qword_100AD99C0, &unk_1009421C0);
  __chkstk_darwin(v199);
  v200 = v179 - v19;
  v214 = type metadata accessor for InsightsHighlightsView.Phase(0);
  __chkstk_darwin(v214);
  v215 = v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  __chkstk_darwin(v197);
  v198 = v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v213 = (v179 - v23);
  v24 = type metadata accessor for Date();
  v225 = *(v24 - 8);
  __chkstk_darwin(v24);
  v180 = v179 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v190 = v179 - v27;
  __chkstk_darwin(v28);
  v30 = v179 - v29;
  __chkstk_darwin(v31);
  v207 = v179 - v32;
  v219 = type metadata accessor for Calendar();
  v222 = *(v219 - 1);
  __chkstk_darwin(v219);
  v34 = (v179 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_1000F24EC(&unk_100AD9850, &qword_100942010);
  __chkstk_darwin(v35 - 8);
  v189 = v179 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v216 = (v179 - v38);
  __chkstk_darwin(v39);
  v203 = v179 - v40;
  __chkstk_darwin(v41);
  v43 = v179 - v42;
  v44 = type metadata accessor for DateComponents();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v185 = v179 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v49 = v179 - v48;
  v226 = v0;
  sub_1000082B4(v0, v43, &unk_100AD9850, &qword_100942010);
  v50 = *(v45 + 48);
  v51 = v50(v43, 1, v44);
  v223 = v44;
  v224 = v24;
  v220 = v45;
  v221 = v34;
  v218 = v30;
  v208 = v50;
  v209 = (v45 + 48);
  if (v51 == 1)
  {
    v179[1] = type metadata accessor for InsightsHighlightsView(0);
    sub_100048878(v34);
    sub_1000F24EC(&qword_100AD3BF0, &qword_100962260);
    v52 = v211;
    v53 = *(v211 + 72);
    v54 = (*(v211 + 80) + 32) & ~*(v211 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_100941FE0;
    v56 = v55 + v54;
    v57 = *(v52 + 104);
    v58 = v212;
    v57(v56, enum case for Calendar.Component.calendar(_:), v212);
    v57(v56 + v53, enum case for Calendar.Component.era(_:), v58);
    v57(v56 + 2 * v53, enum case for Calendar.Component.year(_:), v58);
    v57(v56 + 3 * v53, enum case for Calendar.Component.month(_:), v58);
    v44 = v223;
    sub_10005FF80(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000F24EC(&qword_100AD3A48, &qword_1009420C0);
    v59 = v207;
    State.wrappedValue.getter();
    v60 = v49;
    v61 = v221;
    Calendar.dateComponents(_:from:)();
    v45 = v220;

    (v225[1])(v59, v24);
    (*(v222 + 8))(v61, v219);
    if (v208(v43, 1, v44) != 1)
    {
      sub_100004F84(v43, &unk_100AD9850, &qword_100942010);
    }
  }

  else
  {
    v60 = v49;
    (*(v45 + 32))(v49, v43, v44);
  }

  v62 = type metadata accessor for InsightsHighlightsView(0);
  sub_1000F24EC(&qword_100AD3A50, &qword_1009420C8);
  v63 = v213;
  State.wrappedValue.getter();
  v64 = v215;
  sub_100122FC0(v63, v215, type metadata accessor for InsightsHighlightsView.Phase);
  sub_100123924(v63, type metadata accessor for InsightsHighlightsView.LoadingState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v66 = v216;
  v217 = v60;
  if (EnumCaseMultiPayload)
  {
    sub_100123924(v64, type metadata accessor for InsightsHighlightsView.Phase);
    v68 = v221;
    v67 = v222;
    v69 = v224;
    v70 = v218;
    goto LABEL_18;
  }

  v214 = *v64;
  v71 = sub_1000F24EC(&qword_100AD3B60, &qword_100942160);
  (v225[1])(v64 + *(v71 + 48), v224);
  v72 = v198;
  State.wrappedValue.getter();
  v73 = v203;
  sub_1000082B4(v72 + *(v197 + 20), v203, &unk_100AD9850, &qword_100942010);
  sub_100123924(v72, type metadata accessor for InsightsHighlightsView.LoadingState);
  v74 = v60;
  v75 = v73;
  (*(v45 + 16))(v66, v74, v44);
  (*(v45 + 56))(v66, 0, 1, v44);
  v76 = *(v199 + 48);
  v77 = v66;
  v78 = v200;
  sub_1000082B4(v75, v200, &unk_100AD9850, &qword_100942010);
  sub_1000082B4(v77, v78 + v76, &unk_100AD9850, &qword_100942010);
  v79 = v208;
  v80 = v208(v78, 1, v44);
  v68 = v221;
  if (v80 == 1)
  {
    sub_100004F84(v77, &unk_100AD9850, &qword_100942010);
    sub_100004F84(v75, &unk_100AD9850, &qword_100942010);
    v81 = v79(v78 + v76, 1, v44);
    v69 = v224;
    v70 = v218;
    if (v81 == 1)
    {
      sub_100004F84(v78, &unk_100AD9850, &qword_100942010);
      v67 = v222;
      v82 = v217;
      v83 = v214;
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v84 = v189;
  sub_1000082B4(v78, v189, &unk_100AD9850, &qword_100942010);
  v85 = v79(v78 + v76, 1, v44);
  v70 = v218;
  if (v85 == 1)
  {
    sub_100004F84(v216, &unk_100AD9850, &qword_100942010);
    sub_100004F84(v203, &unk_100AD9850, &qword_100942010);
    (*(v45 + 8))(v84, v44);
    v69 = v224;
LABEL_12:
    sub_100004F84(v78, &qword_100AD99C0, &unk_1009421C0);
    v67 = v222;
    v83 = v214;
LABEL_17:

    goto LABEL_18;
  }

  v86 = v78 + v76;
  v87 = v185;
  (*(v45 + 32))(v185, v86, v44);
  sub_100123664(&qword_100AD99B0, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
  LODWORD(v215) = dispatch thunk of static Equatable.== infix(_:_:)();
  v88 = v84;
  v89 = *(v45 + 8);
  v89(v87, v44);
  sub_100004F84(v216, &unk_100AD9850, &qword_100942010);
  sub_100004F84(v203, &unk_100AD9850, &qword_100942010);
  v90 = v88;
  v70 = v218;
  v89(v90, v44);
  v69 = v224;
  v82 = v217;
  sub_100004F84(v78, &unk_100AD9850, &qword_100942010);
  v67 = v222;
  v83 = v214;
  if ((v215 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_14:
  v91 = *&v83[OBJC_IVAR____TtC7Journal5Asset_assetMO];
  if (!v91)
  {
    goto LABEL_17;
  }

  v92 = v91;
  if ([v92 isDeleted])
  {
  }

  else
  {
    sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
    v168 = static NSPredicate.allNotDeletedAssets.getter();
    LODWORD(v222) = [v168 evaluateWithObject:v92];

    if (v222)
    {
      return (*(v45 + 8))(v82, v223);
    }
  }

LABEL_18:
  v222 = v62;
  sub_100048878(v68);
  v93 = v210;
  Calendar.date(from:)();
  v94 = *(v67 + 8);
  v95 = v219;
  v94(v68, v219);
  v96 = (v225 + 6);
  v216 = v225[6];
  if ((v216)(v93, 1, v69) == 1)
  {
    v97 = &unk_100AD4790;
    v98 = &unk_10093B4E0;
    v99 = v93;
LABEL_22:
    sub_100004F84(v99, v97, v98);
    v107 = v217;
    sub_100123984();
    v108 = swift_allocError();
    *v109 = 1;
    swift_willThrow();
    v111 = v222;
    v110 = v223;
    v112 = v220;
    goto LABEL_38;
  }

  v100 = v225[4];
  v214 = (v225 + 4);
  v215 = v96;
  v213 = v100;
  v100(v70, v93, v69);
  sub_100048878(v68);
  v101 = v211;
  v102 = v212;
  v103 = v201;
  (*(v211 + 104))(v201, enum case for Calendar.Component.month(_:), v212);
  v104 = v202;
  Calendar.dateInterval(of:for:)();
  (*(v101 + 8))(v103, v102);
  v94(v68, v95);
  v105 = v205;
  v106 = v206;
  if ((*(v205 + 48))(v104, 1, v206) == 1)
  {
    (v225[1])(v70, v224);
    v97 = &qword_100AD3750;
    v98 = &unk_1009421B0;
    v99 = v104;
    goto LABEL_22;
  }

  (*(v105 + 32))(v204, v104, v106);
  v212 = type metadata accessor for JournalEntryAssetMO();
  v208 = static JournalEntryAssetMO.fetchRequest()();
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_100941D60;
  v114 = v113;
  v211 = v113;
  v210 = sub_1000065A8(0, &qword_100ADB900, NSPredicate_ptr);
  *(v114 + 32) = static NSPredicate.allNotDeletedAssets.getter();
  v209 = "I result type display";
  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_100941FF0;
  *(v115 + 56) = &type metadata for String;
  v221 = sub_100031B20();
  *(v115 + 64) = v221;
  *(v115 + 32) = 0x7079547465737361;
  *(v115 + 40) = 0xE900000000000065;
  sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_100942000;
  v117 = v194;
  v118 = *(v194 + 104);
  v119 = v191;
  v120 = v195;
  v118(v191, enum case for AssetType.photo(_:), v195);
  v121 = AssetType.rawValue.getter();
  v123 = v122;
  v124 = *(v117 + 8);
  v124(v119, v120);
  *(v116 + 32) = v121;
  *(v116 + 40) = v123;
  v125 = v192;
  v118(v192, enum case for AssetType.livePhoto(_:), v120);
  v126 = AssetType.rawValue.getter();
  v128 = v127;
  v124(v125, v120);
  *(v116 + 48) = v126;
  *(v116 + 56) = v128;
  v129 = v193;
  v118(v193, enum case for AssetType.video(_:), v120);
  v130 = AssetType.rawValue.getter();
  v132 = v131;
  v124(v129, v120);
  *(v116 + 64) = v130;
  *(v116 + 72) = v132;
  *(v115 + 96) = sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  v133 = sub_10000B58C(&qword_100AD3C00, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
  *(v115 + 72) = v116;
  v134 = v221;
  *(v115 + 136) = &type metadata for String;
  *(v115 + 144) = v134;
  *(v115 + 104) = v133;
  *(v115 + 112) = 0x6E652E7972746E65;
  *(v115 + 120) = 0xEF65746144797274;
  v135 = v207;
  DateInterval.start.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v137 = v225 + 1;
  v138 = v225[1];
  v139 = v135;
  v140 = v224;
  v138(v139, v224);
  v141 = sub_1000065A8(0, &unk_100AE5E10, NSDate_ptr);
  *(v115 + 176) = v141;
  v142 = sub_10011949C();
  *(v115 + 152) = isa;
  *(v115 + 216) = &type metadata for String;
  *(v115 + 224) = v134;
  *(v115 + 184) = v142;
  *(v115 + 192) = 0x6E652E7972746E65;
  *(v115 + 200) = 0xEF65746144797274;
  v143 = v190;
  DateInterval.end.getter();
  v144 = Date._bridgeToObjectiveC()().super.isa;
  v221 = v137;
  v219 = v138;
  v138(v143, v140);
  *(v115 + 256) = v141;
  *(v115 + 264) = v142;
  *(v115 + 232) = v144;
  *(v211 + 40) = NSPredicate.init(format:_:)();
  v145 = Array._bridgeToObjectiveC()().super.isa;

  v146 = [objc_opt_self() andPredicateWithSubpredicates:v145];

  v147 = v208;
  [v208 setPredicate:v146];

  v148 = Array._bridgeToObjectiveC()().super.isa;
  v149 = v147;
  [v147 setRelationshipKeyPathsForPrefetching:v148];

  v150 = v226 + *(v222 + 40);
  v151 = *v150;
  if (*(v150 + 8) == 1)
  {
    v152 = v151;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v153 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v154 = v186;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v155 = sub_100123028(v151, 0);
    (*(v187 + 8))(v154, v188, v155);
    v152 = v227;
  }

  v156 = v196;
  NSManagedObjectContext.fetch<A>(_:batchSize:)();
  v157 = v206;
  v158 = v205;
  v159 = v224;
  v160 = v218;

  v161 = sub_10012370C();
  (*(v183 + 8))(v156, v184);
  v107 = v217;
  if (v161)
  {
    v162 = [v161 entry];
    if (v162)
    {
      v163 = v162;
      v164 = [v162 entryDate];

      if (v164)
      {
        v165 = v181;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v166 = v165;
        v167 = 0;
        v159 = v224;
      }

      else
      {
        v167 = 1;
        v159 = v224;
        v166 = v181;
      }

      (v225[7])(v166, v167, 1, v159);
      v171 = v166;
      v170 = v182;
      sub_100021CEC(v171, v182, &unk_100AD4790, &unk_10093B4E0);
      if ((v216)(v170, 1, v159) != 1)
      {
        v174 = v180;
        v213(v180, v170, v159);
        v175 = v159;
        v176 = sub_100039CE0();
        v225 = v179;
        __chkstk_darwin(*(v226 + *(v222 + 48)));
        v179[-4] = v177;
        v179[-3] = v176;
        v179[-2] = v174;
        v179[-1] = v107;
        withAnimation<A>(_:_:)();

        (*(v158 + 8))(v204, v157);
        v178 = v219;
        (v219)(v218, v175);
        v178(v174, v175);
        return (*(v220 + 8))(v107, v223);
      }
    }

    else
    {

      v170 = v182;
      (v225[7])(v182, 1, 1, v159);
    }

    sub_100004F84(v170, &unk_100AD4790, &unk_10093B4E0);
  }

  sub_100123984();
  v108 = swift_allocError();
  *v172 = 0;
  swift_willThrow();

  (*(v158 + 8))(v204, v157);
  (v219)(v160, v159);
  v110 = v223;
  v112 = v220;
  v111 = v222;
LABEL_38:
  (*(v112 + 8))(v107, v110);
  __chkstk_darwin(*(v226 + *(v111 + 48)));
  v179[-2] = v173;
  v179[-1] = v108;
  withAnimation<A>(_:_:)();
}

uint64_t sub_100121AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000F24EC(&unk_100AD9850, &qword_100942010);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DateComponents();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a2, v7, &unk_100AD9850, &qword_100942010);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100004F84(v7, &unk_100AD9850, &qword_100942010);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = type metadata accessor for InsightsHighlightsView(0);
  (*(a3 + *(v13 + 20)))(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100121C84()
{
  v0 = sub_1000F24EC(&unk_100AD9850, &qword_100942010);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  v6 = type metadata accessor for DateComponents();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for InsightsHighlightsView(0);
  sub_1000082B4(v5, v2, &unk_100AD9850, &qword_100942010);
  sub_1000F24EC(&qword_100AD3A58, &unk_1009420D0);
  State.wrappedValue.setter();
  return sub_100004F84(v5, &unk_100AD9850, &qword_100942010);
}

void sub_100121DC4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a2;
  v36 = a3;
  v39 = sub_1000F24EC(&unk_100AD9850, &qword_100942010);
  __chkstk_darwin(v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v37 = &v34 - v8;
  v9 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v34 - v20;
  sub_100021CEC(a1, a4, &unk_100AD9850, &qword_100942010);
  v22 = type metadata accessor for InsightsHighlightsView(0);
  v23 = (a4 + v22[5]);
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  static Date.now.getter();
  (*(v16 + 16))(v18, v21, v15);
  State.init(wrappedValue:)();
  (*(v16 + 8))(v21, v15);
  type metadata accessor for InsightsHighlightsView.Phase(0);
  swift_storeEnumTagMultiPayload();
  v25 = *(v9 + 20);
  v26 = type metadata accessor for DateComponents();
  v27 = *(*(v26 - 8) + 56);
  v27(&v14[v25], 1, 1, v26);
  sub_100122FC0(v14, v11, type metadata accessor for InsightsHighlightsView.LoadingState);
  State.init(wrappedValue:)();
  sub_100123924(v14, type metadata accessor for InsightsHighlightsView.LoadingState);
  v28 = v37;
  v27(v37, 1, 1, v26);
  sub_1000082B4(v28, v38, &unk_100AD9850, &qword_100942010);
  State.init(wrappedValue:)();
  sub_100004F84(v28, &unk_100AD9850, &qword_100942010);
  v29 = v22[9];
  *(a4 + v29) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  swift_storeEnumTagMultiPayload();
  v30 = a4 + v22[10];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  v31 = a4 + v22[11];
  *v31 = swift_getKeyPath();
  *(v31 + 8) = 0;
  v32 = v22[12];
  static Animation.spring(response:dampingFraction:blendDuration:)();
  v33 = Animation.delay(_:)();

  *(a4 + v32) = v33;
}

uint64_t sub_1001222CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_100122348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, WitnessTable);
}

void sub_1001223C4(uint64_t a1)
{
  swift_getWitnessTable();
  UIViewRepresentable.body.getter();
  __break(1u);
}

void (*sub_10012255C(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100113D90;
}

uint64_t sub_1001225E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v21 - v12;
  v14 = *(sub_1000F24EC(&qword_100AD3B60, &qword_100942160) + 48);
  *v13 = a2;
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 16))(&v13[v14], a3, v15);
  type metadata accessor for InsightsHighlightsView.Phase(0);
  swift_storeEnumTagMultiPayload();
  v16 = *(v8 + 28);
  v17 = type metadata accessor for DateComponents();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v13[v16], a4, v17);
  (*(v18 + 56))(&v13[v16], 0, 1, v17);
  type metadata accessor for InsightsHighlightsView(0);
  sub_100122FC0(v13, v10, type metadata accessor for InsightsHighlightsView.LoadingState);
  v19 = a2;
  sub_1000F24EC(&qword_100AD3A50, &qword_1009420C8);
  State.wrappedValue.setter();
  return sub_100123924(v13, type metadata accessor for InsightsHighlightsView.LoadingState);
}

uint64_t sub_100122800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsHighlightsView.LoadingState(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  *(&v12 - v9) = a2;
  type metadata accessor for InsightsHighlightsView.Phase(0);
  swift_storeEnumTagMultiPayload();
  sub_1000082B4(a1, &v10[*(v5 + 28)], &unk_100AD9850, &qword_100942010);
  type metadata accessor for InsightsHighlightsView(0);
  sub_100122FC0(v10, v7, type metadata accessor for InsightsHighlightsView.LoadingState);
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD3A50, &qword_1009420C8);
  State.wrappedValue.setter();
  return sub_100123924(v10, type metadata accessor for InsightsHighlightsView.LoadingState);
}

void sub_1001229A8(uint64_t a1)
{
  sub_100122A1C(319);
  if (v1 <= 0x3F)
  {
    sub_100122A8C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100122A1C(uint64_t a1)
{
  if (!qword_100AD3978)
  {
    type metadata accessor for Asset(255);
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100AD3978);
    }
  }
}

unint64_t sub_100122A8C()
{
  result = qword_100AD3980;
  if (!qword_100AD3980)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100AD3980);
  }

  return result;
}

void sub_100122B18(uint64_t a1)
{
  type metadata accessor for InsightsHighlightsView.Phase(319);
  if (v1 <= 0x3F)
  {
    sub_100122DD0(319, &qword_100AD3A18, &type metadata accessor for DateComponents, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100122BF4(uint64_t a1)
{
  sub_100122DD0(319, &qword_100AD3A18, &type metadata accessor for DateComponents, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_100087C9C();
    if (v2 <= 0x3F)
    {
      sub_100122DD0(319, &qword_100AD3AD8, &type metadata accessor for Date, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_100122DD0(319, &qword_100AD3AE0, type metadata accessor for InsightsHighlightsView.LoadingState, &type metadata accessor for State);
        if (v4 <= 0x3F)
        {
          sub_100122E34(319);
          if (v5 <= 0x3F)
          {
            sub_100122DD0(319, &qword_100AF70F0, &type metadata accessor for Calendar, &type metadata accessor for Environment);
            if (v6 <= 0x3F)
            {
              sub_100122E98(319);
              if (v7 <= 0x3F)
              {
                sub_100122F00();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100122DD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_100122E34(uint64_t a1)
{
  if (!qword_100AD3AE8)
  {
    sub_1000F2A18(&unk_100AD9850, &qword_100942010);
    v1 = type metadata accessor for State();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD3AE8);
    }
  }
}

void sub_100122E98(uint64_t a1)
{
  if (!qword_100AD3AF0)
  {
    sub_1000065A8(255, &unk_100AD3AF8, NSManagedObjectContext_ptr);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD3AF0);
    }
  }
}

void sub_100122F00()
{
  if (!qword_100AD9860[0])
  {
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, qword_100AD9860);
    }
  }
}

unint64_t sub_100122F6C()
{
  result = qword_100AD3B50;
  if (!qword_100AD3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B50);
  }

  return result;
}

uint64_t sub_100122FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100123028(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_100123034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InsightsHighlightsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100123098()
{
  v2 = *(type metadata accessor for InsightsHighlightsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100032ECC;

  return sub_10011FED0(v0 + v3);
}

uint64_t sub_100123164(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for InsightsHighlightsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100121AC8(a1, a2, v6);
}

unint64_t sub_1001231E4()
{
  result = qword_100AD3B70;
  if (!qword_100AD3B70)
  {
    sub_1000F2A18(&qword_100AD3B48, &qword_100942148);
    sub_10012329C();
    sub_10000B58C(&qword_100AD3BD0, &qword_100AD3B68, &qword_100942170, &protocol conformance descriptor for _TaskValueModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B70);
  }

  return result;
}

unint64_t sub_10012329C()
{
  result = qword_100AD3B78;
  if (!qword_100AD3B78)
  {
    sub_1000F2A18(&qword_100AD3B58, &qword_100942150);
    sub_10000B58C(&qword_100AD3B80, &qword_100AD3B88, &qword_100942178, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100123354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B78);
  }

  return result;
}

unint64_t sub_100123354()
{
  result = qword_100AD3B90;
  if (!qword_100AD3B90)
  {
    sub_1000F2A18(&qword_100AD3B98, &qword_100942180);
    sub_1001233E0();
    sub_10012352C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3B90);
  }

  return result;
}

unint64_t sub_1001233E0()
{
  result = qword_100AD3BA0;
  if (!qword_100AD3BA0)
  {
    sub_1000F2A18(&qword_100AD3BA8, &qword_100942188);
    sub_1000F2A18(&qword_100AD3BB0, &unk_100942190);
    type metadata accessor for PlainButtonStyle();
    sub_10000B58C(&qword_100AD3BB8, &qword_100AD3BB0, &unk_100942190, &protocol conformance descriptor for Button<A>);
    sub_100123664(&qword_100AD2918, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BA0);
  }

  return result;
}

unint64_t sub_10012352C()
{
  result = qword_100AD3BC0;
  if (!qword_100AD3BC0)
  {
    sub_1000F2A18(&qword_100AD3BC8, &unk_10095A340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BC0);
  }

  return result;
}

unint64_t sub_1001235B0()
{
  result = qword_100AD3BD8;
  if (!qword_100AD3BD8)
  {
    sub_1000F2A18(&unk_100AD9850, &qword_100942010);
    sub_100123664(&qword_100AD99B0, &type metadata accessor for DateComponents, &protocol conformance descriptor for DateComponents);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BD8);
  }

  return result;
}

uint64_t sub_100123664(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001236AC()
{
  type metadata accessor for InsightsHighlightsView(0);

  return sub_100121C84();
}

unint64_t sub_10012370C()
{
  v0 = sub_1000F24EC(&qword_100AD3C08, &qword_1009421D0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v12 - v5;
  sub_1000F24EC(&qword_100AD3BE8, &qword_1009421A8);
  v12[0] = type metadata accessor for JournalEntryAssetMO();
  swift_getOpaqueTypeConformance2();
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    return 0;
  }

  result = dispatch thunk of Collection.count.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_1001C2FA4(result);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v9 = dispatch thunk of Collection.subscript.read();
  v11 = *v10;
  v9(v12, 0);
  v8(v6, v0);
  return v11;
}

uint64_t sub_100123924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100123984()
{
  result = qword_100AD3BF8;
  if (!qword_100AD3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3BF8);
  }

  return result;
}

uint64_t sub_100123A14()
{
  v1 = *(type metadata accessor for InsightsHighlightsView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Date() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_10011E6B4(v0 + v2, v5);
}

unint64_t sub_100123AE8()
{
  result = qword_100AD3C78;
  if (!qword_100AD3C78)
  {
    sub_1000F2A18(&qword_100AD3C68, &qword_100942220);
    sub_10000B58C(&qword_100AD3C80, &qword_100AD3C88, &qword_100942230, &unk_100942578);
    sub_10000B58C(&qword_100AD3C90, &qword_100AD3C98, &qword_100942238, &unk_100942578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3C78);
  }

  return result;
}

unint64_t sub_100123BC8()
{
  result = qword_100AD3CA0;
  if (!qword_100AD3CA0)
  {
    sub_1000F2A18(&qword_100AD3C70, &qword_100942228);
    sub_10000B58C(&qword_100AD3C60, &qword_100AD3C58, &qword_100942218, &unk_100942578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CA0);
  }

  return result;
}

uint64_t sub_100123C80(void *a1, uint64_t a2)
{
  v2 = a1;
}

void *sub_100123CB8(void *result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = result;
  }

  return result;
}

unint64_t sub_100123CF8()
{
  result = qword_100AD3CC0;
  if (!qword_100AD3CC0)
  {
    sub_1000F2A18(&qword_100AD3C40, &qword_100942200);
    sub_100123D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CC0);
  }

  return result;
}

unint64_t sub_100123D84()
{
  result = qword_100AD3CC8;
  if (!qword_100AD3CC8)
  {
    sub_1000F2A18(&qword_100AD3CB8, &qword_100942288);
    sub_100123E10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CC8);
  }

  return result;
}

unint64_t sub_100123E10()
{
  result = qword_100AD3CD0;
  if (!qword_100AD3CD0)
  {
    sub_1000F2A18(&qword_100AD3CB0, &unk_100942278);
    sub_10000B58C(&qword_100AD3CD8, &qword_100AD3CE0, &qword_100942290, &protocol conformance descriptor for VStack<A>);
    sub_10000B58C(&qword_100AD2108, &qword_100AD20A8, &qword_100940250, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CD0);
  }

  return result;
}

uint64_t sub_100123EF4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v6 = a3 & 1;
  if (a4)
  {
    return a6(a1, a2, v6);
  }

  else
  {
    return a5(a1, a2, v6);
  }
}

double sub_100123F0C(void *a1, uint64_t a2)
{

  return result;
}

double sub_100123F44(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100123F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Suggestion.ItemContent.Failure(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Suggestion.ItemContent.Failure(uint64_t result, int a2, int a3)
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

uint64_t sub_10012406C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001240B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_100124100()
{
  result = qword_100AD3D80;
  if (!qword_100AD3D80)
  {
    sub_1000F2A18(&qword_100AD3BE0, &qword_1009421A0);
    sub_1000F2A18(&qword_100AD3B48, &qword_100942148);
    sub_1000F2A18(&unk_100AD9850, &qword_100942010);
    sub_1001231E4();
    sub_1001235B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D80);
  }

  return result;
}

unint64_t sub_1001241F8()
{
  result = qword_100AD3D88;
  if (!qword_100AD3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D88);
  }

  return result;
}

unint64_t sub_100124250()
{
  result = qword_100AD3D90;
  if (!qword_100AD3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D90);
  }

  return result;
}

unint64_t sub_1001242C4()
{
  result = qword_100AD3D98;
  if (!qword_100AD3D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3D98);
  }

  return result;
}

void *sub_100124324(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = *((swift_isaMask & *v1) + 0xB0);
  v3 = v1;
  v2(3);

  return v3;
}

void sub_1001243A4(void *a1, char *a2, uint64_t a3)
{
  v48 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AEEE20, &qword_1009480F0);
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  v10 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v10 - 8);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v50 = a1;
  v18 = a1;
  v45 = a3;
  swift_getAtKeyPath();
  v44 = v18;

  v19 = v51;
  v49 = v5;
  v46 = v6;
  if (v51)
  {
    v20 = *(v6 + 16);
    v20(v17, &v51[OBJC_IVAR____TtC7Journal5Asset_id], v5);

    v21 = *(v6 + 56);
    v21(v17, 0, 1, v5);
  }

  else
  {
    v21 = *(v6 + 56);
    v21(v17, 1, 1, v5);
    v20 = *(v6 + 16);
  }

  v22 = v48;
  v23 = v49;
  v20(v14, &v48[OBJC_IVAR____TtC7Journal5Asset_id], v49);
  v21(v14, 0, 1, v23);
  v24 = *(v8 + 48);
  v25 = v47;
  sub_1000082B4(v17, v47, &qword_100AD1420, &unk_10093C080);
  sub_1000082B4(v14, v25 + v24, &qword_100AD1420, &unk_10093C080);
  v26 = v46;
  v27 = *(v46 + 48);
  if (v27(v25, 1, v23) != 1)
  {
    v30 = v26;
    v41 = v17;
    v31 = v43;
    sub_1000082B4(v25, v43, &qword_100AD1420, &unk_10093C080);
    v32 = v49;
    if (v27(v25 + v24, 1, v49) != 1)
    {
      v35 = v25 + v24;
      v36 = v42;
      (*(v26 + 32))(v42, v35, v32);
      sub_100123664(&qword_100AD9220, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v29 = v48;
      v37 = v48;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v30 + 8);
      v39(v36, v32);
      sub_100004F84(v14, &qword_100AD1420, &unk_10093C080);
      sub_100004F84(v41, &qword_100AD1420, &unk_10093C080);
      v39(v31, v32);
      sub_100004F84(v25, &qword_100AD1420, &unk_10093C080);
      if (v38)
      {
        goto LABEL_12;
      }

LABEL_10:
      v50 = v29;
      v51 = v44;
      v34 = v44;
      swift_setAtReferenceWritableKeyPath();

      return;
    }

    v29 = v48;
    v33 = v48;
    sub_100004F84(v14, &qword_100AD1420, &unk_10093C080);
    sub_100004F84(v41, &qword_100AD1420, &unk_10093C080);
    (*(v26 + 8))(v31, v32);
LABEL_9:
    sub_100004F84(v25, &unk_100AEEE20, &qword_1009480F0);
    goto LABEL_10;
  }

  v28 = v22;
  sub_100004F84(v14, &qword_100AD1420, &unk_10093C080);
  sub_100004F84(v17, &qword_100AD1420, &unk_10093C080);
  v29 = v22;
  if (v27(v25 + v24, 1, v49) != 1)
  {
    goto LABEL_9;
  }

  sub_100004F84(v25, &qword_100AD1420, &unk_10093C080);
LABEL_12:
}

void sub_10012491C(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringArrayForKey:v6];

  if (v7)
  {
    v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v18[0] = a1;
  v18[1] = a2;
  __chkstk_darwin(v8);
  v17[2] = v18;

  v10 = sub_100194FF0(sub_100124B50, v17, v9);

  if (v10)
  {
  }

  else
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_10009BCC8(0, *(v9 + 2) + 1, 1, v9);
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_10009BCC8((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[2 * v12];
    *(v13 + 4) = a1;
    *(v13 + 5) = a2;
    v14 = [v4 standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v16 = String._bridgeToObjectiveC()();
    [v14 setObject:isa forKey:v16];
  }
}

void sub_100124B70(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 stringArrayForKey:v6];

  if (v7)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = *(v8 + 2);
  if (v9)
  {
    v10 = 0;
    v11 = v8 + 5;
    while (1)
    {
      v12 = *(v11 - 1) == a1 && *v11 == a2;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      ++v10;
      v11 += 2;
      if (v9 == v10)
      {
        goto LABEL_12;
      }
    }

    sub_100691630(v10);

    v13 = [v4 standardUserDefaults];
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = String._bridgeToObjectiveC()();
    [v13 setObject:isa forKey:v15];
  }

  else
  {
LABEL_12:
  }
}

id sub_100124EB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100124FB4(uint64_t a1, double a2, double a3)
{
  v7 = type metadata accessor for RoutePinAnnotation();
  v16.receiver = objc_allocWithZone(v7);
  v16.super_class = v7;
  v8 = objc_msgSendSuper2(&v16, "init");
  [v8 setGeotaggables:a1];
  [v8 setCoordinate:{a2, a3}];
  v9 = v8;
  [v9 setCoordinate:{a2, a3}];
  [v9 setGeotaggables:a1];
  v10 = OBJC_IVAR____TtC7Journal16RoutePinRenderer_pipelineComponentProvider;
  v11 = *(v3 + OBJC_IVAR____TtC7Journal16RoutePinRenderer_pipelineComponentProvider);
  if (v11)
  {
    v12 = [v11 renderer];
  }

  else
  {
    v12 = 0;
  }

  [v9 setRenderer:v12];
  swift_unknownObjectRelease();
  v13 = *(v3 + v10);
  if (v13)
  {
    v14 = [v13 selectionHandler];
  }

  else
  {
    v14 = 0;
  }

  [v9 setSelectionHandler:v14];

  swift_unknownObjectRelease();
  return v9;
}

void *sub_1001251C0(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  type metadata accessor for RoutePinAnnotation();
  result = swift_dynamicCastClass();
  if (result)
  {
    v7 = result;
    swift_unknownObjectRetain();
    v8 = [a2 dequeueReusableAnnotationViewWithIdentifier:MKMapViewDefaultAnnotationViewReuseIdentifier forAnnotation:v7];
    type metadata accessor for EntryMapMarkerAnnotationView();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      [v9 setAnnotation:a1];
      v11 = v8;
      [v10 setClusteringIdentifier:MKMapViewDefaultClusterAnnotationViewReuseIdentifier];
      v12 = v11;
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v13 = String._bridgeToObjectiveC()();

      [v10 setAccessibilityLabel:v13];

      swift_unknownObjectRelease();
      return v10;
    }

    else
    {
      swift_unknownObjectRelease();

      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for MacSettingsNotificationsTab(uint64_t a1)
{
  result = qword_100AD3ED0;
  if (!qword_100AD3ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100125448(uint64_t a1)
{
  sub_1001254B4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001254B4(uint64_t a1)
{
  if (!qword_100AD3EE0)
  {
    type metadata accessor for NotificationSettingsViewModel(255);
    v1 = type metadata accessor for Bindable();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD3EE0);
    }
  }
}

uint64_t sub_100125528@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MacSettingsNotificationsTab(0);
  v25 = *(v3 - 8);
  v24 = *(v25 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD3F10, &qword_1009426E0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v26 = v1;
  sub_1000F24EC(&qword_100AD3F18, &qword_1009426E8);
  sub_100129018();
  Form.init(content:)();
  LocalizedStringKey.init(stringLiteral:)();
  v10 = Text.init(_:tableName:bundle:comment:)();
  v12 = v11;
  v14 = v13;
  sub_10000B58C(&qword_100AD3F88, &qword_100AD3F10, &qword_1009426E0, &protocol conformance descriptor for Form<A>);
  View.navigationTitle(_:)();
  sub_1000594D0(v10, v12, v14 & 1);

  (*(v7 + 8))(v9, v6);
  v15 = v23;
  sub_1001292CC(v23, v5);
  v16 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v17 = swift_allocObject();
  sub_100129330(v5, v17 + v16);
  v18 = (a1 + *(sub_1000F24EC(&qword_100AD3F90, &qword_100942720) + 36));
  *v18 = sub_100129394;
  v18[1] = v17;
  v18[2] = 0;
  v18[3] = 0;
  sub_1001292CC(v15, v5);
  v19 = swift_allocObject();
  sub_100129330(v5, v19 + v16);
  result = sub_1000F24EC(&qword_100AD3F98, &qword_100942728);
  v21 = (a1 + *(result + 36));
  *v21 = 0;
  v21[1] = 0;
  v21[2] = sub_1001293AC;
  v21[3] = v19;
  return result;
}

uint64_t sub_100125884@<X0>(uint64_t a2@<X8>)
{
  v88 = a2;
  v90 = sub_1000F24EC(&qword_100AD3F80, &qword_100942718);
  __chkstk_darwin(v90);
  v72 = &v64 - v2;
  v74 = sub_1000F24EC(&qword_100AD3FA0, &qword_100942730);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v81 = &v64 - v5;
  v71 = sub_1000F24EC(&qword_100AD3FA8, &qword_100942738);
  v80 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v79 = &v64 - v8;
  v67 = sub_1000F24EC(&qword_100AD3F70, &qword_100942710);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v64 - v9;
  v85 = sub_1000F24EC(&qword_100AD3F60, &qword_100942708);
  __chkstk_darwin(v85);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v69 = &v64 - v12;
  v87 = sub_1000F24EC(&qword_100AD3FB0, &qword_100942740);
  __chkstk_darwin(v87);
  v86 = &v64 - v13;
  v82 = sub_1000F24EC(&qword_100AD3FB8, &qword_100942748);
  __chkstk_darwin(v82);
  v83 = &v64 - v14;
  v89 = sub_1000F24EC(&qword_100AD3F30, &qword_1009426F0);
  __chkstk_darwin(v89);
  v84 = &v64 - v15;
  v77 = sub_1000F24EC(&qword_100AD3F50, &qword_100942700);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v64 - v16;
  v17 = sub_1000F24EC(&qword_100AD3F40, &qword_1009426F8);
  __chkstk_darwin(v17);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v78 = &v64 - v21;
  sub_1000F24EC(&qword_100AD3E70, &unk_100942660);
  Bindable.wrappedValue.getter();
  v22 = v91;
  swift_getKeyPath();
  *&v91 = v22;
  sub_1001295A4(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(v22 + 24);
  v24 = [v23 authorizationStatus];

  if (v24)
  {
    v25 = v85;
    Bindable.wrappedValue.getter();
    v26 = v91;
    swift_getKeyPath();
    *&v91 = v26;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v26 + 24);
    v28 = [v27 authorizationStatus];

    if (v28 == 2)
    {
      __chkstk_darwin(v29);
      sub_1000F24EC(&qword_100AD3FE0, &qword_100942788);
      v85 = &protocol conformance descriptor for TupleView<A>;
      sub_10000B58C(&qword_100AD3FE8, &qword_100AD3FE0, &qword_100942788, &protocol conformance descriptor for TupleView<A>);
      v30 = v79;
      v31 = Section<>.init(content:)();
      __chkstk_darwin(v31);
      sub_1000F24EC(&qword_100AD3FF0, &qword_100942790);
      sub_10000B58C(&qword_100AD3FF8, &qword_100AD3FF0, &qword_100942790, &protocol conformance descriptor for TupleView<A>);
      v32 = v81;
      Section<>.init(content:)();
      v33 = *(v80 + 16);
      v34 = v68;
      v35 = v30;
      v36 = v71;
      v33(v68, v35, v71);
      v37 = v73;
      v38 = *(v73 + 16);
      v39 = v70;
      v40 = v74;
      v38(v70, v32, v74);
      v41 = v72;
      v33(v72, v34, v36);
      v42 = sub_1000F24EC(&qword_100AD4000, &qword_100942798);
      v38((v41 + *(v42 + 48)), v39, v40);
      v43 = *(v37 + 8);
      v43(v39, v40);
      v44 = *(v80 + 8);
      v44(v34, v36);
      sub_1000BC154(v41, v86);
      swift_storeEnumTagMultiPayload();
      sub_1001290D0();
      sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80, &qword_100942718, v85);
      _ConditionalContent<>.init(storage:)();
      sub_1000BC1C4(v41);
      v43(v81, v40);
      return (v44)(v79, v36);
    }

    sub_1000F24EC(&qword_100AD3FC0, &qword_10096F1F0);
    sub_1000F24EC(&qword_100AD3FC8, &qword_100942780);
    sub_10000B58C(&qword_100AD3FD0, &qword_100AD3FC0, &qword_10096F1F0, &protocol conformance descriptor for Label<A, B>);
    sub_10000B58C(&qword_100AD3FD8, &qword_100AD3FC8, &qword_100942780, &protocol conformance descriptor for Link<A>);
    v56 = v64;
    ContentUnavailableView.init(label:description:actions:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v57 = v65;
    (*(v66 + 32))(v65, v56, v67);
    v58 = (v57 + v25[9]);
    v59 = v96;
    v58[4] = v95;
    v58[5] = v59;
    v58[6] = v97;
    v60 = v92;
    *v58 = v91;
    v58[1] = v60;
    v61 = v94;
    v58[2] = v93;
    v58[3] = v61;
    v62 = v69;
    sub_100021CEC(v57, v69, &qword_100AD3F60, &qword_100942708);
    sub_1000082B4(v62, v83, &qword_100AD3F60, &qword_100942708);
    swift_storeEnumTagMultiPayload();
    sub_10012915C();
    sub_100129214();
    v63 = v84;
    _ConditionalContent<>.init(storage:)();
    sub_1000082B4(v63, v86, &qword_100AD3F30, &qword_1009426F0);
    swift_storeEnumTagMultiPayload();
    sub_1001290D0();
    sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80, &qword_100942718, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v63, &qword_100AD3F30, &qword_1009426F0);
    v53 = v62;
    v54 = &qword_100AD3F60;
    v55 = &qword_100942708;
  }

  else
  {
    sub_1000F24EC(&qword_100AD3FC0, &qword_10096F1F0);
    sub_1000F24EC(&qword_100AD4008, &unk_1009427A0);
    sub_10000B58C(&qword_100AD3FD0, &qword_100AD3FC0, &qword_10096F1F0, &protocol conformance descriptor for Label<A, B>);
    sub_10000B58C(&qword_100AD4010, &qword_100AD4008, &unk_1009427A0, &protocol conformance descriptor for Button<A>);
    v46 = v75;
    ContentUnavailableView.init(label:description:actions:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v76 + 32))(v19, v46, v77);
    v47 = &v19[*(v17 + 36)];
    v48 = v96;
    *(v47 + 4) = v95;
    *(v47 + 5) = v48;
    *(v47 + 6) = v97;
    v49 = v92;
    *v47 = v91;
    *(v47 + 1) = v49;
    v50 = v94;
    *(v47 + 2) = v93;
    *(v47 + 3) = v50;
    v51 = v78;
    sub_100021CEC(v19, v78, &qword_100AD3F40, &qword_1009426F8);
    sub_1000082B4(v51, v83, &qword_100AD3F40, &qword_1009426F8);
    swift_storeEnumTagMultiPayload();
    sub_10012915C();
    sub_100129214();
    v52 = v84;
    _ConditionalContent<>.init(storage:)();
    sub_1000082B4(v52, v86, &qword_100AD3F30, &qword_1009426F0);
    swift_storeEnumTagMultiPayload();
    sub_1001290D0();
    sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80, &qword_100942718, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v52, &qword_100AD3F30, &qword_1009426F0);
    v53 = v51;
    v54 = &qword_100AD3F40;
    v55 = &qword_1009426F8;
  }

  return sub_100004F84(v53, v54, v55);
}

uint64_t sub_100126820@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001268AC@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001268F4@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_1001269C4()
{
  v0 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1003E98E8(0, 0, v2, &unk_1009427B8, v5);

  return result;
}

uint64_t sub_100126AD0(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_100126B68, v3, v2);
}

uint64_t sub_100126B68()
{
  if (qword_100ACFD20 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_100126C54;

  return sub_1003C1F2C(v1, &protocol witness table for MainActor, 1);
}

uint64_t sub_100126C54(char a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_100126E18;
  }

  else
  {

    *(v4 + 56) = a1 & 1;
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
    v7 = sub_100126DAC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100126DAC()
{
  v1 = *(v0 + 56);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100126E18()
{

  **(v0 + 16) = 2;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100126E84@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100126F64@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100126FF0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_100127038@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001270C4()
{
  v0 = sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for OpenSensitiveURLAction.Destination(0);
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1008B4384(v2);
  sub_1001295EC(v5);
  v6 = type metadata accessor for URL();
  result = (*(*(v6 - 8) + 48))(v2, 1, v6);
  if (result != 1)
  {
    return Link.init(sensitiveUrl:label:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_100127220@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001272AC@<X0>(void (*a1)(void, void, void)@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = sub_1000F24EC(&qword_100AD4088, &qword_100942880);
  v78 = *(v3 - 8);
  v79 = v3;
  __chkstk_darwin(v3);
  v69 = v61 - v4;
  v5 = sub_1000F24EC(&qword_100AD4090, &qword_100942888);
  v67 = *(v5 - 8);
  v68 = v5;
  __chkstk_darwin(v5);
  v66 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = v61 - v8;
  v9 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v9 - 8);
  v61[2] = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD2690, &qword_100940CD0);
  __chkstk_darwin(v11 - 8);
  v61[1] = v61 - v12;
  v13 = sub_1000F24EC(&qword_100AD4018, &qword_100946220);
  v63 = *(v13 - 8);
  v64 = v13;
  __chkstk_darwin(v13);
  v62 = v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v70 = v61 - v16;
  v17 = sub_1000F24EC(&qword_100AD4098, &qword_100942890);
  __chkstk_darwin(v17 - 8);
  v77 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v76 = v61 - v20;
  v21 = sub_1000F24EC(&qword_100AD3E70, &unk_100942660);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v61 - v23;
  v25 = sub_1000F24EC(&qword_100AD4068, &qword_100946280);
  v73 = *(v25 - 8);
  v74 = v25;
  __chkstk_darwin(v25);
  v75 = v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v61 - v28;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v30 = *(v22 + 8);
  v30(v24, v21);
  v72 = v29;
  Toggle.init(isOn:label:)();
  v65 = a1;
  Bindable.wrappedValue.getter();
  v31 = v81;
  swift_getKeyPath();
  v81 = v31;
  sub_1001295A4(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v81 = v31;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v31 + 24) authorizationStatus] == 2 && (swift_getKeyPath(), v81 = v31, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v31 + 64) >> 62 != 1))
  {
    v44 = [*(v31 + 16) isJournalingScheduleEnabled];

    if (v44)
    {
      v45 = v65;
      Bindable.projectedValue.getter();
      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v30(v24, v21);
      static DatePickerComponents.hourAndMinute.getter();
      v46 = v70;
      v47 = DatePicker.init(selection:displayedComponents:label:)();
      __chkstk_darwin(v47);
      v61[-2] = v45;
      type metadata accessor for SettingsWeekdayToggles(0);
      sub_1001295A4(&qword_100AD40A8, type metadata accessor for SettingsWeekdayToggles, &unk_100971A00);
      v48 = v71;
      LabeledContent<>.init(content:label:)();
      v49 = v63;
      v50 = v64;
      v51 = *(v63 + 16);
      v52 = v62;
      v51(v62, v46, v64);
      v54 = v66;
      v53 = v67;
      v65 = *(v67 + 16);
      v55 = v48;
      v56 = v68;
      v65(v66, v55, v68);
      v57 = v69;
      v51(v69, v52, v50);
      v58 = sub_1000F24EC(&qword_100AD40B0, &qword_1009428F0);
      v65(v57 + *(v58 + 48), v54, v56);
      v59 = *(v53 + 8);
      v59(v71, v56);
      v60 = *(v49 + 8);
      v60(v70, v50);
      v59(v54, v56);
      v60(v52, v50);
      v33 = v76;
      sub_100021CEC(v57, v76, &qword_100AD4088, &qword_100942880);
      v32 = 0;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v32 = 1;
  v33 = v76;
LABEL_5:
  (*(v78 + 56))(v33, v32, 1, v79);
  v35 = v72;
  v34 = v73;
  v36 = *(v73 + 16);
  v37 = v74;
  v38 = v75;
  v36(v75, v72, v74);
  v39 = v77;
  sub_1000082B4(v33, v77, &qword_100AD4098, &qword_100942890);
  v40 = v80;
  v36(v80, v38, v37);
  v41 = sub_1000F24EC(&qword_100AD40A0, &qword_1009428C0);
  sub_1000082B4(v39, &v40[*(v41 + 48)], &qword_100AD4098, &qword_100942890);
  sub_100004F84(v33, &qword_100AD4098, &qword_100942890);
  v42 = *(v34 + 8);
  v42(v35, v37);
  sub_100004F84(v39, &qword_100AD4098, &qword_100942890);
  return (v42)(v38, v37);
}

uint64_t sub_100127C8C(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1003F06FC(v5);
}

uint64_t sub_100127D58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AD3E70, &unk_100942660);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v8 - v4;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v3 + 8))(v5, v2);
  *a1 = v8[1];
  *(a1 + 8) = v9;
  v6 = *(type metadata accessor for SettingsWeekdayToggles(0) + 20);
  *(a1 + v6) = swift_getKeyPath();
  sub_1000F24EC(&qword_100AD9990, &unk_100942950);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100127EAC(uint64_t *a1)
{
  v1 = *a1;

  v3 = sub_1003EF734(v5);
  if (*v2)
  {
    *v2 = v1;
  }

  (v3)(v5, 0);
  return sub_1003F1768(0);
}

uint64_t sub_100127F48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v79 = a1;
  v78 = a2;
  v2 = type metadata accessor for DatePickerComponents();
  __chkstk_darwin(v2 - 8);
  v60 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000F24EC(&qword_100AD2690, &qword_100940CD0);
  __chkstk_darwin(v4 - 8);
  v59 = &v56 - v5;
  v75 = sub_1000F24EC(&qword_100AD4018, &qword_100946220);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v58 = &v56 - v6;
  v7 = sub_1000F24EC(&qword_100AD4020, &unk_1009427C0);
  __chkstk_darwin(v7 - 8);
  v77 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v76 = &v56 - v10;
  v11 = sub_1000F24EC(&qword_100AD3E70, &unk_100942660);
  v85 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v56 - v12;
  v66 = sub_1000F24EC(&qword_100AD4028, &qword_1009463C0);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v56 - v14;
  v73 = sub_1000F24EC(&qword_100AD4030, &qword_1009427D0);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v65 = &v56 - v17;
  LocalizedStringKey.init(stringLiteral:)();
  v18 = Text.init(_:tableName:bundle:comment:)();
  v83 = v18;
  v82 = v19;
  v21 = v20;
  v84 = v22;
  LocalizedStringKey.init(stringLiteral:)();
  v23 = Text.init(_:tableName:bundle:comment:)();
  v80 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v81 = v28;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  v63 = v11;
  Bindable<A>.subscript.getter();

  v30 = *(v85 + 8);
  v57 = v13;
  v85 += 8;
  v56 = v30;
  v30(v13, v11);
  v69 = v103;
  v62 = v104;
  v61 = v105;
  v95 = v18;
  v31 = v82;
  v96 = v82;
  v70 = v21;
  LOBYTE(v13) = v21 & 1;
  v97 = v21 & 1;
  v32 = v84;
  v98 = v84;
  v99 = v23;
  v100 = v25;
  v68 = v27;
  v101 = v27 & 1;
  v102 = v29;
  sub_1000F24EC(&qword_100AD4038, &unk_100942800);
  sub_10000B58C(&qword_100AD4040, &qword_100AD4038, &unk_100942800, &protocol conformance descriptor for TupleView<A>);
  v33 = v64;
  Toggle.init(isOn:label:)();
  v86 = v79;
  v87 = v83;
  v88 = v31;
  v89 = v13;
  v90 = v32;
  v91 = v80;
  v69 = v25;
  v92 = v25;
  v93 = v27 & 1;
  v94 = v81;
  sub_1000F24EC(&qword_100AD4048, &qword_10095A970);
  sub_10000B58C(&qword_100AD4050, &qword_100AD4028, &qword_1009463C0, &protocol conformance descriptor for Toggle<A>);
  sub_10000B58C(&qword_100AD4058, &qword_100AD4048, &qword_10095A970, &protocol conformance descriptor for TupleView<A>);
  v34 = v65;
  v35 = v66;
  v36 = v63;
  View.accessibilityRepresentation<A>(representation:)();
  (*(v67 + 8))(v33, v35);
  Bindable.wrappedValue.getter();
  v37 = v103;
  swift_getKeyPath();
  v103 = v37;
  sub_1001295A4(&qword_100AE4660, type metadata accessor for NotificationSettingsViewModel, &unk_1009548CC);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v103 = v37;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ([*(v37 + 24) authorizationStatus] == 2 && (swift_getKeyPath(), v103 = v37, ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v37 + 64) >> 62 != 1))
  {
    v52 = [*(v37 + 16) isStreakReminderEnabled];

    if (v52)
    {
      v53 = v57;
      Bindable.projectedValue.getter();
      swift_getKeyPath();
      Bindable<A>.subscript.getter();

      v56(v53, v36);
      static DatePickerComponents.hourAndMinute.getter();
      v54 = v58;
      DatePicker.init(selection:displayedComponents:label:)();
      v41 = v74;
      v39 = v76;
      v55 = v75;
      (*(v74 + 32))(v76, v54, v75);
      v40 = v55;
      v38 = 0;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v38 = 1;
  v39 = v76;
  v40 = v75;
  v41 = v74;
LABEL_5:
  (*(v41 + 56))(v39, v38, 1, v40);
  v42 = v72;
  v43 = *(v72 + 16);
  v44 = v71;
  v45 = v34;
  v46 = v73;
  v43(v71, v34, v73);
  v47 = v77;
  sub_1000082B4(v39, v77, &qword_100AD4020, &unk_1009427C0);
  v48 = v78;
  v43(v78, v44, v46);
  v49 = sub_1000F24EC(&qword_100AD4060, &qword_100942810);
  sub_1000082B4(v47, &v48[*(v49 + 48)], &qword_100AD4020, &unk_1009427C0);
  sub_1000594D0(v83, v82, v70 & 1);

  sub_1000594D0(v80, v69, v68 & 1);

  sub_100004F84(v39, &qword_100AD4020, &unk_1009427C0);
  v50 = *(v42 + 8);
  v50(v45, v46);
  sub_100004F84(v47, &qword_100AD4020, &unk_1009427C0);
  return (v50)(v44, v46);
}

double sub_100128A68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = a3 & 1;
  v14 = a7 & 1;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7 & 1;
  *(a9 + 56) = a8;
  sub_1000F24DC(a1, a2, a3 & 1);

  sub_1000F24DC(a5, a6, v14);

  sub_1000F24DC(a1, a2, v13);

  sub_1000F24DC(a5, a6, v14);

  sub_1000594D0(a5, a6, v14);

  sub_1000594D0(a1, a2, v13);

  return result;
}

uint64_t sub_100128B78@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9)
{
  v38 = a7;
  v36 = a5;
  v37 = a6;
  v33 = a4;
  v34 = a8;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v35 = a9;
  v9 = sub_1000F24EC(&qword_100AD3E70, &unk_100942660);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  v13 = sub_1000F24EC(&qword_100AD4068, &qword_100946280);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = sub_1000F24EC(&qword_100AD4070, &unk_100942870);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v29 - v21;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v10 + 8))(v12, v9);
  v39 = v30;
  v40 = v31;
  v41 = v32 & 1;
  v42 = v33;
  Toggle.init(isOn:label:)();
  sub_10000B58C(&qword_100AD4078, &qword_100AD4068, &qword_100946280, &protocol conformance descriptor for Toggle<A>);
  View.accessibilityLabel(_:)();
  (*(v14 + 8))(v16, v13);
  sub_1000082B4(v22, v19, &qword_100AD4070, &unk_100942870);
  v23 = v34;
  sub_1000082B4(v19, v34, &qword_100AD4070, &unk_100942870);
  v24 = v23 + *(sub_1000F24EC(&qword_100AD4080, &qword_10095AAC0) + 48);
  v26 = v36;
  v25 = v37;
  *v24 = v36;
  *(v24 + 8) = v25;
  v27 = v38;
  LOBYTE(v23) = v38 & 1;
  *(v24 + 16) = v38 & 1;
  *(v24 + 24) = v35;
  sub_1000F24DC(v26, v25, v27 & 1);

  sub_1000F24DC(v26, v25, v23);

  sub_100004F84(v22, &qword_100AD4070, &unk_100942870);
  sub_1000594D0(v26, v25, v23);

  return sub_100004F84(v19, &qword_100AD4070, &unk_100942870);
}

uint64_t sub_100128F34@<X0>(uint64_t a3@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

double sub_100128FB0(uint64_t a1, void (*a2)(void *))
{
  sub_1000F24EC(&qword_100AD3E70, &unk_100942660);
  v3 = Bindable.wrappedValue.getter();
  a2(v3);

  return result;
}

unint64_t sub_100129018()
{
  result = qword_100AD3F20;
  if (!qword_100AD3F20)
  {
    sub_1000F2A18(&qword_100AD3F18, &qword_1009426E8);
    sub_1001290D0();
    sub_10000B58C(&qword_100AD3F78, &qword_100AD3F80, &qword_100942718, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F20);
  }

  return result;
}

unint64_t sub_1001290D0()
{
  result = qword_100AD3F28;
  if (!qword_100AD3F28)
  {
    sub_1000F2A18(&qword_100AD3F30, &qword_1009426F0);
    sub_10012915C();
    sub_100129214();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F28);
  }

  return result;
}

unint64_t sub_10012915C()
{
  result = qword_100AD3F38;
  if (!qword_100AD3F38)
  {
    sub_1000F2A18(&qword_100AD3F40, &qword_1009426F8);
    sub_10000B58C(&qword_100AD3F48, &qword_100AD3F50, &qword_100942700, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F38);
  }

  return result;
}

unint64_t sub_100129214()
{
  result = qword_100AD3F58;
  if (!qword_100AD3F58)
  {
    sub_1000F2A18(&qword_100AD3F60, &qword_100942708);
    sub_10000B58C(&qword_100AD3F68, &qword_100AD3F70, &qword_100942710, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3F58);
  }

  return result;
}

uint64_t sub_1001292CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSettingsNotificationsTab(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100129330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSettingsNotificationsTab(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100129438(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032ECC;

  return sub_100126AD0(a1);
}

uint64_t sub_100129548@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  sub_1000F24DC(v2, v3, v4);
}

uint64_t sub_1001295A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001295EC(uint64_t a1)
{
  v2 = type metadata accessor for OpenSensitiveURLAction.Destination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100129648()
{
  result = qword_100AD40B8;
  if (!qword_100AD40B8)
  {
    sub_1000F2A18(&qword_100AD3F98, &qword_100942728);
    sub_1001296D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD40B8);
  }

  return result;
}

unint64_t sub_1001296D4()
{
  result = qword_100AD40C0;
  if (!qword_100AD40C0)
  {
    sub_1000F2A18(&qword_100AD3F90, &qword_100942720);
    sub_1000F2A18(&qword_100AD3F10, &qword_1009426E0);
    sub_10000B58C(&qword_100AD3F88, &qword_100AD3F10, &qword_1009426E0, &protocol conformance descriptor for Form<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD40C0);
  }

  return result;
}

id sub_100129814(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SharedDeviceInfoProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10012986C()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AD40F0);
  v1 = sub_10000617C(v0, qword_100AD40F0);
  if (qword_100AD0190 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSObject *sub_100129968()
{
  v1 = sub_1000F24EC(&qword_100AD4230, &qword_100942A48);
  v90 = *(v1 - 8);
  v91 = v1;
  __chkstk_darwin(v1);
  v89 = &v79 - v2;
  v3 = sub_1000F24EC(&qword_100AD4238, &qword_100942A50);
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v79 - v4;
  v5 = sub_1000F24EC(&qword_100AD4240, &qword_100942A58);
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v83 = &v79 - v6;
  v7 = sub_1000F24EC(&qword_100AD4248, &qword_100942A60);
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v79 - v8;
  v9 = sub_1000F24EC(&qword_100AD4250, &qword_100942A68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v99 = type metadata accessor for NSNotificationCenter.ObservationToken();
  v13 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = &v79 - v16;
  __chkstk_darwin(v17);
  v93 = &v79 - v18;
  __chkstk_darwin(v19);
  v92 = &v79 - v20;
  __chkstk_darwin(v21);
  v98 = &v79 - v22;
  *&v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_observationTokens] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_propertiesToRefresh] = _swiftEmptySetSingleton;
  v23 = &v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity;
  type metadata accessor for UndoableActivity();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 3;
  *&v0[v24] = v25;
  v26 = type metadata accessor for EntryUndoManager();
  v100.receiver = v0;
  v100.super_class = v26;
  v27 = objc_msgSendSuper2(&v100, "init");
  v28 = qword_100ACF950;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000617C(v30, qword_100AD40F0);
  v31 = v29;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.debug.getter();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412546;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2048;
    *(v35 + 14) = [v31 groupingLevel];

    _os_log_impl(&_mh_execute_header, v32, v33, "Created new undoManager: %@, initial level:%ld", v35, 0x16u);
    sub_10012B714(v36);
  }

  else
  {

    v32 = v31;
  }

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  type metadata accessor for NSUndoManager.DidOpenUndoGroupMessage();
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4258, &qword_100AD4250, &qword_100942A68);
  v39 = v31;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v10 + 8))(v12, v9);
  v40 = OBJC_IVAR____TtC7Journal16EntryUndoManager_observationTokens;
  v41 = *(&v39->isa + OBJC_IVAR____TtC7Journal16EntryUndoManager_observationTokens);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_1003E4B30(0, *(v41 + 2) + 1, 1, v41);
    *(&v39->isa + v40) = v41;
  }

  v43 = v97;
  v45 = *(v41 + 2);
  v44 = *(v41 + 3);
  if (v45 >= v44 >> 1)
  {
    v41 = sub_1003E4B30((v44 > 1), v45 + 1, 1, v41);
  }

  *(v41 + 2) = v45 + 1;
  v47 = *(v43 + 32);
  v46 = v43 + 32;
  v97 = (*(v46 + 48) + 32) & ~*(v46 + 48);
  v96 = *(v46 + 40);
  v48 = v98;
  v98 = v47;
  (v47)(v41 + v97 + v96 * v45, v48, v99);
  *(&v39->isa + v40) = v41;
  v49 = [v37 defaultCenter];
  type metadata accessor for NSUndoManager.DidCloseUndoGroupMessage();
  v50 = v80;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4260, &qword_100AD4248, &qword_100942A60);
  v51 = v82;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v81 + 8))(v50, v51);
  v52 = *(&v39->isa + v40);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v52;
  if ((v53 & 1) == 0)
  {
    v52 = sub_1003E4B30(0, *(v52 + 2) + 1, 1, v52);
    *(&v39->isa + v40) = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = sub_1003E4B30((v54 > 1), v55 + 1, 1, v52);
  }

  *(v52 + 2) = v55 + 1;
  (v98)(v52 + v97 + v55 * v96, v92, v99);
  *(&v39->isa + v40) = v52;
  v56 = v37;
  v57 = [v37 defaultCenter];
  type metadata accessor for NSUndoManager.WillCloseUndoGroupMessage();
  v58 = v83;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4268, &qword_100AD4240, &qword_100942A58);
  v59 = v85;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v84 + 8))(v58, v59);
  v60 = *(&v39->isa + v40);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_1003E4B30(0, *(v60 + 2) + 1, 1, v60);
    *(&v39->isa + v40) = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_1003E4B30((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  (v98)(v60 + v97 + v63 * v96, v93, v99);
  *(&v39->isa + v40) = v60;
  v64 = [v56 defaultCenter];
  type metadata accessor for NSUndoManager.DidUndoChangeMessage();
  v65 = v86;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10012B6C0(&qword_100AD4270, &qword_100AD4238, &qword_100942A50);
  v66 = v88;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v87 + 8))(v65, v66);
  v67 = *(&v39->isa + v40);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_1003E4B30(0, *(v67 + 2) + 1, 1, v67);
    *(&v39->isa + v40) = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_1003E4B30((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  (v98)(v67 + v97 + v70 * v96, v94, v99);
  *(&v39->isa + v40) = v67;
  v71 = [v56 defaultCenter];
  type metadata accessor for NSUndoManager.DidRedoChangeMessage();
  v72 = v89;
  NSNotificationCenter.BaseMessageIdentifier.init<A>()();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10012B6C0(&qword_100AD4278, &qword_100AD4230, &qword_100942A48);
  v73 = v91;
  NSNotificationCenter.addObserver<A, B>(of:for:using:)();

  (*(v90 + 8))(v72, v73);
  v74 = *(&v39->isa + v40);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_1003E4B30(0, *(v74 + 2) + 1, 1, v74);
    *(&v39->isa + v40) = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_1003E4B30((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  (v98)(v74 + v97 + v77 * v96, v95);
  *(&v39->isa + v40) = v74;
  [v39 beginUndoGrouping];

  return v39;
}

void sub_10012A694(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AD40F0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_10012B714(v11);
    }

    else
    {

      v8 = v7;
    }
  }
}

void sub_10012A818(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000617C(v6, qword_100AD40F0);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_10012B714(v11);
    }

    else
    {

      v8 = v7;
    }

    sub_10012A9C8();
  }
}

void sub_10012A9C8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Journal16EntryUndoManager_propertiesToRefresh;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    v3 = *(v0 + OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo + 8);
      sub_100021E80(*(v1 + OBJC_IVAR____TtC7Journal16EntryUndoManager_didUndoOrRedo), v4);

      v3(v5);
      sub_100004DF8(v3, v4);
    }

    *(v1 + v2) = _swiftEmptySetSingleton;

    *(*(v1 + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  }
}

void sub_10012AA98()
{
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000617C(v1, qword_100AD40F0);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = [v2 groupingLevel];
    *(v5 + 12) = 2048;
    *(v5 + 14) = (*(&v2->isa + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity))[2];

    _os_log_impl(&_mh_execute_header, v3, v4, "textViewDidOpenUndoGroup, groupingLevel: %ld, size: %ld", v5, 0x16u);
  }

  else
  {

    v3 = v2;
  }

  if ((*(&v2->isa + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity))[2] >= 3)
  {
    sub_10012B2C8();
  }
}

id sub_10012ABE8()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "EntryUndoManager.undo()", v5, 2u);
  }

  sub_10012ACEC();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v7, "undo");
}

uint64_t sub_10012ACEC()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "endUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (result >= 1)
  {

    return [v1 endUndoGrouping];
  }

  return result;
}

void sub_10012AE54()
{
  v1 = [v0 groupingLevel];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EntryUndoManager();
  objc_msgSendSuper2(&v7, "beginUndoGrouping");
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v1;
    *(v6 + 12) = 2048;
    *(v6 + 14) = [v3 groupingLevel];

    _os_log_impl(&_mh_execute_header, v4, v5, "beginUndoGrouping, level: %ld -> %ld", v6, 0x16u);
  }

  else
  {

    v4 = v3;
  }
}

void sub_10012AFF0()
{
  if ([v0 groupingLevel] < 1)
  {
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000617C(v7, qword_100AD40F0);
    v11 = v0;
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v11 groupingLevel];

      _os_log_impl(&_mh_execute_header, oslog, v8, "endUndoGrouping skipped, current level: %ld", v9, 0xCu);

      v10 = oslog;
    }

    else
    {

      v10 = v11;
    }
  }

  else
  {
    v1 = [v0 groupingLevel];
    v13.receiver = v0;
    v13.super_class = type metadata accessor for EntryUndoManager();
    objc_msgSendSuper2(&v13, "endUndoGrouping");
    *(*&v0[OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity] + 16) = 0;
    if (qword_100ACF950 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000617C(v2, qword_100AD40F0);
    v3 = v0;
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v1;
      *(v6 + 12) = 2048;
      *(v6 + 14) = [v3 groupingLevel];

      _os_log_impl(&_mh_execute_header, v4, v5, "endUndoGrouping, level: %ld -> %ld", v6, 0x16u);
    }

    else
    {
    }
  }
}

id sub_10012B2C8()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "markUndoPoint", v5, 2u);
  }

  sub_10012ACEC();
  result = sub_10012B3C0();
  *(*(v1 + OBJC_IVAR____TtC7Journal16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  return result;
}

id sub_10012B3C0()
{
  v1 = v0;
  if (qword_100ACF950 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000617C(v2, qword_100AD40F0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "beginUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (!result)
  {

    return [v1 beginUndoGrouping];
  }

  return result;
}

id sub_10012B4DC(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10012B5B8()
{
  result = qword_100AD4228;
  if (!qword_100AD4228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4228);
  }

  return result;
}

uint64_t sub_10012B6C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012B714(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4BB0, &unk_100941E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10012B77C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v10 = HIBYTE(a2) & 0xF;
  v11 = HIBYTE(a4) & 0xF;
  if (a2)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(a2) & 0xF;
    }

    v13 = a2;
    v14 = a1;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  if (!a4)
  {
    goto LABEL_10;
  }

  v15 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a4) & 0xF;
  }

  v13 = a4;
  v14 = a3;
  if (v15)
  {
LABEL_9:
    sub_10012BD5C(10, v14, v13);
    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
LABEL_10:
    v16 = 0;
  }

  [v5 setDisplayName:v16];

  if (a4)
  {
    v17 = a3 & 0xFFFFFFFFFFFFLL;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v17 = v11;
    }

    if (v17)
    {
      goto LABEL_19;
    }
  }

  if (!a2)
  {
    goto LABEL_20;
  }

  v18 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v18 = v10;
  }

  if (v18)
  {
LABEL_19:
    v19 = String._bridgeToObjectiveC()();
  }

  else
  {
LABEL_20:
    v19 = 0;
  }

  v20 = v19;
  [v5 setContentDescription:?];
}

uint64_t sub_10012B8BC()
{
  v1 = v0;
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for AssetType.photo(_:))
  {
    return 0x6F746F6870;
  }

  if (v7 == enum case for AssetType.livePhoto(_:))
  {
    return 0x746F68706576696CLL;
  }

  if (v7 == enum case for AssetType.video(_:))
  {
    return 0x6F65646976;
  }

  if (v7 == enum case for AssetType.music(_:))
  {
    return 0x636973756DLL;
  }

  if (v7 == enum case for AssetType.podcast(_:))
  {
    return 0x6F702E656C707061;
  }

  if (v7 == enum case for AssetType.book(_:))
  {
    return 1802465122;
  }

  if (v7 == enum case for AssetType.audio(_:))
  {
    return 0x6D726F6665766177;
  }

  if (v7 == enum case for AssetType.visit(_:))
  {
    return 0x6E697070616DLL;
  }

  v9 = v7;
  result = 7364973;
  if (v9 != enum case for AssetType.multiPinMap(_:) && v9 != enum case for AssetType.genericMap(_:))
  {
    if (v9 == enum case for AssetType.link(_:))
    {
      return 1802398060;
    }

    else if (v9 == enum case for AssetType.contact(_:))
    {
      return 0xD000000000000012;
    }

    else if (v9 == enum case for AssetType.workoutIcon(_:))
    {
      return 0x722E657275676966;
    }

    else if (v9 == enum case for AssetType.workoutRoute(_:))
    {
      return 0x6574756F72;
    }

    else if (v9 == enum case for AssetType.stateOfMind(_:))
    {
      return 0xD000000000000011;
    }

    else if (v9 == enum case for AssetType.motionActivity(_:))
    {
      return 0x772E657275676966;
    }

    else
    {
      if (v9 != enum case for AssetType.thirdPartyMedia(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0x6F746F6870;
      }

      return 0x6F6E2E636973756DLL;
    }
  }

  return result;
}

uint64_t sub_10012BC9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_10012BCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10012BD5C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = v6;

  sub_1000F24EC(&qword_100AD1EF0, &unk_100972800);
  sub_1000777B4();
  sub_10000B58C(&qword_100AD1EF8, &qword_100AD1EF0, &unk_100972800, &protocol conformance descriptor for Range<A>);
  StringProtocol.enumerateSubstrings<A>(in:options:_:)();

  swift_beginAccess();
  if (*(v6 + 32))
  {
  }

  else
  {
    String.subscript.getter();
    a2 = static String._fromSubstring(_:)();
  }

  return a2;
}

uint64_t sub_10012BF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_beginAccess();
  v15 = *(a8 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(a8 + 16) = v17;
    if (v17 >= a9)
    {
      result = swift_beginAccess();
      *(a10 + 16) = a5;
      *(a10 + 24) = a6;
      *(a10 + 32) = 0;
      *a7 = 1;
    }
  }

  return result;
}

uint64_t sub_10012C00C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a1;
  v90 = a3;
  v4 = type metadata accessor for Date.FormatStyle.Symbol.Day();
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle.Symbol.Month();
  v84 = *(v6 - 8);
  v85 = v6;
  __chkstk_darwin(v6);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Date.FormatStyle.Symbol.Weekday();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v80 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v77 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FormatStyleCapitalizationContext();
  __chkstk_darwin(v12 - 8);
  v76 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TimeZone();
  __chkstk_darwin(v14 - 8);
  v75 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Calendar();
  __chkstk_darwin(v16 - 8);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  __chkstk_darwin(v18 - 8);
  v71 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000F24EC(&qword_100AD4280, &unk_100954D10);
  __chkstk_darwin(v20 - 8);
  v69 = &v67 - v21;
  v22 = sub_1000F24EC(&qword_100AD4288, &qword_10096FE10);
  __chkstk_darwin(v22 - 8);
  v24 = &v67 - v23;
  v25 = type metadata accessor for Date.FormatStyle();
  v67 = *(v25 - 8);
  __chkstk_darwin(v25);
  v27 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v68 = &v67 - v29;
  __chkstk_darwin(v30);
  v70 = &v67 - v31;
  __chkstk_darwin(v32);
  v72 = &v67 - v33;
  __chkstk_darwin(v34);
  v73 = &v67 - v35;
  v36 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v36 - 8);
  v38 = &v67 - v37;
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v91 = &v67 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;

  v43 = sub_10009BCC8(0, 1, 1, _swiftEmptyArrayStorage);
  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_10009BCC8((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[2 * v45];
  v47 = v90;
  *(v46 + 4) = v89;
  *(v46 + 5) = v42;
  sub_100088AC8(v47, v38);
  if ((*(v40 + 48))(v38, 1, v39) == 1)
  {
    sub_10012C9CC(v38);
  }

  else
  {
    v48 = *(v40 + 32);
    v90 = v39;
    v48(v91, v38, v39);
    v49 = type metadata accessor for Date.FormatStyle.DateStyle();
    (*(*(v49 - 8) + 56))(v24, 1, 1, v49);
    v50 = type metadata accessor for Date.FormatStyle.TimeStyle();
    (*(*(v50 - 8) + 56))(v69, 1, 1, v50);
    static Locale.autoupdatingCurrent.getter();
    static Calendar.autoupdatingCurrent.getter();
    static TimeZone.autoupdatingCurrent.getter();
    static FormatStyleCapitalizationContext.unknown.getter();
    Date.FormatStyle.init(date:time:locale:calendar:timeZone:capitalizationContext:)();
    v51 = v77;
    static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
    v52 = v68;
    Date.FormatStyle.year(_:)();
    (*(v78 + 8))(v51, v79);
    v53 = *(v67 + 8);
    v53(v27, v25);
    v54 = v80;
    static Date.FormatStyle.Symbol.Weekday.abbreviated.getter();
    v55 = v70;
    Date.FormatStyle.weekday(_:)();
    (*(v81 + 8))(v54, v82);
    v53(v52, v25);
    v56 = v83;
    static Date.FormatStyle.Symbol.Month.abbreviated.getter();
    v57 = v72;
    Date.FormatStyle.month(_:)();
    (*(v84 + 8))(v56, v85);
    v53(v55, v25);
    v58 = v86;
    static Date.FormatStyle.Symbol.Day.defaultDigits.getter();
    v59 = v73;
    Date.FormatStyle.day(_:)();
    (*(v87 + 8))(v58, v88);
    v53(v57, v25);
    sub_10012CA34();
    Date.formatted<A>(_:)();
    v53(v59, v25);
    v60 = v92;
    v61 = v93;
    v63 = *(v43 + 2);
    v62 = *(v43 + 3);
    if (v63 >= v62 >> 1)
    {
      v43 = sub_10009BCC8((v62 > 1), v63 + 1, 1, v43);
    }

    (*(v40 + 8))(v91, v90);
    *(v43 + 2) = v63 + 1;
    v64 = &v43[2 * v63];
    *(v64 + 4) = v60;
    *(v64 + 5) = v61;
  }

  v92 = v43;
  sub_1000F24EC(&qword_100AD60A0, &qword_100943DB0);
  sub_10000B58C(&qword_100AD2BE0, &qword_100AD60A0, &qword_100943DB0, &protocol conformance descriptor for [A]);
  v65 = BidirectionalCollection<>.joined(separator:)();

  return v65;
}

uint64_t sub_10012C9CC(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10012CA34()
{
  result = qword_100AD3CE8;
  if (!qword_100AD3CE8)
  {
    type metadata accessor for Date.FormatStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD3CE8);
  }

  return result;
}

unint64_t sub_10012CAB8()
{
  result = qword_100AD4290;
  if (!qword_100AD4290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD4290);
  }

  return result;
}

uint64_t sub_10012CB04()
{
  v1 = sub_1000F24EC(&qword_100AD4318, &qword_100942B38);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for BookAssetMetadata();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC7Journal9BookAsset_metadata))
  {

    sub_10025C5E8(v3);

    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v8, v3, v4);
      sub_1000F24EC(&qword_100AD38F0, &unk_100941FC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100940050;
      *(inited + 32) = BookAssetMetadata.title.getter();
      *(inited + 40) = v10;
      *(inited + 48) = BookAssetMetadata.author.getter();
      *(inited + 56) = v11;
      sub_10009BB20(8236, 0xE200000000000000, inited);
      v13 = v12;
      swift_setDeallocating();
      sub_1000F24EC(&unk_100AE4870, &qword_100945360);
      swift_arrayDestroy();
      (*(v5 + 8))(v8, v4);
      return v13;
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4, v6);
  }

  sub_100004F84(v3, &qword_100AD4318, &qword_100942B38);
  return 0;
}

id sub_10012CD74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_10012CDD4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC7Journal9BookAsset_metadata) = a1;

  return result;
}

id sub_10012CE10()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v40[1] = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v5 - 8);
  v41 = v40 - v6;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000F24EC(&qword_100AD4318, &qword_100942B38);
  __chkstk_darwin(v11 - 8);
  v13 = v40 - v12;
  v14 = type metadata accessor for BookAssetMetadata();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006AB394(v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100004F84(v13, &qword_100AD4318, &qword_100942B38);
    return 0;
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    static UTType.audio.getter();
    v19 = objc_allocWithZone(CSSearchableItemAttributeSet);
    isa = UTType._bridgeToObjectiveC()().super.isa;
    v18 = [v19 initWithContentType:isa];

    (*(v8 + 8))(v10, v7);
    BookAssetMetadata.title.getter();
    if (v21)
    {
      v22 = String._bridgeToObjectiveC()();
    }

    else
    {
      v22 = 0;
    }

    [v18 setDisplayName:v22];

    BookAssetMetadata.author.getter();
    if (v23)
    {
      v24 = String._bridgeToObjectiveC()();
    }

    else
    {
      v24 = 0;
    }

    v25 = v41;
    [v18 setContentDescription:v24];

    v26 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v26 && (v27 = [v26 entry]) != 0)
    {
      v28 = v27;
      JournalEntryMO.displayDate.getter();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v30 = type metadata accessor for Date();
    (*(*(v30 - 8) + 56))(v25, v29, 1, v30);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v31 = String.init(localized:table:bundle:locale:comment:)();
    v33 = v32;
    sub_1000F24EC(&unk_100AD9A60, &unk_100941D10);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_100940080;
    v35 = sub_10012C00C(v31, v33, v25);
    v37 = v36;

    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v18 setAlternateNames:v38];

    sub_100004F84(v25, &unk_100AD4790, &unk_10093B4E0);
    (*(v15 + 8))(v17, v14);
  }

  return v18;
}

uint64_t sub_10012D3DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BookAssetMetadata();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10012D420()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v1 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

id sub_10012D520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone];
  *v8 = 0;
  v8[1] = 0;
  sub_1000F24EC(&qword_100AD4380, &qword_100942BA0);
  UIViewController.ViewLoading.init()();
  v4[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style] = 0;
  type metadata accessor for JournalMembershipListViewModel();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel] = sub_100675190(a1);
  v9 = *v8;
  v10 = v8[1];
  *v8 = a2;
  v8[1] = a3;
  sub_100021E80(a2, a3);
  sub_100004DF8(v9, v10);
  v14.receiver = v4;
  v14.super_class = type metadata accessor for JournalMembershipListViewController(0);
  v11 = objc_msgSendSuper2(&v14, "initWithNibName:bundle:", 0, 0);
  [v11 setModalPresentationStyle:7];
  v12 = [v11 popoverPresentationController];

  if (v12)
  {
    [v12 setDelegate:v11];
    sub_100004DF8(a2, a3);
  }

  else
  {
    sub_100004DF8(a2, a3);
  }

  return v11;
}

uint64_t sub_10012D798()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v1;
}

id sub_10012D80C()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style))
  {
    if (*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style) == 1)
    {
      [v0 setPreferredContentSize:{380.0, 275.0}];
      result = [v0 collectionView];
      if (result)
      {
        v2 = result;
        v3 = [objc_opt_self() systemBackgroundColor];
        [v2 setBackgroundColor:v3];

        v4 = [v0 navigationItem];
        [v4 setRightBarButtonItem:0];

        v5 = [v0 navigationItem];
        [v5 setLeftBarButtonItem:0];

        sub_1000F24EC(&unk_100AD4780, &unk_100941070);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_100941830;
        v7 = objc_opt_self();
        *(v6 + 32) = [v7 flexibleSpaceItem];
        *(v6 + 40) = sub_10035FF58(v0, "cancel:");
        v8 = _UISolariumEnabled();
        v9 = 5.0;
        if (v8)
        {
          v9 = 0.0;
        }

        v10 = [v7 fixedSpaceItemOfWidth:v9];
        [v10 _setPrefersNoPlatter:1];
        *(v6 + 48) = v10;
        *(v6 + 56) = sub_10036032C(v0, "done:");
        sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v0 setToolbarItems:isa];

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_15;
    }

    [v0 setPreferredContentSize:{0.0, 0.0}];
    result = [v0 collectionView];
    if (!result)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v15 = result;
    v16 = [objc_opt_self() systemGroupedBackgroundColor];
    [v15 setBackgroundColor:v16];

    v17 = [v0 navigationItem];
    v18 = objc_allocWithZone(UIBarButtonItem);
    v19 = v0;
    v20 = [v18 initWithBarButtonSystemItem:0 target:v19 action:"done:"];
    [v17 setRightBarButtonItem:v20];

    v21 = [v19 navigationItem];
    v22 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v19 action:"cancel:"];

    [v21 setLeftBarButtonItem:v22];
    [v19 setToolbarItems:0];
  }

  else
  {
    [v0 setPreferredContentSize:{290.0, 0.0}];
    result = [v0 collectionView];
    if (!result)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v12 = result;
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor:v13];

    v14 = [v0 navigationItem];
    [v14 setRightBarButtonItem:0];

    [v0 setToolbarItems:0];
  }

LABEL_11:

  return sub_100131838();
}

id sub_10012DC7C()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  v3 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v4 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  aBlock[4] = sub_1001329A0;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029CCC;
  aBlock[3] = &unk_100A5DDE0;
  v5 = _Block_copy(aBlock);

  v6 = [v4 initWithSectionProvider:v5];
  _Block_release(v5);

  v7 = [objc_allocWithZone(UICollectionView) initWithFrame:v6 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  [v0 setCollectionView:v7];
  result = [v0 collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor:v10];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v11 = result;
  [result setAlwaysBounceVertical:0];

  result = [v0 collectionView];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = result;
  [result setAllowsSelection:0];

  result = [v0 collectionView];
  if (result)
  {
    v13 = result;
    v14 = [v0 traitCollection];
    v15 = [v14 userInterfaceIdiom];

    [v13 setAllowsFocus:v15 != 5];
    v16 = sub_10012E154();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v16;
    v17 = v0;
    static UIViewController.ViewLoading.subscript.setter();
    v18 = [v17 navigationItem];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:defaultValue:table:bundle:locale:comment:)();
    v19 = String._bridgeToObjectiveC()();

    [v18 setTitle:v19];

    v20 = objc_opt_self();
    v21 = [v20 keyCommandWithInput:UIKeyInputEscape modifierFlags:0 action:"cancel:"];
    [v17 addKeyCommand:v21];

    v22 = String._bridgeToObjectiveC()();
    v23 = [v20 keyCommandWithInput:v22 modifierFlags:0 action:"done:"];

    [v17 addKeyCommand:v23];
    return sub_10012D80C();
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_10012E154()
{
  v1 = v0;
  v45 = sub_1000F24EC(&qword_100ADE610, &unk_10094F370);
  v43 = *(v45 - 8);
  v2 = *(v43 + 64);
  __chkstk_darwin(v45);
  v44 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v42 = &v38 - v4;
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v46 = sub_1000F24EC(&unk_100AD43E0, &unk_100942DC0);
  v41 = *(v46 - 8);
  v11 = *(v41 + 64);
  __chkstk_darwin(v46);
  v40 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1000065A8(0, &qword_100AD4D40, UICollectionViewListCell_ptr);
  sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
  v15 = v14;
  UICollectionView.CellRegistration.init(handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v10;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  v47 = v7;
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  result = [v1 collectionView];
  if (result)
  {
    v18 = v40;
    v19 = v41;
    v20 = *(v41 + 16);
    v39 = v14;
    v21 = v46;
    v20(v40, v15, v46);
    v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v23 = swift_allocObject();
    (*(v19 + 32))(v23 + v22, v18, v21);
    v24 = objc_allocWithZone(sub_1000F24EC(&qword_100AD4380, &qword_100942BA0));
    v40 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v25 = v42;
    v26 = v43;
    v27 = *(v43 + 16);
    v38 = v16;
    v28 = v16;
    v29 = v45;
    v27(v42, v28, v45);
    v30 = v44;
    v27(v44, v47, v29);
    v31 = *(v26 + 80);
    v32 = (v31 + 16) & ~v31;
    v33 = (v2 + v31 + v32) & ~v31;
    v34 = swift_allocObject();
    v35 = *(v26 + 32);
    v35(v34 + v32, v25, v29);
    v35(v34 + v33, v30, v29);
    v36 = v40;
    dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();
    v37 = *(v26 + 8);
    v37(v47, v29);
    v37(v38, v29);
    (*(v19 + 8))(v39, v46);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10012E690(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for JournalMembershipListViewController(0);
  objc_msgSendSuper2(&v6, "viewWillDisappear:", a1 & 1);
  if (([v1 isMovingFromParentViewController] & 1) != 0 || (objc_msgSend(v1, "isBeingDismissed") & 1) != 0 || (v3 = objc_msgSend(v1, "navigationController")) != 0 && (v4 = v3, v5 = objc_msgSend(v3, "isBeingDismissed"), v4, v5))
  {
    if (!*(v1 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style))
    {
      sub_100675820();
    }
  }
}

id sub_10012E7B0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for JournalMembershipListViewController(0);
  result = objc_msgSendSuper2(&v4, "viewDidLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style) != 1)
  {
    result = [v0 collectionView];
    if (result)
    {
      v2 = result;
      [result layoutIfNeeded];

      result = [v0 collectionView];
      if (result)
      {
        v3 = result;
        [result contentSize];

        [v0 preferredContentSize];
        return [v0 setPreferredContentSize:?];
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_10012E8E8(void *a1, uint64_t a2)
{
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if (v10)
  {
    v5 = [*(*(v2 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel) + 24) objectWithID:v10];
    type metadata accessor for JournalMO();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v6;
      v8 = sub_100675310(v6) != 0;
      sub_10012EA18(v8, v7);
    }
  }
}

uint64_t sub_10012EA18(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = sub_1000F24EC(&qword_100AD43B8, &qword_100942D38);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = sub_100675424(v3, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v9 = v18;
  dispatch thunk of UICollectionViewDiffableDataSource.snapshot()();

  if (v8 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = _swiftEmptyArrayStorage;
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v16 = v5;
    v17 = v4;
    v5 = 0;
    v4 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v4)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_6;
      }

      if ((v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v5 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v12 = *&v8[v5 + 4];
LABEL_6:
      ++v5;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (i == v5)
      {

        v4 = v17;
        v13 = v18;
        v5 = v16;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v13 = _swiftEmptyArrayStorage;
LABEL_16:
  NSDiffableDataSourceSnapshot.reconfigureItems(_:)(v13);

  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  v14 = v18;
  dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

  return (*(v5 + 8))(v7, v4);
}

id sub_10012EE38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalMembershipListViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for JournalMembershipListViewController(uint64_t a1)
{
  result = qword_100AD4368;
  if (!qword_100AD4368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012EF60(uint64_t a1)
{
  sub_10012F010(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10012F010(uint64_t a1)
{
  if (!qword_100AD4378)
  {
    sub_1000F2A18(&qword_100AD4380, &qword_100942BA0);
    v1 = type metadata accessor for UIViewController.ViewLoading();
    if (!v2)
    {
      atomic_store(v1, &qword_100AD4378);
    }
  }
}

Swift::Int sub_10012F074(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_10012F0B4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10012F14C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  NSObject.hash(into:)();
  return Hasher._finalize()();
}

id sub_10012F1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.FooterMode();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin(v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICollectionLayoutListConfiguration();
  v55 = *(v8 - 8);
  v56 = v8;
  __chkstk_darwin(v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 fractionalWidthDimension:1.0];
  v13 = [v11 estimatedDimension:48.0];
  v14 = objc_opt_self();
  v15 = [v14 sizeWithWidthDimension:v12 heightDimension:v13];

  v16 = [objc_opt_self() itemWithLayoutSize:v15];
  v17 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100941D50;
  *(v18 + 32) = v16;
  sub_1000065A8(0, &unk_100AD8A80, NSCollectionLayoutItem_ptr);
  v58 = v16;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v20 = v17;
  v21 = v15;
  v22 = [v20 verticalGroupWithLayoutSize:v15 subitems:isa];

  v23 = [objc_opt_self() sectionWithGroup:v22];
  [v23 setContentInsetsReference:2];
  Strong = swift_unknownObjectUnownedLoadStrong();
  v25 = Strong[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style];

  if (v25)
  {
    if (v25 != 1)
    {
      (*(v50 + 104))(v7, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v51);
      UICollectionLayoutListConfiguration.init(appearance:)();
      (*(v53 + 104))(v52, enum case for UICollectionLayoutListConfiguration.FooterMode.supplementary(_:), v54);
      UICollectionLayoutListConfiguration.footerMode.setter();
      v47 = [objc_opt_self() clearColor];
      UICollectionLayoutListConfiguration.backgroundColor.setter();
      UICollectionLayoutListConfiguration.headerTopPadding.setter();
      sub_1000065A8(0, &unk_100AD4440, NSCollectionLayoutSection_ptr);
      v48 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();

      (*(v55 + 8))(v10, v56);
      return v48;
    }

    v26 = v22;
    v27 = [v11 fractionalWidthDimension:1.0];
    v28 = [v11 estimatedDimension:44.0];
    v29 = [v14 sizeWithWidthDimension:v27 heightDimension:v28];

    v30 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v29 elementKind:UICollectionElementKindSectionFooter alignment:4];
    v31 = v30;
    v32 = [v23 boundarySupplementaryItems];
    sub_1000065A8(0, &unk_100ADE680, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v33 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = v33;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v34 = Array._bridgeToObjectiveC()().super.isa;

    [v23 setBoundarySupplementaryItems:v34];

    [v23 setContentInsets:{0.0, 10.0, 0.0, 10.0}];
  }

  else
  {
    v26 = v22;
    v35 = [v11 fractionalWidthDimension:1.0];
    v36 = [v11 estimatedDimension:44.0];
    v37 = [v14 sizeWithWidthDimension:v35 heightDimension:v36];

    v38 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v37 elementKind:UICollectionElementKindSectionHeader alignment:1 absoluteOffset:{0.0, 10.0}];
    v31 = v38;
    v39 = [v23 boundarySupplementaryItems];
    sub_1000065A8(0, &unk_100ADE680, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v40 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v59 = v40;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v41 = Array._bridgeToObjectiveC()().super.isa;

    [v23 setBoundarySupplementaryItems:v41];

    v42 = swift_unknownObjectUnownedLoadStrong();
    v43 = [v42 traitCollection];

    v44 = [v43 userInterfaceIdiom];
    if (v44 == 5)
    {
      v45 = 16.0;
    }

    else
    {
      v45 = 0.0;
    }

    if (v44 == 5)
    {
      v46 = 16.0;
    }

    else
    {
      v46 = 10.0;
    }

    [v23 setContentInsets:{10.0, v45, 8.0, v46}];
  }

  return v23;
}

void sub_10012FA0C(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v94 = a1;
  v5 = sub_1000F24EC(&unk_100ADFBE0, &unk_1009438A0);
  __chkstk_darwin(v5 - 8);
  v90 = &v81[-v6];
  v7 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v92 = *(v7 - 8);
  v93 = v7;
  __chkstk_darwin(v7);
  v91 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UICellAccessory.Placement();
  v87 = *(v9 - 8);
  v88 = v9;
  __chkstk_darwin(v9);
  v86 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v89 = &v81[-v12];
  v13 = sub_1000F24EC(&unk_100AD4400, &unk_100942DD0);
  __chkstk_darwin(v13 - 8);
  v15 = &v81[-v14];
  v16 = type metadata accessor for JournalSidebarViewModel(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v19 = &v81[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v95 = &v81[-v21];
  v22 = *a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v24 = *&Strong[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel];

  v96 = [*(v24 + 24) objectWithID:v22];

  type metadata accessor for JournalMO();
  v25 = swift_dynamicCastClass();
  if (v25)
  {
    v26 = v25;
    v27 = v96;
    sub_1005208D8(v26, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_100004F84(v15, &unk_100AD4400, &unk_100942DD0);
    }

    else
    {
      v29 = v15;
      v30 = v95;
      sub_100132B1C(v29, v95);
      v31 = swift_unknownObjectUnownedLoadStrong();
      v32 = v31[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style];

      sub_100132B80(v30, v19);
      v33 = (*(v17 + 80) + 16) & ~*(v17 + 80);
      v34 = v33 + v18;
      v35 = swift_allocObject();
      sub_100132B1C(v19, v35 + v33);
      *(v35 + v34) = v32;
      v36 = v94;
      UICollectionViewCell.configurationUpdateHandler.setter();
      v37 = swift_unknownObjectUnownedLoadStrong();

      v38 = sub_100675310(v26);

      if (v38)
      {
        v39 = 1;
      }

      else
      {
        v40 = swift_unknownObjectUnownedLoadStrong();

        sub_100675264();
        v39 = v41;
      }

      [v36 setUserInteractionEnabled:v39 & 1];
      v42 = [v36 traitCollection];
      v43 = [v42 userInterfaceIdiom];

      sub_1000F24EC(&unk_100AD4410, &unk_100942DE0);
      v44 = *(type metadata accessor for UICellAccessory() - 8);
      v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_100940080;
      if (v43 == 5)
      {
        v82 = v38;
        v47 = v38 == 0;
        v48 = swift_allocObject();
        v49 = swift_unknownObjectUnownedLoadStrong();
        swift_unknownObjectWeakInit();

        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        *(v50 + 24) = v26;
        v85 = v48;
        v51 = *(sub_1000F24EC(&qword_100AD4E00, &unk_100951310) + 48);
        v96 = v27;
        v52 = v89;
        v53 = &v89[v51];
        v54 = enum case for UICellAccessory.DisplayedState.always(_:);
        v55 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v55 - 8) + 104))(v52, v54, v55);
        *v53 = variable initialization expression of RecentSearch.tokens;
        v53[1] = 0;
        v83 = v45;
        v84 = v46;
        v56 = v87;
        v57 = v88;
        (*(v87 + 104))(v52, enum case for UICellAccessory.Placement.trailing(_:), v88);
        v58 = v96;

        sub_10014A450(v36);
        v60 = v59;
        [v59 setPreferredStyle:1];
        [v60 setOn:v47];
        [v60 setEnabled:v39 & 1];
        *(v60 + OBJC_IVAR____TtCE7JournalV5UIKit15UICellAccessoryP33_85A222117EA5D3E059C9D74C1729BE0616MixedStateSwitch_isMixed) = v82 == 2;
        sub_10051B784(v61);
        sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
        String._bridgeToObjectiveC()();
        v62 = swift_allocObject();
        *(v62 + 16) = sub_100132C84;
        *(v62 + 24) = v50;

        v63 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v60 addAction:v63 forControlEvents:0x2000];
        (*(v56 + 16))(v86, v52, v57);
        v64 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v64 - 8) + 56))(v90, 1, 1, v64);
        v65 = v60;
        v66 = v91;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        static UICellAccessory.customView(configuration:)();

        (*(v92 + 8))(v66, v93);
        v67 = v52;
        v27 = v96;
        (*(v56 + 8))(v67, v57);
      }

      else
      {
        sub_10014A468(v36);
        v69 = v68;
        v70 = String._bridgeToObjectiveC()();
        v71 = [objc_opt_self() systemImageNamed:v70];

        [v69 setImage:v71];
        if (v39)
        {
          v72 = 0;
        }

        else
        {
          v72 = [objc_opt_self() quaternaryLabelColor];
        }

        [v69 setTintColor:v72];

        v73 = sub_1000F24EC(&qword_100AD4E00, &unk_100951310);
        v74 = v89;
        v75 = &v89[*(v73 + 48)];
        v76 = enum case for UICellAccessory.DisplayedState.always(_:);
        v77 = type metadata accessor for UICellAccessory.DisplayedState();
        (*(*(v77 - 8) + 104))(v74, v76, v77);
        *v75 = variable initialization expression of RecentSearch.tokens;
        v75[1] = 0;
        (*(v87 + 104))(v74, enum case for UICellAccessory.Placement.trailing(_:), v88);
        v78 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v78 - 8) + 56))(v90, 1, 1, v78);
        v79 = v69;
        v80 = v91;
        UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
        static UICellAccessory.customView(configuration:)();

        (*(v92 + 8))(v80, v93);
      }

      UICollectionViewListCell.accessories.setter();

      sub_1000292C4(v95, type metadata accessor for JournalSidebarViewModel);
    }
  }

  else
  {
    v28 = v96;
  }
}

uint64_t sub_100130520(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v76 = a4;
  v71 = a3;
  v85 = a1;
  v5 = sub_1000F24EC(&qword_100AF16C0, &qword_100942DF0);
  __chkstk_darwin(v5 - 8);
  v84 = &v69 - v6;
  v7 = type metadata accessor for UIBackgroundConfiguration();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Font.TextStyle();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MergeableJournalAttributes.Icon();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (&v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for JournalMembershipBadge(0);
  __chkstk_darwin(v72);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UIListContentConfiguration();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v69 - v21;
  static UIListContentConfiguration.cell()();
  v23 = type metadata accessor for UICellConfigurationState();
  v89 = v23;
  v90 = &protocol witness table for UICellConfigurationState;
  v24 = sub_10001A770(v88);
  v25 = *(*(v23 - 8) + 16);
  v86 = a2;
  v25(v24, a2, v23);
  UIListContentConfiguration.updated(for:)();
  v75 = v17;
  v26 = *(v17 + 8);
  v80 = v16;
  v77 = v26;
  v78 = v17 + 8;
  v26(v19, v16);
  sub_10000BA7C(v88);
  v27 = v71;

  UIListContentConfiguration.text.setter();
  v69 = objc_opt_self();
  v28 = [v69 labelColor];
  v79 = v22;
  v29 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v29(v88, 0);
  v30 = *(v27 + 2);
  v31 = sub_1005215F4();
  v33 = v32;
  v34 = type metadata accessor for JournalSidebarViewModel(0);
  (*(v11 + 16))(v13, &v27[*(v34 + 28)], v10);
  if ((*(v11 + 88))(v13, v10) == enum case for MergeableJournalAttributes.Icon.emoji(_:))
  {
    (*(v11 + 96))(v13, v10);
    v35 = *v13;
    v36 = v13[1];
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    v35 = 0;
    v36 = 0;
  }

  v37 = UICellConfigurationState.traitCollection.getter();
  v38 = [v37 userInterfaceIdiom];

  if (v38 == 5)
  {
    v39 = 1;
  }

  else
  {
    v39 = 2;
  }

  *v15 = v30;
  *(v15 + 1) = v31;
  *(v15 + 2) = v33;
  *(v15 + 3) = v35;
  *(v15 + 4) = v36;
  v15[40] = v39;
  v88[0] = 0x4030000000000000;
  v40 = enum case for Font.TextStyle.footnote(_:);
  v41 = *(v73 + 104);
  v42 = v70;
  v43 = v74;
  v41(v70, enum case for Font.TextStyle.footnote(_:), v74);
  sub_10009BA68();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v88[0] = 0x4038000000000000;
  v41(v42, v40, v43);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v88[0] = 0x4040000000000000;
  v41(v42, v40, v43);
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v44 = UICellConfigurationState.traitCollection.getter();
  sub_1003AC4EC(v44);

  sub_1000292C4(v15, type metadata accessor for JournalMembershipBadge);
  v45 = v79;
  UIListContentConfiguration.image.setter();
  v46 = UIListContentConfiguration.imageProperties.modify();
  v47 = UIListContentConfiguration.ImageProperties.reservedLayoutSize.modify();
  *(v48 + 8) = 0x4038000000000000;
  v47(v87, 0);
  v46(v88, 0);
  v49 = v76;
  if (v76)
  {
    v51 = v80;
    v50 = v81;
    if (v76 == 1)
    {
      v52 = UIListContentConfiguration.directionalLayoutMargins.modify();
      *v53 = 0x4010000000000000;
      v52(v88, 0);
      v54 = UIListContentConfiguration.directionalLayoutMargins.modify();
      *(v55 + 16) = 0x4010000000000000;
      v54(v88, 0);
    }
  }

  else
  {
    v56 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *v57 = 0x4020000000000000;
    v56(v88, 0);
    v58 = UIListContentConfiguration.directionalLayoutMargins.modify();
    *(v59 + 16) = 0x4020000000000000;
    v58(v88, 0);
    v51 = v80;
    v50 = v81;
  }

  v89 = v51;
  v90 = &protocol witness table for UIListContentConfiguration;
  v60 = sub_10001A770(v88);
  (*(v75 + 16))(v60, v45, v51);
  UICollectionViewCell.contentConfiguration.setter();
  if (v49)
  {
    v61 = v84;
    if (v49 == 1)
    {
      static UIBackgroundConfiguration.clear()();
    }

    else
    {
      static UIBackgroundConfiguration.listCell()();
    }

    (*(v82 + 56))(v61, 0, 1, v83);
    UICollectionViewCell.backgroundConfiguration.setter();
  }

  else
  {
    static UIBackgroundConfiguration.clear()();
    UIBackgroundConfiguration.cornerRadius.setter();
    UIBackgroundConfiguration.backgroundInsets.setter();
    if (UICellConfigurationState.isHighlighted.getter() & 1) != 0 || (UICellConfigurationState.isSelected.getter() & 1) != 0 || (UICellConfigurationState.isFocused.getter())
    {
      v62 = [objc_opt_self() effectWithStyle:8];
      v63 = [objc_opt_self() effectForBlurEffect:v62 style:6];

      UIBackgroundConfiguration.visualEffect.setter();
      v64 = [v69 whiteColor];
      UIBackgroundConfiguration.backgroundColor.setter();
    }

    v66 = v82;
    v65 = v83;
    v67 = v84;
    (*(v82 + 16))(v84, v50, v83);
    (*(v66 + 56))(v67, 0, 1, v65);
    UICollectionViewCell.backgroundConfiguration.setter();
    (*(v66 + 8))(v50, v65);
  }

  return v77(v45, v51);
}

void sub_100130E84(char a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_10012EA18(a1 & 1, a3);
  }
}

uint64_t sub_100130EF4(uint64_t a1)
{
  v25 = a1;
  v24 = type metadata accessor for UIListContentConfiguration.TextProperties.TextTransform();
  v1 = *(v24 - 8);
  __chkstk_darwin(v24);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for UIListContentConfiguration.TextProperties.TextAlignment();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.header()();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v12 = [objc_opt_self() labelColor];
  v13 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.color.setter();
  v13(v26, 0);
  (*(v3 + 104))(v5, enum case for UIListContentConfiguration.TextProperties.TextAlignment.center(_:), v22);
  v14 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.alignment.setter();
  v14(v26, 0);
  (*(v1 + 104))(v23, enum case for UIListContentConfiguration.TextProperties.TextTransform.none(_:), v24);
  v15 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.transform.setter();
  v15(v26, 0);
  v16 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *v17 = 0x4028000000000000;
  v16(v26, 0);
  v18 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v19 + 16) = 0x4028000000000000;
  v18(v26, 0);
  v26[3] = v8;
  v26[4] = &protocol witness table for UIListContentConfiguration;
  v20 = sub_10001A770(v26);
  (*(v9 + 16))(v20, v11, v8);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100131358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for UIListContentConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIListContentConfiguration.footer()();
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v12._object = 0x80000001008E03A0;
  v12._countAndFlagsBits = 0xD00000000000002CLL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v12);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = *&Strong[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel];

  v15 = *(v14 + 16);
  if (v15 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22[0] = v16;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v17._countAndFlagsBits = 0x656972746E652029;
  v17._object = 0xEA00000000002E73;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v17);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  UIListContentConfiguration.text.setter();
  v18 = UIListContentConfiguration.directionalLayoutMargins.modify();
  *(v19 + 16) = 0x4032000000000000;
  v18(v22, 0);
  v22[3] = v8;
  v22[4] = &protocol witness table for UIListContentConfiguration;
  v20 = sub_10001A770(v22);
  (*(v9 + 16))(v20, v11, v8);
  UICollectionViewCell.contentConfiguration.setter();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10013167C(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v4 = *a3;
  sub_1000065A8(0, &qword_100AD4D40, UICollectionViewListCell_ptr);
  sub_1000065A8(0, &qword_100AD43F0, NSManagedObjectID_ptr);
  v5 = v4;
  v6 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v6;
}

uint64_t sub_10013172C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {
    goto LABEL_12;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    goto LABEL_13;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v11 == a3)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  sub_1000065A8(0, &qword_100AD4D40, UICollectionViewListCell_ptr);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

uint64_t sub_100131838()
{
  v1 = sub_1000F24EC(&qword_100AD43B8, &qword_100942D38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - v3;
  sub_1001328F0();
  sub_100132944();
  NSDiffableDataSourceSnapshot.init()();
  NSDiffableDataSourceSnapshot.appendSections(_:)(&off_100A563A0);
  v5 = *(*(v0 + OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_viewModel) + 32);
  swift_getKeyPath();
  v16 = v5;
  sub_100095244();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v5 + 32))
  {
    sub_100772990();
  }

  swift_getKeyPath();
  v16 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 32))
  {
    v6 = *(v5 + 32);
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_16:

LABEL_17:
    LOBYTE(v16) = 1;
    NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    v13 = v16;
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    return (*(v2 + 8))(v4, v1);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_8:
  v16 = _swiftEmptyArrayStorage;

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v14[1] = v0;
    v15 = v2;
    v9 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      ++v9;
      v12 = [v10 objectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v7 != v9);

    v2 = v15;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

void sub_100131B80()
{
  v1 = v0;
  v2 = [v0 presentingViewController];
  if (v2)
  {
    v8 = v2;
    v3 = [v2 presentedViewController];
    if (v3 && (v4 = v3, v5 = [v3 isBeingDismissed], v4, !v5))
    {
      sub_100675820();
      if (*&v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone])
      {
        v6 = *&v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone + 8];
        aBlock[4] = *&v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_onDone];
        aBlock[5] = v6;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100006C7C;
        aBlock[3] = &unk_100A5DD90;
        v7 = _Block_copy(aBlock);
      }

      else
      {
        v7 = 0;
      }

      [v8 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }

    else
    {
    }
  }
}

void sub_100131D04()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v5 = v1;
    v2 = [v1 presentedViewController];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isBeingDismissed];

      if ((v4 & 1) == 0)
      {
        [v5 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

uint64_t sub_100131DD0(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_100004F84(v9, &qword_100AD13D0, &unk_100942DB0);
}

void sub_100131F78(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a1 containerTraitCollection];
    v7 = [v6 horizontalSizeClass];

    if (v7 == 1)
    {
      swift_beginAccess();
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        v9 = v8;
        [v8 setPrefersGrabberVisible:1];
      }

      v10 = v5;
      [v10 preferredContentSize];
      v11 = [v10 view];

      if (v11)
      {
        [v11 safeAreaInsets];

        [a1 maximumDetentValue];
      }

      else
      {
        __break(1u);
      }

      return;
    }
  }

  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v12 setPrefersGrabberVisible:0];
  }
}

id sub_100132198(void *a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return 0;
  }

  v4 = [a1 presentedViewController];
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    v6 = [a1 presentedViewController];
    v7 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v6];

    v8 = [v2 traitCollection];
    v9 = [v8 userInterfaceIdiom];

    [v7 setToolbarHidden:v9 != 5];
    return v7;
  }

  return result;
}

uint64_t sub_10013238C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1001323D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100132434()
{
  result = qword_100AD4388;
  if (!qword_100AD4388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4388);
  }

  return result;
}

unint64_t sub_10013248C()
{
  result = qword_100AD4390;
  if (!qword_100AD4390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4390);
  }

  return result;
}

unint64_t sub_1001324E4()
{
  result = qword_100AD4398;
  if (!qword_100AD4398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD4398);
  }

  return result;
}

void sub_100132538(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *a2 = v3;
}

uint64_t sub_1001325B8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_100132630(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100941D60;
    sub_1000065A8(0, &qword_100AD85C0, UISheetPresentationControllerDetent_ptr);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = a1;

    v9 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

    *(v4 + 32) = v9;
    *(v4 + 40) = [objc_opt_self() largeDetent];
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setDetents:isa];
  }
}

id sub_10013282C(uint64_t a1)
{
  v2 = 0;
  if (a1 != -1 && a1 != 7)
  {
    v3 = [v1 traitCollection];
    v4 = [v3 userInterfaceIdiom];

    if (v4 == 5)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  v5 = OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style;
  v6 = v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style];
  v1[OBJC_IVAR____TtC7Journal35JournalMembershipListViewController_style] = v2;
  result = [v1 isViewLoaded];
  if (result && v1[v5] != v6)
  {

    return sub_10012D80C();
  }

  return result;
}

unint64_t sub_1001328F0()
{
  result = qword_100AD43C0;
  if (!qword_100AD43C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD43C0);
  }

  return result;
}

unint64_t sub_100132944()
{
  result = qword_100AD43C8;
  if (!qword_100AD43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD43C8);
  }

  return result;
}

uint64_t sub_1001329B8(uint64_t a1, uint64_t a2, id *a3)
{
  v7 = *(sub_1000F24EC(&unk_100AD43E0, &unk_100942DC0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10013167C(a1, a2, a3, v8);
}

uint64_t sub_100132A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(sub_1000F24EC(&qword_100ADE610, &unk_10094F370) - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 16) & ~v10;
  v12 = v4 + ((*(v9 + 64) + v10 + v11) & ~v10);

  return sub_10013172C(a1, a2, a3, a4, v4 + v11, v12);
}

uint64_t sub_100132B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalSidebarViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132B80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalSidebarViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100132BE4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for JournalSidebarViewModel(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));
  v7 = v6[*(v5 + 64)];

  return sub_100130520(a1, a2, v6, v7);
}

void *sub_100132C9C()
{
  v1 = [v0 length];
  sub_1000F24EC(&qword_100AD44C0, &qword_100942E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940080;
  *(inited + 32) = NSDocumentTypeDocumentAttribute;
  type metadata accessor for DocumentType(0);
  *(inited + 64) = v3;
  *(inited + 40) = NSHTMLTextDocumentType;
  v4 = NSDocumentTypeDocumentAttribute;
  v5 = NSHTMLTextDocumentType;
  sub_100363504(inited);
  swift_setDeallocating();
  sub_100004F84(inited + 32, &unk_100ADFF20, &qword_100942E08);
  type metadata accessor for DocumentAttributeKey(0);
  sub_1000AA710(&qword_100AD1B98, type metadata accessor for DocumentAttributeKey, &unk_10093F700);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v21[0] = 0;
  v7 = [v0 dataFromRange:0 documentAttributes:v1 error:{isa, v21}];

  v8 = v21[0];
  if (v7)
  {
    v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    sub_100049ED8(v9, v11);
    v12 = sub_1001336A4(v9, v11);
    if (v13)
    {
      v14 = v12;
      sub_1000340DC(v9, v11);
LABEL_11:
      sub_1000340DC(v9, v11);
      return v14;
    }

    v19 = v9;
    v20 = v11;
    sub_100049ED8(v9, v11);
    sub_1000F24EC(&qword_100AD44C8, &qword_100942E10);
    if (swift_dynamicCast())
    {
      sub_100018480(v17, v21);
      sub_10000CA14(v21, v22);
      HasContiguous = dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter();
      sub_1000340DC(v9, v11);
      if (HasContiguous)
      {
        sub_10000CA14(v21, v22);
        dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
        sub_1000340DC(v9, v11);
        v14 = *&v17[0];
        sub_10000BA7C(v21);
        return v14;
      }

      sub_10000BA7C(v21);
    }

    else
    {
      sub_1000340DC(v9, v11);
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_100004F84(v17, &qword_100AD44D0, &qword_100942E18);
    }

    v14 = sub_100133480(v9, v11);
    goto LABEL_11;
  }

  v14 = v8;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  return v14;
}

uint64_t sub_100133014(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  if (*(result + 24))
  {
    *a5 = 1;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_10013302C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = v40 - v14;
  if (a2 < 0)
  {
    goto LABEL_19;
  }

  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  v16 = v12;
  if ([v3 length] < a2 + a3)
  {
    goto LABEL_19;
  }

  v42 = 0;
  v43 = 0;
  if ([v3 attribute:NSParagraphAttachmentAttributeName atIndex:a2 effectiveRange:&v42])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46[0] = v44;
  v46[1] = v45;
  if (!*(&v45 + 1))
  {
    sub_100004F84(v46, &qword_100AD13D0, &unk_100942DB0);
    goto LABEL_19;
  }

  sub_1000065A8(0, &qword_100ADC5F0, NSTextParagraphAnchoredAttachment_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v23 = 0;
    return v23 & 1;
  }

  v17 = v41;
  if (v42 != a2 || v43 != a3)
  {

    goto LABEL_19;
  }

  v18 = [v41 textAttachment];
  swift_getObjectType();
  if (!swift_conformsToProtocol2() || !v18)
  {
    v19 = v18;
LABEL_23:

    sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
    v23 = static NSObject.== infix(_:_:)();

    return v23 & 1;
  }

  v19 = [a1 textAttachment];
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  if (!v20 || !v19)
  {

    goto LABEL_23;
  }

  v40[2] = v20;
  sub_1000065A8(0, &unk_100AD43A0, NSObject_ptr);
  v40[1] = swift_getObjectType();
  v21 = v18;
  v22 = static NSObject.== infix(_:_:)();

  if ((v22 & 1) == 0)
  {
    v40[0] = swift_getObjectType();
    dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
    dispatch thunk of AssetTextAttachmentProtocol.assetID.getter();
    v25 = static UUID.== infix(_:_:)();
    v26 = *(v8 + 8);
    v26(v10, v16);
    v26(v15, v16);
    if (v25)
    {
      v27 = dispatch thunk of AssetTextAttachmentProtocol.anchorAlignment.getter();
      v29 = v28;
      v30 = dispatch thunk of AssetTextAttachmentProtocol.anchorAlignment.getter();
      if (v29)
      {
        if ((v31 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if ((v31 & 1) != 0 || v27 != v30)
      {
        goto LABEL_32;
      }

      dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
      v33 = v32;
      v35 = v34;
      dispatch thunk of AssetTextAttachmentProtocol.preferredRatioSize.getter();
      v37 = v36;
      v39 = v38;

      if (v33 == v37)
      {
        v23 = v35 == v39;
        return v23 & 1;
      }

      goto LABEL_19;
    }

LABEL_32:

    goto LABEL_19;
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100133480(uint64_t a1, unint64_t a2)
{
  sub_100049ED8(a1, a2);
  sub_100133528(a1, a2);
  v4 = static String._fromUTF8Repairing(_:)();

  return v4;
}

uint64_t sub_1001334EC@<X0>(uint64_t *a3@<X8>)
{
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v5;
  return result;
}

void sub_100133528(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_12:
      sub_1000340DC(a1, a2);
      return;
    }

    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      if (v9)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v8)
    {
      goto LABEL_10;
    }

    v9 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      sub_100008524(v9, 0);
      v12 = Data._copyContents(initializing:)();
      v13 = sub_1000340DC(a1, a2);
      v14 = *(v5 + 8);
      v5 += 8;
      v14(v7, v4, v13);
      if (v12 == v9)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v15 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v9 = v15;
      if (!v15)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1001336A4(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return static String._fromUTF8Repairing(_:)();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = __DataStorage._bytes.getter();
  if (a1)
  {
    a1 = __DataStorage._offset.getter();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  __DataStorage._length.getter();
  return static String._fromUTF8Repairing(_:)();
}

uint64_t sub_100133850(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&unk_100AD9210, &qword_10094C510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_100133964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JournalDividerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1001339A8()
{
  v0 = [objc_opt_self() configurationWithPointSize:7 weight:1 scale:12.0];
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  qword_100B2F390 = v2;
}

id sub_100133A64(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_xImageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView;
  v12 = [objc_opt_self() effectWithStyle:8];
  v13 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v12];

  *&v4[v11] = v13;
  v14 = &v4[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion];
  *v14 = DebugData.init(name:);
  v14[1] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CanvasAssetDeleteView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_100133BF8();

  return v15;
}

void sub_100133BF8()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter];
  [v0 addSubview:v1];
  [v1 insertSubview:*&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView] atIndex:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [v1 widthAnchor];
  v3 = [v2 constraintEqualToConstant:20.0];

  [v3 setActive:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 heightAnchor];
  v5 = [v1 widthAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 multiplier:1.0];

  [v6 setActive:1];
  v7 = [v1 superview];
  if (v7)
  {
    v8 = v7;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [v1 topAnchor];
    v10 = [v8 topAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];

    [v11 setConstant:6.0];
    [v11 setActive:1];
  }

  v12 = [v1 superview];
  if (v12)
  {
    v13 = v12;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [v1 trailingAnchor];
    v15 = [v13 trailingAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];

    [v16 setConstant:-6.0];
    [v16 setActive:1];
  }

  v17 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_xImageView];
  [v1 bounds];
  [v17 setFrame:?];
  if (qword_100ACF958 != -1)
  {
    swift_once();
  }

  [v17 setImage:qword_100B2F390];
  if (qword_100ACF960 != -1)
  {
    swift_once();
  }

  [v17 setTintColor:qword_100B2F398];
  [v1 addSubview:v17];
  v18 = [v17 superview];
  if (v18)
  {
    v19 = v18;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [v19 centerXAnchor];
    v21 = [v17 centerXAnchor];
    v22 = [v21 constraintEqualToAnchor:v20];

    [v22 setConstant:0.0];
    [v22 setActive:1];
  }

  v23 = [v17 superview];
  if (v23)
  {
    v24 = v23;
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v17 centerYAnchor];
    v26 = [v24 centerYAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:0.0];
    [v27 setActive:1];
  }

  v32 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"tapAction:"];
  [v0 addGestureRecognizer:?];
  if (qword_100AD07E0 != -1)
  {
    swift_once();
  }

  v28 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityLabel:v28];

  v29 = UIAccessibilityTraitButton;
  v30 = [v0 accessibilityTraits];
  if ((v29 & ~v30) != 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = 0;
  }

  [v0 setAccessibilityTraits:v31 | v30];
}

id sub_100134204()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CanvasAssetDeleteView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter];
  v2 = [v1 layer];
  [v1 frame];
  [v2 setCornerRadius:v3 * 0.5];

  v4 = [v1 layer];
  [v4 setMasksToBounds:1];

  v5 = *&v0[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView];
  [v1 bounds];
  return [v5 setFrame:?];
}

void sub_100134488()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  v3 = [v2 fontDescriptor];
  v4 = [v2 fontDescriptor];
  v5 = [v4 symbolicTraits];

  v6 = [v3 fontDescriptorWithSymbolicTraits:v5 | 2];
  if (v6)
  {
    v7 = [v0 fontWithDescriptor:v6 size:0.0];

    v2 = v7;
  }

  qword_100B2F3A0 = v2;
}

void sub_1001345A4()
{
  if (qword_100ACF968 != -1)
  {
    swift_once();
  }

  v0 = qword_100B2F3A0;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_100B2F3A8 = v3;
}

void sub_100134640()
{
  v0 = [objc_opt_self() tertiarySystemBackgroundColor];
  v1 = [v0 colorWithAlphaComponent:0.5];

  qword_100B2F3B0 = v1;
}

void sub_100134808()
{
  v0 = type metadata accessor for JournalFeatureFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = enum case for JournalFeatureFlags.portraitAssetGrid(_:);
  v62 = *(v1 + 104);
  v62(v3, enum case for JournalFeatureFlags.portraitAssetGrid(_:), v0);
  v6 = JournalFeatureFlags.isEnabled.getter();
  v7 = *(v1 + 8);
  v7(v3, v0);
  v8 = objc_opt_self();
  if (v6)
  {
    v9 = [v8 effectWithStyle:7];
  }

  else
  {
    v9 = [v8 _effectWithBlurRadius:10.0 scale:1.0];
  }

  v10 = v9;
  [v4 setEffect:v10];

  v11 = objc_opt_self();
  v12 = v4;
  v13 = [v11 blackColor];
  v14 = [v13 colorWithAlphaComponent:0.2];

  [v12 setBackgroundColor:v14];
  v15 = v64;
  [v64 addSubview:v12];
  v63 = v12;
  sub_100013178(0.0);

  v16 = [objc_allocWithZone(UIStackView) init];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 setAxis:0];
  [v16 setDistribution:2];
  [v16 setAlignment:3];
  [v15 addSubview:v16];
  v62(v3, v5, v0);
  v17 = JournalFeatureFlags.isEnabled.getter();
  v7(v3, v0);
  v18 = [v16 superview];
  v19 = v18;
  if (v17)
  {
    if (v18)
    {
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v20 = [v16 leadingAnchor];
      v21 = [v19 leadingAnchor];
      v22 = [v20 constraintEqualToAnchor:v21];

      [v22 setConstant:6.0];
      [v22 setActive:1];
    }

    v23 = [v16 superview];
    if (v23)
    {
      v24 = v23;
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v25 = [v16 trailingAnchor];
      v26 = [v24 trailingAnchor];
      v27 = [v25 constraintEqualToAnchor:v26];

      [v27 setConstant:-8.0];
      [v27 setActive:1];
    }

    v28 = [v16 superview];
    if (v28)
    {
      v29 = v28;
      [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
      v30 = [v16 topAnchor];
      v31 = [v29 topAnchor];
      v32 = [v30 constraintEqualToAnchor:v31];

      [v32 setConstant:0.0];
      [v32 setActive:1];
    }

    v33 = sub_100028DA0(0, 1, 0.0);
LABEL_27:

    goto LABEL_28;
  }

  if (v18)
  {
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = [v19 centerXAnchor];
    v35 = [v16 centerXAnchor];
    v36 = [v35 constraintEqualToAnchor:v34];

    [v36 setConstant:0.0];
    if (v36)
    {
      [v36 setActive:1];
    }
  }

  v37 = [v16 superview];
  if (v37)
  {
    v38 = v37;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v39 = [v16 centerYAnchor];
    v40 = [v38 centerYAnchor];
    v41 = [v39 constraintEqualToAnchor:v40];

    [v41 setConstant:0.0];
    if (v41)
    {
      [v41 setActive:1];
    }
  }

  v42 = [v16 superview];
  if (v42)
  {
    v43 = v42;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v44 = [v16 leadingAnchor];
    v45 = [v43 leadingAnchor];
    v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];

    [v46 setConstant:6.0];
    if (v46)
    {
      [v46 setActive:1];
    }
  }

  v47 = [v16 superview];
  if (v47)
  {
    v33 = v47;
    [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
    v48 = [v16 trailingAnchor];
    v49 = [v33 trailingAnchor];
    v50 = [v48 constraintLessThanOrEqualToAnchor:v49];

    [v50 setConstant:6.0];
    if (v50)
    {
      [v50 setActive:1];
    }

    goto LABEL_27;
  }

LABEL_28:
  [v16 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

  if (qword_100ACF970 != -1)
  {
    swift_once();
  }

  v51 = qword_100B2F3A8;
  v52 = String._bridgeToObjectiveC()();
  v53 = [objc_opt_self() systemImageNamed:v52 withConfiguration:v51];

  if (v53)
  {
    if (qword_100ACF978 != -1)
    {
      swift_once();
    }

    v54 = [v53 imageWithTintColor:qword_100B2F3B0];
  }

  else
  {
    v54 = 0;
  }

  v55 = [objc_allocWithZone(UIImageView) initWithImage:v54];
  [v55 setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
  if (qword_100ACF978 != -1)
  {
    swift_once();
  }

  [v55 setTintColor:qword_100B2F3B0];
  [v55 setOverrideUserInterfaceStyle:1];
  [v16 addArrangedSubview:v55];
  v56 = [objc_allocWithZone(UILabel) init];
  v57 = *&v64[OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel];
  *&v64[OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel] = v56;
  v58 = v56;

  if (v58)
  {
    if (qword_100ACF980 != -1)
    {
      swift_once();
    }

    [v58 setTextColor:qword_100B2F3B8];
    if (qword_100ACF968 != -1)
    {
      swift_once();
    }

    [v58 setFont:qword_100B2F3A0];
    [v58 setPreferredVibrancy:1];
    [v58 setAdjustsFontForContentSizeCategory:1];
    [v58 setAdjustsFontSizeToFitWidth:1];
    [v16 addArrangedSubview:v58];
    v59 = [objc_allocWithZone(UIButton) init];
    v60 = v64;
    [v59 addTarget:v64 action:"tapActionWithSender:" forControlEvents:64];
    [v60 addSubview:v59];
    sub_100013178(0.0);
  }

  else
  {
  }
}

void sub_100135358(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *&a1[*a4];
  v6 = a1;

  v4(v5);
}

double sub_1001353BC(uint64_t a1)
{
  v3 = [objc_opt_self() mainBundle];
  v12._object = 0x80000001008E05A0;
  v4._countAndFlagsBits = 25637;
  v4._object = 0xE200000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000018;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v12);

  sub_1000F24EC(&unk_100AD5B10, &qword_100940130);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  *(v6 + 56) = &type metadata for Int;
  *(v6 + 64) = &protocol witness table for Int;
  *(v6 + 32) = a1;
  static String.localizedStringWithFormat(_:_:)();

  v7 = *(v1 + OBJC_IVAR____TtC7Journal23CanvasAssetOverflowView_overflowCountLabel);
  if (v7)
  {
    v8 = v7;
    v10 = String._bridgeToObjectiveC()();

    [v8 setText:v10];
  }

  else
  {
  }

  return result;
}

id sub_100135570(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10013561C()
{
  v1 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_circularPlatter;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_xImageView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_blurView;
  v4 = [objc_opt_self() effectWithStyle:8];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  *(v0 + v3) = v5;
  v6 = (v0 + OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion);
  *v6 = DebugData.init(name:);
  v6[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10013573C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer;
  *&v4[v9] = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer;
  *&v4[v10] = [objc_allocWithZone(CAShapeLayer) init];
  v11 = OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView;
  *&v4[v11] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v12 = OBJC_IVAR____TtC7Journal18ResizingHandleView_lightBorderColor;
  v13 = objc_opt_self();
  *&v4[v12] = [v13 whiteColor];
  v14 = OBJC_IVAR____TtC7Journal18ResizingHandleView_darkBorderColor;
  *&v4[v14] = [v13 blackColor];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for ResizingHandleView();
  v15 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  sub_100135A00();

  return v15;
}

id sub_1001358A8(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer;
  *&v1[v3] = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer;
  *&v1[v4] = [objc_allocWithZone(CAShapeLayer) init];
  v5 = OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView;
  *&v1[v5] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v6 = OBJC_IVAR____TtC7Journal18ResizingHandleView_lightBorderColor;
  v7 = objc_opt_self();
  *&v1[v6] = [v7 whiteColor];
  v8 = OBJC_IVAR____TtC7Journal18ResizingHandleView_darkBorderColor;
  *&v1[v8] = [v7 blackColor];
  v13.receiver = v1;
  v13.super_class = type metadata accessor for ResizingHandleView();
  v9 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    sub_100135A00();
  }

  return v10;
}

double sub_100135A00()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 addSubview:v2];
  sub_100013178(0.0);

  v3 = [v1 layer];
  [v3 setMasksToBounds:0];

  v4 = [v1 layer];
  [v4 setHitTestsAsOpaque:1];

  v5 = [v1 layer];
  v6 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer];
  [v5 setMask:v6];

  v7 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
  v8 = [v6 path];
  [v7 setPath:v8];

  v9 = [objc_opt_self() clearColor];
  v10 = [v9 CGColor];

  [v7 setFillColor:v10];
  [v7 setLineWidth:2.0];
  [v1 bounds];
  [v7 setFrame:?];
  v11 = [v1 layer];
  [v11 addSublayer:v7];

  v12 = [v1 traitCollection];
  v13 = [v12 userInterfaceStyle];

  sub_100135D14(v13 == 2);
  sub_1000F24EC(&unk_100AEBEC0, &unk_1009432D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100940050;
  *(v14 + 32) = type metadata accessor for UITraitLayoutDirection();
  *(v14 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(v14 + 48) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v14 + 56) = &protocol witness table for UITraitUserInterfaceStyle;
  type metadata accessor for ResizingHandleView();
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return result;
}

void sub_100135D14(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_blurEffectView];
  v4 = objc_opt_self();
  if (a1)
  {
    v5 = 12;
  }

  else
  {
    v5 = 17;
  }

  if (a1)
  {
    v6 = &OBJC_IVAR____TtC7Journal18ResizingHandleView_darkBorderColor;
  }

  else
  {
    v6 = &OBJC_IVAR____TtC7Journal18ResizingHandleView_lightBorderColor;
  }

  v7 = [v4 effectWithStyle:v5];
  [v3 setEffect:v7];

  [v1 setBackgroundColor:*&v1[*v6]];
  v8 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
  v9 = [*&v1[*v6] CGColor];
  [v8 setStrokeColor:v9];
}

void sub_100135E1C()
{
  v1 = v0;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ResizingHandleView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  [v0 bounds];
  Mutable = CGPathCreateMutable();
  v8 = 0x3FF0000000000000;
  v9 = 0;
  v10 = 0;
  v11 = 0x3FF0000000000000;
  v12 = 0;
  v13 = 0;
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  v3 = CGPathRef.copy(strokingWithWidth:lineCap:lineJoin:miterLimit:transform:)();

  v4 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_shapeLayer];
  [v4 setPath:v3];
  v5 = *&v1[OBJC_IVAR____TtC7Journal18ResizingHandleView_borderLayer];
  v6 = [v4 path];
  [v5 setPath:v6];
}

id sub_100135F98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ResizingHandleView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10013606C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4D6C7566646E696DLL;
  }

  else
  {
    v3 = 0x4D664F6574617473;
  }

  if (v2)
  {
    v4 = 0xEB00000000646E69;
  }

  else
  {
    v4 = 0xEE00736574756E69;
  }

  if (*a2)
  {
    v5 = 0x4D6C7566646E696DLL;
  }

  else
  {
    v5 = 0x4D664F6574617473;
  }

  if (*a2)
  {
    v6 = 0xEE00736574756E69;
  }

  else
  {
    v6 = 0xEB00000000646E69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100136128()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1001361C0(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_100136244(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001362D8(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100A563C8, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_100136338(uint64_t *a1@<X8>)
{
  v2 = 0x4D664F6574617473;
  if (*v1)
  {
    v2 = 0x4D6C7566646E696DLL;
  }

  v3 = 0xEB00000000646E69;
  if (*v1)
  {
    v3 = 0xEE00736574756E69;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100136530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a3;
  v4[3] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[4] = v5;
  v4[5] = v7;

  return _swift_task_switch(sub_1001365C0, v5, v7);
}

uint64_t sub_1001365C0()
{
  if ([objc_opt_self() isHealthDataAvailable])
  {
    v1 = v0[2];
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = (v1 + 32);
      sub_1000065A8(0, &qword_100AD46D0, HKSampleType_ptr);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      while ((*v3 & 1) != 0)
      {
        if ([ObjCClassFromMetadata categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession])
        {
          goto LABEL_5;
        }

LABEL_8:
        ++v3;
        if (!--v2)
        {
          goto LABEL_17;
        }
      }

      v5 = [ObjCClassFromMetadata stateOfMindType];
LABEL_5:
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_8;
    }

LABEL_17:
    v11 = sub_1008908A8(_swiftEmptyArrayStorage);
    v0[6] = v11;

    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_100495988(_swiftEmptyArrayStorage);
      v12 = v14;
    }

    else
    {
      v12 = _swiftEmptySetSingleton;
    }

    v0[7] = v12;
    v13 = swift_task_alloc();
    v0[8] = v13;
    *v13 = v0;
    v13[1] = sub_1001368A8;

    return HKHealthStore.requestAuthorization(toShare:read:)(v11, v12);
  }

  else
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "HealthKit is not available on this device", v8, 2u);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1001368A8()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_100136BFC;
  }

  else
  {
    v5 = sub_100136A14;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100136A14()
{
  [*(v0 + 24) setHasSeenBothHealthTCCs:1];
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_100136AC8;

  return sub_10051C65C();
}

uint64_t sub_100136AC8()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return _swift_task_switch(sub_100136BE8, v3, v2);
}

uint64_t sub_100136BFC()
{
  v13 = v0;

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v3 = 136315394;
    v6 = Array.description.getter();
    v8 = sub_100008458(v6, v7, &v12);

    *(v3 + 4) = v8;
    *(v3 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 14) = v9;
    *v4 = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Encountered error when requesting authorization from HKHealthStore for healthTypes: %s: %@", v3, 0x16u);
    sub_10012B714(v4);

    sub_10000BA7C(v5);
  }

  else
  {
  }

  v10 = swift_task_alloc();
  *(v0 + 80) = v10;
  *v10 = v0;
  v10[1] = sub_100136AC8;

  return sub_10051C65C();
}

uint64_t sub_100136E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100136E48, 0, 0);
}

uint64_t sub_100136E48()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_100136EE0;
  v2 = *(v0 + 24);

  return sub_100136530(0, 0, v2);
}

uint64_t sub_100136EE0()
{

  return _swift_task_switch(sub_100136FDC, 0, 0);
}

uint64_t sub_100136FDC()
{
  (*(v0 + 32))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100137040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[18] = a3;
  if (a1)
  {
    swift_getObjectType();
    v6 = dispatch thunk of Actor.unownedExecutor.getter();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[21] = v6;
  v5[22] = v8;

  return _swift_task_switch(sub_1001370D4, v6, v8);
}

uint64_t sub_1001370D4()
{
  if ([objc_opt_self() isHealthDataAvailable])
  {
    sub_1000065A8(0, &qword_100AD46D0, HKSampleType_ptr);
    v1 = [swift_getObjCClassFromMetadata() categoryTypeForIdentifier:HKCategoryTypeIdentifierMindfulSession];
    v0[23] = v1;
    if (v1)
    {
      v2 = v0[20];
      v3 = v1;
      isa = Date._bridgeToObjectiveC()().super.isa;
      v5 = Date._bridgeToObjectiveC()().super.isa;
      v6 = [objc_opt_self() categorySampleWithType:v3 value:0 startDate:isa endDate:v5];
      v0[24] = v6;

      v7 = *(v2 + 16);
      v0[2] = v0;
      v0[3] = sub_1001373D0;
      v8 = swift_continuation_init();
      v0[17] = sub_1000F24EC(&unk_100AE1D70, &unk_100943990);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_1006273FC;
      v0[13] = &unk_100A5DEF8;
      v0[14] = v8;
      [v7 saveObject:v6 withCompletion:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "Couldn't create a HKCategoryType of type .mindfulSession";
      goto LABEL_10;
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "HealthKit is not available on this device";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);
    }
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1001373D0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_100137564;
  }

  else
  {
    v5 = sub_100137500;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100137500()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100137564(uint64_t a1)
{
  swift_willThrow();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[24];
  v6 = v1[23];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Saving a mindfulSessionCategory type encountered an error : %@", v7, 0xCu);
    sub_10012B714(v8);
  }

  else
  {
  }

  v10 = v1[1];

  return v10();
}

uint64_t sub_1001376E4()
{
  v1 = OBJC_IVAR____TtC7Journal13HealthManager_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1001377AC()
{
  result = qword_100AD46D8;
  if (!qword_100AD46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD46D8);
  }

  return result;
}

uint64_t sub_100137914(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  return v3;
}

char *sub_100137980(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController;
  *&v1[v3] = [objc_allocWithZone(UIPageViewController) initWithTransitionStyle:1 navigationOrientation:0 options:0];
  v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition] = 0;
  sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  UIViewController.ViewLoading.init()();
  v4 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
  v5 = type metadata accessor for DateComponents();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v1[v4], a1, v5);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for InsightsCalendarDetailViewController(0);
  v7 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  v8 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController;
  v9 = *&v7[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController];
  v10 = v7;
  [v10 addChildViewController:v9];
  [*&v7[v8] didMoveToParentViewController:v10];

  (*(v6 + 8))(a1, v5);
  return v10;
}

void sub_100137BA0(char a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController) viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_15:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v9 = v6;

  type metadata accessor for InsightsEntriesViewController(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    if ([v7 isEditing])
    {
      [v8 setEditing:0 animated:a1 & 1];
      sub_100139550(a1 & 1);
      sub_10013973C();
    }
  }
}

uint64_t sub_100137D94(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController;
  *(v1 + v3) = [objc_allocWithZone(UIPageViewController) initWithTransitionStyle:1 navigationOrientation:0 options:0];
  *(v1 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition) = 0;
  v15 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__composeItem;
  sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
  UIViewController.ViewLoading.init()();
  v14 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__previousButtonItem;
  UIViewController.ViewLoading.init()();
  v13 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__nextButtonItem;
  UIViewController.ViewLoading.init()();
  v4 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__moveItem;
  UIViewController.ViewLoading.init()();
  v5 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__bookmarkItem;
  UIViewController.ViewLoading.init()();
  v6 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__deleteItem;
  UIViewController.ViewLoading.init()();
  v7 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__doneButtonItem;
  UIViewController.ViewLoading.init()();
  v8 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__selectAllButton;
  UIViewController.ViewLoading.init()();
  v9 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController__deselectAllButton;
  UIViewController.ViewLoading.init()();

  v10 = sub_1000F24EC(&unk_100AEED40, &qword_10095EB80);
  v11 = *(*(v10 - 8) + 8);
  v11(v1 + v15, v10);
  v11(v1 + v14, v10);
  v11(v1 + v13, v10);
  v11(v1 + v4, v10);
  v11(v1 + v5, v10);
  v11(v1 + v6, v10);
  v11(v1 + v7, v10);
  v11(v1 + v8, v10);
  v11(v1 + v9, v10);
  type metadata accessor for InsightsCalendarDetailViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_100138070()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for InsightsCalendarDetailViewController(0);
  v35.receiver = v0;
  v35.super_class = v4;
  objc_msgSendSuper2(&v35, "viewDidLoad");
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = [objc_opt_self() systemBackgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = *&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController];
  [v8 setDataSource:v1];
  [v8 setDelegate:v1];
  result = [v1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  result = [v8 view];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v33 = v4;
  [v9 addSubview:result];

  result = [v8 view];
  if (result)
  {
    v11 = result;
    sub_100013178(0.0);

    sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v12 = String._bridgeToObjectiveC()();
    v13 = objc_opt_self();
    v14 = [v13 systemImageNamed:v12];

    swift_unknownObjectRetain();
    UIBarButtonItem.init(title:image:target:action:menu:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v1;
    static UIViewController.ViewLoading.subscript.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v16 = String._bridgeToObjectiveC()();
    v17 = [v13 systemImageNamed:v16];

    swift_unknownObjectRetain();
    UIBarButtonItem.init(title:image:target:action:menu:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v18 = v15;
    static UIViewController.ViewLoading.subscript.setter();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v13 systemImageNamed:v19];

    swift_unknownObjectRetain();
    v21 = UIBarButtonItem.init(title:image:target:action:menu:)();
    swift_getKeyPath();
    swift_getKeyPath();
    v34[0] = v21;
    v22 = v18;
    static UIViewController.ViewLoading.subscript.setter();
    v23 = [v22 navigationItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    [v23 setRightBarButtonItem:v34[0]];

    v24 = [v22 navigationItem];
    [v24 setLargeTitleDisplayMode:2];

    sub_1000F24EC(&unk_100AD4780, &unk_100941070);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100941830;
    v26 = objc_opt_self();
    *(v25 + 32) = [v26 flexibleSpaceItem];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v25 + 40) = v34[0];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIViewController.ViewLoading.subscript.getter();

    *(v25 + 48) = v34[0];
    *(v25 + 56) = [v26 flexibleSpaceItem];
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v22 setToolbarItems:isa];

    sub_100138930();
    v28 = objc_opt_self();
    v29 = [v28 keyCommandWithInput:UIKeyInputLeftArrow modifierFlags:0 action:"navigateToPreviousDay"];
    [v29 setWantsPriorityOverSystemBehavior:1];
    [v22 addKeyCommand:v29];
    v30 = [v28 keyCommandWithInput:UIKeyInputRightArrow modifierFlags:0 action:"navigateToNextDay"];
    [v30 setWantsPriorityOverSystemBehavior:1];
    [v22 addKeyCommand:v30];
    sub_100139178(0, 0);
    sub_1000F24EC(&unk_100AEBEC0, &unk_1009432D0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100940080;
    *(v31 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v31 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    v34[3] = v33;
    v34[0] = v22;
    v32 = v22;
    UIViewController.registerForTraitChanges(_:target:action:)();

    swift_unknownObjectRelease();

    return sub_10000BA7C(v34);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100138930()
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
  sub_1000065A8(0, &qword_100AD4420, UIAction_ptr);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v3 = String._bridgeToObjectiveC()();
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed:v3];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v26.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v26.value.super.isa = 0;
  v32.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v26, v32, v37);
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v0;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  if (qword_100AD08F8 != -1)
  {
    swift_once();
  }

  v7 = qword_100B30DD0;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v27.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27.value.super.isa = 0;
  v33.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v27, v33, v38);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v6;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v4 systemImageNamed:v10];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v28.value.super.isa = 0;
  v34.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(0, v28, v34, v39);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v9;
  static UIViewController.ViewLoading.subscript.setter();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v25.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v25.is_nil = 0;
  UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v25, v31);
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v17.value._countAndFlagsBits = v14;
  v17.value._object = v16;
  v29.value.super.isa = 0;
  v35.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v17, v29, v35, v40);
  swift_getKeyPath();
  swift_getKeyPath();
  v18 = v13;
  static UIViewController.ViewLoading.subscript.setter();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v21 = v20;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v30.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22.value._countAndFlagsBits = v19;
  v22.value._object = v21;
  v30.value.super.isa = 0;
  v36.value.super.super.isa = 0;
  UIBarButtonItem.init(title:image:primaryAction:menu:)(v22, v30, v36, v41);
  swift_getKeyPath();
  swift_getKeyPath();
  v23 = v18;
  return static UIViewController.ViewLoading.subscript.setter();
}

void sub_100139178(uint64_t a1, int a2)
{
  v3 = v2;
  v24 = a2;
  v25 = a1;
  v4 = sub_1000F24EC(&unk_100AD9850, &qword_100942010);
  __chkstk_darwin(v4 - 8);
  v6 = &v23 - v5;
  *(v2 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_isPageViewControllerInTransition) = 1;
  v7 = objc_allocWithZone(type metadata accessor for InsightsEntriesViewController(0));
  *&v7[OBJC_IVAR____TtC7Journal29InsightsEntriesViewController____lazy_storage___model] = 0;
  v8 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(&v7[v8], 1, 1, v9);
  v12 = sub_100013708(0, 0);
  v13 = OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_selectedDate;
  swift_beginAccess();
  (*(v10 + 16))(v6, v3 + v13, v9);
  v11(v6, 0, 1, v9);
  v14 = OBJC_IVAR____TtC7Journal29InsightsEntriesViewController_currentDate;
  swift_beginAccess();
  sub_10013E988(v6, &v12[v14]);
  swift_endAccess();
  sub_10016448C();
  sub_100004F84(v6, &unk_100AD9850, &qword_100942010);
  *&v12[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_delegate + 8] = &off_100A5E018;
  swift_unknownObjectWeakAssign();
  *&v12[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_multipleSelectionDelegate + 8] = &off_100A5DFB0;
  swift_unknownObjectWeakAssign();
  v15 = *(v3 + OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController);
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100941D50;
  *(v16 + 32) = v12;
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v17 = v12;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  aBlock[4] = sub_10013E9F8;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003264C;
  aBlock[3] = &unk_100A5E0C8;
  v21 = _Block_copy(aBlock);
  v22 = v17;

  [v15 setViewControllers:isa direction:v25 animated:v24 & 1 completion:v21];
  _Block_release(v21);

  sub_10013B4B0();
}

void sub_100139550(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController] viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_17:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v13 = v6;

  type metadata accessor for InsightsEntriesViewController(0);
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    sub_100139D08(a1 & 1);
    sub_10013C898(a1 & 1);
    if ([v8 isEditing])
    {
      v9 = [v1 traitCollection];
      v10 = [v9 horizontalSizeClass];

      v11 = v10 != 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v1 navigationController];
    [v12 setToolbarHidden:v11 animated:a1 & 1];
  }
}

void sub_10013973C()
{
  v30 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v1 = *(v30 - 8);
  __chkstk_darwin(v30);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date.FormatStyle.DateStyle();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v28[1] = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v28[0] = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v15 - 8);
  v31 = v0;
  v16 = sub_10013A18C();
  if (!v16)
  {
    goto LABEL_7;
  }

  v17 = v16;
  if (![v16 isEditing])
  {

LABEL_7:
    v23 = [v31 navigationItem];
    sub_10013AD44(v10);
    static Date.FormatStyle.DateStyle.abbreviated.getter();
    static Date.FormatStyle.TimeStyle.omitted.getter();
    Date.formatted(date:time:)();
    (*(v1 + 8))(v3, v30);
    (*(v4 + 8))(v6, v29);
    (*(v8 + 8))(v10, v7);
    v24 = String._bridgeToObjectiveC()();

    [v23 setTitle:v24];
    goto LABEL_14;
  }

  v18 = *&v17[OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView];
  if (!v18)
  {
    v19 = v17;
    goto LABEL_9;
  }

  v19 = v17;
  v20 = [v18 indexPathsForSelectedItems];
  if (!v20)
  {
LABEL_9:
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_10;
  }

  v21 = v20;
  type metadata accessor for IndexPath();
  v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = v21;
LABEL_10:

  v25 = *(v22 + 2);

  if (v25)
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v26);
    v32 = v25;
    String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
    v27._countAndFlagsBits = 0x73656972746E4520;
    v27._object = 0xE800000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v27);
    String.LocalizationValue.init(stringInterpolation:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v23 = [v31 navigationItem];
  }

  else
  {
    v23 = [v31 navigationItem];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
  }

  v24 = String._bridgeToObjectiveC()();

  [v23 setTitle:v24];

LABEL_14:
}

void sub_100139D08(char a1)
{
  v3 = [*&v1[OBJC_IVAR____TtC7Journal36InsightsCalendarDetailViewController_pageViewController] viewControllers];
  if (!v3)
  {
    return;
  }

  v4 = v3;
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

LABEL_19:

    return;
  }

  if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v6 = *(v5 + 32);
  }

  v21 = v6;

  type metadata accessor for InsightsEntriesViewController(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = [v7 isEditing];
  v9 = [v1 navigationItem];
  v10 = v9;
  if (v8)
  {
    [v9 setHidesBackButton:1];

LABEL_10:

    return;
  }

  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100941D50;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v11 + 32) = v22;
  sub_1000065A8(0, &qword_100AD43B0, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setRightBarButtonItems:isa animated:a1 & 1];

  v13 = [v1 navigationItem];
  v14 = [(objc_class *)v13 leftBarButtonItems];
  if (v14)
  {
    v15 = v14;
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = Array._bridgeToObjectiveC()().super.isa;

    [(objc_class *)v13 setLeftBarButtonItems:v16];

    v13 = v16;
  }

  else
  {
    [(objc_class *)v13 setLeftBarButtonItems:0];
  }

  v17 = [v1 navigationItem];
  [v17 setHidesBackButton:0];

  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100941830;
  v19 = objc_opt_self();
  *(v18 + 32) = [v19 flexibleSpaceItem];
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v18 + 40) = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  static UIViewController.ViewLoading.subscript.getter();

  *(v18 + 48) = v22;
  *(v18 + 56) = [v19 flexibleSpaceItem];
  v20 = Array._bridgeToObjectiveC()().super.isa;

  [v1 setToolbarItems:v20];
}