void sub_CF7C8()
{
  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle];
      v13 = v2;
      v4 = v1;
      sub_CFFC8(v3);
      v5 = [v0 traitCollection];
      sub_144DCC();
      v7 = v6;

      sub_B65B4(v3);
      v8 = 0.0;
      if (v3 >= 3)
      {
        v8 = 2.0 / fmax(v7, 1.0);
      }

      [v4 frame];
      [v13 setFrame:{UIEdgeInsetsInsetRect_0(v9, v10, v11, v12, -v8, -v8)}];
    }
  }
}

id sub_CFB20(void *a1)
{
  swift_weakInit();
  *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryArtworkCatalog] = 0;
  v3 = &v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStyle];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryImageView] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI25ArtworkComponentImageView_accessoryStrokeView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for ArtworkComponentImageView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_CFC00(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArtworkComponentImageView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_CFCE0(void *a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 32) = 0xE000000000000000;
  *(v2 + 40) = 0;
  *(v2 + 48) = 1;
  *(v2 + 56) = 0;
  v4 = objc_opt_self();
  *(v2 + 64) = [v4 clearColor];
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 112) = 1;
  *(v2 + 136) = -2;
  *(v2 + 144) = 0;
  *(v2 + 152) = 1;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 224) = [v4 clearColor];
  *(v2 + 232) = 0x1000000;
  *(v2 + 236) = 0;
  *(v2 + 240) = 0x3FF0000000000000;
  *(v2 + 248) = 0;
  v5 = a1;
  [v5 setClipsToBounds:1];
  *(v2 + 104) = v5;
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_allocWithZone(UIImageView) init];
  [v14 setFrame:{v7, v9, v11, v13}];
  [v14 setAutoresizingMask:18];
  [v14 setHidden:1];
  [v5 addSubview:v14];
  *(v2 + 216) = v14;
  type metadata accessor for ArtworkComponentImageView();
  if (swift_dynamicCastClass())
  {
    swift_weakAssign();
    v15 = v14;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D80, &qword_152840);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_14A710;
    v17 = v14;
    sub_1451EC(81);
    v19._countAndFlagsBits = 0xD000000000000028;
    v19._object = 0x8000000000165D50;
    sub_14494C(v19);
    v20._countAndFlagsBits = sub_1454BC();
    sub_14494C(v20);

    v21._object = 0x8000000000165D80;
    v21._countAndFlagsBits = 0xD000000000000027;
    sub_14494C(v21);
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    sub_14518C();
  }

  sub_CE8C4(0);

  return v2;
}

id sub_CFFC8(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_D0004()
{
  v1 = *(v0 + 216);
  [v1 setImage:0];
  [v1 setBackgroundColor:0];

  return [v1 setHidden:1];
}

double sub_D006C(id a1, uint64_t a2, char a3)
{
  if ((a3 & 0x20) != 0)
  {
    return sub_990B4(a1, a2, a3 & 0xDF);
  }

  return result;
}

void sub_D007C(void *a1, char a2)
{
  v3 = v2;
  v6 = sub_14400C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2B860(0, &qword_1C2160, OS_dispatch_queue_ptr);
  *v9 = sub_144D8C();
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v10 = sub_14402C();
  (*(v7 + 8))(v9, v6);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    return;
  }

  *(v3 + 233) = 1;
  *(v3 + 235) = a2 & 1;
  if (a1)
  {
    v11 = a1;
    sub_CEB20(a1, 1);

    return;
  }

  v12 = *(v3 + 136);
  if (v12 <= 0xFD)
  {
    v13 = *(v3 + 120);
    v14 = *(v3 + 128);
    v16 = *(v3 + 88);
    v15 = *(v3 + 96);
    v17 = swift_allocObject();
    swift_weakInit();
    if (v12 >> 6)
    {
      if (v12 >> 6 == 1)
      {
      }

      else if (!(v14 | v13) && v12 == 128 || v13 != 1 || v14 || v12 != 128)
      {
        sub_2B860(0, &qword_1C5350, MTImageStore_ptr);
        v19 = [swift_getObjCClassFromMetadata() defaultStore];
        v18 = [v19 imageForKey:kMTLibraryDefaultImageKey size:{v16, v15}];

        goto LABEL_13;
      }
    }

    else
    {
      sub_990D4(v13, v14, v12);
    }

    v18 = 0;
LABEL_13:
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v18;
    v21 = v18;

    sub_140D7C();

    sub_990A0(v13, v14, v12);
  }
}

uint64_t sub_D03E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D041C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D0460()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_D04A8(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_990D4(result, a2, a3);
  }

  return result;
}

uint64_t sub_D04CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C0, &unk_152DA8);
  __chkstk_darwin(v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v15 - v8;
  v10 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_D85AC(v1 + v10, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2438, &qword_14C788);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_15340(v9, &qword_1C77C0, &unk_152DA8);
  v13 = sub_14142C();
  v15[0] = v3;
  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26C8, &unk_14CAD0);
  sub_D86E4(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID, &protocol conformance descriptor for NowPlayingLookupID);
  sub_1D4A4(&qword_1C26D0, &qword_1C26C8, &unk_14CAD0, &protocol conformance descriptor for _ViewLookupNode<A, B>);
  sub_14119C();
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_D861C(v6, v1 + v10);
  return swift_endAccess();
}

double sub_D07A4()
{
  v61 = *v0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C8, &qword_152DB8);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = v56 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77D0, &qword_152DC0);
  v66 = *(v2 - 8);
  v67 = v2;
  __chkstk_darwin(v2);
  v65 = v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77D8, &qword_152DC8);
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v68 = v56 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77E0, &unk_152DD0);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = v56 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0, &qword_14B8F0);
  __chkstk_darwin(v7 - 8);
  v9 = v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77E8, &qword_152DE0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77F0, &qword_152DE8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v56 - v16;
  v71 = v0;
  sub_D1518();
  sub_D1964(v13);
  v18 = sub_20FCC();
  v19 = sub_144D8C();
  v82 = v19;
  v20 = sub_144D3C();
  v21 = *(v20 - 8);
  v74 = *(v21 + 56);
  v75 = v20;
  v73 = v21 + 56;
  v74(v9, 1, 1);
  sub_1D4A4(&qword_1C77F8, &qword_1C77E8, &qword_152DE0, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v22 = sub_D86E4(&qword_1C1740, sub_20FCC, &protocol conformance descriptor for OS_dispatch_queue);
  v76 = v18;
  v72 = v22;
  sub_14283C();
  v77 = v9;
  sub_15340(v9, &qword_1C16E0, &qword_14B8F0);

  (*(v11 + 8))(v13, v10);
  v23 = v71;
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C7800, &qword_1C77F0, &qword_152DE8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  sub_14289C();

  (*(v15 + 8))(v17, v14);
  v24 = v23 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_subscriptions;
  swift_beginAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1910, &qword_152DF0);
  v26 = sub_1D4A4(&qword_1C1918, &qword_1C1910, &qword_152DF0, &protocol conformance descriptor for [A]);
  sub_14258C();
  swift_endAccess();

  v27 = [objc_opt_self() currentDevice];
  v28 = [v27 userInterfaceIdiom];

  if (v28 != &dword_0 + 1)
  {
    v82 = *(v23 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_playerStylePublisher);

    v30 = sub_144D8C();
    v56[2] = v26;
    v31 = v30;
    v81 = v30;
    v32 = v77;
    (v74)(v77, 1, 1, v75);
    v56[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0, &unk_149820);
    sub_1D4A4(&qword_1C21A8, &unk_1C00F0, &unk_149820, &protocol conformance descriptor for CurrentValueSubject<A, B>);
    v33 = v58;
    sub_14283C();
    sub_15340(v32, &qword_1C16E0, &qword_14B8F0);

    v34 = swift_allocObject();
    swift_weakInit();
    v35 = swift_allocObject();
    v36 = v61;
    *(v35 + 16) = v34;
    *(v35 + 24) = v36;
    v57 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_1D4A4(&qword_1C7808, &qword_1C77E0, &unk_152DD0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v37 = v60;
    sub_14289C();

    (*(v59 + 8))(v33, v37);
    swift_beginAccess();
    sub_14258C();
    swift_endAccess();

    v38 = swift_allocObject();
    swift_weakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2460, &qword_14C7B0);
    swift_allocObject();
    v40 = sub_14267C();
    v60 = v25;
    v82 = v40;
    sub_1D4A4(&qword_1C2470, &qword_1C2460, &qword_14C7B0, &protocol conformance descriptor for Future<A, B>);
    v41 = sub_14273C();

    v82 = v41;
    v42 = swift_allocObject();
    swift_weakInit();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *(v43 + 24) = v36;
    swift_allocObject();
    v81 = sub_14267C();
    v44 = sub_14273C();

    v81 = v44;
    v80 = sub_D34BC();
    v79 = sub_D3C9C();
    swift_weakInit();
    swift_weakDestroy();
    *(swift_allocObject() + 16) = v36;
    swift_allocObject();
    v78 = sub_14267C();
    v45 = sub_14273C();

    v78 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310, &qword_14BEF0);
    sub_1D4A4(&qword_1C2020, &unk_1C9310, &qword_14BEF0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v46 = v62;
    sub_14253C();
    sub_1D4A4(&qword_1C7810, &qword_1C77C8, &qword_152DB8, &protocol conformance descriptor for Publishers.PFCombineLatest5<A, B, C, D, E>);
    v47 = v64;
    v48 = v65;
    sub_1427FC();
    (*(v63 + 8))(v46, v47);
    v49 = sub_144D8C();
    v82 = v49;
    v50 = v77;
    (v74)(v77, 1, 1, v75);
    sub_1D4A4(&qword_1C7818, &qword_1C77D0, &qword_152DC0, &protocol conformance descriptor for Publishers.First<A>);
    v52 = v67;
    v51 = v68;
    sub_14283C();
    sub_15340(v50, &qword_1C16E0, &qword_14B8F0);

    (*(v66 + 8))(v48, v52);
    v53 = swift_allocObject();
    swift_weakInit();
    v54 = swift_allocObject();
    *(v54 + 16) = sub_D7D3C;
    *(v54 + 24) = v53;
    sub_1D4A4(&qword_1C7820, &qword_1C77D8, &qword_152DC8, v57);
    v55 = v70;
    sub_14289C();

    (*(v69 + 8))(v51, v55);
    swift_beginAccess();
    sub_14258C();
    swift_endAccess();
  }

  return result;
}

void sub_D1518()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - v3;
  v5 = sub_144ADC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_144ABC();

  v6 = sub_144AAC();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v1;
  sub_C8D08(0, 0, v4, &unk_152FA8, v7);

  v8 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_subscriptions;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!(v9 >> 62))
  {
    v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    *(v1 + v8) = _swiftEmptyArrayStorage;

    return;
  }

  v10 = sub_14531C();
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v10 >= 1)
  {

    for (i = 0; i != v10; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        sub_1451FC();
      }

      else
      {
      }

      sub_14259C();
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_D171C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingTipViewModel(0);
  sub_D86E4(&qword_1C1358, type metadata accessor for NowPlayingTipViewModel, &unk_1525DC);

  result = sub_142B9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D17AC()
{
  v0 = sub_14142C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_14141C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7990, qword_153028);
  sub_D8690();
  sub_14183C();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_D18D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingTipViewModel(0);
  sub_D86E4(&qword_1C1358, type metadata accessor for NowPlayingTipViewModel, &unk_1525DC);

  result = sub_142B9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_D1964@<X0>(uint64_t a1@<X8>)
{
  v38 = *v1;
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0, &qword_14B8F0);
  __chkstk_darwin(v2 - 8);
  v31 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78D0, &qword_152EC8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78D8, &qword_152ED0);
  v9 = *(v8 - 8);
  v32 = v8;
  v33 = v9;
  __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78E0, &qword_152ED8);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  __chkstk_darwin(v12);
  v28 = &v27 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C78E8, &qword_152EE0);
  v16 = *(v15 - 8);
  v36 = v15;
  v37 = v16;
  __chkstk_darwin(v15);
  v29 = &v27 - v17;
  v40 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_nowPlayingItemPublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7890, &qword_152EB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400, &qword_154A50);
  v30 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1D4A4(&qword_1C78A0, &qword_1C7890, &qword_152EB8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1427BC();

  sub_1D4A4(&qword_1C78F0, &qword_1C78D0, &qword_152EC8, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_D81F8(&qword_1C78F8, &qword_1C1400, &qword_154A50);
  sub_14286C();
  (*(v5 + 8))(v7, v4);
  sub_20FCC();
  v18 = sub_144D8C();
  v40 = v18;
  v19 = sub_144D3C();
  v20 = v31;
  (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
  sub_1D4A4(&qword_1C7900, &qword_1C78D8, &qword_152ED0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_D86E4(&qword_1C1740, sub_20FCC, &protocol conformance descriptor for OS_dispatch_queue);
  v21 = v28;
  v22 = v32;
  sub_14283C();
  sub_15340(v20, &qword_1C16E0, &qword_14B8F0);

  (*(v33 + 8))(v11, v22);
  *(swift_allocObject() + 16) = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7908, &qword_152EE8);
  sub_1D4A4(&qword_1C7910, &qword_1C78E0, &qword_152ED8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v23 = v29;
  v24 = v34;
  sub_1427BC();

  (*(v35 + 8))(v21, v24);
  sub_1D4A4(&qword_1C7918, &qword_1C78E8, &qword_152EE0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_1D4A4(&qword_1C7920, &qword_1C7908, &qword_152EE8, v30);
  v25 = v36;
  sub_14287C();
  return (*(v37 + 8))(v23, v25);
}

void sub_D1FC4(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_tipViewModel);
      v5 = v2;

      swift_beginAccess();
      v6 = swift_weakLoadStrong();
      if (v6)
      {
        v7 = *(v6 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_artworkViewModel);
      }

      else
      {
        v7 = 0;
      }

      *(v4 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_artworkViewModel) = v7;
    }

    else
    {
      v8 = v2;
    }

    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_tipViewModel);

      swift_beginAccess();
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v12 = *(v11 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_objectGraph);
      }

      else
      {
        v12 = 0;
      }

      *(v10 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_objectGraph) = v12;
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v13 = v2;
      sub_D21A8(v2);
    }
  }
}

uint64_t sub_D21A8(void *a1)
{
  v2 = v1;
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  v89 = v4;
  v90 = v5;
  __chkstk_darwin(v4);
  v7 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = v82 - v9;
  __chkstk_darwin(v10);
  v83 = v82 - v11;
  __chkstk_darwin(v12);
  v87 = v82 - v13;
  v88 = sub_140D5C();
  v85 = *(v88 - 8);
  __chkstk_darwin(v88);
  v82[1] = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v82 - v16;
  __chkstk_darwin(v18);
  v20 = v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  __chkstk_darwin(v21 - 8);
  v23 = v82 - v22;

  sub_1414EC();

  v24 = sub_1417CC();
  v25 = (*(*(v24 - 8) + 48))(v23, 1, v24);
  sub_15340(v23, &unk_1C1DA0, &qword_14EB20);
  if (v25 != 1)
  {
    sub_1423CC();
    sub_20F8C(a1);
    v33 = sub_14242C();
    v34 = sub_144C3C();
    sub_20F9C(a1);
    if (!os_log_type_enabled(v33, v34))
    {
LABEL_42:

      return (*(v90 + 1))(v7, v89);
    }

    v35 = a1;
    v36 = 0xD000000000000010;
    v37 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v37 = 136315394;
    *(v37 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v37 + 12) = 2082;
    if (v35 <= 1)
    {
      if (!v35)
      {
        v36 = 0x6575657571;
        v38 = 0xE500000000000000;
        goto LABEL_41;
      }

      if (v35 == (&dword_0 + 1))
      {
        v38 = 0xE800000000000000;
        v36 = 0x7372657470616863;
        goto LABEL_41;
      }
    }

    else
    {
      if (v35 == (&dword_0 + 2))
      {
        v36 = 0x4E65646F73697065;
        v38 = 0xEC0000007365746FLL;
        goto LABEL_41;
      }

      if (v35 == (&dword_0 + 3))
      {
        v36 = 0x697263736E617274;
        v38 = 0xEB00000000737470;
        goto LABEL_41;
      }

      if (v35 == &dword_4)
      {
        v36 = 0x6E6F436F69647561;
        v38 = 0xED0000736C6F7274;
LABEL_41:
        v59 = sub_ED2A4(v36, v38, &v99);

        *(v37 + 14) = v59;
        _os_log_impl(&dword_0, v33, v34, "%s Attempted to display tip for %{public}s while there is already a selected tab.", v37, 0x16u);
        swift_arrayDestroy();

        goto LABEL_42;
      }
    }

    v38 = 0x8000000000165EF0;
    goto LABEL_41;
  }

  v84 = a1;
  if (*(v2 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTipVisible))
  {
    v26 = v86;
    sub_1423CC();
    v27 = v84;
    sub_20F8C(v84);
    v28 = sub_14242C();
    v29 = sub_144C3C();
    sub_20F9C(v27);
    if (!os_log_type_enabled(v28, v29))
    {
LABEL_51:

      return (*(v90 + 1))(v26, v89);
    }

    v30 = 0xD000000000000010;
    v31 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v31 + 12) = 2082;
    if (v27 <= 1)
    {
      if (!v27)
      {
        v30 = 0x6575657571;
        v32 = 0xE500000000000000;
        goto LABEL_50;
      }

      if (v27 == (&dword_0 + 1))
      {
        v32 = 0xE800000000000000;
        v30 = 0x7372657470616863;
        goto LABEL_50;
      }
    }

    else
    {
      if (v27 == (&dword_0 + 2))
      {
        v30 = 0x4E65646F73697065;
        v32 = 0xEC0000007365746FLL;
        goto LABEL_50;
      }

      if (v27 == (&dword_0 + 3))
      {
        v30 = 0x697263736E617274;
        v32 = 0xEB00000000737470;
        goto LABEL_50;
      }

      if (v27 == &dword_4)
      {
        v30 = 0x6E6F436F69647561;
        v32 = 0xED0000736C6F7274;
LABEL_50:
        v61 = sub_ED2A4(v30, v32, &v99);

        *(v31 + 14) = v61;
        _os_log_impl(&dword_0, v28, v29, "%s Attempted to display tip for %{public}s while another is already on screen.", v31, 0x16u);
        swift_arrayDestroy();

        goto LABEL_51;
      }
    }

    v32 = 0x8000000000165EF0;
    goto LABEL_50;
  }

  v39 = v2;
  v86 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTipVisible;

  sub_1425FC();

  v40 = v85;
  v41 = v88;
  (*(v85 + 104))(v17, enum case for NowPlayingPlayerStyle.fullScreen(_:), v88);
  sub_D86E4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  v82[0] = v39;
  if (v99 == v91)
  {
    v42 = *(v40 + 8);
    v42(v17, v41);
    v42(v20, v41);

    v43 = v87;
    goto LABEL_18;
  }

  v44 = sub_1453BC();
  v45 = *(v40 + 8);
  v45(v17, v41);
  v45(v20, v41);

  v43 = v87;
  if ((v44 & 1) == 0)
  {
    v52 = v83;
    sub_1423CC();
    v53 = v84;
    sub_20F8C(v84);

    v54 = sub_14242C();
    v55 = sub_144C3C();
    sub_20F9C(v53);

    if (!os_log_type_enabled(v54, v55))
    {
LABEL_69:

      return (*(v90 + 1))(v52, v89);
    }

    v56 = 0xD000000000000010;
    v57 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v57 = 136315650;
    *(v57 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v57 + 12) = 2082;
    if (v53 <= 1)
    {
      if (!v53)
      {
        v56 = 0x6575657571;
        v58 = 0xE500000000000000;
        goto LABEL_68;
      }

      if (v53 == (&dword_0 + 1))
      {
        v58 = 0xE800000000000000;
        v56 = 0x7372657470616863;
        goto LABEL_68;
      }
    }

    else
    {
      if (v53 == (&dword_0 + 2))
      {
        v56 = 0x4E65646F73697065;
        v58 = 0xEC0000007365746FLL;
        goto LABEL_68;
      }

      if (v53 == (&dword_0 + 3))
      {
        v56 = 0x697263736E617274;
        v58 = 0xEB00000000737470;
        goto LABEL_68;
      }

      if (v53 == &dword_4)
      {
        v56 = 0x6E6F436F69647561;
        v58 = 0xED0000736C6F7274;
LABEL_68:
        v78 = sub_ED2A4(v56, v58, &v99);

        *(v57 + 14) = v78;
        *(v57 + 22) = 2080;

        sub_1425FC();

        v79 = sub_14490C();
        v81 = sub_ED2A4(v79, v80, &v99);

        *(v57 + 24) = v81;
        _os_log_impl(&dword_0, v54, v55, "%s Attempted to display tip for %{public}s outside of the full screen player. Current player style: %s.", v57, 0x20u);
        swift_arrayDestroy();

        goto LABEL_69;
      }
    }

    v58 = 0x8000000000165EF0;
    goto LABEL_68;
  }

LABEL_18:
  sub_1423CC();
  v46 = v84;
  sub_20F8C(v84);
  v47 = sub_14242C();
  v48 = sub_144C5C();
  sub_20F9C(v46);
  if (os_log_type_enabled(v47, v48))
  {
    v49 = 0xD000000000000010;
    v50 = swift_slowAlloc();
    *&v99 = swift_slowAlloc();
    *v50 = 136315394;
    *(v50 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v99);
    *(v50 + 12) = 2082;
    if (v46 <= 1)
    {
      if (!v46)
      {
        v49 = 0x6575657571;
        v51 = 0xE500000000000000;
        goto LABEL_56;
      }

      if (v46 == (&dword_0 + 1))
      {
        v51 = 0xE800000000000000;
        v49 = 0x7372657470616863;
        goto LABEL_56;
      }
    }

    else
    {
      if (v46 == (&dword_0 + 2))
      {
        v49 = 0x4E65646F73697065;
        v51 = 0xEC0000007365746FLL;
        goto LABEL_56;
      }

      if (v46 == (&dword_0 + 3))
      {
        v49 = 0x697263736E617274;
        v51 = 0xEB00000000737470;
        goto LABEL_56;
      }

      if (v46 == &dword_4)
      {
        v49 = 0x6E6F436F69647561;
        v51 = 0xED0000736C6F7274;
LABEL_56:
        v62 = sub_ED2A4(v49, v51, &v99);

        *(v50 + 14) = v62;
        _os_log_impl(&dword_0, v47, v48, "%s Attempting to display tip for %{public}s.", v50, 0x16u);
        swift_arrayDestroy();

        (*(v90 + 1))(v43, v89);
        v46 = v84;
        goto LABEL_57;
      }
    }

    v51 = 0x8000000000165EF0;
    goto LABEL_56;
  }

  (*(v90 + 1))(v43, v89);
