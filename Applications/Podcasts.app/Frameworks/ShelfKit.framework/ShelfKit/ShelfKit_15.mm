uint64_t sub_1966C0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      sub_7A6C8(v4, v5);

      v4(v6);
      sub_16AC0(v4, v5);
    }

    else
    {
    }
  }

  type metadata accessor for PodcastDetail(0);
  return sub_3E9E04();
}

uint64_t sub_1967A4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  sub_1960A4(a1, a2, a3, a4);
  v5 = type metadata accessor for ModernShelf(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a4, 0, 1, v5);
}

uint64_t sub_196814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ModernShelf(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19C8E8(a1, v8, type metadata accessor for ModernShelf);
  sub_19C76C(v8, a2, type metadata accessor for ModernShelf);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

uint64_t sub_196924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6768, &qword_40AAF8);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = &v20 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6770, &qword_40AB00);
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v21 = &v20 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6778, &qword_40AB08);
  v10 = *(v9 - 8);
  v26 = v9;
  v27 = v10;
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v29 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6350, &unk_40A770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330, &qword_40AAF0);
  sub_886BC(&qword_4F6358, &qword_4F6350, &unk_40A770, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_886BC(&qword_4F6340, &qword_4F6330, &qword_40AAF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_3EA054();

  v29 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0, &qword_40A670);
  sub_886BC(&qword_4F6780, &qword_4F6768, &qword_40AAF8, &protocol conformance descriptor for Publishers.Catch<A, B>);
  sub_886BC(&qword_4F61F0, &qword_4F61E0, &qword_40A670, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v21;
  v14 = v23;
  sub_3E9FE4();
  (*(v24 + 8))(v7, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = sub_19A170;
  *(v15 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70, &unk_3FF0C0);
  sub_886BC(&qword_4F6788, &qword_4F6770, &qword_40AB00, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v16 = v25;
  sub_3EA024();

  (*(v28 + 8))(v13, v16);
  sub_886BC(&qword_4F6790, &qword_4F6778, &qword_40AB08, &protocol conformance descriptor for Publishers.Map<A, B>);
  v17 = v26;
  v18 = sub_3E9F94();
  (*(v27 + 8))(v12, v17);
  return v18;
}

uint64_t sub_196DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a3;
  v52 = a1;
  v51 = a4;
  v47 = sub_3EC544();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v44 - v7;
  v50 = sub_3EC164();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_3ECCF4();
  v10 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v44 - v13;
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = sub_3E8034();
  v19 = v17;
  v20 = v18;
  if (v16)
  {
    v21 = sub_3E7B24();
    v23 = v22;
    v55 = v19;
    v56 = v20;
    v70._countAndFlagsBits = 95;
    v70._object = 0xE100000000000000;
    sub_3ED3D4(v70);
    v24._countAndFlagsBits = v21;
    v24._object = v23;
  }

  else
  {
    v55 = v17;
    v56 = v18;
    v71._countAndFlagsBits = 95;
    v71._object = 0xE100000000000000;
    sub_3ED3D4(v71);
    *&v62 = v15;
    sub_C2A70();
    v24._countAndFlagsBits = sub_3EE7A4();
  }

  sub_3ED3D4(v24);

  sub_3ECCE4();
  (*(v10 + 16))(v53, v14, v54);
  v25 = sub_3E8034();
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66A8, &unk_40CDE0);
  inited = swift_initStackObject();
  v29 = inited;
  *(inited + 16) = xmmword_3F5630;
  *(inited + 32) = 0x656C746974;
  v30 = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  if (*(a2 + 56))
  {
    v31 = *(a2 + 48);
    v32 = *(a2 + 56);
  }

  else
  {
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  *(inited + 48) = v31;
  *(inited + 56) = v32;

  v33 = sub_615E0(v29);
  swift_setDeallocating();
  sub_FCF8(v30, &qword_4F66B0, &unk_40AA80);
  swift_getObjectType();
  v34 = HighlightsProviderProtocol.isSharedContent(_:)(v15, v16);
  if (v16)
  {
    v35 = 0;
    v36 = 0;
  }

  else
  {
    v55 = v15;
    sub_17A28();
    v35 = sub_3EE1F4();
  }

  v55 = v35;
  v56 = v36;
  v57 = v25;
  v58 = v27;
  v59 = v33;
  v60 = v34 & 1;
  v61 = 0;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70, &unk_407420);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  v37 = v46;
  v38 = v47;
  (*(v46 + 16))(v45, v8, v47);
  v39 = v48;
  sub_3EC0C4();
  v69 = v62;
  sub_FCF8(&v69, &unk_4F8A10, &unk_3F6750);
  v68 = v63;
  sub_FCF8(&v68, &qword_4E94E0, &unk_3F5640);
  v67 = v64;
  sub_FCF8(&v67, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v65, v66);
  (*(v37 + 8))(v8, v38);

  v40 = v54;
  (*(v10 + 8))(v14, v54);
  v41 = v51;
  (*(v10 + 32))(v51, v53, v40);
  v42 = type metadata accessor for ModernPage(0);
  (*(v49 + 32))(v41 + *(v42 + 20), v39, v50);
  *(v41 + *(v42 + 24)) = v52;
}

uint64_t sub_197488@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v80 = a8;
  v86 = a6;
  v87 = a7;
  v83 = a4;
  v84 = a5;
  v82 = a3;
  v12 = type metadata accessor for ErrorModel(0);
  __chkstk_darwin(v12 - 8);
  v79 = (v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978, &unk_40B230);
  __chkstk_darwin(v85);
  v78 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v76 - v16;
  v18 = type metadata accessor for ModernPage(0);
  __chkstk_darwin(v18 - 8);
  v88 = v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v20 - 8);
  v81 = v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v76 - v23;
  v25 = type metadata accessor for ModernShelf(0);
  __chkstk_darwin(v25);
  v77 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = (v76 - v28);
  v30 = *a1;
  v32 = v31;
  sub_FBD0(a2, v24, &unk_503DA0, &unk_3FF1B0);
  v33 = *(v32 + 48);
  if (v33(v24, 1, v25) == 1)
  {
    sub_FCF8(v24, &unk_503DA0, &unk_3FF1B0);
    *a9 = 0;
    type metadata accessor for PageContent(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_19C76C(v24, v29, type metadata accessor for ModernShelf);
  v34 = (v30 >> 57) & 0x78 | v30 & 7;
  if (v34 == 31)
  {
    v89 = 1;
    v79 = v29;
    sub_19C8E8(v29, v17, type metadata accessor for ModernShelf);
    v76[0] = *(v32 + 56);
    v76[1] = v32 + 56;
    (v76[0])(v17, 0, 2, v25);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70, &unk_3FF0C0);
    sub_3E9504();
    v43 = v90;
    v44 = sub_E02FC(0, 1, 1, _swiftEmptyArrayStorage);
    v46 = v44[2];
    v45 = v44[3];
    if (v46 >= v45 >> 1)
    {
      v44 = sub_E02FC((v45 > 1), v46 + 1, 1, v44);
    }

    sub_FCF8(v17, &qword_4F5978, &unk_40B230);
    v44[2] = v46 + 1;
    v44[v46 + 4] = v43;
    v47 = v81;
    sub_FBD0(v82, v81, &unk_503DA0, &unk_3FF1B0);
    if (v33(v47, 1, v25) == 1)
    {
      sub_FCF8(v47, &unk_503DA0, &unk_3FF1B0);
      v29 = v79;
    }

    else
    {
      v53 = v77;
      sub_19C76C(v47, v77, type metadata accessor for ModernShelf);
      v54 = v78;
      sub_19C8E8(v53, v78, type metadata accessor for ModernShelf);
      (v76[0])(v54, 0, 2, v25);
      sub_3E9504();
      v55 = v90;
      v57 = v44[2];
      v56 = v44[3];
      v29 = v79;
      if (v57 >= v56 >> 1)
      {
        v44 = sub_E02FC((v56 > 1), v57 + 1, 1, v44);
      }

      sub_FCF8(v54, &qword_4F5978, &unk_40B230);
      sub_19C950(v53, type metadata accessor for ModernShelf);
      v44[2] = v57 + 1;
      v44[v57 + 4] = v55;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6450, &qword_40A890);
    sub_3E9504();
    v58 = v90;
    v60 = v44[2];
    v59 = v44[3];
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v44 = sub_E02FC((v59 > 1), v60 + 1, 1, v44);
    }

    v44[2] = v61;
    v44[v60 + 4] = v58;
    v62 = v84;
    sub_192B2C(v84);
    v63 = v44[3];
    v64 = v60 + 2;
    if (v64 > (v63 >> 1))
    {
      v44 = sub_E02FC((v63 > 1), v64, 1, v44);
    }

    v44[2] = v64;
    v44[v61 + 4] = v62;
    LOBYTE(v90) = v89;
    v91 = _swiftEmptyArrayStorage;
    v92 = v44;
    ModernShelfListBuilder.buildList()();
    v66 = v65;

    v67 = v88;
    sub_196DAC(v66, v86, v87, v88);

    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668, &unk_40A6A0) + 48);
    sub_19C8E8(v67, a9, type metadata accessor for ModernPage);
    v41 = sub_3E66E4();
    v42 = v67;
    goto LABEL_22;
  }

  if (v34 == 95 || v34 == 63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8, &unk_3FF1C0);
    v35 = *(v32 + 72);
    v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_3F5310;
    v38 = v37 + v36;
    sub_19C8E8(v29, v38, type metadata accessor for ModernShelf);
    static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, (v38 + v35));
    v39 = v88;
    sub_196DAC(v37, v86, v87, v88);

    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668, &unk_40A6A0) + 48);
    sub_19C8E8(v39, a9, type metadata accessor for ModernPage);
    v41 = sub_3E66E4();
    v42 = v39;
LABEL_22:
    sub_19C950(v42, type metadata accessor for ModernPage);
    sub_19C950(v29, type metadata accessor for ModernShelf);
    a9[v40] = v41;
LABEL_25:
    type metadata accessor for PageContent(0);
    return swift_storeEnumTagMultiPayload();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v52 = FindOrCreateEpisodeOfferContentIDsIntentsIntentImplementation.init();
    v51 = 0;
    goto LABEL_24;
  }

  v49 = *(Strong + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_localShowPageFeedUpdater);

  if (v49)
  {
    v51 = swift_allocObject();
    *(v51 + 16) = sub_199510;
    *(v51 + 24) = v49;
    v52 = sub_19CBC4;
LABEL_24:
    v68 = swift_allocObject();
    *(v68 + 16) = v52;
    *(v68 + 24) = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8, &unk_3FF1C0);
    v69 = *(v32 + 72);
    v70 = (*(v32 + 80) + 32) & ~*(v32 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_3F5310;
    v72 = v71 + v70;
    sub_19C8E8(v29, v72, type metadata accessor for ModernShelf);
    v73 = v79;
    static ErrorModel.offline(_:)(sub_19CBC0, v68, v79);
    static ModernShelf.errorShelf(id:_:)(0x685320726F727245, 0xEB00000000666C65, v73, (v72 + v69));
    sub_19C950(v73, type metadata accessor for ErrorModel);
    v74 = v88;
    sub_196DAC(v71, v86, v87, v88);

    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668, &unk_40A6A0) + 48);
    sub_19C8E8(v74, a9, type metadata accessor for ModernPage);
    LOBYTE(v71) = sub_3E66E4();

    sub_19C950(v74, type metadata accessor for ModernPage);
    sub_19C950(v29, type metadata accessor for ModernShelf);
    a9[v75] = v71;
    goto LABEL_25;
  }

  __break(1u);
  return result;
}

uint64_t sub_197F18(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit24LocalShowPageFeedUpdater_internalStatusSubscription))
  {

    sub_3E9CA4();
  }

  return sub_26C78C();
}

uint64_t sub_197F64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_3E9D44();
  }

  return result;
}

uint64_t sub_197FE8@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  if (*a1)
  {
    v10 = 0;
  }

  else
  {
    v11 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_displayType;
    swift_beginAccess();
    if (*(a2 + v11))
    {
      v13 = sub_3EE804();

      v10 = v13 ^ 1;
    }

    else
    {

      v10 = 0;
    }
  }

  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  (*(v15 + 144))(a4, a5 & 1, v10 & 1, v14, v15);
  v16 = sub_3ECD54();

  *a6 = v16;
  return result;
}

uint64_t sub_198128@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(*result + 16);
  if (!v3 || (v4 = OBJC_IVAR____TtC8ShelfKit5Shelf_items, result = swift_beginAccess(), v5 = *(v3 + v4), !*(v5 + 16)) || (sub_1F958(v5 + 32, v6), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9B70, &qword_40A380), type metadata accessor for ShowHeader(0), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

void sub_1981DC()
{
  v0 = [objc_opt_self() sharedApplication];
  sub_3E5D14(v1);
  v3 = v2;
  sub_628C4(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_19CAA4(&qword_4E9130, type metadata accessor for OpenExternalURLOptionsKey, "yp\v");
  isa = sub_3ED084().super.isa;

  [v0 openURL:v3 options:isa completionHandler:0];
}

uint64_t sub_1982E8@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A8, &unk_40AB20);
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v7 = &v23 - v6;
  v8 = sub_3E9A04();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3E9934();
  swift_errorRetain();
  v12 = sub_3E99F4();
  v13 = sub_3ED9D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v23 = v5;
    v17 = a2;
    v18 = v16;
    *v15 = 138412290;
    v19 = sub_3E5B74();
    *(v15 + 4) = v19;
    *v18 = v19;
    _os_log_impl(&dword_0, v12, v13, "LibraryShowPresenter: failed to load store footer: %@", v15, 0xCu);
    sub_FCF8(v18, &unk_502160, &qword_3FD240);
    a2 = v17;
    v5 = v23;

    a3 = v24;
  }

  (*(v9 + 8))(v11, v8);
  v26 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6708, &qword_40AAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70, &unk_3FF0C0);
  sub_886BC(&qword_4F6710, &qword_4F6708, &qword_40AAD0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_3EA024();
  sub_886BC(&qword_4F67B0, &qword_4F67A8, &unk_40AB20, &protocol conformance descriptor for Publishers.Map<A, B>);
  v20 = v25;
  v21 = sub_3E9F94();
  result = (*(v5 + 8))(v7, v20);
  *a3 = v21;
  return result;
}

uint64_t sub_198630()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t sub_1986D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v18 - v15;
  sub_FBD0(a1, &v18 - v15, a5, a6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_FBD0(v16, v13, a5, a6);

  sub_3E9EB4();
  return sub_FCF8(v16, a5, a6);
}

uint64_t sub_198830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v63 = a3;
  v61 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6478, &qword_40A938);
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin(v3);
  v58 = &v43 - v4;
  v57 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v57);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64B8, &qword_40A950);
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v53 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F64A8, &qword_40A948);
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin(v8);
  v50 = &v43 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6450, &qword_40A890);
  __chkstk_darwin(v49);
  v48 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v47 = &v43 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6448, &qword_40A888);
  v13 = *(v64 - 8);
  __chkstk_darwin(v64);
  v15 = &v43 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v44);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v43 - v19;
  v45 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__headerShelf;
  v21 = type metadata accessor for ModernShelf(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 1, 1, v21);
  sub_FBD0(v20, v17, &unk_503DA0, &unk_3FF1B0);
  sub_3E9E64();
  sub_FCF8(v20, &unk_503DA0, &unk_3FF1B0);
  v23 = *(v13 + 32);
  v24 = v46;
  v23(v46 + v45, v15, v64);
  v25 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__highlightShelf;
  v22(v20, 1, 1, v21);
  sub_FBD0(v20, v17, &unk_503DA0, &unk_3FF1B0);
  sub_3E9E64();
  sub_FCF8(v20, &unk_503DA0, &unk_3FF1B0);
  v23(v24 + v25, v15, v64);
  v26 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__episodeShelfResult;
  v27 = type metadata accessor for ShowEpisodesShelvesProvider.Result(0);
  v28 = v47;
  (*(*(v27 - 8) + 56))(v47, 1, 2, v27);
  sub_FBD0(v28, v48, &qword_4F6450, &qword_40A890);
  v29 = v50;
  sub_3E9E64();
  sub_FCF8(v28, &qword_4F6450, &qword_40A890);
  v30 = v24;
  (*(v51 + 32))(v24 + v26, v29, v52);
  v31 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__footerShelves;
  *&v65[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F14E8, &qword_40A9A0);
  v32 = v53;
  sub_3E9E64();
  (*(v54 + 32))(v30 + v31, v32, v55);
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_subscriptions) = _swiftEmptyArrayStorage;
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_localShowPageFeedUpdater) = 0;
  v33 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_pageContent;
  *v56 = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830, &unk_40A060);
  swift_allocObject();
  *(v30 + v33) = sub_3E9D94();
  v34 = OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider__showDetail;
  *&v65[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6538, &qword_40AA08);
  v35 = v58;
  sub_3E9E64();
  (*(v59 + 32))(v30 + v34, v35, v60);
  v36 = (v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showDetailFetchFailedCallback);
  *v36 = 0;
  v36[1] = 0;
  v37 = v62;
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_graph) = v61;
  v38 = (v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showUUID);
  v39 = v63;
  *v38 = v37;
  v38[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30, &unk_40CF80);
  sub_3EC444();

  sub_3ECD14();
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_highlightsProvider) = v65[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0, &qword_3FF070);
  sub_3ECD14();
  *(v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_libraryDataProvider) = v65[0];
  sub_19CAEC();
  sub_3ECD04();
  v40 = v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_showEpisodesShelvesProvider;
  v41 = v65[1];
  *v40 = v65[0];
  *(v40 + 16) = v41;
  *(v40 + 32) = v65[2];
  *(v40 + 48) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28, &unk_40A810);
  sub_3ECD14();
  sub_1D4F0(v65, v30 + OBJC_IVAR____TtC8ShelfKit19LibraryShowProvider_storeDataProvider);
  return v30;
}

uint64_t type metadata accessor for LibraryShowProvider(uint64_t a1)
{
  result = qword_4F6508;
  if (!qword_4F6508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_199158(uint64_t a1)
{
  sub_199374(319, &qword_4F6518, &unk_503DA0, &unk_3FF1B0);
  if (v1 <= 0x3F)
  {
    sub_199374(319, &qword_4F6520, &qword_4F6450, &qword_40A890);
    if (v2 <= 0x3F)
    {
      sub_199374(319, &qword_4F6528, &qword_4F14E8, &qword_40A9A0);
      if (v3 <= 0x3F)
      {
        sub_199374(319, &qword_4F6530, &unk_4F6538, &qword_40AA08);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_199374(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_3E9EC4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1993C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_199408()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_199440()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_199494(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F66A0, &unk_40AA70);
  return v3(a1, a1 + v4[12], a1 + v4[16], a1 + v4[20], *(a1 + v4[24]));
}

uint64_t sub_199520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a4;
  v50 = a3;
  v49 = a2;
  v59 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67B8, &qword_40AB30);
  v65 = *(v6 - 1);
  v66 = v6;
  __chkstk_darwin(v6);
  v8 = &v47 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67C0, &qword_40AB38);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67C8, &qword_40AB40);
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v58 = &v47 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67D0, &qword_40AB48);
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v57 = &v47 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67D8, &qword_40AB50);
  v55 = *(v15 - 8);
  v56 = v15;
  __chkstk_darwin(v15);
  v54 = &v47 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67E0, &qword_40AB58);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67E8, &qword_40AB60);
  v47 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v47 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67F0, &qword_40AB68);
  v48 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v47 - v22;
  if (*(a5 + 24) & 1) != 0 || (v24 = *(a5 + 16), (sub_3E94A4()))
  {
    sub_19C9B0();
    *&v67[0] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6800, &qword_40AB70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9DE8, &unk_3F5ED0);
    sub_3E9DD4();
    sub_886BC(&qword_4F6808, &qword_4F67C0, &qword_40AB38, &protocol conformance descriptor for Fail<A, B>);
    v25 = sub_3E9F94();
    (*(v10 + 8))(v12, v9);
    *&v67[0] = swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70, &unk_3FF0C0);
    sub_3E9DD4();
    sub_886BC(&qword_4F6810, &qword_4F67B8, &qword_40AB30, &protocol conformance descriptor for Fail<A, B>);
    v26 = v66;
    sub_3E9F94();
    v65[1](v8, v26);
  }

  else
  {
    v27 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
    swift_beginAccess();
    v28 = *(a5 + v27);
    if (v28)
    {
      v29 = *(v28 + 16);
    }

    else
    {
      v29 = 0;
    }

    v30 = v28 == 0;
    ObjectType = swift_getObjectType();
    v68 = (*(v50 + 232))(v29, v30, ObjectType);
    sub_1F958(v64, v67);
    v32 = swift_allocObject();
    *(v32 + 16) = a5;
    sub_1D4F0(v67, v32 + 24);
    *(v32 + 64) = v24;
    *(v32 + 72) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5DC0, &qword_40A3D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6818, &qword_40AB78);
    v65 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_886BC(&qword_4F5DC8, &qword_4F5DC0, &qword_40A3D0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_3EA024();

    sub_886BC(&qword_4F6820, &qword_4F67E8, &qword_40AB60, &protocol conformance descriptor for Publishers.Map<A, B>);
    sub_886BC(&qword_4F6828, &qword_4F6818, &qword_40AB78, &protocol conformance descriptor for Future<A, B>);
    sub_3EA194();
    (*(v47 + 8))(v20, v18);
    v66 = &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>;
    sub_886BC(&qword_4F6830, &qword_4F67F0, &qword_40AB68, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
    v33 = sub_3E9F34();
    (*(v48 + 8))(v23, v21);
    *&v67[0] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6838, &qword_40AB80);
    sub_886BC(&qword_4F6840, &qword_4F6838, &qword_40AB80, &protocol conformance descriptor for AnyPublisher<A, B>);
    v34 = sub_3E9F94();

    *&v67[0] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6800, &qword_40AB70);
    v35 = v51;
    sub_3EA024();
    sub_886BC(&qword_4F6848, &qword_4F67E0, &qword_40AB58, &protocol conformance descriptor for Publishers.Map<A, B>);
    v36 = v53;
    v25 = sub_3E9F94();
    (*(v52 + 8))(v35, v36);
    *&v67[0] = v34;
    swift_getKeyPath();
    v37 = v54;
    sub_3EA014();

    sub_1F958(v64, v67);
    v38 = swift_allocObject();
    sub_1D4F0(v67, v38 + 16);
    *(v38 + 56) = v59;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330, &qword_40AAF0);
    sub_886BC(&qword_4F6850, &qword_4F67D8, &qword_40AB50, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
    v39 = v58;
    v40 = v56;
    sub_3EA024();

    sub_886BC(&qword_4F6858, &qword_4F67C8, &qword_40AB40, &protocol conformance descriptor for Publishers.Map<A, B>);
    v41 = v65;
    sub_886BC(&qword_4F6340, &qword_4F6330, &qword_40AAF0, v65);
    v42 = v57;
    v43 = v63;
    sub_3E9F84();
    (*(v61 + 8))(v39, v43);
    sub_886BC(&qword_4F6860, &qword_4F67D0, &qword_40AB48, v66);
    v44 = v62;
    v45 = sub_3E9F94();
    (*(v60 + 8))(v42, v44);
    (*(v55 + 8))(v37, v40);
    *&v67[0] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6350, &unk_40A770);
    sub_886BC(&qword_4F6358, &qword_4F6350, &unk_40A770, v41);
    sub_3E9F94();
  }

  return v25;
}

