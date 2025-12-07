uint64_t sub_1004F4150@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10050155C(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    *a2 = v10;
    *(a2 + 8) = *(v9 + 8);
    *(a2 + 24) = *(v9 + 24);
    *(a2 + 40) = *(v9 + 40);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1004F4228(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_100501584(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1004F42E4@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = a3(0);
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = v9 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + v15 * a1;
    result = (*(v14 + 32))(a4, v16, v13);
    if (v15 > 0 || v16 >= v16 + v15 + v15 * (v12 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v15)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

double sub_1004F43FC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ScrollPosition();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v26 - v7;
  _s8MetadataO5ModelCMa(0);
  sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa, &unk_100ED0A58);
  *a1 = ObservedObject.init(wrappedValue:)();
  *(a1 + 8) = v9;
  sub_1004F61B8();
  FocusState.init<A>()();
  LOBYTE(v28) = 0;
  State.init(wrappedValue:)();
  v10 = v29.n128_u64[1];
  *(a1 + 40) = v29.n128_u8[0];
  *(a1 + 48) = v10;
  v11 = _s8MetadataO4ViewVMa(0);
  ScrollPosition.init<A>(idType:)();
  (*(v4 + 16))(v6, v8, v3);
  State.init(wrappedValue:)();
  (*(v4 + 8))(v8, v3);
  v12 = v11[8];
  if (qword_10117F7E8 != -1)
  {
    swift_once();
  }

  v13 = (a1 + v12);
  v28 = xmmword_101192E58;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v14 = v30;
  *v13 = v29;
  v13[1].n128_u64[0] = v14;
  v15 = (a1 + v11[9]);
  *&v28 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_101193468, &qword_100ED0988);
  State.init(wrappedValue:)();
  v16 = v29.n128_u64[1];
  *v15 = v29.n128_u64[0];
  v15[1] = v16;
  v17 = (a1 + v11[10]);
  sub_10010FC20(&qword_101191F70, &qword_100ECF108);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100EBC6B0;
  static PlaylistCovers.CarouselItem.picker.getter(&v29);
  v19 = v36;
  *(v18 + 128) = v35;
  *(v18 + 144) = v19;
  *(v18 + 160) = v37;
  v20 = v32;
  *(v18 + 64) = v31;
  *(v18 + 80) = v20;
  v21 = v34;
  *(v18 + 96) = v33;
  *(v18 + 112) = v21;
  v22 = v30;
  *(v18 + 32) = v29;
  *(v18 + 48) = v22;
  v27 = v18;
  sub_10010FC20(&qword_101193478, &qword_100ED0990);
  State.init(wrappedValue:)();
  v23 = *(&v28 + 1);
  *v17 = v28;
  v17[1] = v23;
  v24 = v11[11];
  v27 = 0;
  sub_10010FC20(&unk_101193488, qword_100ED0998);
  State.init(wrappedValue:)();
  result = *&v28;
  *(a1 + v24) = v28;
  return result;
}

uint64_t sub_1004F475C(uint64_t a1, char a2)
{
  *(v3 + 2608) = v2;
  *(v3 + 2675) = a2;
  *(v3 + 2600) = a1;
  *(v3 + 2616) = type metadata accessor for MainActor();
  *(v3 + 2624) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 2632) = v5;
  *(v3 + 2640) = v4;

  return _swift_task_switch(sub_1004F4804, v5, v4);
}

uint64_t sub_1004F4804()
{
  if (*DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() != 1 || *(v0 + 2675) != 1 || (*(v0 + 2672) = 4, v1 = sub_100025CE0(), (FeatureFlagsKey.isEnabled.getter(&type metadata for Feature.Music, v1) & 1) == 0) || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter((v0 + 2673)), , , *(v0 + 2673) != 3))
  {
LABEL_17:

    goto LABEL_18;
  }

  v2 = (v0 + 936);
  v21 = (v0 + 1448);
  v3 = (v0 + 1576);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 408));

  v29 = *(v0 + 504);
  v30 = *(v0 + 520);
  v31 = *(v0 + 536);
  v25 = *(v0 + 440);
  v26 = *(v0 + 456);
  v27 = *(v0 + 472);
  v28 = *(v0 + 488);
  v23 = *(v0 + 408);
  v24 = *(v0 + 424);
  *(v0 + 368) = v29;
  *(v0 + 384) = v30;
  *(v0 + 400) = v31;
  *(v0 + 304) = v25;
  *(v0 + 320) = v26;
  *(v0 + 336) = v27;
  *(v0 + 352) = v28;
  *(v0 + 272) = v23;
  *(v0 + 288) = v24;
  if (sub_1000D8FCC((v0 + 272)) == 1)
  {
    sub_100502390(v0 + 936);
  }

  else
  {
    *(v0 + 1256) = v27;
    *(v0 + 1272) = v28;
    *(v0 + 1288) = v29;
    *(v0 + 1304) = v30;
    *(v0 + 1192) = v23;
    *(v0 + 1208) = v24;
    *(v0 + 1224) = v25;
    *(v0 + 1240) = v26;
    *(v0 + 1064) = v23;
    *(v0 + 1080) = v24;
    *(v0 + 1096) = v25;
    *(v0 + 1112) = v26;
    *(v0 + 1128) = v27;
    *(v0 + 1144) = v28;
    *(v0 + 1160) = v29;
    *(v0 + 1176) = v30;
    UIScreen.Dimensions.size.getter();
    sub_100501164(v0 + 1192, v0 + 1320);
    v4 = *(v0 + 1144);
    *(v0 + 1000) = *(v0 + 1128);
    *(v0 + 1016) = v4;
    v5 = *(v0 + 1176);
    *(v0 + 1032) = *(v0 + 1160);
    *(v0 + 1048) = v5;
    v6 = *(v0 + 1080);
    *v2 = *(v0 + 1064);
    *(v0 + 952) = v6;
    v7 = *(v0 + 1112);
    *(v0 + 968) = *(v0 + 1096);
    *(v0 + 984) = v7;
  }

  *(v0 + 640) = v29;
  *(v0 + 656) = v30;
  *(v0 + 672) = v31;
  *(v0 + 576) = v25;
  *(v0 + 592) = v26;
  *(v0 + 608) = v27;
  *(v0 + 624) = v28;
  *(v0 + 544) = v23;
  *(v0 + 560) = v24;
  sub_1000095E8(v0 + 544, &qword_1011842B0, &qword_100EBFE30);
  sub_10001DBDC((v0 + 1704));
  v8 = *(v0 + 1784);
  *(v0 + 1640) = *(v0 + 1768);
  *(v0 + 1656) = v8;
  v9 = *(v0 + 1816);
  *(v0 + 1672) = *(v0 + 1800);
  *(v0 + 1688) = v9;
  v10 = *(v0 + 1720);
  *v3 = *(v0 + 1704);
  *(v0 + 1592) = v10;
  v11 = *(v0 + 1752);
  *(v0 + 1608) = *(v0 + 1736);
  *(v0 + 1624) = v11;
  UIScreen.Dimensions.size.getter();
  v12 = *(v0 + 984);
  v36 = *(v0 + 1000);
  v37 = *(v0 + 1016);
  v38 = *(v0 + 1032);
  v39 = *(v0 + 1048);
  v32 = *v2;
  v33 = *(v0 + 952);
  v13 = *v2;
  v34 = *(v0 + 968);
  v35 = v12;
  v42 = *(v0 + 1608);
  v43 = *(v0 + 1624);
  v40 = *v3;
  v41 = *(v0 + 1592);
  v46 = *(v0 + 1672);
  v47 = *(v0 + 1688);
  v44 = *(v0 + 1640);
  v45 = *(v0 + 1656);
  *(v0 + 1480) = v34;
  *(v0 + 1496) = v12;
  *v21 = v13;
  *(v0 + 1464) = v33;
  v14 = *(v0 + 1048);
  *(v0 + 1544) = v38;
  *(v0 + 1560) = v14;
  *(v0 + 1512) = v36;
  *(v0 + 1528) = v37;
  if (sub_1000D8FCC(v21) == 1)
  {
    *(v0 + 1896) = v44;
    *(v0 + 1912) = v45;
    *(v0 + 1928) = v46;
    *(v0 + 1944) = v47;
    *(v0 + 1832) = v40;
    *(v0 + 1848) = v41;
    *(v0 + 1864) = v42;
    *(v0 + 1880) = v43;
    if (sub_1000D8FCC((v0 + 1832)) == 1)
    {
      *(v0 + 2024) = v36;
      *(v0 + 2040) = v37;
      *(v0 + 2056) = v38;
      *(v0 + 2072) = v39;
      *(v0 + 1960) = v32;
      *(v0 + 1976) = v33;
      *(v0 + 1992) = v34;
      *(v0 + 2008) = v35;
      sub_1000095E8(v0 + 1960, &qword_1011935B0, &qword_100ED0D08);
LABEL_14:
      v22 = *(v0 + 2600);
      v16 = static MainActor.shared.getter();
      *(v0 + 2648) = v16;
      v17 = swift_task_alloc();
      *(v0 + 2656) = v17;
      v17[1] = vextq_s8(v22, v22, 8uLL);
      v18 = swift_task_alloc();
      *(v0 + 2664) = v18;
      *v18 = v0;
      v18[1] = sub_1004F4E24;

      return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2674, v16, &protocol witness table for MainActor, 0xD00000000000004ALL, 0x8000000100E4E6F0, sub_100502388, v17, &type metadata for Bool);
    }

    goto LABEL_12;
  }

  *(v0 + 2152) = v44;
  *(v0 + 2168) = v45;
  *(v0 + 2184) = v46;
  *(v0 + 2200) = v47;
  *(v0 + 2088) = v40;
  *(v0 + 2104) = v41;
  *(v0 + 2120) = v42;
  *(v0 + 2136) = v43;
  if (sub_1000D8FCC((v0 + 2088)) != 1)
  {
    *(v0 + 2408) = v44;
    *(v0 + 2424) = v45;
    *(v0 + 2440) = v46;
    *(v0 + 2456) = v47;
    *(v0 + 2344) = v40;
    *(v0 + 2360) = v41;
    *(v0 + 2376) = v42;
    *(v0 + 2392) = v43;
    *(v0 + 680) = v40;
    *(v0 + 696) = v41;
    *(v0 + 712) = v42;
    *(v0 + 728) = v43;
    *(v0 + 744) = v44;
    *(v0 + 760) = v45;
    *(v0 + 776) = v46;
    *(v0 + 792) = v47;
    *(v0 + 872) = v36;
    *(v0 + 888) = v37;
    *(v0 + 904) = v38;
    *(v0 + 920) = v39;
    *(v0 + 808) = v32;
    *(v0 + 824) = v33;
    *(v0 + 840) = v34;
    *(v0 + 856) = v35;
    sub_1000089F8(v0 + 936, v0 + 2472, &qword_1011935B0, &qword_100ED0D08);
    v15 = static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)((v0 + 808), (v0 + 680));
    sub_1000095E8(v0 + 2344, &qword_1011935B0, &qword_100ED0D08);
    sub_1000095E8(v0 + 936, &qword_1011935B0, &qword_100ED0D08);
    *(v0 + 2280) = v36;
    *(v0 + 2296) = v37;
    *(v0 + 2312) = v38;
    *(v0 + 2328) = v39;
    *(v0 + 2216) = v32;
    *(v0 + 2232) = v33;
    *(v0 + 2248) = v34;
    *(v0 + 2264) = v35;
    sub_1000095E8(v0 + 2216, &qword_1011935B0, &qword_100ED0D08);
    if (v15)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

LABEL_12:

  *(v0 + 208) = v44;
  *(v0 + 224) = v45;
  *(v0 + 240) = v46;
  *(v0 + 256) = v47;
  *(v0 + 144) = v40;
  *(v0 + 160) = v41;
  *(v0 + 176) = v42;
  *(v0 + 192) = v43;
  *(v0 + 80) = v36;
  *(v0 + 96) = v37;
  *(v0 + 112) = v38;
  *(v0 + 128) = v39;
  *(v0 + 16) = v32;
  *(v0 + 32) = v33;
  *(v0 + 48) = v34;
  *(v0 + 64) = v35;
  sub_1000095E8(v0 + 16, &unk_10119EFE0, &qword_100ED0D00);
LABEL_18:
  v19 = *(v0 + 8);

  return v19(1);
}

uint64_t sub_1004F4E24()
{
  v1 = *v0;

  v2 = *(v1 + 2640);
  v3 = *(v1 + 2632);

  return _swift_task_switch(sub_1004F4F84, v3, v2);
}

uint64_t sub_1004F4F84()
{

  v1 = *(v0 + 2674);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1004F4FE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1004F50C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1004F5148()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_1004F51F8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  return v3;
}

double sub_1004F52C8@<D0>(uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v13);

  result = *&v14;
  v5 = v15;
  v6 = v16;
  v7 = v13[2];
  v8 = v13[3];
  v9 = v13[5];
  v10 = v13[4];
  v11 = v13[1];
  v12 = v13[0];
  *(a3 + 96) = v14;
  *(a3 + 112) = v5;
  *(a3 + 128) = v6;
  *(a3 + 32) = v7;
  *(a3 + 48) = v8;
  *(a3 + 64) = v10;
  *(a3 + 80) = v9;
  *a3 = v12;
  *(a3 + 16) = v11;
  return result;
}