LABEL_57:
  v63 = swift_allocObject();
  swift_weakInit();
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  *(v64 + 24) = v46;
  v65 = swift_allocObject();
  swift_weakInit();
  if (v46 >= 5)
  {
    v69 = swift_allocObject();
    swift_weakInit();
    v68 = swift_allocObject();
    *(v68 + 16) = v46;
    *(v68 + 24) = v69;
    sub_20F8C(v46);

    v67 = sub_D7E5C;
    v90 = sub_D7E0C;
    v66 = v65;
  }

  else
  {
    v90 = 0;
    v66 = 0;
    v67 = 0;
    v68 = 0;
  }

  sub_20F8C(v46);

  v70 = sub_D9F78(v46);
  v71 = v46;
  v73 = v72;
  v74 = sub_DA238(v71);
  *&v99 = v71;
  *(&v99 + 1) = v70;
  *&v100 = v73;
  *(&v100 + 1) = v74;
  *&v101[0] = v75;
  v76 = vdup_n_s32(v71 == &dword_4);
  v77.i64[0] = v76.u32[0];
  v77.i64[1] = v76.u32[1];
  *(v101 + 8) = vandq_s8(vcltzq_s64(vshlq_n_s64(v77, 0x3FuLL)), xmmword_152D50);
  *(&v101[1] + 1) = 2;
  *&v102 = sub_D7E04;
  *(&v102 + 1) = v64;
  *&v103 = sub_D7E0C;
  *(&v103 + 1) = v65;
  *&v104 = v67;
  *(&v104 + 1) = v68;
  *&v105 = v90;
  *(&v105 + 1) = v66;
  UIScreen.Dimensions.size.getter();
  swift_getKeyPath();
  swift_getKeyPath();
  v95 = v102;
  v96 = v103;
  v97 = v104;
  v98 = v105;
  v91 = v99;
  v92 = v100;
  v93 = v101[0];
  v94 = v101[1];
  sub_20F8C(v71);
  result = sub_1426EC();
  v86[v82[0]] = 1;
  return result;
}

double sub_D30E0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-1] - v3;
  v5 = sub_14243C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_140D5C();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v26[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, enum case for NowPlayingPlayerStyle.fullScreen(_:), v9, v11);
  sub_D86E4(&qword_1C21D0, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
  v14 = sub_14486C();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    sub_1423CC();
    v16 = sub_14242C();
    v17 = sub_144C5C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, v26);
      _os_log_impl(&dword_0, v16, v17, "%s Do not show any tips outside of the full screen player. Hide any tips that have been shown.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    (*(v6 + 8))(v8, v5);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      v22 = sub_144ADC();
      (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
      sub_144ABC();

      v23 = sub_144AAC();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = &protocol witness table for MainActor;
      v24[4] = v21;
      sub_C8D08(0, 0, v4, &unk_152EC0, v24);
    }
  }

  return result;
}

uint64_t sub_D34BC()
{
  v1 = v0;
  v51 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0, &qword_14B8F0);
  __chkstk_darwin(v2 - 8);
  v46 = &v36 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7860, &qword_154E00);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7868, &qword_152E90);
  v9 = *(v8 - 8);
  v40 = v8;
  v41 = v9;
  __chkstk_darwin(v8);
  v36 = &v36 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7870, &qword_152E98);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = &v36 - v13;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7878, &qword_152EA0);
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v42 = &v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7880, &qword_152EA8);
  v16 = *(v15 - 8);
  v48 = v15;
  v49 = v16;
  __chkstk_darwin(v15);
  v43 = &v36 - v17;
  v18 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v19 = sub_144C6C();

  v53 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_nowPlayingItemPublisher);
  v54 = v19;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30, &qword_1521B0);
  sub_1426AC();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7888, &qword_152EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7890, &qword_152EB8);
  sub_1D4A4(&qword_1C7898, &qword_1C7888, &qword_152EB0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1D4A4(&qword_1C78A0, &qword_1C7890, &qword_152EB8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1D4A4(&qword_1C78A8, &qword_1C7860, &qword_154E00, &protocol conformance descriptor for Published<A>.Publisher);
  v20 = v36;
  v21 = v38;
  sub_14277C();
  (*(v39 + 8))(v7, v21);

  sub_1D4A4(&qword_1C78B0, &qword_1C7868, &qword_152E90, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v22 = v37;
  v23 = v40;
  sub_1427FC();
  (*(v41 + 8))(v20, v23);
  sub_20FCC();
  v24 = sub_144D8C();
  v52 = v24;
  v25 = sub_144D3C();
  v26 = v46;
  (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
  sub_1D4A4(&qword_1C78B8, &qword_1C7870, &qword_152E98, &protocol conformance descriptor for Publishers.First<A>);
  sub_D86E4(&qword_1C1740, sub_20FCC, &protocol conformance descriptor for OS_dispatch_queue);
  v27 = v42;
  v28 = v44;
  sub_14283C();
  sub_15340(v26, &qword_1C16E0, &qword_14B8F0);

  (*(v45 + 8))(v22, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_D80EC;
  *(v30 + 24) = v29;
  sub_1D4A4(&qword_1C78C0, &qword_1C7878, &qword_152EA0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v31 = v43;
  v32 = v47;
  sub_1427BC();

  (*(v50 + 8))(v27, v32);
  sub_1D4A4(&qword_1C78C8, &qword_1C7880, &qword_152EA8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v33 = v48;
  v34 = sub_14273C();
  (*(v49 + 8))(v31, v33);
  return v34;
}

uint64_t sub_D3C9C()
{
  v27 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0, &qword_14B8F0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7830, &qword_152E70);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7838, &qword_152E78);
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7840, &unk_152E80);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  v28 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTranscriptAvailablePublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310, &qword_14BEF0);
  sub_1D4A4(&qword_1C2020, &unk_1C9310, &qword_14BEF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_1427FC();
  sub_20FCC();
  v14 = sub_144D8C();
  v28 = v14;
  v15 = sub_144D3C();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_1D4A4(&qword_1C7848, &qword_1C7830, &qword_152E70, &protocol conformance descriptor for Publishers.First<A>);
  sub_D86E4(&qword_1C1740, sub_20FCC, &protocol conformance descriptor for OS_dispatch_queue);
  sub_14283C();
  sub_15340(v3, &qword_1C16E0, &qword_14B8F0);

  (*(v5 + 8))(v7, v4);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v27;
  *(v17 + 16) = v16;
  *(v17 + 24) = v18;
  sub_1D4A4(&qword_1C7850, &qword_1C7838, &qword_152E78, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v19 = v23;
  sub_1427BC();

  (*(v26 + 8))(v9, v19);
  sub_1D4A4(&qword_1C7858, &qword_1C7840, &unk_152E80, &protocol conformance descriptor for Publishers.Map<A, B>);
  v20 = v24;
  v21 = sub_14273C();
  (*(v25 + 8))(v13, v20);
  return v21;
}

double sub_D4190(char a1, char a2, char a3, char a4, char a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    v7 = 0;
    goto LABEL_16;
  }

  if (a2)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    v7 = &dword_0 + 1;
    goto LABEL_16;
  }

  if (a3)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    v7 = &dword_0 + 2;
    goto LABEL_16;
  }

  if (a4)
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      return result;
    }

    v7 = &dword_0 + 3;
    goto LABEL_16;
  }

  if (a5)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v7 = &dword_4;
LABEL_16:
      sub_D21A8(v7);
    }
  }

  return result;
}

uint64_t sub_D42B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

double sub_D4324(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v5 = sub_14243C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
LABEL_4:
    sub_1423CC();
    v16 = sub_14242C();
    v17 = sub_144C5C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v42 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v42);
      _os_log_impl(&dword_0, v16, v17, "%s [Queue Tip] Not eligible to be shown, no items is the queue.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    (*(v6 + 8))(v8, v5);
    LOWORD(v42) = 0;
    a1(&v42);
    return result;
  }

  v41 = v5;

  v15 = sub_1441DC();

  if (v15)
  {

    v5 = v41;
    goto LABEL_4;
  }

  v39[1] = a2;
  v40 = a1;
  v21 = objc_opt_self();
  v22 = [v21 _applePodcastsFoundationSharedUserDefaults];

  v23 = sub_14489C();

  v24 = [v22 BOOLForKey:v23];

  v25 = [v21 _applePodcastsFoundationSharedUserDefaults];

  v26 = sub_14489C();

  v27 = [v25 BOOLForKey:v26];

  if (v24 & 1) != 0 || (v27)
  {
    sub_1423CC();
    v34 = sub_14242C();
    v35 = sub_144C5C();
    v36 = os_log_type_enabled(v34, v35);
    v31 = v40;
    if (v36)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v37 = 136315650;
      *(v37 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v42);
      *(v37 + 12) = 1024;
      *(v37 + 14) = v24;
      *(v37 + 18) = 1024;
      *(v37 + 20) = v27;
      _os_log_impl(&dword_0, v34, v35, "%s [Queue Tip] Not eligible to be shown, hasOpenedQueueTab: %{BOOL}d, hasSeenQueueTip: %{BOOL}d.", v37, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v38);
    }

    (*(v6 + 8))(v11, v41);
    LOWORD(v42) = 0;
  }

  else
  {
    sub_1423CC();
    v28 = sub_14242C();
    v29 = sub_144C5C();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v40;
    if (v30)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v42);
      _os_log_impl(&dword_0, v28, v29, "%s [Queue Tip] Eligible to be shown.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    (*(v6 + 8))(v14, v41);
    LOWORD(v42) = 1;
  }

  v31(&v42);

  return result;
}

double sub_D487C(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v5 = sub_14243C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  __chkstk_darwin(v12);
  v14 = v39 - v13;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v41 = v5;

    v15 = sub_1441EC();

    if (v15)
    {
      v39[1] = a2;
      v40 = a1;
      v16 = objc_opt_self();
      v17 = [v16 _applePodcastsFoundationSharedUserDefaults];

      v18 = sub_14489C();

      v19 = [v17 BOOLForKey:v18];

      v20 = [v16 _applePodcastsFoundationSharedUserDefaults];

      v21 = sub_14489C();

      v22 = [v20 BOOLForKey:v21];

      if (v19 & 1) != 0 || (v22)
      {
        sub_1423CC();
        v34 = sub_14242C();
        v35 = sub_144C5C();
        v36 = os_log_type_enabled(v34, v35);
        v26 = v40;
        if (v36)
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          v42 = v38;
          *v37 = 136315650;
          *(v37 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v42);
          *(v37 + 12) = 1024;
          *(v37 + 14) = v19;
          *(v37 + 18) = 1024;
          *(v37 + 20) = v22;
          _os_log_impl(&dword_0, v34, v35, "%s [Chapters Tip] Not eligible to be shown, hasOpenedQueueTab: %{BOOL}d, hasSeenChaptersTip: %{BOOL}d.", v37, 0x18u);
          __swift_destroy_boxed_opaque_existential_0(v38);
        }

        (*(v6 + 8))(v11, v41);
        LOWORD(v42) = 0;
      }

      else
      {
        sub_1423CC();
        v23 = sub_14242C();
        v24 = sub_144C5C();
        v25 = os_log_type_enabled(v23, v24);
        v26 = v40;
        if (v25)
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v42 = v28;
          *v27 = 136315138;
          *(v27 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v42);
          _os_log_impl(&dword_0, v23, v24, "%s [Chapters Tip] Eligible to be shown.", v27, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v28);
        }

        (*(v6 + 8))(v14, v41);
        LOWORD(v42) = 1;
      }

      v26(&v42);

      return result;
    }

    v5 = v41;
  }

  sub_1423CC();
  v29 = sub_14242C();
  v30 = sub_144C5C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v42 = v32;
    *v31 = 136315138;
    *(v31 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v42);
    _os_log_impl(&dword_0, v29, v30, "%s [Chapters Tip] Not eligible to be shown, no chapter in the current playing item.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
  }

  (*(v6 + 8))(v8, v5);
  LOWORD(v42) = 0;
  a1(&v42);
  return result;
}

uint64_t sub_D4DD4(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_14243C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  __chkstk_darwin(v13);
  v15 = &v56 - v14;
  __chkstk_darwin(v16);
  v18 = &v56 - v17;
  __chkstk_darwin(v19);
  v21 = &v56 - v20;
  if ((a3 & 1) == 0)
  {
    sub_1423CC();
    v28 = sub_14242C();
    v29 = sub_144C5C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v57 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      _os_log_impl(&dword_0, v28, v29, "%s [Episodes Notes Tip] Not eligible to be shown, metadata style is not supported.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    v26 = *(v7 + 8);
    v27 = v9;
    goto LABEL_9;
  }

  if (a1 < 10)
  {
    sub_1423CC();
    v22 = sub_14242C();
    v23 = sub_144C5C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v57 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      *(v24 + 12) = 2048;
      *(v24 + 14) = a1;
      _os_log_impl(&dword_0, v22, v23, "%s [Episodes Notes Tip] Not eligible to be shown, playerOpenCount: %ld.", v24, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v25);
    }

    v26 = *(v7 + 8);
    v27 = v12;
LABEL_9:
    v26(v27, v6);
    return 0;
  }

  v56 = v6;
  v33 = objc_opt_self();
  v34 = [v33 _applePodcastsFoundationSharedUserDefaults];

  v35 = sub_14489C();

  v36 = [v34 BOOLForKey:v35];

  v37 = [v33 _applePodcastsFoundationSharedUserDefaults];

  v38 = sub_14489C();
  v39 = v36;

  v40 = [v37 BOOLForKey:v38];

  if (v36 & 1) != 0 || (v40)
  {
    sub_1423CC();
    v46 = sub_14242C();
    v47 = sub_144C5C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v56;
    if (v48)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v57 = v51;
      *v50 = 136315650;
      *(v50 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      *(v50 + 12) = 1024;
      *(v50 + 14) = v39;
      *(v50 + 18) = 1024;
      *(v50 + 20) = v40;
      _os_log_impl(&dword_0, v46, v47, "%s [Episodes Notes Tip] Not eligible to be shown, hasTappedMetadata: %{BOOL}d, hasSeenEpisodeNotesTip: %{BOOL}d.", v50, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v51);
    }

    (*(v7 + 8))(v15, v49);
    return 0;
  }

  v41 = v56;
  if (!a2)
  {
    sub_1423CC();
    v52 = sub_14242C();
    v53 = sub_144C5C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v57 = v55;
      *v54 = 136315138;
      *(v54 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
      _os_log_impl(&dword_0, v52, v53, "%s [Episodes Notes Tip] Not eligible to be shown, no item in the player.", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
    }

    (*(v7 + 8))(v18, v41);
    return 0;
  }

  sub_1423CC();
  v42 = sub_14242C();
  v43 = sub_144C5C();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57 = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v57);
    _os_log_impl(&dword_0, v42, v43, "%s [Episodes Notes Tip] Eligible to be shown.", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  (*(v7 + 8))(v21, v41);
  return 1;
}

uint64_t sub_D54B4@<X0>(unsigned __int8 *a1@<X0>, char *a3@<X8>)
{
  v5 = sub_14243C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  if (*(Strong + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_areTranscriptsSupportedInNowPlaying) != 1)
  {

LABEL_9:
    sub_1423CC();
    v31 = sub_14242C();
    v32 = sub_144C5C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v47 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v47);
      _os_log_impl(&dword_0, v31, v32, "%s [Transcripts Tip] Not eligible to be shown, transcripts not enabled.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
    }

    result = (*(v6 + 8))(v8, v5);
    goto LABEL_12;
  }

  if (!v18)
  {
    sub_1423CC();
    v37 = sub_14242C();
    v38 = sub_144C5C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v47 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v47);
      _os_log_impl(&dword_0, v37, v38, "%s [Transcripts Tip] Not eligible to be shown, transcript tab is currently unavailable", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
    }

    else
    {
    }

    result = (*(v6 + 8))(v11, v5);
LABEL_12:
    v36 = 0;
    goto LABEL_13;
  }

  v46 = a3;
  v20 = objc_opt_self();
  v21 = [v20 _applePodcastsFoundationSharedUserDefaults];
  v22 = sub_144C7C();

  v23 = [v20 _applePodcastsFoundationSharedUserDefaults];

  v24 = sub_14489C();

  v25 = [v23 BOOLForKey:v24];

  if (v22 & 1) != 0 || (v25)
  {
    sub_1423CC();
    v41 = sub_14242C();
    v42 = sub_144C5C();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v47 = v44;
      *v43 = 136315650;
      *(v43 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v47);
      *(v43 + 12) = 1024;
      *(v43 + 14) = v22 & 1;
      *(v43 + 18) = 1024;
      *(v43 + 20) = v25;
      _os_log_impl(&dword_0, v41, v42, "%s [Transcripts Tip] Not eligible to be shown, hasTappedTranscriptsTab: %{BOOL}d, hasSeenTranscriptsTip: %{BOOL}d.", v43, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v44);
    }

    else
    {
    }

    result = (*(v6 + 8))(v14, v5);
    v36 = 0;
    a3 = v46;
  }

  else
  {
    sub_1423CC();
    v26 = sub_14242C();
    v27 = sub_144C5C();
    v28 = os_log_type_enabled(v26, v27);
    a3 = v46;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v47 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v47);
      _os_log_impl(&dword_0, v26, v27, "%s [Transcripts Tip] Eligible to be shown.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
    }

    else
    {
    }

    result = (*(v6 + 8))(v17, v5);
    v36 = 1;
  }

LABEL_13:
  *a3 = v36;
  return result;
}

uint64_t sub_D5AD4(uint64_t (*a1)(void **), uint64_t a2)
{
  v24[1] = a2;
  v25 = a1;
  v24[0] = sub_14243C();
  v2 = *(v24[0] - 8);
  __chkstk_darwin(v24[0]);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = objc_opt_self();
  v9 = [v8 _applePodcastsFoundationSharedUserDefaults];

  v10 = sub_14489C();

  v11 = [v9 BOOLForKey:v10];

  v12 = [v8 _applePodcastsFoundationSharedUserDefaults];

  v13 = sub_14489C();

  v14 = [v12 BOOLForKey:v13];

  if (v11 & 1) != 0 || (v14)
  {
    sub_1423CC();
    v19 = sub_14242C();
    v20 = sub_144C5C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315650;
      *(v21 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v26);
      *(v21 + 12) = 1024;
      *(v21 + 14) = v11;
      *(v21 + 18) = 1024;
      *(v21 + 20) = v14;
      _os_log_impl(&dword_0, v19, v20, "%s [Audio Controls Tip] Not eligible to be shown, hasOpenedAudioControls: %{BOOL}d, hasSeenAudioControlsTip: %{BOOL}d.", v21, 0x18u);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    (*(v2 + 8))(v4, v24[0]);
    LOWORD(v26) = 0;
  }

  else
  {
    sub_1423CC();
    v15 = sub_14242C();
    v16 = sub_144C5C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v26 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v26);
      _os_log_impl(&dword_0, v15, v16, "%s [Audio Controls Tip] Eligible to be shown.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
    }

    (*(v2 + 8))(v7, v24[0]);
    LOWORD(v26) = 1;
  }

  return v25(&v26);
}

void sub_D5E90(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (v3 && (v4 = [v3 podcast]) != 0)
  {
    v5 = v4;
    v6 = sub_144BFC();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_D5EF8(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7928, &qword_152EF0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - v8;
  v10 = sub_14243C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[1];
  if (v14)
  {
    v15 = *a1;
    v16 = [objc_opt_self() sharedInstance];
    v17 = [v16 mainQueueContext];

    __chkstk_darwin(v18);
    *(&v25 - 4) = v17;
    *(&v25 - 3) = v15;
    *(&v25 - 2) = v14;
    *(&v25 - 1) = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7908, &qword_152EE8);
    sub_144E4C();
  }

  else
  {
    sub_1423CC();
    v19 = sub_14242C();
    v20 = sub_144C5C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = a3;
      v26 = v22;
      v23 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v26);
      _os_log_impl(&dword_0, v19, v20, "%s [Save Custom Show Settings Tip] Not eligible to be shown, no podcastUUID found.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      a3 = v25;
    }

    (*(v11 + 8))(v13, v10);
    v26 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7930, &qword_152EF8);
    sub_14264C();
    sub_1D4A4(&qword_1C7938, &qword_1C7928, &qword_152EF0, &protocol conformance descriptor for Just<A>);
    v24 = sub_14273C();
    (*(v7 + 8))(v9, v6);
    *a3 = v24;
  }
}

uint64_t sub_D6270@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v52 = a4;
  v58 = a3;
  v59 = a1;
  v60 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7928, &qword_152EF0);
  v56 = *(v5 - 8);
  v57 = v5;
  __chkstk_darwin(v5);
  v55 = &v44 - v6;
  v7 = sub_14243C();
  v53 = *(v7 - 8);
  v54 = v7;
  __chkstk_darwin(v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7940, &qword_152F00);
  v45 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7948, &qword_152F08);
  v46 = *(v13 - 8);
  v47 = v13;
  __chkstk_darwin(v13);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7950, &qword_152F10);
  v48 = *(v16 - 8);
  v49 = v16;
  __chkstk_darwin(v16);
  v18 = &v44 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7958, qword_152F18);
  v50 = *(v19 - 8);
  v51 = v19;
  __chkstk_darwin(v19);
  v21 = &v44 - v20;
  v22 = kMTPodcastEntityName;
  v23 = objc_opt_self();
  v24 = v22;
  v25 = sub_14489C();
  v26 = [v23 predicateForPodcastUUID:v25];

  v27 = [v59 objectInEntity:v24 predicate:v26];
  if (v27)
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      swift_getKeyPath();
      sub_1409FC();

      sub_1D4A4(&qword_1C7960, &qword_1C7940, &qword_152F00, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
      sub_D81F8(&qword_1C7968, &qword_1C7970, &qword_152FA0);
      sub_14286C();
      (*(v45 + 8))(v12, v10);
      sub_1D4A4(&qword_1C7978, &qword_1C7948, &qword_152F08, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
      v30 = v47;
      sub_14285C();
      (*(v46 + 8))(v15, v30);
      v31 = swift_allocObject();
      v32 = v52;
      *(v31 + 16) = v29;
      *(v31 + 24) = v32;
      v33 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7930, &qword_152EF8);
      sub_1D4A4(&qword_1C7980, &qword_1C7950, &qword_152F10, &protocol conformance descriptor for Publishers.Drop<A>);
      v34 = v49;
      sub_1427BC();

      (*(v48 + 8))(v18, v34);
      sub_1D4A4(&qword_1C7988, &qword_1C7958, qword_152F18, &protocol conformance descriptor for Publishers.Map<A, B>);
      v35 = v51;
      v36 = sub_14273C();

      result = (*(v50 + 8))(v21, v35);
      goto LABEL_8;
    }
  }

  sub_1423CC();
  v38 = sub_14242C();
  v39 = sub_144C5C();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v61 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v61);
    _os_log_impl(&dword_0, v38, v39, "%s [Save Custom Show Settings Tip] Not eligible to be shown, no MTPodcast found.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  (*(v53 + 8))(v9, v54);
  v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7930, &qword_152EF8);
  v42 = v55;
  sub_14264C();
  sub_1D4A4(&qword_1C7938, &qword_1C7928, &qword_152EF0, &protocol conformance descriptor for Just<A>);
  v43 = v57;
  v36 = sub_14273C();
  result = (*(v56 + 8))(v42, v43);
LABEL_8:
  *v60 = v36;
  return result;
}

double sub_D6A14(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_D6A74(a2);
  }

  return result;
}