uint64_t sub_19A0F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_19A174@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_19A1AC(void *a1, double a2)
{
  v202 = type metadata accessor for Header(0);
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v4 = &v182 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v5 - 8);
  v210 = &v182 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0, &unk_3FEAA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v182 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8, &unk_3FF1D0);
  __chkstk_darwin(v10 - 8);
  v209 = &v182 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0, &qword_3FEAB0);
  __chkstk_darwin(v12 - 8);
  v198 = &v182 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v14 - 8);
  v199 = &v182 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v207 = &v182 - v17;
  v18 = sub_3E5DC4();
  v213 = *(v18 - 8);
  v214 = v18;
  __chkstk_darwin(v18);
  v187 = &v182 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = v19;
  __chkstk_darwin(v20);
  v203 = &v182 - v21;
  v212 = type metadata accessor for Information(0);
  v204 = *(v212 - 8);
  __chkstk_darwin(v212);
  v188 = &v182 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v182 - v24;
  __chkstk_darwin(v26);
  v28 = &v182 - v27;
  __chkstk_darwin(v29);
  v31 = &v182 - v30;
  __chkstk_darwin(v32);
  v34 = &v182 - v33;
  v193 = sub_3E5FC4();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v191 = &v182 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v36 - 8);
  v196 = &v182 - v37;
  v190 = sub_3EC1F4();
  v189 = *(v190 - 8);
  __chkstk_darwin(v190);
  v195 = &v182 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v194 = &v182 - v40;
  v41 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v41);
  v43 = (&v182 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = OBJC_IVAR____TtC8ShelfKit13PodcastDetail_channel;
  swift_beginAccess();
  v208 = a1;
  v45 = *(a1 + v44);
  v200 = v4;
  v211 = v9;
  if (v45 && v45[4])
  {
    v46 = *(v45 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_availableShowCount);
    if (v46 < 1)
    {
      v46 = *(v45 + OBJC_IVAR____TtC8ShelfKit13ChannelDetail_showCount);
    }

    v47 = v45[4];
    v48 = v45[3];
    if (v46 <= 1)
    {
      strcpy(&v216, "channelTitle.");
      HIWORD(v216) = -4864;

      v223._countAndFlagsBits = v48;
      v223._object = v47;
      sub_3ED3D4(v223);
      v89 = v216;
      v90 = [objc_opt_self() mainBundle];
      v180._countAndFlagsBits = 0xE000000000000000;
      v224._countAndFlagsBits = 0x5F4C454E4E414843;
      v224._object = 0xED0000454C544954;
      v231.value._countAndFlagsBits = 0;
      v231.value._object = 0;
      v91.super.isa = v90;
      v237._countAndFlagsBits = 0;
      v237._object = 0xE000000000000000;
      v92 = sub_3E5A74(v224, v231, v91, v237, 0, v180);
      v93 = v48;
      v95 = v94;

      v218 = 0;
      v216 = 0u;
      v217 = 0u;
      v96 = *(v212 + 40);
      v97 = sub_3EC634();
      (*(*(v97 - 8) + 56))(&v31[v96], 1, 1, v97);
      *v31 = v89;
      *(v31 + 2) = v92;
      *(v31 + 3) = v95;
      *(v31 + 4) = 0;
      *(v31 + 5) = 0;
      *(v31 + 6) = v93;
      *(v31 + 7) = v47;
      sub_FBD0(&v216, (v31 + 64), &qword_4EDE00, &qword_3F9910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0, &qword_40AB18);
      v98 = swift_allocObject();
      *(v98 + 20) = 0;
      sub_FCF8(&v216, &qword_4EDE00, &qword_3F9910);
      *(v98 + 16) = 0;
      *(v31 + 13) = v98;
      v69 = sub_E0590(0, 1, 1, _swiftEmptyArrayStorage);
      v71 = v69[2];
      v99 = v69[3];
      v72 = v71 + 1;
      if (v71 >= v99 >> 1)
      {
        v69 = sub_E0590((v99 > 1), v71 + 1, 1, v69);
      }

      v73 = v207;

      v34 = v31;
      v74 = v208;
    }

    else
    {
      *v43 = v45;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      v184 = v47;

      v49 = v194;
      _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
      v206 = type metadata accessor for FlowAction(0);
      v50 = swift_allocObject();
      v183 = v48;
      v51 = v50;
      sub_19C8E8(v43, v50 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
      type metadata accessor for FlowAction.DestinationType(0);
      swift_storeEnumTagMultiPayload();
      v52 = (v51 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
      *v52 = 0;
      v52[1] = 0;
      *(v51 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
      *(v51 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
      *(v51 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 1;
      v53 = v189;
      v54 = v190;
      (*(v189 + 16))(v195, v49, v190);
      v197 = sub_3EC634();
      v55 = *(v197 - 1);
      v185 = *(v55 + 56);
      v205 = v55 + 56;
      v185(v196, 1, 1, v197);
      v56 = v191;
      sub_3E5FB4();
      v57 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
      v59 = v58;
      (*(v192 + 8))(v56, v193);
      (*(v53 + 8))(v194, v54);
      sub_19C950(v43, type metadata accessor for FlowDestination);
      *(v51 + 16) = v57;
      *(v51 + 24) = v59;
      v60 = v184;
      *(v51 + 32) = v183;
      *(v51 + 40) = v60;
      *(v51 + 48) = 48;
      (*(v53 + 32))(v51 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v195, v54);
      sub_FACC(v196, v51 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
      *&v216 = 0x2E6C656E6E616863;
      *(&v216 + 1) = 0xE800000000000000;
      v215 = v45[2];
      sub_17A28();
      v219._countAndFlagsBits = sub_3EE1F4();
      sub_3ED3D4(v219);

      v61 = *(&v216 + 1);
      v62 = v216;
      v63 = [objc_opt_self() mainBundle];
      v180._countAndFlagsBits = 0xE000000000000000;
      v220._countAndFlagsBits = 0x5F4C454E4E414843;
      v220._object = 0xED0000454C544954;
      v229.value._countAndFlagsBits = 0;
      v229.value._object = 0;
      v64.super.isa = v63;
      v235._countAndFlagsBits = 0;
      v235._object = 0xE000000000000000;
      v65 = sub_3E5A74(v220, v229, v64, v235, 0, v180);
      v67 = v66;

      *(&v217 + 1) = v206;
      v218 = sub_19CAA4(&qword_4F8A40, type metadata accessor for FlowAction, "iJ\v");
      *&v216 = v51;
      v185(&v34[*(v212 + 40)], 1, 1, v197);
      *v34 = v62;
      *(v34 + 1) = v61;
      *(v34 + 2) = v65;
      *(v34 + 3) = v67;
      *(v34 + 2) = 0u;
      *(v34 + 3) = 0u;
      sub_FBD0(&v216, (v34 + 64), &qword_4EDE00, &qword_3F9910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0, &qword_40AB18);
      v68 = swift_allocObject();
      *(v68 + 20) = 0;

      sub_FCF8(&v216, &qword_4EDE00, &qword_3F9910);
      *(v68 + 16) = 0;
      *(v34 + 13) = v68;
      v69 = sub_E0590(0, 1, 1, _swiftEmptyArrayStorage);
      v71 = v69[2];
      v70 = v69[3];
      v72 = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        v69 = sub_E0590((v70 > 1), v71 + 1, 1, v69);
      }

      v73 = v207;
      v74 = v208;
    }
  }

  else
  {
    v74 = v208;
    v75 = v208[12];
    if (!v75)
    {
      goto LABEL_16;
    }

    v76 = v208[11];
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (!v77)
    {
LABEL_16:
      v88 = _swiftEmptyArrayStorage;
      v73 = v207;
      goto LABEL_21;
    }

    *&v216 = 0x2E726F7461657263;
    *(&v216 + 1) = 0xE800000000000000;

    v221._countAndFlagsBits = v76;
    v221._object = v75;
    sub_3ED3D4(v221);
    v78 = v216;
    v79 = [objc_opt_self() mainBundle];
    v180._countAndFlagsBits = 0xE000000000000000;
    v222._countAndFlagsBits = 0x524F5441455243;
    v222._object = 0xE700000000000000;
    v230.value._countAndFlagsBits = 0;
    v230.value._object = 0;
    v80.super.isa = v79;
    v236._countAndFlagsBits = 0;
    v236._object = 0xE000000000000000;
    v81 = sub_3E5A74(v222, v230, v80, v236, 0, v180);
    v83 = v82;

    v218 = 0;
    v216 = 0u;
    v217 = 0u;
    v84 = *(v212 + 40);
    v85 = sub_3EC634();
    (*(*(v85 - 8) + 56))(&v28[v84], 1, 1, v85);
    *v28 = v78;
    *(v28 + 2) = v81;
    *(v28 + 3) = v83;
    *(v28 + 4) = 0;
    *(v28 + 5) = 0;
    *(v28 + 6) = v76;
    *(v28 + 7) = v75;
    sub_FBD0(&v216, (v28 + 64), &qword_4EDE00, &qword_3F9910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0, &qword_40AB18);
    v86 = swift_allocObject();
    *(v86 + 20) = 0;
    sub_FCF8(&v216, &qword_4EDE00, &qword_3F9910);
    *(v86 + 16) = 0;
    *(v28 + 13) = v86;
    v69 = sub_E0590(0, 1, 1, _swiftEmptyArrayStorage);
    v71 = v69[2];
    v87 = v69[3];
    v72 = v71 + 1;
    if (v71 >= v87 >> 1)
    {
      v69 = sub_E0590((v87 > 1), v71 + 1, 1, v69);
    }

    v34 = v28;
    v73 = v207;
    v74 = v208;
  }

  v69[2] = v72;
  sub_19C76C(v34, v69 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v71, type metadata accessor for Information);
  v88 = v69;
LABEL_21:
  v197 = objc_opt_self();
  v100 = [v197 mainBundle];
  v180._countAndFlagsBits = 0xE000000000000000;
  v225._countAndFlagsBits = 0x5345444F53495045;
  v225._object = 0xE800000000000000;
  v232.value._countAndFlagsBits = 0;
  v232.value._object = 0;
  v101.super.isa = v100;
  v238._countAndFlagsBits = 0;
  v238._object = 0xE000000000000000;
  v102 = sub_3E5A74(v225, v232, v101, v238, 0, v180);
  v104 = v103;

  v218 = 0;
  v216 = 0u;
  v217 = 0u;
  v105 = *(v212 + 40);
  v106 = sub_3EC634();
  v107 = *(v106 - 8);
  v206 = *(v107 + 56);
  v207 = v106;
  v205 = v107 + 56;
  v206(&v25[v105], 1, 1);
  *v25 = 0xD00000000000001CLL;
  *(v25 + 1) = 0x80000000004296F0;
  *(v25 + 2) = v102;
  *(v25 + 3) = v104;
  *(v25 + 4) = 0;
  *(v25 + 5) = 0;
  *(v25 + 3) = xmmword_40A830;
  sub_FBD0(&v216, (v25 + 64), &qword_4EDE00, &qword_3F9910);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0, &qword_40AB18);
  v109 = swift_allocObject();
  *(v109 + 20) = 0;
  sub_FCF8(&v216, &qword_4EDE00, &qword_3F9910);
  *(v109 + 16) = 0;
  *(v25 + 13) = v109;
  v110 = v88;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v110 = sub_E0590(0, v88[2] + 1, 1, v88);
  }

  v112 = v110[2];
  v111 = v110[3];
  if (v112 >= v111 >> 1)
  {
    v110 = sub_E0590((v111 > 1), v112 + 1, 1, v110);
  }

  v110[2] = v112 + 1;
  v113 = (*(v204 + 80) + 32) & ~*(v204 + 80);
  v114 = *(v204 + 72);
  sub_19C76C(v25, v110 + v113 + v114 * v112, type metadata accessor for Information);
  sub_FBD0(v74 + OBJC_IVAR____TtC8ShelfKit7Podcast_webpageUrl, v73, &unk_4E9EE0, &unk_3F5BC0);
  v116 = v213;
  v115 = v214;
  v117 = (*(v213 + 48))(v73, 1, v214);
  v208 = v110;
  if (v117 == 1)
  {
    sub_FCF8(v73, &unk_4E9EE0, &unk_3F5BC0);
    v118 = v211;
    v119 = v209;
    v120 = v197;
  }

  else
  {
    v185 = v114;
    v204 = v113;
    v121 = v74;
    v122 = *(v116 + 32);
    v123 = v203;
    v122(v203, v73, v115);
    v124 = *(v121 + 56);
    v184 = *(v121 + 48);
    v183 = v124;
    v125 = v187;
    (*(v116 + 16))(v187, v123, v115);
    v126 = (*(v116 + 80) + 16) & ~*(v116 + 80);
    v127 = swift_allocObject();
    v122((v127 + v126), v125, v115);

    v128 = v194;
    _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
    v186 = type metadata accessor for ClosureAction(0);
    v129 = swift_allocObject();
    v130 = (v129 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
    *v130 = sub_19C888;
    v130[1] = v127;
    v131 = v189;
    v132 = *(v189 + 16);
    v187 = v108;
    v133 = v195;
    v134 = v190;
    v132(v195, v128, v190);
    v135 = v196;
    (v206)(v196, 1, 1, v207);

    v136 = v191;
    sub_3E5FB4();
    v137 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
    v139 = v138;

    (*(v192 + 8))(v136, v193);
    (*(v131 + 8))(v128, v134);
    *(v129 + 16) = v137;
    *(v129 + 24) = v139;
    v140 = v183;
    *(v129 + 32) = v184;
    *(v129 + 40) = v140;
    *(v129 + 48) = 32;
    (*(v131 + 32))(v129 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v133, v134);
    sub_FACC(v135, v129 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
    *&v216 = 0x2E65746973626577;
    *(&v216 + 1) = 0xE800000000000000;
    v226._countAndFlagsBits = sub_3E5CD4();
    sub_3ED3D4(v226);

    v141 = v216;
    v120 = v197;
    v142 = [v197 mainBundle];
    v181._countAndFlagsBits = 0xE000000000000000;
    v227._countAndFlagsBits = 0x4245575F574F4853;
    v227._object = 0xEC00000045544953;
    v233.value._countAndFlagsBits = 0;
    v233.value._object = 0;
    v143.super.isa = v142;
    v239._countAndFlagsBits = 0;
    v239._object = 0xE000000000000000;
    v144 = sub_3E5A74(v227, v233, v143, v239, 0, v181);
    v146 = v145;

    *(&v217 + 1) = v186;
    v218 = sub_19CAA4(&qword_4F13D8, type metadata accessor for ClosureAction, "iJ\v");
    *&v216 = v129;
    v147 = v188;
    (v206)(&v188[*(v212 + 40)], 1, 1, v207);
    *v147 = v141;
    v148 = v208;
    *(v147 + 16) = v144;
    *(v147 + 24) = v146;
    *(v147 + 32) = 0u;
    *(v147 + 48) = 0u;
    sub_FBD0(&v216, v147 + 64, &qword_4EDE00, &qword_3F9910);
    v149 = swift_allocObject();
    *(v149 + 20) = 0;

    sub_FCF8(&v216, &qword_4EDE00, &qword_3F9910);
    *(v149 + 16) = 0;
    *(v147 + 104) = v149;
    v151 = v148[2];
    v150 = v148[3];
    if (v151 >= v150 >> 1)
    {
      v148 = sub_E0590((v150 > 1), v151 + 1, 1, v148);
    }

    v118 = v211;
    v119 = v209;
    v152 = v185;

    (*(v213 + 8))(v203, v214);
    v148[2] = v151 + 1;
    v208 = v148;
    sub_19C76C(v147, v148 + v204 + v151 * v152, type metadata accessor for Information);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8, &unk_3FF1C0);
  v212 = type metadata accessor for ModernShelf(0);
  v203 = ((*(*(v212 - 8) + 80) + 32) & ~*(*(v212 - 8) + 80));
  v204 = swift_allocObject();
  *(v204 + 16) = xmmword_3F5630;
  v153 = [v120 mainBundle];
  v181._countAndFlagsBits = 0xE000000000000000;
  v228._object = 0x8000000000429710;
  v228._countAndFlagsBits = 0xD000000000000011;
  v234.value._countAndFlagsBits = 0;
  v234.value._object = 0;
  v154.super.isa = v153;
  v240._countAndFlagsBits = 0;
  v240._object = 0xE000000000000000;
  v197 = sub_3E5A74(v228, v234, v154, v240, 0, v181);
  v196 = v155;

  v156 = type metadata accessor for ActionMenu(0);
  v195 = *(*(v156 - 8) + 56);
  (v195)(v119, 1, 1, v156);
  v157 = type metadata accessor for Header.PrimaryAction(0);
  v158 = *(*(v157 - 8) + 56);
  v158(v118, 1, 1, v157);
  v159 = sub_3E7784();
  v160 = *(*(v159 - 8) + 56);
  v160(v210, 1, 1, v159);
  v161 = v200;
  v200[32] = 0;
  *v161 = 0u;
  *(v161 + 16) = 0u;
  v162 = v202;
  v194 = *(v202 + 28);
  (v195)(&v194[v161], 1, 1, v156);
  v163 = *(v162 + 32);
  v158((v161 + v163), 1, 1, v157);
  v164 = *(v162 + 36);
  v160(v161 + v164, 1, 1, v159);
  v165 = v197;
  v166 = v196;
  if (sub_3EE0E4())
  {
    *v161 = v165;
    *(v161 + 8) = v166;
    *(v161 + 16) = 0;
    *(v161 + 24) = 0;
    *(v161 + 32) = 0;
    sub_51F9C(v209, &v194[v161], &qword_4F1AB8, &unk_3FF1D0);
    v167 = v211;
    sub_F7C5C(v211, v161 + v163);
    sub_51F9C(v210, v161 + v164, &qword_4F1D50, &unk_3F7520);
    v168 = v198;
    sub_19C8E8(v161, v198, type metadata accessor for Header);
    (*(v201 + 56))(v168, 0, 1, v162);
    sub_FCF8(v167, &qword_4F1AB0, &unk_3FEAA0);
    sub_19C950(v161, type metadata accessor for Header);
  }

  else
  {

    sub_FCF8(v210, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v209, &qword_4F1AB8, &unk_3FF1D0);
    sub_FCF8(v211, &qword_4F1AB0, &unk_3FEAA0);
    sub_19C950(v161, type metadata accessor for Header);
    v168 = v198;
    (*(v201 + 56))(v198, 1, 1, v162);
  }

  v169 = v204;
  v170 = &v203[v204];
  v211 = sub_770EC(v208);

  v171 = v214;
  v172 = *(v213 + 56);
  v173 = v199;
  v172(v199, 1, 1, v214);
  v174 = v212;
  v175 = &v170[*(v212 + 48)];
  *(v175 + 4) = 0;
  *v175 = 0u;
  *(v175 + 1) = 0u;
  (v206)(&v170[v174[13]], 1, 1, v207);
  v176 = v174[9];
  v177 = &v170[v174[8]];
  v172(&v170[v176], 1, 1, v171);
  *v170 = 0x74616D726F666E69;
  *(v170 + 1) = 0xEB000000006E6F69;
  sub_FACC(v168, &v170[v174[5]], &qword_4F1AC0, &qword_3FEAB0);
  v178 = &v170[v174[6]];
  *v178 = 16;
  *(v178 + 3) = 256;
  *(v178 + 2) = 0;
  *(v178 + 1) = 1;
  *&v170[v174[7]] = v211;
  sub_51F9C(v173, &v170[v176], &unk_4E9EE0, &unk_3F5BC0);
  v170[v174[10]] = 1;
  v170[v174[11]] = 0;
  *v177 = 0;
  *(v177 + 1) = 0;
  return v169;
}

uint64_t sub_19BD58(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6798, &qword_40AB10);
  __chkstk_darwin(v3 - 8);
  v5 = &v62 - v4;
  v74 = type metadata accessor for Information(0);
  v6 = *(v74 - 8);
  __chkstk_darwin(v74 - 8);
  v71 = (&v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v10 = (&v62 - v9);
  v83 = type metadata accessor for ModernShelf(0);
  v76 = *(v83 - 8);
  __chkstk_darwin(v83);
  v87 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62D0, &qword_40A718);
  v12 = *(v81 - 8);
  __chkstk_darwin(v81);
  v75 = (&v62 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F62D8, &unk_40A720);
  __chkstk_darwin(v14 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = (&v62 - v18);
  v80 = *(a1 + 16);
  v79 = (v12 + 56);
  v78 = (v12 + 48);
  v20 = (v6 + 56);
  v84 = 0x80000000004296F0;

  v22 = 0;
  v73 = a1;
  v85 = v16;
  v64 = a1;
  v63 = v10;
  while (1)
  {
LABEL_3:
    v23 = v81;
    if (v22 == v80)
    {
      v24 = 1;
      v22 = v80;
    }

    else
    {
      if (v22 >= v80)
      {
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if (__OFADD__(v22, 1))
      {
        goto LABEL_41;
      }

      v25 = a1 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v22;
      v26 = *(v81 + 48);
      v27 = v75;
      *v75 = v22;
      sub_19C8E8(v25, v27 + v26, type metadata accessor for ModernShelf);
      v28 = v27;
      v16 = v85;
      sub_FACC(v28, v85, &qword_4F62D0, &qword_40A718);
      v24 = 0;
      ++v22;
    }

    (*v79)(v16, v24, 1, v23);
    sub_FACC(v16, v19, &qword_4F62D8, &unk_40A720);
    if ((*v78)(v19, 1, v23) == 1)
    {
      return v73;
    }

    v29 = *v19;
    v30 = v87;
    sub_19C76C(v19 + *(v23 + 48), v87, type metadata accessor for ModernShelf);
    if (ModernShelf.ItemKind.rawValue.getter(*(v30 + *(v83 + 24))) == 0x74616D726F666E69 && v31 == 0xEB000000006E6F69)
    {
      break;
    }

    v33 = sub_3EE804();

    if (v33)
    {
      goto LABEL_16;
    }

    result = sub_19C950(v87, type metadata accessor for ModernShelf);
    v16 = v85;
  }

LABEL_16:
  v34 = *(v87 + *(v83 + 28));
  v35 = *(v34 + 16);
  v77 = v34 + 32;
  v82 = v34;

  v36 = 0;
  while (1)
  {
    v37 = v74;
    while (1)
    {
      while (1)
      {
        v38 = v36;
        v39 = 0uLL;
        v36 = v35;
        v40 = 0uLL;
        v41 = 0uLL;
        if (v38 != v35)
        {
          if (v38 >= *(v82 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v36 = v38 + 1;
          *&v88 = v38;
          sub_1F958(v77 + 40 * v38, &v88 + 8);
          v39 = v88;
          v40 = v89;
          v41 = v90;
        }

        v91[0] = v39;
        v91[1] = v40;
        v91[2] = v41;
        if (!v41)
        {
          sub_19C950(v87, type metadata accessor for ModernShelf);

          a1 = v64;
          v16 = v85;
          goto LABEL_3;
        }

        v86 = v39;
        sub_1D4F0((v91 + 8), &v88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7A8, &qword_3FDCD0);
        v42 = swift_dynamicCast();
        v43 = *v20;
        if (v42)
        {
          break;
        }

        v43(v5, 1, 1, v37);
        result = sub_FCF8(v5, &qword_4F6798, &qword_40AB10);
      }

      v43(v5, 0, 1, v37);
      sub_19C76C(v5, v10, type metadata accessor for Information);
      if (*v10 == 0xD00000000000001CLL && v84 == v10[1])
      {
        break;
      }

      if (sub_3EE804())
      {
        break;
      }

      result = sub_19C950(v10, type metadata accessor for Information);
    }

    *&v88 = v72;
    v92._countAndFlagsBits = sub_3EE7A4();
    *&v88 = 0xD00000000000001CLL;
    *(&v88 + 1) = v84;
    sub_3ED3D4(v92);

    v69 = *(&v88 + 1);
    v70 = v88;
    v44 = v10[3];
    v68 = v10[2];
    v67 = v44;
    *&v88 = v72;

    v66 = sub_3EE7A4();
    v65 = v45;
    *&v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v46 = *(v74 + 40);
    v47 = sub_3EC634();
    v48 = v71;
    (*(*(v47 - 8) + 56))(v71 + v46, 1, 1, v47);
    v49 = v69;
    *v48 = v70;
    v48[1] = v49;
    v50 = v67;
    v48[2] = v68;
    v48[3] = v50;
    v48[4] = 0;
    v48[5] = 0;
    v51 = v65;
    v48[6] = v66;
    v48[7] = v51;
    sub_FBD0(&v88, (v48 + 8), &qword_4EDE00, &qword_3F9910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0, &qword_40AB18);
    v52 = swift_allocObject();
    *(v52 + 20) = 0;
    sub_FCF8(&v88, &qword_4EDE00, &qword_3F9910);
    *(v52 + 16) = 0;
    v48[13] = v52;
    *(&v89 + 1) = v74;
    *&v90 = sub_19CAA4(&qword_4EDDE8, type metadata accessor for Information, protocol conformance descriptor for Information);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v88);
    sub_19C8E8(v48, boxed_opaque_existential_0Tm, type metadata accessor for Information);
    v54 = v73;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      result = sub_2A5130(v54);
      v73 = result;
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }
    }

    if (v29 >= *(v73 + 16))
    {
      goto LABEL_43;
    }

    v55 = v73 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v29;
    v56 = *(v83 + 28);
    v57 = *(v55 + v56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v55;
    *(v55 + v56) = v57;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_2A5144(v57);
      *(v70 + v56) = v61;
    }

    sub_19C950(v71, type metadata accessor for Information);
    v10 = v63;
    result = sub_19C950(v63, type metadata accessor for Information);
    if ((v86 & 0x8000000000000000) != 0)
    {
      break;
    }

    v59 = *(v70 + v56);
    if (v86 >= *(v59 + 16))
    {
      goto LABEL_45;
    }

    v60 = v59 + 40 * v86;
    __swift_destroy_boxed_opaque_existential_1Tm((v60 + 32));
    result = sub_1D4F0(&v88, v60 + 32);
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_19C76C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19C7D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  result = sub_19A1AC(*a1, a3);
  *a2 = result;
  return result;
}

uint64_t sub_19C800()
{
  v1 = sub_3E5DC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_19C888()
{
  sub_3E5DC4();

  sub_1981DC();
}

uint64_t sub_19C8E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19C950(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_19C9B0()
{
  result = qword_4F67F8;
  if (!qword_4F67F8)
  {
    result = swift_getWitnessTable(byte_40AC24, &type metadata for LibraryShowProvider.AdamIDError, v0, v1);
    atomic_store(result, &qword_4F67F8);
  }

  return result;
}

uint64_t sub_19CA04()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return _swift_deallocObject(v0, 73, 7);
}

uint64_t sub_19CA58()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_19CAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19CAEC()
{
  result = qword_4F6870;
  if (!qword_4F6870)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShowEpisodesShelvesProvider, &type metadata for ShowEpisodesShelvesProvider, v0, v1);
    atomic_store(result, &qword_4F6870);
  }

  return result;
}

unint64_t sub_19CB54()
{
  result = qword_4F6878;
  if (!qword_4F6878)
  {
    result = swift_getWitnessTable(aE_5, &type metadata for LibraryShowProvider.AdamIDError, v0, v1);
    atomic_store(result, &qword_4F6878);
  }

  return result;
}

uint64_t RecommendationsMetadataProvider.metadata.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6890, &qword_40A6D0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  v10 = *(v0 + 16);
  v5 = qword_4E8A08;

  if (v5 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6290, &unk_40A6F0);
  sub_886BC(&unk_4F68A0, &qword_4F6290, &unk_40A6F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v6 = sub_3E9F44();

  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6298, &qword_40AC70);
  sub_3E8FB4();
  sub_886BC(&unk_4F68B0, &qword_4F6298, &qword_40AC70, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_3E9FA4();

  sub_886BC(&qword_4F62A0, &unk_4F6890, &qword_40A6D0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v7 = sub_3E9F94();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_19CE60()
{
  sub_36174(0, &qword_4F6BF0, OS_os_log_ptr);
  sub_3EE084();
  result = sub_3EE034();
  qword_4F6880 = result;
  return result;
}

uint64_t sub_19CEC0()
{
  sub_3E8E64();
  sub_3E8E44();
  sub_3E8E34();
  sub_3E8E24();
  sub_3E8E14();

  return sub_3E8F84();
}

uint64_t sub_19CF58()
{
  v7 = sub_3EDBB4();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_3EDB54();
  __chkstk_darwin(v3);
  v4 = sub_3EBC14();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  sub_3EBBF4();
  v8 = _swiftEmptyArrayStorage;
  sub_1A0398(&qword_4F1CA8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1CB0, &unk_40AE10);
  sub_886BC(&qword_4F1CB8, &qword_4F1CB0, &unk_40AE10, &protocol conformance descriptor for [A]);
  sub_3EE244();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_3EDBF4();
  qword_4F6888 = result;
  return result;
}

uint64_t sub_19D1CC()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6BC0, &qword_40ADF8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v12 - v4;
  v6 = [sub_3ECA44() doubleForKey:kBagKeyListenNowStoreShelvesThrottleInterval];
  swift_unknownObjectRelease();
  if (qword_4E8A10 != -1)
  {
    swift_once();
  }

  v7 = [v6 asyncValuePromiseOnQueue:qword_4F6888];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6BC8, &qword_40AE00);
  v8 = v7;
  sub_3ECDF4();
  v9 = sub_3ECD24();

  v12[1] = v9;
  *(swift_allocObject() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6BD0, &qword_40AE08);
  sub_886BC(&qword_4F6BD8, &qword_4F6BD0, &qword_40AE08, &protocol conformance descriptor for Future<A, B>);
  sub_3EA024();

  sub_886BC(&unk_4F6BE0, &qword_4F6BC0, &qword_40ADF8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v10 = sub_3E9F94();

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_19D498@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_3E97B4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_3EDC94();
  if (qword_4E8A08 != -1)
  {
    swift_once();
  }

  sub_3E97A4();
  sub_3E9774();
  result = (*(v5 + 8))(v7, v4);
  if (v8 && (v11 = 0, v12 = 1, result = sub_3ED784(), v12 != 1))
  {
    v10 = v11;
  }

  else
  {
    v10 = 0x40E5180000000000;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_19D620()
{
  v1 = sub_3E92E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6BA8, &qword_40ADF0);
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  sub_3ED244();
  v8 = [objc_opt_self() predicateForSubscribedChannel];
  v9 = [*(v0 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_managedContextProvider) privateQueueContext];
  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  sub_3EDBC4();
  sub_3E92D4();
  sub_1A0398(&qword_4F2E70, &type metadata accessor for FetchedResultsCountPublisher, &protocol conformance descriptor for FetchedResultsCountPublisher);
  sub_3EA004();
  (*(v2 + 8))(v4, v1);
  if (qword_4E8A08 != -1)
  {
    swift_once();
  }

  sub_886BC(&qword_4F6BB8, &unk_4F6BA8, &qword_40ADF0, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v10 = v16;
  v11 = sub_3E9F44();
  (*(v15 + 8))(v7, v10);
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10, &qword_40A710);
  sub_886BC(&qword_4F62B0, &qword_4F6A10, &qword_40A710, &protocol conformance descriptor for AnyPublisher<A, B>);
  v12 = sub_3E9F94();

  return v12;
}

uint64_t RecommendationsMetadataProvider.__allocating_init(asPartOf:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_19FF00(a1);

  return v2;
}

uint64_t RecommendationsMetadataProvider.init(asPartOf:)(uint64_t a1)
{
  v1 = sub_19FF00(a1);

  return v1;
}

uint64_t sub_19DA40()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0, &qword_3FA180);
  __chkstk_darwin(v1 - 8);
  v43 = &v31 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E8, &qword_40AD18);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  __chkstk_darwin(v3);
  v32 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69F0, &qword_40AD20);
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v33 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69F8, &qword_40AD28);
  v10 = *(v9 - 8);
  v40 = v9;
  v41 = v10;
  __chkstk_darwin(v9);
  v34 = &v31 - v11;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A00, &qword_40AD30);
  v44 = *(v42 - 8);
  __chkstk_darwin(v42);
  v37 = &v31 - v12;
  v47 = sub_19D1CC();
  v46 = *(v0 + 24);

  v45 = sub_19D620();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A08, &unk_40AD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0, &qword_40AD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10, &qword_40A710);
  sub_886BC(&qword_4F6A18, &qword_4F6A08, &unk_40AD38, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_886BC(&unk_4F6A20, &unk_4F69C0, &qword_40AD10, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_886BC(&qword_4F62B0, &qword_4F6A10, &qword_40A710, &protocol conformance descriptor for AnyPublisher<A, B>);
  v13 = v32;
  sub_3E9B64();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1A0300;
  v15 = v31;
  *(v14 + 24) = v31;
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A30, &qword_40AD48);
  sub_886BC(&qword_4F6A38, &qword_4F69E8, &qword_40AD18, &protocol conformance descriptor for Publishers.CombineLatest3<A, B, C>);
  v17 = v33;
  v18 = v35;
  sub_3EA024();

  (*(v36 + 8))(v13, v18);
  sub_886BC(&qword_4F6A40, &qword_4F69F0, &qword_40AD20, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_886BC(&unk_4F6A48, &qword_4F6A30, &qword_40AD48, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v19 = v34;
  v20 = v38;
  sub_3EA184();
  (*(v39 + 8))(v17, v20);
  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  v21 = sub_3EDBC4();
  v47 = v21;
  v22 = sub_3EDB64();
  v23 = v43;
  (*(*(v22 - 8) + 56))(v43, 1, 1, v22);
  sub_886BC(&unk_4F6A58, &qword_4F69F8, &qword_40AD28, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  sub_87870();
  v24 = v37;
  v25 = v40;
  sub_3EA114();
  sub_FCF8(v23, &qword_4F69E0, &qword_3FA180);

  (*(v41 + 8))(v19, v25);
  v26 = *(v16 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A0370;
  *(v27 + 24) = v26;
  sub_886BC(&qword_4F6A68, &qword_4F6A00, &qword_40AD30, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v28 = v42;
  sub_3EA1A4();

  (*(v44 + 8))(v24, v28);
  v29 = *(v16 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_subscriptions);
  os_unfair_lock_lock(v29 + 6);
  sub_1A037C();
  os_unfair_lock_unlock(v29 + 6);
}

uint64_t sub_19E16C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A70, &qword_40AD50);
  __chkstk_darwin(v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A78, &qword_40AD58);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A80, &unk_40AD60);
  v11 = *(v10 - 8);
  v21 = v10;
  v22 = v11;
  __chkstk_darwin(v10);
  v13 = v20 - v12;
  sub_36174(0, &qword_4F6A88, NSTimer_ptr);
  v14 = [objc_opt_self() mainRunLoop];
  v15 = sub_3EE004();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = sub_3EDE74();

  sub_FCF8(v5, &qword_4F6A70, &qword_40AD50);
  v24 = v16;
  sub_3EDE64();
  sub_1A0398(&unk_4F6A90, &type metadata accessor for NSTimer.TimerPublisher, &protocol conformance descriptor for NSTimer.TimerPublisher);
  v17 = sub_3E9DA4();

  v24 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA738, &qword_3F6CC8);
  sub_3E5F84();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E5F64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AA0, &unk_40AD70);
  sub_886BC(&qword_4F6AA8, &qword_4F6AA0, &unk_40AD70, &protocol conformance descriptor for Publishers.Autoconnect<A>);
  sub_3EA104();

  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AB0, &unk_40A700);
  sub_886BC(&qword_4F6AB8, &qword_4F6A78, &qword_40AD58, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_3EA024();

  (*(v7 + 8))(v9, v6);
  sub_886BC(&unk_4F6AC0, &qword_4F6A80, &unk_40AD60, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_886BC(&qword_4F62A8, &qword_4F6AB0, &unk_40A700, &protocol conformance descriptor for AnyPublisher<A, B>);
  v18 = v21;
  sub_3EA184();
  return (*(v22 + 8))(v13, v18);
}

uint64_t sub_19E694@<X0>(uint64_t *a2@<X8>)
{
  v15 = a2;
  v2 = sub_3E8F34();
  __chkstk_darwin(v2 - 8);
  v3 = sub_3E8F74();
  __chkstk_darwin(v3 - 8);
  v4 = sub_3E8F54();
  __chkstk_darwin(v4 - 8);
  v5 = sub_3E8F04();
  __chkstk_darwin(v5 - 8);
  v6 = sub_3E8F94();
  __chkstk_darwin(v6 - 8);
  v7 = sub_3E8FB4();
  __chkstk_darwin(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AD0, &qword_40AD80);
  v14 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_19EA44();
  }

  else
  {
    sub_3E8F84();
    sub_3E8EF4();
    sub_3E8F44();
    sub_3E8F64();
    sub_3E8F24();
    sub_3E8FA4();
    sub_3E9DF4();
    sub_886BC(&qword_4F6AD8, &qword_4F6AD0, &qword_40AD80, &protocol conformance descriptor for Just<A>);
    v11 = sub_3E9F94();
    result = (*(v14 + 8))(v10, v8);
  }

  *v15 = v11;
  return result;
}

uint64_t sub_19EA44()
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AE0, &qword_40AD88);
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v34 = v31 - v1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AE8, &qword_40AD90);
  v38 = *(v41 - 8);
  __chkstk_darwin(v41);
  v35 = v31 - v2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F6AF0, &qword_40AD98);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v36 = v31 - v3;
  v4 = sub_3E8F34();
  __chkstk_darwin(v4 - 8);
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3E8F74();
  __chkstk_darwin(v6 - 8);
  v7 = sub_3E8F54();
  __chkstk_darwin(v7 - 8);
  v8 = sub_3E8F04();
  __chkstk_darwin(v8 - 8);
  v9 = sub_3E8F94();
  __chkstk_darwin(v9 - 8);
  v10 = sub_3E8FB4();
  __chkstk_darwin(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6AD0, &qword_40AD80);
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = v31 - v12;
  v14 = sub_3E7424();
  v47[3] = v14;
  v47[4] = sub_1A0398(&qword_4F07A0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v47);
  (*(*(v14 - 8) + 104))(boxed_opaque_existential_0Tm, enum case for Podcasts.ponderosaForceColdStart(_:), v14);
  LOBYTE(v14) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  if (v14)
  {
    sub_3E8F84();
    sub_3E8EF4();
    sub_3E8F44();
    sub_3E8F64();
    sub_3E8F24();
    sub_3E8FA4();
    sub_3E9DF4();
    sub_886BC(&qword_4F6AD8, &qword_4F6AD0, &qword_40AD80, &protocol conformance descriptor for Just<A>);
    v17 = sub_3E9F94();
    (*(v32 + 8))(v13, v11);
  }

  else
  {
    v33 = v10;
    v47[0] = sub_19FAB0(v16);
    v18 = *(v0 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_libraryDataProvider + 8);
    ObjectType = swift_getObjectType();
    v46 = v18[11](ObjectType, v18);
    if (qword_4E8A08 != -1)
    {
      swift_once();
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B00, &qword_40ADA0);
    v31[2] = sub_886BC(&qword_4F6B08, &qword_4F6B00, &qword_40ADA0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v20 = sub_3E9F44();

    v46 = v20;
    v45 = v18[12](ObjectType, v18);
    v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B10, &qword_40ADA8);
    sub_886BC(&qword_4F6B18, &qword_4F6B10, &qword_40ADA8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v21 = sub_3E9F44();

    v45 = v21;
    v44 = v18[13](ObjectType, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B20, &qword_40ADB0);
    sub_886BC(&qword_4F6B28, &qword_4F6B20, &qword_40ADB0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v22 = sub_3E9F44();

    v44 = v22;
    v43 = v18[14](ObjectType, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B30, &qword_40ADB8);
    sub_886BC(&qword_4F6B38, &qword_4F6B30, &qword_40ADB8, &protocol conformance descriptor for AnyPublisher<A, B>);
    v23 = sub_3E9F44();

    v43 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B40, &qword_40ADC0);
    sub_886BC(&qword_4F6B48, &qword_4F6B40, &qword_40ADC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v24 = v34;
    sub_3E9BB4();
    sub_886BC(&qword_4F6B50, &qword_4F6AE0, &qword_40AD88, &protocol conformance descriptor for Publishers.PFCombineLatest5<A, B, C, D, E>);
    v25 = v35;
    v26 = v40;
    sub_3EA024();
    (*(v37 + 8))(v24, v26);
    sub_886BC(&qword_4F6B58, &qword_4F6AE8, &qword_40AD90, &protocol conformance descriptor for Publishers.Map<A, B>);
    v27 = v36;
    v28 = v41;
    sub_3EA084();
    (*(v38 + 8))(v25, v28);
    sub_886BC(&qword_4F6B60, &unk_4F6AF0, &qword_40AD98, &protocol conformance descriptor for Publishers.First<A>);
    v29 = v42;
    v17 = sub_3E9F94();
    (*(v39 + 8))(v27, v29);
  }

  return v17;
}

uint64_t sub_19F488(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69B8, &qword_40AD08);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_3E8FB4();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v6);
  return sub_FCF8(v6, &qword_4F69B8, &qword_40AD08);
}