uint64_t sub_1004F538C()
{
  v1 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__image;
  v2 = sub_10010FC20(&unk_101184260, &qword_100EDCE20);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__imageSource;
  v4 = sub_10010FC20(&qword_101193760, &qword_100ED1178);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__artworkInfo;
  v6 = sub_10010FC20(&qword_101187EE8, &unk_100EC35F0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__title;
  v8 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v9(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__description, v8);
  v10 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__isVisible;
  v11 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v13 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__ownerName;
  v14 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v15 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__folder;
  v16 = sub_10010FC20(&qword_101193758, &qword_100ED1170);
  (*(*(v16 - 8) + 8))(v0 + v15, v16);
  v17 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__flow;
  v18 = sub_10010FC20(&qword_101193750, &qword_100ED1168);
  (*(*(v18 - 8) + 8))(v0 + v17, v18);
  v19 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__visibleFields;
  v20 = sub_10010FC20(&qword_101193748, &qword_100ED1160);
  v21 = *(*(v20 - 8) + 8);
  v21(v0 + v19, v20);
  v21(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__editableFields, v20);
  v22 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__focusedField;
  v23 = sub_10010FC20(&qword_101193740, &qword_100ED1158);
  (*(*(v23 - 8) + 8))(v0 + v22, v23);
  v24 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__currentUserCarouselItem;
  v25 = sub_10010FC20(&qword_101193738, &qword_100ED1150);
  v26 = *(*(v25 - 8) + 8);
  v26(v0 + v24, v25);
  v27 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__coversSource;
  v28 = sub_10010FC20(&qword_101193730, &qword_100ED1148);
  (*(*(v28 - 8) + 8))(v0 + v27, v28);
  v12(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__creationInProgress, v11);
  v29 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__windowSizeClass;
  v30 = sub_10010FC20(&qword_101193728, &qword_100ED1140);
  (*(*(v30 - 8) + 8))(v0 + v29, v30);
  v26(v0 + OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__selectedCarouselItem, v25);
  return v0;
}

uint64_t sub_1004F5820()
{
  sub_1004F538C();

  return swift_deallocClassInstance();
}

void sub_1004F58A0(uint64_t a1)
{
  sub_100052C2C(319, &qword_101192F38, &qword_101184460, &qword_100EDACF0, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    sub_100052C2C(319, &qword_101192F40, &qword_101192F48, &qword_100ED0950, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      sub_100052C2C(319, &qword_101187AE0, &unk_10119F000, &qword_100EC31D0, &type metadata accessor for Published);
      if (v3 <= 0x3F)
      {
        sub_1000053DC(319, &qword_101187AF8, &type metadata for String, &type metadata accessor for Published);
        if (v4 <= 0x3F)
        {
          sub_1000053DC(319, &qword_10119ED80, &type metadata for Bool, &type metadata accessor for Published);
          if (v5 <= 0x3F)
          {
            sub_100052C2C(319, &qword_101187B08, &qword_1011815E0, &qword_100EBD050, &type metadata accessor for Published);
            if (v6 <= 0x3F)
            {
              sub_100052C2C(319, &qword_101192F50, &unk_10118F670, &unk_100EC89B0, &type metadata accessor for Published);
              if (v7 <= 0x3F)
              {
                sub_1000053DC(319, &qword_101192F58, &_s8MetadataO4FlowON, &type metadata accessor for Published);
                if (v8 <= 0x3F)
                {
                  sub_100052C2C(319, &qword_101192F60, &qword_101192F68, &qword_100ED0958, &type metadata accessor for Published);
                  if (v9 <= 0x3F)
                  {
                    sub_100052C2C(319, &qword_101192F70, &qword_101192F78, &qword_100ED0960, &type metadata accessor for Published);
                    if (v10 <= 0x3F)
                    {
                      sub_100052C2C(319, &qword_101192F80, &qword_1011842B0, &qword_100EBFE30, &type metadata accessor for Published);
                      if (v11 <= 0x3F)
                      {
                        sub_100052C2C(319, &qword_101192F88, &qword_101184230, &unk_100EDE0D0, &type metadata accessor for Published);
                        if (v12 <= 0x3F)
                        {
                          sub_100052C2C(319, &unk_101192F90, &unk_101184290, &qword_100EC0E60, &type metadata accessor for Published);
                          if (v13 <= 0x3F)
                          {
                            swift_updateClassMetadata2();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1004F5E90(uint64_t a1)
{
  sub_1004F6084(319);
  if (v1 <= 0x3F)
  {
    sub_1004F6118(319);
    if (v2 <= 0x3F)
    {
      sub_1000053DC(319, &qword_101197850, &type metadata for Bool, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        sub_1004F620C(319, &qword_101193458, &type metadata accessor for ScrollPosition);
        if (v4 <= 0x3F)
        {
          sub_1004F620C(319, &unk_101185EE0, type metadata accessor for CGSize);
          if (v5 <= 0x3F)
          {
            sub_100052C2C(319, &qword_101193460, &qword_101193468, &qword_100ED0988, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_100052C2C(319, &qword_101193470, &qword_101193478, &qword_100ED0990, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                sub_100052C2C(319, &qword_101193480, &unk_101193488, qword_100ED0998, &type metadata accessor for State);
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

void sub_1004F6084(uint64_t a1)
{
  if (!qword_101193430)
  {
    _s8MetadataO5ModelCMa(255);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa, &unk_100ED0A58);
    v1 = type metadata accessor for ObservedObject();
    if (!v2)
    {
      atomic_store(v1, &qword_101193430);
    }
  }
}

void sub_1004F6118(uint64_t a1)
{
  if (!qword_101193440)
  {
    sub_1001109D0(&qword_101192F78, &qword_100ED0960);
    sub_100500CBC(&qword_101193448, sub_1004F61B8, &protocol conformance descriptor for <A> A?);
    v1 = type metadata accessor for FocusState();
    if (!v2)
    {
      atomic_store(v1, &qword_101193440);
    }
  }
}

unint64_t sub_1004F61B8()
{
  result = qword_101193450;
  if (!qword_101193450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193450);
  }

  return result;
}

void sub_1004F620C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for State();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1004F627C()
{
  v1 = v0;
  v2 = sub_10010FC20(&qword_101193728, &qword_100ED1140);
  v119 = *(v2 - 8);
  v120 = v2;
  __chkstk_darwin();
  v118 = v83 - v3;
  v117 = sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v116 = v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v115 = v83 - v5;
  v6 = sub_10010FC20(&qword_101193730, &qword_100ED1148);
  v113 = *(v6 - 8);
  v114 = v6;
  __chkstk_darwin();
  v112 = v83 - v7;
  v111 = sub_10010FC20(&qword_101184230, &unk_100EDE0D0);
  __chkstk_darwin();
  v110 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = v83 - v9;
  v123 = sub_10010FC20(&qword_101193738, &qword_100ED1150);
  v125 = *(v123 - 8);
  __chkstk_darwin();
  v108 = v83 - v10;
  v11 = sub_10010FC20(&qword_101193740, &qword_100ED1158);
  v106 = *(v11 - 8);
  v107 = v11;
  __chkstk_darwin();
  v105 = v83 - v12;
  v13 = sub_10010FC20(&qword_101193748, &qword_100ED1160);
  v103 = *(v13 - 8);
  v104 = v13;
  __chkstk_darwin();
  v102 = v83 - v14;
  v15 = sub_10010FC20(&qword_101193750, &qword_100ED1168);
  v100 = *(v15 - 8);
  v101 = v15;
  __chkstk_darwin();
  v99 = v83 - v16;
  v17 = sub_10010FC20(&qword_101193758, &qword_100ED1170);
  v97 = *(v17 - 8);
  v98 = v17;
  __chkstk_darwin();
  v96 = v83 - v18;
  v95 = sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v94 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = v83 - v20;
  v21 = sub_10010FC20(&qword_1011928F0, &unk_100F149B0);
  v91 = *(v21 - 8);
  v92 = v21;
  __chkstk_darwin();
  v90 = v83 - v22;
  v122 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  v124 = *(v122 - 8);
  __chkstk_darwin();
  v121 = v83 - v23;
  v24 = sub_10010FC20(&qword_101184258, &qword_100EC3610);
  v88 = *(v24 - 8);
  v89 = v24;
  __chkstk_darwin();
  v87 = v83 - v25;
  v26 = sub_10010FC20(&qword_101187EE8, &unk_100EC35F0);
  v85 = *(v26 - 8);
  v86 = v26;
  __chkstk_darwin();
  v84 = v83 - v27;
  v83[1] = sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v83[0] = v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v30 = v83 - v29;
  v31 = sub_10010FC20(&qword_101193760, &qword_100ED1178);
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = v83 - v33;
  v35 = sub_10010FC20(&unk_101184260, &qword_100EDCE20);
  v36 = *(v35 - 8);
  __chkstk_darwin();
  v38 = v83 - v37;
  v39 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__image;
  *&v135 = 0;
  sub_10010FC20(&qword_101184460, &qword_100EDACF0);
  Published.init(initialValue:)();
  (*(v36 + 32))(v1 + v39, v38, v35);
  v40 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__imageSource;
  LOBYTE(v135) = 4;
  sub_10010FC20(&qword_101192F48, &qword_100ED0950);
  Published.init(initialValue:)();
  (*(v32 + 32))(v1 + v40, v34, v31);
  v41 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__artworkInfo;
  v42 = type metadata accessor for ArtworkImage.Info(0);
  (*(*(v42 - 8) + 56))(v30, 1, 1, v42);
  sub_1000089F8(v30, v83[0], &unk_10119F000, &qword_100EC31D0);
  v43 = v84;
  Published.init(initialValue:)();
  sub_1000095E8(v30, &unk_10119F000, &qword_100EC31D0);
  v44 = v1;
  (*(v85 + 32))(v1 + v41, v43, v86);
  v45 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__title;
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  v46 = v87;
  Published.init(initialValue:)();
  v47 = v89;
  v48 = *(v88 + 32);
  v48(v1 + v45, v46, v89);
  v49 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__description;
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  Published.init(initialValue:)();
  v48(v1 + v49, v46, v47);
  v50 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__isVisible;
  LOBYTE(v135) = 0;
  v51 = v121;
  Published.init(initialValue:)();
  v52 = *(v124 + 32);
  v124 += 32;
  v89 = v52;
  v52(v1 + v50, v51, v122);
  v53 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__ownerName;
  v135 = 0uLL;
  sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
  v54 = v90;
  Published.init(initialValue:)();
  (*(v91 + 32))(v1 + v53, v54, v92);
  v55 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__folder;
  v56 = type metadata accessor for Playlist.Folder();
  v57 = v93;
  (*(*(v56 - 8) + 56))(v93, 1, 1, v56);
  sub_1000089F8(v57, v94, &unk_10118F670, &unk_100EC89B0);
  v58 = v96;
  Published.init(initialValue:)();
  sub_1000095E8(v57, &unk_10118F670, &unk_100EC89B0);
  (*(v97 + 32))(v44 + v55, v58, v98);
  v59 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__flow;
  LOBYTE(v135) = 0;
  v60 = v99;
  Published.init(initialValue:)();
  (*(v100 + 32))(v44 + v59, v60, v101);
  v61 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__visibleFields;
  *&v135 = sub_10066FE08(&off_101099260);
  sub_10010FC20(&qword_101192F68, &qword_100ED0958);
  v62 = v102;
  Published.init(initialValue:)();
  v63 = v104;
  v64 = *(v103 + 32);
  v64(v44 + v61, v62, v104);
  v65 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__editableFields;
  *&v135 = sub_10066FE08(&off_101099288);
  Published.init(initialValue:)();
  v64(v44 + v65, v62, v63);
  v66 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__focusedField;
  LOBYTE(v135) = 4;
  sub_10010FC20(&qword_101192F78, &qword_100ED0960);
  v67 = v105;
  Published.init(initialValue:)();
  v106[4](v44 + v66, v67, v107);
  v68 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__currentUserCarouselItem;
  sub_100501134(&v135);
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v126 = v135;
  v127 = v136;
  v107 = sub_10010FC20(&qword_1011842B0, &qword_100EBFE30);
  v69 = v108;
  Published.init(initialValue:)();
  v70 = *(v125 + 32);
  v125 += 32;
  v106 = v70;
  (v70)(v44 + v68, v69, v123);
  v71 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__coversSource;
  v72 = type metadata accessor for PlaylistCovers.Source(0);
  v73 = v109;
  (*(*(v72 - 8) + 56))(v109, 1, 1, v72);
  sub_1000089F8(v73, v110, &qword_101184230, &unk_100EDE0D0);
  v74 = v112;
  Published.init(initialValue:)();
  sub_1000095E8(v73, &qword_101184230, &unk_100EDE0D0);
  (*(v113 + 32))(v44 + v71, v74, v114);
  v75 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__creationInProgress;
  LOBYTE(v126) = 0;
  v76 = v121;
  Published.init(initialValue:)();
  v89(v44 + v75, v76, v122);
  v77 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__windowSizeClass;
  v78 = type metadata accessor for UserInterfaceSizeClass();
  v79 = v115;
  (*(*(v78 - 8) + 56))(v115, 1, 1, v78);
  sub_1000089F8(v79, v116, &unk_101184290, &qword_100EC0E60);
  v80 = v118;
  Published.init(initialValue:)();
  sub_1000095E8(v79, &unk_101184290, &qword_100EC0E60);
  (*(v119 + 32))(v44 + v77, v80, v120);
  v81 = OBJC_IVAR____TtCOO5Music15PlaylistEditing8Metadata5Model__selectedCarouselItem;
  v132 = v141;
  v133 = v142;
  v134 = v143;
  v128 = v137;
  v129 = v138;
  v130 = v139;
  v131 = v140;
  v126 = v135;
  v127 = v136;
  Published.init(initialValue:)();
  (v106)(v44 + v81, v69, v123);
  return v44;
}

uint64_t sub_1004F7234@<X0>(uint64_t *a2@<X8>)
{
  _s8MetadataO5ModelCMa(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t sub_1004F7274@<X0>(uint64_t a1@<X8>)
{
  v122 = a1;
  v132 = type metadata accessor for ScrollPosition();
  v119 = *(v132 - 8);
  __chkstk_darwin();
  v116 = &v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10010FC20(&qword_101184230, &unk_100EDE0D0);
  __chkstk_darwin();
  v104 = (&v101 - v4);
  v5 = _s8MetadataO4ViewVMa(0);
  v6 = *(v5 - 8);
  v129 = v5 - 8;
  v138 = v6;
  v134 = *(v6 + 64);
  __chkstk_darwin();
  v140 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011934D8, &qword_100ED0A90);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v101 - v10;
  v133 = sub_10010FC20(&qword_1011934E0, &qword_100ED0A98);
  __chkstk_darwin();
  v13 = &v101 - v12;
  v125 = sub_10010FC20(&qword_1011934E8, &qword_100ED0AA0);
  v106 = *(v125 - 1);
  __chkstk_darwin();
  v123 = &v101 - v14;
  v15 = sub_10010FC20(&qword_1011934F0, &qword_100ED0AA8);
  v16 = *(v15 - 8);
  v107 = v15;
  v108 = v16;
  __chkstk_darwin();
  v126 = &v101 - v17;
  v18 = sub_10010FC20(&qword_1011934F8, &qword_100ED0AB0);
  v19 = *(v18 - 8);
  v109 = v18;
  v110 = v19;
  __chkstk_darwin();
  v127 = &v101 - v20;
  v21 = sub_10010FC20(&qword_101193500, &qword_100ED0AB8);
  v22 = *(v21 - 8);
  v111 = v21;
  v112 = v22;
  __chkstk_darwin();
  v128 = &v101 - v23;
  v24 = sub_10010FC20(&qword_101193508, &qword_100ED0AC0);
  v25 = *(v24 - 8);
  v113 = v24;
  v114 = v25;
  __chkstk_darwin();
  v131 = &v101 - v26;
  v27 = sub_10010FC20(&qword_101193510, &qword_100ED0AC8);
  v28 = *(v27 - 8);
  v117 = v27;
  v118 = v28;
  __chkstk_darwin();
  v130 = &v101 - v29;
  v30 = sub_10010FC20(&qword_101193518, &qword_100ED0AD0);
  v31 = *(v30 - 8);
  v120 = v30;
  v121 = v31;
  __chkstk_darwin();
  v115 = &v101 - v32;
  static Axis.Set.vertical.getter();
  v141 = v2;
  sub_10010FC20(&qword_101193520, &qword_100ED0AD8);
  sub_1004FF944();
  ScrollView.init(_:showsIndicators:content:)();
  v124 = *(v2 + 8);
  v135 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v152);

  sub_100020674(&qword_101193540, &qword_1011934D8, &qword_100ED0A90, &protocol conformance descriptor for ScrollView<A>);
  v103 = v13;
  View.scrollDisabled(_:)();
  (*(v9 + 8))(v11, v8);
  v139 = _s8MetadataO4ViewVMa;
  v33 = v140;
  sub_100501D6C(v2, v140, _s8MetadataO4ViewVMa);
  v34 = (*(v138 + 80) + 16) & ~*(v138 + 80);
  v137 = *(v138 + 80);
  v35 = swift_allocObject();
  v136 = _s8MetadataO4ViewVMa;
  sub_100501D04(v33, v35 + v34, _s8MetadataO4ViewVMa);
  v36 = &v13[v133[9]];
  type metadata accessor for _TaskModifier();
  static TaskPriority.userInitiated.getter();
  *v36 = &unk_100ED0B38;
  *(v36 + 1) = v35;
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v104;
  static Published.subscript.getter(v104);

  v38 = v140;
  sub_100501D6C(v135, v140, v139);
  v138 = v34;
  v39 = swift_allocObject() + v34;
  v40 = v38;
  sub_100501D04(v38, v39, _s8MetadataO4ViewVMa);
  v102 = sub_1005007A0();
  v41 = sub_100500914();
  v42 = v105;
  v43 = v103;
  View.onChange<A>(of:initial:_:)();

  sub_1000095E8(v37, &qword_101184230, &unk_100EDE0D0);
  sub_1000095E8(v43, &qword_1011934E0, &qword_100ED0A98);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v152);

  v143 = v152;
  v44 = v139;
  sub_100501D6C(v135, v40, v139);
  v45 = v138;
  v46 = swift_allocObject();
  sub_100501D04(v40, v46 + v45, v136);
  *&v152 = v133;
  *(&v152 + 1) = v42;
  *&v153 = v102;
  *(&v153 + 1) = v41;
  v133 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v48 = v125;
  v49 = v123;
  View.onChange<A>(of:initial:_:)();

  (*(v106 + 8))(v49, v48);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v152);

  v149 = v158;
  v150 = v159;
  v151 = v160;
  v145 = v154;
  v146 = v155;
  v147 = v156;
  v148 = v157;
  v143 = v152;
  v144 = v153;
  v50 = v135;
  v51 = v140;
  sub_100501D6C(v135, v140, v44);
  v52 = v138;
  v53 = swift_allocObject() + v52;
  v54 = v51;
  v55 = v136;
  sub_100501D04(v54, v53, v136);
  v123 = sub_10010FC20(&qword_1011842B0, &qword_100EBFE30);
  *&v152 = v125;
  *(&v152 + 1) = &type metadata for String;
  *&v153 = OpaqueTypeConformance2;
  *(&v153 + 1) = &protocol witness table for String;
  v106 = swift_getOpaqueTypeConformance2();
  v125 = &protocol conformance descriptor for <A> A?;
  v56 = sub_100500AC8(&qword_101193568, &qword_1011842B0, &qword_100EBFE30, &protocol conformance descriptor for <A> A?);
  v57 = v107;
  v58 = v126;
  View.onChange<A>(of:initial:_:)();

  v158 = v149;
  v159 = v150;
  v160 = v151;
  v154 = v145;
  v155 = v146;
  v156 = v147;
  v157 = v148;
  v152 = v143;
  v153 = v144;
  sub_1000095E8(&v152, &qword_1011842B0, &qword_100EBFE30);
  (*(v108 + 8))(v58, v57);
  v59 = (v50 + *(v129 + 48));
  v61 = *v59;
  v60 = v59[1];
  *&v143 = v61;
  *(&v143 + 1) = v60;
  sub_10010FC20(&qword_101193578, &qword_100ED0C18);
  State.wrappedValue.getter();
  v62 = v140;
  sub_100501D6C(v50, v140, v139);
  v63 = v138;
  v64 = swift_allocObject();
  sub_100501D04(v62, v64 + v63, v55);
  v126 = sub_10010FC20(&qword_101193478, &qword_100ED0990);
  *&v143 = v57;
  *(&v143 + 1) = v123;
  *&v144 = v106;
  *(&v144 + 1) = v56;
  v123 = swift_getOpaqueTypeConformance2();
  v65 = sub_100500AC8(&qword_101193580, &qword_101193478, &qword_100ED0990, &protocol conformance descriptor for <A> [A]);
  v66 = v127;
  v67 = v109;
  View.onChange<A>(of:initial:_:)();

  v68 = v67;
  (*(v110 + 8))(v66, v67);
  sub_10010FC20(&qword_1011933C0, &qword_100ED0978);
  v69 = v135;
  v70 = v116;
  State.wrappedValue.getter();
  v72 = v139;
  v71 = v140;
  sub_100501D6C(v69, v140, v139);
  v73 = v138;
  v74 = swift_allocObject() + v73;
  v75 = v136;
  sub_100501D04(v71, v74, v136);
  *&v143 = v68;
  *(&v143 + 1) = v126;
  *&v144 = v123;
  *(&v144 + 1) = v65;
  v127 = swift_getOpaqueTypeConformance2();
  v76 = sub_1005008CC(&qword_101193588, &type metadata accessor for ScrollPosition, &protocol conformance descriptor for ScrollPosition);
  v77 = v70;
  v78 = v111;
  v79 = v132;
  v80 = v128;
  View.onChange<A>(of:initial:_:)();

  (*(v119 + 8))(v77, v79);
  (*(v112 + 8))(v80, v78);
  v81 = v135;
  v82 = *(v135 + 24);
  v83 = *(v135 + 32);
  LOBYTE(v143) = *(v135 + 16);
  *(&v143 + 1) = v82;
  LOBYTE(v144) = v83;
  sub_10010FC20(&qword_101193590, &qword_100ED0C20);
  FocusState.wrappedValue.getter();
  v84 = v140;
  sub_100501D6C(v81, v140, v72);
  v85 = v138;
  v86 = swift_allocObject();
  sub_100501D04(v84, v86 + v85, v75);
  v129 = sub_10010FC20(&qword_101192F78, &qword_100ED0960);
  *&v143 = v78;
  *(&v143 + 1) = v132;
  *&v144 = v127;
  *(&v144 + 1) = v76;
  v132 = swift_getOpaqueTypeConformance2();
  v128 = sub_100500CBC(&qword_101193598, sub_100500D34, v125);
  v87 = v113;
  v88 = v131;
  View.onChange<A>(of:initial:_:)();

  (*(v114 + 8))(v88, v87);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v143);

  LOBYTE(v142) = v143;
  v89 = v140;
  sub_100501D6C(v81, v140, v139);
  v90 = v138;
  v91 = swift_allocObject();
  sub_100501D04(v89, v91 + v90, v136);
  v92 = v128;
  *&v143 = v87;
  *(&v143 + 1) = v129;
  *&v144 = v132;
  *(&v144 + 1) = v128;
  v93 = swift_getOpaqueTypeConformance2();
  v94 = v115;
  v95 = v117;
  v96 = v130;
  View.onChange<A>(of:initial:_:)();

  (*(v118 + 8))(v96, v95);
  v97 = *(v81 + 48);
  LOBYTE(v143) = *(v81 + 40);
  *(&v143 + 1) = v97;
  sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
  State.wrappedValue.getter();
  sub_100501D6C(v81, v89, v139);
  v98 = swift_allocObject();
  sub_100501D04(v89, v98 + v90, v136);
  *&v143 = v95;
  *(&v143 + 1) = v129;
  *&v144 = v93;
  *(&v144 + 1) = v92;
  swift_getOpaqueTypeConformance2();
  v99 = v120;
  View.onChange<A>(of:initial:_:)();

  return (*(v121 + 8))(v94, v99);
}

uint64_t sub_1004F8484@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10010FC20(&qword_1011935C8, &qword_100ED0D80);
  sub_1004F8594(a1, a2 + *(v4 + 44));
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v10);

  v5 = v10;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  result = sub_10010FC20(&qword_101193520, &qword_100ED0AD8);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = sub_100239940;
  v9[2] = v7;
  return result;
}

uint64_t sub_1004F8594@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v4 = (&v59 - v3);
  *&v62 = sub_10010FC20(&qword_1011935D0, &qword_100ED0E00);
  __chkstk_darwin();
  v6 = &v59 - v5;
  v64 = sub_10010FC20(&qword_1011935D8, &qword_100ED0E08);
  __chkstk_darwin();
  v66 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v59 - v8;
  __chkstk_darwin();
  v65 = &v59 - v9;
  v10 = sub_10010FC20(&qword_1011935E0, &qword_100ED0E10);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v59 - v12;
  sub_10010FC20(&qword_1011935E8, &qword_100ED0E18);
  __chkstk_darwin();
  v63 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v59 - v15;
  v17 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  *&v61 = v17;
  static Published.subscript.getter(&v68);

  v18 = sub_100031064(0, v68);

  if (v18)
  {
    sub_1004F8BAC(a1, v13);
    v19 = static Edge.Set.top.getter();
    if (qword_10117F7E0 != -1)
    {
      swift_once();
    }

    EdgeInsets.init(_all:)();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = &v13[*(sub_10010FC20(&qword_101193600, &qword_100ED0EC0) + 36)];
    *v28 = v19;
    *(v28 + 1) = v21;
    *(v28 + 2) = v23;
    *(v28 + 3) = v25;
    *(v28 + 4) = v27;
    v28[40] = 0;
    v29 = static Edge.Set.bottom.getter();
    sub_1004F9D28();
    EdgeInsets.init(_all:)();
    v30 = &v13[*(v10 + 36)];
    *v30 = v29;
    *(v30 + 1) = v31;
    *(v30 + 2) = v32;
    *(v30 + 3) = v33;
    *(v30 + 4) = v34;
    v30[40] = 0;
    sub_10003D17C(v13, v16, &qword_1011935E0, &qword_100ED0E10);
    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v11 + 56))(v16, v35, 1, v10);
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v36 = sub_10010FC20(&qword_1011935F0, &qword_100ED0E68);
  sub_1004F9E04(a1, &v6[*(v36 + 44)]);
  v37 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v38 = &v6[*(v62 + 36)];
  *v38 = v37;
  *(v38 + 1) = v39;
  *(v38 + 2) = v40;
  *(v38 + 3) = v41;
  *(v38 + 4) = v42;
  v38[40] = 0;
  v43 = static Edge.Set.horizontal.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  sub_1005015FC(v4);
  v45 = v44;
  sub_1000095E8(v4, &unk_101184290, &qword_100EC0E60);
  v46 = 0uLL;
  v47 = 0uLL;
  if ((v45 & 1) == 0)
  {
    EdgeInsets.init(_all:)();
    *(&v47 + 1) = v48;
    *(&v46 + 1) = v49;
  }

  v61 = v47;
  v62 = v46;
  v50 = v60;
  sub_10003D17C(v6, v60, &qword_1011935D0, &qword_100ED0E00);
  v51 = v65;
  v52 = v50 + *(v64 + 36);
  *v52 = v43;
  v53 = v62;
  *(v52 + 24) = v61;
  *(v52 + 8) = v53;
  *(v52 + 40) = v45 & 1;
  sub_10003D17C(v50, v51, &qword_1011935D8, &qword_100ED0E08);
  v54 = v63;
  sub_1000089F8(v16, v63, &qword_1011935E8, &qword_100ED0E18);
  v55 = v66;
  sub_1000089F8(v51, v66, &qword_1011935D8, &qword_100ED0E08);
  v56 = v67;
  sub_1000089F8(v54, v67, &qword_1011935E8, &qword_100ED0E18);
  v57 = sub_10010FC20(&qword_1011935F8, &qword_100ED0EB8);
  sub_1000089F8(v55, v56 + *(v57 + 48), &qword_1011935D8, &qword_100ED0E08);
  sub_1000095E8(v51, &qword_1011935D8, &qword_100ED0E08);
  sub_1000095E8(v16, &qword_1011935E8, &qword_100ED0E18);
  sub_1000095E8(v55, &qword_1011935D8, &qword_100ED0E08);
  return sub_1000095E8(v54, &qword_1011935E8, &qword_100ED0E18);
}

uint64_t sub_1004F8BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v76 = type metadata accessor for ArtworkImage.ReusePolicy();
  v75 = *(v76 - 8);
  __chkstk_darwin();
  v73 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10010FC20(&unk_1011A1400, &unk_100ECAD80);
  v77 = *(v80 - 8);
  __chkstk_darwin();
  v74 = &v72 - v4;
  v82 = sub_10010FC20(&unk_10119F190, &qword_100EC1520);
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v79 = &v72 - v5;
  v90 = sub_10010FC20(&qword_101193608, &qword_100ED0EC8);
  __chkstk_darwin();
  v83 = &v72 - v6;
  sub_10010FC20(&unk_10119F000, &qword_100EC31D0);
  __chkstk_darwin();
  v8 = (&v72 - v7);
  v9 = type metadata accessor for ArtworkImage.Info(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v78 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_10010FC20(&qword_101193610, &qword_100ED0ED0);
  __chkstk_darwin();
  v89 = &v72 - v12;
  v13 = _s8MetadataO4ViewVMa(0);
  v84 = *(v13 - 8);
  v14 = *(v84 + 64);
  __chkstk_darwin();
  v85 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101193618, &qword_100ED0ED8);
  __chkstk_darwin();
  v16 = &v72 - v15;
  v87 = sub_10010FC20(&qword_101193620, &qword_100ED0EE0);
  __chkstk_darwin();
  v86 = (&v72 - v17);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v94);

  v18 = sub_100031064(0, v94);

  if (v18)
  {
    v19 = (a1 + *(v13 + 40));
    v21 = *v19;
    v20 = v19[1];
    *&v92 = v21;
    *(&v92 + 1) = v20;
    sub_10010FC20(&qword_101193578, &qword_100ED0C18);
    State.projectedValue.getter();
    v83 = *(&v94 + 1);
    v22 = v94;
    v23 = *&v95;
    sub_10010FC20(&qword_1011933C0, &qword_100ED0978);
    State.projectedValue.getter();
    v24 = (a1 + *(v13 + 32));
    v25 = *(v24 + 2);
    v92 = *v24;
    v93 = v25;
    sub_10010FC20(&qword_101186158, &qword_100EC19E8);
    State.projectedValue.getter();
    v26 = v94;
    v27 = v95;
    v28 = v96;
    v29 = v16;
    if (qword_10117F7F0 != -1)
    {
      swift_once();
    }

    v30 = *&qword_101192E68;
    if (qword_10117F7F8 != -1)
    {
      swift_once();
    }

    v31 = *&qword_101192E70;
    v32 = v85;
    sub_100501D6C(a1, v85, _s8MetadataO4ViewVMa);
    v33 = (*(v84 + 80) + 16) & ~*(v84 + 80);
    v34 = swift_allocObject();
    sub_100501D04(v32, v34 + v33, _s8MetadataO4ViewVMa);
    v35 = sub_10010FC20(&qword_101193640, &qword_100ED0F80);
    v36 = sub_100502024();
    v37 = sub_100502078();
    v38 = sub_1005020CC();
    *(&v71 + 1) = v37;
    *(&v70 + 1) = &protocol witness table for PlaylistCovers.CarouselItem;
    *&v71 = v36;
    *&v70 = v35;
    v39 = v86;
    CarouselView.init(items:scrollPosition:itemSize:horizontalSpacing:carouselToPageIndicatorSpacing:content:didSelect:)(v22, v83, v23, v29, v26, *(&v26 + 1), sub_100501FA4, v34, v86, v27, v28, v30, v31, 0, 0, &type metadata for PlaylistCovers.CarouselItem, v70, v71, v38);
    sub_1000089F8(v39, v89, &qword_101193620, &qword_100ED0EE0);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101193630, &qword_101193620, &qword_100ED0EE0, &protocol conformance descriptor for CarouselView<A, B>);
    sub_100501E20();
    v40 = v91;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v39, &qword_101193620, &qword_100ED0EE0);
LABEL_12:
    v41 = 0;
    goto LABEL_13;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v8);

  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v42 = v9;
    v43 = v78;
    sub_100501D04(v8, v78, type metadata accessor for ArtworkImage.Info);
    v44 = *(v9 + 20);
    if (qword_10117F7E8 != -1)
    {
      swift_once();
    }

    ArtworkImage.Size.init(cgSize:)(xmmword_101192E58, *(&xmmword_101192E58 + 1), 0, &v94);
    v45 = v75;
    v46 = v73;
    v47 = v76;
    (*(v75 + 104))(v73, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v76);
    v48 = v74;
    v49 = static ArtworkImage.with(_:placeholder:size:reusePolicy:)(v43, v43 + v44, &v94, v46, v74);
    (*(v45 + 8))(v46, v47, v49);
    v50 = v43 + *(v9 + 32);
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v79;
    v56 = v80;
    View.corner(_:)(v51, v52, v53, v80, OpaqueTypeConformance2);
    (*(v77 + 8))(v48, v56);
    v57 = Border.artwork.unsafeMutableAddressor();
    v58 = *v57;
    v59 = *(v57 + 1);
    LOBYTE(v47) = *(v57 + 16);

    *&v92 = v56;
    *(&v92 + 1) = OpaqueTypeConformance2;
    v60 = swift_getOpaqueTypeConformance2();
    v61 = v83;
    v62 = v51;
    v63 = v82;
    View.border(_:corner:)(v58, v47, v62, v52, v53, v82, v60, v59);

    (*(v81 + 8))(v55, v63);
    v64 = v43 + *(v42 + 24);
    v65 = *v64;
    LOBYTE(v64) = *(v64 + 8);
    v66 = v89;
    v67 = v61 + *(v90 + 36);
    *v67 = v65;
    *(v67 + 8) = v64;
    sub_1000089F8(v61, v66, &qword_101193608, &qword_100ED0EC8);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101193630, &qword_101193620, &qword_100ED0EE0, &protocol conformance descriptor for CarouselView<A, B>);
    sub_100501E20();
    v40 = v91;
    _ConditionalContent<>.init(storage:)();
    sub_1000095E8(v61, &qword_101193608, &qword_100ED0EC8);
    sub_100501F44(v43, type metadata accessor for ArtworkImage.Info);
    goto LABEL_12;
  }

  sub_1000095E8(v8, &unk_10119F000, &qword_100EC31D0);
  v41 = 1;
  v40 = v91;
LABEL_13:
  v68 = sub_10010FC20(&qword_101193628, &qword_100ED0F78);
  return (*(*(v68 - 8) + 56))(v40, v41, 1, v68);
}

double sub_1004F9744@<D0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v53 = a1[4];
  v54 = v5;
  v6 = a1[7];
  v55 = a1[6];
  v56 = v6;
  v7 = a1[1];
  v49 = *a1;
  v50 = v7;
  v8 = a1[3];
  v51 = a1[2];
  v52 = v8;
  v63 = v55;
  v64 = v6;
  v61 = v53;
  v62 = v5;
  v59 = v51;
  v60 = v8;
  v57 = v49;
  v58 = v7;
  if (sub_1000D8FA0(&v57) == 1)
  {
    if (qword_10117F7E8 != -1)
    {
      swift_once();
    }

    v9 = xmmword_101192E58;
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa, &unk_100ED0A58);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v17 = *(&v32 + 1);
    v18 = v32;
    v16 = v33;
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v10 = a2[6];
    LOBYTE(v31[0]) = *(a2 + 40);
    *(&v31[0] + 1) = v10;
    sub_10010FC20(&unk_101197960, &qword_100EC0DA0);
    State.projectedValue.getter();
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v20[0] = 1;
    State.init(wrappedValue:)();
    v32 = v9;
    *&v33 = v18;
    *(&v33 + 1) = v17;
    *v34 = v16;
    *&v34[8] = v39;
    *&v34[24] = v40;
    *&v34[40] = v21;
    v34[56] = v22;
    *&v34[60] = *(v31 + 3);
    *&v34[57] = v31[0];
    v35 = v21;
    LOBYTE(v36) = v22;
    DWORD1(v36) = *&v20[3];
    *(&v36 + 1) = *v20;
    BYTE8(v36) = v31[0];
    HIDWORD(v36) = *&v19[3];
    *(&v36 + 9) = *v19;
    *&v37 = *(&v31[0] + 1);
    sub_100502268(&v32);
    sub_100502158();
    sub_1005021AC();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v31[4] = v53;
    v31[5] = v54;
    v31[6] = v55;
    v31[7] = v56;
    v31[0] = v49;
    v31[1] = v50;
    v31[2] = v51;
    v31[3] = v52;
    sub_100501164(&v49, &v39);
    sub_100502200(v31, &v39);
    if (qword_10117F7E8 != -1)
    {
      swift_once();
    }

    *&v34[32] = v61;
    *&v34[48] = v62;
    v35 = v63;
    v36 = v64;
    v32 = v57;
    v33 = v58;
    *v34 = v59;
    *&v34[16] = v60;
    v37 = xmmword_101192E58;
    sub_10050225C(&v32);
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v48 = v38;
    v41 = *v34;
    v42 = *&v34[16];
    v43 = *&v34[32];
    v44 = *&v34[48];
    v39 = v32;
    v40 = v33;
    sub_100502158();
    sub_1005021AC();
    _ConditionalContent<>.init(storage:)();
    sub_1005011C0(&v49);
    v45 = v27;
    v46 = v28;
    v47 = v29;
    v48 = v30;
    v41 = v23;
    v42 = v24;
    v43 = v25;
    v44 = v26;
    v39 = v21;
    v40 = v22;
  }

  v11 = v46;
  *(a3 + 96) = v45;
  *(a3 + 112) = v11;
  *(a3 + 128) = v47;
  *(a3 + 144) = v48;
  v12 = v42;
  *(a3 + 32) = v41;
  *(a3 + 48) = v12;
  v13 = v44;
  *(a3 + 64) = v43;
  *(a3 + 80) = v13;
  result = *&v39;
  v15 = v40;
  *a3 = v39;
  *(a3 + 16) = v15;
  return result;
}

void sub_1004F9C08(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v3);

  *a2 = v3;
}

uint64_t sub_1004F9C88(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

double sub_1004F9D28()
{
  _s8MetadataO4ViewVMa(0);
  sub_10010FC20(&qword_101193578, &qword_100ED0C18);
  State.wrappedValue.getter();
  v0 = *(v5 + 16);

  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 userInterfaceIdiom];

  result = 48.0;
  if (v0 > 1)
  {
    result = 20.0;
  }

  v4 = 67.0;
  if (v0 > 1)
  {
    v4 = 34.0;
  }

  if (v2 != 6)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1004F9E04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_10010FC20(&qword_101193670, &qword_100ED0FD0);
  v119 = *(v3 - 8);
  v120 = v3;
  __chkstk_darwin();
  v106 = (&v96 - v4);
  sub_10010FC20(&qword_101193678, &qword_100ED0FD8);
  __chkstk_darwin();
  v121 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v123 = &v96 - v6;
  v115 = sub_10010FC20(&qword_101193680, &qword_100ED0FE0);
  v114 = *(v115 - 8);
  __chkstk_darwin();
  v105 = &v96 - v7;
  v103 = sub_10010FC20(&qword_101193688, &qword_100ED0FE8);
  __chkstk_darwin();
  v104 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v112 = &v96 - v9;
  sub_10010FC20(&qword_101193690, &qword_100ED0FF0);
  __chkstk_darwin();
  v117 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v96 - v11;
  v13 = sub_10010FC20(&qword_101193698, &qword_100ED0FF8);
  v107 = *(v13 - 8);
  __chkstk_darwin();
  v100 = &v96 - v14;
  v15 = type metadata accessor for Divider();
  v108 = *(v15 - 8);
  __chkstk_darwin();
  v101 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011936A0, &qword_100ED1000);
  __chkstk_darwin();
  v102 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v111 = &v96 - v18;
  __chkstk_darwin();
  v99 = &v96 - v19;
  v97 = sub_10010FC20(&qword_1011936A8, &qword_100ED1008);
  __chkstk_darwin();
  v98 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v96 - v21;
  sub_10010FC20(&qword_1011936B0, &qword_100ED1010);
  __chkstk_darwin();
  v113 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v96 - v24;
  v26 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v131);

  v27 = 1;
  v28 = sub_100031064(1u, v131);

  v118 = a1;
  v116 = v12;
  v124 = v25;
  v110 = v26;
  v109 = v15;
  if (v28)
  {
    v96 = v13;
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa, &unk_100ED0A58);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v29 = a1[3];
    v30 = *(a1 + 32);
    LOBYTE(v128) = *(a1 + 16);
    v129 = v29;
    v130 = v30;
    sub_10010FC20(&qword_101193590, &qword_100ED0C20);
    FocusState.projectedValue.getter();
    v128 = v125;
    v129 = v126;
    v130 = v127;
    LOBYTE(v125) = 1;
    sub_10010FC20(&qword_101192F78, &qword_100ED0960);
    sub_100502334();
    sub_100500CBC(&qword_101193448, sub_1004F61B8, &protocol conformance descriptor for <A> A?);
    v31 = v108;
    View.focused<A>(_:equals:)();

    v32 = 1;

    v33 = v109;

    v34 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v43 = &v22[*(sub_10010FC20(&qword_1011936D8, &qword_100ED1050) + 36)];
    *v43 = v34;
    *(v43 + 1) = v36;
    *(v43 + 2) = v38;
    *(v43 + 3) = v40;
    *(v43 + 4) = v42;
    v43[40] = 0;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v131);

    v44 = sub_100031064(1u, v131);

    KeyPath = swift_getKeyPath();
    v46 = swift_allocObject();
    *(v46 + 16) = !v44;
    v47 = &v22[*(v97 + 36)];
    *v47 = KeyPath;
    v47[1] = sub_1005024EC;
    v47[2] = v46;
    v48 = [objc_opt_self() currentTraitCollection];
    v49 = [v48 userInterfaceIdiom];

    v50 = v99;
    if (v49 != 6)
    {
      v51 = v101;
      Divider.init()();
      (*(v31 + 32))(v50, v51, v33);
      v32 = 0;
    }

    (*(v31 + 56))(v50, v32, 1, v33);
    v52 = v98;
    sub_1000089F8(v22, v98, &qword_1011936A8, &qword_100ED1008);
    v53 = v22;
    v54 = v111;
    sub_1000089F8(v50, v111, &qword_1011936A0, &qword_100ED1000);
    v55 = v100;
    sub_1000089F8(v52, v100, &qword_1011936A8, &qword_100ED1008);
    v56 = sub_10010FC20(&qword_1011936E0, &qword_100ED1058);
    sub_1000089F8(v54, v55 + *(v56 + 48), &qword_1011936A0, &qword_100ED1000);
    sub_1000095E8(v50, &qword_1011936A0, &qword_100ED1000);
    sub_1000095E8(v53, &qword_1011936A8, &qword_100ED1008);
    sub_1000095E8(v54, &qword_1011936A0, &qword_100ED1000);
    sub_1000095E8(v52, &qword_1011936A8, &qword_100ED1008);
    v25 = v124;
    sub_10003D17C(v55, v124, &qword_101193698, &qword_100ED0FF8);
    v27 = 0;
    a1 = v118;
    v12 = v116;
    v13 = v96;
  }

  v57 = 1;
  (*(v107 + 56))(v25, v27, 1, v13);
  v58 = sub_1004FAF7C();
  v59 = v123;
  if (v58)
  {
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa, &unk_100ED0A58);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v60 = a1[3];
    v61 = *(a1 + 32);
    LOBYTE(v128) = *(a1 + 16);
    v129 = v60;
    v130 = v61;
    sub_10010FC20(&qword_101193590, &qword_100ED0C20);
    FocusState.projectedValue.getter();
    v128 = v125;
    v129 = v126;
    v130 = v127;
    LOBYTE(v125) = 2;
    sub_10010FC20(&qword_101192F78, &qword_100ED0960);
    sub_1005022E0();
    sub_100500CBC(&qword_101193448, sub_1004F61B8, &protocol conformance descriptor for <A> A?);
    v62 = v112;
    v63 = v109;
    View.focused<A>(_:equals:)();

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v131);

    v64 = sub_100031064(2u, v131);

    v65 = swift_getKeyPath();
    v66 = swift_allocObject();
    v67 = 1;
    *(v66 + 16) = !v64;
    v68 = (v62 + *(v103 + 36));
    v69 = v108;
    *v68 = v65;
    v68[1] = sub_1005024EC;
    v68[2] = v66;
    v70 = [objc_opt_self() currentTraitCollection];
    v71 = [v70 userInterfaceIdiom];

    v72 = v102;
    if (v71 != 6)
    {
      v73 = v101;
      Divider.init()();
      (*(v69 + 32))(v72, v73, v63);
      v67 = 0;
    }

    (*(v69 + 56))(v72, v67, 1, v63);
    v74 = v112;
    v75 = v104;
    sub_1000089F8(v112, v104, &qword_101193688, &qword_100ED0FE8);
    v76 = v111;
    sub_1000089F8(v72, v111, &qword_1011936A0, &qword_100ED1000);
    v77 = v105;
    sub_1000089F8(v75, v105, &qword_101193688, &qword_100ED0FE8);
    v78 = sub_10010FC20(&qword_1011936C8, &qword_100ED1048);
    sub_1000089F8(v76, v77 + *(v78 + 48), &qword_1011936A0, &qword_100ED1000);
    sub_1000095E8(v72, &qword_1011936A0, &qword_100ED1000);
    sub_1000095E8(v74, &qword_101193688, &qword_100ED0FE8);
    sub_1000095E8(v76, &qword_1011936A0, &qword_100ED1000);
    sub_1000095E8(v75, &qword_101193688, &qword_100ED0FE8);
    v79 = v77;
    v12 = v116;
    sub_10003D17C(v79, v116, &qword_101193680, &qword_100ED0FE0);
    v57 = 0;
    v59 = v123;
    v25 = v124;
  }

  v80 = 1;
  (*(v114 + 56))(v12, v57, 1, v115);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v131);

  v81 = sub_100031064(3u, v131);

  v82 = v120;
  if (v81)
  {
    v83 = v106;
    sub_1004FB190(v106);
    v84 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v85 = v83 + *(v82 + 36);
    *v85 = v84;
    *(v85 + 1) = v86;
    *(v85 + 2) = v87;
    *(v85 + 3) = v88;
    *(v85 + 4) = v89;
    v85[40] = 0;
    sub_100502270(v83, v59);
    v80 = 0;
  }

  (*(v119 + 56))(v59, v80, 1, v82);
  v90 = v113;
  sub_1000089F8(v25, v113, &qword_1011936B0, &qword_100ED1010);
  v91 = v117;
  sub_1000089F8(v12, v117, &qword_101193690, &qword_100ED0FF0);
  v92 = v121;
  sub_1000089F8(v59, v121, &qword_101193678, &qword_100ED0FD8);
  v93 = v122;
  sub_1000089F8(v90, v122, &qword_1011936B0, &qword_100ED1010);
  v94 = sub_10010FC20(&qword_1011936B8, &qword_100ED1018);
  sub_1000089F8(v91, v93 + *(v94 + 48), &qword_101193690, &qword_100ED0FF0);
  sub_1000089F8(v92, v93 + *(v94 + 64), &qword_101193678, &qword_100ED0FD8);
  sub_1000095E8(v59, &qword_101193678, &qword_100ED0FD8);
  sub_1000095E8(v12, &qword_101193690, &qword_100ED0FF0);
  sub_1000095E8(v124, &qword_1011936B0, &qword_100ED1010);
  sub_1000095E8(v92, &qword_101193678, &qword_100ED0FD8);
  sub_1000095E8(v91, &qword_101193690, &qword_100ED0FF0);
  return sub_1000095E8(v90, &qword_1011936B0, &qword_100ED1010);
}