void sub_D6A74(unint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 <= 1)
    {
LABEL_7:
      v14 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

      v2 = sub_14489C();

      v3 = [v14 BOOLForKey:v2];

      if ((v3 & 1) == 0)
      {
        isa = sub_144A7C().super.super.isa;

        v5 = sub_14489C();

        [v14 setValue:isa forKey:v5];
      }

      return;
    }
  }

  else if (a1 == 2 || a1 == 3 || a1 == 4)
  {
    goto LABEL_7;
  }

  v6 = a1;
  v7 = *v1;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 mainQueueContext];

  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = v6;
  v10[4] = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_D8010;
  *(v11 + 24) = v10;
  aBlock[4] = sub_77B4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_D78F4;
  aBlock[3] = &block_descriptor_15;
  v12 = _Block_copy(aBlock);
  v13 = v9;
  sub_20F8C(v6);

  [v13 performBlockAndWait:v12];

  _Block_release(v12);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

double sub_D6E20(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_144ADC();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    sub_144ABC();

    v8 = sub_144AAC();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;
    sub_C8D08(0, 0, v3, &unk_152E58, v9);
  }

  return result;
}

double sub_D6F74(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  sub_14208C();
  sub_14200C();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_144ADC();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_144ABC();

    v9 = sub_144AAC();
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = &protocol witness table for MainActor;
    v10[4] = v7;
    sub_C8D08(0, 0, v4, &unk_152E50, v10);
  }

  return result;
}

uint64_t sub_D70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 272) = a4;
  sub_144ABC();
  *(v4 + 280) = sub_144AAC();
  v6 = sub_144A8C();

  return _swift_task_switch(sub_D7184, v6, v5);
}

uint64_t sub_D7184()
{
  v1 = *(v0 + 272);

  sub_42908((v0 + 16));
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = *(v0 + 96);
  *(v0 + 208) = *(v0 + 80);
  *(v0 + 224) = v2;
  v3 = *(v0 + 128);
  *(v0 + 240) = *(v0 + 112);
  *(v0 + 256) = v3;
  v4 = *(v0 + 32);
  *(v0 + 144) = *(v0 + 16);
  *(v0 + 160) = v4;
  v5 = *(v0 + 64);
  *(v0 + 176) = *(v0 + 48);
  *(v0 + 192) = v5;

  sub_1426EC();
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTipVisible) = 0;
  v6 = *(v0 + 8);

  return v6();
}

void sub_D7268(void *a1, uint64_t a2)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7828, &unk_152E60);
  __chkstk_darwin(v56);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v52 - v7;
  v58 = sub_14243C();
  v9 = *(v58 - 8);
  __chkstk_darwin(v58);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v52 - v13;
  v15 = sub_140ABC();
  v57 = *(v15 - 8);
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[0] = 0;
  v19 = [a1 existingObjectWithID:a2 error:{v59, v16}];
  v20 = v59[0];
  if (v19)
  {
    v21 = v19;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v23 = v20;
    if (v22)
    {
      v24 = [v22 advancedPlaybackSettings];
      if (v24)
      {
        v25 = v24;
        sub_140A9C();
        isa = sub_140A6C().super.isa;
        (*(v57 + 8))(v18, v15);
        [v25 setTipLastShownDate:isa];
      }

      sub_1423CC();
      v27 = v21;
      v28 = sub_14242C();
      v29 = sub_144C5C();

      if (os_log_type_enabled(v28, v29))
      {
        v53 = v29;
        v54 = v28;
        v55 = v27;
        v30 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v60 = v52;
        *v30 = 136315650;
        *(v30 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v60);
        *(v30 + 12) = 2080;
        v31 = [v22 uuid];
        if (v31)
        {
          v32 = v31;
          v33 = sub_1448DC();
          v35 = v34;
        }

        else
        {
          v33 = 0;
          v35 = 0;
        }

        v59[0] = v33;
        v59[1] = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400, &qword_154A50);
        v41 = sub_14490C();
        v43 = sub_ED2A4(v41, v42, &v60);

        *(v30 + 14) = v43;
        *(v30 + 22) = 2080;
        v44 = [v22 advancedPlaybackSettings];
        if (v44)
        {
          v45 = v44;
          v46 = [v44 tipLastShownDate];

          v27 = v55;
          if (v46)
          {
            sub_140A8C();

            v47 = 0;
          }

          else
          {
            v47 = 1;
          }

          (*(v57 + 56))(v5, v47, 1, v15);
          sub_D8044(v5, v8);
        }

        else
        {
          (*(v57 + 56))(v8, 1, 1, v15);
          v27 = v55;
        }

        v48 = sub_14490C();
        v50 = sub_ED2A4(v48, v49, &v60);

        *(v30 + 24) = v50;
        v28 = v54;
        _os_log_impl(&dword_0, v54, v53, "%s [Save Show Settings Tip] Marked tip as seen for podcast with UUID: %s as of date: %s", v30, 0x20u);
        swift_arrayDestroy();
      }

      (*(v9 + 8))(v14, v58);
      v51 = [v22 managedObjectContext];
      [v51 saveInCurrentBlock];

      return;
    }
  }

  else
  {
    v36 = v59[0];
    sub_1409EC();

    swift_willThrow();
  }

  sub_1423CC();
  v37 = sub_14242C();
  v38 = sub_144C3C();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v59[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, v59);
    _os_log_impl(&dword_0, v37, v38, "%s [Save Show Settings Tip] Cannot mark tip as seen since no podcast can be found.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
  }

  (*(v9 + 8))(v11, v58);
}

uint64_t sub_D791C()
{
  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController____lazy_storage___viewProvider, &qword_1C77C0, &unk_152DA8);
  v1 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController__metadataStyleSupportsEpisodeNotesTip;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2B30, &qword_1521B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_D7A38()
{
  sub_D791C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingTipController(uint64_t a1)
{
  result = qword_1C76D0;
  if (!qword_1C76D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_D7AE4(uint64_t a1)
{
  sub_D7BE0(319);
  if (v1 <= 0x3F)
  {
    sub_D7C44();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_D7BE0(uint64_t a1)
{
  if (!qword_1C76E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2438, &qword_14C788);
    v1 = sub_1450CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C76E0);
    }
  }
}

void sub_D7C44()
{
  if (!qword_1C27F8)
  {
    v0 = sub_1426FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C27F8);
    }
  }
}

uint64_t sub_D7C94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D7CE4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7D44()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7DBC()
{

  v1 = *(v0 + 24);
  if (v1 >= 5)
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7E1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D7E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD10;

  return sub_D70EC(a1, v4, v5, v6);
}

uint64_t sub_D7F1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0A8;

  return sub_D70EC(a1, v4, v5, v6);
}

uint64_t sub_D7FD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D8044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7828, &unk_152E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D80B4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_D80F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, *(a1 + 8), *(a1 + 16));
  *a2 = result & 1;
  return result;
}

id sub_D8154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 advancedPlaybackSettings];
  *a2 = result;
  return result;
}

id sub_D81B0@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 settingsAdjustedCount];
  *a2 = result;
  return result;
}

uint64_t sub_D81F8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_D8260()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_D8298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D82C4(*(v1 + 16));
  *a1 = result;
  return result;
}

id sub_D82C4(void *a1)
{
  v2 = sub_14243C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v18 - v7;
  sub_14208C();
  if (sub_14204C())
  {
    sub_1423CC();
    v9 = sub_14242C();
    v10 = sub_144C5C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v19);
      _os_log_impl(&dword_0, v9, v10, "%s [Save Custom Show Settings Tip] Eligible to be shown.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    (*(v3 + 8))(v8, v2);
    return [a1 objectID];
  }

  else
  {
    sub_1423CC();
    v14 = sub_14242C();
    v15 = sub_144C5C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v19 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_ED2A4(0xD00000000000001ALL, 0x8000000000165ED0, &v19);
      _os_log_impl(&dword_0, v14, v15, "%s [Save Custom Show Settings Tip] Not eligible to be shown.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }
}

uint64_t sub_D85AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C0, &unk_152DA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D861C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C77C0, &unk_152DA8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_D8690()
{
  result = qword_1C7998;
  if (!qword_1C7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7998);
  }

  return result;
}

uint64_t sub_D86E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_D8750(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for CubicSpringTimingParameters();
  v10.receiver = v2;
  v10.super_class = v5;
  objc_msgSendSuper2(&v10, "copyWithZone:", a1);
  sub_14514C();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters];
  v7 = *(v9 + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters);
  *(v9 + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters) = v6;
  v8 = v6;

  a2[3] = v5;
  *a2 = v9;
}

id sub_D8B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_14489C();
  }

  else
  {
    v5 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for CubicSpringPropertyAnimator();
  v6 = objc_msgSendSuper2(&v13, "_basicAnimationForView:withKeyPath:", a1, v5);

  if ([v3 timingParameters])
  {
    type metadata accessor for CubicSpringTimingParameters();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(v7 + OBJC_IVAR____TtC12NowPlayingUI27CubicSpringTimingParameters_springCubicTimingParameters);
      if (v8)
      {
        v9 = [v8 _mediaTimingFunction];
        if (v9)
        {
          v10 = v9;
          if (!v6)
          {
            swift_unknownObjectRelease();

            return v6;
          }

          v11 = v6;
          [v11 setTimingFunction:v10];
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return v6;
}

id sub_D8D3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t NotificationObserver.__allocating_init(name:object:dispatchOnMainThread:handler:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v9 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  v10 = objc_opt_self();
  v11 = a1;

  v12 = [v10 defaultCenter];
  v13 = *(v9 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v15 = v13;
  [v12 addObserver:v9 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v9;
}

uint64_t NotificationObserver.init(name:object:dispatchOnMainThread:handler:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_unknownObjectWeakInit();
  *(v5 + 16) = a1;
  swift_unknownObjectWeakAssign();
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  v10 = objc_opt_self();
  v11 = a1;

  v12 = [v10 defaultCenter];
  v13 = *(v5 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();

  v15 = v13;
  [v12 addObserver:v5 selector:"handleNotification:" name:v15 object:Strong];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v5;
}

uint64_t NotificationObserver.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v2;
  [v1 removeObserver:v0 name:v4 object:Strong];

  swift_unknownObjectRelease();
  sub_15468(v0 + 24);

  return v0;
}

uint64_t NotificationObserver.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = *(v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v2;
  [v1 removeObserver:v0 name:v4 object:Strong];

  swift_unknownObjectRelease();
  sub_15468(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_D9158(uint64_t a1)
{
  v3 = sub_14099C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  if (*(v1 + 32) == 1)
  {
    v7 = swift_allocObject();
    swift_weakInit();
    (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = v7;
    (*(v4 + 32))(v9 + v8, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

    sub_140D7C();
  }

  else
  {
    (*(v1 + 40))(a1, v6);
  }
}

double sub_D92E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 40);

    v5(a2);
  }

  return result;
}

uint64_t sub_D9478()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D94B0()
{
  v1 = sub_14099C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_D9574()
{
  v1 = *(sub_14099C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_D92E8(v2, v3);
}

void sub_D95D8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_phaseXPosition] = 0;
  v9 = OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer;
  *&v4[v9] = [objc_allocWithZone(CALayer) init];
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_defaultSpeed] = 4;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_displayLink] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_speed] = 0x4010000000000000;
  v4[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_animating] = 0;
  v18.receiver = v4;
  v18.super_class = type metadata accessor for PlayerIndeterminateActivityIndicator();
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  [v10 setClipsToBounds:1];
  v11 = OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer;
  v12 = *&v10[OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer];
  v13 = sub_14489C();
  v14 = [objc_opt_self() imageNamed:v13];

  if (v14)
  {
    v15 = [objc_allocWithZone(UIColor) initWithPatternImage:v14];

    v16 = [v15 CGColor];
    [v12 setBackgroundColor:v16];

    v17 = [v10 layer];
    [v17 addSublayer:*&v10[v11]];
  }

  else
  {
    __break(1u);
  }
}

id sub_D9944(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlayerIndeterminateActivityIndicator();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_D99E8()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_phaseXPosition) = 0;
  v1 = OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_patternLayer;
  *(v0 + v1) = [objc_allocWithZone(CALayer) init];
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_defaultSpeed) = 4;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_speed) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI36PlayerIndeterminateActivityIndicator_animating) = 0;
  sub_1452FC();
  __break(1u);
}

void *sub_D9AB0(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_7;
  }

  v3 = a1;
  if (([v3 isSystemPodcastsPath] & 1) != 0 || (v4 = objc_msgSend(v3, "bundleID")) == 0)
  {

LABEL_7:
    type metadata accessor for NowPlayingMetadataPlaceholder();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v5 = objc_opt_self();
  sub_AC71C();
  v14._object = 0x8000000000166210;
  v14._countAndFlagsBits = 0xD00000000000001ELL;
  isa = sub_144FDC(v14).super.isa;
  v7 = [v5 staticArtworkCatalogWithImage:isa];

  v2[2] = v7;
  v8 = [v3 representedBundleDisplayName];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1448DC();
    v12 = v11;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  v2[3] = v10;
  v2[4] = v12;
  return v2;
}

uint64_t sub_D9BFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_D9C60(unint64_t a1)
{
  v2 = sub_14142C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_14138C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      if (qword_1BFF10 != -1)
      {
        swift_once();
      }

      v10 = qword_1D1768;
      goto LABEL_16;
    }

LABEL_12:
    sub_1413EC();
    sub_14186C();
    return (*(v3 + 8))(v5, v2);
  }

  if (a1 < 2)
  {
    if (qword_1BFF18 != -1)
    {
      swift_once();
    }

    v10 = qword_1D1780;
LABEL_16:
    __swift_project_value_buffer(v2, v10);
    sub_14136C();
    sub_14133C();
    return (*(v7 + 8))(v9, v6);
  }

  if (a1 != 2)
  {
    goto LABEL_12;
  }

  return sub_14185C();
}

BOOL sub_D9EBC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return !v3;
    }

    if (v2 == 1)
    {
      return v3 == 1;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return v3 == 2;
      case 3:
        return v3 == 3;
      case 4:
        return v3 == 4;
    }
  }

  if (v3 < 5)
  {
    return 0;
  }

  sub_DA560();
  return sub_144FFC() & 1;
}

uint64_t sub_D9F78(uint64_t a1)
{
  if (a1 > 1)
  {
    switch(a1)
    {
      case 2:
        v1 = [objc_opt_self() mainBundle];
        v2._countAndFlagsBits = 0xD000000000000017;
        v9._countAndFlagsBits = 0x8000000000166680;
        v2._object = 0x8000000000166660;
        v3 = 0xD000000000000025;
        goto LABEL_14;
      case 3:
        v1 = [objc_opt_self() mainBundle];
        v2._countAndFlagsBits = 0xD000000000000015;
        v9._countAndFlagsBits = 0x8000000000166630;
        v2._object = 0x8000000000166610;
        v3 = 0xD000000000000022;
        goto LABEL_14;
      case 4:
        v1 = [objc_opt_self() mainBundle];
        v2._countAndFlagsBits = 0xD000000000000018;
        v9._countAndFlagsBits = 0x80000000001665E0;
        v2._object = 0x80000000001665C0;
        v3 = 0xD000000000000026;
LABEL_14:
        v4.value._countAndFlagsBits = 0;
        v4.value._object = 0;
        v5.super.isa = v1;
        v6._countAndFlagsBits = 0;
        v6._object = 0xE000000000000000;
        goto LABEL_15;
    }

LABEL_13:
    v1 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0x8000000000166550;
    v2._countAndFlagsBits = 0xD000000000000023;
    v2._object = 0x8000000000166520;
    v3 = 0xD000000000000069;
    goto LABEL_14;
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_13;
    }

    v1 = [objc_opt_self() mainBundle];
    v2._countAndFlagsBits = 0xD000000000000012;
    v9._countAndFlagsBits = 0x80000000001666D0;
    v2._object = 0x80000000001666B0;
  }

  else
  {
    v1 = [objc_opt_self() mainBundle];
    v9._countAndFlagsBits = 0x80000000001666D0;
    v2._countAndFlagsBits = 0x49545F4555455551;
    v2._object = 0xEF454C5449545F50;
  }

  v4.value._countAndFlagsBits = 0;
  v4.value._object = 0;
  v5.super.isa = v1;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v3 = 0xD00000000000001DLL;
LABEL_15:
  v7 = sub_1409DC(v2, v4, v5, v6, v3, v9);

  return v7;
}

uint64_t sub_DA238(uint64_t a1)
{
  v1 = 0;
  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return v1;
      }

      v5 = " episode notes help tip.";
      v2 = [objc_opt_self() mainBundle];
      v4._countAndFlagsBits = 0xD000000000000015;
    }

    else
    {
      v5 = " queue help tip.";
      v2 = [objc_opt_self() mainBundle];
      v4._countAndFlagsBits = 0xD000000000000012;
    }

    v10._countAndFlagsBits = 0x80000000001664D0;
    v4._object = (v5 | 0x8000000000000000);
    v6.value._countAndFlagsBits = 0;
    v6.value._object = 0;
    v7.super.isa = v2;
    v8._countAndFlagsBits = 0;
    v8._object = 0xE000000000000000;
    v3 = 0xD000000000000020;
    goto LABEL_14;
  }

  switch(a1)
  {
    case 2:
      v2 = [objc_opt_self() mainBundle];
      v4._countAndFlagsBits = 0xD00000000000001ALL;
      v10._countAndFlagsBits = 0x8000000000166480;
      v4._object = 0x8000000000166460;
      v3 = 0xD000000000000028;
      goto LABEL_11;
    case 3:
      v2 = [objc_opt_self() mainBundle];
      v4._countAndFlagsBits = 0xD000000000000018;
      v10._countAndFlagsBits = 0x8000000000166430;
      v4._object = 0x8000000000166410;
      v3 = 0xD000000000000025;
      goto LABEL_11;
    case 4:
      v2 = [objc_opt_self() mainBundle];
      v10._countAndFlagsBits = 0x80000000001663E0;
      v4._object = 0x8000000000166390;
      v3 = 0xD000000000000029;
      v4._countAndFlagsBits = 0x1000000000000044;
LABEL_11:
      v6.value._countAndFlagsBits = 0;
      v6.value._object = 0;
      v7.super.isa = v2;
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
LABEL_14:
      v1 = sub_1409DC(v4, v6, v7, v8, v3, v10);

      break;
  }

  return v1;
}

uint64_t sub_DA4A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_DA500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_DA560()
{
  result = qword_1C95B0;
  if (!qword_1C95B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C95B0);
  }

  return result;
}

uint64_t sub_DA5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_14307C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DC8, &qword_153350);
  sub_DA820(a1, (a2 + *(v4 + 44)));
  sub_143EAC();
  sub_142A9C();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD0, &qword_153358) + 36));
  *v5 = v29;
  v5[1] = v30;
  v5[2] = v31;
  if (qword_1C0048 != -1)
  {
    swift_once();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8, &qword_153360);
  v7 = __swift_project_value_buffer(v6, qword_1C7D90);
  v8 = sub_14362C();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DE0, &qword_153368) + 36);
  sub_DB910(v7, v9);
  *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DE8, &qword_153370) + 36)) = v8;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DF0, &unk_153378) + 36));
  v11 = *(sub_142D2C() + 20);
  v12 = enum case for RoundedCornerStyle.continuous(_:);
  v13 = sub_14310C();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #20.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1460, &qword_14B490) + 36)] = 256;
  LOBYTE(v12) = sub_14361C();
  sub_14290C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DF8, &unk_153388);
  v28 = a2 + *(result + 36);
  *v28 = v12;
  *(v28 + 8) = v20;
  *(v28 + 16) = v22;
  *(v28 + 24) = v24;
  *(v28 + 32) = v26;
  *(v28 + 40) = 0;
  return result;
}

uint64_t sub_DA820@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v86 = a2;
  v3 = sub_140AEC();
  __chkstk_darwin(v3 - 8);
  v84 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_14488C();
  __chkstk_darwin(v5 - 8);
  v78 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1220, &qword_14AEC0);
  v72 = *(v75 - 8);
  __chkstk_darwin(v75);
  v71 = &v63 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E00, &qword_153398);
  __chkstk_darwin(v74);
  v9 = &v63 - v8;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E08, &qword_1533A0);
  v82 = *(v79 - 8);
  __chkstk_darwin(v79);
  v73 = &v63 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E10, &qword_1533A8);
  __chkstk_darwin(v11 - 8);
  v85 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v76 = &v63 - v14;
  v15 = sub_1432AC();
  v90 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E18, &qword_1533B0);
  __chkstk_darwin(v18);
  v20 = &v63 - v19;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E20, &qword_1533B8);
  v80 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v89 = &v63 - v23;
  __chkstk_darwin(v24);
  v77 = &v63 - v25;
  __chkstk_darwin(v26);
  v88 = &v63 - v27;

  sub_143CFC();
  swift_getKeyPath();
  v70 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  *&v97 = a1;
  v69 = sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v28 = *(a1 + 66);
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = (v28 & 1) == 0;
  v67 = v18;
  v31 = &v20[*(v18 + 36)];
  *v31 = KeyPath;
  v31[1] = sub_691B4;
  v31[2] = v30;
  sub_142D9C();
  v68 = sub_DBD2C();
  v64 = sub_DBEF0(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  v66 = v20;
  sub_1438CC();
  v32 = v90 + 8;
  v87 = *(v90 + 8);
  v87(v17, v15);
  v90 = v32;
  sub_15340(v20, &qword_1C7E18, &qword_1533B0);

  v33 = v71;
  sub_143CFC();
  sub_143EAC();
  sub_142D4C();
  v34 = v9;
  (*(v72 + 32))(v9, v33, v75);
  v35 = v74;
  v36 = &v9[*(v74 + 36)];
  v37 = v102;
  v38 = v103;
  *(v36 + 4) = v101;
  *(v36 + 5) = v37;
  *(v36 + 6) = v38;
  v39 = v98;
  *v36 = v97;
  *(v36 + 1) = v39;
  v40 = v100;
  *(v36 + 2) = v99;
  *(v36 + 3) = v40;
  sub_142D9C();
  v41 = sub_DBF48();
  v42 = v73;
  v43 = v64;
  sub_1438CC();
  v65 = v15;
  v87(v17, v15);
  sub_15340(v34, &qword_1C7E00, &qword_153398);
  sub_14487C();
  sub_140ADC();
  v95 = sub_1448FC();
  v96 = v44;
  v91 = v35;
  v92 = v15;
  v93 = v41;
  v94 = v43;
  swift_getOpaqueTypeConformance2();
  sub_9CCC();
  v45 = v76;
  v46 = v79;
  sub_1439CC();

  (*(v82 + 8))(v42, v46);

  v47 = v66;
  sub_143CFC();
  swift_getKeyPath();
  v91 = a1;
  sub_141A4C();

  LOBYTE(v35) = *(a1 + 65);
  v48 = swift_getKeyPath();
  v49 = swift_allocObject();
  *(v49 + 16) = (v35 & 1) == 0;
  v50 = (v47 + *(v67 + 36));
  *v50 = v48;
  v50[1] = sub_DC654;
  v50[2] = v49;
  sub_142D9C();
  v51 = v77;
  v52 = v65;
  sub_1438CC();
  v87(v17, v52);
  sub_15340(v47, &qword_1C7E18, &qword_1533B0);
  v53 = v80;
  v54 = *(v80 + 16);
  v55 = v89;
  v56 = v83;
  v54(v89, v88, v83);
  v57 = v85;
  sub_DC010(v45, v85);
  v58 = v81;
  v54(v81, v51, v56);
  v59 = v86;
  v54(v86, v55, v56);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E60, &qword_153458);
  sub_DC010(v57, &v59[*(v60 + 48)]);
  v54(&v59[*(v60 + 64)], v58, v56);
  v61 = *(v53 + 8);
  v61(v51, v56);
  sub_DC080(v45);
  v61(v88, v56);
  v61(v58, v56);
  sub_DC080(v57);
  return (v61)(v89, v56);
}