uint64_t sub_19F5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_3E8F34();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_3E8F74();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_3E8F54();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_3E8F04();
  v9 = *(v23 - 8);
  __chkstk_darwin(v23);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_3E8F94();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B68, &qword_40ADC8);
  v17 = v16[12];
  v18 = v16[16];
  v19 = v16[20];
  v22 = v16[24];
  (*(v13 + 16))(v15, a1, v12);
  (*(v9 + 16))(v11, a1 + v17, v23);
  (*(v7 + 16))(v24, a1 + v18, v25);
  (*(v27 + 16))(v26, a1 + v19, v28);
  (*(v30 + 16))(v29, a1 + v22, v31);
  return sub_3E8FA4();
}

uint64_t RecommendationsMetadataProvider.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_bag;
  v2 = sub_3ECAD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v0;
}

uint64_t RecommendationsMetadataProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_bag;
  v2 = sub_3ECAD4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_19FAB0(double a1)
{
  v18 = sub_3E8F94();
  v1 = *(v18 - 8);
  __chkstk_darwin(v18);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B70, &qword_40ADD0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B78, &qword_40ADD8);
  v19 = *(v8 - 8);
  v20 = v8;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B80, &qword_40ADE0);
  sub_3E9194();
  v11 = sub_3E9174();
  sub_3E9184();

  sub_3ECDF4();
  v12 = sub_3ECD54();

  v21 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B88, &qword_40ADE8);
  sub_886BC(&qword_4F6B90, &qword_4F6B88, &qword_40ADE8, &protocol conformance descriptor for Future<A, B>);
  v13 = v18;
  sub_3EA024();

  sub_3E8F84();
  sub_886BC(&qword_4F6B98, &qword_4F6B70, &qword_40ADD0, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_3E9FC4();
  (*(v1 + 8))(v3, v13);
  (*(v5 + 8))(v7, v4);
  if (qword_4E8A08 != -1)
  {
    swift_once();
  }

  sub_886BC(&qword_4F6BA0, &qword_4F6B78, &qword_40ADD8, &protocol conformance descriptor for Publishers.ReplaceError<A>);
  v14 = v20;
  v15 = sub_3E9F44();
  (*(v19 + 8))(v10, v14);
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6B40, &qword_40ADC0);
  sub_886BC(&qword_4F6B48, &qword_4F6B40, &qword_40ADC0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v16 = sub_3E9F94();

  return v16;
}

uint64_t sub_19FF00(uint64_t a1)
{
  v2 = v1;
  v3 = sub_3ECAD4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69B8, &qword_40AD08);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = sub_3E8FB4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6290, &unk_40A6F0);
  swift_allocObject();
  *(v2 + 16) = sub_3E9D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69C0, &qword_40AD10);
  swift_allocObject();
  *(v2 + 24) = sub_3E9D94();
  if (_swiftEmptyArrayStorage >> 62 && sub_3EE5A4())
  {
    v11 = sub_35A58(_swiftEmptyArrayStorage);
  }

  else
  {
    v11 = &_swiftEmptySetSingleton;
  }

  v12 = OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_subscriptions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6430, &unk_40A800);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = v11;
  *(v2 + v12) = v13;
  sub_3EC444();
  sub_3ECD14();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_bag, v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0, &qword_3FF070);
  sub_3EC394();
  *(v2 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_libraryDataProvider) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A20, &qword_3FE8E0);
  sub_3EC394();
  *(v2 + OBJC_IVAR____TtC8ShelfKit31RecommendationsMetadataProvider_managedContextProvider) = v15;
  sub_19DA40();
  return v2;
}

uint64_t type metadata accessor for RecommendationsMetadataProvider(uint64_t a1)
{
  result = qword_4F6908;
  if (!qword_4F6908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A0220(uint64_t a1)
{
  result = sub_3ECAD4();
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

uint64_t sub_1A0308()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A0398(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A03E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A0438(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69B8, &qword_40AD08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShowEpisodesShelvesProvider.shelvesPublisher(showUUID:showPublisher:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v54 = a1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C00, &qword_40AE20);
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v47 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C08, &qword_40AE28);
  v62 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v47 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C10, &qword_40AE30);
  v7 = *(v6 - 8);
  v65 = v6;
  v66 = v7;
  __chkstk_darwin(v6);
  v58 = &v47 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C18, &qword_40AE38);
  v70 = *(v68 - 8);
  __chkstk_darwin(v68);
  v63 = &v47 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C20, &qword_40AE40);
  v69 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v47 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C28, &qword_40AE48);
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C30, &qword_40AE50);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C38, &qword_40AE58);
  v18 = *(v47 - 8);
  __chkstk_darwin(v47);
  v20 = &v47 - v19;
  v48 = a3;
  *&v76[0] = a3;
  swift_getKeyPath();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6708, &qword_40AAD0);
  v71 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v22 = sub_886BC(&qword_4F6710, &qword_4F6708, &qword_40AAD0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v49 = v21;
  v50 = v22;
  sub_3EA014();

  sub_886BC(&qword_4F6C40, &qword_4F6C30, &qword_40AE50, &protocol conformance descriptor for Publishers.MapKeyPath<A, B>);
  sub_1A10D4();
  sub_3EA174();
  (*(v15 + 8))(v17, v14);
  v52 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_886BC(&qword_4F6C60, &qword_4F6C38, &qword_40AE58, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v23 = v47;
  v72 = sub_3E9F24();
  (*(v18 + 8))(v20, v23);
  *&v76[0] = a3;
  v24 = v74;
  sub_3EA024();
  (*(v75 + 16))(v51, v24, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C68, &qword_40AE90);
  swift_allocObject();
  sub_886BC(&qword_4F6C70, &qword_4F6C28, &qword_40AE48, &protocol conformance descriptor for Publishers.Map<A, B>);
  v25 = sub_3E8A84();
  v26 = v53;
  v27 = *(v53 + 48);
  ObjectType = swift_getObjectType();
  *&v76[0] = (*(v27 + 344))(v54, v55, ObjectType, v27);
  v55 = *&v76[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C78, &qword_40AE98);
  swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C80, &qword_40AEA0);
  v29 = v71;
  sub_886BC(&qword_4F6C88, &qword_4F6C80, &qword_40AEA0, v71);
  v30 = sub_3E8A84();
  *&v76[0] = v48;
  v78 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6C90, &qword_40AEA8);
  sub_886BC(&qword_4F6C98, &qword_4F6C90, &qword_40AEA8, v29);
  v31 = v56;
  sub_3E9FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0, &qword_40AEB0);
  sub_886BC(&qword_4F6CA8, &qword_4F6C00, &qword_40AE20, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v32 = v57;
  v33 = v59;
  sub_3EA024();
  (*(v60 + 8))(v31, v33);
  sub_886BC(&qword_4F6CB0, &qword_4F6C08, &qword_40AE28, &protocol conformance descriptor for Publishers.Map<A, B>);
  v34 = v58;
  v35 = v61;
  sub_3EA004();
  (*(v62 + 8))(v32, v35);
  sub_1A226C(v26, v76);
  v36 = swift_allocObject();
  *(v36 + 16) = v25;
  *(v36 + 24) = v30;
  v37 = v76[1];
  *(v36 + 32) = v76[0];
  *(v36 + 48) = v37;
  *(v36 + 64) = v76[2];
  *(v36 + 80) = v77;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1A22F4;
  *(v38 + 24) = v36;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CB8, &unk_40AEB8);
  sub_886BC(&qword_4F6CC0, &qword_4F6C10, &qword_40AE30, v52);
  v39 = v63;
  v40 = v65;
  sub_3EA024();

  (*(v66 + 8))(v34, v40);
  sub_886BC(&qword_4F6CC8, &qword_4F6C18, &qword_40AE38, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_886BC(&qword_4F6CD0, &qword_4F6CB8, &unk_40AEB8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v41 = v64;
  v42 = v68;
  sub_3EA184();
  (*(v70 + 8))(v39, v42);
  sub_886BC(&qword_4F6CD8, &qword_4F6C20, &qword_40AE40, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);
  v43 = v67;
  v44 = sub_3E9F34();
  (*(v69 + 8))(v41, v43);
  *&v76[0] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6740, &qword_40AAE0);
  sub_886BC(&qword_4F6748, &qword_4F6740, &qword_40AAE0, v71);
  v45 = sub_3E9F94();

  (*(v75 + 8))(v74, v73);
  return v45;
}

unint64_t sub_1A10D4()
{
  result = qword_4F6C48;
  if (!qword_4F6C48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F6C50, &qword_40AE88);
    v4[0] = sub_1A1158();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v3, v4);
    atomic_store(result, &qword_4F6C48);
  }

  return result;
}

unint64_t sub_1A1158()
{
  result = qword_4F6C58;
  if (!qword_4F6C58)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for EpisodeUserFilter, &type metadata for EpisodeUserFilter, v0, v1);
    atomic_store(result, &qword_4F6C58);
  }

  return result;
}

double ShowEpisodesShelvesProvider.init(asPartOf:)@<D0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50, &qword_3F6190);
  sub_3EC444();
  sub_3ECD14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0, &qword_3FF070);
  sub_3ECD14();

  result = *&v4;
  *(a2 + 40) = v4;
  return result;
}

uint64_t sub_1A1280@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = a3;
  v8 = ~a3;
  swift_beginAccess();
  v9 = MTPodcastHidesPlayedEpisodesResolved();
  v10 = a2;
  v11 = v4;
  if (!v8)
  {
    v10 = sub_3E8364();
    v11 = v12;
  }

  sub_1A9FF8(a2, v4);
  if (v9)
  {
    sub_3E83D4();
  }

  v13 = sub_3E8384(v9);
  v15 = v14;
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  swift_bridgeObjectRetain_n();
  sub_1748BC(v10, v11);
  result = sub_3E8954();
  v19 = *(a1 + OBJC_IVAR____TtC8ShelfKit13PodcastDetail_isSerialShowTypeInFeed);
  v20 = *(a1 + 16);
  v21 = *(a1 + 24);
  *a4 = v16;
  *(a4 + 8) = v17;
  *(a4 + 16) = v20;
  *(a4 + 24) = v21;
  *(a4 + 32) = v10;
  *(a4 + 40) = v11;
  *(a4 + 48) = v13;
  *(a4 + 56) = v15;
  *(a4 + 64) = v19;
  return result;
}

double sub_1A1418@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0, &qword_40AEB0);
  v7 = (a2 + *(v6 + 96));
  v8 = *(v6 + 112);
  sub_1A1280(v3, v4, v5, &v17);
  result = *&v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  *a2 = v17;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *v7 = v14;
  v7[1] = v15;
  *(a2 + v8) = v16;
  return result;
}

uint64_t sub_1A14CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, unsigned __int8 a16, void (*a17)(char *, uint64_t, uint64_t), uint64_t a18, uint64_t a19, unsigned __int8 a20)
{
  v129 = a8;
  v128 = a16;
  v127 = a15;
  LODWORD(v118) = a14;
  v123 = a19;
  v124 = a13;
  v116 = a7;
  v117 = a12;
  v111 = a11;
  v121 = a10;
  v122 = a20;
  v130 = a9;
  v125 = a18;
  v115 = a17;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6ED8, &qword_40B000);
  __chkstk_darwin(v101);
  v103 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v102 = &v99 - v28;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EE0, &qword_40B008);
  __chkstk_darwin(v105);
  v106 = (&v99 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v30);
  v113 = &v99 - v31;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EE8, &qword_40B010);
  __chkstk_darwin(v110);
  v109 = &v99 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v99 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0, &qword_40AEB0);
  v37 = (v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v99 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v99 - v41;
  *v42 = a1;
  *(v42 + 1) = a2;
  v126 = a2;
  v112 = a3;
  *(v42 + 2) = a3;
  v43 = v117;
  v114 = a4;
  v42[24] = a4 & 1;
  v119 = a5;
  *(v42 + 4) = a5;
  v120 = a6;
  v42[40] = a6;
  v44 = v37[22];
  v45 = sub_3E8944();
  v104 = *(v45 - 8);
  v47 = v104 + 16;
  v46 = *(v104 + 16);
  v107 = v44;
  v46(&v42[v44], v116, v45);
  v48 = &v42[v37[26]];
  v49 = v130;
  *v48 = v129;
  v48[1] = v49;
  v42[v37[30]] = v121;
  v50 = v111;
  *v39 = v111;
  *(v39 + 1) = v43;
  *(v39 + 2) = v124;
  v39[24] = v118 & 1;
  *(v39 + 4) = v127;
  v39[40] = v128;
  v108 = v37[22];
  v51 = v115;
  v115 = v46;
  v116 = v47;
  v46(&v39[v108], v51, v45);
  v52 = &v39[v37[26]];
  v53 = v123;
  *v52 = v125;
  v52[1] = v53;
  v39[v37[30]] = v122;
  if ((a1 != v50 || v126 != v43) && (sub_3EE804() & 1) == 0)
  {

    sub_1748BC(v119, v120);

    sub_1748BC(v127, v128);
    v93 = &qword_4F6CA0;
    v94 = &qword_40AEB0;
    sub_FCF8(v39, &qword_4F6CA0, &qword_40AEB0);
    v95 = v42;
    goto LABEL_18;
  }

  v54 = v121 & 1;
  LODWORD(v111) = v122 & 1;
  v55 = v114 & 1;
  *v35 = v112;
  v35[8] = v55;
  v56 = v45;
  v57 = v119;
  *(v35 + 2) = v119;
  v58 = v120;
  v35[24] = v120;
  v59 = v110;
  v100 = *(v110 + 64);
  v115(&v35[v100], &v42[v107], v45);
  v60 = &v35[v59[20]];
  v61 = v130;
  *v60 = v129;
  v60[1] = v61;
  v62 = v59[24];
  LODWORD(v107) = v54;
  v35[v62] = v54;
  v63 = v109;

  sub_1748BC(v57, v58);

  v64 = v57;
  v65 = v118;
  sub_1748BC(v64, v58);

  v66 = v123;

  v67 = v127;
  LOBYTE(v61) = v128;
  sub_1748BC(v127, v128);
  sub_FCF8(v42, &qword_4F6CA0, &qword_40AEB0);
  *v63 = v124;
  *(v63 + 8) = v65 & 1;
  *(v63 + 16) = v67;
  *(v63 + 24) = v61;
  v68 = v59[16];
  v126 = v56;
  v69 = v56;
  v70 = v66;
  v115((v63 + v68), &v39[v108], v69);
  v71 = (v63 + v59[20]);
  *v71 = v125;
  v71[1] = v66;
  *(v63 + v59[24]) = v111;

  sub_1748BC(v67, v61);
  sub_FCF8(v39, &qword_4F6CA0, &qword_40AEB0);
  if (v114)
  {
    v72 = v113;
    if ((v65 & 1) == 0)
    {
LABEL_14:
      v93 = &qword_4F6EE8;
      v94 = &qword_40B010;
      sub_FCF8(v63, &qword_4F6EE8, &qword_40B010);
      v95 = v35;
      goto LABEL_18;
    }
  }

  else
  {
    v72 = v113;
    if ((v65 & 1) != 0 || v112 != v124)
    {
      goto LABEL_14;
    }
  }

  *v72 = v119;
  v72[8] = v120;
  v73 = v105;
  v74 = *(v104 + 32);
  v118 = *(v105 + 48);
  v75 = v126;
  v74(&v72[v118], &v35[v100], v126);
  v76 = &v72[v73[16]];
  v77 = v130;
  *v76 = v129;
  v76[1] = v77;
  v72[v73[20]] = v107;
  v78 = v106;
  *v106 = v127;
  *(v78 + 8) = v128;
  v124 = v73[12];
  v79 = (v63 + v68);
  v80 = v75;
  v74((v78 + v124), v79, v75);
  v81 = (v78 + v73[16]);
  v82 = v125;
  *v81 = v125;
  v81[1] = v70;
  v83 = v111;
  *(v78 + v73[20]) = v111;
  if (sub_3E83E4())
  {
    v84 = v113;
    v85 = v102;
    v86 = v70;
    v87 = v115;
    v115(v102, &v113[v118], v80);
    v88 = v101;
    v89 = (v85 + *(v101 + 48));
    v90 = v130;
    *v89 = v129;
    v89[1] = v90;
    *(v85 + *(v88 + 64)) = v107;

    sub_FCF8(v84, &qword_4F6EE0, &qword_40B008);
    v91 = v103;
    v87(v103, v78 + v124, v80);
    v92 = (v91 + *(v88 + 48));
    *v92 = v82;
    v92[1] = v86;
    *(v91 + *(v88 + 64)) = v83;

    sub_FCF8(v78, &qword_4F6EE0, &qword_40B008);
    sub_1A9FB0(&qword_4F6EF0, &type metadata accessor for EpisodeListSettings, &protocol conformance descriptor for EpisodeListSettings);
    if (sub_3ED174())
    {

      sub_FCF8(v85, &qword_4F6ED8, &qword_40B000);

      sub_FCF8(v91, &qword_4F6ED8, &qword_40B000);
      if (v129 == v82 && v130 == v86)
      {
      }

      else
      {
        v98 = sub_3EE804();

        v96 = 0;
        if ((v98 & 1) == 0)
        {
          return v96 & 1;
        }
      }

      v96 = v121 ^ v122 ^ 1;
      return v96 & 1;
    }

    v93 = &qword_4F6ED8;
    v94 = &qword_40B000;
    sub_FCF8(v91, &qword_4F6ED8, &qword_40B000);
    v95 = v85;
  }

  else
  {
    v93 = &qword_4F6EE0;
    v94 = &qword_40B008;
    sub_FCF8(v78, &qword_4F6EE0, &qword_40B008);
    v95 = v113;
  }

LABEL_18:
  sub_FCF8(v95, v93, v94);
  v96 = 0;
  return v96 & 1;
}

uint64_t sub_1A1E34(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0, &qword_40AEB0);
  v11 = v10[24];
  return sub_1A14CC(v4, v5, v6, v7, v8, v9, a1 + v10[20], *(a1 + v11), *(a1 + v11 + 8), *(a1 + v10[28]), *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), *(a2 + 32), *(a2 + 40), (a2 + v10[20]), *(a2 + v11), *(a2 + v11 + 8), *(a2 + v10[28])) & 1;
}

uint64_t sub_1A1F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a7;
  v46 = a6;
  v38 = a1;
  v39 = a3;
  v51 = a9;
  v47 = a13;
  *&v48 = a8;
  v45 = a12;
  v43 = a4;
  v44 = a11;
  v17 = sub_3E8944();
  v40 = v17;
  v18 = *(v17 - 8);
  v50 = *(v18 + 64);
  __chkstk_darwin(v17);
  v49 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v21 = (v20 - 8);
  v22 = __chkstk_darwin(v20);
  v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v21[9];
  v41 = *(v18 + 16);
  v41(&v24[v25], a7, v17, v22);
  sub_1F958(a14, &v24[v21[14]]);
  v26 = v39;
  *v24 = v38;
  *(v24 + 1) = a2;
  *(v24 + 2) = v26;
  v24[24] = v43 & 1;
  *(v24 + 4) = a5;
  v27 = a5;
  LOBYTE(a5) = v46;
  v24[40] = v46;
  v28 = &v24[v21[10]];
  v29 = v47;
  *v28 = v48;
  *(v28 + 1) = a10;
  v24[v21[11]] = v44;
  *&v24[v21[12]] = v45;
  *&v24[v21[13]] = v29;
  v30 = v21[15];
  v48 = *(a14 + 40);
  *&v24[v30] = v48;

  swift_unknownObjectRetain();
  sub_1748BC(v27, a5);

  v31 = sub_1A2338();
  sub_1A9C34(v24, type metadata accessor for ShowEpisodesShelvesProvider.Info);
  v52 = v31;
  v32 = v49;
  v33 = v40;
  (v41)(v49, v42, v40);
  v34 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v35 = swift_allocObject();
  (*(v18 + 32))(v35 + v34, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330, &qword_40AAF0);
  type metadata accessor for ShowEpisodesShelvesProvider.Result(0);
  sub_886BC(&qword_4F6340, &qword_4F6330, &qword_40AAF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_3EA024();
}

uint64_t sub_1A22A4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1A2338()
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E48, &qword_40AFA0);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v41 = &v37 - v1;
  v2 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v3 = v2 - 8;
  v52 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = v4;
  v54 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E50, &qword_40AFA8);
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin(v5);
  v44 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E58, &qword_40AFB0);
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v47 = &v37 - v8;
  v55 = sub_3E8944();
  v46 = *(v55 - 8);
  __chkstk_darwin(v55);
  v42 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E60, &unk_40AFB8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - v12;
  v14 = (v0 + *(v3 + 60));
  v16 = *v14;
  v15 = v14[1];
  ObjectType = swift_getObjectType();
  v18 = *(v3 + 36);
  v38 = ObjectType;
  v39 = v16;
  v40 = v15;
  v57 = LibraryDataProviderProtocol.episodeListPublisher(settings:pageSize:)(v0 + v18, 12, ObjectType, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D00, qword_3FE9B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E68, &qword_40AFC8);
  sub_886BC(&qword_4F1A78, &qword_4F1D00, qword_3FE9B0, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  sub_3EA024();

  sub_886BC(&qword_4F6E70, &qword_4F6E60, &unk_40AFB8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v19 = sub_3E9F94();
  (*(v11 + 8))(v13, v10);
  if (sub_3E88D4())
  {
    v20 = v46;
    v21 = v42;
    (*(v46 + 16))(v42, v0 + v18, v55);
    sub_3E88E4();
    v45 = (*(v40 + 360))(v21, v38);
    v56 = v45;
    v57 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E78, &qword_40AFD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6A10, &qword_40A710);
    v43 = v19;
    sub_886BC(&qword_4F6E80, &qword_4F6E78, &qword_40AFD0, &protocol conformance descriptor for AnyPublisher<A, B>);
    sub_886BC(&qword_4F62B0, &qword_4F6A10, &qword_40A710, &protocol conformance descriptor for AnyPublisher<A, B>);
    v22 = v44;
    sub_3E9FE4();
    v23 = v54;
    sub_1A9BCC(v0, v54, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    v24 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v25 = swift_allocObject();
    sub_1A9C94(v23, v25 + v24, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1A3E1C;
    *(v26 + 24) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70, &unk_3FF0C0);
    sub_886BC(&qword_4F6E90, &qword_4F6E50, &qword_40AFA8, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
    v27 = v47;
    v28 = v49;
    sub_3EA024();

    (*(v48 + 8))(v22, v28);
    sub_886BC(&qword_4F6E98, &qword_4F6E58, &qword_40AFB0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v29 = v51;
    v30 = sub_3E9F94();

    (*(v50 + 8))(v27, v29);
    (*(v20 + 8))(v21, v55);
  }

  else
  {
    v57 = v19;
    v31 = v54;
    sub_1A9BCC(v0, v54, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    v32 = (*(v52 + 80) + 16) & ~*(v52 + 80);
    v33 = swift_allocObject();
    sub_1A9C94(v31, v33 + v32, type metadata accessor for ShowEpisodesShelvesProvider.Info);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6E78, &qword_40AFD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70, &unk_3FF0C0);
    sub_886BC(&qword_4F6E80, &qword_4F6E78, &qword_40AFD0, &protocol conformance descriptor for AnyPublisher<A, B>);
    v34 = v41;
    sub_3EA024();

    sub_886BC(&qword_4F6E88, &qword_4F6E48, &qword_40AFA0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v35 = v45;
    v30 = sub_3E9F94();

    (*(v43 + 8))(v34, v35);
  }

  return v30;
}

uint64_t sub_1A2C14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for ShowEpisodesShelvesProvider.Result(0) + 20);
  v7 = sub_3E8944();
  (*(*(v7 - 8) + 16))(&a3[v6], a2, v7);
  *a3 = v5;
}

uint64_t sub_1A2CA4(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char *, void, void, char))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = *(a1 + 40);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6CA0, &qword_40AEB0);
  v12 = *(a1 + v10[28]);
  return a2(v4, v5, v6, v7, v8, v9, a1 + v10[20], *(a1 + v10[24]), *(a1 + v10[24] + 8), v12);
}