BOOL sub_1004FAF7C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  v0 = sub_100031064(2u, v6[0]);

  if (!v0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  v1 = sub_100031064(2u, v6[0]);

  if (v1)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  v4 = v6[0];
  v3 = v6[1];

  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

void sub_1004FB100(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v6);

  v5 = v6[1];
  *a4 = v6[0];
  a4[1] = v5;
}

uint64_t sub_1004FB190@<X0>(uint64_t *a2@<X8>)
{
  v48 = sub_10010FC20(&qword_1011936E8, &qword_100ED1080);
  __chkstk_darwin();
  v42 = (&v42 - v3);
  v45 = sub_10010FC20(&qword_1011936F0, &qword_100ED1088);
  __chkstk_darwin();
  v47 = &v42 - v4;
  v46 = sub_10010FC20(&qword_1011936F8, &qword_100ED1090);
  __chkstk_darwin();
  v6 = &v42 - v5;
  v44 = type metadata accessor for Divider();
  v7 = *(v44 - 8);
  __chkstk_darwin();
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011936A0, &qword_100ED1000);
  __chkstk_darwin();
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v42 - v11;
  __chkstk_darwin();
  v14 = &v42 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v49);

  v15 = sub_100031064(3u, v49);

  if (v15)
  {
    v42 = a2;
    _s8MetadataO5ModelCMa(0);
    sub_1005008CC(&qword_101193438, _s8MetadataO5ModelCMa, &unk_100ED0A58);
    ObservedObject.projectedValue.getter();
    swift_getKeyPath();
    ObservedObject.Wrapper.subscript.getter();

    v16 = v49;
    v17 = v50;
    v18 = v51;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v49);

    if (v49 == 1 && (v19 = [objc_opt_self() currentTraitCollection], v20 = objc_msgSend(v19, "userInterfaceIdiom"), v19, v20 != 6))
    {
      v31 = v43;
      Divider.init()();
      v32 = v31;
      v33 = v44;
      (*(v7 + 32))(v14, v32, v44);
      v22 = v33;
      v21 = 0;
    }

    else
    {
      v21 = 1;
      v22 = v44;
    }

    (*(v7 + 56))(v14, v21, 1, v22);
    sub_1000089F8(v14, v12, &qword_1011936A0, &qword_100ED1000);
    *v6 = v16;
    *(v6 + 1) = v17;
    v6[16] = v18;
    v34 = sub_10010FC20(&qword_101193720, &qword_100ED1138);
    sub_1000089F8(v12, &v6[*(v34 + 48)], &qword_1011936A0, &qword_100ED1000);
    swift_retain_n();
    swift_retain_n();
    sub_1000095E8(v12, &qword_1011936A0, &qword_100ED1000);

    sub_1000089F8(v6, v47, &qword_1011936F8, &qword_100ED1090);
    swift_storeEnumTagMultiPayload();
    sub_100020674(&qword_101193710, &qword_1011936F8, &qword_100ED1090, &protocol conformance descriptor for TupleView<A>);
    sub_100020674(&qword_101193718, &qword_1011936E8, &qword_100ED1080, &protocol conformance descriptor for TupleView<A>);
    a2 = v42;
    _ConditionalContent<>.init(storage:)();

    sub_1000095E8(v6, &qword_1011936F8, &qword_100ED1090);
    v35 = v14;
LABEL_13:
    sub_1000095E8(v35, &qword_1011936A0, &qword_100ED1000);
    v30 = 0;
    goto LABEL_14;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v49);

  if (v49 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v49);

    v23 = v50;
    if (v50)
    {
      v24 = a2;
      v25 = v49;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v49);

      if (v49 != 1)
      {

        v30 = 1;
        a2 = v24;
        goto LABEL_14;
      }

      v26 = [objc_opt_self() currentTraitCollection];
      v27 = [v26 userInterfaceIdiom];

      if (v27 == 6)
      {
        v28 = 1;
        v29 = v44;
      }

      else
      {
        v38 = v43;
        Divider.init()();
        v39 = v38;
        v29 = v44;
        (*(v7 + 32))(v10, v39, v44);
        v28 = 0;
      }

      (*(v7 + 56))(v10, v28, 1, v29);
      sub_1000089F8(v10, v12, &qword_1011936A0, &qword_100ED1000);
      v40 = v42;
      *v42 = v25;
      *(v40 + 8) = v23;
      v41 = sub_10010FC20(&qword_101193708, &qword_100ED1130);
      sub_1000089F8(v12, v40 + *(v41 + 48), &qword_1011936A0, &qword_100ED1000);

      sub_1000095E8(v12, &qword_1011936A0, &qword_100ED1000);

      sub_1000089F8(v40, v47, &qword_1011936E8, &qword_100ED1080);
      swift_storeEnumTagMultiPayload();
      sub_100020674(&qword_101193710, &qword_1011936F8, &qword_100ED1090, &protocol conformance descriptor for TupleView<A>);
      sub_100020674(&qword_101193718, &qword_1011936E8, &qword_100ED1080, &protocol conformance descriptor for TupleView<A>);
      a2 = v24;
      _ConditionalContent<>.init(storage:)();
      sub_1000095E8(v40, &qword_1011936E8, &qword_100ED1080);
      v35 = v10;
      goto LABEL_13;
    }
  }

  v30 = 1;
LABEL_14:
  v36 = sub_10010FC20(&qword_101193700, &qword_100ED1098);
  return (*(*(v36 - 8) + 56))(a2, v30, 1, v36);
}

uint64_t sub_1004FBAA8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1004FBB54();
}

uint64_t sub_1004FBB54()
{
  v1[13] = v0;
  v2 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  sub_10010FC20(&qword_101184230, &unk_100EDE0D0);
  v1[17] = swift_task_alloc();
  v3 = type metadata accessor for PlaylistCovers.Source(0);
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for MainActor();
  v1[25] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v5;
  v1[27] = v4;

  return _swift_task_switch(sub_1004FBD10, v5, v4);
}

uint64_t sub_1004FBD10()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[17];

    sub_1000095E8(v4, &qword_101184230, &unk_100EDE0D0);

    v5 = v0[1];

    return v5();
  }

  v7 = v0[22];
  v8 = v0[23];
  sub_100501D04(v0[17], v8, type metadata accessor for PlaylistCovers.Source);
  sub_100501D6C(v8, v7, type metadata accessor for PlaylistCovers.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    v11 = v0[20];
    sub_100501D6C(v10, v11, type metadata accessor for PlaylistCovers.Source);
    v12 = *(*v11 + 16);

    if (!v12)
    {
      v0[32] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v14;
      v0[33] = v13;
      v0[34] = v14;
      v16 = sub_1004FC41C;
LABEL_10:

      return _swift_task_switch(v16, v13, v15);
    }
  }

  else
  {
    v17 = v0[21];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    sub_100501D6C(v10, v17, type metadata accessor for PlaylistCovers.Source);
    (*(v19 + 32))(v18, v17, v20);
    sub_100020674(&qword_1011913B0, &unk_1011841D0, &qword_100EC5DB0, &protocol conformance descriptor for MusicItemCollection<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v0[10] == v0[11])
    {
      v0[28] = static MainActor.shared.getter();
      v13 = dispatch thunk of Actor.unownedExecutor.getter();
      v15 = v21;
      v0[29] = v13;
      v0[30] = v21;
      v16 = sub_1004FC0BC;
      goto LABEL_10;
    }

    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  v22 = swift_task_alloc();
  v0[36] = v22;
  *v22 = v0;
  v22[1] = sub_1004FC75C;
  v24 = v0[23];

  return static PlaylistCovers.recipeColorsForSource(_:)(v24, v23);
}

uint64_t sub_1004FC0BC()
{
  v1 = v0[13];
  v2 = (v1 + *(_s8MetadataO4ViewVMa(0) + 36));
  v4 = *v2;
  v3 = v2[1];
  v0[6] = v4;
  v0[7] = v3;
  v0[12] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011935B8, &qword_100ED0D28);
  State.wrappedValue.setter();
  v5 = swift_task_alloc();
  v0[31] = v5;
  *v5 = v0;
  v5[1] = sub_1004FC1A0;

  return sub_1004FD358();
}

uint64_t sub_1004FC1A0()
{
  v1 = *v0;

  v2 = *(v1 + 240);
  v3 = *(v1 + 232);

  return _swift_task_switch(sub_1004FC2C0, v3, v2);
}

uint64_t sub_1004FC2C0()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_1004FC324, v1, v2);
}

uint64_t sub_1004FC324()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];

  (*(v4 + 8))(v3, v5);
  sub_100501F44(v2, type metadata accessor for PlaylistCovers.Source);
  sub_100501F44(v1, type metadata accessor for PlaylistCovers.Source);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1004FC41C()
{
  v1 = v0[13];
  v2 = (v1 + *(_s8MetadataO4ViewVMa(0) + 36));
  v4 = *v2;
  v3 = v2[1];
  v0[4] = v4;
  v0[5] = v3;
  v0[9] = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011935B8, &qword_100ED0D28);
  State.wrappedValue.setter();
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_1004FC500;

  return sub_1004FD358();
}

uint64_t sub_1004FC500()
{
  v1 = *v0;

  v2 = *(v1 + 272);
  v3 = *(v1 + 264);

  return _swift_task_switch(sub_1004FC620, v3, v2);
}

uint64_t sub_1004FC620()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return _swift_task_switch(sub_1004FC684, v1, v2);
}

uint64_t sub_1004FC684()
{
  v1 = v0[22];
  v2 = v0[23];

  sub_100501F44(v2, type metadata accessor for PlaylistCovers.Source);
  sub_100501F44(v1, type metadata accessor for PlaylistCovers.Source);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1004FC75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *v4;
  v6[37] = a1;
  v6[38] = a2;
  v6[39] = a3;
  v6[40] = a4;

  v7 = v5[27];
  v8 = v5[26];

  return _swift_task_switch(sub_1004FC888, v8, v7);
}

uint64_t sub_1004FC888()
{
  v1 = static PlaylistCovers.Expression.allCases.getter();
  v0[41] = v1;
  sub_100501DD4();
  v2 = [swift_getObjCClassFromMetadata() preferredFormat];
  v0[42] = v2;
  v3 = swift_task_alloc();
  v0[43] = v3;
  *v3 = v0;
  v3[1] = sub_1004FC96C;
  v4 = v0[39];
  v5 = v0[40];
  v6 = v0[37];
  v7 = v0[38];

  return static PlaylistCovers.coverRepresentations(size:expressions:colors:graphicsFormat:)(v1, v6, v7, v4, v5, v2, 180.0, 180.0);
}

uint64_t sub_1004FC96C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  *(*v1 + 352) = a1;

  v4 = *(v2 + 216);
  v5 = *(v2 + 208);

  return _swift_task_switch(sub_1004FCAD0, v5, v4);
}

uint64_t sub_1004FCAD0()
{
  v1 = v0[44];
  v2 = v0[13];
  v3 = (v2 + *(_s8MetadataO4ViewVMa(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v0[2] = v5;
  v0[3] = v4;
  v0[8] = v1;
  sub_10010FC20(&qword_1011935B8, &qword_100ED0D28);
  State.wrappedValue.setter();
  v6 = swift_task_alloc();
  v0[45] = v6;
  *v6 = v0;
  v6[1] = sub_1004FCBB8;

  return sub_1004FD358();
}

uint64_t sub_1004FCBB8()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return _swift_task_switch(sub_1004FCCD8, v3, v2);
}

uint64_t sub_1004FCCD8()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[22];
  v6 = v0[23];

  sub_100501F44(v6, type metadata accessor for PlaylistCovers.Source);
  sub_100501F44(v5, type metadata accessor for PlaylistCovers.Source);

  v7 = v0[1];

  return v7();
}

double sub_1004FCDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(_s8MetadataO4ViewVMa(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100501D6C(a3, v6, _s8MetadataO4ViewVMa);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100501D04(v6, v12 + v11, _s8MetadataO4ViewVMa);
  sub_1001F4CB8(0, 0, v8, &unk_100ED0D70, v12);

  return result;
}

uint64_t sub_1004FCFA8()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1004FBB54();
}

double sub_1004FD054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(_s8MetadataO4ViewVMa(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v18 - v7;
  v9 = String.trim()();

  v10 = (v9._object >> 56) & 0xF;
  if ((v9._object & 0x2000000000000000) == 0)
  {
    v10 = v9._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    goto LABEL_7;
  }

  v11 = String.trim()();

  v13 = (v11._object >> 56) & 0xF;
  if ((v11._object & 0x2000000000000000) == 0)
  {
    v13 = v11._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
LABEL_7:
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    sub_100501D6C(a3, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), _s8MetadataO4ViewVMa);
    type metadata accessor for MainActor();
    v15 = static MainActor.shared.getter();
    v16 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = &protocol witness table for MainActor;
    sub_100501D04(v6, v17 + v16, _s8MetadataO4ViewVMa);
    sub_1001F4CB8(0, 0, v8, &unk_100ED0D60, v17);
  }

  return result;
}

uint64_t sub_1004FD2AC()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1002AC1CC;

  return sub_1004FD358();
}

uint64_t sub_1004FD358()
{
  v1[218] = v0;
  v2 = _s8MetadataO4ViewVMa(0);
  v1[219] = v2;
  v3 = *(v2 - 8);
  v1[220] = v3;
  v1[221] = *(v3 + 64);
  v1[222] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v1[223] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[224] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004FD48C, v5, v4);
}

uint64_t sub_1004FD48C()
{
  v100 = v0;
  v1 = v0 + 152;
  v2 = *(v0 + 1752);
  v3 = *(v0 + 1744);

  v4 = (v3 + *(v2 + 36));
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 1672) = v6;
  *(v0 + 1680) = v5;
  sub_10010FC20(&qword_1011935B8, &qword_100ED0D28);
  State.wrappedValue.getter();
  v7 = *(v0 + 1720);
  v92 = v7;
  v8 = swift_allocObject();
  sub_10010FC20(&qword_101191F70, &qword_100ECF108);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  static PlaylistCovers.CarouselItem.picker.getter((v0 + 424));
  v10 = *(v0 + 536);
  *(v9 + 128) = *(v0 + 520);
  *(v9 + 144) = v10;
  *(v9 + 160) = *(v0 + 552);
  v11 = *(v0 + 472);
  *(v9 + 64) = *(v0 + 456);
  *(v9 + 80) = v11;
  v12 = *(v0 + 504);
  *(v9 + 96) = *(v0 + 488);
  *(v9 + 112) = v12;
  v13 = *(v0 + 440);
  *(v9 + 32) = *(v0 + 424);
  *(v9 + 48) = v13;
  *(v8 + 16) = v9;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter((v0 + 560));

  v15 = *(v0 + 624);
  v14 = *(v0 + 640);
  *(v0 + 232) = v14;
  v17 = *(v0 + 560);
  v16 = *(v0 + 576);
  *(v0 + 168) = v16;
  v18 = *(v0 + 656);
  v19 = *(v0 + 672);
  *(v0 + 248) = v18;
  *(v0 + 264) = v19;
  v20 = *(v0 + 688);
  *(v0 + 280) = v20;
  v21 = *(v0 + 592);
  v22 = *(v0 + 608);
  *(v0 + 184) = v21;
  *(v0 + 200) = v22;
  *(v0 + 216) = v15;
  *(v0 + 152) = v17;
  *(v0 + 112) = v18;
  *(v0 + 128) = v19;
  *(v0 + 144) = v20;
  *(v0 + 48) = v21;
  *(v0 + 64) = v22;
  *(v0 + 80) = v15;
  *(v0 + 96) = v14;
  *(v0 + 16) = v17;
  *(v0 + 32) = v16;
  if (sub_1000D8FCC((v0 + 16)) == 1)
  {
    v91 = v7;
    goto LABEL_23;
  }

  v23 = *(v0 + 128);
  *(v0 + 384) = *(v0 + 112);
  *(v0 + 400) = v23;
  *(v0 + 416) = *(v0 + 144);
  v24 = *(v0 + 64);
  *(v0 + 320) = *(v0 + 48);
  *(v0 + 336) = v24;
  v25 = *(v0 + 96);
  *(v0 + 352) = *(v0 + 80);
  *(v0 + 368) = v25;
  v26 = *(v0 + 32);
  *(v0 + 288) = *(v0 + 16);
  *(v0 + 304) = v26;
  PlaylistCovers.CarouselItem.cover.getter((v0 + 1080));
  v27 = *(v0 + 1160);
  *(v0 + 1016) = *(v0 + 1144);
  *(v0 + 1032) = v27;
  v28 = *(v0 + 1192);
  *(v0 + 1048) = *(v0 + 1176);
  *(v0 + 1064) = v28;
  v29 = *(v0 + 1096);
  *(v0 + 952) = *(v0 + 1080);
  *(v0 + 968) = v29;
  v30 = *(v0 + 1128);
  *(v0 + 984) = *(v0 + 1112);
  *(v0 + 1000) = v30;
  if (sub_1000D8FA0((v0 + 952)) != 1)
  {
    v31 = *(v0 + 992);
    *(v0 + 1504) = *(v0 + 976);
    *(v0 + 1520) = v31;
    *(v0 + 1536) = *(v0 + 1008);
    *(v0 + 1552) = *(v0 + 1024);
    sub_1000089F8(v0 + 1504, v0 + 1560, &qword_1011935A8, &qword_100EDE2B0);
    sub_1000095E8(v0 + 1080, &unk_1011842B8, &qword_100EBFE38);
    v32 = *(v0 + 1512);
    if (v32)
    {
      v33 = *(v0 + 1504);
      v34 = *(v0 + 1520);
      v35 = *(v0 + 1528);
      v36 = *(v0 + 1536);
      v37 = *(v0 + 1544);
      v38 = *(v0 + 1552);
      *(v0 + 1336) = v33;
      *(v0 + 1344) = v32;
      v89 = v35;
      v90 = v34;
      *(v0 + 1352) = v34;
      *(v0 + 1360) = v35;
      v87 = v37;
      v88 = v36;
      *(v0 + 1368) = v36;
      *(v0 + 1376) = v37;
      v86 = v38;
      *(v0 + 1384) = v38;
      v39 = *(v7 + 2);
      if (v39)
      {
        v85 = v33;
        v9 = 0;
        v40 = 32;
        while (v9 < *(v7 + 2))
        {
          v41 = *&v7[v40];
          v42 = *&v7[v40 + 16];
          v43 = *&v7[v40 + 32];
          *(v0 + 1440) = *&v7[v40 + 48];
          *(v0 + 1408) = v42;
          *(v0 + 1424) = v43;
          *(v0 + 1392) = v41;
          sub_100501434(v0 + 1392, v0 + 1616);
          v44 = static PlaylistCovers.Cover.Representation.== infix(_:_:)(v0 + 1392, v0 + 1336);
          sub_100501490(v0 + 1392);
          if (v44)
          {
            sub_1004F4150(v9, v93);
            v63 = v95;
            v64 = v96;
            v65 = v97;
            v66 = v98;
            v67 = v99;

            v7 = v92;
LABEL_17:
            v1 = v0 + 152;
            v33 = v85;
            goto LABEL_18;
          }

          ++v9;
          v40 += 56;
          if (v39 == v9)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_29;
      }

LABEL_18:
      v68 = *(v7 + 2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v68 >= *(v7 + 3) >> 1)
      {
        v7 = sub_10049A77C(isUniquelyReferenced_nonNull_native, v68 + 1, 1, v7);
      }

      v91 = v7;
      *(v0 + 1448) = v33;
      *(v0 + 1456) = v32;
      *(v0 + 1464) = v90;
      *(v0 + 1472) = v89;
      *(v0 + 1480) = v88;
      *(v0 + 1488) = v87;
      *(v0 + 1496) = v86;
      sub_1003BE608(0, 0, 1, (v0 + 1448));
      sub_1000095E8(v0 + 1504, &qword_1011935A8, &qword_100EDE2B0);
LABEL_22:
      sub_1000095E8(v1, &qword_1011842B0, &qword_100EBFE30);
      goto LABEL_23;
    }
  }

  v45 = *(v0 + 96);
  *(v0 + 888) = *(v0 + 80);
  *(v0 + 904) = v45;
  v46 = *(v0 + 128);
  *(v0 + 920) = *(v0 + 112);
  *(v0 + 936) = v46;
  v47 = *(v0 + 32);
  *(v0 + 824) = *(v0 + 16);
  *(v0 + 840) = v47;
  v48 = *(v0 + 64);
  *(v0 + 856) = *(v0 + 48);
  *(v0 + 872) = v48;
  sub_10001DBDC((v0 + 1208));
  v49 = *(v0 + 1288);
  *(v0 + 760) = *(v0 + 1272);
  *(v0 + 776) = v49;
  v50 = *(v0 + 1320);
  *(v0 + 792) = *(v0 + 1304);
  *(v0 + 808) = v50;
  v51 = *(v0 + 1224);
  *(v0 + 696) = *(v0 + 1208);
  *(v0 + 712) = v51;
  v52 = *(v0 + 1256);
  *(v0 + 728) = *(v0 + 1240);
  *(v0 + 744) = v52;
  v91 = v7;
  if (static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)((v0 + 824), (v0 + 696)))
  {
    goto LABEL_22;
  }

  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v9;
  if ((v53 & 1) == 0)
  {
LABEL_29:
    v9 = sub_10049A65C(0, *(v9 + 16) + 1, 1, v9);
    *(v8 + 16) = v9;
  }

  v55 = *(v9 + 16);
  v54 = *(v9 + 24);
  if (v55 >= v54 >> 1)
  {
    v9 = sub_10049A65C((v54 > 1), v55 + 1, 1, v9);
  }

  *(v9 + 16) = v55 + 1;
  v56 = v9 + 136 * v55;
  *(v56 + 32) = *(v0 + 288);
  v57 = *(v0 + 304);
  v58 = *(v0 + 320);
  v59 = *(v0 + 352);
  *(v56 + 80) = *(v0 + 336);
  *(v56 + 96) = v59;
  *(v56 + 48) = v57;
  *(v56 + 64) = v58;
  v60 = *(v0 + 368);
  v61 = *(v0 + 384);
  v62 = *(v0 + 400);
  *(v56 + 160) = *(v0 + 416);
  *(v56 + 128) = v61;
  *(v56 + 144) = v62;
  *(v56 + 112) = v60;
  *(v8 + 16) = v9;
LABEL_23:
  v70 = v8;
  v71 = (*(v0 + 1744) + *(*(v0 + 1752) + 44));
  v72 = *v71;
  v73 = v71[1];
  *(v0 + 1688) = *v71;
  *(v0 + 1696) = v73;
  sub_10010FC20(&qword_1011935C0, &qword_100ED0D30);
  State.wrappedValue.getter();
  if (*(v0 + 1728))
  {
    Task.cancel()();
  }

  v74 = *(v0 + 1784);
  v75 = *(v0 + 1776);
  v76 = *(v0 + 1768);
  v77 = *(v0 + 1760);
  v78 = *(v0 + 1744);
  static TaskPriority.userInitiated.getter();
  v79 = type metadata accessor for TaskPriority();
  (*(*(v79 - 8) + 56))(v74, 0, 1, v79);
  sub_100501D6C(v78, v75, _s8MetadataO4ViewVMa);
  v80 = (*(v77 + 80) + 40) & ~*(v77 + 80);
  v81 = swift_allocObject();
  v81[2] = 0;
  v81[3] = 0;
  v81[4] = v91;
  sub_100501D04(v75, v81 + v80, _s8MetadataO4ViewVMa);
  *(v81 + ((v76 + v80 + 7) & 0xFFFFFFFFFFFFFFF8)) = v70;

  v82 = sub_10035EB10(0, 0, v74, &unk_100ED0D40, v81);
  sub_1000095E8(v74, &unk_101181520, &qword_100EBCC60);
  *(v0 + 1704) = v72;
  *(v0 + 1712) = v73;
  *(v0 + 1736) = v82;
  State.wrappedValue.setter();

  v83 = *(v0 + 8);

  return v83();
}