void sub_DB404(uint64_t a1)
{
  if ((((*(a1 + 16) | (*(a1 + 20) << 32)) + 0x100000000) >> 32) >= 3uLL)
  {
    *(a1 + 16) = 0;
    *(a1 + 20) = 2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }
}

uint64_t sub_DB538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_143C2C();
  *a1 = result;
  return result;
}

double sub_DB580(uint64_t a1)
{
  if (*(a1 + 20) || (v1 = *(a1 + 16), (v1 & 0x100) == 0) || (v1 & 1) != 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  else
  {
    *(a1 + 20) = 0;
    *(a1 + 16) = 256;
  }

  return result;
}

uint64_t sub_DB6B0@<X0>(uint64_t a2@<X8>)
{
  sub_141F5C();
  swift_getKeyPath();
  sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  result = sub_141EFC();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = _swiftEmptyArrayStorage;
  return result;
}

double sub_DB784(uint64_t a1)
{
  if (*(a1 + 20) || (v1 = *(a1 + 16), (v1 & 0x100) != 0) || (v1 & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_DBEF0(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  else
  {
    *(a1 + 20) = 0;
    *(a1 + 16) = 1;
  }

  return result;
}

uint64_t sub_DB8B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_143C2C();
  *a1 = result;
  return result;
}

uint64_t sub_DB910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8, &qword_153360);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DB99C(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_143F3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8, &qword_153360);
  __swift_allocate_value_buffer(v8, a3);
  v9 = __swift_project_value_buffer(v8, a3);
  sub_143BDC();
  v10 = sub_143BEC();

  (*(v5 + 104))(v7, enum case for BlendMode.plusLighter(_:), v4);
  (*(v5 + 16))(&v9[*(v8 + 36)], v7, v4);
  *v9 = v10;
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_DBB10(__n128 a1)
{
  result = sub_14368C();
  qword_1C7DC0 = result;
  return result;
}

uint64_t sub_DBB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_143EAC();
  sub_142A9C();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EA8, &qword_153520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EB0, &qword_153528) + 36));
  *v5 = v15;
  v5[1] = v16;
  v5[2] = v17;
  if (qword_1C0058 != -1)
  {
    swift_once();
  }

  v6 = qword_1C7DC0;
  KeyPath = swift_getKeyPath();
  v8 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EB8, &qword_153560) + 36));
  *v8 = KeyPath;
  v8[1] = v6;
  v9 = qword_1C0050;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DD8, &qword_153360);
  v11 = __swift_project_value_buffer(v10, qword_1C7DA8);
  v12 = sub_14362C();
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7EC0, qword_153568) + 36);
  sub_DB910(v11, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7DE8, &qword_153370);
  *(v13 + *(result + 36)) = v12;
  return result;
}

unint64_t sub_DBD2C()
{
  result = qword_1C7E28;
  if (!qword_1C7E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7E18, &qword_1533B0);
    sub_DBDE4();
    sub_1D4A4(&qword_1C2740, &qword_1C2748, &qword_14CB80, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E28);
  }

  return result;
}

unint64_t sub_DBDE4()
{
  result = qword_1C7E30;
  if (!qword_1C7E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7E38, &qword_153418);
    sub_1D4A4(&qword_1C7E40, &qword_1C7E48, &unk_153420, &protocol conformance descriptor for Button<A>);
    sub_DBE9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E30);
  }

  return result;
}

unint64_t sub_DBE9C()
{
  result = qword_1C7E50;
  if (!qword_1C7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E50);
  }

  return result;
}

uint64_t sub_DBEF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_DBF48()
{
  result = qword_1C7E58;
  if (!qword_1C7E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7E00, &qword_153398);
    sub_1D4A4(&qword_1C1218, &qword_1C1220, &qword_14AEC0, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E58);
  }

  return result;
}

uint64_t sub_DC010(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E10, &qword_1533A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DC080(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C7E10, &qword_1533A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_DC134()
{
  result = qword_1C7E68;
  if (!qword_1C7E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DF8, &unk_153388);
    sub_DC1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E68);
  }

  return result;
}

unint64_t sub_DC1C0()
{
  result = qword_1C7E70;
  if (!qword_1C7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DF0, &unk_153378);
    sub_DC278();
    sub_1D4A4(&qword_1C7EA0, &qword_1C1460, &qword_14B490, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E70);
  }

  return result;
}

unint64_t sub_DC278()
{
  result = qword_1C7E78;
  if (!qword_1C7E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DE0, &qword_153368);
    sub_DC330();
    sub_1D4A4(&qword_1C7E98, &qword_1C7DE8, &qword_153370, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E78);
  }

  return result;
}

unint64_t sub_DC330()
{
  result = qword_1C7E80;
  if (!qword_1C7E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7DD0, &qword_153358);
    sub_1D4A4(&qword_1C7E88, &qword_1C7E90, &qword_1534C8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7E80);
  }

  return result;
}

unint64_t sub_DC410()
{
  result = qword_1C7EC8;
  if (!qword_1C7EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7EC0, qword_153568);
    sub_DC4C8();
    sub_1D4A4(&qword_1C7E98, &qword_1C7DE8, &qword_153370, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7EC8);
  }

  return result;
}

unint64_t sub_DC4C8()
{
  result = qword_1C7ED0;
  if (!qword_1C7ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7EB8, &qword_153560);
    sub_DC580();
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0, &qword_14D110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7ED0);
  }

  return result;
}

unint64_t sub_DC580()
{
  result = qword_1C7ED8;
  if (!qword_1C7ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C7EB0, &qword_153528);
    sub_1D4A4(&unk_1C7EE0, &qword_1C7EA8, &qword_153520, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C7ED8);
  }

  return result;
}

uint64_t sub_DC658(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_DC7AC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImagelessMPButton();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_DC8E4()
{
  v1 = objc_opt_self();
  v2 = &selRef_metadataObject;
  v3 = [v1 mainBundle];
  v28._countAndFlagsBits = 0xE000000000000000;
  v31._object = 0x80000000001670F0;
  v31._countAndFlagsBits = 0xD000000000000012;
  v36.value._countAndFlagsBits = 0;
  v36.value._object = 0;
  v4.super.isa = v3;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_1409DC(v31, v36, v4, v41, 0, v28);

  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed + 8))
  {

    sub_DCD80();
    return;
  }

  v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed);
  if (v5 <= 1)
  {
    if (!v5)
    {
      v16 = [v1 mainBundle];
      v29._countAndFlagsBits = 0xE000000000000000;
      v34._object = 0x8000000000167150;
      v34._countAndFlagsBits = 0xD000000000000012;
      v39.value._countAndFlagsBits = 0;
      v39.value._object = 0;
      v17.super.isa = v16;
      v44._countAndFlagsBits = 0;
      v44._object = 0xE000000000000000;
      sub_1409DC(v34, v39, v17, v44, 0, v29);
      v1 = v18;

      v19 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
      if (!v19)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v2 = v19;
      v20 = sub_14489C();
      [(SEL *)v2 setText:v20];

      v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
      if (v5)
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_22:
      v21 = [v1 v2[7]];
      v29._countAndFlagsBits = 0xE000000000000000;
      v35._countAndFlagsBits = 0xD000000000000017;
      v35._object = 0x8000000000167110;
      v40.value._countAndFlagsBits = 0;
      v40.value._object = 0;
      v22.super.isa = v21;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      sub_1409DC(v35, v40, v22, v45, 0, v29);

      v23 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
      if (v23)
      {
        v24 = v23;
        v25 = sub_14489C();
        [v24 setText:v25];

        v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
        if (v5)
        {
          goto LABEL_24;
        }

LABEL_31:
        __break(1u);
        return;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    if (v5 != &dword_0 + 1)
    {
LABEL_16:

      return;
    }

    v6 = [v1 mainBundle];
    v29._countAndFlagsBits = 0xE000000000000000;
    v32._countAndFlagsBits = 0xD000000000000014;
    v32._object = 0x8000000000167130;
    v37.value._countAndFlagsBits = 0;
    v37.value._object = 0;
    v7.super.isa = v6;
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    sub_1409DC(v32, v37, v7, v42, 0, v29);
    v1 = v8;

    v9 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
    if (!v9)
    {
      __break(1u);
      goto LABEL_28;
    }

    v2 = v9;
    v10 = sub_14489C();
    [(SEL *)v2 setText:v10];

    v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
    if (v5)
    {
      goto LABEL_24;
    }

    __break(1u);
  }

  if (v5 == &dword_0 + 2)
  {
    goto LABEL_22;
  }

  if (v5 != &dword_0 + 3)
  {
    goto LABEL_16;
  }

  v11 = [v1 v2[7]];
  v29._countAndFlagsBits = 0xE000000000000000;
  v33._countAndFlagsBits = 0x72635320656E6946;
  v33._object = 0xEE00676E69626275;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v12.super.isa = v11;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_1409DC(v33, v38, v12, v43, 0, v29);

  v13 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!v13)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v14 = v13;
  v15 = sub_14489C();
  [v14 setText:v15];

  v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_24:
  v26 = v5;

  v27 = sub_14489C();

  [v26 setTitle:v27 forState:0];

  sub_E7308();
}

void sub_DCD80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse;
  v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse);
  if (v3 && (v4 = [v3 tracklist], v6 = sub_AB9C0(v4, v5), v4, v6) && (v7 = objc_msgSend(v6, "metadataObject"), v6, v7) && (v8 = objc_msgSend(v7, "flattenedGenericObject"), v9 = objc_msgSend(v8, "anyObject"), v7, v8, v9))
  {
    v10 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel;
    v11 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
    if (!v11)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    sub_14114C();
    v12 = v11;
    v13 = sub_14104C();
    [v12 setTextColor:v13];

    v14 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
    if (!v14)
    {
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    [v14 setHidden:0];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = v9;
      sub_E5BB8(v16);
    }

    else
    {
      objc_opt_self();
      v94 = swift_dynamicCastObjCClass();
      if (v94)
      {
        v95 = v94;
        v17 = v9;
        sub_E60D8(v95);
      }

      else
      {
        objc_opt_self();
        v96 = swift_dynamicCastObjCClass();
        if (v96)
        {
          v97 = *(v1 + v10);
          if (!v97)
          {
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          v98 = v96;
          v118._object = v9;
          v99 = v97;
          v100 = [v98 title];
          if (v100)
          {
            v101 = v100;
            sub_1448DC();
          }

          else
          {
            v101 = [objc_opt_self() mainBundle];
            v118._countAndFlagsBits = 0xE000000000000000;
            v123._countAndFlagsBits = 0x5F4E574F4E4B4E55;
            v123._object = 0xED0000454C544954;
            v127.value._countAndFlagsBits = 0;
            v127.value._object = 0;
            v107.super.isa = v101;
            v131._countAndFlagsBits = 0;
            v131._object = 0xE000000000000000;
            sub_1409DC(v123, v127, v107, v131, 0, v118);
          }

          v108 = sub_14489C();

          [v99 setText:v108];

          v109 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
          if (!v109)
          {
            goto LABEL_104;
          }
        }

        else
        {
          objc_opt_self();
          v102 = swift_dynamicCastObjCClass();
          if (!v102)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v103 = *(v1 + v10);
          if (!v103)
          {
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
            return;
          }

          v98 = v102;
          v118._object = v9;
          v104 = v103;
          v105 = [v98 title];
          if (v105)
          {
            v106 = v105;
            sub_1448DC();
          }

          else
          {
            v106 = [objc_opt_self() mainBundle];
            v118._countAndFlagsBits = 0xE000000000000000;
            v124._countAndFlagsBits = 0x5F4E574F4E4B4E55;
            v124._object = 0xED0000454C544954;
            v128.value._countAndFlagsBits = 0;
            v128.value._object = 0;
            v110.super.isa = v106;
            v132._countAndFlagsBits = 0;
            v132._object = 0xE000000000000000;
            sub_1409DC(v124, v128, v110, v132, 0, v118);
          }

          v111 = sub_14489C();

          [v104 setText:v111];

          v109 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
          if (!v109)
          {
            goto LABEL_107;
          }
        }

        v112 = v109;
        v113 = sub_14489C();
        [v112 setTitle:v113 forState:0];

        v17 = [v98 artworkCatalog];
        sub_E6578(v17);
      }
    }

    v114 = *(v1 + v2);
    if (v114)
    {
      v115 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
      if (v115)
      {
        v69 = v114;
        v116 = v115;
        sub_C820C([v69 playerPath]);

LABEL_33:
        goto LABEL_34;
      }
    }
  }

  else
  {
    v18 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder);
    if (v18)
    {
      v19 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
      if (!v19)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v20 = objc_opt_self();
      v21 = v19;

      v22 = [v20 systemGrayColor];
      [v21 setTextColor:v22];

      v23 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
      if (!v23)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      [v23 setHidden:1];
      v24 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
      if (!v24)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      v25 = v18[3];
      if (v18[4])
      {
        v26 = v24;
      }

      else
      {
        v53 = objc_opt_self();
        v54 = v24;
        v55 = [v53 mainBundle];
        v117._countAndFlagsBits = 0xE000000000000000;
        v122._object = 0x80000000001671A0;
        v122._countAndFlagsBits = 0xD000000000000019;
        v126.value._countAndFlagsBits = v25;
        v126.value._object = 0;
        v56.super.isa = v55;
        v130._countAndFlagsBits = 0;
        v130._object = 0xE000000000000000;
        sub_1409DC(v122, v126, v56, v130, 0, v117);
      }

      v57 = sub_14489C();

      [v24 setTitle:v57 forState:0];

      v58 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView;
      v59 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
      if (v59)
      {
        v60 = *(v59 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent);
        v61 = v18[2];
        v62 = *(v60 + 80);
        *(v60 + 80) = v61;
        v63 = v61;

        sub_CD5A8(v62);

        v64 = *(v1 + v58);
        if (v64)
        {
          v65 = *&v64[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath];
          *&v64[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_playerPath] = 0;
          if (v65)
          {
            v66 = v64;
            sub_C5E80();
            sub_C6C8C();
          }
        }
      }

      v67 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
      if (!v67)
      {
        goto LABEL_93;
      }

      v68 = v67;
      v69 = sub_14489C();
      [v68 setText:v69];

      goto LABEL_33;
    }

    v27 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel;
    v28 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
    if (!v28)
    {
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    sub_14114C();
    v29 = v28;
    v30 = sub_14104C();
    [v29 setTextColor:v30];

    v31 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
    if (!v31)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    [v31 setHidden:0];
    v32 = *(v1 + v27);
    if (!v32)
    {
LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

    v33 = objc_opt_self();
    v34 = v32;
    v35 = [v33 mainBundle];
    v117._countAndFlagsBits = 0xE000000000000000;
    v121._countAndFlagsBits = 0xD000000000000020;
    v121._object = 0x8000000000167170;
    v125.value._countAndFlagsBits = 0;
    v125.value._object = 0;
    v36.super.isa = v35;
    v129._countAndFlagsBits = 0;
    v129._object = 0xE000000000000000;
    sub_1409DC(v121, v125, v36, v129, 0, v117);

    v37 = sub_14489C();

    [v34 setText:v37];

    v38 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
    if (!v38)
    {
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v39 = v38;
    v40 = sub_14489C();
    [v39 setTitle:v40 forState:0];

    v41 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView;
    v42 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
    if (v42)
    {
      v43 = *(v42 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent);
      v44 = *(v43 + 80);
      *(v43 + 80) = 0;

      sub_CD5A8(v44);
    }

    v45 = *(v1 + v2);
    if (v45)
    {
      v46 = *(v1 + v41);
      if (v46)
      {
        v47 = v45;
        v48 = v46;
        sub_C820C([v47 playerPath]);
      }
    }

    v49 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
    if (!v49)
    {
      goto LABEL_100;
    }

    v50 = v49;
    v51 = sub_14489C();
    [v50 setText:v51];

    *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 0;
    sub_DD99C();
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider) = 0;

    v52 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView);
    *v52 = 0;
    v52[1] = 0;
  }

LABEL_34:
  v70 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!v70)
  {
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v71 = [v70 text];
  if (v71)
  {
    v72 = v71;
    sub_1448DC();

    v73 = sub_14489C();

    v74 = [v73 _isNaturallyRTL];
  }

  else
  {
    v74 = 0;
  }

  v75 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView;
  v76 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView);
  if (!v76)
  {
    goto LABEL_82;
  }

  [v76 setAnimationDirection:v74];
  v77 = *(v1 + v75);
  if (!v77)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v74)
  {
    v78 = 4;
  }

  else
  {
    v78 = 3;
  }

  [v77 setSemanticContentAttribute:v78];
  v79 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton;
  v80 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!v80)
  {
    goto LABEL_84;
  }

  v81 = [v80 titleForState:0];
  if (v81)
  {
    v82 = v81;
    v83 = [v81 _isNaturallyRTL];
  }

  else
  {
    v83 = 0;
  }

  v84 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView;
  v85 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView);
  if (!v85)
  {
    goto LABEL_85;
  }

  [v85 setAnimationDirection:v83];
  v86 = *(v1 + v84);
  if (!v86)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (v83)
  {
    v87 = 4;
  }

  else
  {
    v87 = 3;
  }

  [v86 setSemanticContentAttribute:v87];
  v88 = *(v1 + v84);
  if (!v88)
  {
    goto LABEL_87;
  }

  v89 = [v88 contentView];
  if (!v89)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v90 = v89;
  [v89 intrinsicContentSize];

  v91 = *(v1 + v79);
  if (!v91)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  [v91 intrinsicContentSize];
  if (sub_144F5C())
  {
    return;
  }

  v92 = *(v1 + v84);
  if (!v92)
  {
    goto LABEL_94;
  }

  v93 = [v92 contentView];
  if (!v93)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v119 = v93;
  [v93 invalidateIntrinsicContentSize];
}

void sub_DD99C()
{
  v29 = sub_143FBC();
  v1 = *(v29 - 8);
  __chkstk_darwin(v29);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_143FDC();
  v4 = *(v28 - 8);
  __chkstk_darwin(v28);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_143FFC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) == 1)
  {
    v15 = v12;
    v26 = v12;
    sub_2B860(0, &qword_1C2160, OS_dispatch_queue_ptr);
    v24 = sub_144D8C();
    sub_143FEC();
    sub_14401C();
    v16 = *(v8 + 8);
    v25 = v8 + 8;
    v27 = v16;
    v16(v10, v15);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_E7A04;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_11D5C0;
    aBlock[3] = &block_descriptor_33;
    v23 = _Block_copy(aBlock);

    sub_143FCC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_E7C58(&qword_1C81A0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    v18 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13A8, &qword_153680);
    v19 = v29;
    sub_1D4A4(&qword_1C81B0, &qword_1C13A8, &qword_153680, &protocol conformance descriptor for [A]);
    sub_14515C();
    v21 = v23;
    v20 = v24;
    sub_144D2C();
    _Block_release(v21);

    (*(v1 + 8))(v3, v19);
    (*(v4 + 8))(v18, v28);
    v27(v14, v26);
  }

  else
  {

    sub_DDE5C(0);
  }
}

void sub_DDDCC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible];
    }

    else
    {
      v4 = 1;
    }

    sub_DDE5C(v4);
  }
}