uint64_t sub_1A2D68()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A2DCC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3E8944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1A2E8C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_3E8944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A2F50(uint64_t a1, double a2)
{
  sub_179930(319, a2);
  if (v2 <= 0x3F)
  {
    sub_3E8944();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A2FE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_3E8944();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1A30A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_3E8944();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1A316C(uint64_t a1)
{
  sub_11CB2C();
  if (v1 <= 0x3F)
  {
    sub_3E8944();
    if (v2 <= 0x3F)
    {
      sub_1A32A0();
      if (v3 <= 0x3F)
      {
        sub_1A3300(319);
        if (v4 <= 0x3F)
        {
          sub_1A3374(319, &qword_4F6DF0, &protocol descriptor for LibraryActionControllerProtocol, 1);
          if (v5 <= 0x3F)
          {
            sub_1A3374(319, &unk_4F6DF8, &protocol descriptor for LibraryDataProviderProtocol, 0);
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

void sub_1A32A0()
{
  if (!qword_4F6DD8)
  {
    v0 = sub_3E8A74();
    if (!v1)
    {
      atomic_store(v0, &qword_4F6DD8);
    }
  }
}

void sub_1A3300(uint64_t a1)
{
  if (!qword_4F6DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_4F6DE8, &qword_40AF58);
    v1 = sub_3E8A74();
    if (!v2)
    {
      atomic_store(v1, &qword_4F6DE0);
    }
  }
}

uint64_t sub_1A3374(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShowEpisodesShelvesProvider.Info.DropDownOptionsInfo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShowEpisodesShelvesProvider.Info.DropDownOptionsInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1A3520()
{
  v1 = sub_3E8944();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1A35A8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v5 = *(sub_3E8944() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A2C14(a1, v6, a2);
}

uint64_t sub_1A3628@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1AA0, &unk_3FEA90);
  sub_3E95D4();
  result = sub_3E95A4();
  a1[1] = result;
  return result;
}

uint64_t sub_1A3684@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  result = sub_1A36FC(*a1, a1[1], a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1A36FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA0, &qword_40AFD8);
  __chkstk_darwin(v6 - 8);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA8, &qword_40AFE0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  v48 = v10;
  v49 = a3;
  if (a3 < 13)
  {

    v22 = a1;
    goto LABEL_24;
  }

  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    v42 = &v44 - v11;
    v20 = sub_3EE5A4();
    if (sub_3EE5A4() < 0)
    {
      __break(1u);
      goto LABEL_32;
    }

    if (v20 >= 8)
    {
      v43 = 8;
    }

    else
    {
      v43 = v20;
    }

    if ((v20 & 0x8000000000000000) == 0)
    {
      v15 = v43;
    }

    else
    {
      v15 = 8;
    }

    result = sub_3EE5A4();
    v12 = v42;
    if (result >= v15)
    {
LABEL_7:
      v16 = v12;
      if ((a1 & 0xC000000000000001) != 0 && v15)
      {
        type metadata accessor for LibraryEpisodeLockup(0);

        v17 = 0;
        do
        {
          v18 = v17 + 1;
          sub_3EE3D4(v17);
          v17 = v18;
        }

        while (v15 != v18);
        if (!v13)
        {
LABEL_12:
          v10 = a1 & 0xFFFFFFFFFFFFFF8;
          v19 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          v20 = (2 * v15) | 1;
          if (v20)
          {
LABEL_18:
            v46 = v19;
            v47 = v9;
            v9 = v16;
            sub_3EE824();
            swift_unknownObjectRetain_n();
            v27 = swift_dynamicCastClass();
            if (!v27)
            {
              swift_unknownObjectRelease();
              v27 = _swiftEmptyArrayStorage;
            }

            v28 = v27[2];

            if (!__OFSUB__(v20 >> 1, v13))
            {
              if (v28 == (v20 >> 1) - v13)
              {
                v22 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                v12 = v9;
                v9 = v47;
                if (!v22)
                {
                  swift_unknownObjectRelease();
                  v22 = _swiftEmptyArrayStorage;
                }

LABEL_24:
                v29 = &v12[*(v9 + 48)];
                *v29 = sub_1A3ED4(v12, a2, v21);
                v29[1] = v30;
                if (v22 >> 62)
                {
                  if (sub_3EE5A4())
                  {
                    goto LABEL_26;
                  }
                }

                else if (*(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8)))
                {
LABEL_26:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8, &unk_3FF1C0);
                  v31 = *(type metadata accessor for ModernShelf(0) - 8);
                  v47 = v12;
                  v45 = *(v31 + 72);
                  v32 = (*(v31 + 80) + 32) & ~*(v31 + 80);
                  v33 = swift_allocObject();
                  *(v33 + 16) = xmmword_3F5310;
                  v34 = (v33 + v32);
                  sub_FBD0(v47, v8, &qword_4F6EA8, &qword_40AFE0);
                  v46 = a2;
                  v35 = *(v48 + 56);
                  v35(v8, 0, 1, v9);
                  v36 = sub_76CAC(v22);

                  sub_1A4D44(v8, v36, v34);

                  sub_FCF8(v8, &qword_4F6EA0, &qword_40AFD8);
                  v37 = v34 + v45;
                  v38 = v47;
                  v35(v8, 1, 1, v9);
                  a2 = v46;
LABEL_29:
                  sub_1A44C4(v8, a1, a2, v49, v37);
                  sub_FCF8(v8, &qword_4F6EA0, &qword_40AFD8);
                  sub_FCF8(v38, &qword_4F6EA8, &qword_40AFE0);
                  return v33;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA7D8, &unk_3FF1C0);
                v39 = *(type metadata accessor for ModernShelf(0) - 8);
                v40 = v12;
                v41 = (*(v39 + 80) + 32) & ~*(v39 + 80);
                v33 = swift_allocObject();
                *(v33 + 16) = xmmword_3F5630;
                v37 = (v33 + v41);
                v38 = v40;
                sub_FBD0(v40, v8, &qword_4F6EA8, &qword_40AFE0);
                (*(v48 + 56))(v8, 0, 1, v9);
                goto LABEL_29;
              }

              goto LABEL_33;
            }

LABEL_32:
            __break(1u);
LABEL_33:
            swift_unknownObjectRelease_n();
            v16 = v9;
            v19 = v46;
            v9 = v47;
          }

LABEL_17:
          sub_268C54(v10, v19, v13, v20);
          v22 = v26;
          swift_unknownObjectRelease();
          v12 = v16;
          goto LABEL_24;
        }
      }

      else
      {

        if (!v13)
        {
          goto LABEL_12;
        }
      }

      v10 = sub_3EE5B4();
      v19 = v23;
      v13 = v24;
      v20 = v25;

      if (v20)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    result = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (result >= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    if (result >= v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t objectdestroy_27Tm_0()
{
  v1 = (type metadata accessor for ShowEpisodesShelvesProvider.Info(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  sub_6BF60(*(v0 + v3 + 32), *(v0 + v3 + 40));
  v5 = v1[9];
  v6 = sub_3E8944();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3 + v1[14]));
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1A3E98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

uint64_t sub_1A3ED4(uint64_t a1, uint64_t a2, double a3)
{
  v55 = a1;
  v57 = type metadata accessor for Header(0);
  v54 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v6 - 8);
  v8 = &v39 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB0, &unk_3FEAA0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v39 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AB8, &unk_3FF1D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  if (a2)
  {
    a2 = *(v3 + 32);
    v15 = *(v3 + 40);
    sub_1748BC(a2, *(v3 + 40));
  }

  else
  {
    v15 = 2;
  }

  v44 = a2;
  v47 = v15;
  v16 = sub_1A544C(a2, v15);
  v45 = v16;
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_3EE3C4(21);

  v58 = 0x7365646F73697045;
  v59 = 0xE90000000000003ALL;
  v17 = (v3 + *(type metadata accessor for ShowEpisodesShelvesProvider.Info(0) + 32));
  v18 = v17[1];
  v48 = *v17;
  v60._countAndFlagsBits = v48;
  v60._object = v18;
  v46 = v18;
  sub_3ED3D4(v60);
  v61._countAndFlagsBits = 0x3A6C6C416565732BLL;
  v61._object = 0xE800000000000000;
  sub_3ED3D4(v61);
  v62._countAndFlagsBits = sub_3E83F4();
  sub_3ED3D4(v62);

  v49 = v59;
  v50 = v58;

  sub_1A5A48(v14);
  v19 = type metadata accessor for ActionMenu(0);
  v20 = *(v19 - 8);
  v42 = *(v20 + 56);
  v43 = v20 + 56;
  v51 = v14;
  v42(v14, 0, 1, v19);
  *v11 = v16;
  v21 = type metadata accessor for Header.PrimaryAction(0);
  swift_storeEnumTagMultiPayload();
  v40 = *(v21 - 8);
  v22 = *(v40 + 56);
  v22(v11, 0, 1, v21);
  v23 = sub_3E7784();
  v24 = *(v23 - 8);
  v53 = v11;
  v25 = *(v24 + 56);
  v52 = v8;
  v25(v8, 1, 1, v23);
  v26 = v56;
  v27 = v57;
  v28 = v56;
  *(v56 + 16) = 0u;
  v29 = v28 + 16;
  *(v26 + 32) = 0;
  *v26 = 0u;
  v41 = v27[7];
  v42((v26 + v41), 1, 1, v19);
  v30 = v27[8];
  v22((v26 + v30), 1, 1, v21);
  v31 = v27[9];
  v32 = (v26 + v31);
  v33 = v46;
  v25(v32, 1, 1, v23);
  v34 = v48;
  v35 = v53;

  LOBYTE(v23) = sub_3EE0E4();
  sub_6BF60(v44, v47);

  if ((v23 & 1) != 0 || (*(v40 + 48))(v35, 1, v21) != 1)
  {
    v36 = v56;
    *v56 = v34;
    *(v36 + 8) = v33;
    *v29 = 0;
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    sub_51F9C(v51, v36 + v41, &qword_4F1AB8, &unk_3FF1D0);
    sub_F7C5C(v35, v36 + v30);
    sub_51F9C(v52, v36 + v31, &qword_4F1D50, &unk_3F7520);
    v37 = v55;
    sub_1A9BCC(v36, v55, type metadata accessor for Header);
    (*(v54 + 56))(v37, 0, 1, v57);
    sub_FCF8(v35, &qword_4F1AB0, &unk_3FEAA0);
    sub_1A9C34(v36, type metadata accessor for Header);
  }

  else
  {

    sub_FCF8(v52, &qword_4F1D50, &unk_3F7520);
    sub_FCF8(v51, &qword_4F1AB8, &unk_3FF1D0);
    sub_FCF8(v35, &qword_4F1AB0, &unk_3FEAA0);
    sub_1A9C34(v56, type metadata accessor for Header);
    (*(v54 + 56))(v55, 1, 1, v57);
  }

  return v50;
}

uint64_t sub_1A44C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v60 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v9 - 8);
  v59 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v11 - 8);
  v63 = v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0, &qword_3FEAB0);
  __chkstk_darwin(v13 - 8);
  v55[0] = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v62 = v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA0, &qword_40AFD8);
  __chkstk_darwin(v17 - 8);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v55 - v21;
  __chkstk_darwin(v23);
  v25 = v55 - v24;
  v26 = type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
  __chkstk_darwin(v26);
  v28 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = v55 - v30;
  sub_1A79D4(a3, v60, v55 - v30, a2);
  v61 = v31;
  sub_1A9BCC(v31, v28, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  LODWORD(a2) = 0x141211u >> (8 * swift_getEnumCaseMultiPayload());
  sub_1A9C34(v28, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  sub_3E62F4();
  v58 = a2;
  ModernShelf.ItemKind.rawValue.getter(a2);
  sub_3E62D4();

  v60 = a1;
  sub_FBD0(a1, v25, &qword_4F6EA0, &qword_40AFD8);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA8, &qword_40AFE0);
  v33 = *(*(v32 - 8) + 48);
  if (v33(v25, 1, v32) == 1)
  {
    sub_FCF8(v25, &qword_4F6EA0, &qword_40AFD8);
  }

  else
  {
    sub_FCF8(v25, &qword_4F1AC0, &qword_3FEAB0);
  }

  sub_3E62D4();

  v57 = sub_3E62E4();
  v35 = v34;

  sub_FBD0(v60, v22, &qword_4F6EA0, &qword_40AFD8);
  if (v33(v22, 1, v32) == 1)
  {
    sub_FCF8(v22, &qword_4F6EA0, &qword_40AFD8);
    v36 = type metadata accessor for Header(0);
    (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
  }

  else
  {

    sub_FACC(v22, v62, &qword_4F1AC0, &qword_3FEAB0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560, &qword_3F6D80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_3F5630;
  sub_1A75C0((v37 + 32));
  v38 = sub_3E5DC4();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v55[1] = v39 + 56;
  v56 = v40;
  v40(v63, 1, 1, v38);

  sub_3E85C4();
  sub_FBD0(v60, v19, &qword_4F6EA0, &qword_40AFD8);
  if (v33(v19, 1, v32) == 1)
  {
    v41 = &qword_4F6EA0;
    v42 = &qword_40AFD8;
    v43 = v19;
  }

  else
  {

    v44 = v55[0];
    sub_FACC(v19, v55[0], &qword_4F1AC0, &qword_3FEAB0);
    v45 = type metadata accessor for Header(0);
    if ((*(*(v45 - 8) + 48))(v44, 1, v45) != 1)
    {

      sub_1A9C34(v44, type metadata accessor for Header);
      goto LABEL_13;
    }

    v41 = &qword_4F1AC0;
    v42 = &qword_3FEAB0;
    v43 = v44;
  }

  sub_FCF8(v43, v41, v42);
LABEL_13:
  v46 = v59;
  v47 = v57;
  sub_3EC584();

  sub_1A9C34(v61, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  v48 = sub_3EC634();
  (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
  v49 = type metadata accessor for ModernShelf(0);
  v50 = v49[9];
  v51 = &a5[v49[8]];
  v56(&a5[v50], 1, 1, v38);
  *a5 = v47;
  *(a5 + 1) = v35;
  sub_FACC(v62, &a5[v49[5]], &qword_4F1AC0, &qword_3FEAB0);
  v52 = &a5[v49[6]];
  *v52 = v58;
  v52[1] = 0;
  *(v52 + 3) = 256;
  *(v52 + 2) = 0;
  *(v52 + 1) = 1;
  *&a5[v49[7]] = v37;
  sub_51F9C(v63, &a5[v50], &unk_4E9EE0, &unk_3F5BC0);
  a5[v49[10]] = 1;
  a5[v49[11]] = 0;
  v53 = &a5[v49[12]];
  *(v53 + 4) = 0;
  *v53 = 0u;
  *(v53 + 1) = 0u;
  result = sub_FACC(v46, &a5[v49[13]], &unk_4E9170, &unk_3F4890);
  *v51 = 0;
  *(v51 + 1) = 0;
  return result;
}

uint64_t sub_1A4D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v45 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v5 - 8);
  v46 = &v42 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v7 - 8);
  v49 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0, &qword_3FEAB0);
  __chkstk_darwin(v9 - 8);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v48 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA0, &qword_40AFD8);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v42 - v17;
  __chkstk_darwin(v19);
  v21 = &v42 - v20;
  sub_3E62F4();
  v47 = a1;
  sub_FBD0(a1, v21, &qword_4F6EA0, &qword_40AFD8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EA8, &qword_40AFE0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v21, 1, v22) == 1)
  {
    sub_FCF8(v21, &qword_4F6EA0, &qword_40AFD8);
  }

  else
  {
    sub_FCF8(v21, &qword_4F1AC0, &qword_3FEAB0);
  }

  sub_3E62D4();

  v44 = sub_3E62E4();
  v25 = v24;

  sub_FBD0(v47, v18, &qword_4F6EA0, &qword_40AFD8);
  if (v23(v18, 1, v22) == 1)
  {
    sub_FCF8(v18, &qword_4F6EA0, &qword_40AFD8);
    v26 = type metadata accessor for Header(0);
    (*(*(v26 - 8) + 56))(v48, 1, 1, v26);
  }

  else
  {

    sub_FACC(v18, v48, &qword_4F1AC0, &qword_3FEAB0);
  }

  v27 = sub_3E5DC4();
  v43 = *(*(v27 - 8) + 56);
  v43(v49, 1, 1, v27);

  sub_3E85C4();
  sub_FBD0(v47, v15, &qword_4F6EA0, &qword_40AFD8);
  if (v23(v15, 1, v22) == 1)
  {
    v28 = &qword_4F6EA0;
    v29 = &qword_40AFD8;
    v30 = v15;
  }

  else
  {

    v31 = v42;
    sub_FACC(v15, v42, &qword_4F1AC0, &qword_3FEAB0);
    v32 = type metadata accessor for Header(0);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
    {

      sub_1A9C34(v31, type metadata accessor for Header);
      goto LABEL_13;
    }

    v28 = &qword_4F1AC0;
    v29 = &qword_3FEAB0;
    v30 = v31;
  }

  sub_FCF8(v30, v28, v29);
LABEL_13:
  v33 = v46;
  v34 = v44;
  sub_3EC584();

  v35 = sub_3EC634();
  (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
  v36 = type metadata accessor for ModernShelf(0);
  v37 = v36[9];
  v38 = (a3 + v36[8]);
  v43(a3 + v37, 1, 1, v27);
  *a3 = v34;
  a3[1] = v25;
  sub_FACC(v48, a3 + v36[5], &qword_4F1AC0, &qword_3FEAB0);
  v39 = a3 + v36[6];
  *v39 = 10;
  *(v39 + 3) = 256;
  *(v39 + 2) = 0;
  *(v39 + 1) = 1;
  *(a3 + v36[7]) = v45;

  sub_51F9C(v49, a3 + v37, &unk_4E9EE0, &unk_3F5BC0);
  *(a3 + v36[10]) = 1;
  *(a3 + v36[11]) = 0;
  v40 = a3 + v36[12];
  *(v40 + 4) = 0;
  *v40 = 0u;
  *(v40 + 1) = 0u;
  result = sub_FACC(v33, a3 + v36[13], &unk_4E9170, &unk_3F4890);
  *v38 = 0;
  v38[1] = 0;
  return result;
}

uint64_t sub_1A544C(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = sub_3EC544();
  __chkstk_darwin(v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_3EC1F4();
  v40 = *(v9 - 8);
  v41 = v9;
  __chkstk_darwin(v9);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() mainBundle];
  v33._countAndFlagsBits = 0xE000000000000000;
  v50._countAndFlagsBits = 0x535F4E4F49544341;
  v50._object = 0xEE004C4C415F4545;
  v53.value._countAndFlagsBits = 0;
  v53.value._object = 0;
  v15.super.isa = v14;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v16 = sub_3E5A74(v50, v53, v15, v54, 0, v33);
  v39 = v16;
  v18 = v17;

  v19 = *(v2 + 8);
  v20 = *(v2 + 16);
  v21 = *(v2 + 24);
  *v13 = *v2;
  *(v13 + 1) = v19;
  *(v13 + 2) = v20;
  v13[24] = v21;
  *(v13 + 4) = a1;
  v13[40] = v3;
  swift_storeEnumTagMultiPayload();
  *&v42 = v16;
  *(&v42 + 1) = v18;
  v38 = v18;

  sub_1748BC(a1, v3);

  v51._countAndFlagsBits = 43;
  v51._object = 0xE100000000000000;
  sub_3ED3D4(v51);
  v52._countAndFlagsBits = sub_3E83F4();
  sub_3ED3D4(v52);

  v36 = *(&v42 + 1);
  v37 = v42;
  sub_3E81B4();
  sub_3E8594();
  v22 = sub_3E5DC4();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850, &qword_3F5A50);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v23 = v35;
  sub_3EC1C4();
  v49 = v42;
  sub_FCF8(&v49, &unk_4F8A10, &unk_3F6750);
  v48 = v43;
  sub_FCF8(&v48, &qword_4E94E0, &unk_3F5640);
  v47 = v44;
  sub_FCF8(&v47, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v45, v46);
  sub_FCF8(v8, &unk_4E9EE0, &unk_3F5BC0);
  type metadata accessor for FlowAction(0);
  v24 = swift_allocObject();
  sub_1A9BCC(v13, v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v25 = (v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v25 = 0;
  v25[1] = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v24 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v27 = v40;
  v26 = v41;
  (*(v40 + 16))(v24 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v23, v41);
  v28 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v29 = sub_3EC634();
  (*(*(v29 - 8) + 56))(v24 + v28, 1, 1, v29);
  (*(v27 + 8))(v23, v26);
  sub_1A9C34(v13, type metadata accessor for FlowDestination);
  v30 = v36;
  *(v24 + 16) = v37;
  *(v24 + 24) = v30;
  v31 = v38;
  *(v24 + 32) = v39;
  *(v24 + 40) = v31;
  *(v24 + 48) = 48;
  return v24;
}

uint64_t sub_1A5A48@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v7 - 8);
  v9 = v27 - v8;
  v33 = v27 - v8;
  v31 = sub_3E7784();
  v10 = *(v31 - 8);
  v30 = *(v10 + 56);
  v32 = v10 + 56;
  v30(v9, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828, &qword_3F6DC0);
  v28 = type metadata accessor for ActionMenu.Child(0);
  v11 = *(*(v28 - 8) + 72);
  v12 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v13 = swift_allocObject();
  v29 = v13;
  *(v13 + 16) = xmmword_3F5310;
  v14 = (v13 + v12);
  sub_1A9BCC(v2, v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowEpisodesShelvesProvider.Info);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1A9C94(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for ShowEpisodesShelvesProvider.Info);
  *v14 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v14[1] = v17;
  v14[2] = sub_1A9CFC;
  v14[3] = v16;
  swift_storeEnumTagMultiPayload();
  v18 = (v14 + v11);
  sub_1A9BCC(v27[1], v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShowEpisodesShelvesProvider.Info);
  v19 = swift_allocObject();
  sub_1A9C94(v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v15, type metadata accessor for ShowEpisodesShelvesProvider.Info);
  *v18 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v18[1] = v20;
  v18[2] = sub_1A9D6C;
  v18[3] = v19;
  swift_storeEnumTagMultiPayload();
  v21 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v23 = v22;
  v24 = type metadata accessor for ActionMenu(0);
  v25 = *(v24 + 28);
  v30(&a1[v25], 1, 1, v31);
  *a1 = v21;
  *(a1 + 1) = v23;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  result = sub_51F9C(v33, &a1[v25], &qword_4F1D50, &unk_3F7520);
  *&a1[*(v24 + 32)] = v29;
  return result;
}

uint64_t sub_1A5DB4(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    do
    {
      v4 = (v1 + 40 + 16 * v3);
      v5 = v3;
      while (1)
      {
        if (v5 >= v2)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v3 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_32;
        }

        v6 = *(v4 - 1);
        v7 = *v4;
        sub_1748BC(v6, *v4);
        sub_1748BC(v6, v7);
        v8 = sub_3E8374();
        sub_6BF60(v6, v7);
        if (v8)
        {
          break;
        }

        result = sub_6BF60(v6, v7);
        ++v5;
        v4 += 16;
        if (v3 == v2)
        {
          goto LABEL_14;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_41CD0(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        result = sub_41CD0((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v6;
      *(v11 + 40) = v7;
    }

    while (v3 != v2);
LABEL_14:
    if (_swiftEmptyArrayStorage[2] <= 5uLL)
    {
      goto LABEL_29;
    }

    v12 = 0;
LABEL_16:
    v13 = (v1 + 40 + 16 * v12);
    for (i = v12; i < v2; ++i)
    {
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_34;
      }

      v15 = *(v13 - 1);
      v16 = *v13;
      sub_1748BC(v15, *v13);
      if ((sub_3E8374() & 1) == 0)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_41CD0(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_41CD0((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v15;
        *(v19 + 40) = v16;
        if (v12 != v2)
        {
          goto LABEL_16;
        }

        return _swiftEmptyArrayStorage;
      }

      result = sub_6BF60(v15, v16);
      v13 += 16;
      if (v12 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    if (_swiftEmptyArrayStorage[2] < 6uLL)
    {
LABEL_29:
    }

    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1A6040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v6 = a2;
  v61 = a5;
  v8 = sub_3E5FC4();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v10 - 8);
  v64 = &v55 - v11;
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v19 - 8);
  v67 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v55 - v22;
  sub_3E8394();
  v63 = v23;
  if (v24)
  {
    sub_3E7774();
    v25 = sub_3E7784();
    v26 = *(*(v25 - 8) + 56);
    v59 = (v25 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v27 = v23;
    v28 = 0;
  }

  else
  {
    v25 = sub_3E7784();
    v26 = *(*(v25 - 8) + 56);
    v59 = (v25 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v27 = v23;
    v28 = 1;
  }

  v62 = v25;
  v26(v27, v28, 1);
  v57 = sub_3E83F4();
  v56 = v29;
  v58 = sub_3E83E4();
  v30 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v31 = *v5;
  v32 = v5[1];
  sub_1F958(v5 + *(v30 + 48), &v69);
  v33 = swift_allocObject();
  sub_1FE90(&v69, v33 + 16);
  *(v33 + 56) = v31;
  *(v33 + 64) = v32;
  *(v33 + 72) = a1;
  *(v33 + 80) = v6;

  sub_1748BC(a1, v6);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v34 = type metadata accessor for ClosureAction(0);
  v35 = swift_allocObject();
  v36 = (v35 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v36 = sub_1A9F30;
  v36[1] = v33;
  v37 = *(v13 + 16);
  v55 = v15;
  v37(v15, v18, v12);
  v38 = sub_3EC634();
  v39 = v64;
  (*(*(v38 - 8) + 56))(v64, 1, 1, v38);

  v40 = v60;
  sub_3E5FB4();
  v41 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v43 = v42;

  (*(v65 + 8))(v40, v66);
  (*(v13 + 8))(v18, v12);
  *(v35 + 16) = v41;
  *(v35 + 24) = v43;
  *(v35 + 32) = 0;
  *(v35 + 40) = 0;
  *(v35 + 48) = 32;
  (*(v13 + 32))(v35 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v55, v12);
  sub_FACC(v39, v35 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v70 = v34;
  v71 = sub_1A9FB0(&qword_4F13D8, type metadata accessor for ClosureAction, "iJ\v");
  *&v69 = v35;
  v44 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v46 = v45;
  v47 = v67;
  sub_FACC(v63, v67, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(&v69, v68, &qword_4EDE00, &qword_3F9910);
  v48 = type metadata accessor for ActionMenu.Item(0);
  v49 = v48[7];
  sub_3E7784();
  v50 = v61;
  (*(*(v62 - 8) + 56))(v61 + v49, 1, 1);
  v51 = v48[8];
  v52 = v50 + v48[10];
  *(v52 + 32) = 0;
  *v52 = 0u;
  *(v52 + 16) = 0u;
  *v50 = v44;
  v50[1] = v46;
  v53 = v56;
  v50[2] = v57;
  v50[3] = v53;
  v50[4] = 0;
  v50[5] = 0;
  sub_51F9C(v47, v50 + v49, &qword_4F1D50, &unk_3F7520);
  *(v50 + v51) = 2;
  *(v50 + v48[9]) = (v58 & 1) == 0;
  sub_51F9C(v68, v52, &qword_4EDE00, &qword_3F9910);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(&v69, &qword_4EDE00, &qword_3F9910);
}

uint64_t sub_1A66A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v5 - 8);
  v7 = &v55 - v6;
  v66 = type metadata accessor for ActionMenu.Child(0);
  v8 = *(v66 - 8);
  __chkstk_darwin(v66);
  v10 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = sub_1A5DB4(a1);
  v15 = v14;
  v69 = _swiftEmptyArrayStorage;
  if (*(v13 + 16))
  {
    v61 = v8;
    v67 = v2;
    v68 = 0;
    v16 = sub_3E8374();
    v17 = v12;
    v64 = v15;
    v65 = a2;
    if (v16)
    {
      v18 = sub_3E83F4();
      v59 = v19;
      v60 = v18;
    }

    else
    {
      v21 = [objc_opt_self() mainBundle];
      v54._countAndFlagsBits = 0xE000000000000000;
      v70._countAndFlagsBits = 0x534145535F4C4C41;
      v70._object = 0xEB00000000534E4FLL;
      v72.value._countAndFlagsBits = 0;
      v72.value._object = 0;
      v22.super.isa = v21;
      v74._countAndFlagsBits = 0;
      v74._object = 0xE000000000000000;
      v23 = sub_3E5A74(v70, v72, v22, v74, 0, v54);
      v59 = v24;
      v60 = v23;
    }

    v25 = [objc_opt_self() mainBundle];
    v54._countAndFlagsBits = 0xE000000000000000;
    v71._countAndFlagsBits = 0x545F4E4F53414553;
    v71._object = 0xEC000000454C5449;
    v73.value._countAndFlagsBits = 0;
    v73.value._object = 0;
    v26.super.isa = v25;
    v75._countAndFlagsBits = 0;
    v75._object = 0xE000000000000000;
    v27 = sub_3E5A74(v71, v73, v26, v75, 0, v54);
    v57 = v28;
    v58 = v27;

    v29 = sub_3E7784();
    v30 = *(*(v29 - 8) + 56);
    v31 = v30(v7, 1, 1, v29);
    __chkstk_darwin(v31);
    *(&v55 - 4) = v67;
    *(&v55 - 3) = v11;
    v63 = v11;
    v62 = v17;
    LOBYTE(v54._countAndFlagsBits) = v17;
    v32 = v68;
    v56 = sub_2630EC(sub_1A9E8C, (&v55 - 6), v13);
    v68 = v32;

    v33 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v35 = v34;
    v36 = type metadata accessor for ActionMenu(0);
    v37 = *(v36 + 28);
    v30(v10 + v37, 1, 1, v29);
    *v10 = v33;
    v10[1] = v35;
    v38 = v57;
    v10[2] = v58;
    v10[3] = v38;
    v39 = v59;
    v10[4] = v60;
    v10[5] = v39;
    sub_51F9C(v7, v10 + v37, &qword_4F1D50, &unk_3F7520);
    *(v10 + *(v36 + 32)) = v56;
    swift_storeEnumTagMultiPayload();
    v40 = sub_E0140(0, 1, 1, _swiftEmptyArrayStorage);
    v42 = v40[2];
    v41 = v40[3];
    if (v42 >= v41 >> 1)
    {
      v40 = sub_E0140((v41 > 1), v42 + 1, 1, v40);
    }

    a2 = v65;
    v43 = v61;
    v40[2] = v42 + 1;
    v20 = sub_1A9C94(v10, v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42, type metadata accessor for ActionMenu.Child);
    v69 = v40;
    v2 = v67;
    v11 = v63;
    v15 = v64;
    LOBYTE(v12) = v62;
  }

  else
  {
  }

  __chkstk_darwin(v20);
  *(&v55 - 4) = v2;
  *(&v55 - 3) = v11;
  LOBYTE(v54._countAndFlagsBits) = v12;
  v44 = sub_2630EC(sub_1AA134, (&v55 - 6), v15);

  sub_4143C(v44);
  v45 = sub_3E7784();
  v46 = *(*(v45 - 8) + 56);
  v46(v7, 1, 1, v45);
  v47 = v69;
  v48 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v50 = v49;
  v51 = type metadata accessor for ActionMenu(0);
  v52 = *(v51 + 28);
  v46(a2 + v52, 1, 1, v45);
  *a2 = v48;
  a2[1] = v50;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0;
  result = sub_51F9C(v7, a2 + v52, &qword_4F1D50, &unk_3F7520);
  *(a2 + *(v51 + 32)) = v47;
  return result;
}

uint64_t sub_1A6BEC@<X0>(uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = sub_3E5FC4();
  v70 = *(v3 - 8);
  v71 = v3;
  __chkstk_darwin(v3);
  v69 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v5 - 8);
  v67 = &v58 - v6;
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v58 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v14 - 8);
  v72 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  v19 = sub_3E7F44();
  v21 = v20;
  v22 = 1;
  if (v19 != sub_3E7F44() || v21 != v23)
  {
    v22 = sub_3EE804();
  }

  v24 = v22;
  v61 = v22;
  v25 = [objc_opt_self() mainBundle];
  v57._countAndFlagsBits = 0xE000000000000000;
  v77._countAndFlagsBits = 0xD00000000000001CLL;
  v77._object = 0x8000000000429CB0;
  v78.value._countAndFlagsBits = 0;
  v78.value._object = 0;
  v26.super.isa = v25;
  v79._countAndFlagsBits = 0;
  v79._object = 0xE000000000000000;
  v27 = sub_3E5A74(v77, v78, v26, v79, 0, v57);
  v65 = v28;
  v66 = v27;

  sub_3E7774();
  v63 = sub_3E7784();
  v29 = *(v63 - 8);
  v62 = *(v29 + 56);
  v64 = v29 + 56;
  v62(v18, 0, 1, v63);
  v30 = type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  v32 = *v2;
  v31 = v2[1];
  sub_1F958(v2 + *(v30 + 48), &v74);
  v33 = swift_allocObject();
  v60 = v18;
  v34 = v33;
  *(v33 + 16) = v24 & 1;
  sub_1FE90(&v74, v33 + 24);
  *(v34 + 64) = v32;
  *(v34 + 72) = v31;

  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  v35 = type metadata accessor for ClosureAction(0);
  v36 = swift_allocObject();
  v37 = (v36 + OBJC_IVAR____TtC8ShelfKit13ClosureAction_closure);
  *v37 = sub_1A9E10;
  v37[1] = v34;
  v38 = *(v8 + 16);
  v59 = v10;
  v39 = v7;
  v38(v10, v13, v7);
  v40 = sub_3EC634();
  v41 = v67;
  (*(*(v40 - 8) + 56))(v67, 1, 1, v40);

  v42 = v69;
  sub_3E5FB4();
  v43 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v45 = v44;

  (*(v70 + 8))(v42, v71);
  (*(v8 + 8))(v13, v39);
  *(v36 + 16) = v43;
  *(v36 + 24) = v45;
  *(v36 + 32) = 0;
  *(v36 + 40) = 0;
  *(v36 + 48) = 32;
  (*(v8 + 32))(v36 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v59, v39);
  sub_FACC(v41, v36 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v75 = v35;
  v76 = sub_1A9FB0(&qword_4F13D8, type metadata accessor for ClosureAction, "iJ\v");
  *&v74 = v36;
  v46 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
  v48 = v47;
  v49 = v72;
  sub_FACC(v60, v72, &qword_4F1D50, &unk_3F7520);
  sub_FBD0(&v74, v73, &qword_4EDE00, &qword_3F9910);
  v50 = type metadata accessor for ActionMenu.Item(0);
  v51 = v50[7];
  v52 = v68;
  v62(v68 + v51, 1, 1, v63);
  v53 = v50[8];
  v54 = v52 + v50[10];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *v52 = v46;
  v52[1] = v48;
  v55 = v65;
  v52[2] = v66;
  v52[3] = v55;
  v52[4] = 0;
  v52[5] = 0;
  sub_51F9C(v49, v52 + v51, &qword_4F1D50, &unk_3F7520);
  *(v52 + v53) = 2;
  *(v52 + v50[9]) = (v61 & 1) == 0;
  sub_51F9C(v73, v54, &qword_4EDE00, &qword_3F9910);
  type metadata accessor for ActionMenu.Child(0);
  swift_storeEnumTagMultiPayload();
  return sub_FCF8(&v74, &qword_4EDE00, &qword_3F9910);
}

uint64_t sub_1A72A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v3 - 8);
  v5 = &v20[-v4];
  if ((*(v1 + *(type metadata accessor for ShowEpisodesShelvesProvider.Info(0) + 36)) & 1) != 0 || (sub_3E8A64(), v20[15] == 17))
  {
    v6 = sub_3E7784();
    v7 = *(*(v6 - 8) + 56);
    v7(v5, 1, 1, v6);
    v8 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v10 = v9;
    v11 = type metadata accessor for ActionMenu(0);
    v12 = a1 + *(v11 + 28);
    v7(v12, 1, 1, v6);
    v13 = _swiftEmptyArrayStorage;
  }

  else
  {
    v14 = sub_3E7784();
    v15 = *(*(v14 - 8) + 56);
    v15(v5, 1, 1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA828, &qword_3F6DC0);
    v16 = *(type metadata accessor for ActionMenu.Child(0) - 8);
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v13 = swift_allocObject();
    *(v13 + 1) = xmmword_3F5630;
    sub_1A6BEC((v13 + v17));
    v8 = _s8ShelfKit10ActionMenuV2IDVAEycfC_0();
    v10 = v18;
    v11 = type metadata accessor for ActionMenu(0);
    v12 = a1 + *(v11 + 28);
    v15(v12, 1, 1, v14);
  }

  *a1 = v8;
  a1[1] = v10;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0;
  result = sub_51F9C(v5, v12, &qword_4F1D50, &unk_3F7520);
  *(a1 + *(v11 + 32)) = v13;
  return result;
}

uint64_t sub_1A7548@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShowEpisodesShelvesProvider.Info(0);
  sub_3E8A64();
  if (v4)
  {
    v2 = v4;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  sub_1A66A8(v2, a1);
}

uint64_t sub_1A75C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
  __chkstk_darwin(v5);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9BCC(v3, v7, type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v7[1];
      v11 = v7[2];
      *&v29 = *v7;
      v10 = v29;
      *(&v29 + 1) = v9;

      v32._countAndFlagsBits = 43;
      v32._object = 0xE100000000000000;
      sub_3ED3D4(v32);
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);

      v33._countAndFlagsBits = v12;
      v33._object = v13;
      sub_3ED3D4(v33);

      v14 = v29;
      *(&v30 + 1) = type metadata accessor for Action(0);
      v31 = sub_1A9FB0(&qword_4EDDF8, type metadata accessor for Action, "iJ\v");
      *&v29 = v11;
      v15 = type metadata accessor for Information(0);
      a1[3] = v15;
      a1[4] = sub_1A9FB0(&qword_4EDDE8, type metadata accessor for Information, protocol conformance descriptor for Information);
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
      v17 = *(v15 + 40);
      v18 = sub_3EC634();
      (*(*(v18 - 8) + 56))(boxed_opaque_existential_0Tm + v17, 1, 1, v18);
      *boxed_opaque_existential_0Tm = v14;
      boxed_opaque_existential_0Tm[2] = v10;
      boxed_opaque_existential_0Tm[3] = v9;
      *(boxed_opaque_existential_0Tm + 2) = 0u;
      *(boxed_opaque_existential_0Tm + 3) = 0u;
      sub_FBD0(&v29, (boxed_opaque_existential_0Tm + 8), &qword_4EDE00, &qword_3F9910);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0, &qword_40AB18);
      v19 = swift_allocObject();
      *(v19 + 20) = 0;

      sub_FCF8(&v29, &qword_4EDE00, &qword_3F9910);
      *(v19 + 16) = 1;

      boxed_opaque_existential_0Tm[13] = v19;
    }

    else
    {
      a1[3] = type metadata accessor for Link(0);
      a1[4] = sub_1A9FB0(&qword_4EDDC8, type metadata accessor for Link, protocol conformance descriptor for Link);
      v28 = __swift_allocate_boxed_opaque_existential_0Tm(a1);
      return sub_1A9C94(v7, v28, type metadata accessor for Link);
    }
  }

  else
  {
    v22 = *v7;
    v21 = v7[1];
    v23 = type metadata accessor for Information(0);
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    a1[3] = v23;
    a1[4] = sub_1A9FB0(&qword_4EDDE8, type metadata accessor for Information, protocol conformance descriptor for Information);
    v24 = __swift_allocate_boxed_opaque_existential_0Tm(a1);
    v25 = *(v23 + 40);
    v26 = sub_3EC634();
    (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
    *v24 = v22;
    v24[1] = v21;
    v24[2] = v22;
    v24[3] = v21;
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = 0;
    v24[7] = 0xE000000000000000;
    sub_FBD0(&v29, (v24 + 8), &qword_4EDE00, &qword_3F9910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F67A0, &qword_40AB18);
    v27 = swift_allocObject();
    *(v27 + 20) = 0;

    result = sub_FCF8(&v29, &qword_4EDE00, &qword_3F9910);
    *(v27 + 16) = 0;
    v24[13] = v27;
  }

  return result;
}

uint64_t sub_1A79D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>, unint64_t a4@<X0>)
{
  if (a2 >= a1)
  {
    if (a1 >= 13)
    {
      sub_1A818C(a1, a3);
      type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
      goto LABEL_12;
    }

    if (a1 < 1)
    {
      v14 = sub_3E83A4();
    }

    else
    {
      v14 = sub_1A8B34(a4, a1);
    }

    *a3 = v14;
    *(a3 + 1) = v15;
  }

  else
  {
    v7 = [objc_opt_self() mainBundle];
    if (a2)
    {
      v21._countAndFlagsBits = 0xE000000000000000;
      v23._countAndFlagsBits = 0xD000000000000015;
      v23._object = 0x8000000000429920;
      v25.value._countAndFlagsBits = 0;
      v25.value._object = 0;
      v8.super.isa = v7;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      sub_3E5A74(v23, v25, v8, v27, 0, v21);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_3F5630;
      *(v9 + 56) = &type metadata for Int;
      *(v9 + 64) = &protocol witness table for Int;
      *(v9 + 32) = a2;
      v10 = sub_3ED214();
      v12 = v11;

      v13 = sub_1A7BF4(a1);
      *a3 = v10;
      *(a3 + 1) = v12;
      *(a3 + 2) = v13;
      type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
      goto LABEL_12;
    }

    v21._countAndFlagsBits = 0xE000000000000000;
    v24._object = 0x8000000000429940;
    v24._countAndFlagsBits = 0xD000000000000014;
    v26.value._countAndFlagsBits = 0;
    v26.value._object = 0;
    v16.super.isa = v7;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    v17 = sub_3E5A74(v24, v26, v16, v28, 0, v21);
    v19 = v18;

    *a3 = v17;
    *(a3 + 1) = v19;
  }

  type metadata accessor for ShowEpisodesShelvesProvider.Info.Footer(0);
LABEL_12:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A7BF4(uint64_t a1)
{
  v3 = sub_3EC544();
  __chkstk_darwin(v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_3EC1F4();
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A9640(a1);
  v36 = v12;
  v14 = v13;
  v15 = *(v1 + 8);
  v16 = *(v1 + 16);
  v17 = *(v1 + 24);
  v18 = *(v1 + 32);
  *v11 = *v1;
  *(v11 + 1) = v15;
  *(v11 + 2) = v16;
  v11[24] = v17;
  *(v11 + 4) = v18;
  v19 = *(v1 + 40);
  v11[40] = v19;
  swift_storeEnumTagMultiPayload();
  *&v39 = v12;
  *(&v39 + 1) = v14;
  v35 = v14;

  sub_1748BC(v18, v19);

  v47._countAndFlagsBits = 43;
  v47._object = 0xE100000000000000;
  sub_3ED3D4(v47);
  v48._countAndFlagsBits = sub_3E83F4();
  sub_3ED3D4(v48);

  v33 = *(&v39 + 1);
  v34 = v39;
  sub_3E81B4();
  sub_3E8594();
  v20 = sub_3E5DC4();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850, &qword_3F5A50);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v21 = v32;
  sub_3EC1C4();
  v46 = v39;
  sub_FCF8(&v46, &unk_4F8A10, &unk_3F6750);
  v45 = v40;
  sub_FCF8(&v45, &qword_4E94E0, &unk_3F5640);
  v44 = v41;
  sub_FCF8(&v44, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v42, v43);
  sub_FCF8(v6, &unk_4E9EE0, &unk_3F5BC0);
  type metadata accessor for FlowAction(0);
  v22 = swift_allocObject();
  sub_1A9BCC(v11, v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v23 = (v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v23 = 0;
  v23[1] = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v22 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v25 = v37;
  v24 = v38;
  (*(v37 + 16))(v22 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v21, v38);
  v26 = OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics;
  v27 = sub_3EC634();
  (*(*(v27 - 8) + 56))(v22 + v26, 1, 1, v27);
  (*(v25 + 8))(v21, v24);
  sub_1A9C34(v11, type metadata accessor for FlowDestination);
  v28 = v33;
  *(v22 + 16) = v34;
  *(v22 + 24) = v28;
  v29 = v35;
  *(v22 + 32) = v36;
  *(v22 + 40) = v29;
  *(v22 + 48) = 48;
  return v22;
}

uint64_t sub_1A818C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_3E5FC4();
  v80 = *(v6 - 8);
  v81 = v6;
  __chkstk_darwin(v6);
  v79 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v8 - 8);
  v78 = &v63 - v9;
  v10 = sub_3EC544();
  __chkstk_darwin(v10 - 8);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v12 - 8);
  v14 = &v63 - v13;
  v15 = sub_3EC1F4();
  v73 = *(v15 - 8);
  v74 = v15;
  __chkstk_darwin(v15);
  v71 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v63 - v18;
  v19 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1A9640(a1);
  v76 = v23;
  v77 = v22;
  v24 = v23;
  *&v83 = 0;
  *(&v83 + 1) = 0xE000000000000000;
  sub_3EE3C4(52);
  v91._object = 0x8000000000429B00;
  v91._countAndFlagsBits = 0xD000000000000026;
  sub_3ED3D4(v91);
  v92._countAndFlagsBits = v22;
  v92._object = v24;
  sub_3ED3D4(v92);
  v93._countAndFlagsBits = 0x7265746C69665B5DLL;
  v93._object = 0xE90000000000003DLL;
  sub_3ED3D4(v93);
  v26 = *(v3 + 40);
  *&v90 = *(v3 + 32);
  v25 = v90;
  BYTE8(v90) = v26;
  sub_3EE554();
  v94._countAndFlagsBits = 93;
  v94._object = 0xE100000000000000;
  sub_3ED3D4(v94);
  v72 = *(&v83 + 1);
  v75 = v83;
  v27 = type metadata accessor for Link(0);
  v28 = *(v27 + 28);
  v29 = v27;
  v82 = v27;
  v30 = sub_3E7784();
  v31 = *(*(v30 - 8) + 56);
  v70 = a2;
  v31(&a2[v28], 1, 1, v30);
  v68 = &a2[*(v29 + 36)];
  v69 = v3;
  v32 = *(v3 + 8);
  v33 = *(v3 + 16);
  v34 = *(v3 + 24);
  *v21 = *v3;
  *(v21 + 1) = v32;
  *(v21 + 2) = v33;
  v21[24] = v34;
  *(v21 + 4) = v25;
  v21[40] = v26;
  v63 = v21;
  swift_storeEnumTagMultiPayload();

  sub_1748BC(v25, v26);
  sub_3E81B4();
  sub_3E8594();
  v35 = sub_3E5DC4();
  v36 = v14;
  (*(*(v35 - 8) + 56))(v14, 1, 1, v35);
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9850, &qword_3F5A50);
  sub_3EC044();
  *(swift_allocObject() + 16) = xmmword_3F5630;
  sub_3E8504();
  sub_3EBFC4();

  sub_3EC534();
  v37 = v66;
  sub_3EC1C4();
  v90 = v83;
  sub_FCF8(&v90, &unk_4F8A10, &unk_3F6750);
  v89 = v84;
  sub_FCF8(&v89, &qword_4E94E0, &unk_3F5640);
  v88 = v85;
  sub_FCF8(&v88, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v86, v87);
  sub_FCF8(v36, &unk_4E9EE0, &unk_3F5BC0);
  v38 = type metadata accessor for FlowAction(0);
  v39 = swift_allocObject();
  sub_1A9BCC(v21, v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationType, type metadata accessor for FlowDestination);
  type metadata accessor for FlowAction.DestinationType(0);
  swift_storeEnumTagMultiPayload();
  v40 = (v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_referrerUrl);
  *v40 = 0;
  v40[1] = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_presentationContext) = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_animationBehavior) = 0;
  *(v39 + OBJC_IVAR____TtC8ShelfKit10FlowAction_destinationPageHeader) = 0;
  v41 = v73;
  v42 = v71;
  v43 = v37;
  v44 = v37;
  v45 = v74;
  (*(v73 + 16))(v71, v43, v74);
  v65 = sub_3EC634();
  v46 = *(v65 - 8);
  v64 = *(v46 + 56);
  v67 = (v46 + 56);
  v47 = v78;
  v64(v78, 1, 1, v65);
  v48 = v79;
  sub_3E5FB4();
  v49 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v51 = v50;
  (*(v80 + 8))(v48, v81);
  (*(v41 + 8))(v44, v45);
  sub_1A9C34(v63, type metadata accessor for FlowDestination);
  *(v39 + 16) = v49;
  *(v39 + 24) = v51;
  *(v39 + 32) = 0;
  *(v39 + 40) = 0;
  *(v39 + 48) = 48;
  (*(v41 + 32))(v39 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v42, v45);
  sub_FACC(v47, v39 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v52 = v68;
  *(v68 + 3) = v38;
  v52[4] = sub_1A9FB0(&qword_4F8A40, type metadata accessor for FlowAction, "iJ\v");
  *v52 = v39;
  v53 = *(v82 + 40);
  sub_1A99E4();
  v54 = v72;

  sub_3E8574();
  v55 = v76;

  v56 = v70;
  v57 = v77;
  v58 = v75;
  sub_3EC5A4();

  v64(&v56[v53], 0, 1, v65);
  v59 = v82;
  v60 = *(v82 + 44);
  v61 = sub_3E5764();
  result = (*(*(v61 - 8) + 56))(&v56[v60], 1, 1, v61);
  *v56 = v58;
  *(v56 + 1) = v54;
  *(v56 + 2) = v57;
  *(v56 + 3) = v55;
  *(v56 + 4) = 0;
  *(v56 + 5) = 0;
  v56[*(v59 + 32)] = 48;
  return result;
}

unint64_t sub_1A8B34(unint64_t a1, unint64_t a2)
{
  v77 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EB0, &qword_40AFE8);
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin(v4);
  v72 = &v67 - v5;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EB8, &qword_40AFF0);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v68 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6EC0, &qword_40AFF8);
  v73 = *(v7 - 8);
  v74 = v7;
  __chkstk_darwin(v7);
  v70 = &v67 - v8;
  v79 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_22:
    v9 = sub_3EE5A4();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