double sub_1004FDBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(_s8MetadataO4ViewVMa(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100501D6C(a3, v6, _s8MetadataO4ViewVMa);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100501D04(v6, v12 + v11, _s8MetadataO4ViewVMa);
  sub_1001F4CB8(0, 0, v8, &unk_100ED0D18, v12);

  return result;
}

uint64_t sub_1004FDDB4()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001AB600;

  return sub_1004FD358();
}

void sub_1004FDE60(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for ScrollPosition();
  __chkstk_darwin();
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  if (v8 != v9)
  {
    v27[1] = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v44);

    v108 = v50;
    v109 = v51;
    v110 = v52;
    v104 = v46;
    v105 = v47;
    v107 = v49;
    v106 = v48;
    v103 = v45;
    v102 = v44;
    v111[6] = v50;
    v111[7] = v51;
    v112 = v52;
    v111[2] = v46;
    v111[3] = v47;
    v111[5] = v49;
    v111[4] = v48;
    v111[1] = v45;
    v111[0] = v44;
    if (sub_1000D8FCC(v111) == 1)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v99 = v108;
    v100 = v109;
    v95 = v104;
    v96 = v105;
    v98 = v107;
    v97 = v106;
    v94 = v103;
    v93 = v102;
    v61[3] = v106;
    v62 = v107;
    v63 = v108;
    v64 = v109;
    v60 = v102;
    v61[0] = v103;
    v101 = v110;
    v61[1] = v104;
    v61[2] = v105;
    UIScreen.Dimensions.size.getter();
    sub_10001DBDC(&v66);
    v79 = v70;
    v80 = v71;
    v81 = v72;
    v82 = v73;
    v75 = v66;
    v76 = v67;
    v77 = v68;
    v78 = v69;
    UIScreen.Dimensions.size.getter();
    v48 = v61[3];
    v49 = v62;
    v50 = v63;
    v51 = v64;
    v44 = v60;
    v45 = v61[0];
    v46 = v61[1];
    v47 = v61[2];
    v54 = v77;
    v55 = v78;
    v52 = v75;
    v53 = v76;
    v58 = v81;
    v59 = v82;
    v56 = v79;
    v57 = v80;
    v86 = v61[1];
    v87 = v61[2];
    v84 = v60;
    v85 = v61[0];
    v91 = v64;
    v90 = v63;
    v89 = v62;
    v88 = v61[3];
    if (sub_1000D8FCC(&v84) == 1)
    {
      v32 = v56;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      v28 = v52;
      v29 = v53;
      v30 = v54;
      v31 = v55;
      if (sub_1000D8FCC(&v28) == 1)
      {
        v136 = v48;
        v137 = v49;
        v138 = v50;
        v139 = v51;
        v132 = v44;
        v133 = v45;
        v134 = v46;
        v135 = v47;
        sub_100501164(&v93, v131);
        sub_1000095E8(&v132, &qword_1011935B0, &qword_100ED0D08);
        v10 = 1;
        goto LABEL_10;
      }
    }

    else
    {
      v32 = v56;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      v28 = v52;
      v29 = v53;
      v30 = v54;
      v31 = v55;
      if (sub_1000D8FCC(&v28) != 1)
      {
        v117 = v56;
        v118 = v57;
        v119 = v58;
        v120 = v59;
        v113 = v52;
        v114 = v53;
        v115 = v54;
        v116 = v55;
        v134 = v54;
        v135 = v55;
        v132 = v52;
        v133 = v53;
        v138 = v58;
        v139 = v59;
        v136 = v56;
        v137 = v57;
        v131[3] = v47;
        v131[2] = v46;
        v131[1] = v45;
        v131[0] = v44;
        v131[7] = v51;
        v131[6] = v50;
        v131[5] = v49;
        v131[4] = v48;
        sub_100501164(&v93, &v121);
        sub_100501164(&v93, &v121);
        v10 = static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(v131, &v132);
        sub_1000095E8(&v113, &qword_1011935B0, &qword_100ED0D08);
        sub_1005011C0(&v93);
        v125 = v48;
        v126 = v49;
        v127 = v50;
        v128 = v51;
        v121 = v44;
        v122 = v45;
        v123 = v46;
        v124 = v47;
        sub_1000095E8(&v121, &qword_1011935B0, &qword_100ED0D08);
LABEL_10:
        if (v8 - v9 >= 0)
        {
          v11 = v8 - v9;
        }

        else
        {
          v11 = v9 - v8;
        }

        if (v11 == 1 && ((v12 = static PlaylistCovers.Expression.allCases.getter()[2], , v9 >= v8) ? (v13 = v8) : (v13 = v9), v13 == v12 + 1))
        {
          if ((v10 & 1) == 0)
          {
            swift_getKeyPath();
            swift_getKeyPath();
            static Published.subscript.getter(&v44);

            v90 = v50;
            v91 = v51;
            v92 = v52;
            v86 = v46;
            v87 = v47;
            v89 = v49;
            v88 = v48;
            v84 = v44;
            v85 = v45;
            v99 = v50;
            v100 = v51;
            v101 = v52;
            v95 = v46;
            v96 = v47;
            v98 = v49;
            v97 = v48;
            v94 = v45;
            v93 = v44;
            if (sub_1000D8FCC(&v93) != 1)
            {
              v27[0] = v3;
              v50 = v90;
              v51 = v91;
              *&v52 = v92;
              v46 = v86;
              v47 = v87;
              v48 = v88;
              v49 = v89;
              v44 = v84;
              v45 = v85;
              PlaylistCovers.CarouselItem.cover.getter(&v113);
              sub_1000095E8(&v84, &qword_1011842B0, &qword_100EBFE30);
              v70 = v117;
              v71 = v118;
              v72 = v119;
              v73 = v120;
              v66 = v113;
              v67 = v114;
              v68 = v115;
              v69 = v116;
              if (sub_1000D8FA0(&v66) != 1)
              {
                if (!v68)
                {
                  sub_1000095E8(&v102, &qword_1011842B0, &qword_100EBFE30);
LABEL_44:
                  v16 = &unk_1011842B8;
                  v17 = &qword_100EBFE38;
                  v18 = &v113;
                  goto LABEL_40;
                }

                v14 = a2 + 32;
                v15 = BYTE8(v67);
                do
                {
                  v20 = *(v14 + 112);
                  v34 = *(v14 + 96);
                  v35 = v20;
                  *&v36 = *(v14 + 128);
                  v21 = *(v14 + 48);
                  v30 = *(v14 + 32);
                  v31 = v21;
                  v22 = *(v14 + 80);
                  v32 = *(v14 + 64);
                  v33 = v22;
                  v23 = *(v14 + 16);
                  v28 = *v14;
                  v29 = v23;
                  PlaylistCovers.CarouselItem.cover.getter(&v121);
                  v61[3] = v125;
                  v62 = v126;
                  v63 = v127;
                  v64 = v128;
                  v60 = v121;
                  v61[0] = v122;
                  v61[1] = v123;
                  v61[2] = v124;
                  if (sub_1000D8FA0(&v60) != 1)
                  {
                    v129[0] = *(v61 + 8);
                    v129[1] = *(&v61[1] + 8);
                    v129[2] = *(&v61[2] + 8);
                    v130 = *(&v61[3] + 1);
                    sub_100500E4C(&v28, &v75);
                    sub_1000089F8(v129, &v75, &qword_1011935A8, &qword_100EDE2B0);
                    sub_1000095E8(&v121, &unk_1011842B8, &qword_100EBFE38);
                    if (*(&v129[0] + 1))
                    {
                      v24 = v129[0];
                      sub_1000095E8(v129, &qword_1011935A8, &qword_100EDE2B0);
                      if (v24 == v15)
                      {
                        *&v75 = PlaylistCovers.CarouselItem.id.getter();
                        *(&v75 + 1) = v25;
                        _s8MetadataO4ViewVMa(0);
                        sub_10010FC20(&qword_1011933C0, &qword_100ED0978);
                        State.wrappedValue.getter();
                        ScrollPosition.scrollTo<A>(id:anchor:)();

                        State.wrappedValue.setter();
                        sub_1000095E8(&v102, &qword_1011842B0, &qword_100EBFE30);
                        sub_100500EA8(&v28);
                        goto LABEL_44;
                      }
                    }

                    sub_100500EA8(&v28);
                  }

                  v14 += 136;
                  --v9;
                }

                while (v9);
                sub_1000095E8(&v113, &unk_1011842B8, &qword_100EBFE38);
              }
            }

            goto LABEL_30;
          }
        }

        else if ((v10 & 1) == 0)
        {
          goto LABEL_26;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter(&v44);

        if (v44)
        {

          Array.subscript.getter(&type metadata for PlaylistCovers.CarouselItem, &v84);
          v99 = v90;
          v100 = v91;
          v95 = v86;
          v96 = v87;
          v98 = v89;
          v97 = v88;
          v94 = v85;
          v93 = v84;
          v34 = v90;
          v35 = v91;
          v30 = v86;
          v31 = v87;
          v32 = v88;
          v33 = v89;
          v101 = v92;
          *&v36 = v92;
          v28 = v84;
          v29 = v85;
          if (sub_1000D8FCC(&v28) != 1)
          {
            v50 = v34;
            v51 = v35;
            *&v52 = v36;
            v46 = v30;
            v47 = v31;
            v48 = v32;
            v49 = v33;
            v44 = v28;
            v45 = v29;
            *&v84 = PlaylistCovers.CarouselItem.id.getter();
            *(&v84 + 1) = v26;
            _s8MetadataO4ViewVMa(0);
            sub_10010FC20(&qword_1011933C0, &qword_100ED0978);
            State.wrappedValue.getter();
            ScrollPosition.scrollTo<A>(id:anchor:)();

            State.wrappedValue.setter();
            sub_1000095E8(&v102, &qword_1011842B0, &qword_100EBFE30);
            v18 = &v93;
            goto LABEL_39;
          }
        }

LABEL_26:
        Array.subscript.getter(&type metadata for PlaylistCovers.CarouselItem, &v75);
        v99 = v81;
        v100 = v82;
        v95 = v77;
        v96 = v78;
        v98 = v80;
        v97 = v79;
        v94 = v76;
        v93 = v75;
        v34 = v81;
        v35 = v82;
        v30 = v77;
        v31 = v78;
        v32 = v79;
        v33 = v80;
        v101 = v83;
        *&v36 = v83;
        v28 = v75;
        v29 = v76;
        if (sub_1000D8FCC(&v28) == 1)
        {
          Array.subscript.getter(&type metadata for PlaylistCovers.CarouselItem, &v84);
        }

        else
        {
          v90 = v99;
          v91 = v100;
          v92 = v101;
          v86 = v95;
          v87 = v96;
          v89 = v98;
          v88 = v97;
          v84 = v93;
          v85 = v94;
        }

        v63 = v90;
        v64 = v91;
        v61[1] = v86;
        v61[2] = v87;
        v61[3] = v88;
        v62 = v89;
        v60 = v84;
        v61[0] = v85;
        v72 = v90;
        v73 = v91;
        v68 = v86;
        v69 = v87;
        v70 = v88;
        v71 = v89;
        v65 = v92;
        v74 = v92;
        v66 = v84;
        v67 = v85;
        if (sub_1000D8FCC(&v66) == 1)
        {
LABEL_30:
          v16 = &qword_1011842B0;
          v17 = &qword_100EBFE30;
          v18 = &v102;
LABEL_40:
          sub_1000095E8(v18, v16, v17);
          return;
        }

        v50 = v72;
        v51 = v73;
        *&v52 = v74;
        v46 = v68;
        v47 = v69;
        v48 = v70;
        v49 = v71;
        v44 = v66;
        v45 = v67;
        *&v121 = PlaylistCovers.CarouselItem.id.getter();
        *(&v121 + 1) = v19;
        _s8MetadataO4ViewVMa(0);
        sub_10010FC20(&qword_1011933C0, &qword_100ED0978);
        State.wrappedValue.getter();
        ScrollPosition.scrollTo<A>(id:anchor:)();

        State.wrappedValue.setter();
        sub_1000095E8(&v102, &qword_1011842B0, &qword_100EBFE30);
        v18 = &v60;
LABEL_39:
        v16 = &qword_1011842B0;
        v17 = &qword_100EBFE30;
        goto LABEL_40;
      }
    }

    v40 = v56;
    v41 = v57;
    v42 = v58;
    v43 = v59;
    v36 = v52;
    v37 = v53;
    v38 = v54;
    v39 = v55;
    v32 = v48;
    v33 = v49;
    v34 = v50;
    v35 = v51;
    v28 = v44;
    v29 = v45;
    v30 = v46;
    v31 = v47;
    sub_100501164(&v93, &v132);
    sub_1000095E8(&v28, &unk_10119EFE0, &qword_100ED0D00);
    v10 = 0;
    goto LABEL_10;
  }
}

void sub_1004FEAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ScrollPosition.viewID<A>(type:)();
  v4 = v50[0];
  v5 = (a3 + *(_s8MetadataO4ViewVMa(0) + 40));
  v7 = *v5;
  v6 = v5[1];
  *&v50[0] = v7;
  *(&v50[0] + 1) = v6;

  sub_10010FC20(&qword_101193578, &qword_100ED0C18);
  State.wrappedValue.getter();
  v8 = v41;
  v9 = *(v41 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = 32;
    while (v10 < *(v8 + 16))
    {
      v50[0] = *(v8 + v11);
      v12 = *(v8 + v11 + 16);
      v13 = *(v8 + v11 + 32);
      v14 = *(v8 + v11 + 64);
      v50[3] = *(v8 + v11 + 48);
      v50[4] = v14;
      v50[1] = v12;
      v50[2] = v13;
      v15 = *(v8 + v11 + 80);
      v16 = *(v8 + v11 + 96);
      v17 = *(v8 + v11 + 112);
      v51 = *(v8 + v11 + 128);
      v50[6] = v16;
      v50[7] = v17;
      v50[5] = v15;
      v37 = *(v8 + v11 + 80);
      v38 = *(v8 + v11 + 96);
      v39 = *(v8 + v11 + 112);
      v40 = *(v8 + v11 + 128);
      v33 = *(v8 + v11 + 16);
      v34 = *(v8 + v11 + 32);
      v35 = *(v8 + v11 + 48);
      v36 = *(v8 + v11 + 64);
      v32 = *(v8 + v11);
      sub_100500E4C(v50, &v23);
      v18 = PlaylistCovers.CarouselItem.id.getter();
      v20 = v19;
      if (*(&v4 + 1))
      {
        v21 = v18;
        v29 = v38;
        v30 = v39;
        v31 = v40;
        v25 = v34;
        v26 = v35;
        v27 = v36;
        v28 = v37;
        v23 = v32;
        v24 = v33;
        UIScreen.Dimensions.size.getter();
        if (v4 == __PAIR128__(v20, v21))
        {

LABEL_13:

          v47 = v29;
          v48 = v30;
          v49 = v31;
          v43 = v25;
          v44 = v26;
          v45 = v27;
          v46 = v28;
          v41 = v23;
          v42 = v24;
          goto LABEL_14;
        }

        v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v22)
        {

          goto LABEL_13;
        }

        sub_100500EA8(v50);
      }

      else
      {
        sub_100500EA8(v50);
      }

      ++v10;
      v11 += 136;
      if (v9 == v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    sub_100501134(&v41);
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v47;
    v39 = v48;
    v40 = v49;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v32 = v41;
    v33 = v42;
    static Published.subscript.setter();
  }
}

uint64_t sub_1004FED90(uint64_t a1, char *a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1004FEEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6[7] = v7;
  v6[8] = *(v7 + 64);
  v6[9] = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1004FEFE0, 0, 0);
}

uint64_t sub_1004FEFE0()
{
  *(v0 + 88) = type metadata accessor for MainActor();
  *(v0 + 96) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004FF078, v2, v1);
}

uint64_t sub_1004FF078()
{
  v1 = *(v0 + 40);

  *(v0 + 104) = *(v1 + 8);

  return _swift_task_switch(sub_1004FF0EC, 0, 0);
}

uint64_t sub_1004FF0EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v0 + 2);

  v2 = v0[2];
  v1 = v0[3];
  v0[14] = v1;
  v3 = PlaylistCovers.Specs.coverSize.unsafeMutableAddressor();
  v4 = *v3;
  v5 = v3[1];
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1004FF1FC;
  v7 = v0[4];

  return static PlaylistCovers.carouselItems(from:playlistTitle:size:)(v7, v2, v1, v4, v5);
}

uint64_t sub_1004FF1FC(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return _swift_task_switch(sub_1004FF31C, 0, 0);
}

uint64_t sub_1004FF31C(__n128 a1)
{
  v2 = static Task<>.isCancelled.getter();
  v3 = v1[16];
  if (v2)
  {
  }

  else
  {
    v4 = v1[10];
    v6 = v1[8];
    v5 = v1[9];
    v7 = v1[6];
    v8 = v1[7];
    v9 = v1[5];
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_100501D6C(v9, v5, _s8MetadataO4ViewVMa);

    v11 = static MainActor.shared.getter();
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = v11;
    *(v14 + 24) = &protocol witness table for MainActor;
    sub_100501D04(v5, v14 + v12, _s8MetadataO4ViewVMa);
    *(v14 + v13) = v7;
    *(v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
    sub_1001F4CB8(0, 0, v4, &unk_100ED0D50, v14);
  }

  v15 = v1[1];

  return v15();
}

uint64_t sub_1004FF4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for MainActor();
  v6[11] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004FF570, v8, v7);
}

uint64_t sub_1004FF570()
{
  v2 = v0[8];
  v1 = v0[9];

  swift_beginAccess();
  v9 = *(v1 + 16);

  sub_1001257F0(v3);
  v4 = (v2 + *(_s8MetadataO4ViewVMa(0) + 40));
  v6 = *v4;
  v5 = v4[1];
  v0[5] = v6;
  v0[6] = v5;
  v0[7] = v9;
  sub_10010FC20(&qword_101193578, &qword_100ED0C18);
  State.wrappedValue.setter();
  v7 = v0[1];

  return v7();
}

void sub_1004FF660()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 20.0;
  if (v1 == 6)
  {
    v2 = 0.0;
  }

  qword_101192E50 = *&v2;
}

double sub_1004FF6CC()
{
  if (qword_10117F8B8 != -1)
  {
    swift_once();
  }

  result = *&xmmword_101219030;
  xmmword_101192E58 = xmmword_101219030;
  return result;
}

void sub_1004FF72C()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 16.0;
  if (v1 == 6)
  {
    v2 = 20.0;
  }

  qword_101192E68 = *&v2;
}

void sub_1004FF798()
{
  v0 = [objc_opt_self() currentTraitCollection];
  v1 = [v0 userInterfaceIdiom];

  v2 = 25.0;
  if (v1 == 6)
  {
    v2 = 20.0;
  }

  qword_101192E70 = *&v2;
}

double sub_1004FF804()
{
  if (qword_10117F7E0 != -1)
  {
    swift_once();
  }

  v0 = *&qword_101192E50;
  if (qword_10117F7E8 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_101192E58 + 1);
  if (qword_10117F7F8 != -1)
  {
    swift_once();
  }

  result = v0 + v1 + *&qword_101192E70 + 8.0;
  *&qword_101218EC8 = result;
  return result;
}

unint64_t sub_1004FF8E8()
{
  result = qword_1011934D0;
  if (!qword_1011934D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011934D0);
  }

  return result;
}

unint64_t sub_1004FF944()
{
  result = qword_101193528;
  if (!qword_101193528)
  {
    sub_1001109D0(&qword_101193520, &qword_100ED0AD8);
    sub_100020674(&qword_101193530, &qword_101193538, &qword_100ED0AE0, &protocol conformance descriptor for VStack<A>);
    sub_100020674(&qword_101185BF0, &qword_101185BF8, &qword_100EC14D0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193528);
  }

  return result;
}

void sub_1004FFA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v4 = sub_10010FC20(&qword_101193768, &qword_100ED1188);
  v5 = *(v4 - 8);
  v25 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v23 - v6;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v23 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v26 = *(v5 + 16);
  v26(v7, a1, v4);
  v10 = *(v5 + 80);
  v11 = swift_allocObject();
  v24 = *(v5 + 32);
  v24(v11 + ((v10 + 16) & ~v10), v7, v4);
  v12 = String._bridgeToObjectiveC()();

  v34 = sub_1005023C0;
  v35 = v11;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10027D328;
  v33 = &unk_1010B00B0;
  v13 = _Block_copy(&aBlock);

  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:1 handler:v13];
  _Block_release(v13);

  v16 = v23;
  [v23 addAction:v15];

  swift_getKeyPath();
  swift_getKeyPath();
  v17 = v28;
  static Published.subscript.getter(&aBlock);

  v26(v7, v27, v4);
  v18 = (v10 + 24) & ~v10;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v24(v19 + v18, v7, v4);

  v20 = String._bridgeToObjectiveC()();

  v34 = sub_100502458;
  v35 = v19;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_10027D328;
  v33 = &unk_1010B0100;
  v21 = _Block_copy(&aBlock);

  v22 = [v14 actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  [v16 addAction:v22];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v16, 1, 1, 0, 0);
}

uint64_t sub_1004FFF60(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  sub_10010FC20(&qword_101193768, &qword_100ED1188);
  return CheckedContinuation.resume(returning:)();
}

double sub_100500034@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_1005000B4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_100500160()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FBAA8();
}

void sub_100500268(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

uint64_t sub_1005002F8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void sub_100500384(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v5);

  *a4 = v5;
}