void sub_DDE5C(char a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);
  if ([v4 isUserInteractionEnabled] == (a1 & 1))
  {
    return;
  }

  v5 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint;
  v6 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint);
  v7 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlTopAnchor;
  v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlTopAnchor);
  v49[4] = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverTopConstraint);
  v49[5] = v8;
  aBlock[0] = _swiftEmptyArrayStorage;
  v9 = v8;
  v10 = v6;
  for (i = 0; i != 2; ++i)
  {
    v12 = v49[i + 4];
    if (v12)
    {
      v13 = v12;
      sub_1449BC();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_1449FC();
      }

      sub_144A2C();
    }
  }

  v14 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81B8, &qword_153688);
  swift_arrayDestroy();
  sub_2B860(0, &qword_1C8190, NSLayoutConstraint_ptr);
  isa = sub_1449CC().super.isa;

  v45 = v14;
  [v14 deactivateConstraints:isa];

  if (v3)
  {
    v44 = v3;
    v16 = [*(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView) topAnchor];
    v17 = [v4 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:20.0];

    v19 = *(v2 + v5);
    *(v2 + v5) = v18;

    v20 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
    if (v20)
    {
      v21 = [v20 topAnchor];
      v22 = [v4 bottomAnchor];
      v23 = [v21 constraintEqualToAnchor:v22 constant:8.0];
      v3 = v44;
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_23;
  }

  v24 = [v4 topAnchor];
  v25 = [*(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView) topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  v27 = *(v2 + v5);
  *(v2 + v5) = v26;

  v28 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
  if (!v28)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = [v28 topAnchor];
  v29 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView);
  if (!v29)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v22 = [v29 lastBaselineAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:10.0];
LABEL_14:
  v30 = v23;

  v31 = *(v2 + v7);
  *(v2 + v7) = v30;

  v32 = *(v2 + v7);
  v47 = *(v2 + v5);
  v48 = v32;
  aBlock[0] = _swiftEmptyArrayStorage;
  v33 = v32;
  v34 = v47;
  for (j = 0; j != 2; ++j)
  {
    v36 = aBlock[j + 10];
    if (v36)
    {
      v37 = v36;
      sub_1449BC();
      if (*(&dword_10 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (aBlock[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_1449FC();
      }

      sub_144A2C();
    }
  }

  swift_arrayDestroy();
  v38 = sub_1449CC().super.isa;

  [v45 activateConstraints:v38];

  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v3 & 1;
  v41 = objc_allocWithZone(UIViewPropertyAnimator);
  aBlock[4] = sub_E7A44;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11D5C0;
  aBlock[3] = &block_descriptor_40;
  v42 = _Block_copy(aBlock);

  v43 = [v41 initWithDuration:0 curve:v42 animations:0.3];
  _Block_release(v42);

  [v43 startAnimation];
}

void sub_DE3E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_14100C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v743 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_14506C();
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v774 = &v743 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v779.receiver = v1;
  v779.super_class = ObjectType;
  objc_msgSendSuper2(&v779, "viewDidLoad", v8);
  v10 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v1 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_260;
  }

  v12 = v11;
  v765 = v6;
  v757 = v10;
  [v11 addSubview:v10];

  v13 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellCoverView);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v1 view];
  if (!v14)
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v15 = v14;
  [v14 addSubview:v13];

  sub_2B860(0, &qword_1C8160, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_14501C();
  v17 = [objc_allocWithZone(_UIGrabber) init];
  v18 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView;
  v19 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_chevronView) = v17;
  v20 = v17;

  if (!v20)
  {
LABEL_261:
    __break(1u);
    goto LABEL_262;
  }

  [v20 addAction:v16 forControlEvents:64];

  v21 = *(v1 + v18);
  if (!v21)
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  v753 = v16;
  [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
  v22 = *(v1 + v18);
  if (!v22)
  {
LABEL_263:
    __break(1u);
    goto LABEL_264;
  }

  v23 = v22;
  v24 = sub_14489C();
  [v23 _setLayoutDebuggingIdentifier:v24];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v764 = v4;
  if (!*(v1 + v18))
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  v26 = v25;
  [v25 addSubview:?];

  v27 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide;
  v28 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkLayoutGuide);
  v29 = sub_14489C();
  [v28 setIdentifier:v29];

  v30 = [v1 view];
  if (!v30)
  {
LABEL_266:
    __break(1u);
    goto LABEL_267;
  }

  v31 = v30;
  v758 = v3;
  v762 = v18;
  [v30 addLayoutGuide:*(v1 + v27)];

  v32 = [v1 view];
  if (!v32)
  {
LABEL_267:
    __break(1u);
    goto LABEL_268;
  }

  v33 = v32;
  v34 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLayoutGuide;
  [v32 addLayoutGuide:*(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLayoutGuide)];

  v35 = [objc_allocWithZone(UILabel) init];
  v36 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel;
  v37 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel) = v35;
  v38 = v35;

  if (!v38)
  {
LABEL_268:
    __break(1u);
    goto LABEL_269;
  }

  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

  v40 = *(v1 + v36);
  if (!v40)
  {
LABEL_269:
    __break(1u);
    goto LABEL_270;
  }

  v756 = v13;
  v771 = v34;
  LODWORD(v39) = 1148846080;
  [v40 setContentCompressionResistancePriority:0 forAxis:v39];
  v41 = *(v1 + v36);
  if (!v41)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  v42 = objc_opt_self();
  v43 = v41;
  v777 = v42;
  v44 = [v42 secondaryLabelColor];
  [v43 setTextColor:v44];

  v45 = *(v1 + v36);
  if (!v45)
  {
LABEL_271:
    __break(1u);
    goto LABEL_272;
  }

  sub_2B860(0, &qword_1C5360, UIFont_ptr);
  v46 = v45;
  v47 = sub_144F6C();
  [v46 setFont:v47];

  v48 = *(v1 + v36);
  if (!v48)
  {
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  [v48 setNumberOfLines:1];
  v49 = [v1 view];
  if (!v49)
  {
LABEL_273:
    __break(1u);
    goto LABEL_274;
  }

  v761 = v36;
  if (!*(v1 + v36))
  {
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v50 = v49;
  [v49 addSubview:?];

  v51 = [objc_allocWithZone(UILabel) init];
  v52 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel;
  v53 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel) = v51;
  v54 = v51;

  if (!v54)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  [v54 setTranslatesAutoresizingMaskIntoConstraints:0];

  v56 = *(v1 + v52);
  if (!v56)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  LODWORD(v55) = 1148846080;
  [v56 setContentCompressionResistancePriority:0 forAxis:v55];
  v57 = *(v1 + v52);
  if (!v57)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  v58 = sub_14114C();
  v59 = v57;
  v776 = v58;
  v60 = sub_14104C();
  [v59 setTextColor:v60];

  v61 = *(v1 + v52);
  if (!v61)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  [v61 setTextAlignment:4];
  v62 = *(v1 + v52);
  if (!v62)
  {
LABEL_279:
    __break(1u);
    goto LABEL_280;
  }

  [v62 setNumberOfLines:1];
  v63 = [v1 view];
  if (!v63)
  {
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  v64 = v63;
  [v63 bounds];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;

  v785.origin.x = v66;
  v785.origin.y = v68;
  v785.size.width = v70;
  v785.size.height = v72;
  CGRectGetWidth(v785);
  sub_14115C();
  v73 = [v1 view];
  if (!v73)
  {
LABEL_281:
    __break(1u);
    goto LABEL_282;
  }

  v74 = v73;
  [v73 bounds];
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v82 = v81;

  v786.origin.x = v76;
  v786.origin.y = v78;
  v786.size.width = v80;
  v786.size.height = v82;
  CGRectGetWidth(v786);
  sub_14116C();
  v84 = v83;
  v85 = [objc_allocWithZone(MTMPUMarqueeView) init];
  v86 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView;
  v87 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView) = v85;
  v88 = v85;

  if (!v88)
  {
LABEL_282:
    __break(1u);
    goto LABEL_283;
  }

  v752 = v27;
  [v88 setContentGap:32.0];

  v89 = *(v1 + v86);
  if (!v89)
  {
LABEL_283:
    __break(1u);
    goto LABEL_284;
  }

  v775 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView;
  [v89 setAnimationReferenceView:*(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView)];
  v90 = *(v1 + v86);
  if (!v90)
  {
LABEL_284:
    __break(1u);
    goto LABEL_285;
  }

  [v90 setFadeEdgeInsets:{0.0, v84, 0.0, v84}];
  v91 = *(v1 + v86);
  if (!v91)
  {
LABEL_285:
    __break(1u);
    goto LABEL_286;
  }

  v92 = [v91 contentView];
  if (!v92)
  {
LABEL_286:
    __break(1u);
    goto LABEL_287;
  }

  if (!*(v1 + v52))
  {
LABEL_287:
    __break(1u);
    goto LABEL_288;
  }

  v93 = v92;
  [v92 addSubview:?];

  v763 = v86;
  v94 = *(v1 + v86);
  if (!v94)
  {
LABEL_288:
    __break(1u);
    goto LABEL_289;
  }

  v767 = v52;
  [v94 setViewForContentSize:*(v1 + v52)];
  v95 = [objc_opt_self() buttonWithType:1];
  v96 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton;
  v97 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton) = v95;
  v98 = v95;

  if (!v98)
  {
LABEL_289:
    __break(1u);
    goto LABEL_290;
  }

  v99 = sub_1410FC();
  [v98 setTintColor:v99];

  v100 = *(v1 + v96);
  if (!v100)
  {
LABEL_290:
    __break(1u);
    goto LABEL_291;
  }

  [v100 setExclusiveTouch:1];
  v101 = *(v1 + v96);
  if (!v101)
  {
LABEL_291:
    __break(1u);
    goto LABEL_292;
  }

  [v101 setTranslatesAutoresizingMaskIntoConstraints:0];
  v103 = *(v1 + v96);
  if (!v103)
  {
LABEL_292:
    __break(1u);
    goto LABEL_293;
  }

  LODWORD(v102) = 1148846080;
  [v103 setContentCompressionResistancePriority:0 forAxis:v102];
  v104 = *(v1 + v96);
  if (!v104)
  {
LABEL_293:
    __break(1u);
    goto LABEL_294;
  }

  v105 = v104;
  v106 = [v777 systemGrayColor];
  [v105 setTitleColor:v106 forState:2];

  v107 = *(v1 + v96);
  if (!v107)
  {
LABEL_294:
    __break(1u);
    goto LABEL_295;
  }

  v108 = v96;
  v109 = [v107 titleLabel];
  [v109 setNumberOfLines:1];

  v110 = *(v1 + v96);
  v111 = v763;
  if (!v110)
  {
LABEL_295:
    __break(1u);
    goto LABEL_296;
  }

  [v110 setContentHorizontalAlignment:4];
  v769 = v108;
  v112 = *(v1 + v108);
  if (!v112)
  {
LABEL_296:
    __break(1u);
    goto LABEL_297;
  }

  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v114 = v112;
  sub_11EB24(64, sub_E7840, v113);

  v115 = [objc_allocWithZone(MTMPUMarqueeView) init];
  v116 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView;
  v117 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView) = v115;
  v118 = v115;

  if (!v118)
  {
LABEL_297:
    __break(1u);
    goto LABEL_298;
  }

  [v118 setContentGap:32.0];

  v119 = *(v1 + v116);
  v120 = v775;
  if (!v119)
  {
LABEL_298:
    __break(1u);
    goto LABEL_299;
  }

  [v119 setAnimationReferenceView:*(v1 + v775)];
  v121 = *(v1 + v116);
  v122 = v769;
  if (!v121)
  {
LABEL_299:
    __break(1u);
    goto LABEL_300;
  }

  [v121 setFadeEdgeInsets:{0.0, v84, 0.0, v84}];
  v123 = *(v1 + v116);
  if (!v123)
  {
LABEL_300:
    __break(1u);
    goto LABEL_301;
  }

  v124 = [v123 contentView];
  if (!v124)
  {
LABEL_301:
    __break(1u);
    goto LABEL_302;
  }

  if (!*(v1 + v122))
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  v125 = v124;
  [v124 addSubview:?];

  v126 = *(v1 + v116);
  if (!v126)
  {
LABEL_303:
    __break(1u);
    goto LABEL_304;
  }

  [v126 setViewForContentSize:*(v1 + v122)];
  v127 = *(v1 + v111);
  if (!v127)
  {
LABEL_304:
    __break(1u);
    goto LABEL_305;
  }

  [v127 addCoordinatedMarqueeView:*(v1 + v116)];
  v770 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
  v128 = swift_allocObject();
  *(v128 + 16) = xmmword_14D1E0;
  v129 = *(v1 + v111);
  if (!v129)
  {
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  v130 = v128;
  *(v128 + 32) = v129;
  v755 = v116;
  v131 = *(v1 + v116);
  if (!v131)
  {
LABEL_306:
    __break(1u);
    goto LABEL_307;
  }

  *(v128 + 40) = v131;
  v132 = objc_allocWithZone(UIStackView);
  sub_2B860(0, &qword_1C47C0, UIView_ptr);

  v133 = v131;
  v134 = v129;
  isa = sub_1449CC().super.isa;

  v136 = [v132 initWithArrangedSubviews:isa];

  v137 = *(v1 + v120);
  *(v1 + v120) = v136;
  v138 = v136;

  if (!v138)
  {
LABEL_307:
    __break(1u);
    goto LABEL_308;
  }

  [v138 setTranslatesAutoresizingMaskIntoConstraints:0];

  v139 = *(v1 + v120);
  if (!v139)
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  [v139 setAxis:1];
  v140 = *(v1 + v120);
  if (!v140)
  {
LABEL_309:
    __break(1u);
    goto LABEL_310;
  }

  [v140 setAlignment:1];
  v141 = *(v1 + v120);
  if (!v141)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  [v141 setBaselineRelativeArrangement:1];
  v142 = [v1 view];
  if (!v142)
  {
LABEL_311:
    __break(1u);
    goto LABEL_312;
  }

  if (!*(v1 + v120))
  {
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v143 = v142;
  [v142 addSubview:?];

  type metadata accessor for NowPlayingTransportButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v145 = [ObjCClassFromMetadata buttonWithType:0];
  v146 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton;
  v147 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton) = v145;
  v148 = v145;

  [v148 setExclusiveTouch:1];
  v773 = v146;
  v149 = *(v1 + v146);
  if (!v149)
  {
LABEL_313:
    __break(1u);
LABEL_314:
    __break(1u);
LABEL_315:
    __break(1u);
    goto LABEL_316;
  }

  sub_2B860(0, &qword_1C2F20, UIImage_ptr);
  v150 = v149;
  v781._countAndFlagsBits = 0xD00000000000001DLL;
  v781._object = 0x8000000000167080;
  v151 = sub_144FDC(v781).super.isa;
  v152 = [(objc_class *)v151 imageWithRenderingMode:2];

  v153 = _swiftEmptyArrayStorage[2];
  v751 = v130;
  v154 = 0;
  if (v153)
  {
    v155 = &_swiftEmptyArrayStorage[4];
    do
    {
      v157 = *v155++;
      v156 = v157;
      if ((v157 & ~v154) == 0)
      {
        v156 = 0;
      }

      v154 |= v156;
      --v153;
    }

    while (v153);
  }

  [v150 setImage:v152 forState:v154];

  v158 = v773;
  v159 = *(v1 + v773);
  if (!v159)
  {
    goto LABEL_314;
  }

  v160 = [v159 imageView];
  if (v160)
  {
    v161 = v160;
    v162 = sub_1410DC();
    [v161 setTintColor:v162];

    v158 = v773;
  }

  v163 = *(v1 + v158);
  if (!v163)
  {
    goto LABEL_315;
  }

  [v163 setHitRectInsets:{-25.0, -30.0, -25.0, 0.0}];
  v164 = *(v1 + v158);
  if (!v164)
  {
LABEL_316:
    __break(1u);
    goto LABEL_317;
  }

  v165 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v166 = v164;
  sub_11EE08(64, sub_E7848, v165);

  v167 = *(v1 + v158);
  if (!v167)
  {
LABEL_317:
    __break(1u);
    goto LABEL_318;
  }

  v168 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v169 = v167;
  sub_11EE08(0x1000000, sub_E7874, v168);

  v170 = *(v1 + v158);
  if (!v170)
  {
LABEL_318:
    __break(1u);
    goto LABEL_319;
  }

  v171 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v172 = v170;
  sub_11EE08(0x2000000, sub_E789C, v171);

  v173 = [ObjCClassFromMetadata buttonWithType:0];
  v174 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton;
  v175 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton) = v173;
  v176 = v173;

  [v176 setExclusiveTouch:1];
  v768 = v174;
  v177 = *(v1 + v174);
  if (!v177)
  {
LABEL_319:
    __break(1u);
LABEL_320:
    __break(1u);
LABEL_321:
    __break(1u);
    goto LABEL_322;
  }

  v178 = v177;
  v782._countAndFlagsBits = 0xD000000000000019;
  v782._object = 0x80000000001670A0;
  v179 = sub_144FDC(v782).super.isa;
  v180 = [(objc_class *)v179 imageWithRenderingMode:2];

  v181 = _swiftEmptyArrayStorage[2];
  if (v181)
  {
    v182 = 0;
    v183 = &_swiftEmptyArrayStorage[4];
    do
    {
      v185 = *v183++;
      v184 = v185;
      if ((v185 & ~v182) == 0)
      {
        v184 = 0;
      }

      v182 |= v184;
      --v181;
    }

    while (v181);
  }

  else
  {
    v182 = 0;
  }

  [v178 setImage:v180 forState:v182];

  v186 = v768;
  v187 = *(v1 + v768);
  if (!v187)
  {
    goto LABEL_320;
  }

  v188 = [v187 imageView];
  if (v188)
  {
    v189 = v188;
    v190 = sub_1410DC();
    [v189 setTintColor:v190];
  }

  v191 = *(v1 + v186);
  if (!v191)
  {
    goto LABEL_321;
  }

  [v191 setHitRectInsets:{-25.0, 0.0, -25.0, -30.0}];
  v192 = *(v1 + v186);
  if (!v192)
  {
LABEL_322:
    __break(1u);
    goto LABEL_323;
  }

  v193 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v194 = v192;
  sub_11EE08(64, sub_E78C4, v193);

  v195 = *(v1 + v186);
  if (!v195)
  {
LABEL_323:
    __break(1u);
    goto LABEL_324;
  }

  v196 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v197 = v195;
  sub_11EE08(0x1000000, sub_E78F0, v196);

  v198 = *(v1 + v186);
  if (!v198)
  {
LABEL_324:
    __break(1u);
LABEL_325:
    __break(1u);
    goto LABEL_326;
  }

  v199 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v200 = v198;
  sub_11EE08(0x2000000, sub_E7918, v199);

  v201 = [ObjCClassFromMetadata buttonWithType:0];
  v202 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton;
  v203 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton) = v201;
  v204 = v201;

  v205 = [v204 imageView];
  if (v205)
  {
    v206 = sub_1410DC();
    [v205 setTintColor:v206];
  }

  v207 = *(v1 + v202);
  if (!v207)
  {
    goto LABEL_325;
  }

  [v207 setExclusiveTouch:1];
  v208 = *(v1 + v202);
  if (!v208)
  {
LABEL_326:
    __break(1u);
    goto LABEL_327;
  }

  v209 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v210 = v208;
  sub_11EE08(64, sub_E7940, v209);

  v211 = swift_allocObject();
  *(v211 + 16) = xmmword_1535E0;
  v212 = *(v1 + v773);
  if (!v212)
  {
LABEL_327:
    __break(1u);
    goto LABEL_328;
  }

  v213 = v211;
  *(v211 + 32) = v212;
  v760 = v202;
  v214 = *(v1 + v202);
  if (!v214)
  {
LABEL_328:
    __break(1u);
    goto LABEL_329;
  }

  *(v211 + 40) = v214;
  v215 = *(v1 + v186);
  if (!v215)
  {
LABEL_329:
    __break(1u);
    goto LABEL_330;
  }

  type metadata accessor for NowPlayingTransportControlStackView();
  *(v213 + 48) = v215;
  v216 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v217 = v215;
  v218 = v214;
  v219 = v212;
  v220 = sub_1449CC().super.isa;

  v221 = [v216 initWithArrangedSubviews:v220];

  v222 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView;
  v223 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsStackView) = v221;
  v224 = v221;

  v225 = [v777 blackColor];
  [v224 setTintColor:v225];

  v226 = *(v1 + v222);
  if (!v226)
  {
LABEL_330:
    __break(1u);
    goto LABEL_331;
  }

  [v226 setTranslatesAutoresizingMaskIntoConstraints:0];
  v227 = *(v1 + v222);
  if (!v227)
  {
LABEL_331:
    __break(1u);
    goto LABEL_332;
  }

  [v227 setSemanticContentAttribute:1];
  v228 = *(v1 + v222);
  if (!v228)
  {
LABEL_332:
    __break(1u);
    goto LABEL_333;
  }

  [v228 setAxis:0];
  v229 = *(v1 + v222);
  if (!v229)
  {
LABEL_333:
    __break(1u);
    goto LABEL_334;
  }

  [v229 setDistribution:3];
  v230 = *(v1 + v222);
  if (!v230)
  {
LABEL_334:
    __break(1u);
    goto LABEL_335;
  }

  [v230 setAlignment:3];
  v231 = *(v1 + v222);
  if (!v231)
  {
LABEL_335:
    __break(1u);
    goto LABEL_336;
  }

  [v231 setSpacing:62.0];
  v232 = [v1 view];
  if (!v232)
  {
LABEL_336:
    __break(1u);
    goto LABEL_337;
  }

  if (!*(v1 + v222))
  {
LABEL_337:
    __break(1u);
    goto LABEL_338;
  }

  v233 = v232;
  [v232 addSubview:?];

  v234 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics);
  v235 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 24);
  v236 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics), v235);
  (*(v236 + 120))(aBlock, v235, v236);
  v237 = objc_allocWithZone(type metadata accessor for PlayerTimeControl());
  v238 = sub_49384(aBlock);
  v239 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl;
  v240 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl) = v238;
  v241 = v238;

  [v241 setExclusiveTouch:1];
  v242 = *&v239[v1];
  if (!v242)
  {
LABEL_338:
    __break(1u);
    goto LABEL_339;
  }

  [v242 setTranslatesAutoresizingMaskIntoConstraints:0];
  v243 = *&v239[v1];
  if (!v243)
  {
LABEL_339:
    __break(1u);
    goto LABEL_340;
  }

  v766 = v222;
  v244 = swift_allocObject();
  swift_unknownObjectUnownedInit();

  v245 = v243;
  sub_11EE28(4096, sub_E79A0, v244);

  v777 = v239;
  v246 = *&v239[v1];
  if (!v246)
  {
LABEL_340:
    __break(1u);
    goto LABEL_341;
  }

  v247 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v248 = &v246[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler];
  v249 = *&v246[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler];
  v250 = *&v246[OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_scrubbingDidChangeHandler + 8];
  *v248 = sub_E79A8;
  v248[1] = v247;

  v251 = v246;
  sub_2173C(v249, v250);

  v252 = [v1 view];
  if (!v252)
  {
LABEL_341:
    __break(1u);
    goto LABEL_342;
  }

  if (!*&v777[v1])
  {
LABEL_342:
    __break(1u);
    goto LABEL_343;
  }

  v253 = v252;
  [v252 addSubview:?];

  v254 = [objc_allocWithZone(UILayoutGuide) init];
  v255 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide);
  v772 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryTransportControlsGuide) = v254;
  v256 = v254;

  if (!v256)
  {
LABEL_343:
    __break(1u);
    goto LABEL_344;
  }

  v257 = sub_14489C();
  [v256 setIdentifier:v257];

  v258 = [v1 view];
  if (!v258)
  {
LABEL_344:
    __break(1u);
    goto LABEL_345;
  }

  v754 = v234;
  if (!*(v1 + v772))
  {
LABEL_345:
    __break(1u);
    goto LABEL_346;
  }

  v259 = v258;
  [v258 addLayoutGuide:?];

  type metadata accessor for ImagelessMPButton();
  v260 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  v261 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton;
  v262 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton) = v260;
  v263 = v260;

  v264 = sub_1410CC();
  [v263 setTintColor:v264];

  v265 = *(v1 + v261);
  if (!v265)
  {
LABEL_346:
    __break(1u);
    goto LABEL_347;
  }

  [v265 setExclusiveTouch:1];
  v266 = *(v1 + v261);
  if (!v266)
  {
LABEL_347:
    __break(1u);
    goto LABEL_348;
  }

  [v266 setTranslatesAutoresizingMaskIntoConstraints:0];
  v268 = *(v1 + v261);
  if (!v268)
  {
LABEL_348:
    __break(1u);
    goto LABEL_349;
  }

  LODWORD(v267) = 1148846080;
  [v268 setContentHuggingPriority:0 forAxis:v267];
  v270 = *(v1 + v261);
  if (!v270)
  {
LABEL_349:
    __break(1u);
    goto LABEL_350;
  }

  LODWORD(v269) = 1148846080;
  [v270 setContentCompressionResistancePriority:0 forAxis:v269];
  v271 = *(v1 + v261);
  if (!v271)
  {
LABEL_350:
    __break(1u);
LABEL_351:
    __break(1u);
    goto LABEL_352;
  }

  v272 = [v271 titleLabel];
  if (v272)
  {
    v273 = v272;
    v274 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightRegular];
    [v273 setFont:v274];
  }

  v275 = *(v1 + v261);
  if (!v275)
  {
    goto LABEL_351;
  }

  [v275 _setDisableAutomaticTitleAnimations:1];
  v276 = *(v1 + v261);
  if (!v276)
  {
LABEL_352:
    __break(1u);
    goto LABEL_353;
  }

  [v276 setHitRectInsets:{-10.0, -28.0, -20.0, -28.0}];
  v277 = *(v1 + v261);
  if (!v277)
  {
LABEL_353:
    __break(1u);
    goto LABEL_354;
  }

  [v277 _setLineBreakMode:2];
  v278 = *(v1 + v261);
  if (!v278)
  {
LABEL_354:
    __break(1u);
    goto LABEL_355;
  }

  [v278 setShowsMenuAsPrimaryAction:1];
  v279 = [v1 view];
  if (!v279)
  {
LABEL_355:
    __break(1u);
    goto LABEL_356;
  }

  if (!*(v1 + v261))
  {
LABEL_356:
    __break(1u);
    goto LABEL_357;
  }

  v280 = v279;
  [v279 addSubview:?];

  v281 = [objc_allocWithZone(type metadata accessor for RouteButton_iOS()) init];
  v282 = (v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton);
  v283 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton);
  *v282 = v281;
  *(v282 + 1) = &off_1A2758;
  v284 = v281;

  v285 = v1;
  sub_A4250(v1, &off_1A42C0);

  if (!*v282)
  {
LABEL_357:
    __break(1u);
    goto LABEL_358;
  }

  v286 = *v282;
  v287 = sub_1410CC();
  [v286 setTintColor:v287];

  v759 = v282;
  if (!*v282)
  {
LABEL_358:
    __break(1u);
    goto LABEL_359;
  }

  [*v282 setTranslatesAutoresizingMaskIntoConstraints:0];
  v288 = [v285 view];
  if (!v288)
  {
LABEL_359:
    __break(1u);
    goto LABEL_360;
  }

  if (!*v759)
  {
LABEL_360:
    __break(1u);
    goto LABEL_361;
  }

  v289 = v288;
  [v288 addSubview:?];

  sub_2B860(0, &qword_1C8168, UIButton_ptr);
  sub_E3860();
  v290 = sub_14507C();
  v291 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton;
  v292 = *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton);
  *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton) = v290;
  v293 = v290;

  [v293 setExclusiveTouch:1];
  v294 = *(v285 + v291);
  if (!v294)
  {
LABEL_361:
    __break(1u);
    goto LABEL_362;
  }

  [v294 setTranslatesAutoresizingMaskIntoConstraints:0];
  v296 = *(v285 + v291);
  if (!v296)
  {
LABEL_362:
    __break(1u);
    goto LABEL_363;
  }

  LODWORD(v295) = 1148846080;
  [v296 setContentCompressionResistancePriority:0 forAxis:v295];
  v298 = *(v285 + v291);
  if (!v298)
  {
LABEL_363:
    __break(1u);
    goto LABEL_364;
  }

  LODWORD(v297) = 1148846080;
  [v298 setContentHuggingPriority:0 forAxis:v297];
  v299 = *(v285 + v291);
  if (!v299)
  {
LABEL_364:
    __break(1u);
    goto LABEL_365;
  }

  [v299 setShowsMenuAsPrimaryAction:1];
  v300 = [v285 view];
  if (!v300)
  {
LABEL_365:
    __break(1u);
    goto LABEL_366;
  }

  if (!*(v285 + v291))
  {
LABEL_366:
    __break(1u);
    goto LABEL_367;
  }

  v301 = v300;
  [v300 addSubview:?];

  v302 = [objc_opt_self() buttonWithType:1];
  v303 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton;
  v304 = *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton);
  *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton) = v302;
  v305 = v302;

  if (!v305)
  {
LABEL_367:
    __break(1u);
    goto LABEL_368;
  }

  [v305 setExclusiveTouch:1];

  v306 = *(v285 + v303);
  if (!v306)
  {
LABEL_368:
    __break(1u);
    goto LABEL_369;
  }

  [v306 setTranslatesAutoresizingMaskIntoConstraints:0];
  v774 = v303;
  v307 = *(v285 + v303);
  if (!v307)
  {
LABEL_369:
    __break(1u);
LABEL_370:
    __break(1u);
    goto LABEL_371;
  }

  v308 = v307;
  v309 = v765;
  sub_140F6C();
  v310 = sub_140FBC();
  (*(v764 + 8))(v309, v758);
  v311 = _swiftEmptyArrayStorage[2];
  if (v311)
  {
    v312 = 0;
    v313 = &_swiftEmptyArrayStorage[4];
    v314 = v774;
    do
    {
      v316 = *v313++;
      v315 = v316;
      if ((v316 & ~v312) == 0)
      {
        v315 = 0;
      }

      v312 |= v315;
      --v311;
    }

    while (v311);
  }

  else
  {
    v312 = 0;
    v314 = v774;
  }

  [v308 setImage:v310 forStates:v312];

  v317 = *&v314[v285];
  if (!v317)
  {
    goto LABEL_370;
  }

  v318 = v317;
  v319 = sub_1410CC();
  [v318 setTintColor:v319];

  v320 = *&v314[v285];
  if (!v320)
  {
LABEL_371:
    __break(1u);
    goto LABEL_372;
  }

  sub_2B860(0, &unk_1C8170, UIColor_ptr);
  v321 = v320;
  v322 = sub_E3A74(sub_E39FC, 0);
  [v321 setBackgroundColor:v322];

  v323 = *&v314[v285];
  if (!v323)
  {
LABEL_372:
    __break(1u);
    goto LABEL_373;
  }

  v324 = [v323 layer];
  [v324 setCornerRadius:14.0];

  v326 = *&v314[v285];
  if (!v326)
  {
LABEL_373:
    __break(1u);
    goto LABEL_374;
  }

  LODWORD(v325) = 1148846080;
  [v326 setContentCompressionResistancePriority:0 forAxis:v325];
  v327 = *&v314[v285];
  if (!v327)
  {
LABEL_374:
    __break(1u);
    goto LABEL_375;
  }

  [v327 setHitRectInsets:{-20.0, -20.0, -20.0, -20.0}];
  v328 = *&v314[v285];
  if (!v328)
  {
LABEL_375:
    __break(1u);
    goto LABEL_376;
  }

  v764 = v291;
  [v328 setShowsMenuAsPrimaryAction:1];
  v329 = *&v314[v285];
  if (!v329)
  {
LABEL_376:
    __break(1u);
    goto LABEL_377;
  }

  v330 = objc_opt_self();
  v331 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_E79B4;
  aBlock[5] = v331;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B9D0;
  aBlock[3] = &block_descriptor_22;
  v332 = _Block_copy(aBlock);
  v333 = v329;

  v334 = [v330 elementWithUncachedProvider:v332];
  _Block_release(v332);
  sub_2B860(0, &qword_1C4878, UIMenu_ptr);
  v335 = swift_allocObject();
  *(v335 + 16) = xmmword_14F0E0;
  *(v335 + 32) = v334;
  v741 = v335;
  v783._countAndFlagsBits = 0;
  v783._object = 0xE000000000000000;
  v784.value._countAndFlagsBits = 0;
  v784.value._object = 0;
  v780.value.super.isa = 0;
  v780.is_nil = 0;
  v336.value = 0;
  v337 = sub_144F7C(v783, v784, v780, v336, 0xFFFFFFFFFFFFFFFFLL, v741, v742).super.super.isa;
  [v333 setMenu:v337];

  v338 = [v285 view];
  if (!v338)
  {
LABEL_377:
    __break(1u);
    goto LABEL_378;
  }

  if (!*&v774[v285])
  {
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
    goto LABEL_380;
  }

  v339 = v338;
  [v338 addSubview:?];

  v340 = [objc_allocWithZone(type metadata accessor for NowPlayingQueueControlsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v341 = *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_queueControlsView);
  *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_queueControlsView) = v340;

  v342 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController;
  v343 = *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController);
  v344 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v345 = *(v343 + 136);
  v346 = *(v343 + 144);
  *(v343 + 136) = sub_E79BC;
  *(v343 + 144) = v344;

  sub_2173C(v345, v346);

  v347 = *(v285 + v342);
  v348 = *(v347 + 136);
  if (v348)
  {
    v349 = *(v347 + 144);

    v348(v350);
    sub_2173C(v348, v349);
  }

  v351 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v352 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer;
  v353 = *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer);
  *(v285 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoTapGestureRecognizer) = v351;
  v354 = v351;

  if (!v354)
  {
    goto LABEL_379;
  }

  [v354 setDelegate:v285];

  v355 = [v285 view];
  if (!v355)
  {
LABEL_380:
    __break(1u);
    goto LABEL_381;
  }

  v765 = v261;
  if (!*(v285 + v352))
  {
LABEL_381:
    __break(1u);
    goto LABEL_382;
  }

  v356 = v355;
  [v355 addGestureRecognizer:?];

  v357 = *(v285 + v352);
  if (!v357)
  {
LABEL_382:
    __break(1u);
    goto LABEL_383;
  }

  *(swift_allocObject() + 16) = v285;
  sub_2B860(0, &qword_1C8180, UITapGestureRecognizer_ptr);
  v358 = v285;
  v359 = v357;
  sub_14226C();

  v360 = [objc_allocWithZone(UIPinchGestureRecognizer) init];
  v361 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer;
  v362 = *&v358[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer];
  *&v358[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_videoPinchGestureRecognizer] = v360;
  v363 = v360;

  if (!v363)
  {
LABEL_383:
    __break(1u);
    goto LABEL_384;
  }

  [v363 setDelegate:v358];

  v364 = [v358 view];
  v365 = v775;
  if (!v364)
  {
LABEL_384:
    __break(1u);
    goto LABEL_385;
  }

  if (!*&v358[v361])
  {
LABEL_385:
    __break(1u);
    goto LABEL_386;
  }

  v366 = v364;
  [v364 addGestureRecognizer:?];

  v367 = *&v358[v361];
  if (!v367)
  {
LABEL_386:
    __break(1u);
    goto LABEL_387;
  }

  *(swift_allocObject() + 16) = v358;
  sub_2B860(0, &qword_1C8188, UIPinchGestureRecognizer_ptr);
  v368 = v358;
  v369 = v367;
  sub_14226C();

  v370 = *(v1 + v772);
  if (!v370)
  {
LABEL_387:
    __break(1u);
    goto LABEL_388;
  }

  v371 = [v370 bottomAnchor];
  v372 = [v368 view];
  if (!v372)
  {
LABEL_388:
    __break(1u);
    goto LABEL_389;
  }

  v373 = v372;
  v374 = [v372 safeAreaLayoutGuide];

  v375 = [v374 bottomAnchor];
  v376 = [v371 constraintEqualToAnchor:v375];

  v377 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin;
  v378 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin];
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin] = v376;

  v379 = *&v777[v1];
  if (!v379)
  {
LABEL_389:
    __break(1u);
    goto LABEL_390;
  }

  v380 = [*(v379 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide) topAnchor];
  v381 = *(v1 + v365);
  if (!v381)
  {
LABEL_390:
    __break(1u);
    goto LABEL_391;
  }

  v382 = [v381 lastBaselineAnchor];
  v383 = [v380 constraintGreaterThanOrEqualToAnchor:v382];

  v384 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor;
  v385 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor];
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlLayoutGuideTopAnchor] = v383;

  v386 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider];
  if (!v386)
  {
LABEL_391:
    __break(1u);
    goto LABEL_392;
  }

  v758 = &v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider];
  v387 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSlider + 8];
  v388 = swift_getObjectType();
  v389 = *(v387 + 32);
  v390 = v386;
  v391 = v389(v388, v387);

  v392 = [v391 bottomAnchor];
  v393 = *(v1 + v772);
  if (!v393)
  {
LABEL_392:
    __break(1u);
    goto LABEL_393;
  }

  v750 = v384;
  v744 = v377;
  v394 = [v393 topAnchor];
  v395 = [v392 constraintEqualToAnchor:v394];

  v396 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint];
  v746 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint;
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint] = v395;

  v397 = *(v1 + v773);
  v398 = v771;
  v399 = v760;
  if (!v397)
  {
LABEL_393:
    __break(1u);
    goto LABEL_394;
  }

  v400 = [v397 widthAnchor];
  v401 = [v400 constraintEqualToConstant:40.0];

  v402 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint];
  v749 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint;
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint] = v401;

  v403 = *(v1 + v399);
  if (!v403)
  {
LABEL_394:
    __break(1u);
    goto LABEL_395;
  }

  v404 = [v403 widthAnchor];
  v405 = [v404 constraintEqualToConstant:40.0];

  v406 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint];
  v748 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint;
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint] = v405;

  v407 = *(v1 + v768);
  if (!v407)
  {
LABEL_395:
    __break(1u);
    goto LABEL_396;
  }

  v408 = [v407 widthAnchor];
  v409 = [v408 constraintEqualToConstant:40.0];

  v410 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint;
  v411 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint];
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint] = v409;

  v412 = *(v1 + v766);
  if (!v412)
  {
LABEL_396:
    __break(1u);
    goto LABEL_397;
  }

  v413 = [v412 heightAnchor];
  v414 = [v413 constraintEqualToConstant:171.0];

  v415 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint;
  v416 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint];
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint] = v414;

  v418 = *(v1 + v775);
  if (!v418)
  {
LABEL_397:
    __break(1u);
    goto LABEL_398;
  }

  v747 = v410;
  v745 = v415;
  LODWORD(v417) = 1148846080;
  [v418 setContentCompressionResistancePriority:1 forAxis:v417];
  v419 = [*(v1 + v398) leadingAnchor];
  v420 = [v368 view];
  if (!v420)
  {
LABEL_398:
    __break(1u);
    goto LABEL_399;
  }

  v421 = v420;
  v422 = [v420 leadingAnchor];

  v423 = [v419 constraintEqualToAnchor:v422];
  v424 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint;
  v425 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint];
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint] = v423;

  v426 = [*(v1 + v398) trailingAnchor];
  v427 = [v368 view];
  if (!v427)
  {
LABEL_399:
    __break(1u);
    goto LABEL_400;
  }

  v428 = v427;
  v429 = [v427 trailingAnchor];

  v430 = [v426 constraintEqualToAnchor:v429];
  v431 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint;
  v432 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint];
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint] = v430;

  v433 = [*(v1 + v398) topAnchor];
  v434 = [v368 view];
  if (!v434)
  {
LABEL_400:
    __break(1u);
    goto LABEL_401;
  }

  v435 = v434;
  v776 = v285;
  v436 = [v434 safeAreaLayoutGuide];

  v437 = [v436 topAnchor];
  v438 = v754[3];
  v439 = v754[4];
  __swift_project_boxed_opaque_existential_1(v754, v438);
  (*(v439 + 16))(v438, v439);
  v440 = [v433 constraintEqualToAnchor:v437 constant:?];

  v441 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint;
  v442 = *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint];
  *&v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTopMarginConstraint] = v440;

  v443 = [objc_allocWithZone(UILayoutGuide) init];
  v444 = [v368 view];
  if (!v444)
  {
LABEL_401:
    __break(1u);
    goto LABEL_402;
  }

  v445 = v444;
  [v444 addLayoutGuide:v443];

  v446 = swift_allocObject();
  *(v446 + 16) = xmmword_1535F0;
  v447 = [v443 centerYAnchor];
  v448 = *(v1 + v767);
  if (!v448)
  {
LABEL_402:
    __break(1u);
    goto LABEL_403;
  }

  v449 = [v448 lastBaselineAnchor];
  v450 = [v447 constraintEqualToAnchor:v449];

  *(v446 + 32) = v450;
  v770 = v443;
  v451 = [v443 topAnchor];
  v452 = [*(v1 + v771) bottomAnchor];
  v453 = [v451 constraintEqualToAnchor:v452 constant:66.0];

  *(v446 + 40) = v453;
  v454 = *&v368[v424];
  if (!v454)
  {
LABEL_403:
    __break(1u);
    goto LABEL_404;
  }

  *(v446 + 48) = v454;
  v455 = *&v368[v431];
  if (!v455)
  {
LABEL_404:
    __break(1u);
    goto LABEL_405;
  }

  *(v446 + 56) = v455;
  v456 = *&v368[v441];
  if (!v456)
  {
LABEL_405:
    __break(1u);
    goto LABEL_406;
  }

  *(v446 + 64) = v456;
  v457 = *(v1 + v762);
  v458 = v771;
  if (!v457)
  {
LABEL_406:
    __break(1u);
    goto LABEL_407;
  }

  v459 = v456;
  v460 = v455;
  v461 = v454;
  v462 = [v457 topAnchor];
  v463 = [v368 view];
  if (!v463)
  {
LABEL_407:
    __break(1u);
    goto LABEL_408;
  }

  v464 = v463;
  v465 = [v463 safeAreaLayoutGuide];

  v466 = [v465 topAnchor];
  v467 = [v462 constraintEqualToAnchor:v466 constant:_UISheetGrabberTopSpacing];

  *(v446 + 72) = v467;
  v468 = *(v1 + v762);
  if (!v468)
  {
LABEL_408:
    __break(1u);
    goto LABEL_409;
  }

  v469 = [v468 centerXAnchor];
  v470 = [v368 view];
  v471 = v750;
  if (!v470)
  {
LABEL_409:
    __break(1u);
    goto LABEL_410;
  }

  v472 = v470;
  v473 = [v470 centerXAnchor];

  v474 = [v469 constraintEqualToAnchor:v473];
  *(v446 + 80) = v474;
  v475 = *&v368[v471];
  if (!v475)
  {
LABEL_410:
    __break(1u);
    goto LABEL_411;
  }

  *(v446 + 88) = v475;
  v476 = v777;
  v477 = *&v777[v1];
  if (!v477)
  {
LABEL_411:
    __break(1u);
    goto LABEL_412;
  }

  v478 = v475;
  v479 = [v477 widthAnchor];
  v480 = [*(v1 + v458) widthAnchor];
  v481 = [v479 constraintLessThanOrEqualToAnchor:v480];

  LODWORD(v482) = 1144750080;
  v483 = [v481 withPriority:v482];

  *(v446 + 96) = v483;
  v484 = *&v476[v1];
  if (!v484)
  {
LABEL_412:
    __break(1u);
    goto LABEL_413;
  }

  v485 = [v484 widthAnchor];
  v486 = [v368 view];
  if (!v486)
  {
LABEL_413:
    __break(1u);
    goto LABEL_414;
  }

  v487 = v486;
  v488 = [v486 layoutMarginsGuide];

  v489 = [v488 widthAnchor];
  v490 = [v485 constraintEqualToAnchor:v489];

  *(v446 + 104) = v490;
  v491 = *&v777[v1];
  if (!v491)
  {
LABEL_414:
    __break(1u);
    goto LABEL_415;
  }

  v492 = [v491 centerXAnchor];
  v493 = [v368 view];
  if (!v493)
  {
LABEL_415:
    __break(1u);
    goto LABEL_416;
  }

  v494 = v493;
  v495 = [v493 centerXAnchor];

  v496 = [v492 constraintEqualToAnchor:v495];
  *(v446 + 112) = v496;
  v497 = *(v1 + v761);
  if (!v497)
  {
LABEL_416:
    __break(1u);
    goto LABEL_417;
  }

  v498 = [v497 lastBaselineAnchor];
  v499 = *(v1 + v775);
  if (!v499)
  {
LABEL_417:
    __break(1u);
    goto LABEL_418;
  }

  v500 = [v499 firstBaselineAnchor];
  v501 = [v498 constraintEqualToAnchor:v500 constant:-24.0];

  *(v446 + 120) = v501;
  v502 = *(v1 + v761);
  if (!v502)
  {
LABEL_418:
    __break(1u);
    goto LABEL_419;
  }

  v503 = [v502 leadingAnchor];
  v504 = v767;
  v505 = *(v1 + v767);
  if (!v505)
  {
LABEL_419:
    __break(1u);
    goto LABEL_420;
  }

  v506 = [v505 leadingAnchor];
  v507 = [v503 constraintEqualToAnchor:v506];

  *(v446 + 128) = v507;
  v508 = *(v1 + v504);
  if (!v508)
  {
LABEL_420:
    __break(1u);
    goto LABEL_421;
  }

  v509 = [v508 topAnchor];
  v510 = *(v1 + v763);
  if (!v510)
  {
LABEL_421:
    __break(1u);
    goto LABEL_422;
  }

  v511 = [v510 topAnchor];
  v512 = [v509 constraintEqualToAnchor:v511];

  *(v446 + 136) = v512;
  v513 = *(v1 + v767);
  if (!v513)
  {
LABEL_422:
    __break(1u);
    goto LABEL_423;
  }

  v514 = [v513 leadingAnchor];
  v515 = [v368 view];
  if (!v515)
  {
LABEL_423:
    __break(1u);
    goto LABEL_424;
  }

  v516 = v515;
  v517 = [v515 layoutMarginsGuide];

  v518 = [v517 leadingAnchor];
  v519 = [v514 constraintGreaterThanOrEqualToAnchor:v518];

  *(v446 + 144) = v519;
  v520 = *(v1 + v769);
  if (!v520)
  {
LABEL_424:
    __break(1u);
    goto LABEL_425;
  }

  v521 = [v520 topAnchor];
  v522 = *(v1 + v755);
  if (!v522)
  {
LABEL_425:
    __break(1u);
    goto LABEL_426;
  }

  v523 = [v522 topAnchor];
  v524 = [v521 constraintEqualToAnchor:v523];

  *(v446 + 152) = v524;
  v525 = *(v1 + v769);
  if (!v525)
  {
LABEL_426:
    __break(1u);
    goto LABEL_427;
  }

  v526 = [v525 leadingAnchor];
  v527 = [v368 view];
  if (!v527)
  {
LABEL_427:
    __break(1u);
    goto LABEL_428;
  }

  v528 = v527;
  v529 = [v527 layoutMarginsGuide];

  v530 = [v529 leadingAnchor];
  v531 = [v526 constraintGreaterThanOrEqualToAnchor:v530];

  *(v446 + 160) = v531;
  v532 = v775;
  v533 = *(v1 + v775);
  if (!v533)
  {
LABEL_428:
    __break(1u);
    goto LABEL_429;
  }

  v534 = [v533 leadingAnchor];
  v535 = [v368 view];
  v536 = v756;
  if (!v535)
  {
LABEL_429:
    __break(1u);
    goto LABEL_430;
  }

  v537 = v535;
  v538 = [v535 leadingAnchor];

  v539 = [v534 constraintEqualToAnchor:v538];
  *(v446 + 168) = v539;
  v540 = *(v1 + v532);
  if (!v540)
  {
LABEL_430:
    __break(1u);
    goto LABEL_431;
  }

  v541 = [v540 trailingAnchor];
  v542 = *&v774[v776];
  if (!v542)
  {
LABEL_431:
    __break(1u);
    goto LABEL_432;
  }

  v543 = [v542 leadingAnchor];
  v544 = [v541 constraintEqualToAnchor:v543 constant:-8.0];

  *(v446 + 176) = v544;
  v545 = *(v1 + v532);
  if (!v545)
  {
LABEL_432:
    __break(1u);
    goto LABEL_433;
  }

  v546 = [v545 lastBaselineAnchor];
  v547 = [v536 topAnchor];
  v548 = [v546 constraintLessThanOrEqualToAnchor:v547];

  *(v446 + 184) = v548;
  v549 = [v536 leadingAnchor];
  v550 = [v368 view];
  if (!v550)
  {
LABEL_433:
    __break(1u);
    goto LABEL_434;
  }

  v551 = v550;
  v552 = [v550 leadingAnchor];

  v553 = [v549 constraintEqualToAnchor:v552];
  *(v446 + 192) = v553;
  v554 = [v536 trailingAnchor];
  v555 = [v368 view];
  if (!v555)
  {
LABEL_434:
    __break(1u);
    goto LABEL_435;
  }

  v556 = v555;
  v557 = [v555 trailingAnchor];

  v558 = [v554 constraintEqualToAnchor:v557];
  *(v446 + 200) = v558;
  v559 = [v536 bottomAnchor];
  v560 = [v368 view];
  if (!v560)
  {
LABEL_435:
    __break(1u);
    goto LABEL_436;
  }

  v561 = v560;
  v562 = [v560 bottomAnchor];

  v563 = [v559 constraintEqualToAnchor:v562];
  *(v446 + 208) = v563;
  v564 = v757;
  v565 = [v757 topAnchor];
  v566 = *(v1 + v532);
  v567 = v777;
  if (!v566)
  {
LABEL_436:
    __break(1u);
    goto LABEL_437;
  }

  v568 = [v566 lastBaselineAnchor];
  v569 = [v565 constraintEqualToAnchor:v568 constant:20.0];

  *(v446 + 216) = v569;
  v570 = [v564 leadingAnchor];
  v571 = *&v567[v1];
  if (!v571)
  {
LABEL_437:
    __break(1u);
    goto LABEL_438;
  }

  v572 = [v571 leadingAnchor];
  v573 = [v570 constraintEqualToAnchor:v572];

  *(v446 + 224) = v573;
  v574 = [v564 trailingAnchor];
  v575 = *&v567[v1];
  if (!v575)
  {
LABEL_438:
    __break(1u);
    goto LABEL_439;
  }

  v576 = [v575 trailingAnchor];
  v577 = [v574 constraintEqualToAnchor:v576];

  *(v446 + 232) = v577;
  v578 = v774;
  v579 = v776;
  v580 = *&v774[v776];
  if (!v580)
  {
LABEL_439:
    __break(1u);
    goto LABEL_440;
  }

  v581 = [v580 widthAnchor];
  v582 = [v581 constraintEqualToConstant:28.0];

  *(v446 + 240) = v582;
  v583 = *&v578[v579];
  if (!v583)
  {
LABEL_440:
    __break(1u);
    goto LABEL_441;
  }

  v584 = [v583 heightAnchor];
  v585 = [v584 constraintEqualToConstant:28.0];

  *(v446 + 248) = v585;
  v586 = *&v578[v579];
  if (!v586)
  {
LABEL_441:
    __break(1u);
    goto LABEL_442;
  }

  v587 = [v586 trailingAnchor];
  v588 = *&v567[v1];
  if (!v588)
  {
LABEL_442:
    __break(1u);
    goto LABEL_443;
  }

  v589 = [v588 trailingAnchor];
  v590 = [v587 constraintEqualToAnchor:v589];

  *(v446 + 256) = v590;
  v591 = *&v774[v776];
  if (!v591)
  {
LABEL_443:
    __break(1u);
    goto LABEL_444;
  }

  v592 = [v591 centerYAnchor];
  v593 = [v770 centerYAnchor];
  v594 = [v592 constraintEqualToAnchor:v593];

  *(v446 + 264) = v594;
  v595 = *&v368[v749];
  if (!v595)
  {
LABEL_444:
    __break(1u);
    goto LABEL_445;
  }

  *(v446 + 272) = v595;
  v596 = *&v368[v748];
  v597 = v773;
  if (!v596)
  {
LABEL_445:
    __break(1u);
    goto LABEL_446;
  }

  *(v446 + 280) = v596;
  v598 = *&v368[v747];
  if (!v598)
  {
LABEL_446:
    __break(1u);
    goto LABEL_447;
  }

  *(v446 + 288) = v598;
  v599 = *(v1 + v597);
  if (!v599)
  {
LABEL_447:
    __break(1u);
    goto LABEL_448;
  }

  v600 = v598;
  v601 = v596;
  v602 = v595;
  v603 = [v599 heightAnchor];
  v604 = *(v1 + v597);
  if (!v604)
  {
LABEL_448:
    __break(1u);
    goto LABEL_449;
  }

  v605 = [v604 widthAnchor];
  v606 = [v603 constraintEqualToAnchor:v605];

  *(v446 + 296) = v606;
  v607 = v760;
  v608 = *(v1 + v760);
  if (!v608)
  {
LABEL_449:
    __break(1u);
    goto LABEL_450;
  }

  v609 = [v608 heightAnchor];
  v610 = *(v1 + v607);
  if (!v610)
  {
LABEL_450:
    __break(1u);
    goto LABEL_451;
  }

  v611 = [v610 widthAnchor];
  v612 = [v609 constraintEqualToAnchor:v611];

  *(v446 + 304) = v612;
  v613 = v768;
  v614 = *(v1 + v768);
  if (!v614)
  {
LABEL_451:
    __break(1u);
    goto LABEL_452;
  }

  v615 = [v614 heightAnchor];
  v616 = *(v1 + v613);
  if (!v616)
  {
LABEL_452:
    __break(1u);
    goto LABEL_453;
  }

  v617 = [v616 widthAnchor];
  v618 = [v615 constraintEqualToAnchor:v617];

  *(v446 + 312) = v618;
  v619 = v766;
  v620 = *(v1 + v766);
  if (!v620)
  {
LABEL_453:
    __break(1u);
    goto LABEL_454;
  }

  v621 = [v620 topAnchor];
  v622 = *&v567[v1];
  if (!v622)
  {
LABEL_454:
    __break(1u);
    goto LABEL_455;
  }

  v623 = v621;
  v624 = [*(v622 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_trackLayoutGuide) bottomAnchor];
  v625 = [v623 constraintEqualToAnchor:v624];

  *(v446 + 320) = v625;
  v626 = *(v1 + v619);
  if (!v626)
  {
LABEL_455:
    __break(1u);
    goto LABEL_456;
  }

  v627 = [v626 bottomAnchor];
  v628 = *v758;
  if (!*v758)
  {
LABEL_456:
    __break(1u);
    goto LABEL_457;
  }

  v629 = v627;
  v630 = *(v758 + 1);
  v631 = swift_getObjectType();
  v632 = *(v630 + 32);
  v633 = v628;
  v634 = v632(v631, v630);

  v635 = [v634 topAnchor];
  v636 = [v629 constraintEqualToAnchor:v635];

  *(v446 + 328) = v636;
  v637 = *(v1 + v766);
  if (!v637)
  {
LABEL_457:
    __break(1u);
    goto LABEL_458;
  }

  v638 = [v637 centerXAnchor];
  v639 = [v368 view];
  v640 = v772;
  v641 = v745;
  if (!v639)
  {
LABEL_458:
    __break(1u);
    goto LABEL_459;
  }

  v642 = v639;
  v643 = [v639 centerXAnchor];

  v644 = [v638 constraintEqualToAnchor:v643];
  *(v446 + 336) = v644;
  v645 = *&v368[v641];
  v646 = v777;
  v647 = v758;
  if (!v645)
  {
LABEL_459:
    __break(1u);
    goto LABEL_460;
  }

  *(v446 + 344) = v645;
  v648 = *&v368[v746];
  if (!v648)
  {
LABEL_460:
    __break(1u);
    goto LABEL_461;
  }

  *(v446 + 352) = v648;
  v649 = *v647;
  if (!*v647)
  {
LABEL_461:
    __break(1u);
    goto LABEL_462;
  }

  v650 = v648;
  v651 = v645;
  v652 = [v649 leadingAnchor];
  v653 = *&v646[v1];
  if (!v653)
  {
LABEL_462:
    __break(1u);
    goto LABEL_463;
  }

  v654 = [v653 leadingAnchor];
  v655 = [v652 constraintEqualToAnchor:v654];

  *(v446 + 360) = v655;
  if (!*v647)
  {
LABEL_463:
    __break(1u);
    goto LABEL_464;
  }

  v656 = [*v647 trailingAnchor];
  v657 = *&v646[v1];
  v658 = v776;
  if (!v657)
  {
LABEL_464:
    __break(1u);
    goto LABEL_465;
  }

  v659 = [v657 trailingAnchor];
  v660 = [v656 constraintEqualToAnchor:v659];

  *(v446 + 368) = v660;
  v661 = *(v1 + v640);
  if (!v661)
  {
LABEL_465:
    __break(1u);
    goto LABEL_466;
  }

  v662 = [v661 leadingAnchor];
  v663 = *&v646[v1];
  if (!v663)
  {
LABEL_466:
    __break(1u);
    goto LABEL_467;
  }

  v664 = [v663 leadingAnchor];
  v665 = [v662 constraintEqualToAnchor:v664];

  *(v446 + 376) = v665;
  v666 = *(v1 + v640);
  if (!v666)
  {
LABEL_467:
    __break(1u);
    goto LABEL_468;
  }

  v667 = [v666 trailingAnchor];
  v668 = *&v646[v1];
  if (!v668)
  {
LABEL_468:
    __break(1u);
    goto LABEL_469;
  }

  v669 = [v668 trailingAnchor];
  v670 = [v667 constraintEqualToAnchor:v669];

  *(v446 + 384) = v670;
  v671 = *(v1 + v640);
  v672 = v759;
  if (!v671)
  {
LABEL_469:
    __break(1u);
    goto LABEL_470;
  }

  v673 = [v671 heightAnchor];
  v674 = [v673 constraintEqualToConstant:28.0];

  *(v446 + 392) = v674;
  v675 = *&v368[v744];
  if (!v675)
  {
LABEL_470:
    __break(1u);
    goto LABEL_471;
  }

  *(v446 + 400) = v675;
  v676 = *&v765[v1];
  if (!v676)
  {
LABEL_471:
    __break(1u);
    goto LABEL_472;
  }

  v677 = v675;
  v678 = [v676 centerYAnchor];
  v679 = *(v1 + v640);
  if (!v679)
  {
LABEL_472:
    __break(1u);
    goto LABEL_473;
  }

  v680 = [v679 centerYAnchor];
  v681 = [v678 constraintEqualToAnchor:v680];

  *(v446 + 408) = v681;
  v682 = *&v765[v1];
  if (!v682)
  {
LABEL_473:
    __break(1u);
    goto LABEL_474;
  }

  v683 = [v682 leadingAnchor];
  v684 = *(v1 + v640);
  if (!v684)
  {
LABEL_474:
    __break(1u);
    goto LABEL_475;
  }

  v685 = [v684 leadingAnchor];
  v686 = [v683 constraintEqualToAnchor:v685];

  *(v446 + 416) = v686;
  v687 = *(v658 + v764);
  if (!v687)
  {
LABEL_475:
    __break(1u);
    goto LABEL_476;
  }

  v688 = [v687 trailingAnchor];
  v689 = *(v1 + v640);
  if (!v689)
  {
LABEL_476:
    __break(1u);
    goto LABEL_477;
  }

  v690 = [v689 trailingAnchor];
  v691 = [v688 constraintEqualToAnchor:v690];

  *(v446 + 424) = v691;
  v692 = *(v658 + v764);
  if (!v692)
  {
LABEL_477:
    __break(1u);
    goto LABEL_478;
  }

  v693 = [v692 centerYAnchor];
  v694 = *(v1 + v640);
  if (!v694)
  {
LABEL_478:
    __break(1u);
    goto LABEL_479;
  }

  v695 = [v694 centerYAnchor];
  v696 = [v693 constraintEqualToAnchor:v695];

  *(v446 + 432) = v696;
  if (!*v672)
  {
LABEL_479:
    __break(1u);
    goto LABEL_480;
  }

  v697 = [*v672 leadingAnchor];
  v698 = *&v765[v1];
  if (!v698)
  {
LABEL_480:
    __break(1u);
    goto LABEL_481;
  }

  v699 = [v698 trailingAnchor];
  v700 = [v697 constraintGreaterThanOrEqualToAnchor:v699 constant:4.0];

  *(v446 + 440) = v700;
  if (!*v672)
  {
LABEL_481:
    __break(1u);
    goto LABEL_482;
  }

  v701 = [*v672 trailingAnchor];
  v702 = *(v776 + v764);
  if (!v702)
  {
LABEL_482:
    __break(1u);
    goto LABEL_483;
  }

  v703 = [v702 leadingAnchor];
  v704 = [v701 constraintLessThanOrEqualToAnchor:v703 constant:-4.0];

  *(v446 + 448) = v704;
  if (!*v672)
  {
LABEL_483:
    __break(1u);
    goto LABEL_484;
  }

  v705 = [*v672 centerYAnchor];
  v706 = *(v1 + v640);
  if (!v706)
  {
LABEL_484:
    __break(1u);
    goto LABEL_485;
  }

  v707 = [v706 centerYAnchor];
  v708 = [v705 constraintEqualToAnchor:v707];

  *(v446 + 456) = v708;
  if (!*v672)
  {
LABEL_485:
    __break(1u);
    goto LABEL_486;
  }

  v709 = [*v672 centerXAnchor];
  v710 = *(v1 + v640);
  if (v710)
  {
    v711 = v709;
    v712 = v710;

    v713 = [v712 centerXAnchor];

    v714 = [v711 constraintEqualToAnchor:v713];
    *(v446 + 464) = v714;
    v715 = v752;
    v716 = [*(v1 + v752) topAnchor];
    v717 = v771;
    v718 = [*(v1 + v771) topAnchor];
    v719 = [v716 constraintGreaterThanOrEqualToAnchor:v718];

    *(v446 + 472) = v719;
    v720 = [*(v1 + v715) bottomAnchor];
    v721 = [*(v1 + v717) bottomAnchor];
    v722 = [v720 constraintLessThanOrEqualToAnchor:v721];

    *(v446 + 480) = v722;
    v723 = [*(v1 + v715) widthAnchor];
    v724 = [*(v1 + v717) widthAnchor];
    v725 = [v723 constraintLessThanOrEqualToAnchor:v724];

    *(v446 + 488) = v725;
    v726 = [*(v1 + v715) heightAnchor];
    v727 = [*(v1 + v715) widthAnchor];
    v728 = [v726 constraintEqualToAnchor:v727];

    *(v446 + 496) = v728;
    v729 = [*(v1 + v715) heightAnchor];
    v730 = [v729 constraintEqualToConstant:449.0];

    LODWORD(v731) = 1132068864;
    v732 = [v730 withPriority:v731];

    *(v446 + 504) = v732;
    v733 = [*(v1 + v715) centerXAnchor];
    v734 = [*(v1 + v717) centerXAnchor];
    v735 = [v733 constraintEqualToAnchor:v734];

    *(v446 + 512) = v735;
    v736 = [*(v1 + v715) centerYAnchor];
    v737 = [*(v1 + v717) centerYAnchor];
    v738 = [v736 constraintEqualToAnchor:v737];

    *(v446 + 520) = v738;
    v739 = objc_opt_self();
    sub_2B860(0, &qword_1C8190, NSLayoutConstraint_ptr);
    v740 = sub_1449CC().super.isa;

    [v739 activateConstraints:v740];

    v368[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible] = 0;
    sub_DD99C();
    sub_E3E60();

    return;
  }