LABEL_3:
      *&v67 = v2;
      v10 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_3EE3F4();
          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v10 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_22;
          }

          v11 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v19 = v79;
            if ((v79 & 0x8000000000000000) == 0)
            {
              goto LABEL_24;
            }

            goto LABEL_52;
          }
        }

        v12 = sub_3E7694();
        v14 = v13;
        v15 = sub_3E7694();
        v2 = v16;
        if (v12 == v15 && v14 == v16)
        {
        }

        else
        {
          v18 = sub_3EE804();

          if ((v18 & 1) == 0)
          {

            goto LABEL_6;
          }
        }

        v2 = &v79;
        sub_3EE494();
        sub_3EE4D4();
        sub_3EE4E4();
        sub_3EE4A4();
LABEL_6:
        ++v10;
        if (v11 == v9)
        {
          goto LABEL_19;
        }
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
  {
    goto LABEL_52;
  }

LABEL_24:
  if ((v19 & 0x4000000000000000) != 0)
  {
LABEL_52:
    v20 = sub_3EE5A4();
  }

  else
  {
    v20 = *(v19 + 16);
  }

  if (v20 > 0)
  {
    v21 = objc_opt_self();
    v22 = &selRef_errorWithDomain_code_userInfo_;
    v23 = [v21 mainBundle];
    v65._countAndFlagsBits = 0xE000000000000000;
    v80._object = 0x8000000000429C90;
    v80._countAndFlagsBits = 0xD000000000000015;
    v83.value._countAndFlagsBits = 0;
    v83.value._object = 0;
    v24.super.isa = v23;
    v87._countAndFlagsBits = 0;
    v87._object = 0xE000000000000000;
    sub_3E5A74(v80, v83, v24, v87, 0, v65);

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
    v26 = swift_allocObject();
    v67 = xmmword_3F5630;
    *(v26 + 16) = xmmword_3F5630;
    *(v26 + 56) = &type metadata for Int;
    *(v26 + 64) = &protocol witness table for Int;
    *(v26 + 32) = v20;
    v27 = sub_3ED214();
    v29 = v28;

    v30 = sub_DFAE8(0, 1, 1, _swiftEmptyArrayStorage);
    v32 = *(v30 + 2);
    v31 = *(v30 + 3);
    if (v32 >= v31 >> 1)
    {
      v30 = sub_DFAE8((v31 > 1), v32 + 1, 1, v30);
    }

    *(v30 + 2) = v32 + 1;
    v33 = &v30[16 * v32];
    *(v33 + 4) = v27;
    *(v33 + 5) = v29;
    v34 = v77;
    v35 = v77 - v20;
    if (__OFSUB__(v77, v20))
    {
      __break(1u);
    }

    else
    {
      if (v35 < 1)
      {
        v40 = v75;
        v41 = v76;
        v42 = v72;
        goto LABEL_36;
      }

      v36 = [v21 mainBundle];
      v66._countAndFlagsBits = 0xE000000000000000;
      v81._object = 0x8000000000426F40;
      v81._countAndFlagsBits = 0xD000000000000015;
      v84.value._countAndFlagsBits = 0;
      v84.value._object = 0;
      v37.super.isa = v36;
      v88._countAndFlagsBits = 0;
      v88._object = 0xE000000000000000;
      sub_3E5A74(v81, v84, v37, v88, 0, v66);

      v38 = swift_allocObject();
      *(v38 + 16) = v67;
      *(v38 + 56) = &type metadata for Int;
      *(v38 + 64) = &protocol witness table for Int;
      *(v38 + 32) = v35;
      v25 = sub_3ED214();
      v22 = v39;

      v29 = *(v30 + 2);
      v34 = *(v30 + 3);
      v27 = v29 + 1;
      if (v29 < v34 >> 1)
      {
LABEL_32:
        v40 = v75;
        v41 = v76;
        v42 = v72;
        *(v30 + 2) = v27;
        v43 = &v30[16 * v29];
        *(v43 + 4) = v25;
        *(v43 + 5) = v22;
LABEL_36:
        v78 = v30;
        v52 = v68;
        v53 = v69;
        v54 = v71;
        (*(v69 + 104))(v68, enum case for ListFormatStyle.ListType.and<A, B>(_:), v71);
        (*(v40 + 104))(v42, enum case for ListFormatStyle.Width.narrow<A, B>(_:), v41);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_5010E0, &unk_403600);
        sub_886BC(&qword_4F6EC8, &unk_5010E0, &unk_403600, &protocol conformance descriptor for [A]);
        v55 = v41;
        v56 = v70;
        sub_3E5814();
        (*(v40 + 8))(v42, v55);
        (*(v53 + 8))(v52, v54);
        sub_886BC(&qword_4F6ED0, &qword_4F6EC0, &qword_40AFF8, &protocol conformance descriptor for ListFormatStyle<A, B>);
        v57 = v74;
        sub_3ED4A4();
        (*(v73 + 8))(v56, v57);

        return v79;
      }
    }

    v30 = sub_DFAE8((v34 > 1), v27, 1, v30);
    goto LABEL_32;
  }

  v44 = sub_3E8404();
  v46 = v44;
  if (!v45)
  {
    v47 = [objc_opt_self() mainBundle];
    v65._countAndFlagsBits = 0xE000000000000000;
    v82._countAndFlagsBits = 0xD000000000000022;
    v82._object = 0x8000000000429C60;
    v85.value._countAndFlagsBits = 0;
    v85.value._object = 0;
    v48.super.isa = v47;
    v89._countAndFlagsBits = 0;
    v89._object = 0xE000000000000000;
    sub_3E5A74(v82, v85, v48, v89, 0, v65);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_3F5310;
    *(v49 + 56) = &type metadata for Int;
    *(v49 + 64) = &protocol witness table for Int;
    *(v49 + 32) = v77;
    *(v49 + 96) = &type metadata for Int64;
    *(v49 + 104) = &protocol witness table for Int64;
    *(v49 + 72) = v46;
    v50 = sub_3ED214();

    return v50;
  }

  if (v45 == 2)
  {
    if (v44 > 2)
    {
      if (v44 == 3)
      {
        v58 = "OUNT_PLAYED_FORMAT";
        v61 = [objc_opt_self() mainBundle];
      }

      else
      {
        if (v44 == 4)
        {
          v58 = "OUNT_SUBSCRIBER_FORMAT";
          v59 = [objc_opt_self() mainBundle];
          v65._countAndFlagsBits = 0xE000000000000000;
          v60._countAndFlagsBits = 0xD000000000000022;
          goto LABEL_50;
        }

        v58 = "SeeAllDownloaded";
        v61 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      if (!v44)
      {
        v59 = [objc_opt_self() mainBundle];
        v65._countAndFlagsBits = 0xE000000000000000;
        v60._object = 0x8000000000426F40;
        v60._countAndFlagsBits = 0xD000000000000015;
LABEL_51:
        v86.value._countAndFlagsBits = 0;
        v86.value._object = 0;
        v62.super.isa = v59;
        v90._countAndFlagsBits = 0;
        v90._object = 0xE000000000000000;
        sub_3E5A74(v60, v86, v62, v90, 0, v65);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_3F5630;
        *(v63 + 56) = &type metadata for Int;
        *(v63 + 64) = &protocol witness table for Int;
        *(v63 + 32) = v77;
        v64 = sub_3ED214();

        return v64;
      }

      if (v44 == 1)
      {
        v58 = "OUNT_DOWNLOADED_FORMAT";
        v59 = [objc_opt_self() mainBundle];
        v65._countAndFlagsBits = 0xE000000000000000;
        v60._countAndFlagsBits = 0xD000000000000024;
LABEL_50:
        v60._object = (v58 | 0x8000000000000000);
        goto LABEL_51;
      }

      v58 = "OUNT_BOOKMARKED_FORMAT";
      v61 = [objc_opt_self() mainBundle];
    }

    v59 = v61;
    v65._countAndFlagsBits = 0xE000000000000000;
    v60._countAndFlagsBits = 0xD000000000000026;
    goto LABEL_50;
  }

  sub_6BF60(v44, 1);
  result = sub_3EE574();
  __break(1u);
  return result;
}