uint64_t sub_100500414(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1005004E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  sub_10010FC20(a5, a6);
  __chkstk_darwin();
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v16 - v13;
  sub_1000089F8(a1, &v16 - v13, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000089F8(v14, v12, a5, a6);

  static Published.subscript.setter();
  return sub_1000095E8(v14, a5, a6);
}

uint64_t sub_10050060C()
{
  v1 = (_s8MetadataO4ViewVMa(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  v4 = type metadata accessor for ScrollPosition();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10010FC20(&qword_1011933C0, &qword_100ED0978);

  return swift_deallocObject();
}

unint64_t sub_1005007A0()
{
  result = qword_101193548;
  if (!qword_101193548)
  {
    sub_1001109D0(&qword_1011934E0, &qword_100ED0A98);
    sub_1001109D0(&qword_1011934D8, &qword_100ED0A90);
    sub_100020674(&qword_101193540, &qword_1011934D8, &qword_100ED0A90, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    sub_1005008CC(&qword_101193550, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193548);
  }

  return result;
}

uint64_t sub_1005008CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100500914()
{
  result = qword_101193558;
  if (!qword_101193558)
  {
    sub_1001109D0(&qword_101184230, &unk_100EDE0D0);
    sub_1005008CC(&qword_101193560, type metadata accessor for PlaylistCovers.Source, &protocol conformance descriptor for PlaylistCovers.Source);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193558);
  }

  return result;
}

double sub_1005009C8(uint64_t a1, uint64_t a2)
{
  v5 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004FD054(a1, a2, v6);
}

double sub_100500A48(uint64_t a1, uint64_t a2)
{
  v5 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004FDBD4(a1, a2, v6);
}

uint64_t sub_100500AC8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2, a3);
    sub_100500B30();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100500B30()
{
  result = qword_101193570;
  if (!qword_101193570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193570);
  }

  return result;
}

uint64_t sub_100500C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(_s8MetadataO4ViewVMa(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_100500CBC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_101192F78, &qword_100ED0960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100500D34()
{
  result = qword_1011935A0;
  if (!qword_1011935A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011935A0);
  }

  return result;
}

uint64_t sub_100500DA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(_s8MetadataO4ViewVMa(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

double sub_100500F70@<D0>(uint64_t a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v14);

  result = *&v15;
  v6 = v16;
  v7 = v17;
  v8 = v14[2];
  v9 = v14[3];
  v10 = v14[5];
  v11 = v14[4];
  v12 = v14[1];
  v13 = v14[0];
  *(a4 + 96) = v15;
  *(a4 + 112) = v6;
  *(a4 + 128) = v7;
  *(a4 + 32) = v8;
  *(a4 + 48) = v9;
  *(a4 + 64) = v11;
  *(a4 + 80) = v10;
  *a4 = v13;
  *(a4 + 16) = v12;
  return result;
}

uint64_t sub_100501050(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 112);
  v19[6] = *(a1 + 96);
  v19[7] = v7;
  v20 = *(a1 + 128);
  v8 = *(a1 + 48);
  v19[2] = *(a1 + 32);
  v19[3] = v8;
  v9 = *(a1 + 80);
  v19[4] = *(a1 + 64);
  v19[5] = v9;
  v10 = *(a1 + 16);
  v19[0] = *a1;
  v19[1] = v10;
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = *(a1 + 112);
  v17[6] = *(a1 + 96);
  v17[7] = v11;
  v18 = *(a1 + 128);
  v12 = *(a1 + 48);
  v17[2] = *(a1 + 32);
  v17[3] = v12;
  v13 = *(a1 + 80);
  v17[4] = *(a1 + 64);
  v17[5] = v13;
  v14 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v14;

  sub_1000089F8(v19, v16, &qword_1011842B0, &qword_100EBFE30);
  return static Published.subscript.setter();
}

double sub_100501134(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_100501214()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FDDB4();
}

uint64_t sub_100501304(uint64_t a1)
{
  v4 = *(_s8MetadataO4ViewVMa(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_1004FEEE0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100501584(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1005015FC(uint64_t a1)
{
  sub_10010FC20(&unk_101184290, &qword_100EC0E60);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = type metadata accessor for UserInterfaceSizeClass();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = [objc_opt_self() currentTraitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 == 6)
  {
    return 0x4038000000000000;
  }

  sub_1000089F8(a1, v3, &unk_101184290, &qword_100EC0E60);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_101184290, &qword_100EC0E60);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v9, v3, v4);
    (*(v5 + 104))(v7, enum case for UserInterfaceSizeClass.regular(_:), v4);
    v13 = static UserInterfaceSizeClass.== infix(_:_:)();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v9, v4);
    if (v13)
    {
      return 0x4044000000000000;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100501868(uint64_t a1)
{
  v4 = *(_s8MetadataO4ViewVMa(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100008F30;

  return sub_1004FF4D4(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1005019A0()
{
  v1 = (_s8MetadataO4ViewVMa(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[9];
  v4 = type metadata accessor for ScrollPosition();
  (*(*(v4 - 8) + 8))(v3, v4);
  sub_10010FC20(&qword_1011933C0, &qword_100ED0978);

  return swift_deallocObject();
}

uint64_t sub_100501B24()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FD2AC();
}

uint64_t sub_100501C14()
{
  _s8MetadataO4ViewVMa(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100008F30;

  return sub_1004FCFA8();
}

uint64_t sub_100501D04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100501D6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100501DD4()
{
  result = qword_1011951F0;
  if (!qword_1011951F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011951F0);
  }

  return result;
}

unint64_t sub_100501E20()
{
  result = qword_101193638;
  if (!qword_101193638)
  {
    sub_1001109D0(&qword_101193608, &qword_100ED0EC8);
    sub_1001109D0(&unk_10119F190, &qword_100EC1520);
    sub_1001109D0(&unk_1011A1400, &unk_100ECAD80);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193638);
  }

  return result;
}

uint64_t sub_100501F44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100501FA4@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s8MetadataO4ViewVMa(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1004F9744(a1, v6, a2);
}

unint64_t sub_100502024()
{
  result = qword_101193648;
  if (!qword_101193648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193648);
  }

  return result;
}

unint64_t sub_100502078()
{
  result = qword_101193650;
  if (!qword_101193650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193650);
  }

  return result;
}

unint64_t sub_1005020CC()
{
  result = qword_101193658;
  if (!qword_101193658)
  {
    sub_1001109D0(&qword_101193640, &qword_100ED0F80);
    sub_100502158();
    sub_1005021AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193658);
  }

  return result;
}

unint64_t sub_100502158()
{
  result = qword_101193660;
  if (!qword_101193660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193660);
  }

  return result;
}

unint64_t sub_1005021AC()
{
  result = qword_101193668;
  if (!qword_101193668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101193668);
  }

  return result;
}

uint64_t sub_100502270(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_101193670, &qword_100ED0FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1005022E0()
{
  result = qword_1011936C0;
  if (!qword_1011936C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011936C0);
  }

  return result;
}

unint64_t sub_100502334()
{
  result = qword_1011936D0;
  if (!qword_1011936D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011936D0);
  }

  return result;
}

double sub_100502390(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t sub_1005023C0()
{
  sub_10010FC20(&qword_101193768, &qword_100ED1188);
  sub_10010FC20(&qword_101193768, &qword_100ED1188);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_100502458(uint64_t a1)
{
  sub_10010FC20(&qword_101193768, &qword_100ED1188);
  v3 = *(v1 + 16);

  return sub_1004FFF60(a1, v3);
}

uint64_t sub_1005024F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_100502564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = type metadata accessor for Playlist();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = sub_10010FC20(&qword_101193868, &unk_100ED1298);
  v4[16] = swift_task_alloc();
  v4[17] = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v4[18] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181AC0, &unk_100EC9240);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[21] = v7;
  v4[22] = type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v8 = swift_task_alloc();
  v4[24] = v8;
  v9 = sub_10010FC20(&qword_101181AC8, &qword_100EBD570);
  *v8 = v4;
  v8[1] = sub_100502794;

  return MusicLibraryRequest.response()(v7, v9);
}

uint64_t sub_100502794()
{
  *(*v1 + 200) = v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  if (v0)
  {
    v4 = sub_100502DB0;
  }

  else
  {
    v4 = sub_1005028F0;
  }

  return _swift_task_switch(v4, v3, v2);
}

uint64_t sub_1005028F0()
{
  v1 = v0[16];
  v2 = v0[15];

  MusicLibraryResponse.items.getter();
  sub_1005032B0(&qword_101193870, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v3 = *(v2 + 36);
  sub_1005032B0(&unk_10118C130, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.endIndex.getter();
  if (*(v1 + v3) == v0[7])
  {
    v36 = _swiftEmptyArrayStorage;
  }

  else
  {
    v9 = v0[12];
    v38 = (v9 + 16);
    v35 = (v9 + 32);
    v34 = v9;
    v36 = _swiftEmptyArrayStorage;
    v37 = (v9 + 8);
    v39 = v1;
    do
    {
      v12 = v0[14];
      v13 = dispatch thunk of Collection.subscript.read();
      (*v38)(v12);
      v13(v0 + 2, 0);
      dispatch thunk of Collection.formIndex(after:)();
      swift_getKeyPath();
      swift_getKeyPath();

      static Published.subscript.getter(v0 + 8);

      v14 = v0[8];
      v15 = Playlist.id.getter();
      v17 = v16;
      if (*(v14 + 16) && (v18 = v15, Hasher.init(_seed:)(), String.hash(into:)(), v19 = Hasher._finalize()(), v20 = -1 << *(v14 + 32), v21 = v19 & ~v20, ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v14 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        v26 = v0[13];
        v25 = v0[14];
        v27 = v0[11];

        v28 = *v35;
        (*v35)(v26, v25, v27);
        v29 = v36;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10066CBEC(0, v36[2] + 1, 1);
          v29 = v36;
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          sub_10066CBEC((v30 > 1), v31 + 1, 1);
          v29 = v36;
        }

        v32 = v0[13];
        v33 = v0[11];
        v29[2] = v31 + 1;
        v36 = v29;
        v28(v29 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v32, v33);
      }

      else
      {
LABEL_7:
        v10 = v0[14];
        v11 = v0[11];

        (*v37)(v10, v11);
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v39 + v3) != v0[7]);
  }

  v5 = v0[20];
  v4 = v0[21];
  v6 = v0[19];
  sub_100503300(v0[16]);
  swift_getKeyPath();
  swift_getKeyPath();
  v0[9] = v36;

  static Published.subscript.setter();
  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100502DB0()
{
  v14 = v0;

  if (qword_10117F1F0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, qword_101218608);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[25];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v0[6] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to load library playlists with error: %s.", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100502FBC()
{
  v1 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16PlaylistsManager__playlists;
  v2 = sub_10010FC20(&qword_101193860, &unk_100ED1238);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtCO5Music14ClarityUIMusic16PlaylistsManager_playlistsRequest;
  v4 = sub_10010FC20(&qword_101181AC8, &qword_100EBD570);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t _s14descr101092F61V16PlaylistsManagerCMa(uint64_t a1)
{
  result = qword_1011937B0;
  if (!qword_1011937B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100503114(uint64_t a1)
{
  sub_1005031EC(319);
  if (v1 <= 0x3F)
  {
    sub_100503250(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1005031EC(uint64_t a1)
{
  if (!qword_1011937C0)
  {
    sub_1001109D0(&qword_1011937C8, "\n?\n");
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1011937C0);
    }
  }
}

void sub_100503250(uint64_t a1)
{
  if (!qword_1011937D0)
  {
    type metadata accessor for Playlist();
    v1 = type metadata accessor for MusicLibraryRequest();
    if (!v2)
    {
      atomic_store(v1, &qword_1011937D0);
    }
  }
}

uint64_t sub_1005032B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_101181BE8, &unk_100EBD710);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100503300(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101193868, &unk_100ED1298);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for WidgetDiskCache(uint64_t a1)
{
  result = qword_1011938D0;
  if (!qword_1011938D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005033DC(uint64_t a1)
{
  sub_100039B3C(319);
  if (v1 <= 0x3F)
  {
    sub_100027010();
    if (v2 <= 0x3F)
    {
      type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100503478(uint64_t a1)
{
  result = type metadata accessor for WidgetDiskCache(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_10050352C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  v12 = a3;
  v11 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v11 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin();
  type metadata accessor for DispatchQoS();
  __chkstk_darwin();
  v10 = *(type metadata accessor for WidgetDiskCache(0) + 20);
  sub_100027010();
  static DispatchQoS.userInitiated.getter();
  v15 = _swiftEmptyArrayStorage;
  sub_1005037C0();
  sub_10010FC20(&qword_101187218, &unk_100ECC430);
  sub_100503818();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  v6 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v7 = v12;
  *(v12 + v10) = v6;
  static Logger.music(_:)(0x6944746567646957, 0xEF65686361436B73);
  v8 = [objc_opt_self() defaultManager];
  sub_10050387C(v13, v14, v7);

  return result;
}

unint64_t sub_1005037C0()
{
  result = qword_101187210;
  if (!qword_101187210)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187210);
  }

  return result;
}

unint64_t sub_100503818()
{
  result = qword_101187220;
  if (!qword_101187220)
  {
    sub_1001109D0(&qword_101187218, &unk_100ECC430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101187220);
  }

  return result;
}

uint64_t sub_10050387C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v23 - v12;
  __chkstk_darwin();
  v14 = &v23 - v13;
  v15 = objc_opt_self();
  v16 = [v15 defaultManager];
  NSFileManager.musicAppGroupCachesURL.getter(v7);

  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100028A38(v7);
    v17 = 1;
  }

  else
  {
    v24 = a3;
    v23 = *(v9 + 32);
    v23(v14, v7, v8);
    URL.appending(_:)(0x646957636973754DLL, 0xEC00000073746567, 0);
    v18 = a2;
    v19 = v25;
    URL.appending(_:)(a1, v18, 0);
    v20 = *(v9 + 8);
    v20(v11, v8);
    v21 = [v15 defaultManager];
    NSFileManager.createDirectoryIfNeeded(at:)(v19);
    v20(v14, v8);

    a3 = v24;
    v23(v24, v25, v8);
    v17 = 0;
  }

  return (*(v9 + 56))(a3, v17, 1, v8);
}

BOOL sub_100503B90(uint64_t a1, uint64_t a2)
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

    type metadata accessor for IndexPath();
    ++v2;
    sub_100519250(&qword_101192840, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_100503C9C(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = (a2 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if (v5 > 5)
      {
        switch(v4)
        {
          case 6:
            if (a1 == 6)
            {
              return 1;
            }

            goto LABEL_4;
          case 7:
            if (a1 == 7)
            {
              return 1;
            }

            goto LABEL_4;
          case 8:
            if (a1 == 8)
            {
              return 1;
            }

            goto LABEL_4;
        }
      }

      else
      {
        switch(v4)
        {
          case 3:
            if (a1 == 3)
            {
              return 1;
            }

            goto LABEL_4;
          case 4:
            if (a1 == 4)
            {
              return 1;
            }

            goto LABEL_4;
          case 5:
            if (a1 == 5)
            {
              return 1;
            }

            goto LABEL_4;
        }
      }

      if (a1 - 9 <= 0xFFFFFFF9 && v4 == a1)
      {
        return 1;
      }

LABEL_4:
      --v2;
    }

    while (v2);
  }

  return 0;
}

void sub_100503D5C()
{
  v1 = v0;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v3 = &v47 - v2;
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem;
  if (v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] & 1) == 0 && ([v0 isViewLoaded])
  {
    v10 = &v0[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
    swift_beginAccess();
    v11 = *v10;
    v12 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    v51 = v11;
    (*(v12 + 128))(ObjectType, v12);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_1000095E8(v3, &unk_10118BCE0, &qword_100EC6450);
      return;
    }

    (*(v5 + 32))(v8, v3, v4);
    v1[v9] = 1;
    v14 = sub_1006A6078();
    sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100EBC6B0;
    (*(v5 + 16))(v16 + v15, v8, v4);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v14 reconfigureItemsAtIndexPaths:isa];

    v18 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView;
    v19 = [*&v1[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] indexPathsForVisibleItems];
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v19) = sub_100503B90(v8, v20);

    if ((v19 & 1) == 0)
    {
      goto LABEL_10;
    }

    v21 = *&v1[v18];
    v22 = IndexPath._bridgeToObjectiveC()().super.isa;
    v23 = [v21 cellForItemAtIndexPath:v22];

    if (!v23)
    {
      goto LABEL_10;
    }

    [v23 frame];
    v49 = v25;
    v50 = v24;
    v47 = v27;
    v48 = v26;
    [*&v1[v18] bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = [v1 view];
    if (v36)
    {
      v37 = v36;
      [v36 directionalLayoutMargins];

      v38 = [v1 view];
      if (v38)
      {
        v39 = v38;
        [v38 effectiveUserInterfaceLayoutDirection];

        UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)();
        v53.origin.x = sub_100058728(v29, v31, v33, v35, v40, v41);
        v53.origin.y = v42;
        v53.size.width = v43;
        v53.size.height = v44;
        v52.origin.y = v49;
        v52.origin.x = v50;
        v52.size.height = v47;
        v52.size.width = v48;
        LODWORD(v39) = CGRectIntersectsRect(v52, v53);

        if (v39)
        {
LABEL_11:
          (*(v5 + 8))(v8, v4);
          return;
        }

LABEL_10:
        v45 = *&v1[v18];
        v46 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v45 scrollToItemAtIndexPath:v46 atScrollPosition:2 animated:1];

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_10050423C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t *a4)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v10 = &v52 - v9;
  v11 = type metadata accessor for IndexPath();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (v4[v16] & 1) == 0 && ([v4 isViewLoaded])
  {
    v17 = *a2;
    swift_beginAccess();
    sub_1000089F8(&v4[v17], v10, &unk_10118BCE0, &qword_100EC6450);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_1000095E8(v10, &unk_10118BCE0, &qword_100EC6450);
      return;
    }

    v18 = (*(v12 + 32))(v15, v10, v11);
    v4[v16] = 1;
    v19 = a3(v18);
    sub_10010FC20(&qword_10118AC80, &qword_100EC9020);
    v20 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_100EBC6B0;
    (*(v12 + 16))(v21 + v20, v15, v11);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v19 reconfigureItemsAtIndexPaths:isa];

    v23 = *a4;
    v24 = [*&v4[*a4] indexPathsForVisibleItems];
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v24) = sub_100503B90(v15, v25);

    if ((v24 & 1) == 0)
    {
      goto LABEL_10;
    }

    v26 = *&v4[v23];
    v27 = IndexPath._bridgeToObjectiveC()().super.isa;
    v28 = [v26 cellForItemAtIndexPath:v27];

    if (!v28)
    {
      goto LABEL_10;
    }

    [v28 frame];
    v55 = v30;
    v56 = v29;
    v53 = v32;
    v54 = v31;
    [*&v4[v23] bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = [v4 view];
    if (v41)
    {
      v42 = v41;
      [v41 directionalLayoutMargins];

      v43 = [v4 view];
      if (v43)
      {
        v44 = v43;
        [v43 effectiveUserInterfaceLayoutDirection];

        UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)();
        v58.origin.x = sub_100058728(v34, v36, v38, v40, v45, v46);
        v58.origin.y = v47;
        v58.size.width = v48;
        v58.size.height = v49;
        v57.origin.y = v55;
        v57.origin.x = v56;
        v57.size.height = v53;
        v57.size.width = v54;
        LODWORD(v44) = CGRectIntersectsRect(v57, v58);

        if (v44)
        {
LABEL_11:
          (*(v12 + 8))(v15, v11);
          return;
        }

LABEL_10:
        v50 = *&v4[v23];
        v51 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v50 scrollToItemAtIndexPath:v51 atScrollPosition:2 animated:1];

        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1005046D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v45 = a2;
  v2 = sub_10010FC20(&unk_1011913B8, &qword_100ED1630);
  v64 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v43 - v3;
  v72 = type metadata accessor for Playlist.Folder.Item();
  v68 = *(v72 - 8);
  __chkstk_darwin();
  v71 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v43 - v6;
  sub_10010FC20(&qword_101193C70, &qword_100ED1638);
  __chkstk_darwin();
  v49 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v43 - v8;
  v67 = sub_10010FC20(&qword_1011828F0, &unk_100ED1640);
  v70 = *(v67 - 8);
  __chkstk_darwin();
  v54 = &v43 - v9;
  sub_10010FC20(&unk_1011913D0, &qword_100ECE450);
  __chkstk_darwin();
  v53 = &v43 - v10;
  v52 = sub_10010FC20(&qword_1011913C8, &unk_100ED1650);
  __chkstk_darwin();
  v69 = &v43 - v11;
  v12 = sub_10010FC20(&unk_10118CEC0, &unk_100EE0420);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v55 = &v43 - v14;
  sub_10010FC20(&qword_101193C78, &unk_100ED1660);
  __chkstk_darwin();
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = (&v43 - v17);
  sub_10010FC20(&qword_101193C80, &qword_100EDE790);
  v19 = MusicLibrarySectionedResponse.sections.getter();
  v51 = (v13 + 32);
  v50 = (v70 + 4);
  v57 = (v68 + 16);
  v70 = (v68 + 32);
  v20 = v64;
  v64 += 6;
  v65 = (v20 + 7);
  v62 = (v68 + 8);
  v47 = (v13 + 8);
  v73[5] = 0;
  v73[6] = 0;
  v73[4] = v19;
  v48 = v12;
  v44 = v16;
  v43 = v18;
  v56 = v4;
LABEL_2:
  sub_100507098(&qword_101193C88, &qword_100ED1670, &unk_10118CEC0, &unk_100EE0420, v16);
  sub_10003D17C(v16, v18, &qword_101193C78, &unk_100ED1660);
  v21 = sub_10010FC20(&qword_101193C88, &qword_100ED1670);
  if ((*(*(v21 - 8) + 48))(v18, 1, v21) == 1)
  {

    v42 = type metadata accessor for IndexPath();
    return (*(*(v42 - 8) + 56))(v45, 1, 1, v42);
  }

  v46 = *v18;
  (*v51)(v55, v18 + *(v21 + 48), v12);
  v22 = v53;
  MusicLibrarySection.items.getter();
  (*v50)(v54, v22, v67);
  sub_100020674(&unk_1011913E0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
  v23 = v69;
  dispatch thunk of Sequence.makeIterator()();
  v59 = *(v52 + 36);
  *(v23 + v59) = 0;
  v68 = *(sub_10010FC20(&unk_1011828E0, &qword_100EBE230) + 36);
  v24 = 0;
  v60 = sub_100020674(&qword_10118C1D0, &qword_1011828F0, &unk_100ED1640, &protocol conformance descriptor for MusicItemCollection<A>);
  v25 = v49;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v23 + v68) == v73[0])
    {
      (*v65)(v25, 1, 1, v2);
      goto LABEL_8;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v58;
    v28 = v72;
    (*v57)(v58);
    v26(v73, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v29 = *(v2 + 48);
    v30 = v56;
    *v56 = v24;
    result = (*v70)((v30 + v29), v27, v28);
    if (__OFADD__(v24++, 1))
    {
      break;
    }

    *(v23 + v59) = v24;
    sub_10003D17C(v30, v25, &unk_1011913B8, &qword_100ED1630);
    (*v65)(v25, 0, 1, v2);
LABEL_8:
    v33 = v66;
    sub_10003D17C(v25, v66, &qword_101193C70, &qword_100ED1638);
    if ((*v64)(v33, 1, v2) == 1)
    {
      sub_1000095E8(v23, &qword_1011913C8, &unk_100ED1650);
      v12 = v48;
      (*v47)(v55, v48);
      v16 = v44;
      v18 = v43;
      goto LABEL_2;
    }

    v61 = *v33;
    v34 = v2;
    (*v70)(v71, &v33[*(v2 + 48)], v72);
    sub_100519250(&unk_1011913F0, &type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    v35 = dispatch thunk of MusicItem.id.getter();
    v37 = v36;
    if (v35 == dispatch thunk of MusicItem.id.getter() && v37 == v38)
    {

      v23 = v69;
LABEL_15:

      v40 = v45;
      IndexPath.init(item:section:)();
      (*v62)(v71, v72);
      sub_1000095E8(v23, &qword_1011913C8, &unk_100ED1650);
      (*v47)(v55, v48);
      v41 = type metadata accessor for IndexPath();
      return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v69;
    if (v39)
    {
      goto LABEL_15;
    }

    (*v62)(v71, v72);
    v2 = v34;
  }

  __break(1u);
  return result;
}

uint64_t sub_100505184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v49 = a2;
  v2 = sub_10010FC20(&qword_101193AC8, &qword_100ED1420);
  v67 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v47 - v3;
  v74 = type metadata accessor for MusicVideo();
  v71 = *(v74 - 8);
  __chkstk_darwin();
  v73 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v47 - v6;
  sub_10010FC20(&unk_101193AD0, &unk_100ED1428);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v47 - v9;
  v70 = sub_10010FC20(&unk_101181600, &unk_100EBD070);
  v72 = *(v70 - 8);
  __chkstk_darwin();
  v56 = &v47 - v10;
  sub_10010FC20(&qword_101193AE0, &qword_100ED1438);
  __chkstk_darwin();
  v55 = &v47 - v11;
  v54 = sub_10010FC20(&qword_101193AE8, &unk_100ED1440);
  __chkstk_darwin();
  v13 = &v47 - v12;
  v58 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v14 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v47 - v15;
  sub_10010FC20(&qword_101193AF8, &qword_100ED1450);
  __chkstk_darwin();
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = (&v47 - v18);
  sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v20 = MusicLibrarySectionedResponse.sections.getter();
  v53 = (v14 + 32);
  v52 = v72 + 4;
  v59 = (v71 + 16);
  v72 = (v71 + 32);
  v21 = v67;
  v67 += 6;
  v68 = (v21 + 7);
  v65 = (v71 + 8);
  v51 = (v14 + 8);
  v75[5] = 0;
  v75[6] = 0;
  v75[4] = v20;
  v48 = v17;
  v47 = v19;
LABEL_2:
  sub_100507098(&unk_101193B00, &qword_100ED1458, &qword_101193AF0, &unk_100EC0370, v17);
  sub_10003D17C(v17, v19, &qword_101193AF8, &qword_100ED1450);
  v22 = sub_10010FC20(&unk_101193B00, &qword_100ED1458);
  if ((*(*(v22 - 8) + 48))(v19, 1, v22) == 1)
  {

    v46 = type metadata accessor for IndexPath();
    return (*(*(v46 - 8) + 56))(v49, 1, 1, v46);
  }

  v50 = *v19;
  (*v53)(v57, v19 + *(v22 + 48), v58);
  v23 = v55;
  MusicLibrarySection.items.getter();
  (*v52)(v56, v23, v70);
  sub_100020674(&unk_101181610, &unk_101181600, &unk_100EBD070, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v61 = *(v54 + 36);
  *&v13[v61] = 0;
  v24 = *(sub_10010FC20(&unk_101193B10, &unk_100ED1460) + 36);
  v25 = sub_100020674(&unk_10118C260, &unk_101181600, &unk_100EBD070, &protocol conformance descriptor for MusicItemCollection<A>);
  v71 = 0;
  v62 = v25;
  for (i = v24; ; v24 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v13[v24] == v75[0])
    {
      (*v68)(v8, 1, 1, v2);
      goto LABEL_8;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v60;
    v28 = v74;
    (*v59)(v60);
    v26(v75, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v29 = *(v2 + 48);
    v31 = v71;
    v30 = v72;
    *v4 = v71;
    result = (*v30)(&v4[v29], v27, v28);
    v33 = __OFADD__(v31, 1);
    v34 = v31 + 1;
    if (v33)
    {
      break;
    }

    v71 = v34;
    *&v13[v61] = v34;
    sub_10003D17C(v4, v8, &qword_101193AC8, &qword_100ED1420);
    (*v68)(v8, 0, 1, v2);
LABEL_8:
    v35 = v69;
    sub_10003D17C(v8, v69, &unk_101193AD0, &unk_100ED1428);
    if ((*v67)(v35, 1, v2) == 1)
    {
      sub_1000095E8(v13, &qword_101193AE8, &unk_100ED1440);
      (*v51)(v57, v58);
      v17 = v48;
      v19 = v47;
      goto LABEL_2;
    }

    v36 = v8;
    v37 = v4;
    v64 = *v35;
    v38 = v2;
    (*v72)(v73, &v35[*(v2 + 48)], v74);
    v39 = dispatch thunk of MusicItem.id.getter();
    v41 = v40;
    if (v39 == dispatch thunk of MusicItem.id.getter() && v41 == v42)
    {

LABEL_15:

      v44 = v49;
      IndexPath.init(item:section:)();
      (*v65)(v73, v74);
      sub_1000095E8(v13, &qword_101193AE8, &unk_100ED1440);
      (*v51)(v57, v58);
      v45 = type metadata accessor for IndexPath();
      return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_15;
    }

    (*v65)(v73, v74);
    v2 = v38;
    v4 = v37;
    v8 = v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_100505BE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v49 = a2;
  v2 = sub_10010FC20(&qword_101193B20, &qword_100ED1470);
  v67 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v47 - v3;
  v74 = type metadata accessor for Song();
  v71 = *(v74 - 8);
  __chkstk_darwin();
  v73 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v47 - v6;
  sub_10010FC20(&unk_101193B28, &unk_100ED1478);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v47 - v9;
  v70 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v72 = *(v70 - 8);
  __chkstk_darwin();
  v56 = &v47 - v10;
  sub_10010FC20(&qword_101193B38, &qword_100ED1488);
  __chkstk_darwin();
  v55 = &v47 - v11;
  v54 = sub_10010FC20(&unk_101193B40, &unk_100ED1490);
  __chkstk_darwin();
  v13 = &v47 - v12;
  v58 = sub_10010FC20(&qword_10118D1B0, &qword_100EC8ED0);
  v14 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v47 - v15;
  sub_10010FC20(&unk_101193B50, &unk_100ED14A0);
  __chkstk_darwin();
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = (&v47 - v18);
  sub_10010FC20(&qword_10118D1C0, &qword_100EC8EE0);
  v20 = MusicLibrarySectionedResponse.sections.getter();
  v53 = (v14 + 32);
  v52 = v72 + 4;
  v59 = (v71 + 16);
  v72 = (v71 + 32);
  v21 = v67;
  v67 += 6;
  v68 = (v21 + 7);
  v65 = (v71 + 8);
  v51 = (v14 + 8);
  v75[5] = 0;
  v75[6] = 0;
  v75[4] = v20;
  v48 = v17;
  v47 = v19;
LABEL_2:
  sub_100507098(&qword_101193B60, &qword_100ED14B0, &qword_10118D1B0, &qword_100EC8ED0, v17);
  sub_10003D17C(v17, v19, &unk_101193B50, &unk_100ED14A0);
  v22 = sub_10010FC20(&qword_101193B60, &qword_100ED14B0);
  if ((*(*(v22 - 8) + 48))(v19, 1, v22) == 1)
  {

    v46 = type metadata accessor for IndexPath();
    return (*(*(v46 - 8) + 56))(v49, 1, 1, v46);
  }

  v50 = *v19;
  (*v53)(v57, v19 + *(v22 + 48), v58);
  v23 = v55;
  MusicLibrarySection.items.getter();
  (*v52)(v56, v23, v70);
  sub_100020674(&qword_101193B68, &qword_10118D1A0, &qword_100EBD6B0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v61 = *(v54 + 36);
  *&v13[v61] = 0;
  v24 = *(sub_10010FC20(&unk_101193B70, &qword_100ED14B8) + 36);
  v25 = sub_100020674(&unk_10118C2A0, &qword_10118D1A0, &qword_100EBD6B0, &protocol conformance descriptor for MusicItemCollection<A>);
  v71 = 0;
  v62 = v25;
  for (i = v24; ; v24 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v13[v24] == v75[0])
    {
      (*v68)(v8, 1, 1, v2);
      goto LABEL_8;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v60;
    v28 = v74;
    (*v59)(v60);
    v26(v75, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v29 = *(v2 + 48);
    v31 = v71;
    v30 = v72;
    *v4 = v71;
    result = (*v30)(&v4[v29], v27, v28);
    v33 = __OFADD__(v31, 1);
    v34 = v31 + 1;
    if (v33)
    {
      break;
    }

    v71 = v34;
    *&v13[v61] = v34;
    sub_10003D17C(v4, v8, &qword_101193B20, &qword_100ED1470);
    (*v68)(v8, 0, 1, v2);
LABEL_8:
    v35 = v69;
    sub_10003D17C(v8, v69, &unk_101193B28, &unk_100ED1478);
    if ((*v67)(v35, 1, v2) == 1)
    {
      sub_1000095E8(v13, &unk_101193B40, &unk_100ED1490);
      (*v51)(v57, v58);
      v17 = v48;
      v19 = v47;
      goto LABEL_2;
    }

    v36 = v8;
    v37 = v4;
    v64 = *v35;
    v38 = v2;
    (*v72)(v73, &v35[*(v2 + 48)], v74);
    v39 = dispatch thunk of MusicItem.id.getter();
    v41 = v40;
    if (v39 == dispatch thunk of MusicItem.id.getter() && v41 == v42)
    {

LABEL_15:

      v44 = v49;
      IndexPath.init(item:section:)();
      (*v65)(v73, v74);
      sub_1000095E8(v13, &unk_101193B40, &unk_100ED1490);
      (*v51)(v57, v58);
      v45 = type metadata accessor for IndexPath();
      return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_15;
    }

    (*v65)(v73, v74);
    v2 = v38;
    v4 = v37;
    v8 = v36;
  }

  __break(1u);
  return result;
}

uint64_t sub_10050663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  v49 = a2;
  v2 = sub_10010FC20(&qword_101193B80, &qword_100ED14D0);
  v67 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v47 - v3;
  v74 = type metadata accessor for Artist();
  v71 = *(v74 - 8);
  __chkstk_darwin();
  v73 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v47 - v6;
  sub_10010FC20(&qword_101193B88, &unk_100ED14D8);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v69 = &v47 - v9;
  v70 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v72 = *(v70 - 8);
  __chkstk_darwin();
  v56 = &v47 - v10;
  sub_10010FC20(&qword_101193B98, &qword_100ED14E8);
  __chkstk_darwin();
  v55 = &v47 - v11;
  v54 = sub_10010FC20(&unk_101193BA0, &unk_100ED14F0);
  __chkstk_darwin();
  v13 = &v47 - v12;
  v58 = sub_10010FC20(&qword_1011A1980, &unk_100EC8E10);
  v14 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v47 - v15;
  sub_10010FC20(&unk_101193BB0, &unk_100ED1500);
  __chkstk_darwin();
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = (&v47 - v18);
  sub_10010FC20(&qword_10118D0F8, &unk_100EC8E20);
  v20 = MusicLibrarySectionedResponse.sections.getter();
  v53 = (v14 + 32);
  v52 = v72 + 4;
  v59 = (v71 + 16);
  v72 = (v71 + 32);
  v21 = v67;
  v67 += 6;
  v68 = (v21 + 7);
  v65 = (v71 + 8);
  v51 = (v14 + 8);
  v75[5] = 0;
  v75[6] = 0;
  v75[4] = v20;
  v48 = v17;
  v47 = v19;
LABEL_2:
  sub_100507098(&qword_101193BC0, &qword_100ED1510, &qword_1011A1980, &unk_100EC8E10, v17);
  sub_10003D17C(v17, v19, &unk_101193BB0, &unk_100ED1500);
  v22 = sub_10010FC20(&qword_101193BC0, &qword_100ED1510);
  if ((*(*(v22 - 8) + 48))(v19, 1, v22) == 1)
  {

    v46 = type metadata accessor for IndexPath();
    return (*(*(v46 - 8) + 56))(v49, 1, 1, v46);
  }

  v50 = *v19;
  (*v53)(v57, v19 + *(v22 + 48), v58);
  v23 = v55;
  MusicLibrarySection.items.getter();
  (*v52)(v56, v23, v70);
  sub_100020674(&qword_101193BC8, &qword_101193B90, &qword_100EBD7A0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Sequence.makeIterator()();
  v61 = *(v54 + 36);
  *&v13[v61] = 0;
  v24 = *(sub_10010FC20(&unk_101193BD0, &qword_100ED1518) + 36);
  v25 = sub_100020674(&qword_10118C150, &qword_101193B90, &qword_100EBD7A0, &protocol conformance descriptor for MusicItemCollection<A>);
  v71 = 0;
  v62 = v25;
  for (i = v24; ; v24 = i)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*&v13[v24] == v75[0])
    {
      (*v68)(v8, 1, 1, v2);
      goto LABEL_8;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v60;
    v28 = v74;
    (*v59)(v60);
    v26(v75, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v29 = *(v2 + 48);
    v31 = v71;
    v30 = v72;
    *v4 = v71;
    result = (*v30)(&v4[v29], v27, v28);
    v33 = __OFADD__(v31, 1);
    v34 = v31 + 1;
    if (v33)
    {
      break;
    }

    v71 = v34;
    *&v13[v61] = v34;
    sub_10003D17C(v4, v8, &qword_101193B80, &qword_100ED14D0);
    (*v68)(v8, 0, 1, v2);
LABEL_8:
    v35 = v69;
    sub_10003D17C(v8, v69, &qword_101193B88, &unk_100ED14D8);
    if ((*v67)(v35, 1, v2) == 1)
    {
      sub_1000095E8(v13, &unk_101193BA0, &unk_100ED14F0);
      (*v51)(v57, v58);
      v17 = v48;
      v19 = v47;
      goto LABEL_2;
    }

    v36 = v8;
    v37 = v4;
    v64 = *v35;
    v38 = v2;
    (*v72)(v73, &v35[*(v2 + 48)], v74);
    v39 = dispatch thunk of MusicItem.id.getter();
    v41 = v40;
    if (v39 == dispatch thunk of MusicItem.id.getter() && v41 == v42)
    {

LABEL_15:

      v44 = v49;
      IndexPath.init(item:section:)();
      (*v65)(v73, v74);
      sub_1000095E8(v13, &unk_101193BA0, &unk_100ED14F0);
      (*v51)(v57, v58);
      v45 = type metadata accessor for IndexPath();
      return (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v43)
    {
      goto LABEL_15;
    }

    (*v65)(v73, v74);
    v2 = v38;
    v4 = v37;
    v8 = v36;
  }

  __break(1u);
  return result;
}

void sub_100507098(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_10010FC20(a1, a2);
  v13 = __chkstk_darwin();
  v15 = &v26 - v14;
  v16 = *v5;
  v17 = v5[1];
  v18 = *(*v5 + 16);
  if (v17 == v18)
  {
    v19 = *(v12 + 56);

    v19(a5, 1, 1, v11, v13);
  }

  else
  {
    if (v17 >= v18)
    {
      __break(1u);
    }

    else
    {
      v27 = v12;
      v20 = sub_10010FC20(a3, a4);
      v21 = *(v20 - 8);
      v22 = *(v21 + 16);
      v23 = v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17;
      v5[1] = v17 + 1;
      v24 = *(v11 + 48);
      v25 = v5[2];
      *v15 = v25;
      v22(&v15[v24], v23, v20);
      if (!__OFADD__(v25, 1))
      {
        v5[2] = v25 + 1;
        sub_10003D17C(v15, a5, a1, a2);
        (*(v27 + 56))(a5, 0, 1, v11);
        return;
      }
    }

    __break(1u);
  }
}

char *sub_100507278(int a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  LODWORD(v44) = a1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  _s11MusicVideosV5ScopeOMa(0);
  __chkstk_darwin();
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___globalHeaderRegistration;
  v10 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v11 = *(*(v10 - 8) + 56);
  v11(&v3[v9], 1, 1, v10);
  v11(&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___headerRegistration], 1, 1, v10);
  v12 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___gridCellRegistration;
  v13 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  (*(*(v13 - 8) + 56))(&v3[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___listCellRegistration;
  v15 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView] = 0;
  v16 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController;
  v17 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v3[v16] = sub_10003AAD8(0xD000000000000022, 0x8000000100E4E9D0);
  v18 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_response;
  v19 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_dragDropController] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController] = 0;
  v20 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___actionMetricsReportingContext;
  v21 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource] = 0;
  v22 = &v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions];
  *v23 = 0;
  v23[1] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___shuffleBarButtonItem] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroup] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups] = 0;
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextAndFilterBarButtonGroup] = 0;
  v24 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v25 = type metadata accessor for MusicVideo();
  (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
  v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_hasScrolledToProminentItem] = 0;
  v26 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentItemIndexPath;
  v27 = type metadata accessor for IndexPath();
  (*(*(v27 - 8) + 56))(&v3[v26], 1, 1, v27);
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask] = 0;
  v28 = type metadata accessor for Artist();
  (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
  sub_1006FC4AC(v6, v44, v8);
  sub_10010FC20(&unk_101184620, &unk_100ED14C0);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] = sub_1003A18B4(v8);
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController] = sub_10059A684(0xD000000000000012, 0x8000000100E484C0, 0);
  v46.receiver = v3;
  v46.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v46, "initWithNibName:bundle:", 0, 0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v30 = String._bridgeToObjectiveC()();

  [v29 setTitle:v30];

  UIViewController.playActivityFeatureIdentifier.setter(8);
  v31 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  v32 = v29 + v31;
  v33 = v45;
  sub_1002190E0(v45, v32, &unk_1011846B0, &unk_100ECB630);
  swift_endAccess();
  v34 = [v29 traitCollection];

  v35 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  v37 = v36;

  if ((v37 & 1) == 0)
  {
    v38 = [v29 navigationItem];
    [v38 setLargeTitleDisplayMode:v35];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v39 = swift_allocObject();
  v44 = xmmword_100EBC6B0;
  *(v39 + 16) = xmmword_100EBC6B0;
  v40 = sub_100217F14();
  *(v39 + 32) = &type metadata for LibraryFilterTrait;
  *(v39 + 40) = v40;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v41 = swift_allocObject();
  *(v41 + 16) = v44;
  v42 = sub_100137E8C();
  *(v41 + 32) = &type metadata for MusicLibraryTrait;
  *(v41 + 40) = v42;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_1000095E8(v33, &unk_1011846B0, &unk_100ECB630);
  return v29;
}

double sub_100507A38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v60.receiver = v0;
  v60.super_class = ObjectType;
  objc_msgSendSuper2(&v60, "viewDidLoad");
  v3 = sub_100508068();
  v4 = sub_100508460();
  [v3 setCollectionViewLayout:v4];

  v5 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView;
  v6 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView] setPrefetchDataSource:v6];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = ObjectType;
  v9 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v10 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v9 = sub_100519048;
  v9[1] = v8;

  sub_100020438(v10, v11);

  v12 = (v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v13 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v14 = *(v6 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v12 = sub_1005089E4;
  v12[1] = 0;
  sub_100020438(v13, v14);
  sub_100508EB8();
  v15 = *&v1[v5];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = &v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v18 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v19 = *&v15[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
  *v17 = sub_100519050;
  v17[1] = v16;
  v20 = v15;

  sub_100020438(v18, v19);

  v21 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v21 + 16);
  v24 = *(v21 + 24);
  *(v21 + 16) = sub_100519058;
  *(v21 + 24) = v22;

  sub_100020438(v23, v24);

  v25 = sub_100509210();
  v26 = [v1 traitCollection];
  v27 = [v26 horizontalSizeClass];

  [*(v25 + 32) setHidesNavigationBarDuringPresentation:v27 == 1];

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6B0;
  *(v28 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v28 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v29 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v29[2];
  v32 = v29[3];
  v29[2] = sub_100519064;
  v29[3] = v30;

  sub_100020438(v31, v32);

  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v29[4];
  v35 = v29[5];
  v29[4] = sub_10051906C;
  v29[5] = v33;

  sub_100020438(v34, v35);

  v36 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v38 = *(v36 + 88);
  v39 = *(v36 + 96);
  *(v36 + 88) = sub_100519074;
  *(v36 + 96) = v37;

  sub_100020438(v38, v39);

  v40 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v56[3] = v40;
  v41 = sub_10001C8B8(v56);
  sub_10050B22C(v41);
  v57[3] = v40;
  v42 = sub_10001C8B8(v57);
  sub_10050B4B0(v42);
  v58[3] = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  v43 = sub_10001C8B8(v58);
  sub_10050B738(v43);
  v59[3] = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  v44 = sub_10001C8B8(v59);
  sub_10050B9D8(v44);
  swift_arrayDestroy();
  v45 = *&v1[v5];
  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v47 = swift_allocObject();
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 1;
  *(v47 + 96) = 0;
  v48 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v49 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  *(v47 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v47 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v47 + 16) = v45;
  *(v47 + 24) = sub_10051907C;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0;
  v50 = *(v47 + 56);
  v51 = *(v47 + 64);
  *(v47 + 64) = 0;
  *(v47 + 48) = 0;
  *(v47 + 56) = 0;
  v52 = v45;
  swift_retain_n();
  sub_100020438(v50, v51);
  v53 = *(v47 + 72);
  v54 = *(v47 + 80);
  *(v47 + 72) = 0;
  *(v47 + 80) = 0;
  sub_100020438(v53, v54);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_dragDropController] = v47;

  return result;
}

id sub_100508068()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100508460()
{
  v1 = sub_100508068();
  v2 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(*&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController] + 32);
  }

  v4 = *&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
  v5 = [v0 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = sub_10050FA0C();
  v9 = v8;
  v10 = sub_10050FAC8();
  v12 = v11;
  if (v3)
  {
    v13 = v10;
    v14 = [objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration) init];
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    if (v6 == 1)
    {
      v16 = objc_opt_self();
      v17 = [v16 fractionalWidthDimension:1.0];
      v18 = [v16 estimatedDimension:65.0];
      v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

      UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();

      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v19 elementKind:v20 alignment:1];

      sub_10010FC20(&qword_101183990, &qword_100EBC750);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_100EBC6C0;
      *(v22 + 32) = v21;
      sub_100009F78(0, &unk_1011913A0, NSCollectionLayoutBoundarySupplementaryItem_ptr);
      v23 = v21;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v14 setBoundarySupplementaryItems:isa];

      v25 = *(v15 + 16);
      *(v15 + 16) = v23;
    }

    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v26;
    v27[3] = 0;
    v27[4] = 0;
    v27[5] = v7;
    v27[6] = v9;
    v27[7] = v13;
    v27[8] = v12;
    v27[9] = static MPCPlayerCommandRequest.isAvailable(in:);
    v27[10] = 0;
    v27[11] = v15;
    v28 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    v33[4] = sub_1002193FC;
    v33[5] = v27;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 1107296256;
    v33[2] = sub_1005A63A8;
    v33[3] = &unk_1010B0630;
    v29 = _Block_copy(v33);

    v30 = [v28 initWithSectionProvider:v29 configuration:v14];

    _Block_release(v29);

    return v30;
  }

  else
  {
    v32 = sub_10059B450(v4, v6 == 1, static MPCPlayerCommandRequest.isAvailable(in:), 0);

    return v32;
  }
}

void sub_100508874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_100508068();
    v8 = v7[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if ((v8 & 1) != 0 || *(*&v6[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController] + 32) == 1)
    {
      v9 = [objc_opt_self() currentTraitCollection];
      [v9 displayScale];
    }

    else
    {
      v10 = *&v6[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView];
      v11 = sub_100189858();

      v11(a1, a2);
    }
  }
}

unint64_t sub_1005089E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v4 = sub_10010FC20(&unk_101181600, &unk_100EBD070);
  v27 = *(v4 - 8);
  v28 = v4;
  __chkstk_darwin();
  v6 = &v25 - v5;
  v7 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v25 - v9;
  v11 = type metadata accessor for MusicVideo();
  v25 = *(v11 - 8);
  v26 = v11;
  __chkstk_darwin();
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101184718, &qword_100EC03D0);
  __chkstk_darwin();
  v15 = &v25 - v14;
  v16 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v25 - v18;
  sub_1000089F8(a1, v31, &unk_101183F30, qword_100EBF960);
  if (!v32)
  {
    sub_1000095E8(v31, &unk_101183F30, qword_100EBF960);
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_7;
  }

  v20 = swift_dynamicCast();
  (*(v17 + 56))(v15, v20 ^ 1u, 1, v16);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_7:
    sub_1000095E8(v15, &qword_101184718, &qword_100EC03D0);
    v24 = type metadata accessor for Artwork();
    return (*(*(v24 - 8) + 56))(v30, 1, 1, v24);
  }

  (*(v17 + 32))(v19, v15, v16);
  v21 = MusicLibrarySectionedResponse.sections.getter();
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v21 + 16))
  {
    (*(v8 + 16))(v10, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v7);

    MusicLibrarySection.items.getter();
    (*(v8 + 8))(v10, v7);
    IndexPath.item.getter();
    v23 = v28;
    MusicItemCollection.subscript.getter();
    (*(v27 + 8))(v6, v23);
    MusicVideo.artwork.getter();
    (*(v25 + 8))(v13, v26);
    return (*(v17 + 8))(v19, v16);
  }

  __break(1u);
  return result;
}