LABEL_486:
  __break(1u);
}

void sub_E2900(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_E2964(uint64_t a1, uint64_t a2)
{
  v2 = sub_14453C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0, qword_14F0F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C8210, &qword_1536C0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v30 - v10);
  v12 = sub_140D0C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (sub_E2DBC())
    {
      v32 = v5;
      v33 = v3;
      v34 = v2;
      v18 = *&v17[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
      if (v18)
      {
        v19 = v18;
        [v19 frame];
        *v11 = v19;
        v11[1] = v20;
        v11[2] = v21;
        v11[3] = v22;
        v11[4] = v23;
        v24 = enum case for PresentationSource.Position.view(_:);
        v25 = sub_140CFC();
        v26 = *(v25 - 8);
        (*(v26 + 104))(v11, v24, v25);
        (*(v26 + 56))(v11, 0, 1, v25);
        v31 = v17;
        sub_140CDC();
        (*(v13 + 16))(v8, v15, v12);
        (*(v13 + 56))(v8, 0, 1, v12);
        sub_14457C();
        if (qword_1BFFE8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_1D19C(&static NowPlayingDataProvider.shared, v36, &qword_1C1510, &unk_150610);
        if (v37)
        {
          sub_1DB40(v36, v35);
          sub_7D29C(v36);
          __swift_project_boxed_opaque_existential_1(v35, v35[3]);
          v27 = v32;
          v28 = v33;
          v29 = v34;
          (*(v33 + 104))(v32, enum case for PerformableContextActions.presentPodcast(_:), v34);
          sub_1444AC();

          (*(v28 + 8))(v27, v29);
          (*(v13 + 8))(v15, v12);
          __swift_destroy_boxed_opaque_existential_0(v35);
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    else
    {
    }
  }
}

void *sub_E2DBC()
{
  v1 = sub_140CAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_140C8C();
  __chkstk_darwin(v5);
  v6 = sub_140CBC();
  __chkstk_darwin(v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0, qword_14F0F0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v19 - v9;
  result = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse);
  if (result)
  {
    v12 = [result tracklist];
    v14 = sub_AB9C0(v12, v13);

    if (v14)
    {
      v15 = [v14 metadataObject];

      if (v15)
      {
        v20 = v2;
        v16 = [v15 flattenedGenericObject];
        v17 = [v16 anyObject];

        if (v17)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v18 = sub_140D0C();
            (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
            swift_storeEnumTagMultiPayload();
            (*(v20 + 104))(v4, enum case for InteractionContext.Origin.none(_:), v1);

            sub_140C9C();
            sub_1445DC();
            swift_allocObject();
            return sub_1445CC();
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_E3100(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + *a3);
    if (v9)
    {
      if ([v9 isHolding] & 1) == 0 && (v10 = *&v8[*a4 + 16]) != 0 && *(v10 + 16) && (v11 = sub_F7F40(0), (v12))
      {
        v13 = *(*(v10 + 56) + 16 * v11);
        v14 = a1;

        v13(&v14);
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E31DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *&Strong[*a3 + 16];
    if (v9)
    {

      if (*(v9 + 16) && (v10 = sub_F7F40(a4), (v11 & 1) != 0))
      {
        v12 = *(*(v9 + 56) + 16 * v10);

        v13 = a1;
        v12(&v13);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_E32B8(void *a1, uint64_t a2)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = *&Strong[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse];
  v16 = v4;

  if (!v4)
  {
    return;
  }

  type metadata accessor for PlayerTimeControl();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
    v7 = a1;
    v8 = [v16 tracklist];
    v10 = sub_AB9C0(v8, v9);

    v11 = [v10 seekCommand];
    if (v11)
    {
      v12 = [v11 changePositionToElapsedInterval:*(v6 + OBJC_IVAR____TtC12NowPlayingUI17PlayerTimeControl_selectedElapsedTime)];
      if (v12)
      {
        v13 = v12;
        v14 = objc_opt_self();
        v15 = v13;
        [v14 performRequest:v15 completion:0];

        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }
  }

LABEL_9:
}

void sub_E342C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = &Strong[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControlScrubSpeed];
  *v7 = a2;
  v7[8] = a3 & 1;
  sub_DC8E4();

  v8 = swift_unknownObjectUnownedLoadStrong();
  v9 = *&v8[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView];
  v10 = v9;

  if (v9)
  {
    v11 = swift_unknownObjectUnownedLoadStrong();
    sub_E3504(v10);
  }
}

void sub_E3504(_BYTE *a1)
{
  if (*(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_deferArtworkModeUpdates))
  {
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse);
  v4 = v3 ? [v3 state] == &dword_0 + 2 : *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder) != 0;
  v5 = OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode;
  v6 = a1[OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_mode];
  if (v6 != 2 && ((v4 ^ v6) & 1) == 0)
  {
    return;
  }

  v7 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:2.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  if (v6 == 2)
  {
    v8 = a1[v5];
    if (v8 == 2 || ((v4 ^ v8) & 1) != 0)
    {
      a1[v5] = v4;
      v17 = v7;
      sub_C5E80();
      v7 = v17;
    }

    return;
  }

  v18 = v7;
  v9 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.1878 controlPoint2:{0.0023, 0.5399, 0.9629}];
  if (v6)
  {
    if (!v4)
    {
      v10 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:5.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];

      [v10 setSpringCubicTimingParameters:v9];
      v18 = v10;
    }
  }

  else if (!v4)
  {
    goto LABEL_19;
  }

  v11 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:2.0 stiffness:300.0 damping:28.0 initialVelocity:{0.0, 0.0}];

  v18 = v11;
LABEL_19:
  v12 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v18 timingParameters:0.0];
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = v4;
  aBlock[4] = sub_E7A88;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_11D5C0;
  aBlock[3] = &block_descriptor_49;
  v14 = _Block_copy(aBlock);
  v15 = v12;
  a1;

  [v15 addAnimations:v14];
  _Block_release(v14);
  [v15 setInterruptible:0];

  [v15 startAnimation];
  v16 = a1[v5];
  if (v16 == 2 || ((v4 ^ v16) & 1) != 0)
  {
    a1[v5] = v4;
    sub_C5E80();
  }
}

uint64_t sub_E3860()
{
  v0 = sub_14100C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_14503C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14505C();
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.Size.small(_:), v4);
  sub_14502C();
  sub_140F5C();
  sub_140FBC();
  (*(v1 + 8))(v3, v0);
  return sub_14504C();
}

id sub_E39FC(void *a1)
{
  v1 = [a1 userInterfaceStyle] == &dword_0 + 2;
  sub_14114C();
  v2 = sub_14113C();
  v3 = [v2 colorWithAlphaComponent:dbl_153600[v1]];

  return v3;
}

id sub_E3A74(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8[4] = a1;
  v8[5] = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_E74C0;
  v8[3] = &block_descriptor_43_0;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithDynamicProvider:v5];
  _Block_release(v5);

  return v6;
}

double sub_E3B38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController);
    v5 = v4[7];
    v6 = v4[8];
    v8 = v4[9];
    v7 = v4[10];
    v9 = v4[11];
    v10 = v4[12];
    v11 = v4[13];
    v40 = v4[6];
    v41 = v4[5];
    v48 = v41;
    v49 = v40;
    v50 = v5;
    v51[0] = *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton];
    v12 = qword_1C0098;
    v39 = v5;
    swift_bridgeObjectRetain_n();

    v13 = v51[0];
    if (v12 != -1)
    {
      swift_once();
    }

    v51[1] = qword_1D1958;
    v52 = 0;
    v53 = v6;
    v54 = v8;
    v55 = v7;
    v56 = *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton];
    v57 = 0;
    v58 = 3;
    v42 = v9;
    v59 = v9;
    v60 = v10;
    v61 = v11;
    v62 = *&v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton];
    v63 = 0x10000000000000;
    v64 = 0;
    v44 = v3;
    v45 = &v3[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];

    v43 = v11;

    v14 = v56;
    v15 = v62;
    v16 = 0;
    v46 = v8;
    do
    {
      v23 = &v47[v16 * 8];
      v24 = v51[v16];
      if (v24)
      {
        v25 = v6;
        v26 = v7;
        v27 = *(v23 + 6);
        if (v27)
        {
          v28 = *(v23 + 4);
          v29 = *(v23 + 5);
          v30 = *(v45 + 8);
          v31 = v10;
          v32 = v24;

          v33 = sub_101A54(v30, 0, v28, v29);
          v34 = v32;
          v10 = v31;
          [v34 setImage:v33 forState:0];

          v35 = *(v27 + 16);

          v22 = v35 != 0;
        }

        else
        {
          v17 = *(v23 + 8);
          v18 = v23[72];
          v19 = *(v45 + 8);
          v20 = v24;
          v21 = sub_101A54(v19, 0, v17, v18);
          [v20 setImage:v21 forState:0];

          v22 = 0;
        }

        [v24 setEnabled:{v22, v39, v40, v41}];

        v7 = v26;
        v6 = v25;
        v8 = v46;
      }

      v16 += 6;
    }

    while (v16 != 18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C81C0, &unk_153690);
    swift_arrayDestroy();
    v36 = &v44[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonConfiguration];
    *v36 = v41;
    *(v36 + 1) = v40;
    *(v36 + 2) = v39;

    v37 = &v44[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonConfiguration];
    *v37 = v6;
    *(v37 + 1) = v8;
    *(v37 + 2) = v7;

    v38 = &v44[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonConfiguration];
    *v38 = v42;
    *(v38 + 1) = v10;
    *(v38 + 2) = v43;
  }

  return result;
}