uint64_t sub_1A9640(uint64_t a1)
{
  v2 = sub_3E8404();
  v4 = v2;
  if (!v3)
  {
    v5 = [objc_opt_self() mainBundle];
    v19._countAndFlagsBits = 0xD000000000000024;
    v18._countAndFlagsBits = 0xE000000000000000;
    v19._object = 0x8000000000429AD0;
    v20.value._countAndFlagsBits = 0;
    v20.value._object = 0;
    v6.super.isa = v5;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    sub_3E5A74(v19, v20, v6, v22, 0, v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_3F5310;
    *(v7 + 56) = &type metadata for Int64;
    *(v7 + 64) = &protocol witness table for Int64;
    *(v7 + 32) = v4;
    *(v7 + 96) = &type metadata for Int;
    *(v7 + 104) = &protocol witness table for Int;
    *(v7 + 72) = a1;
LABEL_19:
    v16 = sub_3ED214();

    return v16;
  }

  if (v3 == 2)
  {
    if (v2 > 2)
    {
      if (v2 == 3)
      {
        v12 = "EE_ALL_PLAYED_FORMAT";
        v13 = [objc_opt_self() mainBundle];
      }

      else
      {
        if (v2 == 4)
        {
          v8 = "EE_ALL_SUBSCRIBER_FORMAT";
          v10 = [objc_opt_self() mainBundle];
          v11._countAndFlagsBits = 0xD000000000000024;
LABEL_13:
          v18._countAndFlagsBits = 0xE000000000000000;
          v11._object = (v8 | 0x8000000000000000);
LABEL_18:
          v21.value._countAndFlagsBits = 0;
          v21.value._object = 0;
          v14.super.isa = v10;
          v23._countAndFlagsBits = 0;
          v23._object = 0xE000000000000000;
          sub_3E5A74(v11, v21, v14, v23, 0, v18);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1240, &qword_3F7660);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_3F5630;
          *(v15 + 56) = &type metadata for Int;
          *(v15 + 64) = &protocol witness table for Int;
          *(v15 + 32) = a1;
          goto LABEL_19;
        }

        v12 = "Impossible to hit this";
        v13 = [objc_opt_self() mainBundle];
      }
    }

    else
    {
      if (!v2)
      {
        v8 = "EE_ALL_UNPLAYED_FORMAT";
        v9 = [objc_opt_self() mainBundle];
        goto LABEL_12;
      }

      if (v2 == 1)
      {
        v8 = "EE_ALL_DOWNLOADED_FORMAT";
        v9 = [objc_opt_self() mainBundle];
LABEL_12:
        v10 = v9;
        v11._countAndFlagsBits = 0xD000000000000026;
        goto LABEL_13;
      }

      v12 = "EE_ALL_BOOKMARKED_FORMAT";
      v13 = [objc_opt_self() mainBundle];
    }

    v10 = v13;
    v18._countAndFlagsBits = 0xE000000000000000;
    v11._object = (v12 | 0x8000000000000000);
    v11._countAndFlagsBits = 0xD000000000000028;
    goto LABEL_18;
  }

  sub_6BF60(v2, 1);
  result = sub_3EE574();
  __break(1u);
  return result;
}

uint64_t sub_1A99E4()
{
  v0 = sub_3E8404();
  if (v1)
  {
    if (v1 == 2)
    {
      v3 = 0x6C6C41656553;
      v4 = 0x61536C6C41656553;
      v5 = 0x6C506C6C41656553;
      if (v0 != 4)
      {
        v5 = 0xD000000000000018;
      }

      if (v0 != 3)
      {
        v4 = v5;
      }

      v6 = 0x6E556C6C41656553;
      if (v0 != 1)
      {
        v6 = 0xD000000000000010;
      }

      if (v0)
      {
        v3 = v6;
      }

      if (v0 <= 2)
      {
        return v3;
      }

      else
      {
        return v4;
      }
    }

    else
    {
      sub_6BF60(v0, 1);
      result = sub_3EE574();
      __break(1u);
    }
  }

  else
  {
    strcpy(v7, "SeeAllSeason");
    BYTE5(v7[1]) = 0;
    HIWORD(v7[1]) = -5120;
    v8._countAndFlagsBits = sub_3EE7A4();
    sub_3ED3D4(v8);

    return v7[0];
  }

  return result;
}

uint64_t sub_1A9BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9C34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A9C94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9CFC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ShowEpisodesShelvesProvider.Info(0);

  return sub_1A7548(a1);
}

uint64_t sub_1A9DD0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1A9E10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  if (*(v0 + 16))
  {
    v3 = 1;
  }

  else
  {
    v3 = 4;
  }

  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1((v0 + 24), v4);
  return (*(v5 + 200))(v1, v2, v3, v4, v5);
}

uint64_t sub_1A9EE4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  sub_6BF60(*(v0 + 72), *(v0 + 80));

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_1A9F30()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
  return (*(v5 + 192))(v1, v2, v3, v6, v4, v5);
}

uint64_t sub_1A9FB0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9FF8(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1748BC(result, a2);
  }

  return result;
}

void sub_1AA00C(uint64_t a1)
{
  sub_1AA094();
  if (v1 <= 0x3F)
  {
    sub_1AA0C4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Link(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void *sub_1AA094()
{
  result = qword_4F6F78;
  if (!qword_4F6F78)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_4F6F78);
  }

  return result;
}

void sub_1AA0C4(uint64_t a1)
{
  if (!qword_4F6F80)
  {
    type metadata accessor for Action(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_4F6F80);
    }
  }
}

uint64_t sub_1AA158(double a1)
{
  v1 = type metadata accessor for ModernShelf(0);
  __swift_allocate_value_buffer(v1, qword_4F6FB0);
  v2 = __swift_project_value_buffer(v1, qword_4F6FB0);
  return sub_1AA1A4(v2);
}

uint64_t sub_1AA1A4@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v2 - 8);
  v44 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v40 = &v38 - v5;
  v43 = type metadata accessor for ToggleCellModel(0);
  __chkstk_darwin(v43);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  v8 = objc_opt_self();
  v9 = [v8 mainBundle];
  v36._countAndFlagsBits = 0xE000000000000000;
  v48._countAndFlagsBits = 0xD00000000000001ELL;
  v48._object = 0x8000000000429D80;
  v54.value._countAndFlagsBits = 0;
  v54.value._object = 0;
  v10.super.isa = v9;
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v11 = sub_3E5A74(v48, v54, v10, v56, 0, v36);
  v13 = v12;

  v14 = [v8 mainBundle];
  v37._countAndFlagsBits = 0xE000000000000000;
  v49._object = 0x8000000000429DA0;
  v49._countAndFlagsBits = 0xD000000000000019;
  v55.value._countAndFlagsBits = 0;
  v55.value._object = 0;
  v15.super.isa = v14;
  v57._countAndFlagsBits = 0;
  v57._object = 0xE000000000000000;
  v16 = sub_3E5A74(v49, v55, v15, v57, 0, v37);
  v18 = v17;

  v41 = sub_3EC634();
  v42 = *(*(v41 - 8) + 56);
  v19 = v40;
  v42(v40, 1, 1, v41);
  v46 = 0;
  v47 = 0xE000000000000000;
  v20 = KeyPath;
  v45 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F47F8, &unk_40B250);
  sub_3EE554();
  v50._countAndFlagsBits = 45;
  v50._object = 0xE100000000000000;
  sub_3ED3D4(v50);
  v51._countAndFlagsBits = v11;
  v51._object = v13;
  sub_3ED3D4(v51);
  v52._countAndFlagsBits = 45;
  v52._object = 0xE100000000000000;
  sub_3ED3D4(v52);
  v53._countAndFlagsBits = v16;
  v53._object = v18;
  sub_3ED3D4(v53);
  v21 = v47;
  *v7 = v46;
  v7[1] = v21;
  v7[2] = v20;
  v7[3] = v11;
  v7[4] = v13;
  v7[5] = v16;
  v7[6] = v18;
  v22 = v43;
  sub_FACC(v19, v7 + *(v43 + 32), &unk_4E9170, &unk_3F4890);
  v23 = type metadata accessor for ModernShelf(0);
  v24 = v23[5];
  v25 = type metadata accessor for Header(0);
  (*(*(v25 - 8) + 56))(&a1[v24], 1, 1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560, &qword_3F6D80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_3F5630;
  *(v26 + 56) = v22;
  *(v26 + 64) = sub_1AE3BC(&qword_4F71E0, type metadata accessor for ToggleCellModel, protocol conformance descriptor for ToggleCellModel);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v26 + 32));
  sub_1AE404(v7, boxed_opaque_existential_0Tm, type metadata accessor for ToggleCellModel);
  v28 = sub_3E5DC4();
  v29 = *(*(v28 - 8) + 56);
  v30 = v44;
  v29(v44, 1, 1, v28);
  v31 = &a1[v23[12]];
  *(v31 + 4) = 0;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v42(&a1[v23[13]], 1, 1, v41);
  v32 = v23[9];
  v33 = &a1[v23[8]];
  v29(&a1[v32], 1, 1, v28);
  *a1 = 0x656C67676F54;
  *(a1 + 1) = 0xE600000000000000;
  v34 = &a1[v23[6]];
  *v34 = 55;
  *(v34 + 3) = 256;
  *(v34 + 2) = 0;
  *(v34 + 1) = 1;
  *&a1[v23[7]] = v26;
  result = sub_17F4C4(v30, &a1[v32]);
  a1[v23[10]] = 1;
  a1[v23[11]] = 0;
  *v33 = 0;
  *(v33 + 1) = 0;
  return result;
}

uint64_t ShowListProvider.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();
}

uint64_t sub_1AA718@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3E9EA4();

  *a2 = v4;
  return result;
}

uint64_t sub_1AA798(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

uint64_t ShowListProvider.state.setter(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_3E9EB4();
}

void (*ShowListProvider.state.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_3E9E94();
  return sub_17FA18;
}

uint64_t ShowListProvider.$state.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_1AA994(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  sub_3E9E74();
  return swift_endAccess();
}

uint64_t sub_1AAA0C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8, &qword_40B070);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  sub_3E9E84();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t ShowListProvider.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8, &qword_40B070);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  sub_3E9E84();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ShowListProvider.$state.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8, &qword_40B070);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider__state;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  sub_3E9E74();
  swift_endAccess();
  return sub_17FF98;
}

uint64_t ShowListProvider.paginatedPublisher.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ShowListProvider.__allocating_init(asPartOf:kind:pageSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_allocObject();
  v6 = sub_1ADAE4(a1, v4, a3);

  return v6;
}

uint64_t ShowListProvider.init(asPartOf:kind:pageSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1ADAE4(a1, a2, a3);

  return v3;
}

Swift::Void __swiftcall ShowListProvider.start()()
{
  v133 = *v0;
  v1 = sub_3EDBA4();
  v119 = *(v1 - 8);
  v120 = v1;
  __chkstk_darwin(v1);
  v115 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FE0, &qword_40B078);
  v118 = *(v116 - 8);
  __chkstk_darwin(v116);
  v113 = &v82 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FE8, &qword_40B080);
  v5 = *(v4 - 8);
  v121 = v4;
  v122 = v5;
  __chkstk_darwin(v4);
  v114 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FF0, &qword_40B088);
  v8 = *(v7 - 8);
  v123 = v7;
  v124 = v8;
  __chkstk_darwin(v7);
  v117 = &v82 - v9;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FF8, &qword_40B090);
  v110 = *(v109 - 8);
  __chkstk_darwin(v109);
  v106 = &v82 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7000, &qword_40B098);
  v112 = *(v111 - 8);
  __chkstk_darwin(v111);
  v108 = &v82 - v11;
  v97 = type metadata accessor for ObserverQueue(0);
  __chkstk_darwin(v97);
  v95 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7008, &qword_40B0A0);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v82 - v13;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7010, &qword_40B0A8);
  v134 = *(v132 - 8);
  __chkstk_darwin(v132);
  v107 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v128 = &v82 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD8, &qword_40B070);
  v135 = *(v126 - 8);
  __chkstk_darwin(v126);
  v92 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = &v82 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7018, &qword_40B0B0);
  v125 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v82 - v20;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7020, &unk_40B0B8);
  v89 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v82 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0, &qword_3FA180);
  __chkstk_darwin(v22 - 8);
  v24 = &v82 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7028, &qword_40B0C8);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v82 - v27;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7030, qword_40B0D0);
  v131 = *(v129 - 8);
  __chkstk_darwin(v129);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v130 = &v82 - v32;
  v33 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  swift_getKeyPath();
  sub_3E5C94();

  v94 = sub_801B4();
  v34 = sub_3EDBC4();
  v136 = v34;
  v99 = sub_3EDB64();
  v35 = *(v99 - 8);
  v98 = *(v35 + 56);
  v100 = v35 + 56;
  v93 = v24;
  v98(v24, 1, 1, v99);
  sub_886BC(&qword_4F7038, &qword_4F7028, &qword_40B0C8, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
  v96 = sub_1AE3BC(&qword_4F1D30, sub_801B4, &protocol conformance descriptor for OS_dispatch_queue);
  v36 = v130;
  sub_3EA114();
  sub_FCF8(v24, &qword_4F69E0, &qword_3FA180);

  (*(v26 + 8))(v28, v25);
  *(swift_allocObject() + 16) = v33;
  sub_1ADDD8();
  v105 = v33;
  v37 = sub_3EDA14();

  (*(v131 + 16))(v30, v36, v129);
  v104 = v37;
  v136 = v37;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7048, &unk_40B120);
  sub_886BC(&qword_4F7050, &qword_4F7030, qword_40B0D0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v83 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_886BC(&qword_4F7058, &qword_4F7048, &unk_40B120, &protocol conformance descriptor for AnyPublisher<A, B>);
  v38 = v84;
  sub_3E9B54();
  v39 = v127;
  LODWORD(v25) = *(v127 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_kind);
  v40 = swift_allocObject();
  *(v40 + 16) = v25;
  LOBYTE(v33) = v25;
  v85 = v25;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1ADE2C;
  *(v41 + 24) = v40;
  v91 = &protocol conformance descriptor for Publishers.CombineLatest<A, B>;
  sub_886BC(&qword_4F7060, &qword_4F7018, &qword_40B0B0, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
  v42 = v86;
  v43 = v87;
  sub_3EA024();

  v125[1](v38, v43);
  swift_beginAccess();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  v45 = v90;
  v87 = v44;
  sub_3E9E74();
  swift_endAccess();
  v125 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_886BC(&qword_4F7068, &qword_4F7020, &unk_40B0B8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v46 = v88;
  sub_3EA1B4();
  (*(v89 + 8))(v42, v46);
  v47 = v135;
  v48 = v126;
  (*(v135 + 16))(v92, v45, v126);
  swift_beginAccess();
  sub_3E9E84();
  swift_endAccess();
  v49 = *(v47 + 8);
  v135 = v47 + 8;
  v92 = v49;
  (v49)(v45, v48);
  v50 = *(v39 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryDataProvider);
  v51 = *(v39 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryDataProvider + 8);
  ObjectType = swift_getObjectType();
  (*(v51 + 248))(1, 1, ObjectType, v51);
  v53 = v95;
  swift_storeEnumTagMultiPayload();
  v54 = sub_188E58(v53);

  sub_1AE35C(v53, type metadata accessor for ObserverQueue);
  v136 = v54;
  *(swift_allocObject() + 16) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F61E0, &qword_40A670);
  sub_886BC(&qword_4F61F0, &qword_4F61E0, &qword_40A670, v83);
  v55 = v101;
  sub_3EA024();

  sub_886BC(&qword_4F7078, &qword_4F7008, &qword_40B0A0, v125);
  v56 = v128;
  v57 = v102;
  sub_3EA174();
  (*(v103 + 8))(v55, v57);
  swift_beginAccess();
  v58 = v39;
  sub_3E9E74();
  swift_endAccess();
  sub_886BC(&qword_4F7080, &qword_4F6FD8, &qword_40B070, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1ADEE8();
  v59 = v106;
  v60 = v126;
  sub_3EA174();
  (v92)(v45, v60);
  v61 = *(v58 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_pageSize);
  v62 = swift_allocObject();
  v62[2] = v50;
  v62[3] = v51;
  v63 = v133;
  v62[4] = v61;
  v62[5] = v63;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0, &unk_40B130);
  sub_886BC(&qword_4F7098, &qword_4F6FF8, &qword_40B090, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v64 = v108;
  v65 = v109;
  sub_3EA024();

  (*(v110 + 8))(v59, v65);
  v66 = v125;
  sub_886BC(&qword_4F70A0, &qword_4F7000, &qword_40B098, v125);
  sub_886BC(&qword_4F59A8, &qword_4F59A0, &unk_40B130, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v67 = v111;
  v68 = sub_3E9EE4();
  (*(v112 + 8))(v64, v67);
  (*(v134 + 16))(v107, v56, v132);
  v136 = v68;
  sub_886BC(&qword_4F70A8, &qword_4F7010, &qword_40B0A8, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  sub_886BC(&qword_4F59B0, &qword_4F59A0, &unk_40B130, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);

  v69 = v113;
  sub_3E9B54();
  v70 = v115;
  sub_3EDB74();
  v71 = sub_3EDBC4();
  v136 = v71;
  v72 = v93;
  v98(v93, 1, 1, v99);
  sub_886BC(&qword_4F70B0, &qword_4F6FE0, &qword_40B078, v91);
  v73 = v114;
  v74 = v116;
  sub_3EA124();
  sub_FCF8(v72, &qword_4F69E0, &qword_3FA180);

  (*(v119 + 8))(v70, v120);
  (*(v118 + 8))(v69, v74);
  v75 = swift_allocObject();
  *(v75 + 16) = v85;
  *(v75 + 24) = v133;
  v76 = swift_allocObject();
  *(v76 + 16) = sub_1ADF90;
  *(v76 + 24) = v75;
  type metadata accessor for PageContent(0);
  sub_886BC(&qword_4F70B8, &qword_4F6FE8, &qword_40B080, &protocol conformance descriptor for Publishers.Debounce<A, B>);
  v77 = v117;
  v78 = v121;
  sub_3EA024();

  (*(v122 + 8))(v73, v78);
  v79 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830, &unk_40A060);
  sub_886BC(&qword_4F70C0, &qword_4F6FF0, &qword_40B088, v66);
  sub_886BC(&unk_4F8840, &qword_4F8830, &unk_40A060, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v80 = v123;
  sub_3EA164();
  (*(v124 + 8))(v77, v80);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0, &qword_40B140);
  sub_886BC(&qword_4F59C8, &qword_4F59C0, &qword_40B140, &protocol conformance descriptor for [A]);
  sub_3E9C94();
  swift_endAccess();

  (*(v134 + 8))(v128, v132);
  (*(v131 + 8))(v130, v129);
  v81 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher;
  swift_beginAccess();
  *(v79 + v81) = v68;
}

uint64_t sub_1AC5E4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v24 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978, &unk_40B230);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  v12 = *a1;
  v13 = v12 >> 6;
  v14 = 2;
  if ((v12 >> 6) != 1)
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12 >> 6;
  }

  if (v13)
  {
    v16 = v12 & 0x3F;
  }

  else
  {
    v16 = *a1;
  }

  ObjectType = swift_getObjectType();
  v18 = ShowsSortType.showLockupStyle.getter(v16, v25);
  v19 = (*(a2 + 192))(v15, 1, v16, v25, a3, ObjectType, a2, v18);
  v27[3] = v25[3];
  v27[4] = v25[4];
  v28 = v26;
  v27[0] = v25[0];
  v27[1] = v25[1];
  v27[2] = v25[2];
  sub_1AE46C(v27);
  *&v25[0] = v19;
  *(swift_allocObject() + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71E8, &unk_40B260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5988, &qword_40A048);
  sub_886BC(&qword_4F71F0, &qword_4F71E8, &unk_40B260, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v20 = sub_3E8814();

  *&v25[0] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5998, &unk_40A050);
  *(swift_allocObject() + 16) = xmmword_3F5630;
  v21 = type metadata accessor for ModernShelf(0);
  (*(*(v21 - 8) + 56))(v11, 1, 2, v21);
  sub_3E95C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59A0, &unk_40B130);
  sub_886BC(&qword_4F59A8, &qword_4F59A0, &unk_40B130, &protocol conformance descriptor for AnyPaginatedPublisher<A, B>);
  v22 = sub_3E8824();

  *v24 = v22;
  return result;
}

uint64_t sub_1AC95C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71F8, &unk_40B270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978, &unk_40B230);
  return sub_3E95B4();
}

uint64_t sub_1AC9E8@<X0>(unint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v4 - 8);
  v6 = &v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v25 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1AC0, &qword_3FEAB0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - v11;
  v13 = *a1;
  v14 = type metadata accessor for Header(0);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v26 = sub_772E0(v13);
  v15 = sub_3E5DC4();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 1, 1, v15);
  sub_3E85C4();
  sub_3EC584();

  v17 = sub_3EC634();
  (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
  v18 = type metadata accessor for ModernShelf(0);
  v19 = v18[9];
  v20 = &a2[v18[8]];
  v16(&a2[v19], 1, 1, v15);
  *a2 = 0xD00000000000001ELL;
  *(a2 + 1) = 0x8000000000429D00;
  sub_FACC(v12, &a2[v18[5]], &qword_4F1AC0, &qword_3FEAB0);
  v21 = &a2[v18[6]];
  *v21 = 27;
  *(v21 + 3) = 256;
  *(v21 + 2) = 0;
  *(v21 + 1) = 1;
  v22 = v25;
  *&a2[v18[7]] = v26;
  sub_17F4C4(v22, &a2[v19]);
  a2[v18[10]] = 1;
  a2[v18[11]] = 0;
  v23 = &a2[v18[12]];
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  sub_FACC(v6, &a2[v18[13]], &unk_4E9170, &unk_3F4890);
  *v20 = 0;
  *(v20 + 1) = 0;
  return (*(*(v18 - 1) + 56))(a2, 0, 2, v18);
}

uint64_t sub_1ACD60@<X0>(int a1@<W0>, unsigned int a2@<W2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v46 = a3;
  v44 = a1;
  v45 = a2;
  v5 = type metadata accessor for ModernPage(0);
  __chkstk_darwin(v5 - 8);
  v47 = &v41[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v41[-v8];
  v10 = type metadata accessor for ModernShelf(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v43 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v41[-v14];
  __chkstk_darwin(v16);
  v18 = &v41[-v17];
  __chkstk_darwin(v19);
  v48 = &v41[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5978, &unk_40B230);
  __chkstk_darwin(v21);
  v23 = &v41[-v22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5988, &qword_40A048);
  sub_3E95D4();
  v24 = sub_3E95E4();
  if (sub_3E9544())
  {
    sub_FCF8(v23, &qword_4F5978, &unk_40B230);
    *a4 = 1;
    type metadata accessor for PageContent(0);
    return swift_storeEnumTagMultiPayload();
  }

  sub_3E9514();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_FCF8(v9, &unk_503DA0, &unk_3FF1B0);
LABEL_13:
    static ContentUnavailablePage.emptyLibrary.getter(a4);
    sub_FCF8(v23, &qword_4F5978, &unk_40B230);
    type metadata accessor for PageContent(0);
    return swift_storeEnumTagMultiPayload();
  }

  v42 = v24;
  v25 = v48;
  sub_1AE404(v9, v48, type metadata accessor for ModernShelf);
  v49 = *&v25[*(v10 + 28)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A88, &unk_40B240);
  sub_886BC(&qword_4F5A90, &qword_4F5A88, &unk_40B240, &protocol conformance descriptor for [A]);
  if ((sub_3ED894() & 1) == 0)
  {
    sub_1AE35C(v25, type metadata accessor for ModernShelf);
    goto LABEL_13;
  }

  if (v44)
  {
    if (qword_4E8A18 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v10, qword_4F6FB0);
    sub_17F3F0(v26, v18, type metadata accessor for ModernShelf);
    v27 = sub_E02B0(0, 1, 1, _swiftEmptyArrayStorage);
    v29 = v27[2];
    v28 = v27[3];
    if (v29 >= v28 >> 1)
    {
      v27 = sub_E02B0((v28 > 1), v29 + 1, 1, v27);
    }

    v27[2] = v29 + 1;
    sub_1AE404(v18, v27 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, type metadata accessor for ModernShelf);
  }

  else
  {
    v27 = _swiftEmptyArrayStorage;
  }

  sub_17F3F0(v25, v15, type metadata accessor for ModernShelf);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_E02B0(0, v27[2] + 1, 1, v27);
  }

  v32 = v27[2];
  v31 = v27[3];
  if (v32 >= v31 >> 1)
  {
    v27 = sub_E02B0((v31 > 1), v32 + 1, 1, v27);
  }

  v27[2] = v32 + 1;
  v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v34 = *(v11 + 72);
  sub_1AE404(v15, v27 + v33 + v34 * v32, type metadata accessor for ModernShelf);
  if (v42)
  {
    v35 = v43;
    static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, v43);
    v37 = v27[2];
    v36 = v27[3];
    if (v37 >= v36 >> 1)
    {
      v27 = sub_E02B0((v36 > 1), v37 + 1, 1, v27);
    }

    v27[2] = v37 + 1;
    sub_1AE404(v35, v27 + v33 + v37 * v34, type metadata accessor for ModernShelf);
    v25 = v48;
  }

  v38 = v47;
  sub_1AD42C(v45, v27, v47);

  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668, &unk_40A6A0) + 48);
  sub_17F3F0(v38, a4, type metadata accessor for ModernPage);
  v40 = sub_3E66E4();
  sub_1AE35C(v38, type metadata accessor for ModernPage);
  sub_FCF8(v23, &qword_4F5978, &unk_40B230);
  a4[v39] = v40;
  type metadata accessor for PageContent(0);
  swift_storeEnumTagMultiPayload();
  return sub_1AE35C(v25, type metadata accessor for ModernShelf);
}

uint64_t sub_1AD42C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_3EC544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_3E8024();
  v15 = v14;
  if (a1 == 2)
  {
    v21 = sub_3E7A94();
    v23 = v22;
    v34 = v13;
    v35 = v15;
    v51._countAndFlagsBits = 95;
    v51._object = 0xE100000000000000;
    sub_3ED3D4(v51);
    v52._countAndFlagsBits = v21;
    v52._object = v23;
    sub_3ED3D4(v52);

    sub_3ECCE4();
    v19 = sub_3E7A94();
  }

  else
  {
    if (a1 != 7)
    {
      v29 = sub_3E7B24();
      v31 = v30;
      v34 = v13;
      v35 = v15;
      v53._countAndFlagsBits = 95;
      v53._object = 0xE100000000000000;
      sub_3ED3D4(v53);
      v54._countAndFlagsBits = v29;
      v54._object = v31;
      sub_3ED3D4(v54);

      sub_3ECCE4();
      v28 = type metadata accessor for ModernPage(0);
      sub_3EC154();
      goto LABEL_7;
    }

    v16 = sub_3E7AC4();
    v18 = v17;
    v34 = v13;
    v35 = v15;
    v49._countAndFlagsBits = 95;
    v49._object = 0xE100000000000000;
    sub_3ED3D4(v49);
    v50._countAndFlagsBits = v16;
    v50._object = v18;
    sub_3ED3D4(v50);

    sub_3ECCE4();
    v19 = sub_3E7AC4();
  }

  v24 = v19;
  v25 = v20;
  v26 = sub_3E8024();
  v34 = v24;
  v35 = v25;
  v36 = v26;
  v37 = v27;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  sub_3EC534();
  sub_3E67A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F8A70, &unk_407420);
  sub_3EC0B4();
  *(swift_allocObject() + 16) = xmmword_3F5310;
  sub_3EC084();
  sub_3EC074();
  MetricsPageFields.metricsFields.getter();
  (*(v7 + 16))(v9, v12, v6);
  v28 = type metadata accessor for ModernPage(0);
  sub_3EC0C4();
  v48 = v41;
  sub_FCF8(&v48, &unk_4F8A10, &unk_3F6750);
  v47 = v42;
  sub_FCF8(&v47, &qword_4E94E0, &unk_3F5640);
  v46 = v43;
  sub_FCF8(&v46, &unk_4F8A20, &unk_3F6760);
  sub_16AC0(v44, v45);
  (*(v7 + 8))(v12, v6);