void sub_100508EB8()
{
  v1 = v0;
  sub_10010FC20(&qword_101183990, &qword_100EBC750);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6C0;
  *(v2 + 32) = sub_100515694();
  v3 = [v0 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 != 1)
  {
    LOBYTE(v4) = sub_1003953C0();
  }

  v5 = sub_10051561C();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = sub_1007E953C(v8, v6);
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

      [v9 setHidden:v4 & 1];

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

  v12 = *&v1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleBarButtonGroups];

  sub_1003BBFC8(0, 0, v12);

  v13 = [v1 navigationItem];
  sub_100009F78(0, &unk_1011842F0, UIBarButtonItemGroup_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setTrailingItemGroups:isa];
}

void sub_1005090E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v6 = Strong;
      v7 = sub_100508460();
      v8 = sub_100508068();

      sub_100189E04(v7);

      Strong = v8;
    }
  }
}

void sub_10050918C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_100508460();
    v5 = sub_100508068();

    sub_100189E04(v4);
  }
}

uint64_t sub_100509210()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController;
  if (*&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController])
  {
    v2 = *&v0[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController];
  }

  else
  {
    type metadata accessor for LibrarySearchController();
    swift_allocObject();
    v3 = v0;
    v2 = sub_10043F158(0, 0, v3);

    *&v0[v1] = v2;
  }

  return v2;
}

uint64_t sub_1005092B4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v46 = *(v6 - 8);
  v47 = v6;
  __chkstk_darwin();
  v8 = &v40 - v7;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v40 - v11;
  v48 = *(sub_10010FC20(&qword_101184718, &qword_100EC03D0) - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v15 = &v40 - v14;
  __chkstk_darwin();
  v45 = &v40 - v16;
  __chkstk_darwin();
  v50 = &v40 - v17;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v40 = v8;
  v41 = v15;
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  v44 = a3;
  RequestResponse.Revision.content.getter(v12);
  v18 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  v19 = *(*(v18 - 8) + 48);
  if (v19(v12, 1, v18) == 1)
  {
    sub_1000095E8(v12, &unk_1011846C0, &unk_100ED13F0);
    v20 = 1;
    v21 = v50;
    v23 = v46;
    v22 = v47;
  }

  else
  {
    v23 = v46;
    v22 = v47;
    v21 = v50;
    (v46[2].isa)(v50, v12, v47);
    sub_1000095E8(v12, &unk_10118D1E0, &unk_100EC03B0);
    v20 = 0;
  }

  (v23[7].isa)(v21, v20, 1, v22);
  v47 = sub_100508068();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v19(v10, 1, v18) == 1)
  {
    sub_1000095E8(v10, &unk_1011846C0, &unk_100ED13F0);
    v46 = 0;
  }

  else
  {
    v25 = v40;
    (v23[2].isa)(v40, v10, v22);
    sub_1000095E8(v10, &unk_10118D1E0, &unk_100EC03B0);
    v46 = MusicLibrarySectionedResponse.sections.getter();
    (v23[1].isa)(v25, v22);
  }

  v26 = v45;
  sub_1000089F8(v21, v45, &qword_101184718, &qword_100EC03D0);
  if ((v23[6].isa)(v26, 1, v22) == 1)
  {
    sub_1000095E8(v26, &qword_101184718, &qword_100EC03D0);
    v45 = 0;
  }

  else
  {
    v45 = MusicLibrarySectionedResponse.sections.getter();
    (v23[1].isa)(v26, v22);
  }

  v27 = Strong;
  v28 = [*(sub_100509210() + 32) searchBar];
  LODWORD(v40) = [v28 isFirstResponder];

  v29 = v50;
  v30 = v41;
  sub_1000089F8(v50, v41, &qword_101184718, &qword_100EC03D0);
  v31 = *(v48 + 80);
  v32 = swift_allocObject();
  v33 = v44;
  v32[2] = v43;
  v32[3] = v33;
  v32[4] = v27;
  sub_10003D17C(v30, v32 + ((v31 + 40) & ~v31), &qword_101184718, &qword_100EC03D0);
  v34 = v42;
  sub_1000089F8(v29, v42, &qword_101184718, &qword_100EC03D0);
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  sub_10003D17C(v34, v35 + ((v31 + 24) & ~v31), &qword_101184718, &qword_100EC03D0);
  v36 = v27;

  v37 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v38 = sub_100519168();
  v39 = v47;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v46, v45, 0, 0, 1, v40 ^ 1, sub_100519084, v32, sub_100509B1C, 0, sub_100509BAC, 0, sub_1005190F8, v35, 0, 0, v37, v38);

  return sub_1000095E8(v29, &qword_101184718, &qword_100EC03D0);
}

uint64_t sub_100509960(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_101184718, &qword_100EC03D0);
  v7 = __chkstk_darwin();
  v9 = &v16 - v8;
  a1(v7);
  v10 = *(a3 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prefetchingController);
  sub_1000089F8(a4, v9, &qword_101184718, &qword_100EC03D0);
  v11 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000095E8(v9, &qword_101184718, &qword_100EC03D0);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v11;
    v13 = sub_10001C8B8(&v17);
    (*(v12 + 32))(v13, v9, v11);
  }

  v14 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v17, v10 + v14, &unk_101183F30, qword_100EBF960);
  return swift_endAccess();
}

uint64_t sub_100509B1C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicVideo();
  sub_100519250(&qword_101193C68, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

uint64_t sub_100509BAC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicFavoriteStatus();
  v45 = *(v3 - 8);
  __chkstk_darwin();
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v42 - v5;
  v6 = type metadata accessor for Artwork();
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  __chkstk_darwin();
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_101191420, &unk_100EC9120);
  __chkstk_darwin();
  v11 = &v42 - v10;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v46 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v42 - v13;
  __chkstk_darwin();
  v16 = &v42 - v15;
  v17 = MusicVideo.title.getter();
  v19 = v18;
  v49 = a2;
  if (v17 == MusicVideo.title.getter() && v19 == v20)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v22 = MusicVideo.artistName.getter();
  v24 = v23;
  if (v22 == MusicVideo.artistName.getter() && v24 == v25)
  {

    v26 = v47;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v26 = v47;
    if ((v27 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v47 = v3;
  MusicVideo.artwork.getter();
  MusicVideo.artwork.getter();
  v28 = *(v9 + 48);
  sub_1000089F8(v16, v11, &unk_101188920, &qword_100EBCC50);
  sub_1000089F8(v14, &v11[v28], &unk_101188920, &qword_100EBCC50);
  v29 = *(v48 + 48);
  if (v29(v11, 1, v26) == 1)
  {
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
    if (v29(&v11[v28], 1, v26) == 1)
    {
      sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
LABEL_17:
      v36 = v43;
      MusicVideo.favoriteStatus.getter();
      v37 = v44;
      MusicVideo.favoriteStatus.getter();
      v31 = static MusicFavoriteStatus.== infix(_:_:)();
      v38 = *(v45 + 8);
      v39 = v37;
      v40 = v47;
      v38(v39, v47);
      v38(v36, v40);
      return v31 & 1;
    }

    goto LABEL_14;
  }

  v30 = v46;
  sub_1000089F8(v11, v46, &unk_101188920, &qword_100EBCC50);
  if (v29(&v11[v28], 1, v26) == 1)
  {
    sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
    sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
    (*(v48 + 8))(v30, v26);
LABEL_14:
    sub_1000095E8(v11, &unk_101191420, &unk_100EC9120);
    goto LABEL_15;
  }

  v32 = v48;
  v33 = v42;
  (*(v48 + 32))(v42, &v11[v28], v26);
  sub_100519250(&unk_10118D3D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v32 + 8);
  v35(v33, v26);
  sub_1000095E8(v14, &unk_101188920, &qword_100EBCC50);
  sub_1000095E8(v16, &unk_101188920, &qword_100EBCC50);
  v35(v46, v26);
  sub_1000095E8(v11, &unk_101188920, &qword_100EBCC50);
  if (v34)
  {
    goto LABEL_17;
  }

LABEL_15:
  v31 = 0;
  return v31 & 1;
}

double sub_10050A1B8(char *a1, uint64_t a2)
{
  sub_10010FC20(&qword_101184718, &qword_100EC03D0);
  __chkstk_darwin();
  v5 = &v27 - v4;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v7 = &v27 - v6;
  v8 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v27 - v10;
  sub_100508EB8();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v7);

  v12 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1000095E8(v7, &unk_1011846C0, &unk_100ED13F0);
    v13 = 1;
  }

  else
  {
    (*(v9 + 16))(v11, v7, v8);
    sub_1000095E8(v7, &unk_10118D1E0, &unk_100EC03B0);
    v14 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v11, v8);
    v13 = !v14;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v15 = sub_100508068();
  [v15 setBouncesVertically:v13 & 1];

  [*&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v13 & 1];
  v16 = sub_100509210();
  sub_1000089F8(a2, v5, &qword_101184718, &qword_100EC03D0);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    sub_1000095E8(v5, &qword_101184718, &qword_100EC03D0);
  }

  else
  {
    v17 = MusicLibrarySectionedResponse.isEmpty.getter(v8);
    (*(v9 + 8))(v5, v8);
    if (!v17)
    {
      v26 = *(v16 + 64);
      *(v16 + 64) = 1;
      if (v26)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  v18 = (*(*&a1[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___searchController] + 120) + OBJC_IVAR____TtCC5Music23LibrarySearchControllerP33_D5FA0BEF708D1E9261BCB607AD690C3E11BarDelegate_text);
  v19 = v18[1];
  if (!v19)
  {
    v25 = *(v16 + 64);
    *(v16 + 64) = 0;
    if ((v25 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v20 = *v18 & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v21 = v20;
  }

  v22 = v21 != 0;
  v23 = *(v16 + 64);
  *(v16 + 64) = v22;
  if (v23 != v22)
  {
LABEL_12:
    sub_10043EAB8();
  }

LABEL_13:

  return sub_10050A588();
}

double sub_10050A588()
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v57 = &v44 - v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v56 = &v44 - v2;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v53 = &v44 - v3;
  v4 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = *(v54 + 64);
  __chkstk_darwin();
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v44 - v6;
  __chkstk_darwin();
  v58 = &v44 - v7;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v9 = &v44 - v8;
  v10 = type metadata accessor for MusicVideo();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v44 - v13;
  v15 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  v16 = v0 + v15;
  v17 = v10;
  v18 = v11;
  sub_1000089F8(v16, v9, &unk_1011846B0, &unk_100ECB630);
  if ((*(v11 + 48))(v9, 1, v17) == 1)
  {
    sub_1000095E8(v9, &unk_1011846B0, &unk_100ECB630);
LABEL_5:
    v23 = type metadata accessor for IndexPath();
    v24 = v57;
    (*(*(v23 - 8) + 56))(v57, 1, 1, v23);
    sub_100515AE4(v24);
    return result;
  }

  v19 = *(v11 + 32);
  v19(v14, v9, v17);
  v20 = v0;
  RequestResponse.Controller.revision.getter();
  v21 = v53;
  RequestResponse.Revision.content.getter(v53);

  v22 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_1000095E8(v21, &unk_1011846C0, &unk_100ED13F0);
    (*(v18 + 8))(v14, v17);
    goto LABEL_5;
  }

  v47 = v19;
  v48 = v18 + 32;
  v49 = v17;
  v57 = v14;
  v27 = v54;
  v26 = v55;
  v28 = v50;
  v29 = *(v54 + 16);
  v29(v50, v21, v55);
  sub_1000095E8(v21, &unk_10118D1E0, &unk_100EC03B0);
  v30 = *(v27 + 32);
  v50 = (v27 + 32);
  v46 = v30;
  v30(v58, v28, v26);
  v31 = v20;
  v53 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask;
  if (*(v20 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_prominentIndexPathTask))
  {

    Task.cancel()();
  }

  v32 = type metadata accessor for TaskPriority();
  (*(*(v32 - 8) + 56))(v56, 1, 1, v32);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v52;
  v45 = v31;
  v34 = v55;
  v29(v52, v58, v55);
  v35 = v51;
  v36 = v49;
  (*(v18 + 16))(v51, v57, v49);
  v37 = v54;
  v38 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v39 = (v5 + *(v18 + 80) + v38) & ~*(v18 + 80);
  v40 = (v12 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  v46(v41 + v38, v33, v34);
  v47(v41 + v39, v35, v36);
  *(v41 + v40) = v44;
  v42 = v56;
  v43 = sub_10035EB10(0, 0, v56, &unk_100ED1408, v41);
  sub_1000095E8(v42, &unk_101181520, &qword_100EBCC60);
  (*(v37 + 8))(v58, v34);
  (*(v18 + 8))(v57, v36);
  *(v45 + v53) = v43;

  return result;
}

double sub_10050ACA0(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v3 = &v14[-v2];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v3);

    v7 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
    if ((*(*(v7 - 8) + 48))(v3, 1, v7) == 1)
    {
      sub_1000095E8(v3, &unk_1011846C0, &unk_100ED13F0);
      v8 = _swiftEmptyArrayStorage;
    }

    else
    {
      v8 = *&v3[*(v7 + 36)];

      sub_1000095E8(v3, &unk_10118D1E0, &unk_100EC03B0);
    }

    v9 = v8[2];

    v10 = sub_10050AFA8();
    swift_getKeyPath();
    v15 = v10;
    sub_100519250(&unk_101193C40, _s17PlayShuffleHeaderV10DataSourceCMa, &unk_100ED73D4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v10 + 48);

    if ((v9 == 0) == v11)
    {
    }

    else
    {
      v12 = *&v6[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource];
      v13 = v9 == 0;
      if (((v9 == 0) ^ *(v12 + 48)))
      {
        swift_getKeyPath();
        __chkstk_darwin();
        *&v14[-16] = v12;
        v14[-8] = v13;
        v15 = v12;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      else
      {

        *(v12 + 48) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_10050AFA8()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource;
  if (*(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___playShuffleHeaderDataSource);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    _s17PlayShuffleHeaderV10DataSourceCMa(0);
    v2 = swift_allocObject();
    *(v2 + 48) = 0;

    ObservationRegistrar.init()();
    *(v2 + 16) = sub_1005192C8;
    *(v2 + 24) = v3;
    *(v2 + 32) = sub_1003C141C;
    *(v2 + 40) = v4;

    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_10050B0CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController);
    v11 = Strong;

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      a1 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = *(v10 + 48);
    v14 = *(*v13 + 96);
    swift_beginAccess();
    sub_100518E64(v13 + v14, v7, _s11MusicVideosVMa);
    v15 = &v7[*(v5 + 32)];

    *v15 = a1;
    v15[1] = v12;
    sub_100377E84(v7);
  }

  return result;
}

uint64_t sub_10050B22C@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___globalHeaderRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);

  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_10050B4B0@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_10050B738@<X0>(uint64_t a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_10010FC20(&qword_1011847E8, &unk_100ED1570);
  __chkstk_darwin();
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v8, v7, &qword_1011847E8, &unk_100ED1570);
  v9 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1000095E8(v7, &qword_1011847E8, &unk_100ED1570);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v10 + 16))(v5, a1, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  swift_beginAccess();
  sub_10006B010(v5, v1 + v8, &qword_1011847E8, &unk_100ED1570);
  return swift_endAccess();
}