void sub_E3E60()
{
  v1 = v0;
  if ([v0 isViewLoaded])
  {
    v2 = [v0 view];
    v3 = [v0 traitCollection];
    v4 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 24];
    v5 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics + 32];
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_metrics], v4);
    (*(v5 + 160))(v21, v2, v3, v4, v5);

    v6 = &v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];
    v7 = v21[3];
    *(v6 + 2) = v21[2];
    *(v6 + 3) = v7;
    v8 = v21[5];
    *(v6 + 4) = v21[4];
    *(v6 + 5) = v8;
    v9 = v21[1];
    *v6 = v21[0];
    *(v6 + 1) = v9;
    sub_E5764();
    v10 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton];
    if (v10)
    {
      v11 = objc_opt_self();
      v12 = v10;
      v13 = [v11 sharedApplication];
      v14 = [v13 preferredContentSizeCategory];

      LODWORD(v13) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
      v15 = 13.0;
      if (v13)
      {
        v15 = sub_13EA2C(UIContentSizeCategoryAccessibilityLarge, UIFontTextStyleBody, 13.0);
      }

      v16 = [objc_opt_self() systemFontOfSize:v15 weight:UIFontWeightSemibold];
      [v12 setFont:v16];

      v17 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsController];
      v18 = *(v17 + 136);
      if (v18)
      {
        v19 = *(v17 + 144);

        v18(v20);

        sub_2173C(v18, v19);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E40F8(char a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v3 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController;
  if (!*&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController])
  {
    v4 = [objc_allocWithZone(NPUIMediaControlsStandaloneViewController) init];
    v5 = *&v1[v3];
    *&v1[v3] = v4;

    v6 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton];
    if (v6)
    {
      v7 = *&v6[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController];
      *&v6[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController] = v4;
      v8 = v4;
      v9 = v6;

      sub_A4018();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E41CC()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController;
  if (!*(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController))
  {
    v2 = [objc_allocWithZone(NPUIMediaControlsStandaloneViewController) init];
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
    v4 = v2;

    v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton);
    if (v5)
    {
      v6 = *&v5[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController];
      *&v5[OBJC_IVAR____TtC12NowPlayingUI15RouteButton_iOS_controlsViewController] = v2;
      v8 = v4;
      v7 = v5;

      sub_A4018();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_E42F8(char a1)
{
  v2 = v1;
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillDisappear:", a1 & 1);
  sub_14434C();
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 removeObserver:v2 name:MTApplicationDidBecomeActiveNotification object:0];

  v6 = [v4 defaultCenter];
  [v6 removeObserver:v2 name:MTApplicationDidEnterBackgroundNotification object:0];
}

void *sub_E4440(char a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v3 = [objc_opt_self() sharedInstance];
  [v3 setNeedsUpdate];

  sub_E41CC();
  result = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result setMarqueeEnabled:1 withOptions:0];
  result = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  [result setMarqueeEnabled:1 withOptions:0];
  v5 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_mediaControlsViewController];
  if (v5)
  {
    [v5 prepareRemoteViewController];
  }

  v6 = objc_opt_self();
  v7 = [v6 defaultCenter];
  [v7 addObserver:v1 selector:"appExitedWhileAppeared" name:MTApplicationDidEnterBackgroundNotification object:0];

  v8 = [v6 defaultCenter];
  [v8 addObserver:v1 selector:"appEnteredWhileAppeared" name:MTApplicationDidBecomeActiveNotification object:0];

  return sub_14434C();
}