LABEL_7:
  *(a3 + *(v28 + 24)) = a2;
}

uint64_t ShowListProvider.deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryObserverProvider));

  return v0;
}

uint64_t ShowListProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider__state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6FD0, &unk_40E630);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryObserverProvider));

  return swift_deallocClassInstance();
}

uint64_t _s8ShelfKit16ShowListProviderC5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1 >> 6;
  if (!v3)
  {
    if (v2 <= 0x3F)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (v3 == 1)
  {
    if ((v2 & 0xC0) == 0x40)
    {
      goto LABEL_8;
    }

LABEL_13:
    v9 = 0;
    return v9 & 1;
  }

  if ((v2 & 0xC0) != 0x80)
  {
    goto LABEL_13;
  }

LABEL_8:
  v4 = sub_3E7B74();
  v6 = v5;
  if (v4 == sub_3E7B74() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_3EE804();
  }

  return v9 & 1;
}

uint64_t sub_1ADAE4(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v4 = v3;
  v7 = a2;
  v8 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v8);
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_paginatedPublisher) = 0;
  v10 = OBJC_IVAR____TtC8ShelfKit16ShowListProvider_pageContent;
  v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)] = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830, &unk_40A060);
  swift_allocObject();
  *(v3 + v10) = sub_3E9D94();
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_subscriptions) = _swiftEmptyArrayStorage;
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_kind) = a2;
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_pageSize) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50, &qword_3F6190);
  sub_3EC394();
  sub_1D4F0(v17, v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F69D0, &qword_3FF070);
  sub_3EC394();
  *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryDataProvider) = v17[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB40, &qword_40B280);
  sub_3EC394();
  sub_1D4F0(v17, v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryObserverProvider);
  v11 = *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController + 24);
  v12 = *(v3 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController + 32);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController), *(v4 + OBJC_IVAR____TtC8ShelfKit16ShowListProvider_libraryActionController + 24));
  v13 = (*(v12 + 176))(v11, v12);
  if (v7 == 7)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2 | 0x80;
  }

  swift_beginAccess();
  v16[15] = v14;
  sub_3E9E64();
  swift_endAccess();
  return v4;
}

id sub_1ADD2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showListShowsAllShows];
  *a2 = result;
  return result;
}

uint64_t sub_1ADD74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1ADDAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_3EDA24();
  *a1 = result;
  return result;
}

unint64_t sub_1ADDD8()
{
  result = qword_4F7040;
  if (!qword_4F7040)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for ShowsSortType, &type metadata for ShowsSortType, v0, v1);
    atomic_store(result, &qword_4F7040);
  }

  return result;
}

uint64_t sub_1ADE2C@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  v4 = *(v3 + 16);
  v5 = a2 | 0x40;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (v4 == 7)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 | 0x80;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1ADE50()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1ADECC@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v4 = *(v2 + 16) == 7 && *result != 0;
  *a2 = v4;
  return result;
}

unint64_t sub_1ADEE8()
{
  result = qword_4F7088;
  if (!qword_4F7088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ShowListProvider.State, &type metadata for ShowListProvider.State, v0, v1);
    atomic_store(result, &qword_4F7088);
  }

  return result;
}

uint64_t sub_1ADF3C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1ADF9C(unsigned __int8 *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F71D8, &unk_40B220);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t type metadata accessor for ShowListProvider(uint64_t a1)
{
  result = qword_4F7108;
  if (!qword_4F7108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AE060(uint64_t a1)
{
  sub_1AE170();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1AE170()
{
  if (!qword_4F7118)
  {
    v0 = sub_3E9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_4F7118);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShowListProvider.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ShowListProvider.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1AE35C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AE3BC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AE404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t StorePageProvider.state.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = v3;
  v5 = *(v1 + 24);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  sub_1AE550(v3, v5);
  return sub_1AE564(v4);
}

uint64_t sub_1AE550(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return v2;
}

unint64_t sub_1AE564(unint64_t result)
{
  if (result >= 2)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t sub_1AE574@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  *a2 = v4;
  v6 = *(v3 + 24);
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  sub_1AE550(v4, v6);
  return sub_1AE564(v5);
}

unint64_t sub_1AE5E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  v6 = v1;
  sub_1AE550(v4, v2);
  sub_1AE564(v1);
  return sub_1AE638(&v4);
}

unint64_t sub_1AE638(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = a1[2];
  swift_beginAccess();
  v10 = *(v2 + 16);
  v11 = *(v2 + 32);
  *(v2 + 16) = v7;
  v12 = *(v2 + 24);
  *(v2 + 24) = v8;
  *(v2 + 32) = v9;
  sub_1B78E4(v10, v12);
  sub_1B7940(v11);
  if (*(v2 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
  {
    sub_1B3DDC(v6);
    sub_3E9D74();
  }

  result = swift_beginAccess();
  v14 = *(v2 + 64);
  if (v14)
  {
    v15 = *(v2 + 72);
    v16 = *(v2 + 16);
    v17 = *(v2 + 32);
    v18 = *(v2 + 24);
    v21 = v16;
    v22 = v18;
    v23 = v17;
    sub_7A6C8(v14, v15);
    sub_1AE550(v16, v18);
    sub_1AE564(v17);
    v14(&v21);
    sub_16AC0(v14, v15);
    v19 = v23;
    sub_1B78E4(v21, v22);
    return sub_1B7940(v19);
  }

  return result;
}

uint64_t sub_1AE7B4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v5 = *(v3 + 56);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1B80BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4, v5);
}

uint64_t sub_1AE848(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1B8084;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 48);
  v9 = *(v7 + 56);
  *(v7 + 48) = v6;
  *(v7 + 56) = v5;
  sub_7A6C8(v3, v4);
  return sub_16AC0(v8, v9);
}

uint64_t StorePageProvider.loadPageCallback.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  sub_7A6C8(v1, *(v0 + 56));
  return v1;
}

uint64_t StorePageProvider.loadPageCallback.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return sub_16AC0(v5, v6);
}

uint64_t sub_1AE9F8@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_17B910;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_7A6C8(v4, v5);
}

uint64_t sub_1AEA8C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_17B8E8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_7A6C8(v3, v4);
  return sub_16AC0(v8, v9);
}

uint64_t LegacyArtworkLoader.alternativeSize.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_7A6C8(v1, *(v0 + 72));
  return v1;
}

uint64_t LegacyArtworkLoader.alternativeSize.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_16AC0(v5, v6);
}

uint64_t StorePageProvider.isPreparingNextPage.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1AEC80(uint64_t a1)
{
  v22 = a1;
  v2 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v2 - 8);
  v21 = (&v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_3E63E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8, &unk_40B2C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F74C0, &unk_40B5F0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  v15 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  swift_beginAccess();
  v16 = *(v12 + 56);
  sub_FBD0(v22, v14, &qword_4F72E8, &unk_40B2C0);
  sub_FBD0(v1 + v15, &v14[v16], &qword_4F72E8, &unk_40B2C0);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      return sub_FCF8(v14, &qword_4F72E8, &unk_40B2C0);
    }
  }

  else
  {
    sub_FBD0(v14, v10, &qword_4F72E8, &unk_40B2C0);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      sub_1B8D0C(&v14[v16], v7, &type metadata accessor for InteractionContext.Page);
      v19 = sub_3E63C4();
      sub_1B8C84(v7, &type metadata accessor for InteractionContext.Page);
      sub_1B8C84(v10, &type metadata accessor for InteractionContext.Page);
      result = sub_FCF8(v14, &qword_4F72E8, &unk_40B2C0);
      if (v19)
      {
        return result;
      }

      goto LABEL_7;
    }

    sub_1B8C84(v10, &type metadata accessor for InteractionContext.Page);
  }

  result = sub_FCF8(v14, &qword_4F74C0, &unk_40B5F0);
LABEL_7:
  if (*(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
  {
    sub_1B3DDC(v21);
    return sub_3E9D74();
  }

  return result;
}

uint64_t StorePageProvider.__allocating_init(asPartOf:pageURL:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  StorePageProvider.init(asPartOf:pageURL:page:)(a1, a2, a3);
  return v6;
}

uint64_t StorePageProvider.init(asPartOf:pageURL:page:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a3;
  v7 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v7);
  *(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0)) = 0;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F8830, &unk_40A060);
  swift_allocObject();
  *(v3 + 40) = sub_3E9D94();
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7200, &unk_40E6D0);
  swift_allocObject();
  *(v3 + 80) = sub_3E9D14();
  v9 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  v10 = sub_3E5DC4();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = (v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId);
  *v11 = 0;
  v11[1] = 0;
  *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingProvider) = 0;
  v12 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController;
  *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController) = 0;
  sub_3E5FB4();
  v13 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
  *(v4 + v13) = sub_3E66E4();
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelves) = _swiftEmptyArrayStorage;
  v14 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf;
  v15 = type metadata accessor for ModernShelf(0);
  v16 = *(*(v15 - 8) + 56);
  v16(v4 + v14, 1, 1, v15);
  v16(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightShelf, 1, 1, v15);
  v16(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingHeaderShelf, 1, 1, v15);
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_isPreparingNextPage) = 0;
  v17 = v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v18 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  v19 = sub_3E63E4();
  (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_subscriptions) = _swiftEmptyArrayStorage;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_reloadSubscription) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_objectGraph) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB28, &unk_40A810);
  sub_3EC444();

  sub_3ECD14();
  sub_1D4F0(v26, v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EEB30, &unk_40CF80);
  sub_3ECD14();
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightsProvider) = v26[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7298, &unk_40B2A0);
  sub_3ECD14();
  sub_1D4F0(v26, v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C50, &qword_3F6190);
  sub_3ECD14();
  sub_1D4F0(v26, v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController);
  type metadata accessor for InMemoryPageStateController();
  sub_3EC364();
  *(v4 + v12) = *&v26[0];

  swift_beginAccess();
  sub_B8464(a2, v4 + v9, &unk_4E9EE0, &unk_3F5BC0);
  swift_endAccess();
  type metadata accessor for ProgressivelyLoadShelvesController();
  v20 = swift_allocObject();
  v20[7] = _swiftEmptyArrayStorage;
  v20[8] = _swiftEmptyArrayStorage;
  v20[9] = _swiftEmptyDictionarySingleton;
  *&v26[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0, &unk_411150);
  swift_allocObject();
  v20[10] = sub_3E9D94();
  sub_3ECD14();
  sub_1D4F0(v26, (v20 + 2));

  sub_FCF8(a2, &unk_4E9EE0, &unk_3F5BC0);
  v21 = v25;
  *(v4 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelfController) = v20;
  v22 = v21 && *(v21 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete) != 1;
  *(v4 + 16) = v21;
  *(v4 + 24) = v22;
  *(v4 + 32) = 0;
  return v4;
}

void StorePageProvider.loadNewPageURL(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v10 = 0;
  v11 = 2;
  v12 = 1;
  sub_1AE638(&v10);
  v6 = sub_3E5DC4();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  swift_beginAccess();
  sub_51F9C(v5, v1 + v8, &unk_4E9EE0, &unk_3F5BC0);
  swift_endAccess();
  StorePageProvider.reload(ignoreCache:)(0);
}

Swift::Void __swiftcall StorePageProvider.reload(ignoreCache:)(Swift::Bool ignoreCache)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = sub_3E6304();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = ignoreCache;
  (*(v11 + 104))(v14, enum case for PageRenderEvent.reload(_:), v10, v12);
  sub_3E9CF4();
  (*(v11 + 8))(v14, v10);
  v15 = sub_3E66E4();
  v16 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
  swift_beginAccess();
  *(v2 + v16) = v15;
  swift_beginAccess();
  v17 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (*(v2 + 24))
  {
    if (v18 != 1)
    {
LABEL_3:
      v19 = sub_3E5DC4();
      (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
      goto LABEL_6;
    }
  }

  else if (!v17)
  {
    goto LABEL_3;
  }

  sub_1AE550(*(v2 + 16), *(v2 + 24));
  sub_1AFA7C(v6);
  sub_1B78E4(v17, v18);
  v19 = sub_3E5DC4();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v6, 1, v19) != 1)
  {
    (*(v20 + 32))(v9, v6, v19);
    (*(v20 + 56))(v9, 0, 1, v19);
    goto LABEL_9;
  }

LABEL_6:
  v21 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  swift_beginAccess();
  sub_FBD0(v2 + v21, v9, &unk_4E9EE0, &unk_3F5BC0);
  sub_3E5DC4();
  if ((*(*(v19 - 8) + 48))(v6, 1, v19) != 1)
  {
    sub_FCF8(v6, &unk_4E9EE0, &unk_3F5BC0);
  }

LABEL_9:
  sub_1AFC38(v9, ignoreCache);
  sub_FCF8(v9, &unk_4E9EE0, &unk_3F5BC0);
}

uint64_t sub_1AFA7C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E63E4();
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8BD4(v1 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v5, &type metadata accessor for InteractionContext.Page);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      goto LABEL_3;
    }

    if (EnumCaseMultiPayload != 1)
    {
      sub_1B8C84(v5, &type metadata accessor for InteractionContext.Page);
      goto LABEL_3;
    }

    v9 = v5;
LABEL_10:
    sub_FCF8(v9, &qword_4E9FD0, &unk_3F6570);
    goto LABEL_3;
  }

  if (((1 << EnumCaseMultiPayload) & 0x7FEFFF0) == 0)
  {
    if (EnumCaseMultiPayload != 3)
    {
      return sub_3E5D94();
    }

    v9 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60, &qword_4054F8) + 64)];
    goto LABEL_10;
  }

LABEL_3:
  v7 = sub_3E5DC4();
  return (*(*(v7 - 8) + 56))(a1, 1, 1, v7);
}

uint64_t sub_1AFC38(uint64_t a1, int a2)
{
  v3 = v2;
  LODWORD(v71) = a2;
  v5 = sub_3E6304();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v7 - 8);
  v65 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_3E59F4();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v64 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_3E5994();
  v67 = *(v10 - 8);
  v68 = v10;
  __chkstk_darwin(v10);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70, &qword_3F7240);
  __chkstk_darwin(v13 - 8);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v16 - 8);
  v69 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v59 - v19;
  v21 = sub_3E5DC4();
  __chkstk_darwin(v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  v26 = v25;
  sub_FBD0(v24, v20, &unk_4E9EE0, &unk_3F5BC0);
  v27 = *(v26 + 48);
  if (v27(v20, 1, v21) == 1)
  {
    return sub_FCF8(v20, &unk_4E9EE0, &unk_3F5BC0);
  }

  v62 = v27;
  v66 = v26;
  v29 = *(v26 + 32);
  v29(v23, v20, v21);
  v63 = v23;
  if (v71)
  {
    v60 = v29;
    v71 = v5;
    sub_3E59C4();
    v30 = *(v70 + 48);
    if (v30(v15, 1, v72) || (v32 = sub_3E59A4()) == 0)
    {

      v31 = _swiftEmptyArrayStorage;
    }

    else
    {
      v31 = v32;
    }

    sub_3E5964();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v31 = sub_E05B8(0, v31[2] + 1, 1, v31);
    }

    v35 = v31[2];
    v34 = v31[3];
    if (v35 >= v34 >> 1)
    {
      v31 = sub_E05B8((v34 > 1), v35 + 1, 1, v31);
    }

    v31[2] = v35 + 1;
    (*(v67 + 32))(v31 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v35, v12, v68);
    v36 = v72;
    if (v30(v15, 1, v72))
    {
    }

    else
    {
      sub_3E59B4();
    }

    v21 = v61;
    if (v30(v15, 1, v36))
    {
      v37 = v69;
      (*(v66 + 56))(v69, 1, 1, v21);
      v5 = v71;
    }

    else
    {
      v38 = v70;
      v39 = v64;
      (*(v70 + 16))(v64, v15, v36);
      v37 = v69;
      sub_3E59D4();
      v40 = v63;
      (*(v38 + 8))(v39, v36);
      v41 = v62(v37, 1, v21);
      v5 = v71;
      if (v41 != 1)
      {
        (*(v66 + 8))(v40, v21);
        v60(v40, v37, v21);
        goto LABEL_19;
      }
    }

    sub_FCF8(v37, &unk_4E9EE0, &unk_3F5BC0);
LABEL_19:
    sub_FCF8(v15, &qword_503D70, &qword_3F7240);
  }

  v42 = v21;
  swift_beginAccess();
  v43 = *(v3 + 32);
  *(v3 + 32) = 1;
  sub_1B7940(v43);
  if (*(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
  {
    sub_1B3DDC(v65);
    sub_3E9D74();
  }

  swift_beginAccess();
  v44 = *(v3 + 64);
  if (v44)
  {
    v45 = *(v3 + 72);
    v47 = *(v3 + 32);
    v48 = *(v3 + 24);
    v75 = *(v3 + 16);
    v46 = v75;
    v76 = v48;
    v77 = v47;
    sub_7A6C8(v44, v45);
    sub_1AE550(v46, v48);
    sub_1AE564(v47);
    v44(&v75);
    sub_16AC0(v44, v45);
    v49 = v77;
    sub_1B78E4(v75, v76);
    sub_1B7940(v49);
  }

  v50 = v73;
  *v73 = 1;
  v51 = enum case for PageRenderActivity.primaryDataFetchStarted(_:);
  v52 = sub_3E6474();
  (*(*(v52 - 8) + 104))(v50, v51, v52);
  v53 = v74;
  (*(v74 + 104))(v50, enum case for PageRenderEvent.activity(_:), v5);
  sub_3E9CF4();
  (*(v53 + 8))(v50, v5);
  v54 = *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider + 24);
  v55 = *(v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider), v54);
  v56 = v63;
  (*(v55 + 136))(v63, v54, v55);
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v57 = sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);

  v58 = sub_3EDBC4();
  v78 = v57;
  v79 = &protocol witness table for OS_dispatch_queue;
  v75 = v58;
  sub_3ECD94();

  (*(v66 + 8))(v56, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(&v75);
}

Swift::Void __swiftcall StorePageProvider.viewDidLoad()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72C0, &unk_40B2B0);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v28 = &v26 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v4 - 8);
  v27 = &v26 - v5;
  v6 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v6 - 8);
  v26 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72C8, &unk_4111A0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  sub_1B0BF0();
  v31 = *(*(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelfController) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72B0, &unk_411150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1A70, &unk_3FF0C0);
  sub_886BC(&qword_4F72D0, &qword_4F72B0, &unk_411150, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_3E9FA4();

  sub_886BC(&qword_4F72D8, &qword_4F72C8, &unk_4111A0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
  v12 = sub_3E9F94();
  (*(v9 + 8))(v11, v8);
  v31 = v12;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F6330, &qword_40AAF0);
  sub_886BC(&qword_4F6340, &qword_4F6330, &qword_40AAF0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_3EA1A4();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0, &qword_40B140);
  sub_886BC(&qword_4F59C8, &qword_4F59C0, &qword_40B140, &protocol conformance descriptor for [A]);
  sub_3E9C94();
  swift_endAccess();

  swift_beginAccess();
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  if (*(v0 + 24))
  {
    if (v14 == 1)
    {

      v15 = sub_3E66D4();
      goto LABEL_6;
    }

LABEL_11:
    v22 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
    swift_beginAccess();
    v23 = v27;
    sub_FBD0(v1 + v22, v27, &unk_4E9EE0, &unk_3F5BC0);
    sub_1AFC38(v23, 0);
    sub_FCF8(v23, &unk_4E9EE0, &unk_3F5BC0);
LABEL_12:
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController), *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController + 24));
    v24 = v28;
    sub_3E9244();
    swift_allocObject();
    swift_weakInit();
    sub_886BC(&qword_4F72E0, &qword_4F72C0, &unk_40B2B0, &protocol conformance descriptor for Published<A>.Publisher);
    v25 = v30;
    sub_3EA1A4();

    (*(v29 + 8))(v24, v25);
    swift_beginAccess();
    sub_3E9C94();
    swift_endAccess();

    return;
  }

  if (!v13)
  {
    goto LABEL_11;
  }

  v15 = sub_3E6704();
LABEL_6:
  v16 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount;
  v17 = *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) = v19;
    sub_1B1FAC(v1, v13, v15);
    v20 = *(v1 + v16);
    v18 = __OFSUB__(v20, 1);
    v21 = v20 - 1;
    if (!v18)
    {
      *(v1 + v16) = v21;
      if (!v21)
      {
        sub_1B3DDC(v26);
        sub_3E9D74();
      }

      sub_1B78E4(v13, v14);
      if (*(v1 + 24) == 1)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1B0BF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0, &qword_3FA180);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5EC0, &qword_40AA90);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v26 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v6 - 8);
  v8 = &v23 - v7;
  v9 = sub_3E5DC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
  swift_beginAccess();
  sub_FBD0(v0 + v13, v8, &unk_4E9EE0, &unk_3F5BC0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_FCF8(v8, &unk_4E9EE0, &unk_3F5BC0);
  }

  v15 = *(v10 + 32);
  v25 = v12;
  v15(v12, v8, v9);
  v16 = *(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightsProvider + 8);
  ObjectType = swift_getObjectType();
  v18 = *(v16 + 32);
  v23 = v0;
  v28 = v18(v12, ObjectType, v16);
  sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
  v24 = v4;
  v19 = sub_3EDBC4();
  v29 = v19;
  v20 = sub_3EDB64();
  (*(*(v20 - 8) + 56))(v3, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503C40, &unk_40A440);
  sub_886BC(&qword_4F5EC8, &qword_503C40, &unk_40A440, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_87870();
  v21 = v26;
  sub_3EA114();
  sub_FCF8(v3, &qword_4F69E0, &qword_3FA180);

  swift_allocObject();
  swift_weakInit();
  sub_886BC(&qword_4F5ED0, &qword_4F5EC0, &qword_40AA90, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v22 = v24;
  sub_3EA1A4();

  (*(v27 + 8))(v21, v22);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0, &qword_40B140);
  sub_886BC(&qword_4F59C8, &qword_4F59C0, &qword_40B140, &protocol conformance descriptor for [A]);
  sub_3E9C94();
  swift_endAccess();

  return (*(v10 + 8))(v25, v9);
}

uint64_t sub_1B110C(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    *(result + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelves) = v6;

    if (*(v8 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
    {
      sub_1B3DDC(v5);
      sub_3E9D74();
    }
  }

  return result;
}

Swift::Void __swiftcall StorePageProvider.viewDidDisappear()()
{
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController))
  {

    sub_3E92F4();
  }
}

uint64_t StorePageProvider.deinit()
{
  v1 = *(v0 + 32);
  sub_1B78E4(*(v0 + 16), *(v0 + 24));
  sub_1B7940(v1);

  sub_16AC0(*(v0 + 48), *(v0 + 56));
  sub_16AC0(*(v0 + 64), *(v0 + 72));

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL, &unk_4E9EE0, &unk_3F5BC0);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_storeDataProvider));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_purchaseController));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController));

  v2 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageTrackingID;
  v3 = sub_3E5FC4();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf, &unk_503DA0, &unk_3FF1B0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightShelf, &unk_503DA0, &unk_3FF1B0);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingHeaderShelf, &unk_503DA0, &unk_3FF1B0);
  if (*(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent));
  }

  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext, &qword_4F72E8, &unk_40B2C0);

  return v0;
}

uint64_t StorePageProvider.__deallocating_deinit()
{
  StorePageProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1B14E8(uint64_t *a1, uint64_t a2)
{
  v3 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_3E6304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v12 = Strong;
  if (*(v10 + OBJC_IVAR____TtC8ShelfKit4Page_isExplicit) == 1)
  {
    sub_3E8E04();
    if ((sub_3E8DE4() & 1) == 0)
    {

      v27 = sub_3E8DF4();

      sub_3E8DD4();

      return;
    }
  }

  v13 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
  swift_beginAccess();
  v14 = sub_3EC164();
  (*(*(v14 - 8) + 16))(v9, v10 + v13, v14);
  v15 = enum case for PageRenderActivity.primaryDataFetchCompleted(_:);
  v16 = sub_3E6474();
  (*(*(v16 - 8) + 104))(v9, v15, v16);
  (*(v7 + 104))(v9, enum case for PageRenderEvent.activity(_:), v6);
  sub_3E9CF4();
  (*(v7 + 8))(v9, v6);
  v17 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount;
  v18 = *(v12 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v12 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) = v20;
  v29 = v10;
  v30 = 1;
  v31 = 0;

  sub_1AE638(&v29);
  v21 = sub_3E66D4();
  v22 = *(v12 + v17);
  v19 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v12 + v17) = v23;
  sub_1B1FAC(v12, v10, v21);
  v24 = *(v12 + v17);
  v19 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  *(v12 + v17) = v25;
  if (!v25)
  {
    sub_1B3DDC(v5);
    sub_3E9D74();
    v25 = *(v12 + v17);
  }

  v19 = __OFSUB__(v25, 1);
  v26 = v25 - 1;
  if (v19)
  {
    goto LABEL_18;
  }

  *(v12 + v17) = v26;
  if (!v26)
  {
    sub_1B3DDC(v5);
    sub_3E9D74();
  }
}

uint64_t sub_1B186C(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F10D0, &qword_3FD580);
  __chkstk_darwin(v2 - 8);
  v31 = &v28 - v3;
  v29 = sub_3E5FC4();
  v4 = *(v29 - 8);
  __chkstk_darwin(v29);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3EC1F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170, &unk_3F4890);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  v14 = type metadata accessor for NavigateBackAction(0);
  v15 = swift_allocObject();
  *(v15 + OBJC_IVAR____TtC8ShelfKit18NavigateBackAction_animationBehavior) = 0;
  v16 = sub_3EC634();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v17 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v19 = v18;
  (*(v4 + 8))(v6, v29);
  *(v15 + 16) = v17;
  *(v15 + 24) = v19;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0;
  *(v15 + 48) = 32;
  (*(v8 + 32))(v15 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v10, v7);
  sub_FACC(v13, v15 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170, &unk_3F4890);
  v33[3] = v14;
  v20 = sub_1B8C3C(&qword_4F74D8, type metadata accessor for NavigateBackAction, "iJ\v");
  v33[0] = v15;
  v33[4] = v20;
  v33[5] = v30;
  sub_E69A0(v33, v32);
  v21 = swift_allocObject();
  v22 = v32[1];
  v21[1] = v32[0];
  v21[2] = v22;
  v21[3] = v32[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9F00, &unk_3F5EF0);

  v23 = sub_3ECE04();
  v24 = sub_3ED6F4();
  v25 = v31;
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &unk_4072F0;
  v26[5] = v21;
  v26[6] = v23;

  sub_E8ECC(0, 0, v25, &unk_407300, v26);

  return sub_E91B8(v33);
}

unint64_t sub_1B1CB4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_3E6304();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    *v9 = a1;
    v10 = enum case for PageRenderActivity.primaryDataFetchFailed(_:);
    v11 = sub_3E6474();
    (*(*(v11 - 8) + 104))(v9, v10, v11);
    (*(v7 + 104))(v9, enum case for PageRenderEvent.activity(_:), v6);
    swift_errorRetain();
    sub_3E9CF4();

    (*(v7 + 8))(v9, v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_beginAccess();
    v14 = *(v13 + 32);
    *(v13 + 32) = a1;
    swift_errorRetain();
    sub_1B7940(v14);
    if (*(v13 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) <= 0)
    {
      sub_1B3DDC(v5);
      sub_3E9D74();
    }

    swift_beginAccess();
    v15 = *(v13 + 64);
    if (v15)
    {
      v16 = *(v13 + 72);
      v18 = *(v13 + 32);
      v19 = *(v13 + 24);
      v22 = *(v13 + 16);
      v17 = v22;
      v23 = v19;
      v24 = v18;
      sub_7A6C8(v15, v16);
      sub_1AE550(v17, v19);
      sub_1AE564(v18);
      v15(&v22);

      sub_16AC0(v15, v16);
      v20 = v24;
      sub_1B78E4(v22, v23);
      return sub_1B7940(v20);
    }

    else
    {
    }
  }

  return result;
}