uint64_t sub_10050B9D8@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_1011847E0, &unk_100EC0490);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___gridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_1011847E0, &unk_100EC0490);
  v8 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_1011847E0, &unk_100EC0490);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for MusicVideo();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_1011847E0, &unk_100EC0490);
  return swift_endAccess();
}

char *sub_10050BC50(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v41 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v7 = &v38 - v6;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v43 = *(v8 - 8);
  __chkstk_darwin();
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v12 = &v38 - v11;
  v13 = type metadata accessor for MusicVideo();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v38 - v17;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v20 = result;
    v39 = v8;
    v38 = v3;
    v21 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

    sub_10037B658(v44, v12);

    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {

      sub_1000095E8(v12, &unk_1011846B0, &unk_100ECB630);
      return 0;
    }

    else
    {
      (*(v14 + 32))(v18, v12, v13);
      v22 = *(*&v20[v21] + 48);
      v23 = *(*v22 + 96);
      swift_beginAccess();
      sub_100518E64(v22 + v23, v5, _s11MusicVideosVMa);
      sub_1006FCD38(v7);
      sub_100518FE8(v5, _s11MusicVideosVMa);
      v24 = v43;
      v25 = v39;
      if ((*(v43 + 48))(v7, 1, v39) == 1)
      {
        sub_1000095E8(v7, &unk_10118CDB0, &unk_100EC0360);
        v26 = 0;
      }

      else
      {
        v27 = v42;
        (*(v24 + 32))(v42, v7, v25);
        v28 = v25;
        v29 = v38;
        (*(v24 + 16))(v38, v27, v25);
        swift_storeEnumTagMultiPayload();
        v47 = 0;
        memset(v46, 0, sizeof(v46));
        v45[0] = v20;
        v30 = v20;
        v31 = String.init<A>(reflecting:)();
        v45[3] = &type metadata for Player.CommandIssuerIdentity;
        v45[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v45[0] = v31;
        v45[1] = v32;
        v33 = v30;
        v34 = v40;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v29, v46, 3, 0, 0, 1, 0, 1, v40, v20, v45);
        (*(v24 + 8))(v42, v28);
        v26 = PlaybackIntentDescriptor.intent.getter();
        sub_100518FE8(v34, type metadata accessor for PlaybackIntentDescriptor);
      }

      v35 = sub_10079A5F8(v26);
      v36 = sub_100797240(&off_10109B860, v35);

      (*(v14 + 16))(v16, v18, v13);
      v37 = sub_10079C240(v36, v16);

      (*(v14 + 8))(v18, v13);
      return v37;
    }
  }

  return result;
}

void sub_10050C2A4(char a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  v4 = sub_100508068();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  type metadata accessor for ApplicationMainMenu();
  v5 = sub_100314AEC();
  if (v5)
  {
    v6 = v5;
    sub_1007CA9AC(v2, v5);
  }
}

uint64_t sub_10050C3C4(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidAppear:", a1 & 1, v4);
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = MetricsEvent.Page.libraryMusicVideosList.unsafeMutableAddressor();
  sub_100518E64(v8, v6, type metadata accessor for MetricsEvent.Page);
  v9 = sub_10053771C();
  v11 = v10;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v12 = qword_101218AD0;
  v13 = GroupActivitiesManager.hasJoined.getter();
  v14 = GroupActivitiesManager.participantsCount.getter();
  v15 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v7) + 0xA0))(v6, v9, v11, v13 & 1, v14, *(v12 + v15));

  return sub_100518FE8(v6, type metadata accessor for MetricsEvent.Page);
}

void sub_10050C6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_10010FC20(&unk_10118D330, &qword_100ED15D0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - v7;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v10 = Strong;

  v11 = sub_1006E6A78();

  if (v11)
  {

LABEL_4:
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    UICollectionViewCell.contentConfiguration.setter();
    return;
  }

  sub_10050AFA8();
  sub_1003C13C8();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  *(&v13 + 1) = v5;
  v14 = sub_100020674(&unk_10118D340, &unk_10118D330, &qword_100ED15D0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10001C8B8(&v12);
  UIHostingConfiguration.margins(_:_:)();

  (*(v6 + 8))(v8, v5);
  UICollectionViewCell.contentConfiguration.setter();
}

void sub_10050C8D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&qword_101193AF0, &unk_100EC0370);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &unk_1011846C0, &unk_100ED13F0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118D1E0, &unk_100EC03B0);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

void sub_10050CC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_10118D2C0, &unk_100ED1530);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_101184760, &unk_100EC0410);
    v11 = _s8GridCellVMa(255);
    v12 = sub_100519250(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v5;
    v13[4] = sub_100020674(&unk_101184770, &qword_10118D2C0, &unk_100ED1530, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10050CEE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v49 = a2;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v41 - v5;
  v45 = type metadata accessor for MusicFavoriteStatus();
  v6 = *(v45 - 8);
  __chkstk_darwin();
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v41 - v9;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v14 = &v41 - v13;
  v15 = _s8GridCellVMa(0);
  __chkstk_darwin();
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MusicVideo();
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v18, &protocol witness table for MusicVideo, v14);
  v19 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v19 - 8) + 56))(v12, 5, 11, v19);
  v20 = sub_100508068();
  v21 = *&v20[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  ArtworkImage.Size.init(width:height:fittingAspectRatio:contentMode:)(v21, 0, 0, 1, 0x3FFC71C71C71C71CLL, 0, 2, v50);
  v22 = Corner.medium.unsafeMutableAddressor();
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v14, v12, 0, 1, v50, *v22, v22[1], *(v22 + 16), v17);
  v23 = MusicVideo.title.getter();
  v43 = v24;
  v44 = v23;
  v25 = MusicVideo.artistName.getter();
  v41 = v26;
  v42 = v25;
  MusicVideo.favoriteStatus.getter();
  v27 = v45;
  (*(v6 + 104))(v8, enum case for MusicFavoriteStatus.favorited(_:), v45);
  LOBYTE(v12) = static MusicFavoriteStatus.== infix(_:_:)();
  v28 = *(v6 + 8);
  v28(v8, v27);
  v28(v10, v27);
  MusicVideo.contentRating.getter();
  v29 = *(v18 - 8);
  v30 = v46;
  (*(v29 + 16))(v46, a1, v18);
  (*(v29 + 56))(v30, 0, 1, v18);
  v31 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v32 = v49;
  swift_beginAccess();
  v33 = v47;
  sub_1000089F8(v32 + v31, v47, &unk_1011846B0, &unk_100ECB630);
  sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  LOBYTE(v31) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v33, &unk_1011846B0, &unk_100ECB630);
  sub_1000095E8(v30, &unk_1011846B0, &unk_100ECB630);
  v34 = &v17[v15[5]];
  *v34 = 0;
  *(v34 + 1) = 0;
  *(v34 + 2) = 0;
  *&v17[v15[6]] = 0x3FFC71C71C71C71CLL;
  v35 = &v17[v15[7]];
  v36 = v43;
  *v35 = v44;
  *(v35 + 1) = v36;
  v37 = &v17[v15[8]];
  v38 = v41;
  *v37 = v42;
  *(v37 + 1) = v38;
  v17[v15[9]] = v12 & 1;
  v17[v15[11]] = v31 & 1;
  v39 = v15[12];
  *&v17[v39] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  sub_100519250(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100519250(&qword_10118D290, _s8GridCellVMa, &unk_100ED75D8);

  View.artworkCaching(owner:)();

  return sub_100518FE8(v17, _s8GridCellVMa);
}

void sub_10050D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10010FC20(&unk_1011847F0, &unk_100EC04A0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v21 - v12;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21[0] = v21;
    __chkstk_darwin();
    v21[-4] = a3;
    v21[-3] = v14;
    v21[-2] = a1;
    v21[-1] = a5;
    v15 = v14;
    sub_10010FC20(&unk_101193BE0, &unk_100ED1580);
    v21[1] = a1;
    v16 = sub_1001109D0(&unk_101184800, &unk_100EC04B0);
    v17 = sub_100020674(&unk_101193BF0, &unk_101184800, &unk_100EC04B0, &unk_100ED74E8);
    v22[0] = v16;
    v22[1] = v17;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v18 = *(v9 + 8);
    v18(v11, v8);
    static Edge.Set.vertical.getter();
    v19 = [v15 traitCollection];
    v20 = [v19 preferredContentSizeCategory];

    UIContentSizeCategory.isAccessibilityCategory.getter();
    v22[3] = v8;
    v22[4] = sub_100020674(&unk_101184810, &unk_1011847F0, &unk_100EC04A0, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v22);
    UIHostingConfiguration.margins(_:_:)();
    v18(v13, v8);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_10050D85C@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a3;
  v90 = a4;
  v85 = a2;
  v5 = type metadata accessor for MusicVideo();
  v72 = v5;
  v91 = *(v5 - 8);
  __chkstk_darwin();
  v87 = v6;
  v88 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v84 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v70 - v8;
  v73 = type metadata accessor for MusicFavoriteStatus();
  v9 = *(v73 - 8);
  __chkstk_darwin();
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v70 - v12;
  type metadata accessor for ArtworkImage.Placeholder(0);
  __chkstk_darwin();
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v17 = &v70 - v16;
  type metadata accessor for ArtworkImage.Info(0);
  __chkstk_darwin();
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10010FC20(&unk_101184800, &unk_100EC04B0);
  __chkstk_darwin();
  v22 = &v70 - v21;
  ArtworkImageViewModelAttributeProviding.artworkViewModel.getter(v5, &protocol witness table for MusicVideo, v17);
  v23 = sub_10010FC20(&unk_101182950, &qword_100EC0420);
  (*(*(v23 - 8) + 56))(v15, 5, 11, v23);
  ArtworkImage.Size.init(cgSize:)(0x4055555555555555, 0x4048000000000000, 0, v92);
  v24 = Corner.small.unsafeMutableAddressor();
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 16);
  v86 = v19;
  ArtworkImage.Info.init(viewModel:placeholder:aspectRatio:size:corner:)(v17, v15, 0, 1, v92, v25, v26, v27, v19);
  v28 = MusicVideo.title.getter();
  v82 = v29;
  v83 = v28;
  v81 = MusicVideo.artistName.getter();
  v80 = v30;
  v79 = MusicVideo.albumTitle.getter();
  v78 = v31;
  MusicVideo.duration.getter();
  v76 = static Duration.seconds(_:)();
  v75 = v32;
  MusicVideo.favoriteStatus.getter();
  v33 = v73;
  (*(v9 + 104))(v11, enum case for MusicFavoriteStatus.favorited(_:), v73);
  v74 = static MusicFavoriteStatus.== infix(_:_:)();
  v34 = *(v9 + 8);
  v34(v11, v33);
  v34(v13, v33);
  MusicVideo.contentRating.getter();
  v35 = v91;
  v36 = v77;
  v37 = v72;
  v71 = *(v91 + 16);
  v71(v77, a1, v72);
  v38 = *(v35 + 56);
  v39 = v36;
  v40 = v37;
  v38(v36, 0, 1, v37);
  v41 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  v42 = v85;
  swift_beginAccess();
  v43 = v84;
  sub_1000089F8(v42 + v41, v84, &unk_1011846B0, &unk_100ECB630);
  sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  LODWORD(v73) = static Optional<A>.==~ infix(_:_:)();
  sub_1000095E8(v43, &unk_1011846B0, &unk_100ECB630);
  sub_1000095E8(v39, &unk_1011846B0, &unk_100ECB630);
  v84 = sub_1007BA8CC(a1);
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v44 = sub_100519250(&unk_101193C00, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
  v77 = Player.state<A>(for:)(a1, v40, v44);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v88;
  v71(v88, a1, v40);
  v47 = v91;
  v48 = (*(v91 + 80) + 32) & ~*(v91 + 80);
  v49 = swift_allocObject();
  v50 = v89;
  *(v49 + 16) = v45;
  *(v49 + 24) = v50;
  (*(v47 + 32))(v49 + v48, v46, v40);

  v51 = v50;
  v52 = sub_100508068();
  v53 = *&v52[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 32];

  sub_100518F70(v86, v22, type metadata accessor for ArtworkImage.Info);
  v54 = &v22[v20[11]];
  v55 = v82;
  *v54 = v83;
  *(v54 + 1) = v55;
  v56 = &v22[v20[12]];
  v57 = v80;
  *v56 = v81;
  v56[1] = v57;
  v58 = &v22[v20[13]];
  v59 = v78;
  *v58 = v79;
  v58[1] = v59;
  v60 = &v22[v20[14]];
  v61 = v75;
  *v60 = v76;
  v60[1] = v61;
  v22[v20[15]] = v74 & 1;
  v22[v20[17]] = v73 & 1;
  v62 = &v22[v20[18]];
  sub_10010FC20(&unk_101184820, &unk_100ED1590);
  sub_100020674(&unk_101193C10, &unk_101184820, &unk_100ED1590, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  *v62 = ObservedObject.init(wrappedValue:)();
  v62[1] = v63;
  v64 = &v22[v20[19]];
  sub_10010FC20(&unk_101184830, &qword_100EC04C0);
  sub_100020674(&unk_101193C20, &unk_101184830, &qword_100EC04C0, &protocol conformance descriptor for MusicItemState<A>);
  *v64 = ObservedObject.init(wrappedValue:)();
  v64[1] = v65;
  *&v22[v20[20]] = 0;
  v66 = &v22[v20[21]];
  *v66 = sub_100518EFC;
  v66[1] = v49;
  *&v22[v20[22]] = v53;
  v67 = v20[23];
  *&v22[v67] = swift_getKeyPath();
  sub_10010FC20(&qword_10118A610, &qword_100EBCDD0);
  swift_storeEnumTagMultiPayload();
  v68 = v20[24];
  *&v22[v68] = swift_getKeyPath();
  sub_10010FC20(&unk_101184840, &qword_100EC0DE0);
  swift_storeEnumTagMultiPayload();

  sub_100519250(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_100020674(&unk_101193BF0, &unk_101184800, &unk_100EC04B0, &unk_100ED74E8);

  View.artworkCaching(owner:)();

  return sub_1000095E8(v22, &unk_101184800, &unk_100EC04B0);
}

char *sub_10050E270(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v122 = a4;
  v5 = type metadata accessor for UUID();
  v131 = *(v5 - 8);
  v132 = v5;
  __chkstk_darwin();
  v130 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v126 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v7;
  __chkstk_darwin();
  v9 = &v114 - v8;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v123 = &v114 - v10;
  v125 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  v11 = *(v125 + 64);
  __chkstk_darwin();
  v127 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v140 = &v114 - v12;
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v121 = &v114 - v15;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v124 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v114 - v17;
  __chkstk_darwin();
  v136 = &v114 - v19;
  __chkstk_darwin();
  v135 = &v114 - v20;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v134 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v139 = &v114 - v22;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v24 = &v114 - v23;
  v25 = type metadata accessor for MusicVideo();
  v137 = *(v25 - 8);
  v138 = v25;
  __chkstk_darwin();
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for IndexPath();
  v142 = *(v28 - 8);
  v143 = v28;
  __chkstk_darwin();
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v141 = &v114 - v31;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v120 = v18;
    v133 = v9;
    v33 = result;
    v34 = sub_100508068();
    v35 = [v34 indexPathForCell:a3];

    if (v35)
    {
      v118 = v11;
      v119 = v27;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = v141;
      v36 = v142;
      v38 = v143;
      (*(v142 + 32))(v141, v30, v143);
      v39 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

      sub_10037B658(v37, v24);

      v41 = v137;
      v40 = v138;
      if ((*(v137 + 48))(v24, 1, v138) == 1)
      {
        (*(v36 + 8))(v37, v38);

        sub_1000095E8(v24, &unk_1011846B0, &unk_100ECB630);
        return 0;
      }

      else
      {
        v42 = v119;
        (*(v41 + 32))(v119, v24, v40);
        sub_10010FC20(&unk_101183900, &unk_100EC1680);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_100EBC6B0;
        *(v43 + 56) = v40;
        *(v43 + 64) = &protocol witness table for MusicVideo;
        v44 = sub_10001C8B8((v43 + 32));
        (*(v41 + 16))(v44, v42, v40);
        v45 = [v33 traitCollection];
        sub_100137E8C();
        UITraitCollection.subscript.getter();

        v117 = v158[0];
        v46 = *(*&v33[v39] + 48);
        v47 = *(*v46 + 96);
        swift_beginAccess();
        sub_100518E64(v46 + v47, v14, _s11MusicVideosVMa);
        v48 = v121;
        sub_1006FCD38(v121);
        sub_100518FE8(v14, _s11MusicVideosVMa);
        v49 = v135;
        PlaybackIntentDescriptor.IntentType.init(_:)(v48, v135);
        memset(v158, 0, 40);
        if (qword_10117F608 != -1)
        {
          swift_once();
        }

        v50 = qword_101218AD8;
        sub_1000089F8(v49, v136, &unk_1011838E0, &unk_100EC1670);
        v121 = v50;
        v51 = UIViewController.playActivityInformation.getter();
        v53 = v52;
        v55 = v54;
        v57 = v56;
        sub_1000089F8(v158, &v150, &unk_101183910, &unk_100EBDD00);
        v122 = v33;
        if (*(&v151 + 1))
        {
          sub_100059A8C(&v150, &v154);
          v58 = v120;
        }

        else
        {
          *&v159 = v33;
          sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
          v59 = v33;
          sub_10010FC20(&unk_101183920, &unk_100EC0330);
          if (swift_dynamicCast())
          {
            sub_100059A8C(&v162, &v154);
            v58 = v120;
          }

          else
          {
            v164 = 0;
            v162 = 0u;
            v163 = 0u;
            *&v154 = v59;
            v60 = v59;
            v61 = String.init<A>(reflecting:)();
            v155 = &type metadata for Player.CommandIssuerIdentity;
            v156 = &protocol witness table for Player.CommandIssuerIdentity;
            *&v154 = v61;
            *(&v154 + 1) = v62;
            v58 = v120;
            if (*(&v163 + 1))
            {
              sub_1000095E8(&v162, &unk_101183910, &unk_100EBDD00);
            }
          }

          v49 = v135;
          if (*(&v151 + 1))
          {
            sub_1000095E8(&v150, &unk_101183910, &unk_100EBDD00);
          }
        }

        v63 = v139;
        Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v121, v136, v51, v53, v55, v57, &v154, v139);
        sub_1000095E8(v158, &unk_101183910, &unk_100EBDD00);
        sub_1000095E8(v49, &unk_1011838E0, &unk_100EC1670);
        v64 = type metadata accessor for Actions.PlaybackContext(0);
        v65 = *(v64 - 8);
        (*(v65 + 56))(v63, 0, 1, v64);
        v66 = type metadata accessor for PlaylistContext(0);
        (*(*(v66 - 8) + 56))(v140, 1, 1, v66);
        v67 = v142;
        v68 = v123;
        v69 = v143;
        (*(v142 + 16))(v123, v141, v143);
        (*(v67 + 56))(v68, 0, 1, v69);
        v70 = v122;
        sub_100376BAC(v68, v158);
        sub_1000095E8(v68, &unk_10118BCE0, &qword_100EC6450);
        v71 = v133;
        sub_10050F5FC(v133);
        v72 = type metadata accessor for Actions.MetricsReportingContext(0);
        (*(*(v72 - 8) + 56))(v71, 0, 1, v72);
        sub_100008FE4(v43 + 32, v157);

        sub_1000089F8(v158, &v150, &unk_1011845E0, &unk_100EBF3A0);
        if (v153 == 1)
        {
          v164 = 0;
          v162 = 0u;
          v163 = 0u;
          v165 = xmmword_100EBCEF0;
          PresentationSource.init(viewController:position:)(v70, &v162, &v154);
          v73 = v134;
          if (v153 != 1)
          {
            sub_1000095E8(&v150, &unk_1011845E0, &unk_100EBF3A0);
          }
        }

        else
        {
          sub_10012B828(&v150, &v154);
          v73 = v134;
        }

        swift_getObjectType();
        v74 = swift_conformsToProtocol2();
        if (v74)
        {
          v123 = v74;
          v75 = v70;
          v135 = v70;
        }

        else
        {
          v135 = 0;
          v123 = 0;
        }

        v136 = swift_allocBox();
        v77 = v76;
        sub_1000089F8(v139, v73, &unk_10118AB20, &unk_100EBF390);
        v78 = *(v65 + 48);
        if (v78(v73, 1, v64) == 1)
        {
          v79 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
          (*(*(v79 - 8) + 56))(v58, 1, 1, v79);
          v152 = 0;
          v150 = 0u;
          v151 = 0u;
          sub_1000089F8(v58, v124, &unk_1011838E0, &unk_100EC1670);
          v121 = v121;
          v80 = UIViewController.playActivityInformation.getter();
          v115 = v82;
          v116 = v81;
          v84 = v83;
          sub_1000089F8(&v150, &v148, &unk_101183910, &unk_100EBDD00);
          if (v149)
          {
            sub_100059A8C(&v148, &v159);
          }

          else
          {
            v147 = v70;
            sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
            v85 = v70;
            sub_10010FC20(&unk_101183920, &unk_100EC0330);
            if (swift_dynamicCast())
            {
              sub_100059A8C(&v144, &v159);
              v73 = v134;
            }

            else
            {
              v146 = 0;
              v144 = 0u;
              v145 = 0u;
              *&v159 = v85;
              v86 = v85;
              v87 = String.init<A>(reflecting:)();
              *(&v160 + 1) = &type metadata for Player.CommandIssuerIdentity;
              v161 = &protocol witness table for Player.CommandIssuerIdentity;
              *&v159 = v87;
              *(&v159 + 1) = v88;
              v73 = v134;
              if (*(&v145 + 1))
              {
                sub_1000095E8(&v144, &unk_101183910, &unk_100EBDD00);
              }
            }

            v58 = v120;
            if (v149)
            {
              sub_1000095E8(&v148, &unk_101183910, &unk_100EBDD00);
            }
          }

          Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v121, v124, v80, v116, v115, v84, &v159, v77);
          sub_1000095E8(&v150, &unk_101183910, &unk_100EBDD00);
          sub_1000095E8(v58, &unk_1011838E0, &unk_100EC1670);
          if (v78(v73, 1, v64) != 1)
          {
            sub_1000095E8(v73, &unk_10118AB20, &unk_100EBF390);
          }
        }

        else
        {
          sub_100518F70(v73, v77, type metadata accessor for Actions.PlaybackContext);
        }

        v89 = &v77[*(v64 + 28)];
        sub_1000089F8(v89, &v159, &unk_101183910, &unk_100EBDD00);
        if (*(&v160 + 1))
        {
          sub_100059A8C(&v159, &v150);
        }

        else
        {
          *&v150 = v122;
          v90 = v122;
          v91 = String.init<A>(reflecting:)();
          *(&v151 + 1) = &type metadata for Player.CommandIssuerIdentity;
          v152 = &protocol witness table for Player.CommandIssuerIdentity;
          *&v150 = v91;
          *(&v150 + 1) = v92;
          if (*(&v160 + 1))
          {
            sub_1000095E8(&v159, &unk_101183910, &unk_100EBDD00);
          }
        }

        sub_10010FC20(&unk_101183930, &unk_100EC1690);
        v93 = swift_allocObject();
        *(v93 + 16) = xmmword_100EBDC20;
        *(v93 + 56) = &type metadata for Player.CommandIssuerIdentity;
        *(v93 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v93 + 32) = 0x4D747865746E6F43;
        *(v93 + 40) = 0xEB00000000756E65;
        sub_100008FE4(&v150, v93 + 72);
        v94 = static Player.CommandIssuer<>.combining(_:)(v93);
        v96 = v95;

        sub_10000959C(&v150);
        *(&v151 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v152 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v150 = v94;
        *(&v150 + 1) = v96;
        sub_10006B010(&v150, v89, &unk_101183910, &unk_100EBDD00);
        sub_100008FE4(v157, &v150);
        sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
        v134 = String.init<A>(describing:)();
        v124 = v97;
        v121 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v157, &v148);
        sub_10012B7A8(&v154, &v150);
        v98 = v126;
        sub_1000089F8(v133, v126, &unk_1011838D0, &unk_100EC0320);
        v99 = v127;
        sub_1000089F8(v140, v127, &unk_1011845D0, &unk_100EBF380);
        v100 = (*(v128 + 80) + 160) & ~*(v128 + 80);
        v101 = (v129 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
        v102 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
        v103 = (*(v125 + 80) + v102 + 8) & ~*(v125 + 80);
        v129 = (v103 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
        v104 = (v103 + v118 + 31) & 0xFFFFFFFFFFFFFFF8;
        v105 = swift_allocObject();
        sub_100059A8C(&v148, v105 + 16);
        *(v105 + 56) = v117;
        sub_10012B828(&v150, v105 + 64);
        sub_10003D17C(v98, v105 + v100, &unk_1011838D0, &unk_100EC0320);
        *(v105 + v101) = v121;
        *(v105 + v102) = v136;
        sub_10003D17C(v99, v105 + v103, &unk_1011845D0, &unk_100EBF380);
        v106 = v105 + v129;
        v107 = v123;
        *v106 = v135;
        *(v106 + 8) = v107;
        *(v106 + 16) = 2;
        v108 = (v105 + v104);
        *v108 = variable initialization expression of Library.Context.playlistVariants;
        v108[1] = 0;
        swift_unknownObjectRetain();

        v109 = v130;
        UUID.init()();
        v110 = UUID.uuidString.getter();
        v112 = v111;
        (*(v131 + 8))(v109, v132);
        v166._countAndFlagsBits = v134;
        v166._object = v124;
        ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v159, v166, v110, v112, sub_10021953C, v105);
        swift_unknownObjectRelease();
        sub_10012BA6C(&v154);
        sub_10000959C(v157);

        v113 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
        v154 = v159;
        sub_100015BB0(&v154);
        v150 = v160;
        sub_100015BB0(&v150);

        sub_1000095E8(v133, &unk_1011838D0, &unk_100EC0320);
        sub_1000095E8(v158, &unk_1011845E0, &unk_100EBF3A0);
        sub_1000095E8(v140, &unk_1011845D0, &unk_100EBF380);
        sub_1000095E8(v139, &unk_10118AB20, &unk_100EBF390);
        (*(v137 + 8))(v119, v138);
        (*(v142 + 8))(v141, v143);
        return v113;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10050F5FC@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_100518F70(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.libraryMusicVideosList.unsafeMutableAddressor();
  sub_100518E64(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_100518E64(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

char *(*sub_10050FA0C())(uint64_t a1)
{
  v1 = (v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___leadingSwipeActions);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_100519248;
    *v1 = sub_100519248;
    v1[1] = v5;

    sub_100020438(v6, v7);
  }

  sub_100030444(v2, v3);
  return v4;
}

char *(*sub_10050FAC8())(uint64_t a1)
{
  v1 = (v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___trailingSwipeActions);
  }

  else
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = *v1;
    v7 = v1[1];
    v4 = sub_100519240;
    *v1 = sub_100519240;
    v1[1] = v5;

    sub_100020438(v6, v7);
  }

  sub_100030444(v2, v3);
  return v4;
}

uint64_t sub_10050FE84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v18 - v8;
  v10 = UICollectionView.elementKindGlobalHeader.unsafeMutableAddressor();
  v11 = *v10 == a2 && v10[1] == a3;
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (static String._unconditionallyBridgeFromObjectiveC(_:)() != a2 || v12 != a3)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v14)
      {
LABEL_14:
        sub_10050B4B0(v9);
        goto LABEL_15;
      }

      strcpy(v18, "Unknown kind=");
      v18[7] = -4864;
      v15._countAndFlagsBits = a2;
      v15._object = a3;
      String.append(_:)(v15);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    goto LABEL_14;
  }

  sub_10050B22C(v9);
LABEL_15:
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v16 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v16;
}

id sub_1005101E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v5 = sub_10010FC20(&unk_101193A90, &qword_100EC02D0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v41 - v7;
  v9 = sub_10010FC20(&unk_101193A80, &unk_100ED1360);
  v41 = *(v9 - 8);
  v42 = v9;
  __chkstk_darwin();
  v11 = &v41 - v10;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v41 - v14;
  __chkstk_darwin();
  v43 = &v41 - v16;
  __chkstk_darwin();
  v18 = &v41 - v17;
  sub_10037B658(a2, &v41 - v17);
  v19 = sub_100508068();
  v20 = v19[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v20 & 1) != 0 || (*(*(v3 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_layoutVariantController) + 32))
  {
    sub_10050B738(v8);
    v21 = sub_1007F8490(v8, a2, v18);
    (*(v6 + 8))(v8, v5);
    v22 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
    swift_beginAccess();
    sub_1000089F8(v3 + v22, v15, &unk_1011846B0, &unk_100ECB630);
    v23 = type metadata accessor for MusicVideo();
    sub_100519250(&qword_101193AC0, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);
    v24 = static Optional<A>.==~ infix(_:_:)();
    sub_1000095E8(v15, &unk_1011846B0, &unk_100ECB630);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v24 & 1;
    *(v26 + 24) = v25;
    v27 = v21;

    UICollectionViewCell.configurationUpdateHandler.setter();

    sub_1000089F8(v18, v13, &unk_1011846B0, &unk_100ECB630);
    v28 = *(v23 - 8);
    if ((*(v28 + 48))(v13, 1, v23) == 1)
    {
      sub_1000095E8(v13, &unk_1011846B0, &unk_100ECB630);
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
    }

    else
    {
      *(&v46 + 1) = v23;
      v47 = &protocol witness table for MusicVideo;
      v29 = sub_10001C8B8(&v45);
      (*(v28 + 32))(v29, v13, v23);
    }
  }

  else
  {
    sub_10050B9D8(v11);
    v30 = sub_1007F7F54(v11, a2, v18);
    (*(v41 + 8))(v11, v42);
    v31 = Corner.medium.unsafeMutableAddressor();
    v32 = *v31;
    v33 = v31[1];
    v34 = *(v31 + 16);
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    *(v35 + 24) = v33;
    *(v35 + 32) = v34;
    UICollectionViewCell.configurationUpdateHandler.setter();
    v36 = v43;
    sub_1000089F8(v18, v43, &unk_1011846B0, &unk_100ECB630);
    v37 = type metadata accessor for MusicVideo();
    v38 = *(v37 - 8);
    if ((*(v38 + 48))(v36, 1, v37) == 1)
    {
      sub_1000095E8(v36, &unk_1011846B0, &unk_100ECB630);
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
    }

    else
    {
      *(&v46 + 1) = v37;
      v47 = &protocol witness table for MusicVideo;
      v39 = sub_10001C8B8(&v45);
      (*(v38 + 32))(v39, v36, v37);
    }

    v27 = sub_1004F24B0(&v45);
  }

  sub_1000095E8(v18, &unk_1011846B0, &unk_100ECB630);
  sub_1000095E8(&v45, &qword_1011A3DD0, &unk_100EC03F0);
  return v27;
}

void sub_1005107FC(void *a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_10010FC20(&qword_101183A90, &unk_100EBE340);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v21 - v7;
  v9 = [a1 contentView];
  if (a3)
  {
    v10 = [*HI.Color.prominentBackgroundColor.unsafeMutableAddressor() colorWithAlphaComponent:0.22];
  }

  else
  {
    v10 = 0;
  }

  [v9 setBackgroundColor:v10];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong traitCollection];

    v14 = [v13 userInterfaceIdiom];
    if (v14 == 6)
    {
      v15 = [a1 contentView];
      [v15 setClipsToBounds:UICellConfigurationState.isSwiped.getter() & 1];

      v16 = [a1 contentView];
      if (a3)
      {
        v17 = UIView.Corner.large.unsafeMutableAddressor();
        v18 = type metadata accessor for UIView.Corner();
        v19 = *(v18 - 8);
        (*(v19 + 16))(v8, v17, v18);
        (*(v19 + 56))(v8, 0, 1, v18);
      }

      else
      {
        v20 = type metadata accessor for UIView.Corner();
        (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
      }

      UIView.corner.setter();
    }
  }
}