void sub_E4888()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "viewWillLayoutSubviews");
  v1 = &v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize];
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize];
  v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contentViewSize + 8];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;

  if (v2 != v7 || v3 != v9)
  {
    sub_E3E60();
    v11 = [v0 view];
    if (v11)
    {
      v12 = v11;
      [v11 bounds];
      v14 = v13;
      v16 = v15;

      *v1 = v14;
      *(v1 + 1) = v16;
      return;
    }

LABEL_10:
    __break(1u);
  }
}

id sub_E49C4()
{
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, "viewDidLayoutSubviews");
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 view];

    if (v3)
    {
      goto LABEL_5;
    }
  }

  result = [v0 view];
  if (result)
  {
    v3 = result;
LABEL_5:
    [v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v24.origin.x = v6;
    v24.origin.y = v8;
    v24.size.width = v10;
    v24.size.height = v12;
    CGRectGetWidth(v24);
    sub_14115C();
    sub_14116C();
    if (*&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 80] > v13)
    {
      v14 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 80];
    }

    else
    {
      v14 = v13;
    }

    if (v13 > *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 88])
    {
      v15 = v13;
    }

    else
    {
      v15 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics + 88];
    }

    result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaLeadingConstraint];
    if (result)
    {
      [result setConstant:v14];
      result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkAreaTrailingConstraint];
      if (result)
      {
        [result setConstant:-v14];
        result = [v0 view];
        if (result)
        {
          v16 = result;
          result = [v0 view];
          if (result)
          {
            v17 = result;
            [result layoutMargins];
            v19 = v18;

            result = [v0 view];
            if (result)
            {
              v20 = result;
              [result layoutMargins];
              v22 = v21;

              [v16 setLayoutMargins:{v19, v15, v22, v15}];
              result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleMarqueeView];
              if (result)
              {
                [result setFadeEdgeInsets:{0.0, v15, 0.0, v15}];
                result = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleMarqueeView];
                if (result)
                {
                  return [result setFadeEdgeInsets:{0.0, v15, 0.0, v15}];
                }

                goto LABEL_25;
              }

LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_E4C7C(void *a1)
{
  v2 = v1;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  v5 = v4;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v4 || (sub_2B860(0, &qword_1C0D68, UITraitCollection_ptr), v6 = a1, v7 = sub_144FFC(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    sub_E3E60();
  }
}

void sub_E4F08()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse;
  v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse];
  v4 = &selRef_metadataObject;
  p_ivar_lyt = &SongCell.ivar_lyt;
  v6 = &OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView;
  if (v3 && (v7 = [v3 tracklist], v9 = sub_AB9C0(v7, v8), v7, v9))
  {
    [v9 duration];
    v10 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl];
    if (!v10)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v11 = v64;
    [v10 setEnabled:1];
    v12 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton];
    if (!v12)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    [v12 setHidden:0];

    v14 = v62;
    v13 = v61;
    v15 = v63;
  }

  else
  {
    v16 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl];
    if (!v16)
    {
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    [v16 setEnabled:0];
    v17 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_sleepButton];
    if (!v17)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    [v17 setHidden:1];
    v13 = 0uLL;
    v11 = 2;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  v61 = v13;
  v62 = v14;
  v63 = v15;
  v64 = v11;
  v18 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_timeControl];
  if (!v18)
  {
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v19 = v18;
  sub_4E180(&v61);

  v20 = *&v1[v2];
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = [v20 tracklist];
  v23 = sub_AB9C0(v21, v22);

  if (v23)
  {
    v24 = [v23 playbackRateCommand];
    if (v24)
    {
      [v24 preferredPlaybackRate];
      swift_unknownObjectRelease();
    }
  }

  v25 = *&v1[v2];
  if (!v25)
  {
    goto LABEL_21;
  }

  v26 = [v25 tracklist];
  v28 = sub_AB9C0(v26, v27);

  if (!v28)
  {
    goto LABEL_22;
  }

  v29 = [v28 metadataObject];

  if (!v29 || (v30 = [v29 flattenedGenericObject], v31 = objc_msgSend(v30, "anyObject"), v29, v30, !v31))
  {
LABEL_21:
    v28 = 0;
    goto LABEL_22;
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (!v28)
  {
  }

LABEL_22:
  v32 = [v28 podcast];
  v33 = v32;
  if (!v32 || ([v32 supportsSubscription] & 1) == 0)
  {
    v37 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton];
    if (!v37)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    [v37 setHidden:1];
    v35 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
    if (!v35)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v36 = 0;
    goto LABEL_30;
  }

  v34 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton];
  if (!v34)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  [v34 setHidden:0];
  v35 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
  if (v35)
  {
    v36 = 1;
LABEL_30:
    [v35 setEnabled:v36];
    v38 = *&v1[v2];
    if (!v38 || (v39 = [v38 tracklist], v41 = sub_AB9C0(v39, v40), v39, !v41) || (v42 = objc_msgSend(v41, "playbackRateCommand"), v41, !v42))
    {
      v46 = 1;
      goto LABEL_37;
    }

    v43 = [v42 supportedPlaybackRates];
    swift_unknownObjectRelease();
    sub_2B860(0, &qword_1C8220, NSNumber_ptr);
    v44 = sub_1449DC();

    if (v44 >> 62)
    {
      goto LABEL_48;
    }

    for (i = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8)); ; i = sub_14531C())
    {

      v46 = i < 2;
LABEL_37:
      v47 = *&v1[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playbackSpeedButton];
      if (!v47)
      {
        break;
      }

      [v47 p:v46 ivar:?lyt[496]];
      v48 = *&v1[v2];
      if (v48)
      {
        v49 = [v48 playerPath];
        v50 = [v49 route];
      }

      else
      {
        v50 = 0;
      }

      v51 = sub_1450AC();

      v52 = *&v1[v6[16]];
      if (!v52)
      {
        goto LABEL_51;
      }

      [v52 v4[111]];
      v53 = objc_opt_self();
      v54 = swift_allocObject();
      *(v54 + 16) = v1;
      v6 = swift_allocObject();
      v6[2] = sub_E8388;
      v6[3] = v54;
      aBlock[4] = sub_7B6EC;
      aBlock[5] = v6;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_D78F4;
      aBlock[3] = &block_descriptor_67;
      p_ivar_lyt = _Block_copy(aBlock);
      v4 = v1;

      [v53 performWithoutEnforcement:p_ivar_lyt];
      _Block_release(p_ivar_lyt);
      LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

      if ((v53 & 1) == 0)
      {
        v55 = *&v1[v2];
        v56 = v55;

        sub_102060(v55, v57);

        v58 = *(v4 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
        if (v58)
        {
          v59 = v58;
          sub_E3504(v59);
        }

        else
        {
        }

        return;
      }

      __break(1u);
LABEL_48:
      ;
    }

    goto LABEL_50;
  }

LABEL_59:
  __break(1u);
}

double sub_E5564(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0, qword_14F0F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (sub_E2DBC())
    {
      v10 = *&v9[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_contextButton];
      if (v10)
      {
        v11 = v10;
        v12 = v9;
        [v11 bounds];
        sub_144F2C();
        sub_140CCC();
        v13 = sub_140D0C();
        (*(*(v13 - 8) + 56))(v6, 0, 1, v13);
        sub_14457C();
        isa = ContextActionsConfiguration.menu(extraContextMenuElements:)(_swiftEmptyArrayStorage).super.super.isa;
        v15 = [(objc_class *)isa children];
        sub_2B860(0, &qword_1C4870, UIMenuElement_ptr);
        v16 = sub_1449DC();

        a1(v16);
      }

      else
      {
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_E5764()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  v1 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel];
  if (!v1)
  {
    __break(1u);
    goto LABEL_27;
  }

  v2 = objc_opt_self();
  v3 = &v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];
  v4 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_controlsMetrics];
  v5 = v1;
  v6 = [v2 systemFontOfSize:v4 weight:UIFontWeightSemibold];
  [v5 setFont:v6];

  v7 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton];
  if (!v7)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = [v7 titleLabel];
  if (v8)
  {
    v9 = v8;
    v10 = [v2 systemFontOfSize:*v3 weight:UIFontWeightRegular];
    [v9 setFont:v10];
  }

  v11 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_routeButton];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v3[1];
  v13 = v11;
  v14 = [v2 systemFontOfSize:v12 weight:UIFontWeightSemibold];
  [v13 setFont:v14];

  v15 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titlesStackView];
  if (!v15)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v15 setSpacing:v3[4]];
  v16 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_secondaryControlsBottomMargin];
  if (!v16)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v16 setConstant:v3[5]];
  v17 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_volumeSliderBottomConstraint];
  if (!v17)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v17 setConstant:v3[6]];
  v18 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButtonWidthConstraint];
  if (!v18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v18 setConstant:v3[2]];
  v19 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButtonWidthConstraint];
  if (!v19)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v19 setConstant:v3[2]];
  v20 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButtonWidthConstraint];
  if (!v20)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v20 setConstant:v3[2]];
  v21 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_leftButton];
  if (!v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v22 = v3[2] + 8.0;
  *&v21[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = v22;
  v23 = *&v21[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v23)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24 = v21;
  [v23 setConstant:v22];
  [v24 invalidateIntrinsicContentSize];

  v25 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_playPauseStopButton];
  if (!v25)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v26 = v3[2] + 8.0;
  *&v25[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = v26;
  v27 = *&v25[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v27)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = v25;
  [v27 setConstant:v26];
  [v28 invalidateIntrinsicContentSize];

  v29 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_rightButton];
  if (!v29)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v30 = v3[2] + 8.0;
  *&v29[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidth] = v30;
  v31 = *&v29[OBJC_IVAR____TtC12NowPlayingUI25NowPlayingTransportButton_highlightIndicatorWidthConstraint];
  if (!v31)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v32 = v29;
  [v31 setConstant:v30];
  [v32 invalidateIntrinsicContentSize];

  v33 = *&v0[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_transportControlsHeightConstraint];
  if (!v33)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v33 setConstant:v3[9]];
  v34 = [v0 view];
  if (!v34)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v35 = v34;
  [v34 setNeedsUpdateConstraints];

  v36 = [v0 view];
  if (!v36)
  {
LABEL_43:
    __break(1u);
    return;
  }

  v37 = v36;
  [v36 setNeedsLayout];
}

void sub_E5BB8(void *a1)
{
  v2 = v1;
  v4 = [a1 title];
  if (v4)
  {
    v5 = v4;
    sub_1448DC();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v22._countAndFlagsBits = 0xE000000000000000;
    v23._countAndFlagsBits = 0x5F4E574F4E4B4E55;
    v23._object = 0xED0000454C544954;
    v24.value._countAndFlagsBits = 0;
    v24.value._object = 0;
    v6.super.isa = v5;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_1409DC(v23, v24, v6, v25, 0, v22);
  }

  v7 = objc_allocWithZone(NSMutableAttributedString);
  v8 = sub_14489C();

  v9 = [v7 initWithString:v8];

  v10 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (!v10)
  {
    __break(1u);
    goto LABEL_16;
  }

  [v10 setAttributedText:v9];
  v11 = [a1 podcast];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 author];

    if (v13)
    {
      v14 = [v13 name];

      if (v14)
      {
        sub_1448DC();

        v15 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel);
        if (!v15)
        {
LABEL_17:
          __break(1u);
          return;
        }

        sub_9CCC();
        v16 = v15;
        sub_14511C();
        v17 = sub_14489C();

        [v16 setText:v17];
      }
    }
  }

  v18 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
  if (!v18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v19 = v18;
  sub_144E1C();
  if (v20)
  {
    v21 = sub_14489C();
  }

  else
  {
    v21 = 0;
  }

  [v19 setTitle:v21 forState:0];

  sub_E5E5C(a1);
}

void sub_E5E5C(void *a1)
{
  v2 = v1;
  v3 = [a1 podcast];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = sub_144C0C();
  v7 = v6;

  if (v7)
  {
    goto LABEL_5;
  }

  if (v5 < 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

  v8 = sub_144C0C();
  if (v9)
  {
LABEL_5:
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 0;
    sub_DD99C();
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider) = 0;

    v10 = (v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView);
    *v10 = 0;
    v10[1] = 0;

LABEL_16:

    return;
  }

  if (v8 < 0)
  {
    goto LABEL_21;
  }

  v11 = sub_14538C();
  v13 = v11;
  v14 = v12;
  v15 = (v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView);
  v16 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_adamIdForUpsellBannerView + 8);
  if (v16)
  {
    v17 = v11 == *v15 && v16 == v12;
    if (v17 || (sub_1453BC()) && *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider))
    {
      goto LABEL_16;
    }
  }

  *v15 = v13;
  v15[1] = v14;

  sub_1423AC();
  swift_allocObject();

  v18 = sub_14239C();
  v19 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider;
  *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_episodeUpsellBannerProvider) = v18;

  if (*(v2 + v19))
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_14237C();
  }
}

void sub_E60D8(void *a1)
{
  v2 = v1;
  v4 = [a1 title];
  if (v4)
  {
    v5 = v4;
    sub_1448DC();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v32._countAndFlagsBits = 0xE000000000000000;
    v33._countAndFlagsBits = 0x5F4E574F4E4B4E55;
    v33._object = 0xED0000454C544954;
    v34.value._countAndFlagsBits = 0;
    v34.value._object = 0;
    v6.super.isa = v5;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    sub_1409DC(v33, v34, v6, v35, 0, v32);
  }

  v7 = objc_allocWithZone(NSMutableAttributedString);
  v8 = sub_14489C();

  v9 = [v7 initWithString:v8];

  if ([a1 isExplicitSong])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5358, &unk_1536B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_14A710;
    *(inited + 32) = NSForegroundColorAttributeName;
    sub_14114C();
    v11 = NSForegroundColorAttributeName;
    v12 = sub_14106C();
    *(inited + 64) = sub_2B860(0, &unk_1C8170, UIColor_ptr);
    *(inited + 40) = v12;
    sub_13A814(inited);
    swift_setDeallocating();
    sub_15340(inited + 32, &unk_1C8200, &unk_150440);
    v13 = objc_allocWithZone(NSAttributedString);
    v14 = sub_14489C();
    type metadata accessor for Key(0);
    sub_E7C58(&qword_1C0430, type metadata accessor for Key, &unk_14A22C);
    isa = sub_1447EC().super.isa;

    v16 = [v13 initWithString:v14 attributes:isa];

    [v9 appendAttributedString:v16];
  }

  v17 = [a1 album];
  if (!v17 || (v18 = v17, v19 = [v17 title], v18, !v19))
  {
    if (!_swiftEmptyArrayStorage[2])
    {
      goto LABEL_14;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81E8, &qword_1536A8);
    sub_1D4A4(&unk_1C81F0, &qword_1C81E8, &qword_1536A8, &protocol conformance descriptor for [A]);
    sub_14483C();

    goto LABEL_14;
  }

  v20 = sub_1448DC();
  v22 = v21;

  v23 = sub_134FDC(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_134FDC((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[16 * v25];
  *(v26 + 4) = v20;
  *(v26 + 5) = v22;
  if (*(v23 + 2))
  {
    goto LABEL_13;
  }

LABEL_14:
  v27 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_titleLabel);
  if (v27)
  {
    [v27 setAttributedText:v9];
    v28 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_subtitleButton);
    if (v28)
    {
      v29 = v28;

      v30 = sub_14489C();

      [v29 setTitle:v30 forState:0];

      v31 = [a1 artworkCatalog];
      sub_E6578(v31);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_E6578(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView);
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI21NowPlayingContentView_artworkComponent);
    v5 = *(v3 + 80);
    *(v3 + 80) = a1;
    v4 = a1;

    sub_CD5A8(v5);
  }
}

double sub_E6AC8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_14236C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  sub_1D19C(a1, v5, &qword_1C81D0, &qword_14EBC0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_15340(v5, &qword_1C81D0, &qword_14EBC0);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      *(Strong + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 0;
      sub_DD99C();
    }
  }

  else
  {
    v44 = *(v7 + 32);
    v45 = v7 + 32;
    v44(v12, v5, v6);
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16;
      *(v16 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible) = 1;
      sub_DD99C();
    }

    v18 = swift_allocObject();
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v41 = *(v7 + 16);
    v42 = v7;
    v41(v9, v12, v6);
    v20 = v6;
    v21 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    v43 = v22;
    v44((v22 + v21), v9, v20);
    v23 = swift_allocObject();
    v24 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    v41(v9, v12, v20);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    v44((v25 + v21), v9, v20);
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v27 = v26;
      v28 = *(v26 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);

      sub_1422FC();
      v29 = sub_14228C();
      v40 = v12;
      v30 = v29;
      v32 = v31;
      sub_1422CC();
      v45 = v33;
      v34 = sub_1422DC();
      if (v32)
      {
        v46 = v30;
        v47 = v32;
        sub_78BDC();
        sub_144B8C();
      }

      v35 = v42;
      sub_140DDC();
      [*&v28[qword_1C45B8] setImage:v34];

      (*(v35 + 8))(v40, v20);
      v36 = &v28[qword_1C45C0];
      v37 = *&v28[qword_1C45C0];
      v38 = *&v28[qword_1C45C0 + 8];
      *v36 = 0;
      *(v36 + 1) = 0;
      sub_2173C(v37, v38);
    }

    else
    {

      (*(v42 + 8))(v12, v20);
    }
  }

  return result;
}

void sub_E6FE8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_1422EC();
    if (v3)
    {
      v4 = v3;
      if (sub_1422BC())
      {
        v5 = type metadata accessor for NowPlayingControlsViewController();
        v10 = v5;
        v9[0] = v2;

        v6 = v2;
        sub_E7528(v4, v9, 0);

        sub_15340(v9, &qword_1C2F30, &unk_14D1A0);
        v10 = v5;
        v9[0] = v6;
        v7 = v6;

        sub_E7528(v8, v9, 0);

        sub_15340(v9, &qword_1C2F30, &unk_14D1A0);
        v7[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible] = 0;
        sub_DD99C();
      }
    }
  }
}

void sub_E7138(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_14229C();
    if (v3)
    {
      v4 = v3;
      v6[3] = type metadata accessor for NowPlayingControlsViewController();
      v6[0] = v2;
      v5 = v2;
      sub_E7528(v4, v6, 0);

      sub_15340(v6, &qword_1C2F30, &unk_14D1A0);
      v5[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerViewVisible] = 0;
      sub_DD99C();
    }
  }
}

void sub_E71FC(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView;
    v6 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_upsellBannerView);
    if (a2)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 0.0;
    }

    [v6 setAlpha:v7];
    [*&v4[v5] setUserInteractionEnabled:a2 & 1];
    v8 = *&v4[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_releaseDateLabel];
    if (v8)
    {
      if (a2)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      [v8 setAlpha:v9];
      v10 = [v4 view];
      if (v10)
      {
        v11 = v10;
        [v10 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}