void sub_1B1FAC(uint64_t a1, void *a2, unsigned int a3)
{
  v108 = a3;
  v109 = sub_3E5DC4();
  v112 = *(v109 - 8);
  __chkstk_darwin(v109);
  v103 = v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0, &qword_3FA180);
  __chkstk_darwin(v6 - 8);
  v97 = v94 - v7;
  v99 = sub_3EDBA4();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v104 = v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7488, &unk_40B5A0);
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = v94 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8, &unk_40B2C0);
  __chkstk_darwin(v10 - 8);
  v107 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = (v94 - v13);
  v14 = type metadata accessor for PageContent(0);
  __chkstk_darwin(v14 - 8);
  v105 = (v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0, &unk_3F5BC0);
  __chkstk_darwin(v16 - 8);
  v111 = v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v110 = v94 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v20 - 8);
  v22 = v94 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F1D50, &unk_3F7520);
  __chkstk_darwin(v23 - 8);
  v25 = v94 - v24;
  v26 = sub_3E7784();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v94 - v31;
  sub_1B2FFC(a2);
  swift_beginAccess();
  v33 = *(a1 + 48);
  if (v33)
  {
    v34 = *(a1 + 56);

    v33(a2);
    sub_16AC0(v33, v34);
  }

  v35 = a2;
  if (*(a2 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId + 8))
  {
    v36 = 0;
    v37 = 0;
  }

  else
  {
    *&v114 = *(a2 + OBJC_IVAR____TtC8ShelfKit4Page_channelAdamId);
    sub_17A28();
    v36 = sub_3EE1F4();
  }

  v38 = (a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_channelAdamId);
  *v38 = v36;
  v38[1] = v37;

  sub_FBD0(a2 + OBJC_IVAR____TtC8ShelfKit4Page_uber, v25, &qword_4F1D50, &unk_3F7520);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    sub_FCF8(v25, &qword_4F1D50, &unk_3F7520);
  }

  else
  {
    v96 = a2;
    sub_1B8D0C(v25, v32, &type metadata accessor for ArtworkModel);
    v39 = type metadata accessor for ModernShelf(0);
    v40 = v39[5];
    v41 = type metadata accessor for Header(0);
    (*(*(v41 - 8) + 56))(&v22[v40], 1, 1, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_506560, &qword_3F6D80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_3F5630;
    sub_1B8BD4(v32, v29, &type metadata accessor for ArtworkModel);
    v43 = type metadata accessor for RoomUber(0);
    *(v42 + 56) = v43;
    *(v42 + 64) = sub_1B8C3C(&qword_4F74A8, type metadata accessor for RoomUber, protocol conformance descriptor for RoomUber);
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v42 + 32));
    sub_3E5FB4();
    sub_1B8D0C(v29, boxed_opaque_existential_0Tm + *(v43 + 20), &type metadata accessor for ArtworkModel);
    sub_1B8C84(v32, &type metadata accessor for ArtworkModel);
    v45 = *(v112 + 56);
    v46 = v109;
    v47 = v110;
    v45(v110, 1, 1, v109);
    v48 = &v22[v39[12]];
    *(v48 + 4) = 0;
    *v48 = 0u;
    *(v48 + 1) = 0u;
    v49 = v39[13];
    v50 = sub_3EC634();
    (*(*(v50 - 8) + 56))(&v22[v49], 1, 1, v50);
    v51 = v39[9];
    v52 = &v22[v39[8]];
    v45(&v22[v51], 1, 1, v46);
    *v22 = 0x726562556D6F6F52;
    *(v22 + 1) = 0xE800000000000000;
    v53 = &v22[v39[6]];
    *v53 = 34;
    *(v53 + 3) = 256;
    *(v53 + 2) = 0;
    *(v53 + 1) = 1;
    *&v22[v39[7]] = v42;
    v54 = v47;
    v35 = v96;
    sub_51F9C(v54, &v22[v51], &unk_4E9EE0, &unk_3F5BC0);
    v22[v39[10]] = 1;
    v22[v39[11]] = 0;
    *v52 = 0;
    *(v52 + 1) = 0;
    (*(*(v39 - 1) + 56))(v22, 0, 1, v39);
    v55 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf;
    swift_beginAccess();
    sub_51F9C(v22, a1 + v55, &unk_503DA0, &unk_3FF1B0);
    swift_endAccess();
  }

  v56 = v111;
  v57 = v35 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent;
  if (*(v35 + OBJC_IVAR____TtC8ShelfKit4Page_nextPageIntent + 24))
  {
    sub_1F958(v57, &v114);
  }

  else
  {
    v58 = *(v57 + 16);
    v114 = *v57;
    v115 = v58;
    v116 = *(v57 + 32);
  }

  v59 = v112;
  v60 = a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
  swift_beginAccess();
  if (*(v60 + 24))
  {
    if (*(&v115 + 1))
    {
      __swift_assign_boxed_opaque_existential_1(v60, &v114);
      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v60);
  }

  else if (*(&v115 + 1))
  {
    sub_1F958(&v114, v60);
    goto LABEL_19;
  }

  v61 = v115;
  *v60 = v114;
  *(v60 + 16) = v61;
  *(v60 + 32) = v116;
LABEL_19:
  swift_endAccess();
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_groupContentUpdateCount) < 1)
  {
    sub_1B3DDC(v105);
    sub_3E9D74();
  }

  if (*(&v115 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v114);
  }

  v110 = OBJC_IVAR____TtC8ShelfKit4Page_pageContext;
  v62 = v106;
  sub_1B8BD4(v35 + OBJC_IVAR____TtC8ShelfKit4Page_pageContext, v106, &type metadata accessor for InteractionContext.Page);
  v63 = sub_3E63E4();
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  swift_beginAccess();
  v65 = v107;
  sub_FBD0(a1 + v64, v107, &qword_4F72E8, &unk_40B2C0);
  swift_beginAccess();
  sub_B8464(v62, a1 + v64, &qword_4F72E8, &unk_40B2C0);
  swift_endAccess();
  sub_1AEC80(v65);
  sub_FCF8(v65, &qword_4F72E8, &unk_40B2C0);
  sub_FCF8(v62, &qword_4F72E8, &unk_40B2C0);
  sub_265B9C();
  v66 = sub_3E7424();
  *(&v115 + 1) = v66;
  v107 = sub_1B8C3C(&qword_4F07A0, &type metadata accessor for Podcasts, &protocol conformance descriptor for Podcasts);
  v116 = v107;
  v67 = __swift_allocate_boxed_opaque_existential_0Tm(&v114);
  v68 = *(v66 - 8);
  v106 = *(v68 + 104);
  v105 = (v68 + 104);
  (v106)(v67, enum case for Podcasts.renderImplicitFollowsAsLocalShows(_:), v66);
  LOBYTE(v64) = sub_3E6C64();
  __swift_destroy_boxed_opaque_existential_1Tm(&v114);
  if ((v64 & 1) == 0)
  {
    sub_1B3178(v35);
  }

  v69 = [objc_opt_self() supportsLocalLibrary];
  v70 = v110;
  if ((v69 & 1) == 0)
  {
    v71 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController;
    v72 = *(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_inMemoryPageStateController);
    if (v72)
    {
      v73 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageTrackingID;

      sub_31010C(v35, a1 + v73);

      v72 = *(a1 + v71);
      if (v72)
      {

        v74 = sub_310440();
        v96 = v74;

        *&v114 = v74;
        sub_3EDB84();
        v94[1] = sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
        v95 = sub_3EDBC4();
        v113 = v95;
        v75 = sub_3EDB64();
        v76 = v97;
        (*(*(v75 - 8) + 56))(v97, 1, 1, v75);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7490, &unk_40B5B0);
        sub_886BC(&qword_4F7498, &qword_4F7490, &unk_40B5B0, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_87870();
        v77 = v100;
        v78 = v104;
        v79 = v111;
        sub_3EA124();
        sub_FCF8(v76, &qword_4F69E0, &qword_3FA180);

        v59 = v112;
        v56 = v79;
        (*(v98 + 8))(v78, v99);

        swift_allocObject();
        swift_weakInit();
        sub_886BC(&qword_4F74A0, &qword_4F7488, &unk_40B5A0, &protocol conformance descriptor for Publishers.Debounce<A, B>);
        v80 = v102;
        v72 = sub_3EA1A4();

        v81 = v77;
        v70 = v110;
        (*(v101 + 8))(v81, v80);
      }
    }

    *(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_reloadSubscription) = v72;
  }

  v82 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
  swift_beginAccess();
  *(a1 + v82) = sub_3E66F4();
  swift_endAccess();
  v83 = *(v35 + 16);

  if (sub_3E6374())
  {
    v84 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageURL;
    swift_beginAccess();
    sub_FBD0(a1 + v84, v56, &unk_4E9EE0, &unk_3F5BC0);
    v85 = v109;
    if ((*(v59 + 48))(v56, 1, v109) == 1)
    {
      sub_FCF8(v56, &unk_4E9EE0, &unk_3F5BC0);
    }

    else
    {
      v86 = v103;
      (*(v59 + 32))(v103, v56, v85);
      v87 = sub_1B80F8(v35, v86);
      v88 = v85;
      v89 = v87;
      (*(v59 + 8))(v86, v88);
      if (v89)
      {

        v83 = v89;
      }
    }
  }

  sub_265D38(*(a1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_objectGraph), v83);

  v90 = [objc_opt_self() currentTraitCollection];
  v91 = sub_3EDC24();

  if (v91 & 1) == 0 || (*(&v115 + 1) = v66, v116 = v107, v92 = __swift_allocate_boxed_opaque_existential_0Tm(&v114), (v106)(v92, enum case for Podcasts.mercuryOnMac(_:), v66), v93 = sub_3E6C64(), __swift_destroy_boxed_opaque_existential_1Tm(&v114), (v93))
  {
    sub_1B399C(&v70[v35]);
  }
}

uint64_t sub_1B2FFC(uint64_t a1)
{
  swift_beginAccess();
  if (!sub_3EC064())
  {
    return swift_endAccess();
  }

  v1 = sub_3E7884();
  sub_1279E0(v1);
  v3 = v2;
  swift_endAccess();

  if (v3)
  {
    swift_getObjectType();
    v5 = sub_3E94C4();
    result = HighlightsProviderProtocol.isSharedContent(_:)(v5, v6 & 1);
    if (result)
    {
      swift_beginAccess();
      v7 = sub_3EC054();
      if (*v8)
      {
        v10 = &type metadata for Bool;
        v9[0] = 1;
        sub_38EEC(v9, 0x6F43646572616873, 0xED0000746E65746ELL);
      }

      v7(v11, 0);
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1B3178(uint64_t a1)
{
  v3 = sub_3E9A04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v40 - v8;
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  if (*(a1 + OBJC_IVAR____TtC8ShelfKit4Page_isIncomplete))
  {
    sub_3E9924();

    v13 = sub_3E99F4();
    v14 = sub_3ED9D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v42[0] = v16;
      *v15 = 136380675;
      v43 = a1;
      type metadata accessor for Page(0);

      v17 = sub_3ED2B4();
      v19 = sub_2EDD0(v17, v18, v42);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_0, v13, v14, "Can't check potential feed update for incomplete page %{private}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }

    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v20 = (a1 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId);
    if (*(a1 + OBJC_IVAR____TtC8ShelfKit4Page_showAdamId + 8))
    {
      sub_3E9924();

      v21 = sub_3E99F4();
      v22 = sub_3ED9D4();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v42[0] = v24;
        *v23 = 136380675;
        v43 = a1;
        type metadata accessor for Page(0);

        v25 = sub_3ED2B4();
        v27 = sub_2EDD0(v25, v26, v42);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_0, v21, v22, "Can't check potential feed update for page without an adamID %{private}s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
      }

      (*(v4 + 8))(v9, v3);
    }

    else
    {
      v28 = *v20;
      if (*v20 < 0)
      {
        __break(1u);
      }

      else
      {
        v41 = v1;
        sub_3E9924();
        v29 = sub_3ED9F4();
        v30 = sub_3E99F4();
        if (os_log_type_enabled(v30, v29))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v42[0] = v32;
          *v31 = 136380675;
          v43 = v28;
          v33 = sub_3EE7A4();
          v35 = sub_2EDD0(v33, v34, v42);

          *(v31 + 4) = v35;
          _os_log_impl(&dword_0, v30, v29, "Scheduling feed update from store page for implicitly followed podcast adamID: %{private}s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v32);
        }

        (*(v4 + 8))(v12, v3);
        v36 = *(v41 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController + 24);
        v37 = *(v41 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController + 32);
        __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_libraryActionController), v36);
        (*(v37 + 144))(v28, v36, v37);
        *(swift_allocObject() + 16) = v28;
        *(swift_allocObject() + 16) = v28;
        v38 = sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
        v39 = sub_3EDBC4();
        v42[3] = v38;
        v42[4] = &protocol witness table for OS_dispatch_queue;
        v42[0] = v39;
        sub_3ECD94();

        __swift_destroy_boxed_opaque_existential_1Tm(v42);
      }
    }
  }
}

uint64_t sub_1B36D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_3E9A04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_36174(0, &qword_4F6BF0, OS_os_log_ptr);
  sub_3EE064();

  v6 = sub_3E99F4();
  v7 = sub_3ED9F4();

  if (!os_log_type_enabled(v6, v7))
  {

    (*(v3 + 8))(v5, v2);
    goto LABEL_10;
  }

  v20 = v2;
  v8 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v21[0] = v19;
  *v8 = 136315138;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v10 = Strong;
  swift_beginAccess();
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  sub_1AE550(v11, *(v10 + 24));

  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_5;
    }

LABEL_8:
    v13 = *(v11 + 24);
    v14 = *(v11 + 32);

    sub_1B78E4(v11, v12);
    goto LABEL_9;
  }

  if (v12 == 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v13 = 0;
  v14 = 0;
LABEL_9:
  v21[1] = v13;
  v21[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4E9950, &qword_4049C0);
  v15 = sub_3ED2B4();
  v17 = sub_2EDD0(v15, v16, v21);

  *(v8 + 4) = v17;
  _os_log_impl(&dword_0, v6, v7, "Reload publisher triggered for %s", v8, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v19);

  (*(v3 + 8))(v5, v20);
LABEL_10:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    StorePageProvider.reload(ignoreCache:)(1);
  }

  return result;
}

void sub_1B399C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F69E0, &qword_3FA180);
  __chkstk_darwin(v2 - 8);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63E8, &unk_40A7D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  v9 = sub_3E63E4();
  __chkstk_darwin(v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingProvider;
  if (!*(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingProvider))
  {
    swift_storeEnumTagMultiPayload();
    v13 = sub_3E63C4();
    sub_1B8C84(v11, &type metadata accessor for InteractionContext.Page);
    if (v13)
    {
      v14 = objc_allocWithZone(type metadata accessor for UnifiedMessagingProvider());
      v15 = v1;
      v16 = UnifiedMessagingProvider.init(placement:)(0x65486573776F7262, 0xEC00000072656461);
      v17 = *(v1 + v12);
      *(v1 + v12) = v16;

      v18 = *(v1 + v12);
      if (v18)
      {
        v19 = v18;
        v23[1] = v15;
        v20 = UnifiedMessagingProvider.bannerShelfPublisher.getter();

        v23[2] = v20;
        sub_36174(0, &qword_4F10B0, OS_dispatch_queue_ptr);
        v21 = sub_3EDBC4();
        v23[5] = v21;
        v22 = sub_3EDB64();
        (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F63F0, &unk_40B5E0);
        sub_886BC(&qword_4F63F8, &qword_4F63F0, &unk_40B5E0, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_87870();
        sub_3EA114();
        sub_FCF8(v4, &qword_4F69E0, &qword_3FA180);

        swift_allocObject();
        swift_weakInit();
        sub_886BC(&qword_4F6400, &qword_4F63E8, &unk_40A7D0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        sub_3EA1A4();

        (*(v6 + 8))(v8, v5);
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F59C0, &qword_40B140);
        sub_886BC(&qword_4F59C8, &qword_4F59C0, &qword_40B140, &protocol conformance descriptor for [A]);
        sub_3E9C94();
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1B3DDC@<X0>(unint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ModernPage(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5670, &qword_40B590);
  __chkstk_darwin(v6 - 8);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v84 = &v81 - v9;
  __chkstk_darwin(v10);
  v88 = &v81 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_503DA0, &unk_3FF1B0);
  __chkstk_darwin(v12 - 8);
  v92 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v86 = &v81 - v15;
  __chkstk_darwin(v16);
  v18 = &v81 - v17;
  v91 = type metadata accessor for ModernShelf(0);
  v94 = *(v91 - 8);
  __chkstk_darwin(v91);
  v93 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v89 = &v81 - v21;
  __chkstk_darwin(v22);
  v87 = &v81 - v23;
  __chkstk_darwin(v24);
  v90 = &v81 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8, &unk_40B2C0);
  __chkstk_darwin(v26 - 8);
  v28 = &v81 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5748, &qword_40DFA0);
  __chkstk_darwin(v29 - 8);
  v31 = &v81 - v30;
  v32 = type metadata accessor for PageContent(0);
  v33 = *(v32 - 8);
  __chkstk_darwin(v32);
  v35 = &v81 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v36 = *(v1 + 32);
  if (v36 >= 2)
  {
    v50 = swift_allocObject();
    swift_weakInit();
    *a1 = v36;
    a1[1] = sub_1B80E8;
    a1[2] = v50;
    swift_storeEnumTagMultiPayload();
    return swift_errorRetain();
  }

  v37 = v32;
  if (*(v1 + 24) >= 2u)
  {
    *a1 = 1;
    return swift_storeEnumTagMultiPayload();
  }

  v81 = v5;
  v82 = a1;
  v38 = *(v1 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_shelves);
  v39 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_pageContext;
  swift_beginAccess();
  sub_FBD0(v1 + v39, v28, &qword_4F72E8, &unk_40B2C0);
  swift_bridgeObjectRetain_n();
  v83 = v1;
  sub_1B49F8(v38, v28, v31);

  sub_FCF8(v28, &qword_4F72E8, &unk_40B2C0);
  if ((*(v33 + 48))(v31, 1, v37) != 1)
  {

    sub_1B8D0C(v31, v35, type metadata accessor for PageContent);
    return sub_1B8D0C(v35, v82, type metadata accessor for PageContent);
  }

  v40 = v38;
  sub_FCF8(v31, &qword_4F5748, &qword_40DFA0);
  v41 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_uberShelf;
  v42 = v83;
  swift_beginAccess();
  sub_FBD0(v42 + v41, v18, &unk_503DA0, &unk_3FF1B0);
  v43 = v94;
  v44 = *(v94 + 48);
  v45 = v91;
  if (v44(v18, 1, v91) == 1)
  {
    sub_FCF8(v18, &unk_503DA0, &unk_3FF1B0);
    v46 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_unifiedMessagingHeaderShelf;
    swift_beginAccess();
    v47 = v42 + v46;
    v48 = v86;
    sub_FBD0(v47, v86, &unk_503DA0, &unk_3FF1B0);
    if (v44(v48, 1, v45) == 1)
    {
      sub_FCF8(v48, &unk_503DA0, &unk_3FF1B0);
      v49 = v93;
      goto LABEL_19;
    }

    v58 = v48;
    v59 = v87;
    sub_1B8D0C(v58, v87, type metadata accessor for ModernShelf);
    v60 = v84;
    sub_1B8BD4(v59, v84, type metadata accessor for ModernShelf);
    v61 = v40[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v98 = v40;
    v49 = v93;
    if (!isUniquelyReferenced_nonNull_native || v61 >= v40[3] >> 1)
    {
      v40 = sub_E02B0(isUniquelyReferenced_nonNull_native, v61 + 1, 1, v40);
      v98 = v40;
    }

    sub_17C550(0, 0, 1, v60);
    v57 = &v99;
  }

  else
  {
    v52 = v18;
    v53 = v90;
    sub_1B8D0C(v52, v90, type metadata accessor for ModernShelf);
    v54 = v88;
    sub_1B8BD4(v53, v88, type metadata accessor for ModernShelf);
    v55 = v40[2];
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v98 = v40;
    if (!v56 || v55 >= v40[3] >> 1)
    {
      v40 = sub_E02B0(v56, v55 + 1, 1, v40);
      v98 = v40;
    }

    v49 = v93;
    sub_17C550(0, 0, 1, v54);
    v57 = &v100;
  }

  sub_1B8C84(*(v57 - 32), type metadata accessor for ModernShelf);
  v42 = v83;
LABEL_19:
  v63 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_highlightShelf;
  swift_beginAccess();
  v64 = v42 + v63;
  v65 = v92;
  sub_FBD0(v64, v92, &unk_503DA0, &unk_3FF1B0);
  if (v44(v65, 1, v45) == 1)
  {
    sub_FCF8(v65, &unk_503DA0, &unk_3FF1B0);
    v66 = v82;
    goto LABEL_27;
  }

  v67 = v89;
  result = sub_1B8D0C(v65, v89, type metadata accessor for ModernShelf);
  v66 = v82;
  if (v40[2])
  {
    v68 = v85;
    result = sub_1B8BD4(v67, v85, type metadata accessor for ModernShelf);
    v69 = v40[2];
    if (v69)
    {
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v98 = v40;
      if (!v70 || v69 >= v40[3] >> 1)
      {
        v40 = sub_E02B0(v70, v69 + 1, 1, v40);
        v98 = v40;
      }

      sub_17C550(1, 1, 1, v68);
      sub_1B8C84(v67, type metadata accessor for ModernShelf);
      v42 = v83;
LABEL_27:
      v71 = v42 + OBJC_IVAR____TtC8ShelfKit17StorePageProvider_nextPageIntent;
      swift_beginAccess();
      if (*(v71 + 24))
      {
        sub_1F958(v71, &v95);
      }

      else
      {
        v72 = *(v71 + 16);
        v95 = *v71;
        v96 = v72;
        v97 = *(v71 + 32);
      }

      if (*(&v96 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(&v95);
        goto LABEL_32;
      }

      v75 = *(v42 + 24);
      if (*(v42 + 24))
      {
        if (v75 != 1)
        {
LABEL_32:
          static ModernShelf.loadingShelf(id:)(0x53676E6964616F6CLL, 0xEE004449666C6568, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = sub_E02B0(0, v40[2] + 1, 1, v40);
          }

          v74 = v40[2];
          v73 = v40[3];
          if (v74 >= v73 >> 1)
          {
            v40 = sub_E02B0((v73 > 1), v74 + 1, 1, v40);
          }

          v40[2] = v74 + 1;
          sub_1B8D0C(v49, v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v74, type metadata accessor for ModernShelf);
          LOBYTE(v75) = *(v42 + 24);
          v76 = *(v42 + 16);
          if (v75 > 1u)
          {
            v77 = 0;
LABEL_44:
            sub_1AE550(v76, v75);
            v78 = v81;
            sub_1B4EA0(v77, v40, v81);

            sub_1B78E4(v76, v75);
            v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5668, &unk_40A6A0) + 48);
            sub_1B8D0C(v78, v66, type metadata accessor for ModernPage);
            v80 = OBJC_IVAR____TtC8ShelfKit17StorePageProvider_contentTypes;
            swift_beginAccess();
            *(v66 + v79) = *(v42 + v80);
            return swift_storeEnumTagMultiPayload();
          }

LABEL_43:
          v77 = v76;
          goto LABEL_44;
        }
      }

      else if (*(v42 + 32))
      {
        goto LABEL_32;
      }

      v76 = *(v42 + 16);
      goto LABEL_43;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B499C(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    StorePageProvider.reload(ignoreCache:)(1);
  }

  return result;
}

uint64_t sub_1B49F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v27 = a2;
  v32 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F72E8, &unk_40B2C0);
  __chkstk_darwin(v4 - 8);
  v30 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F7480, &qword_40B598);
  __chkstk_darwin(v6 - 8);
  v31 = &v26 - v7;
  v8 = type metadata accessor for ContentUnavailablePage(0);
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v26 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModernShelf(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = *(a1 + 16);
  while (v15 != v14)
  {
    sub_1B8BD4(a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v14++, v13, type metadata accessor for ModernShelf);
    v33 = *&v13[*(v10 + 28)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F5A88, &unk_40B240);
    sub_886BC(&qword_4F5A90, &qword_4F5A88, &unk_40B240, &protocol conformance descriptor for [A]);
    v16 = sub_3ED894();
    sub_1B8C84(v13, type metadata accessor for ModernShelf);
    if (v16)
    {
      v17 = type metadata accessor for PageContent(0);
      return (*(*(v17 - 8) + 56))(v32, 1, 1, v17);
    }
  }

  v19 = v30;
  sub_FBD0(v27, v30, &qword_4F72E8, &unk_40B2C0);
  v20 = sub_3E63E4();
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    sub_FCF8(v19, &qword_4F72E8, &unk_40B2C0);
    v21 = v31;
    (*(v28 + 56))(v31, 1, 1, v29);
  }

  else
  {
    v21 = v31;
    sub_1B52E8(v31);
    sub_1B8C84(v19, &type metadata accessor for InteractionContext.Page);
    if ((*(v28 + 48))(v21, 1, v29) != 1)
    {
      v24 = v26;
      sub_1B8D0C(v21, v26, type metadata accessor for ContentUnavailablePage);
      v25 = v24;
      v22 = v32;
      sub_1B8D0C(v25, v32, type metadata accessor for ContentUnavailablePage);
      v23 = type metadata accessor for PageContent(0);
      goto LABEL_10;
    }
  }

  sub_FCF8(v21, &qword_4F7480, &qword_40B598);
  v22 = v32;
  *v32 = 0;
  v23 = type metadata accessor for PageContent(0);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
}

uint64_t sub_1B4EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3F10, &qword_407430);
  __chkstk_darwin(v4 - 8);
  v6 = &v33 - v5;
  v7 = sub_3ECCF4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F3190, &qword_405620);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - v12;
  v14 = sub_3EC164();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v21 = &v33 - v19;
  if (a1)
  {
    v33 = v14;
    v22 = &v33 - v19;
    v23 = v8;
    v24 = v6;
    v25 = v7;
    v26 = v10;
    v27 = OBJC_IVAR____TtC8ShelfKit4Page_pageMetrics;
    swift_beginAccess();
    v28 = a1 + v27;
    v10 = v26;
    v7 = v25;
    v6 = v24;
    v8 = v23;
    v21 = v22;
    v14 = v33;
    (*(v15 + 16))(v13, v28, v33);
    (*(v15 + 56))(v13, 0, 1, v14);
    (*(v15 + 32))(v21, v13, v14);
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v20);
    sub_3EC154();
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_FCF8(v13, &qword_4F3190, &qword_405620);
    }
  }

  (*(v15 + 16))(v17, v21, v14);
  sub_3ECCC4();
  v29 = *(v8 + 48);
  if (v29(v6, 1, v7) == 1)
  {
    sub_3ECCE4();
    if (v29(v6, 1, v7) != 1)
    {
      sub_FCF8(v6, &qword_4F3F10, &qword_407430);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v30 = v34;
  (*(v8 + 32))(v34, v10, v7);
  v31 = type metadata accessor for ModernPage(0);
  (*(v15 + 32))(v30 + *(v31 + 20), v21, v14);
  *(v30 + *(v31 + 24)) = v35;
}

uint64_t sub_1B52E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_3E63E4();
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8BD4(v2, v6, &type metadata accessor for InteractionContext.Page);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = 1;
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload <= 2)
    {
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 1)
      {
        sub_1B8C84(v6, &type metadata accessor for InteractionContext.Page);
        goto LABEL_22;
      }

      v9 = v6;
    }

    else
    {
      if ((EnumCaseMultiPayload - 4) < 8)
      {
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 3)
      {
        static ContentUnavailablePage.emptyLibraryChannels.getter(a1);
        goto LABEL_21;
      }

      v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_4F2F60, &qword_4054F8) + 64)];
    }

    sub_FCF8(v9, &qword_4E9FD0, &unk_3F6570);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload > 0x1A)
  {
    goto LABEL_17;
  }

  if (((1 << EnumCaseMultiPayload) & 0x7DF0000) == 0)
  {
    if (EnumCaseMultiPayload == 15)
    {
      static ContentUnavailablePage.emptyLibraryShows.getter(a1);
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 21)
    {
      static ContentUnavailablePage.emptyLibraryRecentlyUpdated.getter(a1);
      goto LABEL_21;
    }

LABEL_17:
    if (EnumCaseMultiPayload == 13)
    {
      static ContentUnavailablePage.emptyLibraryLatestEpisodes.getter(a1);
    }

    else
    {
      static ContentUnavailablePage.emptyLibrarySaved.getter(a1);
    }

    goto LABEL_21;
  }

LABEL_22:
  v10 = type metadata accessor for ContentUnavailablePage(0);
  return (*(*(v10 - 8) + 56))(a1, v8, 1, v10);
}