BOOL sub_100510BA8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = UICollectionView.isDraggingCell(at:)();

  (*(v6 + 8))(v8, v5);
  return (v10 & 1) == 0;
}

uint64_t sub_100510C9C(void *a1, void (*a2)(char *, uint64_t))
{
  v3 = v2;
  v110 = a2;
  v111 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v100 = &v88 - v4;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v95 = &v88 - v5;
  v90 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v91 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v98 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v99 = &v88 - v8;
  v103 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v101 = *(v103 - 8);
  __chkstk_darwin();
  v89 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011848A0, &unk_100EC64F0);
  __chkstk_darwin();
  v104 = &v88 - v10;
  v102 = type metadata accessor for PlaybackIntentDescriptor(0);
  v105 = *(v102 - 8);
  __chkstk_darwin();
  v93 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v11;
  __chkstk_darwin();
  v94 = &v88 - v12;
  v107 = type metadata accessor for GenericMusicItem();
  v13 = *(v107 - 8);
  __chkstk_darwin();
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v113 = *(v108 - 8);
  __chkstk_darwin();
  v106 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v88 - v17;
  v18 = type metadata accessor for MusicVideo();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v112 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v97 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v88 - v22;
  __chkstk_darwin();
  v25 = &v88 - v24;
  v26 = __chkstk_darwin();
  v28 = &v88 - v27;
  v114 = v19;
  v29 = *(v19 + 56);
  v115 = v18;
  v96 = v29;
  (v29)(&v88 - v27, 1, 1, v18, v26);
  v30 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_highlightedMusicVideo;
  swift_beginAccess();
  sub_1000089F8(&v3[v30], v25, &unk_1011846B0, &unk_100ECB630);
  swift_beginAccess();
  sub_1002190E0(v28, &v3[v30], &unk_1011846B0, &unk_100ECB630);
  swift_endAccess();
  sub_1005157C4(v25);
  sub_1000095E8(v25, &unk_1011846B0, &unk_100ECB630);
  v31 = v28;
  v32 = v110;
  sub_1000095E8(v31, &unk_1011846B0, &unk_100ECB630);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  [v111 deselectItemAtIndexPath:isa animated:1];

  v34 = [v3 navigationItem];
  v35 = [v34 searchController];

  if (v35)
  {
    v36 = [v35 searchBar];

    [v36 resignFirstResponder];
  }

  v37 = *&v3[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController];
  sub_10037B658(v32, v23);
  v38 = v114;
  v39 = v115;
  if ((*(v114 + 48))(v23, 1, v115) == 1)
  {
    v40 = &unk_1011846B0;
    v41 = &unk_100ECB630;
    v42 = v23;
    return sub_1000095E8(v42, v40, v41);
  }

  v111 = v3;
  v44 = v112;
  (*(v38 + 32))(v112, v23, v39);
  v45 = *(v38 + 16);
  v45(v15, v44, v39);
  v46 = v107;
  (*(v13 + 104))(v15, enum case for GenericMusicItem.musicVideo(_:), v107);
  v47 = v109;
  sub_100538C48(v15, v109);
  (*(v13 + 8))(v15, v46);
  v48 = v113;
  v49 = v106;
  v50 = v108;
  (*(v113 + 104))(v106, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v108);
  v51 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
  v54 = *(v48 + 8);
  v53 = v48 + 8;
  v52 = v54;
  v54(v49, v50);
  if (v51)
  {
    v110 = v52;
    v113 = v53;
    v55 = v97;
    v56 = v112;
    v57 = v115;
    v45(v97, v112, v115);
    v96(v55, 0, 1, v57);
    v58 = *(v37 + 48);
    v59 = *(*v58 + 96);
    swift_beginAccess();
    v60 = v58 + v59;
    v61 = v98;
    sub_100518E64(v60, v98, _s11MusicVideosVMa);
    v62 = v99;
    sub_1006FD384(v55, v99);
    sub_100518FE8(v61, _s11MusicVideosVMa);
    v63 = v101;
    v64 = v103;
    if ((*(v101 + 48))(v62, 1, v103) == 1)
    {
      sub_1000095E8(v62, &unk_10118CDB0, &unk_100EC0360);
      v65 = 1;
      v66 = v109;
      v67 = v104;
    }

    else
    {
      v71 = v89;
      (*(v63 + 32))(v89, v62, v64);
      v72 = v91;
      (*(v63 + 16))(v91, v71, v64);
      swift_storeEnumTagMultiPayload();
      v118 = 0;
      memset(v117, 0, sizeof(v117));
      v73 = v111;
      v116[0] = v111;
      v74 = v111;
      v75 = String.init<A>(reflecting:)();
      v116[3] = &type metadata for Player.CommandIssuerIdentity;
      v116[4] = &protocol witness table for Player.CommandIssuerIdentity;
      v116[0] = v75;
      v116[1] = v76;
      v77 = v74;
      v67 = v104;
      PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v72, v117, 3, 0, 0, 1, 0, 1, v104, v73, v116);
      (*(v63 + 8))(v71, v64);
      v65 = 0;
      v66 = v109;
    }

    v78 = v50;
    v79 = v105;
    v80 = v102;
    (*(v105 + 56))(v67, v65, 1, v102);
    sub_1000095E8(v55, &unk_1011846B0, &unk_100ECB630);
    if ((*(v79 + 48))(v67, 1, v80) == 1)
    {
      v110(v66, v78);
      (*(v114 + 8))(v56, v115);
      v40 = &qword_1011848A0;
      v41 = &unk_100EC64F0;
      v42 = v67;
      return sub_1000095E8(v42, v40, v41);
    }

    v81 = v94;
    sub_100518F70(v67, v94, type metadata accessor for PlaybackIntentDescriptor);
    v82 = type metadata accessor for TaskPriority();
    v83 = v95;
    (*(*(v82 - 8) + 56))(v95, 1, 1, v82);
    v84 = v93;
    sub_100518E64(v81, v93, type metadata accessor for PlaybackIntentDescriptor);
    type metadata accessor for MainActor();
    v85 = static MainActor.shared.getter();
    v86 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v87 = swift_allocObject();
    *(v87 + 16) = v85;
    *(v87 + 24) = &protocol witness table for MainActor;
    sub_100518F70(v84, v87 + v86, type metadata accessor for PlaybackIntentDescriptor);
    sub_1001F4F78(0, 0, v83, &unk_100ECA700, v87);

    sub_100518FE8(v81, type metadata accessor for PlaybackIntentDescriptor);
    v110(v66, v78);
    return (*(v114 + 8))(v56, v115);
  }

  else
  {
    v68 = type metadata accessor for IndexPath();
    v69 = v100;
    (*(*(v68 - 8) + 56))(v100, 1, 1, v68);
    sub_100376BAC(v69, v117);
    sub_1000095E8(v69, &unk_10118BCE0, &qword_100EC6450);
    v70 = v112;
    sub_10085E3A4(v47, v112, v117);
    sub_10012BA6C(v117);
    v52(v47, v50);
    return (*(v114 + 8))(v70, v115);
  }
}

uint64_t sub_100511C10(uint64_t a1)
{
  type metadata accessor for MusicVideo();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return sub_1007351B8(v4, 1);
}

unint64_t sub_100511CD0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, id), char *a4)
{
  v118 = a4;
  v116 = a3;
  v4 = type metadata accessor for UUID();
  v129 = *(v4 - 8);
  __chkstk_darwin();
  v128 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v126 = v6;
  v127 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v133 = &v110 - v7;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v117 = &v110 - v8;
  v122 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v123 = v9;
  v124 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v135 = &v110 - v10;
  v130 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v119 = *(v130 - 1);
  __chkstk_darwin();
  v114 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v13 = &v110 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v15 = &v110 - v14;
  v16 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v113 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v120 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v121 = &v110 - v22;
  __chkstk_darwin();
  v132 = &v110 - v23;
  __chkstk_darwin();
  v25 = &v110 - v24;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v131 = &v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v110 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v29 = Strong;
  v115 = v25;
  v112 = v4;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6B0;
  v31 = type metadata accessor for MusicVideo();
  *(v30 + 56) = v31;
  *(v30 + 64) = &protocol witness table for MusicVideo;
  v110 = v30;
  v32 = sub_10001C8B8((v30 + 32));
  (*(*(v31 - 8) + 16))(v32, v116, v31);
  v33 = [v29 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v111 = v150;
  v34 = *(*&v29[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] + 48);
  v35 = *(*v34 + 96);
  swift_beginAccess();
  sub_100518E64(v34 + v35, v13, _s11MusicVideosVMa);
  sub_1006FCD38(v15);
  sub_100518FE8(v13, _s11MusicVideosVMa);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000095E8(v15, &unk_10118CDB0, &unk_100EC0360);
    v36 = 1;
    v37 = v29;
    v38 = v130;
    v39 = v115;
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
    v41 = v114;
    (*(v17 + 16))(v114, v19, v16);
    v38 = v130;
    swift_storeEnumTagMultiPayload();
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    *&v146 = v29;
    v42 = v29;
    v43 = String.init<A>(reflecting:)();
    v147 = &type metadata for Player.CommandIssuerIdentity;
    v148 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v146 = v43;
    *(&v146 + 1) = v44;
    v45 = v42;
    v46 = v113;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v41, &v150, 3, 0, 0, 1, 0, 1, v113, v29, &v146);
    (*(v17 + 8))(v19, v16);
    v39 = v115;
    sub_100518E64(v46, v115, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    sub_100518FE8(v46, type metadata accessor for PlaybackIntentDescriptor);
    v36 = 0;
    v37 = v29;
  }

  v116 = v119[7];
  v116(v39, v36, 1, v38);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v47 = qword_101218AD8;
  sub_1000089F8(v39, v132, &unk_1011838E0, &unk_100EC1670);
  v119 = v47;
  v48 = UIViewController.playActivityInformation.getter();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  sub_1000089F8(&v150, &v142, &unk_101183910, &unk_100EBDD00);
  if (*(&v143 + 1))
  {
    sub_100059A8C(&v142, &v146);
  }

  else
  {
    *&v153 = v37;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v55 = v37;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v156, &v146);
    }

    else
    {
      v158 = 0;
      v156 = 0u;
      v157 = 0u;
      *&v146 = v55;
      v56 = v55;
      v57 = String.init<A>(reflecting:)();
      v147 = &type metadata for Player.CommandIssuerIdentity;
      v148 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v146 = v57;
      *(&v146 + 1) = v58;
      if (*(&v157 + 1))
      {
        sub_1000095E8(&v156, &unk_101183910, &unk_100EBDD00);
      }
    }

    v39 = v115;
    if (*(&v143 + 1))
    {
      sub_1000095E8(&v142, &unk_101183910, &unk_100EBDD00);
    }
  }

  v59 = v134;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v119, v132, v48, v50, v52, v54, &v146, v134);
  sub_1000095E8(&v150, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v39, &unk_1011838E0, &unk_100EC1670);
  v60 = type metadata accessor for Actions.PlaybackContext(0);
  v61 = *(v60 - 8);
  (*(v61 + 56))(v59, 0, 1, v60);
  v62 = type metadata accessor for PlaylistContext(0);
  (*(*(v62 - 8) + 56))(v135, 1, 1, v62);
  v63 = type metadata accessor for IndexPath();
  v64 = *(v63 - 8);
  v65 = v117;
  (*(v64 + 16))(v117, v118, v63);
  (*(v64 + 56))(v65, 0, 1, v63);
  sub_100376BAC(v65, &v150);
  sub_1000095E8(v65, &unk_10118BCE0, &qword_100EC6450);
  v66 = v133;
  sub_10050F5FC(v133);
  v67 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  sub_100008FE4(v110 + 32, v149);

  sub_1000089F8(&v150, &v142, &unk_1011845E0, &unk_100EBF3A0);
  if (v145 == 1)
  {
    v158 = 0;
    v156 = 0u;
    v157 = 0u;
    v159 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v37, &v156, &v146);
    v68 = v131;
    if (v145 != 1)
    {
      sub_1000095E8(&v142, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v142, &v146);
    v68 = v131;
  }

  swift_getObjectType();
  v69 = swift_conformsToProtocol2();
  if (v69)
  {
    v117 = v69;
    v70 = v37;
    v118 = v37;
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  v132 = swift_allocBox();
  v72 = v71;
  sub_1000089F8(v134, v68, &unk_10118AB20, &unk_100EBF390);
  v73 = *(v61 + 48);
  if (v73(v68, 1, v60) == 1)
  {
    v74 = v121;
    v116(v121, 1, 1, v130);
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    sub_1000089F8(v74, v120, &unk_1011838E0, &unk_100EC1670);
    v130 = v119;
    v75 = UIViewController.playActivityInformation.getter();
    v119 = v76;
    v116 = v77;
    v79 = v78;
    sub_1000089F8(&v142, &v140, &unk_101183910, &unk_100EBDD00);
    if (v141)
    {
      sub_100059A8C(&v140, &v153);
      v80 = v131;
    }

    else
    {
      v139 = v37;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v81 = v37;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v136, &v153);
        v80 = v131;
      }

      else
      {
        v138 = 0;
        v136 = 0u;
        v137 = 0u;
        *&v153 = v81;
        v82 = v81;
        v83 = String.init<A>(reflecting:)();
        *(&v154 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v155 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v153 = v83;
        *(&v153 + 1) = v84;
        v80 = v131;
        if (*(&v137 + 1))
        {
          sub_1000095E8(&v136, &unk_101183910, &unk_100EBDD00);
        }
      }

      if (v141)
      {
        sub_1000095E8(&v140, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v130, v120, v75, v119, v116, v79, &v153, v72);
    sub_1000095E8(&v142, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v121, &unk_1011838E0, &unk_100EC1670);
    if (v73(v80, 1, v60) != 1)
    {
      sub_1000095E8(v80, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_100518F70(v68, v72, type metadata accessor for Actions.PlaybackContext);
  }

  v85 = *(v60 + 28);
  sub_1000089F8(&v72[v85], &v153, &unk_101183910, &unk_100EBDD00);
  if (*(&v154 + 1))
  {
    sub_100059A8C(&v153, &v142);
  }

  else
  {
    *&v142 = v37;
    v86 = v37;
    v87 = String.init<A>(reflecting:)();
    *(&v143 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v144 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v142 = v87;
    *(&v142 + 1) = v88;
    if (*(&v154 + 1))
    {
      sub_1000095E8(&v153, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v89 = swift_allocObject();
  *(v89 + 16) = xmmword_100EBDC20;
  *(v89 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v89 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v89 + 32) = 0x4D747865746E6F43;
  *(v89 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v142, v89 + 72);
  v90 = static Player.CommandIssuer<>.combining(_:)(v89);
  v92 = v91;

  sub_10000959C(&v142);
  *(&v143 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v144 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v142 = v90;
  *(&v142 + 1) = v92;
  sub_10006B010(&v142, &v72[v85], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v149, &v142);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v130 = String.init<A>(describing:)();
  v121 = v93;
  v120 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v149, &v140);
  sub_10012B7A8(&v146, &v142);
  v94 = v127;
  sub_1000089F8(v133, v127, &unk_1011838D0, &unk_100EC0320);
  v131 = v37;
  v95 = v124;
  sub_1000089F8(v135, v124, &unk_1011845D0, &unk_100EBF380);
  v96 = (*(v125 + 80) + 160) & ~*(v125 + 80);
  v97 = (v126 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v97 + 15) & 0xFFFFFFFFFFFFFFF8;
  v99 = (*(v122 + 80) + v98 + 8) & ~*(v122 + 80);
  v126 = (v99 + v123 + 7) & 0xFFFFFFFFFFFFFFF8;
  v100 = (v99 + v123 + 31) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  sub_100059A8C(&v140, v101 + 16);
  *(v101 + 56) = v111;
  sub_10012B828(&v142, v101 + 64);
  sub_10003D17C(v94, v101 + v96, &unk_1011838D0, &unk_100EC0320);
  *(v101 + v97) = v120;
  *(v101 + v98) = v132;
  sub_10003D17C(v95, v101 + v99, &unk_1011845D0, &unk_100EBF380);
  v102 = v101 + v126;
  v103 = v117;
  *v102 = v118;
  *(v102 + 8) = v103;
  *(v102 + 16) = 2;
  v104 = (v101 + v100);
  *v104 = variable initialization expression of Library.Context.playlistVariants;
  v104[1] = 0;
  swift_unknownObjectRetain();

  v105 = v128;
  UUID.init()();
  v106 = UUID.uuidString.getter();
  v108 = v107;
  (*(v129 + 8))(v105, v112);
  v160._countAndFlagsBits = v130;
  v160._object = v121;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v153, v160, v106, v108, sub_100217D28, v101);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v146);
  sub_10000959C(v149);

  v40 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v146 = v153;
  sub_100015BB0(&v146);
  v142 = v154;
  sub_100015BB0(&v142);

  sub_1000095E8(v133, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(&v150, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v135, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v134, &unk_10118AB20, &unk_100EBF390);
  return v40;
}

double sub_1005131FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v5 + 16))(v7, a2, v4);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = v11;
  *(v13 + 3) = &protocol witness table for MainActor;
  *(v13 + 4) = a1;
  (*(v5 + 32))(&v13[v12], v7, v4);
  sub_1001F4CB8(0, 0, v9, &unk_100ED1528, v13);

  return result;
}

uint64_t sub_1005133F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for MusicPropertySource();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = type metadata accessor for Track();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[11] = v9;
  v5[12] = v8;

  return _swift_task_switch(sub_100513548, v9, v8);
}

uint64_t sub_100513548()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];
  v8 = type metadata accessor for MusicVideo();
  (*(*(v8 - 8) + 16))(v1, v7, v8);
  (*(v2 + 104))(v1, enum case for Track.musicVideo(_:), v3);
  (*(v6 + 104))(v4, enum case for MusicPropertySource.library(_:), v5);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1005136A8;
  v10 = v0[9];
  v11 = v0[6];
  v12 = v0[2];

  return sub_100138C84(v12, v10, v11, 0);
}

uint64_t sub_1005136A8()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 40);
  v7 = *(*v0 + 32);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = *(v1 + 96);
  v9 = *(v1 + 88);

  return _swift_task_switch(sub_100513888, v9, v8);
}

uint64_t sub_100513888()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_100513994(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_100513AF4()
{
  sub_10010FC20(&unk_1011846C0, &unk_100ED13F0);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&unk_101193AA0, &unk_100EC0380);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&unk_10118D1E0, &unk_100EC03B0);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &unk_1011846C0, &unk_100ED13F0);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D1E0, &unk_100EC03B0);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007DA8D8(v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

char *sub_100513E84(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v3 = &v37 - v2;
  v41 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v43 = *(v10 - 8);
  __chkstk_darwin();
  v40 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v42 = &v37 - v13;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v15 = &v37 - v14;
  v16 = type metadata accessor for MusicVideo();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v37 = v5;
    v38 = v3;
    v22 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

    sub_10037B658(v44, v15);

    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      sub_1000095E8(v15, &unk_1011846B0, &unk_100ECB630);
      return 0;
    }

    (*(v17 + 32))(v19, v15, v16);
    v23 = *(*&v21[v22] + 48);
    v24 = *(*v23 + 96);
    swift_beginAccess();
    sub_100518E64(v23 + v24, v7, _s11MusicVideosVMa);
    sub_1006FCD38(v9);
    sub_100518FE8(v7, _s11MusicVideosVMa);
    v25 = v43;
    if ((*(v43 + 48))(v9, 1, v10) == 1)
    {
      sub_1000095E8(v9, &unk_10118CDB0, &unk_100EC0360);
      (*(v17 + 8))(v19, v16);

      return 0;
    }

    v26 = v40;
    (*(v25 + 32))(v40, v9, v10);
    v27 = v37;
    (*(v25 + 16))(v37, v26, v10);
    swift_storeEnumTagMultiPayload();
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    v47[0] = v21;
    v28 = v21;
    v29 = String.init<A>(reflecting:)();
    v47[3] = &type metadata for Player.CommandIssuerIdentity;
    v47[4] = &protocol witness table for Player.CommandIssuerIdentity;
    v47[0] = v29;
    v47[1] = v30;
    v31 = v28;
    v32 = v39;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v27, v45, 3, 0, 0, 1, 0, 1, v39, v21, v47);
    (*(v25 + 8))(v26, v10);
    v33 = v42;
    sub_100518F70(v32, v42, type metadata accessor for PlaybackIntentDescriptor);
    v34 = type metadata accessor for IndexPath();
    v35 = v38;
    (*(*(v34 - 8) + 56))(v38, 1, 1, v34);
    sub_100376BAC(v35, v45);
    sub_1000095E8(v35, &unk_10118BCE0, &qword_100EC6450);
    v36 = sub_1007F5184(v19, v33, v45);

    sub_10012BA6C(v45);
    sub_100518FE8(v33, type metadata accessor for PlaybackIntentDescriptor);
    (*(v17 + 8))(v19, v16);
    return v36;
  }

  return result;
}

char *sub_10051456C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = v18 - v3;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v6 = v18 - v5;
  v7 = type metadata accessor for MusicVideo();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController;

    sub_10037B658(a1, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_1000095E8(v6, &unk_1011846B0, &unk_100ECB630);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v14 = *(*&v12[v13] + 48) + *(**(*&v12[v13] + 48) + 96);
      swift_beginAccess();
      v15 = *(v14 + 8);
      v16 = type metadata accessor for IndexPath();
      (*(*(v16 - 8) + 56))(v4, 1, 1, v16);

      sub_100376BAC(v4, v18);
      sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
      v17 = sub_100519980(v10, v15, v18);

      sub_10012BA6C(v18);
      (*(v8 + 8))(v10, v7);
      return v17;
    }
  }

  return result;
}

id sub_100514870()
{
  v1 = OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController____lazy_storage___contextBarButtonItem);
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v5 = v0;
    v7 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_100519238, v4, v6);

    v8 = *(v0 + v1);
    *(v5 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void *sub_100514954(uint64_t a1)
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = _swiftEmptyArrayStorage;
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_100508068();
    v7 = v6[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

    if (v7)
    {
      isa = 0;
    }

    else
    {

      isa = sub_100597E50().super.super.isa;
    }

    v20[4] = isa;
    v9 = *(*&v5[OBJC_IVAR____TtC5Music32LibraryMusicVideosViewController_responseController] + 48);
    v10 = *(*v9 + 96);
    swift_beginAccess();
    sub_100518E64(v9 + v10, v2, _s11MusicVideosVMa);
    v11 = swift_allocObject();
    swift_weakInit();

    v13 = sub_100211A30(sub_1005192B4, v11, v12);

    sub_100518FE8(v2, _s11MusicVideosVMa);

    v14 = 0;
    v20[5] = v13;
    v19 = _swiftEmptyArrayStorage;
    while (v14 != 2)
    {
      v15 = v20[v14++ + 4];
      if (v15)
      {
        v16 = v15;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v19;
      }
    }

    sub_10010FC20(&qword_10118CE10, &qword_100ED1950);
    swift_arrayDestroy();
  }

  return v4;
}