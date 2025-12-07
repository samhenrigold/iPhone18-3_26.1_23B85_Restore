uint64_t sub_7288C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  __chkstk_darwin(v3 - 8);
  v5 = &v9[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *(result + 48);

    sub_1D19C(a1, v5, &unk_1C1DA0, &qword_14EB20);
    v8 = OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_selectedContent;
    swift_beginAccess();
    sub_743BC(v5, v7 + v8);
    swift_endAccess();
    sub_EBF94();

    return sub_15340(v5, &unk_1C1DA0, &qword_14EB20);
  }

  return result;
}

void sub_729C4()
{
  v0 = sub_14236C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C8, &qword_14EAF0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v7 = sub_E882C();
  swift_getKeyPath();
  v14[1] = v7;
  sub_747C0(&qword_1C41D0, type metadata accessor for NowPlayingBannerView.ViewModel, &unk_154078);
  sub_141A4C();

  v8 = OBJC_IVAR____TtCV12NowPlayingUI20NowPlayingBannerView9ViewModel__bannerModel;
  swift_beginAccess();
  sub_1D19C(v7 + v8, v6, &qword_1C41C8, &qword_14EAF0);
  v9 = type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {

    sub_7435C(v6, type metadata accessor for NowPlayingBannerView.ViewModel.BannerModel);
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    v10 = sub_1422AC();
    if (v10)
    {
      v12 = v11;
      v13 = v10;
      v10();
      sub_2173C(v13, v12);
    }

    (*(v1 + 8))(v3, v0);
  }
}

uint64_t sub_72C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v6[12] = a4;
  v6[13] = a5;
  v6[10] = a2;
  v6[11] = a3;
  v6[9] = a1;
  v7 = sub_14216C();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v8 = sub_1445AC();
  v6[17] = v8;
  v6[18] = *(v8 - 8);
  v6[19] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4288, &qword_14EBA0);
  v10 = swift_task_alloc();
  v6[20] = v10;
  *v10 = v6;
  v10[1] = sub_72DF4;

  return BaseObjectGraph.inject<A>(_:)(v6 + 2, v9, v9);
}

uint64_t sub_72DF4()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_73408;
  }

  else
  {
    v2 = sub_72F08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_72F08()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[12];
  sub_14212C();
  (*(v2 + 16))(v1, v4, v3);
  sub_14459C();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = swift_task_alloc();
  v0[22] = v7;
  v8 = sub_747C0(&qword_1C4290, &type metadata accessor for EpisodeTimedReferenceLinksIntent, &protocol conformance descriptor for EpisodeTimedReferenceLinksIntent);
  *v7 = v0;
  v7[1] = sub_73058;
  v9 = v0[19];
  v10 = v0[17];
  v11 = v0[10];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v0 + 7, v9, v11, v10, v8, v5, v6);
}

uint64_t sub_73058()
{
  v2 = *v1;
  v2[23] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_73478, 0, 0);
  }

  else
  {
    v3 = v2[7];
    v2[8] = v3;
    v2[24] = v3;
    v4 = swift_task_alloc();
    v2[25] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4220, &qword_14EB68);
    v6 = sub_1D4A4(&qword_1C4298, &qword_1C4220, &qword_14EB68, &protocol conformance descriptor for [A]);
    *v4 = v2;
    v4[1] = sub_73244;
    v7 = v2[13];

    return Sequence<>.align(using:)(v7, v5, v6);
  }
}

uint64_t sub_73244(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return _swift_task_switch(sub_73364, 0, 0);
}

uint64_t sub_73364()
{
  v1 = v0[26];
  v2 = v0[9];
  (*(v0[18] + 8))(v0[19], v0[17]);
  *v2 = v1;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_73408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_73478()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_73508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v63 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0);
  v56 = *(v4 - 8);
  v57 = *(v56 + 64);
  __chkstk_darwin(v4 - 8);
  v60 = &v50 - v5;
  v6 = sub_1444EC();
  v51 = *(v6 - 8);
  v52 = v6;
  __chkstk_darwin(v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42B0, &qword_14EBC8);
  v54 = *(v58 - 8);
  __chkstk_darwin(v58);
  v50 = &v50 - v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42B8, &qword_14EBD0);
  v55 = *(v59 - 8);
  __chkstk_darwin(v59);
  v53 = &v50 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A0, &unk_14EBA8);
  __chkstk_darwin(v61);
  v12 = (&v50 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42C0, &qword_14EBD8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - v15;
  v17 = sub_14243C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v50 - v22;
  v64 = a2;
  if (*(a2 + 16))
  {
    sub_1423CC();
    v24 = sub_14242C();
    v25 = sub_144C5C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v65 = v27;
      *v26 = 136315138;
      *(v26 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v65);
      _os_log_impl(&dword_0, v24, v25, "%s link data present, observing for elapsed time changes", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    (*(v18 + 8))(v20, v17);
    v28 = [objc_opt_self() mainRunLoop];
    sub_1442BC();

    sub_747C0(&qword_1C42C8, &type metadata accessor for ForegroundTimerPublisher, &protocol conformance descriptor for ForegroundTimerPublisher);
    v29 = v52;
    v30 = sub_14261C();
    (*(v51 + 8))(v8, v29);
    v65 = v30;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42D0, &unk_14EBE0);
    sub_1D4A4(&qword_1C42D8, &qword_1C42D0, &unk_14EBE0, &protocol conformance descriptor for Publishers.Autoconnect<A>);
    v31 = v50;
    sub_14274C();

    v32 = v60;
    sub_1D19C(v63, v60, &qword_1C81D0, &qword_14EBC0);
    v33 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v34 = (v57 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    sub_74978(v32, v35 + v33);
    *(v35 + v34) = v64;

    v36 = v53;
    v37 = v58;
    sub_14251C();

    (*(v54 + 8))(v31, v37);
    sub_1D4A4(&qword_1C42E0, &qword_1C42B8, &qword_14EBD0, &protocol conformance descriptor for Publishers.CompactMap<A, B>);
    v38 = v59;
    v39 = sub_14273C();
    (*(v55 + 8))(v36, v38);
  }

  else
  {
    v60 = v14;
    sub_1423CC();
    v40 = sub_14242C();
    v41 = sub_144C5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v65 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v65);
      _os_log_impl(&dword_0, v40, v41, "%s no link data, showing upsell only", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    (*(v18 + 8))(v23, v17);
    v44 = v60;
    v45 = COERCE_DOUBLE(sub_141B8C());
    if (v46)
    {
      v45 = 0.0;
    }

    v47 = *(v61 + 48);
    v48 = *(v61 + 64);
    *v12 = v45;
    sub_1D19C(v63, v12 + v47, &qword_1C81D0, &qword_14EBC0);
    *(v12 + v48) = v64;

    sub_14264C();
    sub_1D4A4(&qword_1C42E8, &qword_1C42C0, &qword_14EBD8, &protocol conformance descriptor for Just<A>);
    v39 = sub_14273C();
    (*(v44 + 8))(v16, v13);
  }

  return v39;
}

uint64_t sub_73DD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A0, &unk_14EBA8);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  *a4 = v7;
  sub_1D19C(a2, a4 + v9, &qword_1C81D0, &qword_14EBC0);
  *(a4 + v10) = a3;
}

void sub_73E64(uint64_t *a1, uint64_t a2, const char *a3)
{
  v5 = sub_14243C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    swift_errorRetain();
    sub_1423CC();
    swift_errorRetain();
    v9 = sub_14242C();
    v10 = sub_144C5C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v11 = 136315394;
      *(v11 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v16);
      *(v11 + 12) = 2112;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      *v12 = v14;
      _os_log_impl(&dword_0, v9, v10, a3, v11, 0x16u);
      sub_15340(v12, &qword_1C2580, &qword_14C8E0);

      __swift_destroy_boxed_opaque_existential_0(v13);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_74098(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_14236C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E92FC(a1);
  sub_1D19C(a1, v4, &qword_1C81D0, &qword_14EBC0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_15340(v4, &qword_1C81D0, &qword_14EBC0);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_E9528(v8);
  return (*(v6 + 8))(v8, v5);
}

void *sub_74244()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t sub_7429C()
{
  sub_74244();

  return swift_deallocClassInstance();
}

uint64_t sub_7435C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_743BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_74468()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_744A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_744E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A8, &qword_14EBB8);
  result = v5(a1, *(a1 + *(v6 + 48)));
  *a2 = result;
  return result;
}

uint64_t sub_74564(double *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42A0, &unk_14EBA8);
  return v3(a1 + *(v5 + 48), *(a1 + *(v5 + 64)), v4);
}

uint64_t sub_745CC(__n128 a1)
{
  v2 = sub_14216C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);
  __swift_destroy_boxed_opaque_existential_0((v1 + v6));

  return _swift_deallocObject(v1, v6 + 40, v4 | 7);
}

uint64_t sub_746A4(uint64_t a1, __n128 a2)
{
  v5 = *(sub_14216C() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D0A8;

  return sub_72C74(a1, v8, v9, v2 + v6, v2 + v7, v11);
}

uint64_t sub_747C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_74808@<X0>(uint64_t a1@<X8>)
{
  if (sub_141D2C())
  {
    result = sub_141B8C();
  }

  else
  {
    result = 0;
    v3 = 1;
  }

  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_7484C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_14236C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_74978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_749E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C81D0, &qword_14EBC0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_73DD4(a1, v2 + v6, v7, a2);
}

uint64_t sub_74AB8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4598, &unk_14EEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_1D19C(v1 + v9, v8, &qword_1C4598, &unk_14EEA0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0108, &unk_14C910);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_15340(v8, &qword_1C4598, &unk_14EEA0);
  sub_14142C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2698, &qword_14CAB8);
  sub_778B4(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID, &protocol conformance descriptor for NowPlayingLookupID);
  sub_778FC();
  sub_14119C();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_4363C(v5, v1 + v9, &qword_1C4598, &unk_14EEA0);
  return swift_endAccess();
}

double sub_74D88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_14243C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1426DC();

  if ((v15[15] & 1) == 0)
  {
    sub_1423CC();
    v11 = sub_14242C();
    v12 = sub_144C5C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_0, v11, v12, "[NowPlayingMiniPlayerSublineController]: showing mini player hint.", v13, 2u);
    }

    v14 = (*(v7 + 8))(v9, v6);
    __chkstk_darwin(v14);
    *&v15[-32] = v3;
    *&v15[-24] = a1;
    *&v15[-16] = a2;
    sub_143F1C();
    sub_142B7C();
  }

  return result;
}

double sub_74FA4()
{
  v0 = sub_14243C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1426DC();

  if (v8[15] == 1)
  {
    sub_1423CC();
    v5 = sub_14242C();
    v6 = sub_144C5C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_0, v5, v6, "[NowPlayingMiniPlayerSublineController]: hiding mini player hint.", v7, 2u);
    }

    (*(v1 + 8))(v3, v0);
    sub_143F1C();
    sub_142B7C();
  }

  return result;
}

uint64_t sub_75184@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24A8, &qword_14C7E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v14[-v7];
  v9 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___miniPlayerSubtitle;
  swift_beginAccess();
  sub_1D19C(v1 + v9, v8, &qword_1C24A8, &qword_14C7E0);
  v10 = sub_1415DC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_15340(v8, &qword_1C24A8, &qword_14C7E0);
  if (qword_1BFFC0 != -1)
  {
    swift_once();
  }

  v12 = sub_14142C();
  __swift_project_value_buffer(v12, qword_1D17C0);
  sub_1415CC();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_4363C(v5, v1 + v9, &qword_1C24A8, &qword_14C7E0);
  return swift_endAccess();
}

Swift::Int NowPlayingMiniPlayerSublineViewModel.SublineState.hashValue.getter(char a1)
{
  sub_14545C();
  sub_14546C(a1 & 1);
  return sub_1454AC();
}

uint64_t NowPlayingMiniPlayerSublineViewModel.sublineState.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

void sub_75504(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a2 = v3;
}

uint64_t sub_75588(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t NowPlayingMiniPlayerSublineViewModel.sublineState.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.sublineState.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_1426CC();
  return sub_77A24;
}

uint64_t NowPlayingMiniPlayerSublineViewModel.$sublineState.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4300, &unk_14EC40);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8, &qword_14EC38);
  sub_1426BC();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.$sublineState.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4300, &unk_14EC40);
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

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8, &qword_14EC38);
  sub_1426AC();
  swift_endAccess();
  return sub_77A28;
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.standardSublineText.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_1426CC();
  return sub_75B24;
}

uint64_t sub_75B50(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4318, &qword_14ECA0);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310, &qword_14EC98);
  sub_1426BC();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.$standardSublineText.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4318, &qword_14ECA0);
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

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310, &qword_14EC98);
  sub_1426AC();
  swift_endAccess();
  return sub_75DF8;
}

uint64_t sub_75E60(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v3;
}

double sub_75EE0@<D0>(_OWORD *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_75F98(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_76054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.hintSubscriptionName.modify(uint64_t *a1))()
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
  *(v3 + 48) = sub_1426CC();
  return sub_77A24;
}

void sub_76170(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_761F4(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1426AC();
  return swift_endAccess();
}

uint64_t (*NowPlayingMiniPlayerSublineViewModel.$hintSubscriptionName.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4318, &qword_14ECA0);
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

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310, &qword_14EC98);
  sub_1426AC();
  swift_endAccess();
  return sub_77A28;
}

void sub_763E8(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1426BC();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1426BC();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

void NowPlayingMiniPlayerSublineViewModel.hash(into:)(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  sub_14546C(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v2)
  {
    sub_14547C(1u);
    sub_14492C();
  }

  else
  {
    sub_14547C(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v2)
  {
    sub_14547C(1u);
    sub_14492C();
  }

  else
  {
    sub_14547C(0);
  }
}

uint64_t NowPlayingMiniPlayerSublineViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8, &qword_14EC38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310, &qword_14EC98);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName, v4);
  return v0;
}

uint64_t NowPlayingMiniPlayerSublineViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8, &qword_14EC38);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310, &qword_14EC98);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName, v4);

  return swift_deallocClassInstance();
}

Swift::Int NowPlayingMiniPlayerSublineViewModel.hashValue.getter()
{
  sub_14545C();
  NowPlayingMiniPlayerSublineViewModel.hash(into:)(v1);
  return sub_1454AC();
}

uint64_t sub_76918()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4310, &qword_14EC98);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C42F8, &qword_14EC38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__sublineState;
  LOBYTE(v14) = 0;
  sub_14269C();
  (*(v6 + 32))(v0 + v9, v8, v5);
  v10 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__standardSublineText;
  v14 = 0;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1400, &qword_154A50);
  sub_14269C();
  v11 = *(v2 + 32);
  v11(v0 + v10, v4, v1);
  v12 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingMiniPlayerSublineViewModel__hintSubscriptionName;
  v14 = 0;
  v15 = 0;
  sub_14269C();
  v11(v0 + v12, v4, v1);
  return v0;
}

uint64_t sub_76B18@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
  result = sub_1425BC();
  *a1 = result;
  return result;
}

Swift::Int sub_76B64()
{
  sub_14545C();
  NowPlayingMiniPlayerSublineViewModel.hash(into:)(v1);
  return sub_1454AC();
}

Swift::Int sub_76BCC(uint64_t a1)
{
  sub_14545C();
  (*(**v1 + 248))(v3);
  return sub_1454AC();
}

double sub_76C2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (!a2)
  {
    if (!v4)
    {
      return result;
    }

    goto LABEL_12;
  }

  if (!v4 || (v3 == a1 ? (v5 = v4 == a2) : (v5 = 0), !v5 && (sub_1453BC() & 1) == 0))
  {
LABEL_12:
    swift_getKeyPath();
    swift_getKeyPath();

    sub_1426EC();

    return result;
  }

  return result;
}

uint64_t sub_76CFC()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
    sub_778B4(&qword_1C45B0, type metadata accessor for NowPlayingMiniPlayerSublineViewModel, &protocol conformance descriptor for NowPlayingMiniPlayerSublineViewModel);

    v1 = sub_142B9C();
    *(v0 + 40) = v1;
    *(v0 + 48) = v2;
  }

  return v1;
}

double sub_76DBC()
{
  swift_getKeyPath();
  if (qword_1BFFC0 != -1)
  {
    swift_once();
  }

  v0 = sub_14142C();
  __swift_project_value_buffer(v0, qword_1D17C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C45A0, &qword_14EED8);
  sub_779D0();
  sub_14183C();

  return result;
}

uint64_t sub_76E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1426EC();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_76F6C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1426EC();
}

uint64_t sub_76FDC()
{

  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___miniPlayerSubtitle, &qword_1C24A8, &qword_14C7E0);
  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___viewProvider, &qword_1C4598, &unk_14EEA0);

  return swift_deallocClassInstance();
}

uint64_t sub_77088()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1D17C0);
  __swift_project_value_buffer(v0, qword_1D17C0);
  return sub_14143C();
}

uint64_t _s12NowPlayingUI0aB26MiniPlayerSublineViewModelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v3)
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v3)
  {
  }

  return 1;
}

unint64_t sub_773D0()
{
  result = qword_1C4328;
  if (!qword_1C4328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4328);
  }

  return result;
}

void sub_77494(uint64_t a1)
{
  sub_77588();
  if (v1 <= 0x3F)
  {
    sub_77814(319, &unk_1C4378, &qword_1C1400, &qword_154A50, &type metadata accessor for Published);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_77588()
{
  if (!qword_1C4370)
  {
    v0 = sub_1426FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4370);
    }
  }
}

uint64_t getEnumTagSinglePayload for NowPlayingTransportController.ActiveAccessoryIndicator(unsigned __int8 *a1, unsigned int a2)
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

void sub_776AC(uint64_t a1)
{
  sub_777BC(319);
  if (v1 <= 0x3F)
  {
    sub_77814(319, &unk_1C44F8, &qword_1C0108, &unk_14C910, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_777BC(uint64_t a1)
{
  if (!qword_1C44F0)
  {
    sub_1415DC();
    v1 = sub_1450CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C44F0);
    }
  }
}

void sub_77814(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_778B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_778FC()
{
  result = qword_1C26A0;
  if (!qword_1C26A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2698, &qword_14CAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C26A0);
  }

  return result;
}

uint64_t sub_77960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_76CFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_7798C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;

  return result;
}

unint64_t sub_779D0()
{
  result = qword_1C45A8;
  if (!qword_1C45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C45A8);
  }

  return result;
}

uint64_t sub_77A30(void *a1, void *a2)
{
  v57 = a1;
  v3 = sub_14243C();
  v61 = *(v3 - 8);
  v62 = v3;
  __chkstk_darwin(v3);
  __chkstk_darwin(v4);
  v6 = v55 - v5;
  __chkstk_darwin(v7);
  v9 = v55 - v8;
  v10 = sub_141FFC();
  v58 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1D50, &qword_14C030);
  __chkstk_darwin(v13 - 8);
  v15 = v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v55 - v17;
  v19 = sub_140A3C();
  v60 = *(v19 - 8);
  __chkstk_darwin(v19);
  v59 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (v21 = sub_144C0C(), (v22 & 1) != 0) || (v23 = v21, (v24 = [a2 priceType]) == 0))
  {
LABEL_11:
    sub_1423CC();
    v38 = a2;
    v39 = sub_14242C();
    v40 = sub_144C3C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v43;
      *v41 = 136315395;
      *(v41 + 4) = sub_ED2A4(0xD000000000000027, 0x8000000000162BD0, &v63);
      *(v41 + 12) = 2113;
      *(v41 + 14) = v38;
      *v42 = a2;
      v44 = v38;
      _os_log_impl(&dword_0, v39, v40, "%s unable to setup alignment controller, missing fields: %{private}@", v41, 0x16u);
      sub_15340(v42, &qword_1C2580, &qword_14C8E0);

      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    return (*(v61 + 8))(v6, v62);
  }

  v55[4] = v23;
  v56 = v19;
  v25 = v24;
  v55[3] = sub_1448DC();
  v27 = v26;

  v28 = [a2 transcriptIdentifier];
  if (!v28)
  {

    goto LABEL_11;
  }

  v55[2] = v27;
  v29 = v28;
  v55[0] = sub_1448DC();
  v55[1] = v30;

  v31 = [a2 streamURL];
  if (v31)
  {
    v32 = v31;
    sub_140A2C();

    v33 = v60;
    v34 = *(v60 + 56);
    v35 = v15;
    v36 = 0;
  }

  else
  {
    v33 = v60;
    v34 = *(v60 + 56);
    v35 = v15;
    v36 = 1;
  }

  v37 = v56;
  v34(v35, v36, 1, v56);
  sub_78254(v15, v18);
  if ((*(v33 + 48))(v18, 1, v37) == 1)
  {

    sub_15340(v18, &unk_1C1D50, &qword_14C030);
    goto LABEL_11;
  }

  (*(v33 + 32))(v59, v18, v37);
  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  v46 = objc_allocWithZone(AVURLAsset);
  sub_140A1C(v47);
  v49 = v48;
  v50 = [v46 initWithURL:v48 options:0];

  sub_141FEC();
  sub_141F9C();
  (*(v58 + 8))(v12, v10);

  sub_1423CC();
  v51 = sub_14242C();
  v52 = sub_144C3C();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v63 = v54;
    *v53 = 136315138;
    *(v53 + 4) = sub_ED2A4(0xD000000000000027, 0x8000000000162BD0, &v63);
    _os_log_impl(&dword_0, v51, v52, "%s setup alignment controller successfully ✅.", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  (*(v61 + 8))(v9, v62);
  return (*(v60 + 8))(v59, v37);
}

uint64_t sub_78254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1D50, &qword_14C030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_7833C(uint64_t a1)
{
  v2 = sub_140DBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1C45B8;
  *(v1 + v6) = [objc_allocWithZone(UIImageView) init];
  v7 = (v1 + qword_1C45C0);
  *v7 = 0;
  v7[1] = 0;
  (*(v3 + 104))(v5, enum case for EpisodeUpsellBannerView.EpisodeUpsellBannerType.iOSNowPlaying(_:), v2);
  v8 = sub_140DEC();
  sub_140DCC();
  v9 = sub_140DAC();
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  v13.super.super.isa = *&v8[qword_1C45B8];
  isa = v13.super.super.isa;
  v17.top = NSDirectionalEdgeInsetsZero.top;
  v17.leading = leading;
  v17.bottom = bottom;
  v17.trailing = trailing;
  sub_144F8C(v13, 0, v17);

  return v8;
}

uint64_t sub_7850C()
{
  v1 = *(v0 + qword_1C45C0);
  v2 = *(v0 + qword_1C45C0 + 8);

  return sub_2173C(v1, v2);
}

uint64_t sub_78550(uint64_t a1)
{
  v2 = *(a1 + qword_1C45C0);
  v3 = *(a1 + qword_1C45C0 + 8);

  return sub_2173C(v2, v3);
}

uint64_t sub_785BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14236C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_7868C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_14236C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

void sub_78768(uint64_t a1)
{
  sub_14236C();
  if (v1 <= 0x3F)
  {
    sub_787EC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_787EC(uint64_t a1)
{
  if (!qword_1C4680)
  {
    sub_14473C();
    v1 = sub_142A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1C4680);
    }
  }
}

double sub_78878(uint64_t a1)
{
  sub_1422FC();
  sub_14228C();
  v3 = v2;
  sub_1422CC();
  sub_14230C();
  sub_14233C();
  v4 = sub_1422AC();
  v6 = v5;
  v7 = sub_1422DC();
  if (v3)
  {
    sub_78BDC();
    sub_144B8C();
  }

  sub_140DDC();
  [*(a1 + qword_1C45B8) setImage:v7];

  v8 = (a1 + qword_1C45C0);
  v9 = *(a1 + qword_1C45C0);
  v10 = *(a1 + qword_1C45C0 + 8);
  *v8 = v4;
  v8[1] = v6;
  sub_2172C(v4, v6);
  sub_2173C(v9, v10);
  sub_2173C(v4, v6);

  return result;
}

char *sub_78A00(uint64_t a1, uint64_t a2)
{
  v3 = sub_FAA04(*(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8));
  v4 = objc_allocWithZone(type metadata accessor for NowPlayingEpisodeUpsellBannerView(0));
  return sub_7833C(v3);
}

uint64_t sub_78A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_78B98(&qword_1C46B8, &unk_14EF68);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_78AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_78B98(&qword_1C46B8, &unk_14EF68);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_78B54(uint64_t a1)
{
  sub_78B98(&qword_1C46B8, &unk_14EF68);
  sub_14325C();
  __break(1u);
}

uint64_t sub_78B98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NowPlayingEpisodeUpsellBannerWrapper(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_78BDC()
{
  result = qword_1C46C0;
  if (!qword_1C46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C46C0);
  }

  return result;
}

id sub_78C30(id a1)
{
  v2 = v1;
  v3 = a1;
  if ((v1[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] & 1) == 0)
  {
    v54 = OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated;
    v6 = _swiftEmptyArrayStorage;
    v63 = _swiftEmptyArrayStorage;
    v7 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (v7)
    {
      v8 = v7;
      swift_getObjectType();
      v9 = swift_conformsToProtocol2();
      if (v9)
      {
        v10 = v9;
        v6 = sub_1347FC(0, 1, 1, _swiftEmptyArrayStorage);
        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_1347FC((v11 > 1), v12 + 1, 1, v6);
        }

        v6[2] = v12 + 1;
        v13 = &v6[2 * v12];
        v13[4] = v8;
        v13[5] = v10;
        v63 = v6;
      }

      else
      {
      }
    }

    v14 = [v3 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v14)
    {
      v15 = v14;
      swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v17 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1347FC(0, v6[2] + 1, 1, v6);
        }

        v19 = v6[2];
        v18 = v6[3];
        if (v19 >= v18 >> 1)
        {
          v6 = sub_1347FC((v18 > 1), v19 + 1, 1, v6);
        }

        v6[2] = v19 + 1;
        v20 = &v6[2 * v19];
        v20[4] = v15;
        v20[5] = v17;
        v63 = v6;
      }

      else
      {
      }
    }

    v21 = *&v2[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_interaction];
    v22 = v21 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v22 + 8);
      ObjectType = swift_getObjectType();
      v25 = (*(v23 + 24))(v21, ObjectType, v23);
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = _swiftEmptyArrayStorage;
    }

    v26 = sub_9040C(v25);

    sub_A71C8(v26);
    v27 = sub_90548(v63);

    sub_CCB50(v27, [v2 isReversed]);
    v29 = v28;

    v30 = [v3 isInteractive];
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    v32[2] = v29;
    v32[3] = v3;
    v32[4] = v31;

    swift_unknownObjectRetain();
    result = [v2 isReversed];
    if (result)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v29;
      *(v33 + 24) = v30;
      *(v33 + 32) = sub_7B8A8;
      *(v33 + 40) = v32;
      v60 = sub_7B8F4;
      v61 = v33;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_11D5C0;
      v59 = &block_descriptor_94;
      v34 = _Block_copy(&aBlock);

      [v2 setNoninteractiveAnimations:v34];
      _Block_release(v34);
      v35 = swift_allocObject();
      *(v35 + 16) = sub_7B8A8;
      *(v35 + 24) = v32;
      v60 = sub_7B904;
      v61 = v35;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_4D7D0;
      v59 = &block_descriptor_100;
      v36 = _Block_copy(&aBlock);

      [v2 setNoninteractiveCompletion:v36];
      _Block_release(v36);
LABEL_47:
      v51 = type metadata accessor for NowPlayingFormSheetAnimationController();
      v62.receiver = v2;
      v62.super_class = v51;
      v52 = objc_msgSendSuper2(&v62, "interruptibleAnimatorForTransition:", v3);

      return v52;
    }

    v53 = v3;
    if (v29 >> 62)
    {
      result = sub_14531C();
      v37 = result;
      if (result)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v37 = *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8));
      if (v37)
      {
LABEL_26:
        if (v37 < 1)
        {
          __break(1u);
          return result;
        }

        for (i = 0; v37 != i; i = i + 1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v39 = sub_1451FC();
            v40 = v39[5];
            if (v40)
            {
              goto LABEL_34;
            }
          }

          else
          {
            v39 = *(v29 + 8 * i + 32);

            v40 = v39[5];
            if (v40)
            {
LABEL_34:
              v41 = v40[9];
              if (v41)
              {
                v42 = v40[10];

                sub_2172C(v41, v42);
                v41(v39);
                sub_2173C(v41, v42);
                v43 = v39[6];
                if (v43)
                {
                  goto LABEL_36;
                }
              }

              else
              {

                v43 = v39[6];
                if (v43)
                {
LABEL_36:
                  v44 = v39[7];

                  v43(v40);
                  sub_2173C(v43, v44);
                }
              }

              v45 = v40[7];
              if (v45)
              {
                v46 = v40[8];

                v45(v39);
                sub_2173C(v45, v46);
              }

              v47 = v39[8];
              if (v47)
              {
                v48 = v39[9];

                v47(1, v40);
                sub_2173C(v47, v48);
              }

              v49 = v40[11];
              if (v49)
              {
                v50 = v40[12];

                v49(1, v39);
                sub_2173C(v49, v50);
              }
            }
          }
        }
      }
    }

    v3 = v53;
    v2[v54] = 1;
    goto LABEL_47;
  }

  v55.receiver = v1;
  v55.super_class = type metadata accessor for NowPlayingFormSheetAnimationController();
  v4 = objc_msgSendSuper2(&v55, "interruptibleAnimatorForTransition:", v3);

  return v4;
}

void sub_79308(char a1, unint64_t a2, void *a3, uint64_t a4)
{
  v4 = a2;
  if (a2 >> 62)
  {
LABEL_29:
    v6 = sub_14531C();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return;
    }
  }

  v7 = v4 & 0xC000000000000001;
  swift_beginAccess();
  v8 = 0;
  v37 = v4 & 0xFFFFFFFFFFFFFF8;
  v36 = v4;
  while (1)
  {
    if (v7)
    {
      v9 = sub_1451FC();
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v8 >= *(v37 + 16))
      {
        goto LABEL_28;
      }

      v9 = *(v4 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    v11 = v9[5];
    if (v11)
    {
      break;
    }

LABEL_5:

    ++v8;
    if (v10 == v6)
    {
      return;
    }
  }

  if ((a1 & 1) == 0)
  {
LABEL_23:
    v32 = v9[8];
    if (v32)
    {
      v33 = v9[9];

      v32(a1 & 1, v11);
      sub_2173C(v32, v33);
    }

    v34 = v11[11];
    if (v34)
    {
      v35 = v11[12];

      v34(a1 & 1, v9);
      sub_2173C(v34, v35);
    }

    goto LABEL_5;
  }

  v12 = v6;
  v13 = [a3 viewControllerForKey:UITransitionContextFromViewControllerKey];
  v14 = v13;
  if (!v13)
  {
LABEL_19:
    v29 = v11[7];
    if (v29)
    {
      v30 = v11[8];

      v29(v9);
      sub_2173C(v29, v30);
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    v6 = v12;
    v4 = v36;
    if (Strong)
    {
      Strong[OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_hasDonated] = 1;
    }

    goto LABEL_23;
  }

  v15 = [v13 view];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 snapshotViewAfterScreenUpdates:0];

    if (v17)
    {
      v18 = [v14 view];
      if (!v18)
      {
        goto LABEL_32;
      }

      v19 = v18;
      [v18 addSubview:v17];

      v20 = [a3 containerView];
      [v20 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      [v17 setFrame:{v22, v24, v26, v28}];
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

unint64_t sub_79624(unint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (result >> 62)
  {
LABEL_23:
    result = sub_14531C();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return result;
    }
  }

  if (v6 >= 1)
  {
    v25 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v5 & 0xC000000000000001;
    v21 = v5 & 0xC000000000000001;
    v22 = v6;
    while (1)
    {
      if (v9)
      {
        v10 = sub_1451FC();
        v11 = v10[5];
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v10 = *(v5 + 8 * v8 + 32);

        v11 = v10[5];
        if (!v11)
        {
          goto LABEL_6;
        }
      }

      v12 = *(v11 + 72);
      if (v12)
      {
        break;
      }

      v14 = v10[6];
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (a2)
      {

LABEL_6:

        goto LABEL_7;
      }

      v16 = v5;
      v17 = a2;
      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = a3;
      *(v19 + 24) = a4;

      sub_2173C(v25, v7);
      v20 = swift_allocObject();
      v25 = sub_7B964;
      *(v20 + 16) = sub_7B964;
      *(v20 + 24) = v19;
      aBlock[4] = sub_7B9E4;
      v27 = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_D78F4;
      aBlock[3] = &block_descriptor_110;
      a2 = _Block_copy(aBlock);
      v5 = v27;

      [v18 performWithoutAnimation:a2];

      _Block_release(a2);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if (v18)
      {
        __break(1u);
        goto LABEL_23;
      }

      v7 = v19;
      a2 = v17;
      v5 = v16;
      v9 = v21;
      v6 = v22;
LABEL_7:
      if (v6 == ++v8)
      {
        return sub_2173C(v25, v7);
      }
    }

    v13 = *(v11 + 80);

    sub_2172C(v12, v13);
    v12(v10);
    sub_2173C(v12, v13);
    v14 = v10[6];
    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_14:
    v15 = v10[7];

    v14(v11);
    sub_2173C(v14, v15);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

double sub_79990(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI38NowPlayingFormSheetAnimationController_completionBlocks);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = a1 & 1;

    v5 = v2 + 40;
    do
    {
      v6 = *(v5 - 8);
      v8 = v4;

      v6(&v8);

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_79B50(void *a1)
{
  v2 = v1;
  v4 = [v1 isReversed];
  v5 = &UITransitionContextToViewKey;
  if (v4)
  {
    v5 = &UITransitionContextFromViewKey;
  }

  v6 = [a1 viewForKey:*v5];
  if (v6)
  {
    v7 = v6;
    v8 = _swiftEmptyArrayStorage;
    v54 = _swiftEmptyArrayStorage;
    v9 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
    if (v9)
    {
      v10 = v9;
      swift_getObjectType();
      v11 = swift_conformsToProtocol2();
      if (v11)
      {
        v12 = v11;
        v8 = sub_1347FC(0, 1, 1, _swiftEmptyArrayStorage);
        v14 = v8[2];
        v13 = v8[3];
        if (v14 >= v13 >> 1)
        {
          v8 = sub_1347FC((v13 > 1), v14 + 1, 1, v8);
        }

        v8[2] = v14 + 1;
        v15 = &v8[2 * v14];
        v15[4] = v10;
        v15[5] = v12;
        v54 = v8;
      }

      else
      {
      }
    }

    v16 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
    if (v16)
    {
      v17 = v16;
      swift_getObjectType();
      v18 = swift_conformsToProtocol2();
      if (v18)
      {
        v19 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1347FC(0, v8[2] + 1, 1, v8);
        }

        v21 = v8[2];
        v20 = v8[3];
        if (v21 >= v20 >> 1)
        {
          v8 = sub_1347FC((v20 > 1), v21 + 1, 1, v8);
        }

        v8[2] = v21 + 1;
        v22 = &v8[2 * v21];
        v22[4] = v17;
        v22[5] = v19;
        v54 = v8;
      }

      else
      {
      }
    }

    v23 = *&v2[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_interaction];
    v24 = v23 + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v24 + 8);
      ObjectType = swift_getObjectType();
      v27 = (*(v25 + 24))(v23, ObjectType, v25);
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = _swiftEmptyArrayStorage;
    }

    v28 = sub_9040C(v27);

    sub_A71C8(v28);
    v29 = v54;
    v30 = sub_90548(v54);
    sub_CCB50(v30, [v2 isReversed]);
    v32 = v31;

    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v7;
    v34[4] = v29;
    v34[5] = a1;
    v34[6] = v32;

    swift_unknownObjectRetain();
    v46 = v29;

    v35 = v7;
    v36 = [a1 isInteractive];
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v36;
    *(v38 + 32) = sub_7B614;
    *(v38 + 40) = v34;
    *(v38 + 48) = v32;
    *(v38 + 56) = a1;
    *(v38 + 64) = v35;
    v52 = sub_7B67C;
    v53 = v38;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_11D5C0;
    v51 = &block_descriptor_5;
    v39 = _Block_copy(&aBlock);

    swift_unknownObjectRetain();
    v40 = v35;

    [v2 setNoninteractiveAnimations:v39];
    _Block_release(v39);
    v41 = swift_allocObject();
    *(v41 + 16) = v32;
    v52 = sub_7B6E4;
    v53 = v41;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_4D7D0;
    v51 = &block_descriptor_43;
    v42 = _Block_copy(&aBlock);

    [v2 setNoninteractiveCompletion:v42];
    _Block_release(v42);
    v47.receiver = v2;
    v47.super_class = type metadata accessor for PalettePresentationAnimationController();
    v43 = objc_msgSendSuper2(&v47, "interruptibleAnimatorForTransition:", a1);
    objc_opt_self();
    v44 = swift_dynamicCastObjCClass();
    if (!v44)
    {
      swift_unknownObjectRelease();
      v44 = 0;
    }

    v45 = *&v2[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator];
    *&v2[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator] = v44;

    if ((v36 & 1) == 0)
    {
      sub_7A10C(v33, v40, v46, a1, v32);
    }
  }
}

void sub_7A10C(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(*(Strong + OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_interaction) + OBJC_IVAR____TtC12NowPlayingUI30PalettePresentationInteraction_view);
    if (!v11)
    {
LABEL_26:

      return;
    }

    v12 = v11;
    v13 = [v12 superview];
    if (!v13)
    {
LABEL_25:

      v10 = v12;
      goto LABEL_26;
    }

    v69 = v10;
    v67 = v13;
    v14 = [v13 subviews];
    sub_7B6F4();
    v15 = sub_1449DC();

    v68 = v12;
    v16 = sub_12B950(v12, v15);
    LOBYTE(v14) = v17;

    if ((v14 & 1) == 0)
    {
      [v12 frame];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
      [a2 addSubview:v12];
      v76.origin.x = v19;
      v76.origin.y = v21;
      v76.size.width = v23;
      v76.size.height = v25;
      Width = CGRectGetWidth(v76);
      v77.origin.x = v19;
      v77.origin.y = v21;
      v77.size.width = v23;
      v77.size.height = v25;
      [v12 setFrame:{0.0, 0.0, Width, CGRectGetHeight(v77)}];
      v66 = v16;
      if ([v69 isReversed])
      {
        [v12 setAlpha:0.0];
        v27 = *&v69[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator];
        v28 = swift_allocObject();
        *(v28 + 16) = v12;
        v74 = sub_7B830;
        v75 = v28;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_11D5C0;
        v73 = &block_descriptor_70;
        v29 = _Block_copy(&aBlock);
        v30 = v12;
        v31 = v27;
      }

      else
      {
        v32 = *&v69[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator];
        v33 = swift_allocObject();
        *(v33 + 16) = v69;
        *(v33 + 24) = v12;
        v74 = sub_7B780;
        v75 = v33;
        aBlock = _NSConcreteStackBlock;
        v71 = 1107296256;
        v72 = sub_11D5C0;
        v73 = &block_descriptor_58;
        v29 = _Block_copy(&aBlock);
        v34 = v12;
        v31 = v32;
        v35 = v69;
      }

      [v31 addAnimations:v29];
      _Block_release(v29);

      v36 = swift_allocObject();
      *(v36 + 2) = v67;
      *(v36 + 3) = a2;
      *(v36 + 4) = v12;
      *(v36 + 5) = v66;
      v36[6] = v19;
      v36[7] = v21;
      v36[8] = v23;
      v36[9] = v25;
      *(v36 + 10) = v69;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_7B7D8;
      *(v37 + 24) = v36;
      v38 = OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks;
      swift_beginAccess();
      v39 = *&v69[v38];
      v40 = v12;
      v41 = v69;
      v42 = v67;
      v43 = a2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v69[v38] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v39 = sub_134820(0, v39[2] + 1, 1, v39);
        *&v69[v38] = v39;
      }

      v46 = v39[2];
      v45 = v39[3];
      if (v46 >= v45 >> 1)
      {
        v39 = sub_134820((v45 > 1), v46 + 1, 1, v39);
      }

      v39[2] = v46 + 1;
      v47 = &v39[2 * v46];
      v47[4] = sub_7B7F0;
      v47[5] = v37;
      *&v69[v38] = v39;
      swift_endAccess();

      v48 = *(a3 + 16);
      if (v48)
      {
        v49 = (a3 + 40);
        do
        {
          v50 = *v49;
          ObjectType = swift_getObjectType();
          v52 = *(v50 + 16);
          swift_unknownObjectRetain();
          v52(a4, a5, v41, ObjectType, v50);
          swift_unknownObjectRelease();
          v49 += 2;
          --v48;
        }

        while (v48);
      }

      if (a5 >> 62)
      {
        v53 = sub_14531C();
        if (v53)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v53 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
        if (v53)
        {
LABEL_17:
          if (v53 < 1)
          {
            __break(1u);
            return;
          }

          v54 = 0;
          do
          {
            if ((a5 & 0xC000000000000001) != 0)
            {
              v55 = sub_1451FC();
            }

            else
            {
              v55 = *(a5 + 8 * v54 + 32);
            }

            ++v54;
            v56 = [a4 containerView];
            [*(v55 + 32) bounds];
            [v56 convertRect:*(v55 + 32) fromCoordinateSpace:?];
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v64 = v63;

            [*(v55 + 32) setTranslatesAutoresizingMaskIntoConstraints:1];
            v65 = [a4 containerView];
            [v65 addSubview:*(v55 + 32)];

            [*(v55 + 32) setFrame:{v58, v60, v62, v64}];
          }

          while (v53 != v54);
        }
      }
    }

    v12 = v67;
    v10 = v68;
    goto LABEL_25;
  }
}

void sub_7A73C(uint64_t a1, void *a2)
{
  v4 = objc_opt_self();
  [*(a1 + OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator) duration];
  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v10[4] = sub_7B844;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_11D5C0;
  v10[3] = &block_descriptor_76;
  v8 = _Block_copy(v10);
  v9 = a2;

  [v4 animateKeyframesWithDuration:0 delay:v8 options:0 animations:v6 completion:0.0];
  _Block_release(v8);
}

void sub_7A85C(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_7B84C;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_11D5C0;
  v6[3] = &block_descriptor_82;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addKeyframeWithRelativeStartTime:v4 relativeDuration:0.0 animations:0.5];
  _Block_release(v4);
}

uint64_t sub_7A94C(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, void *a10)
{
  sub_7B6F4();
  result = sub_144FFC();
  if ((result & 1) == 0)
  {
    [a6 insertSubview:a8 atIndex:a9];
    [a8 setFrame:{a1, a2, a3, a4}];
    v20 = [a7 traitCollection];
    v21 = [v20 userInterfaceIdiom];

    if (v21 != &dword_0 + 1 || (result = [a10 isReversed], result))
    {

      return [a8 setAlpha:1.0];
    }
  }

  return result;
}

char *sub_7AA88(uint64_t a1, char a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, void *a7)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v13 = result;
  if (a2)
  {
    v14 = objc_opt_self();
    v15 = swift_allocObject();
    *(v15 + 16) = a3;
    *(v15 + 24) = a4;
    v16 = swift_allocObject();
    v17 = sub_77B4;
    *(v16 + 16) = sub_77B4;
    *(v16 + 24) = v15;
    aBlock[4] = sub_7B6EC;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_D78F4;
    aBlock[3] = &block_descriptor_52;
    v18 = _Block_copy(aBlock);

    [v14 performWithoutAnimation:v18];
    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v17 = 0;
  v15 = 0;
LABEL_6:
  [*&v13[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator] startAnimation];
  result = [*&v13[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_easingAnimator] startAnimation];
  v62 = v17;
  v63 = v15;
  if (a5 >> 62)
  {
    result = sub_14531C();
    v20 = result;
    if (result)
    {
      goto LABEL_8;
    }

LABEL_30:

    return sub_2173C(v62, v63);
  }

  v20 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
  if (!v20)
  {
    goto LABEL_30;
  }

LABEL_8:
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = a5 & 0xC000000000000001;
    v64 = v20;
    v65 = a5;
    v66 = a5 & 0xC000000000000001;
    while (1)
    {
      if (v22)
      {
        v24 = sub_1451FC();
        v25 = *(v24 + 40);
        if (v25)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v24 = *(a5 + 8 * v21 + 32);

        v25 = *(v24 + 40);
        if (v25)
        {
LABEL_17:
          v26 = *(v25 + 40);
          if (v26)
          {
            v27 = *(v25 + 48);
            sub_2172C(*(v25 + 40), v27);

            v28 = v26(v24);
            v30 = v29;
            v32 = v31;
            v34 = v33;
            sub_2173C(v26, v27);
            v35 = *(v25 + 72);
            if (v35)
            {
              v36 = *(v25 + 80);

              v35(v24);
              sub_2173C(v35, v36);
            }

            v37 = *(v24 + 48);
            if (v37)
            {
              v38 = *(v24 + 56);

              v37(v25);
              sub_2173C(v37, v38);
            }

            v39 = *(v25 + 32);
            v40 = [a6 containerView];
            [v39 convertRect:v40 toCoordinateSpace:{v28, v30, v32, v34}];
            v42 = v41;
            v44 = v43;
            v46 = v45;
            v48 = v47;

            v49 = v13;
            if ([v49 isReversed])
            {
              [a7 frame];
              MinY = CGRectGetMinY(v69);
              [v49 sourceFrame];
              if (MinY != CGRectGetMinY(v70))
              {
                [v49 sourceFrame];
                v51 = CGRectGetMinY(v71);
                [a7 frame];
                v44 = v44 + v51 - CGRectGetMinY(v72);
              }

              [a7 frame];
              MinX = CGRectGetMinX(v73);
              [v49 sourceFrame];
              if (MinX == CGRectGetMinX(v74))
              {
              }

              else
              {
                [v49 sourceFrame];
                v54 = v53;
                v56 = v55;
                v58 = v57;
                v60 = v59;

                v75.origin.x = v54;
                v75.origin.y = v56;
                v75.size.width = v58;
                v75.size.height = v60;
                v61 = CGRectGetMinX(v75);
                [a7 frame];
                v42 = v42 + v61 - CGRectGetMinX(v76);
              }

              v20 = v64;
              a5 = v65;
            }

            else
            {
            }

            v23 = *(v24 + 32);
            [v23 setFrame:{v42, v44, v46, v48}];

            v22 = v66;
          }
        }
      }

      ++v21;

      if (v20 == v21)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_7AF9C(char a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = sub_14531C();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (!v4)
    {
      return;
    }
  }

  if (v4 >= 1)
  {
    v5 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1451FC();
        v7 = v6[5];
        if (v7)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v6 = *(a2 + 8 * v5 + 32);

        v7 = v6[5];
        if (v7)
        {
LABEL_11:
          if ((a1 & 1) != 0 && (v8 = v7[7]) != 0)
          {
            v9 = v7[8];

            sub_2172C(v8, v9);
            v8(v6);
            sub_2173C(v8, v9);
            v10 = v6[8];
            if (!v10)
            {
              goto LABEL_17;
            }

LABEL_16:
            v11 = v6[9];

            v10(a1 & 1, v7);
            sub_2173C(v10, v11);
          }

          else
          {

            v10 = v6[8];
            if (v10)
            {
              goto LABEL_16;
            }
          }

LABEL_17:
          v12 = v7[11];
          if (v12)
          {
            v13 = v7[12];

            v12(a1 & 1, v6);
            sub_2173C(v12, v13);
          }
        }
      }

      ++v5;

      if (v4 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
}

id sub_7B178(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_7B2F4(char a1)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks;
  swift_beginAccess();
  v5 = *(v1 + v3);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = a1 & 1;

    v8 = v5 + 40;
    do
    {
      v9 = *(v8 - 8);
      v10 = v7;

      v9(&v10);

      v8 += 16;
      --v6;
    }

    while (v6);
  }

  return result;
}

id sub_7B3F0(void *a1)
{
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_ascentDescentAnimator] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_interaction] = a1;
  v3 = objc_allocWithZone(UICubicTimingParameters);
  v4 = a1;
  v5 = [v3 init];
  v6 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v5 timingParameters:0.5];

  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_basicAnimator] = v6;
  v7 = [objc_allocWithZone(MPCubicSpringTimingParameters) initWithMass:3.0 stiffness:500.0 damping:1000.0 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.187800005 controlPoint2:{0.00230000005, 0.539900005, 0.962899983}];
  [v7 setSpringCubicTimingParameters:v8];

  v9 = [objc_allocWithZone(MPCubicSpringAnimator) initWithDuration:v7 timingParameters:0.0];
  *&v1[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_easingAnimator] = v9;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PalettePresentationAnimationController();
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_7B584()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7B5BC()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_7B624()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7B6AC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_7B6F4()
{
  result = qword_1C47C0;
  if (!qword_1C47C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C47C0);
  }

  return result;
}

uint64_t sub_7B740()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7B788()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_7B7F8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7B860()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_7B8B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_7B92C()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_7BA0C(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration] = 0;
  v5 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider;
  *&v2[OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider] = 1;
  v6 = &v2[OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_episodeController];
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 0;
  sub_1D19C(a1, v14, &qword_1C4860, &qword_14F170);
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4868, &qword_14F178);
    v7 = swift_dynamicCast();
    v8 = v12;
    if (!v7)
    {
      v8 = 1;
    }
  }

  else
  {
    sub_15340(v14, &qword_1C4860, &qword_14F170);
    v8 = 1;
  }

  v9 = *&v2[v5];
  *&v2[v5] = v8;
  sub_7BF04(v9);
  swift_beginAccess();
  sub_7D0A8(a2, v6);
  swift_endAccess();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for NowPlayingContextInteractionDelegate();
  v10 = objc_msgSendSuper2(&v13, "init");
  sub_15340(a2, &qword_1C12E8, &qword_14B080);
  sub_15340(a1, &qword_1C4860, &qword_14F170);
  return v10;
}

double NowPlayingContextInteractionDelegate.updateMenuProvider(asPartOf:for:)(uint64_t a1, void *a2)
{
  v3 = sub_140CAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_140C8C();
  __chkstk_darwin(v7);
  v8 = sub_140CBC();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0, qword_14F0F0);
  *&v10 = __chkstk_darwin(v9 - 8).n128_u64[0];
  v12 = &v25 - v11;
  v13 = [a2 podcast];
  if (v13 && (v25 = v12, v14 = v13, v15 = [v13 supportsSubscription], v14, v16 = v25, v15))
  {
    v17 = sub_140D0C();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 104))(v6, enum case for InteractionContext.Origin.none(_:), v3);
    sub_140C9C();
    sub_1445DC();
    swift_allocObject();

    v18 = a2;
    v19 = v26;
    v20 = sub_1445CC();
    *(v19 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration) = v20;

    v21 = *(v19 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider);
    *(v19 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider) = v20;
    return sub_7BF04(v21);
  }

  else
  {
    v23 = v26;
    *(v26 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration) = 0;

    v24 = *(v23 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider);
    *(v23 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider) = 1;

    return sub_7BF04(v24);
  }
}

double sub_7BF04(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

UITargetedPreview_optional __swiftcall NowPlayingContextInteractionDelegate.contextMenuInteraction(_:previewForDismissingMenuWithConfiguration:)(UIContextMenuInteraction _, UIContextMenuConfiguration previewForDismissingMenuWithConfiguration)
{
  v2 = sub_7CD7C(_.super.isa);
  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

void sub_7BF3C(uint64_t a1)
{
  v2 = sub_1424AC();
  __chkstk_darwin(v2);
  if (a1)
  {
    if (qword_1BFFE8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1D19C(&static NowPlayingDataProvider.shared, v11, &qword_1C1510, &unk_150610);
    if (v12)
    {
      sub_1DB40(v11, v13);
      sub_7D29C(v11);
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      v3 = sub_14449C();

      __swift_destroy_boxed_opaque_existential_0(v13);
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = (v3 + 32);
        while (1)
        {
          __swift_project_boxed_opaque_existential_1(v6, v6[3]);
          v7 = sub_14454C();

          if (v7)
          {
            break;
          }

          ++v5;
          v6 += 5;
          if (v4 == v5)
          {
            goto LABEL_11;
          }
        }

        v4 = v5;
      }

LABEL_11:
      v8 = *(v3 + 16);
      if (v4 == v8)
      {

        return;
      }

      if (v4 < v8)
      {
        __swift_project_boxed_opaque_existential_1((v3 + 32 + 40 * v4), *(v3 + 32 + 40 * v4 + 24));
        v9 = sub_14454C();

        if (v9)
        {

          v10 = v9;
          sub_144CCC();
          sub_14249C();
          sub_144CDC();

          return;
        }

        goto LABEL_19;
      }

      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }
}

Class sub_7C1A4(int a1, uint64_t a2, id a3)
{
  v4 = [a3 view];
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = v6;
  aBlock[4] = sub_7D294;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B9D0;
  aBlock[3] = &block_descriptor_46;
  v8 = _Block_copy(aBlock);

  v9 = [v5 elementWithUncachedProvider:v8];
  _Block_release(v8);
  sub_2B860(0, &qword_1C4878, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_14F0E0;
  *(v10 + 32) = v9;
  v14 = v10;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19.value._countAndFlagsBits = 0;
  v19.value._object = 0;
  v17.value.super.isa = 0;
  v17.is_nil = 0;
  v11.value = 0;
  isa = sub_144F7C(v18, v19, v17, v11, 0xFFFFFFFFFFFFFFFFLL, v14, v15).super.super.isa;

  return isa;
}

void sub_7C438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_14455C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_episodeController;
  v10 = Strong;
  swift_beginAccess();
  sub_1D19C(v10 + v9, &v25, &qword_1C12E8, &qword_14B080);

  if (!*(&v26 + 1))
  {
LABEL_8:
    sub_15340(&v25, &qword_1C12E8, &qword_14B080);
    return;
  }

  sub_2C690(&v25, v28);
  v11 = sub_1445BC();
  sub_144BFC();
  v13 = v12;

  if (v13)
  {
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_14456C();
    (*(v5 + 104))(v7, enum case for PreviewingPresentationHint.inferTab(_:), v4);
    sub_14450C();

LABEL_5:

    (*(v5 + 8))(v7, v4);
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v28);
    return;
  }

  v14 = sub_1445BC();
  v15 = [v14 podcast];

  if (!v15)
  {
    goto LABEL_6;
  }

  v16 = sub_144C0C();
  v18 = v17;

  if (v18)
  {
    goto LABEL_6;
  }

  if (v16 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = sub_1445BC();
    v20 = sub_144C0C();
    v22 = v21;

    if (v22)
    {
      goto LABEL_6;
    }

    v24 = a3;
    if ((v20 & 0x8000000000000000) == 0)
    {
      __swift_project_boxed_opaque_existential_1(v28, v29);
      sub_14456C();
      (*(v5 + 104))(v7, enum case for PreviewingPresentationHint.inferTab(_:), v4);
      sub_1444FC();
      goto LABEL_5;
    }
  }

  __break(1u);
}

id NowPlayingContextInteractionDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_7C978(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_7CA14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id sub_7CA64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2B860(0, &qword_1C4870, UIMenuElement_ptr);
  v3 = sub_1449DC();

  v4 = v2(v3);

  return v4;
}

char *_s12NowPlayingUI0aB26ContextInteractionDelegateC011contextMenuE0_016configurationForH10AtLocationSo09UIContextH13ConfigurationCSgSo0mhE0C_So7CGPointVtF_0(void *a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_menuProvider);
  if (v3 == 1)
  {
    return 0;
  }

  type metadata accessor for NowPlayingContextMenuConfiguration();
  v6 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI36NowPlayingContextInteractionDelegate_contextActionConfiguration);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_7D1F4;
  v20 = v7;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_7CA14;
  v18 = &block_descriptor_34;
  v10 = _Block_copy(&v15);
  sub_7D244(v3);
  sub_7D244(v3);

  sub_7D244(v3);

  v11 = a1;

  v19 = sub_7D23C;
  v20 = v8;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_7CA64;
  v18 = &block_descriptor_37;
  v12 = _Block_copy(&v15);

  v13 = [ObjCClassFromMetadata configurationWithIdentifier:0 previewProvider:v10 actionProvider:v12];

  _Block_release(v12);
  _Block_release(v10);
  *&v13[OBJC_IVAR____TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration_config] = v6;
  v14 = v13;

  [v14 setPreferredMenuElementOrder:2];

  sub_7BF04(v3);
  return v14;
}

id sub_7CD7C(void *a1)
{
  v2 = [objc_allocWithZone(UIPreviewParameters) init];
  v3 = [objc_opt_self() clearColor];
  [v2 setBackgroundColor:v3];

  v4 = [a1 view];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(UITargetedPreview) initWithView:v4 parameters:v2];
  }

  else
  {

    return 0;
  }

  return v6;
}

void sub_7CE58(void *a1, void *a2)
{
  type metadata accessor for NowPlayingContextMenuConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC12NowPlayingUIP33_51F693B05AE440B605BF23B767A044C434NowPlayingContextMenuConfiguration_config);
    if (v5)
    {
      v6 = qword_1BFFE8;
      v7 = a1;

      if (v6 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (qword_1D1830)
      {
        v8 = qword_1D1840;
        if (qword_1D1840)
        {

          v9 = v8;
          v10 = sub_14458C();

          [a2 setPreferredCommitStyle:v10];
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v12 = swift_allocObject();
          v12[2] = v11;
          v12[3] = v5;
          v12[4] = v9;
          aBlock[4] = sub_7D198;
          aBlock[5] = v12;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_11D5C0;
          aBlock[3] = &block_descriptor_6;
          v13 = _Block_copy(aBlock);

          v14 = v9;

          [a2 addCompletion:v13];
          _Block_release(v13);
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
}

uint64_t sub_7D0A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C12E8, &qword_14B080);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_7D118()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7D150()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_7D1BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_7D1FC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_7D244(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_7D254()
{

  return _swift_deallocObject(v0, 32, 7);
}

NSString sub_7D318()
{
  result = sub_14489C();
  qword_1D17E8 = result;
  return result;
}

void sub_7D350(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
LABEL_11:
    if ((*(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v7 << 6))) & 0x8000000000000000) != 0)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

      v9 = UICollectionElementKindSectionHeader;
      v10 = sub_14489C();

      [v13 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v9 withReuseIdentifier:v10];
    }

    else
    {
      v12 = swift_getObjCClassFromMetadata();

      v10 = sub_14489C();

      [v13 registerClass:v12 forCellWithReuseIdentifier:v10];
    }

    v5 &= v5 - 1;
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_11;
    }
  }
}

void sub_7D514(__n128 a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
  if (v4)
  {
    v5 = v4;
    [v5 setDataSource:0];
    [v5 setDelegate:0];
  }

  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1D1830)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (!qword_1D1840)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_12;
  }

  v7 = Strong;
  v8 = v2;
  v9 = sub_144FFC();

  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!qword_1D1830)
  {
    goto LABEL_15;
  }

  if (qword_1D1840)
  {
    swift_unknownObjectWeakAssign();
LABEL_12:
    v10.receiver = v2;
    v10.super_class = ObjectType;
    objc_msgSendSuper2(&v10, "dealloc");
    return;
  }

LABEL_16:
  __break(1u);
}

uint64_t type metadata accessor for NowPlayingViewController(uint64_t a1)
{
  result = qword_1C4960;
  if (!qword_1C4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_7D888(__n128 a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0, &qword_14B8F0);
  __chkstk_darwin(v4 - 8);
  v6 = &v78 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4AA0, &qword_14F320);
  v8 = *(v7 - 8);
  v81 = v7;
  v82 = v8;
  __chkstk_darwin(v7);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4AA8, &qword_14F328);
  v12 = *(v11 - 8);
  v83 = v11;
  v84 = v12;
  __chkstk_darwin(v11);
  v79 = &v78 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4AB0, &unk_14F330);
  v15 = *(v14 - 8);
  v85 = v14;
  v86 = v15;
  *&v16 = __chkstk_darwin(v14).n128_u64[0];
  v80 = &v78 - v17;
  v88.receiver = v2;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, "viewDidLoad", v16);
  v87[0] = sub_141C4C();
  sub_2B860(0, &qword_1C2160, OS_dispatch_queue_ptr);
  v18 = sub_144D8C();
  v87[39] = v18;
  v19 = sub_144D3C();
  (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4AC0, &qword_14C8C8);
  sub_1D4A4(&qword_1C2538, &unk_1C4AC0, &qword_14C8C8, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_4236C(&qword_1C1740, &qword_1C2160, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  sub_14283C();
  sub_15340(v6, &qword_1C16E0, &qword_14B8F0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2530, &qword_14C8D0);
  sub_1D4A4(&qword_1C4AD0, &qword_1C4AA0, &qword_14F320, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v20 = v79;
  v21 = v81;
  sub_1427BC();
  (*(v82 + 8))(v10, v21);
  sub_1D4A4(&qword_1C4AD8, &qword_1C4AA8, &qword_14F328, &protocol conformance descriptor for Publishers.Map<A, B>);
  sub_89140();
  v22 = v80;
  v23 = v83;
  sub_14286C();
  (*(v84 + 8))(v20, v23);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D4A4(&qword_1C4AF8, &unk_1C4AB0, &unk_14F330, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v24 = v85;
  sub_14289C();

  (*(v86 + 8))(v22, v24);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1910, &qword_152DF0);
  sub_1D4A4(&qword_1C1918, &qword_1C1910, &qword_152DF0, &protocol conformance descriptor for [A]);
  sub_14258C();
  swift_endAccess();

  v25 = [v2 view];
  if (!v25)
  {
    __break(1u);
    goto LABEL_19;
  }

  v26 = v25;
  v27 = &v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics];
  v28 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24];
  v29 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics], v28);
  (*(v29 + 48))(v28, v29);
  [v26 music_setLayoutInsets:?];

  v30 = [v2 view];
  if (!v30)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = v30;
  [v30 addSubview:*&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_backgroundView]];

  v32 = [objc_allocWithZone(type metadata accessor for NowPlayingCollectionView()) init];
  v33 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView;
  v34 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
  *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView] = v32;
  v35 = v32;

  if (!v35)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v35 setAlwaysBounceVertical:1];

  v36 = *&v2[v33];
  if (!v36)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 clearColor];
  [v38 setBackgroundColor:v39];

  v40 = *&v2[v33];
  if (!v40)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v40 setDelegate:v2];
  v41 = *&v2[v33];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v41 setDataSource:v2];
  v42 = *&v2[v33];
  if (!v42)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v42 setDragDelegate:v2];
  v43 = *&v2[v33];
  if (!v43)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v43 setDropDelegate:v2];
  v44 = *&v2[v33];
  if (!v44)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v45 = *(v27 + 3);
  v46 = *(v27 + 4);
  __swift_project_boxed_opaque_existential_1(v27, v45);
  v47 = *(v46 + 136);
  v48 = v44;
  v49 = v47(v45, v46);
  [v48 contentInset];
  [v48 setContentInset:v49];

  v50 = [v2 view];
  if (!v50)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!*&v2[v33])
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v51 = v50;
  [v50 addSubview:?];

  v52 = *&v2[v33];
  if (!v52)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B00, &qword_14F340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14F190;
  strcpy((inited + 32), "ControlsHeader");
  *(inited + 47) = -18;
  *(inited + 48) = type metadata accessor for NowPlayingControlsHeader() | 0x8000000000000000;
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x8000000000163390;
  v54 = type metadata accessor for TitleSectionHeaderView();
  *(inited + 72) = v54 | 0x8000000000000000;
  *(inited + 80) = 0x65746F4E776F6853;
  *(inited + 88) = 0xEF72656461654873;
  *(inited + 96) = v54 | 0x8000000000000000;
  *(inited + 104) = 0x6165486575657551;
  *(inited + 112) = 0xEB00000000726564;
  *(inited + 120) = v54 | 0x8000000000000000;
  strcpy((inited + 128), "ChapterHeader");
  *(inited + 142) = -4864;
  *(inited + 144) = v54 | 0x8000000000000000;
  *(inited + 152) = 0x6C6C6543676E6F53;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = type metadata accessor for SongCell(0);
  *(inited + 176) = 0x4372657470616843;
  *(inited + 184) = 0xEB000000006C6C65;
  *(inited + 192) = type metadata accessor for DeprecatedChapterCell(0);
  *(inited + 200) = 0x6543726563617053;
  *(inited + 208) = 0xEA00000000006C6CLL;
  *(inited + 216) = sub_2B860(0, &qword_1C4B08, UICollectionViewTableCell_ptr);
  *(inited + 224) = 0x7470697263736544;
  *(inited + 232) = 0xEF6C6C65436E6F69;
  v55 = type metadata accessor for NowPlayingLyricsCell();
  *(inited + 240) = v55;
  strcpy((inited + 248), "ShowNotesCell");
  *(inited + 262) = -4864;
  *(inited + 264) = v55;
  v56 = v52;
  v57 = sub_13A608(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B10, &qword_14F348);
  swift_arrayDestroy();
  sub_7D350(v57);

  v58 = &v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration];
  v59 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24];
  v60 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32];
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration], v59);
  if ((*(v60 + 64))(v59, v60))
  {
    sub_1DB40(v58, v87);
    v61 = objc_allocWithZone(type metadata accessor for NowPlayingControlsViewController());

    v63 = sub_E7CA0(v62, v87);

    [v63 loadViewIfNeeded];
    [v2 addChildViewController:v63];
    [v63 didMoveToParentViewController:v2];
    v64 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController];
    *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController] = v63;
  }

  sub_1DB40(v27, v87);
  v65 = type metadata accessor for LyricsTextViewController();
  v66 = objc_allocWithZone(v65);
  v67 = sub_FF5CC(v87);
  v68 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController;
  v69 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController];
  *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController] = v67;
  v70 = v67;

  [v2 addChildViewController:v70];
  v71 = *&v2[v68];
  if (!v71)
  {
    goto LABEL_30;
  }

  [v71 didMoveToParentViewController:v2];
  sub_1DB40(v27, v87);
  v72 = objc_allocWithZone(v65);
  v73 = sub_FF5CC(v87);
  v74 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController;
  v75 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
  *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController] = v73;
  v76 = v73;

  [v2 addChildViewController:v76];
  v77 = *&v2[v74];
  if (v77)
  {
    [v77 didMoveToParentViewController:v2];
    return;
  }

LABEL_31:
  __break(1u);
}

void sub_7E4A0(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_7E4FC(v2);
  }
}

void sub_7E4FC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B18, &unk_14F350);
  __chkstk_darwin(v4 - 8);
  v6 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v71 - v8;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v71 - v12;
  v14 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController];
  if (!v14)
  {
LABEL_11:
    v25 = &qword_1C4000;
    if (a1)
    {
      goto LABEL_12;
    }

LABEL_16:
    v35 = 0;
    v36 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v15 = v14;
  if (a1)
  {
    v16 = [a1 playerPath];
  }

  else
  {
    v16 = 0;
  }

  type metadata accessor for NowPlayingMetadataPlaceholder();
  swift_allocObject();
  *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__placeholder] = sub_D9AB0(v16);

  if (a1)
  {
    v17 = a1;
    v18 = [v17 playerPath];
    v19 = [v18 isSystemPodcastsPath];

    v20 = a1;
    if (v19)
    {
      goto LABEL_9;
    }
  }

  v20 = 0;
LABEL_9:
  v21 = *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse];
  *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController__systemPodcastsResponse] = v20;
  v22 = v20;

  sub_E4F08();
  v23 = *&v14[OBJC_IVAR____TtC12NowPlayingUI32NowPlayingControlsViewController_artworkView];
  if (v23)
  {
    v24 = v23;
    sub_C88E4([a1 videoOutput]);

    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v25 = &qword_1C4000;
  if (!a1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v26 = &selRef_metadataObject;
  v27 = [a1 tracklist];
  v29 = sub_AB9C0(v27, v28);

  v71 = v29;
  if (!v29)
  {
    v36 = _swiftEmptyArrayStorage;
    goto LABEL_46;
  }

  v30 = a1;
  sub_7EFF4(v30);

  v31 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
  swift_beginAccess();
  sub_1D19C(&v2[v31], v13, &qword_1C4B18, &unk_14F350);
  sub_1D19C(v13, v9, &qword_1C4B18, &unk_14F350);
  v32 = sub_140D3C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v9, 1, v32) == 1)
  {
    sub_15340(v9, &qword_1C4B18, &unk_14F350);
  }

  else
  {
    v37 = sub_140D1C();
    (*(v33 + 8))(v9, v32);
    if (v37)
    {

      v36 = sub_134844(0, 1, 1, _swiftEmptyArrayStorage);
      v39 = *(v36 + 2);
      v38 = *(v36 + 3);
      v25 = &qword_1C4000;
      if (v39 >= v38 >> 1)
      {
        v36 = sub_134844((v38 > 1), v39 + 1, 1, v36);
      }

      v26 = &selRef_metadataObject;
      *(v36 + 2) = v39 + 1;
      v36[v39 + 32] = 2;
      goto LABEL_30;
    }
  }

  sub_1D19C(v13, v6, &qword_1C4B18, &unk_14F350);
  if (v34(v6, 1, v32) == 1)
  {
    sub_15340(v6, &qword_1C4B18, &unk_14F350);
    v25 = &qword_1C4000;
    v26 = &selRef_metadataObject;
  }

  else
  {
    v40 = sub_140D2C();
    (*(v33 + 8))(v6, v32);
    v25 = &qword_1C4000;
    v26 = &selRef_metadataObject;
    if (v40)
    {

      v36 = sub_134844(0, 1, 1, _swiftEmptyArrayStorage);
      v42 = *(v36 + 2);
      v41 = *(v36 + 3);
      if (v42 >= v41 >> 1)
      {
        v36 = sub_134844((v41 > 1), v42 + 1, 1, v36);
      }

      *(v36 + 2) = v42 + 1;
      v36[v42 + 32] = 1;
      goto LABEL_30;
    }
  }

  v36 = _swiftEmptyArrayStorage;
LABEL_30:
  v43 = sub_141BDC();
  if (v43)
  {
    v44 = v43;
    v45 = [v43 chapters];
    if (v45)
    {
      v46 = v45;
      sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
      v47 = sub_1449DC();

      v44 = v46;
    }

    else
    {
      v47 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v47 = _swiftEmptyArrayStorage;
  }

  if (v47 >> 62)
  {
    v48 = sub_14531C();
  }

  else
  {
    v48 = *(&dword_10 + (v47 & 0xFFFFFFFFFFFFFF8));
  }

  if (v48 >= 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_134844(0, *(v36 + 2) + 1, 1, v36);
    }

    v50 = *(v36 + 2);
    v49 = *(v36 + 3);
    if (v50 >= v49 >> 1)
    {
      v36 = sub_134844((v49 > 1), v50 + 1, 1, v36);
    }

    *(v36 + 2) = v50 + 1;
    v36[v50 + 32] = 3;
  }

  v51 = *&v2[v25[279]];
  if (!v51)
  {
    goto LABEL_70;
  }

  v52 = v51;
  [v52 contentInset];
  [v52 setContentInset:?];

  sub_15340(v13, &qword_1C4B18, &unk_14F350);
LABEL_46:
  v53 = [a1 v26[31]];
  v35 = sub_144E5C();

  v54 = [a1 v26[31]];
  v55 = sub_144E6C();

  if ((v35 & 1) == 0)
  {
    if (v55)
    {
      goto LABEL_54;
    }

    LODWORD(a1) = 0;
    v35 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_57;
    }

LABEL_17:
    v36 = sub_134844(0, *(v36 + 2) + 1, 1, v36);
    goto LABEL_57;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_134844(0, *(v36 + 2) + 1, 1, v36);
  }

  v57 = *(v36 + 2);
  v56 = *(v36 + 3);
  if (v57 >= v56 >> 1)
  {
    v36 = sub_134844((v56 > 1), v57 + 1, 1, v36);
  }

  *(v36 + 2) = v57 + 1;
  v36[v57 + 32] = 5;
  if ((v55 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_54:
  LODWORD(a1) = 1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_57:
  v59 = *(v36 + 2);
  v58 = *(v36 + 3);
  if (v59 >= v58 >> 1)
  {
    v36 = sub_134844((v58 > 1), v59 + 1, 1, v36);
  }

  *(v36 + 2) = v59 + 1;
  v36[v59 + 32] = 4;
  if ((a1 | v35))
  {
LABEL_60:
    v60 = *&v2[v25[279]];
    if (!v60)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    [v60 setBackgroundView:0];
LABEL_64:
    *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections] = v36;

    v69 = *&v2[v25[279]];
    if (v69)
    {
      [v69 reloadData];
      return;
    }

    __break(1u);
    goto LABEL_68;
  }

  v61 = *&v2[v25[279]];
  if (v61)
  {
    v62 = objc_opt_self();
    v63 = v61;
    v64 = [v62 mainBundle];
    v70._countAndFlagsBits = 0x8000000000160EC0;
    v72._countAndFlagsBits = 0xD000000000000017;
    v72._object = 0x8000000000163470;
    v73.value._countAndFlagsBits = 0;
    v73.value._object = 0;
    v65.super.isa = v64;
    v74._countAndFlagsBits = 0;
    v74._object = 0xE000000000000000;
    v66 = sub_1409DC(v72, v73, v65, v74, 0xD000000000000013, v70);
    v68 = v67;

    sub_832D0(v66, v68);

    goto LABEL_64;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

id sub_7EE30(char a1, __n128 a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewWillAppear:", a1 & 1);
  result = [v2 isBeingPresented];
  if (result)
  {
    if (qword_1BFFE8 != -1)
    {
      swift_once();
    }

    result = swift_beginAccess();
    if (qword_1D1830)
    {
      if (qword_1D1840)
      {
        return swift_unknownObjectWeakAssign();
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

void *sub_7EF5C()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController;
  v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController);
  }

  else
  {
    sub_1DB40(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics, v10);
    v4 = objc_allocWithZone(type metadata accessor for LyricsTextViewController());
    v5 = v0;
    v6 = sub_FF5CC(v10);
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_7EFF4(void *a1)
{
  v51 = sub_140D6C();
  v2 = *(v51 - 8);
  __chkstk_darwin(v51);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B18, &unk_14F350);
  __chkstk_darwin(v5 - 8);
  v50 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1D50, &qword_14C030);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  v13 = sub_140E7C();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 tracklist];
  v20 = sub_AB9C0(v18, v19);

  if (v20 && (v21 = [v20 metadataObject], v20, v21))
  {
    v47 = v9;
    v22 = v2;
    v23 = v13;
    v24 = [v21 flattenedGenericObject];
    v25 = [v24 anyObject];

    if (v25)
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      v13 = v23;
      if (v26)
      {
        v52 = v26;
        v27 = [v26 descriptionText];
        v2 = v22;
        if (v27)
        {
          v28 = v27;
          v29 = sub_1448DC();
          v48 = v30;
          v49 = v29;

          v31 = 0;
        }

        else
        {
          v31 = 0;
          v48 = 0;
          v49 = 0;
        }
      }

      else
      {

        v52 = 0;
        v48 = 0;
        v49 = 0;
        v31 = 1;
        v2 = v22;
      }
    }

    else
    {
      v52 = 0;
      v48 = 0;
      v49 = 0;
      v31 = 1;
      v13 = v23;
      v2 = v22;
    }

    v9 = v47;
  }

  else
  {
    v52 = 0;
    v48 = 0;
    v49 = 0;
    v31 = 1;
  }

  v32 = [a1 playerPath];
  v33 = [v32 route];

  sub_1450AC();
  if (v31)
  {
    v34 = sub_140A3C();
    (*(*(v34 - 8) + 56))(v12, 1, 1, v34);
  }

  else
  {
    v35 = [v52 shareURL];
    if (v35)
    {
      v36 = v35;
      sub_140A2C();

      v37 = sub_140A3C();
      (*(*(v37 - 8) + 56))(v9, 0, 1, v37);
    }

    else
    {
      v38 = sub_140A3C();
      (*(*(v38 - 8) + 56))(v9, 1, 1, v38);
    }

    sub_10358(v9, v12, &unk_1C1D50, &qword_14C030);
  }

  sub_140E6C();
  sub_1DB40(v53 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoProvider, v54);
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  (*(v14 + 16))(v4, v17, v13);
  v39 = v13;
  v40 = v51;
  (*(v2 + 104))(v4, enum case for EpisodeTextInfoContext.nowPlaying(_:), v51);
  v41 = v50;
  sub_140EAC();

  (*(v2 + 8))(v4, v40);
  (*(v14 + 8))(v17, v39);
  v42 = sub_140D3C();
  (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
  v43 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
  v44 = v53;
  swift_beginAccess();
  sub_89230(v41, v44 + v43);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v54);
}

void sub_7F5E4(char a1, __n128 a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidAppear:", a1 & 1);
  v4 = [v2 traitCollection];
  v5 = [v4 horizontalSizeClass];

  if (v5 == &dword_0 + 1)
  {
    v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
    if (!v6)
    {
      __break(1u);
      return;
    }

    [v6 flashScrollIndicators];
  }

  v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController__viewDidAppearOnce] = 1;
  if (sub_7F71C())
  {
    v7 = [objc_opt_self() defaultCenter];
    if (qword_1BFFC8 != -1)
    {
      swift_once();
    }

    [v7 postNotificationName:qword_1D17E8 object:v2 userInfo:0];
  }
}

id sub_7F71C()
{
  result = [v0 presentingViewController];
  if (result || (result = [v0 parentViewController]) != 0)
  {
    v2 = result;
    v3 = [result traitCollection];
    v4 = [v3 horizontalSizeClass];

    return (v4 == &dword_0 + 1);
  }

  return result;
}

void sub_7F808(char a1, __n128 a2)
{
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidDisappear:", a1 & 1);
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1D1830)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!qword_1D1840)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = v2;
    v7 = sub_144FFC();

    if (v7)
    {
      if ([v6 isBeingDismissed])
      {
        if (qword_1D1830)
        {
          if (qword_1D1840)
          {
            swift_unknownObjectWeakAssign();
            return;
          }

LABEL_15:
          __break(1u);
          return;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }
  }
}

void sub_7F998(__n128 a1)
{
  v20.receiver = v1;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewDidLayoutSubviews");
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [*&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_backgroundView] setFrame:{v5, v7, v9, v11}];
  v12 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView;
  v13 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView];
  if (!v13)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  [v13 setFrame:{v5, v7, v9, v11}];
  v14 = *&v1[v12];
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    [v16 safeAreaInsets];
    v19 = v18;

    [v15 verticalScrollIndicatorInsets];
    [v15 setVerticalScrollIndicatorInsets:v19];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_7FB40(void *a1)
{
  [a1 contentOffset];
  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v5 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics), v4);
  (*(v5 + 72))(v4, v5);
  v7 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView);
  if (v7)
  {
    if (v6 > v6 - v3)
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 - v3;
    }

    v9 = v7;
    [v9 verticalScrollIndicatorInsets];
    [v9 setVerticalScrollIndicatorInsets:v8];
  }

  else
  {
    __break(1u);
  }
}

void sub_7FC8C(unsigned __int8 a1, _BYTE *a2)
{
  v3 = v2;
  v5 = a1;
  v48 = [objc_opt_self() standardUserDefaults];
  HIDWORD(v46._object) = v5;
  if ((v5 - 1) >= 2)
  {
    if (v5 != 3)
    {
      sub_1452FC();
      __break(1u);
      return;
    }

    v6 = [objc_opt_self() mainBundle];
    v46._countAndFlagsBits = 0xE000000000000000;
    v7._countAndFlagsBits = 0x7372657470616843;
    v7._object = 0xE800000000000000;
  }

  else
  {
    v6 = [objc_opt_self() mainBundle];
    v46._countAndFlagsBits = 0xE000000000000000;
    v7._object = 0x8000000000163370;
    v7._countAndFlagsBits = 0xD000000000000013;
  }

  v49.value._countAndFlagsBits = 0;
  v49.value._object = 0;
  v8.super.isa = v6;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v9 = sub_1409DC(v7, v49, v8, v50, 0, v46);
  v11 = v10;

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakDestroy();
  *&a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache] = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache);

  v12 = (v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics);
  v13 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v14 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics), v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle;
  a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle] = v15;
  v17 = [a2 traitCollection];
  v18 = [v17 horizontalSizeClass];

  if (v18 == &dword_0 + 1)
  {
    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a2[v16];
    sub_9867C();
  }

  v19 = v12[3];
  v20 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v19);
  v21 = (*(v20 + 32))(v19, v20);
  v22 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle;
  a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle] = v21;
  v23 = [a2 traitCollection];
  v24 = [v23 horizontalSizeClass];

  if (v24 == &dword_0 + 2)
  {
    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a2[v22];
    sub_9867C();
  }

  else
  {
  }

  v25 = v12[3];
  v26 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v25);
  v27 = (*(v26 + 112))(v25, v26);
  v28 = &a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonOffset];
  *v28 = v27;
  *(v28 + 1) = v29;
  v30 = [objc_opt_self() clearColor];
  [a2 setBackgroundColor:v30];

  v31 = v12[3];
  v32 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v31);
  v33 = (*(v32 + 24))(v31, v32);
  v34 = &a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  [a2 setNeedsLayout];
  v38 = &a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title];
  *v38 = v9;
  v38[1] = v11;

  v39 = *&a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
  *(v39 + 128) = v9;
  *(v39 + 136) = v11;

  sub_54980();
  [a2 setNeedsLayout];
  sub_964E4(0, 0xE000000000000000);
  v40 = (v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration);
  v41 = v40[3];
  v42 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v41);
  if ((*(v42 + 24))(v41, v42))
  {
    v43 = v40[3];
    v44 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v43);
    v45 = (*(v44 + 16))(v43, v44) & ((v47 - 1) < 2);
    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isTopHairlineVisible] = v45;
    if (v45 != a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible])
    {
      a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible] = v45;
      [a2 setNeedsLayout];
    }

    a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isBottomHairlineVisible] = 1;
    if ((a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] & 1) == 0)
    {
      a2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] = 1;
      [a2 setNeedsLayout];
    }
  }
}

BOOL sub_801CC()
{
  v0 = sub_141D3C();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 items];

    v3 = [v2 totalItemCount];
    v4 = v3 > 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_C5A78();

  return !v6 && !v4;
}

void sub_80288(_BYTE *a1, char a2)
{
  v3 = v2;
  *&a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache] = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache);

  v6 = (v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics);
  v7 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v8 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v9 = (*(v8 + 32))(v7, v8);
  v10 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle;
  a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle] = v9;
  v11 = [a1 traitCollection];
  v12 = [v11 horizontalSizeClass];

  if (v12 == &dword_0 + 1)
  {
    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a1[v10];
    sub_9867C();
  }

  v13 = v6[3];
  v14 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v13);
  v15 = (*(v14 + 32))(v13, v14);
  v16 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle;
  a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle] = v15;
  v17 = [a1 traitCollection];
  v18 = [v17 horizontalSizeClass];

  if (v18 == &dword_0 + 2)
  {
    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = a1[v16];
    sub_9867C();
  }

  else
  {
  }

  v19 = v6[3];
  v20 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v19);
  v21 = (*(v20 + 112))(v19, v20);
  v22 = &a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonOffset];
  *v22 = v21;
  *(v22 + 1) = v23;
  v24 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor:v24];

  p_ivar_lyt = &SongCell.ivar_lyt;
  if (a2 == 4)
  {
    v26 = [objc_opt_self() mainBundle];
    v57._countAndFlagsBits = 0xE000000000000000;
    v27._object = 0x8000000000160EE0;
    v27._countAndFlagsBits = 0xD000000000000010;
  }

  else
  {
    if (a2 != 5)
    {
      goto LABEL_11;
    }

    v26 = [objc_opt_self() mainBundle];
    v57._countAndFlagsBits = 0xE000000000000000;
    v27._countAndFlagsBits = 0x6575657551;
    v27._object = 0xE500000000000000;
  }

  v59.value._countAndFlagsBits = 0;
  v59.value._object = 0;
  v28.super.isa = v26;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v29 = sub_1409DC(v27, v59, v28, v60, 0, v57);
  v31 = v30;

  v32 = &a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title];
  *v32 = v29;
  v32[1] = v31;

  v33 = *&a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
  *(v33 + 128) = v29;
  *(v33 + 136) = v31;

  sub_54980();
  [a1 setNeedsLayout];
LABEL_11:
  v34 = v6[3];
  v35 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v34);
  v36 = (*(v35 + 24))(v34, v35);
  v37 = &a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets];
  *v37 = v36;
  *(v37 + 1) = v38;
  *(v37 + 2) = v39;
  *(v37 + 3) = v40;
  [a1 setNeedsLayout];
  v41 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24);
  v42 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration), v41);
  if ((*(v42 + 24))(v41, v42))
  {
    v43 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
    v44 = *(v43 + 16);
    if (v44)
    {
      v45 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
      v46 = v43 + 32;

      for (i = 0; i != v44; ++i)
      {
        v50 = *(v46 + i);
        v51 = *(v3 + v45);
        if (v51)
        {
          v52 = *(v51 + 16);
          v53 = (v51 + 32);
          while (v52)
          {
            v54 = *v53++;
            --v52;
            if (v54 == v50)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v49 = _swiftEmptyArrayStorage[2];
          v48 = _swiftEmptyArrayStorage[3];
          if (v49 >= v48 >> 1)
          {
            sub_92CEC((v48 > 1), v49 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v49 + 1;
          *(&_swiftEmptyArrayStorage[4] + v49) = v50;
        }
      }

      p_ivar_lyt = (&SongCell + 16);
    }

    v55 = sub_A21E8(3u, _swiftEmptyArrayStorage);

    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isTopHairlineVisible] = v55;
    if (v55 != a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible])
    {
      a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible] = v55;
      [a1 p_ivar_lyt[482]];
    }

    a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isBottomHairlineVisible] = 1;
    if ((a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] & 1) == 0)
    {
      a1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] = 1;
      v56 = p_ivar_lyt[482];

      [a1 v56];
    }
  }
}

void sub_80840(uint64_t a1)
{
  sub_8093C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_8093C(uint64_t a1)
{
  if (!qword_1C4970)
  {
    sub_140D3C();
    v1 = sub_1450CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C4970);
    }
  }
}

void sub_80AF8(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80, qword_14F300);
  __chkstk_darwin(v4 - 8);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v57 - v8;
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v62 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v61 = &v57 - v14;
  __chkstk_darwin(v15);
  v17 = (&v57 - v16);
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  *&v22 = __chkstk_darwin(v21).n128_u64[0];
  v24 = &v57 - v23;
  v25 = [a2 destinationIndexPath];
  v64 = a1;
  if (v25)
  {
    v26 = v25;
    sub_140BAC();

    (*(v11 + 32))(v24, v20, v10);
  }

  else
  {
    v27 = [a1 numberOfSections];
    if (__OFSUB__(v27, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    [a1 numberOfItemsInSection:v27 - 1];
    sub_140BBC();
  }

  v28 = [a2 proposal];
  v29 = [v28 operation];

  if (v29 != &dword_0 + 3)
  {
    (*(v11 + 8))(v24, v10);
    return;
  }

  v59 = a2;
  v60 = v17;
  v17 = &selRef_metadataObject;
  v30 = [a2 items];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A98, &qword_14F318);
  v32 = sub_1449DC();

  if (!(v32 >> 62))
  {
    if (*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_8;
    }

LABEL_25:

    (*(v11 + 8))(v24, v10);
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_26;
  }

  if (!sub_14531C())
  {
    goto LABEL_25;
  }

LABEL_8:
  if ((v32 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v33 = sub_1451FC();
    goto LABEL_11;
  }

  if (!*(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8)))
  {
    __break(1u);
    goto LABEL_31;
  }

  v33 = *(v32 + 32);
  swift_unknownObjectRetain();
LABEL_11:

  v34 = [v33 sourceIndexPath];
  swift_unknownObjectRelease();
  if (v34)
  {
    sub_140BAC();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  (*(v11 + 56))(v6, v35, 1, v10);
  sub_10358(v6, v9, &unk_1C4A80, qword_14F300);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    v32 = *(v11 + 32);
    (v32)(v60, v9, v10);
    v36 = [v59 v17[213]];
    v31 = sub_1449DC();

    if (!(v31 >> 62))
    {
      if (*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      goto LABEL_32;
    }

LABEL_31:
    if (sub_14531C())
    {
LABEL_19:
      v58 = v32;
      if ((v31 & 0xC000000000000001) != 0)
      {
        v38 = sub_1451FC();
        v37 = v60;
      }

      else
      {
        v37 = v60;
        if (!*(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
        {
LABEL_35:
          __break(1u);
          return;
        }

        v38 = *(v31 + 32);
        swift_unknownObjectRetain();
      }

      v57 = [v38 dragItem];
      swift_unknownObjectRelease();
      sub_866D8(v37, v24);
      v63 = objc_opt_self();
      v39 = *(v11 + 16);
      v40 = v61;
      v39(v61, v37, v10);
      v41 = v62;
      v39(v62, v24, v10);
      v42 = *(v11 + 80);
      v43 = (v42 + 24) & ~v42;
      v44 = (v12 + v42 + v43) & ~v42;
      v45 = swift_allocObject();
      v46 = v64;
      *(v45 + 16) = v64;
      v47 = v40;
      v48 = v58;
      v58(v45 + v43, v47, v10);
      v48(v45 + v44, v41, v10);
      v49 = swift_allocObject();
      *(v49 + 16) = sub_890A0;
      *(v49 + 24) = v45;
      aBlock[4] = sub_7B6EC;
      aBlock[5] = v49;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_D78F4;
      aBlock[3] = &block_descriptor_31;
      v50 = _Block_copy(aBlock);
      v51 = v46;

      [v63 performWithoutAnimation:v50];
      _Block_release(v50);
      LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

      if ((v41 & 1) == 0)
      {
        isa = sub_140B9C().super.isa;
        v53 = v57;
        v54 = [v59 dropItem:v57 toItemAtIndexPath:isa];

        swift_unknownObjectRelease();
        v55 = *(v11 + 8);
        v55(v60, v10);
        v55(v24, v10);

        return;
      }

      __break(1u);
      goto LABEL_35;
    }

LABEL_32:

    v56 = *(v11 + 8);
    v56(v60, v10);
    v56(v24, v10);
    return;
  }

  (*(v11 + 8))(v24, v10);
LABEL_26:
  sub_15340(v9, &unk_1C4A80, qword_14F300);
}

void sub_812CC(void *a1)
{
  isa = sub_140B9C().super.isa;
  v3 = sub_140B9C().super.isa;
  [a1 moveItemAtIndexPath:isa toIndexPath:v3];
}

void sub_815DC(char *a1, id a2)
{
  v3 = v2;
  v6 = [a2 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1448DC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = &a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_title];
  v12 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_title];
  *v11 = v8;
  *(v11 + 1) = v10;
  sub_11F680(v12);

  sub_1201F8([a2 isExplicitEpisode]);
  [a2 duration];
  sub_11FCD8(v13);
  v14 = (v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics);
  v15 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
  v16 = v14[4];
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v17.n128_f64[0] = (*(v16 + 104))(v15, v16);
  v18 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle];
  *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_layoutStyle] = v19;
  sub_1202B0(v18, v17);
  v20 = [a2 author];
  if (v20 && (v21 = v20, v22 = [v20 name], v21, v22))
  {
    v23 = sub_1448DC();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = &a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName];
  v27 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName];
  *v26 = v23;
  *(v26 + 1) = v25;
  sub_11F860(v27);

  v28 = [a2 podcast];
  if (v28 && (v29 = v28, v30 = [v28 title], v29, v30))
  {
    v31 = sub_1448DC();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xE000000000000000;
  }

  v34 = &a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle];
  v35 = *&a1[OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle];
  *v34 = v31;
  *(v34 + 1) = v33;
  sub_11FACC(v35);

  v36 = [a1 tableViewCell];
  if (v36)
  {
    v37 = v36;
    [v36 setSeparatorStyle:1];

    v38 = [a2 artworkCatalog];
    v39 = *&a1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog];
    *&a1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog] = v38;
    v40 = v38;

    v41 = *&a1[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent];
    v43 = *(v41 + 80);
    *(v41 + 80) = v38;
    v42 = v40;
    sub_CD5A8(v43);
  }

  else
  {
    __break(1u);
  }
}

id sub_81AB8(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A48, &qword_14F2B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_141D6C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 == 5)
  {
    v12 = &enum case for QueueModelSection.hardQueue(_:);
  }

  else
  {
    if (a2 != 4)
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
      sub_15340(v6, &qword_1C4A48, &qword_14F2B0);
      return 0;
    }

    v12 = &enum case for QueueModelSection.softQueue(_:);
  }

  (*(v8 + 104))(v6, *v12, v7, v9);
  (*(v8 + 56))(v6, 0, 1, v7);
  (*(v8 + 32))(v11, v6, v7);
  v13 = sub_141D3C();
  if (!v13)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A50, &qword_14F2B8);
  v15 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_14A710;
  (*(v8 + 16))(v16 + v15, v11, v7);
  v17 = sub_144E9C();

  if (v17 >> 62)
  {
    result = sub_14531C();
    if (result > a1)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  result = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
  if (result <= a1)
  {
LABEL_16:
    (*(v8 + 8))(v11, v7);

    return 0;
  }

LABEL_8:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = sub_1451FC();
    goto LABEL_12;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)) > a1)
  {
    v19 = *(v17 + 8 * a1 + 32);
LABEL_12:
    v20 = v19;

    (*(v8 + 8))(v11, v7);
    return v20;
  }

  __break(1u);
  return result;
}

unint64_t sub_81DF4(uint64_t a1)
{
  v2 = sub_140BFC();
  v3 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
    v6 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
    v7 = v4 + 32;

    for (i = 0; i != v5; ++i)
    {
      v11 = *(v7 + i);
      v12 = *(v1 + v6);
      if (v12)
      {
        v13 = *(v12 + 16);
        v14 = (v12 + 32);
        while (v13)
        {
          v15 = *v14++;
          --v13;
          if (v15 == v11)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v10 = _swiftEmptyArrayStorage[2];
        v9 = _swiftEmptyArrayStorage[3];
        if (v10 >= v9 >> 1)
        {
          sub_92CEC((v9 > 1), v10 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v10 + 1;
        *(&_swiftEmptyArrayStorage[4] + v10) = v11;
      }
    }

    v3 = v30;
  }

  v16 = _swiftEmptyArrayStorage[2];

  if (v2 >= v16)
  {
    return 6;
  }

  result = sub_140BFC();
  v18 = *(v1 + v3);
  v19 = *(v18 + 16);
  if (!v19)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v31 = result;
  v20 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (j = 0; j != v19; ++j)
  {
    v24 = *(v18 + 32 + j);
    v25 = *(v1 + v20);
    if (v25)
    {
      v26 = *(v25 + 16);
      v27 = (v25 + 32);
      while (v26)
      {
        v28 = *v27++;
        --v26;
        if (v28 == v24)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_92CEC((v22 > 1), v23 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v23 + 1;
      *(&_swiftEmptyArrayStorage[4] + v23) = v24;
    }
  }

  result = v31;
  if ((v31 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  if (result < _swiftEmptyArrayStorage[2])
  {
    v29 = *(&_swiftEmptyArrayStorage[4] + result);

    return v29;
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_8207C(void *a1)
{
  v2 = v1;
  v4 = sub_140BFC();
  v5 = v4;
  v6 = *&v1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections];
  v7 = *(v6 + 16);
  v199 = v1;
  if (v7)
  {
    v198._object = a1;
    v8 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v13 = *(v6 + 32 + v9);
      v14 = *&v2[v8];
      if (v14)
      {
        v15 = *(v14 + 16);
        v16 = (v14 + 32);
        while (v15)
        {
          v17 = *v16++;
          --v15;
          if (v17 == v13)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        *&v203 = v10;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, v10[2] + 1, 1);
          v10 = v203;
        }

        v12 = v10[2];
        v11 = v10[3];
        if (v12 >= v11 >> 1)
        {
          sub_92CEC((v11 > 1), v12 + 1, 1);
          v10 = v203;
        }

        v10[2] = v12 + 1;
        *(v10 + v12 + 32) = v13;
        v2 = v199;
      }

      ++v9;
    }

    while (v9 != v7);

    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = _swiftEmptyArrayStorage;
  if (v4 < 0)
  {
    goto LABEL_32;
  }

LABEL_14:
  if (v5 >= v10[2])
  {
    __break(1u);
    goto LABEL_99;
  }

  v18 = *(v10 + v5 + 32);

  if (v18 <= 2)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        if (sub_140BEC() == 1)
        {
          v19 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
          swift_beginAccess();
          v20 = sub_140D3C();
          if ((*(*(v20 - 8) + 48))(&v2[v19], 1, v20))
          {
            swift_endAccess();
          }

          else
          {
            v132 = sub_140D2C();
            swift_endAccess();
            if (v132)
            {
              v133 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController];
              if (!v133)
              {
LABEL_115:
                __break(1u);
                return;
              }

              v134 = *&v133[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
              *&v133[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v132;
              v135 = v132;
              v136 = v133;

              sub_FF794();
              [a1 setBackgroundView:0];

              v2 = v199;
            }
          }

          v137 = sub_14489C();
          isa = sub_140B9C().super.isa;
          v139 = [a1 dequeueReusableCellWithReuseIdentifier:v137 forIndexPath:isa];

          type metadata accessor for NowPlayingLyricsCell();
          v140 = swift_dynamicCastClassUnconditional();
          v141 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController];
          if (v141)
          {
            v142 = [v141 view];
            v143 = *&v140[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView];
            *&v140[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView] = v142;
            v144 = v142;

            if (v144)
            {
              [v140 addSubview:v144];
              [v140 setNeedsLayout];

              v145 = *&v140[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_tableViewCell];
              if (v145)
              {
                [v145 setSeparatorStyle:0];
              }

              return;
            }

            goto LABEL_111;
          }

          goto LABEL_109;
        }

        goto LABEL_68;
      }

      if (sub_140BEC() == 1)
      {
        v67 = sub_14489C();
        v68 = sub_140B9C().super.isa;
        v69 = [a1 dequeueReusableCellWithReuseIdentifier:v67 forIndexPath:v68];

        type metadata accessor for NowPlayingLyricsCell();
        v70 = swift_dynamicCastClassUnconditional();
        v71 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
        if (!v71)
        {
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v72 = [v71 view];
        v73 = *&v70[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView];
        *&v70[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_lyricsView] = v72;
        v74 = v72;

        if (!v74)
        {
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
          goto LABEL_113;
        }

        [v70 addSubview:v74];
        [v70 setNeedsLayout];

        v2 = v199;
        v75 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24];
        v76 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32];
        __swift_project_boxed_opaque_existential_1(&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration], v75);
        v70[OBJC_IVAR____TtC12NowPlayingUI20NowPlayingLyricsCell_isBottomHairlineVisible] = (*(v76 + 56))(v75, v76) & 1;
      }

      else
      {
        v70 = 0;
      }

      v77 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
      swift_beginAccess();
      v78 = sub_140D3C();
      if ((*(*(v78 - 8) + 48))(&v2[v77], 1, v78))
      {
        swift_endAccess();
LABEL_43:
        v79 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
        if (!v79)
        {
LABEL_107:
          __break(1u);
          goto LABEL_108;
        }

        v80 = sub_14247C();
        v81 = v79;
        sub_14246C();
        sub_14245C();
        v82 = objc_allocWithZone(v80);
        v83 = sub_14248C();
        v84 = *&v81[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
        *&v81[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v83;
        v85 = v83;

        sub_FF794();
        v86 = [objc_opt_self() mainBundle];
        v198._countAndFlagsBits = 0x80000000001633D0;
        v209._countAndFlagsBits = 0xD000000000000019;
        v209._object = 0x80000000001633B0;
        v210.value._countAndFlagsBits = 0;
        v210.value._object = 0;
        v87.super.isa = v86;
        v211._countAndFlagsBits = 0;
        v211._object = 0xE000000000000000;
        v88 = sub_1409DC(v209, v210, v87, v211, 0xD000000000000011, v198);
        v90 = v89;

        sub_832D0(v88, v90);

        if (v70)
        {
          return;
        }

        goto LABEL_68;
      }

      v91 = sub_140D1C();
      swift_endAccess();
      if (!v91)
      {
        goto LABEL_43;
      }

      v92 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController];
      if (!v92)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v93 = *&v92[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent];
      *&v92[OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent] = v91;
      v94 = v91;
      v95 = v92;

      sub_FF794();
      [a1 setBackgroundView:0];

      if (v70)
      {
        return;
      }
    }

LABEL_68:
    v124 = sub_14489C();
    v125 = sub_140B9C().super.isa;
    v126 = [a1 dequeueReusableCellWithReuseIdentifier:v124 forIndexPath:v125];

    objc_opt_self();
    v127 = swift_dynamicCastObjCClassUnconditional();
    v128 = [v127 tableViewCell];
    if (v128)
    {
      v129 = v128;
      [v128 setSeparatorStyle:0];

      v130 = v126;
      [v127 setHidden:1];

      return;
    }

    goto LABEL_103;
  }

  if ((v18 - 4) < 2)
  {
    v21 = sub_140BCC();
    v22 = sub_81AB8(v21, v18);
    if (!v22)
    {
      goto LABEL_68;
    }

    v23 = v22;
    v24 = [v22 metadataObject];
    if (!v24)
    {

      goto LABEL_68;
    }

    v25 = v24;
    v26 = sub_14489C();
    v27 = sub_140B9C().super.isa;
    v28 = [a1 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v27];

    type metadata accessor for SongCell(0);
    v29 = swift_dynamicCastClassUnconditional();
    v30 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache];
    *&v29[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache] = v30;
    swift_retain_n();
    v31 = v28;

    v32 = *&v29[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView];
    v33 = *&v32[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
    *&v32[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = v30;

    v34 = v32;
    sub_51280(v33);

    v35 = v29[OBJC_IVAR____TtC12NowPlayingUI8SongCell_supportsLibraryAddKeepLocalButton];
    v29[OBJC_IVAR____TtC12NowPlayingUI8SongCell_supportsLibraryAddKeepLocalButton] = 0;
    if (v35)
    {
      [v29 setNeedsLayout];
    }

    v36 = [v199 view];
    if (!v36)
    {
      goto LABEL_105;
    }

    v37 = v36;
    [v36 music_layoutInsets];
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24];
    v47 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32];
    __swift_project_boxed_opaque_existential_1(&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics], v46);
    v48 = v39 + (*(v47 + 88))(v46, v47);
    v50 = v41 + v49;
    v52 = v43 + v51;
    v54 = v45 + v53;
    v55 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24];
    v56 = *&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32];
    __swift_project_boxed_opaque_existential_1(&v199[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration], v55);
    v29[OBJC_IVAR____TtC12NowPlayingUI8SongCell_forceDurationHidden] = (*(v56 + 32))(v55, v56) & 1;
    v57 = v31;
    [v29 music_setLayoutInsets:{v48, v50, v52, v54}];
    v58 = [v199 view];
    if (!v58)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }

    v59 = v58;
    v60 = [v58 effectiveUserInterfaceLayoutDirection];

    if (v60)
    {
      if (v60 == &dword_0 + 1)
      {
        v61 = v50;
        v50 = v54;
        v54 = v61;
      }

      else
      {
        type metadata accessor for UIUserInterfaceLayoutDirection(0);
        *(&v204 + 1) = v96;
        *&v203 = v60;
        sub_140EBC();
        __swift_destroy_boxed_opaque_existential_0(&v203);
      }
    }

    [v29 setLayoutMargins:{v48, v50, v52, v54}];

    v97 = v57;
    v98 = [v25 flattenedGenericObject];
    v99 = [v98 anyObject];

    if (v99)
    {
      objc_opt_self();
      v100 = swift_dynamicCastObjCClass();
      if (v100)
      {
        v101 = v100;
        v102 = v99;
        sub_875F4(v29, v101);

LABEL_58:
        return;
      }

      objc_opt_self();
      v103 = swift_dynamicCastObjCClass();
      if (v103)
      {
        v104 = v103;
        v105 = v99;
        sub_815DC(v29, v104);

        goto LABEL_58;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

LABEL_33:
  v62 = sub_141BDC();
  if (v62)
  {
    v63 = v62;
    v64 = [v62 chapters];
    if (v64)
    {
      v65 = v64;
      sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
      v66 = sub_1449DC();

      v63 = v65;
    }

    else
    {
      v66 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v66 = _swiftEmptyArrayStorage;
  }

  if (!(v66 >> 62))
  {
    v106 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_63;
  }

LABEL_99:
  v106 = sub_14531C();
LABEL_63:

  if (sub_140BEC() >= v106)
  {
    v121 = sub_14489C();
    v122 = sub_140B9C().super.isa;
    v123 = [a1 dequeueReusableCellWithReuseIdentifier:v121 forIndexPath:v122];

    if (v123)
    {
      return;
    }

    goto LABEL_68;
  }

  v107 = sub_14489C();
  v108 = sub_140B9C().super.isa;
  v109 = [a1 dequeueReusableCellWithReuseIdentifier:v107 forIndexPath:v108];

  type metadata accessor for DeprecatedChapterCell(0);
  v110 = swift_dynamicCastClassUnconditional();
  v111 = *&v2[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache];
  *&v110[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textDrawingCache] = v111;
  swift_retain_n();
  v112 = v109;

  v113 = *&v110[OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_textStackView];
  v114 = *&v113[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache];
  *&v113[OBJC_IVAR____TtCV12NowPlayingUI14DeprecatedText9StackView_textDrawingCache] = v111;

  v115 = v113;
  sub_51280(v114);

  v116 = sub_141BDC();
  if (v116)
  {
    v117 = v116;
    v118 = [v116 chapters];
    if (v118)
    {
      v119 = v118;
      sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
      v120 = sub_1449DC();

      v117 = v119;
    }

    else
    {
      v120 = _swiftEmptyArrayStorage;
    }

    v131 = v199;
  }

  else
  {
    v120 = _swiftEmptyArrayStorage;
    v131 = v199;
  }

  v146 = sub_140BCC();
  if ((v120 & 0xC000000000000001) == 0)
  {
    if ((v146 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v146 < *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8)))
    {
      v147 = *(v120 + 8 * v146 + 32);
      goto LABEL_85;
    }

    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v147 = sub_1451FC();
LABEL_85:
  v148 = v147;

  v149 = v148;
  v150 = sub_8344C();
  if (v150)
  {
    v151 = v150;
    sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
    v200 = sub_144FFC();
  }

  else
  {
    v200 = 0;
  }

  v152 = [v149 title];
  if (v152)
  {
    v153 = v152;
    v154 = sub_1448DC();
    v156 = v155;
  }

  else
  {
    v154 = 0;
    v156 = 0xE000000000000000;
  }

  v157 = &v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_title];
  *v157 = v154;
  v157[1] = v156;

  [v149 duration];
  v158 = &v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
  v159 = *&v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration];
  v160 = v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_duration + 8];
  *v158 = v161;
  v158[8] = 0;
  sub_13EFBC(v159, v160);
  v162 = [v110 tableViewCell];
  if (!v162)
  {
    goto LABEL_112;
  }

  v163 = v162;
  [v162 setSeparatorStyle:1];

  v164 = &v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics];
  v165 = *&v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24];
  v166 = *&v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32];
  __swift_project_boxed_opaque_existential_1(&v131[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics], v165);
  v167 = (*(v166 + 152))(v165, v166);
  sub_14114C();
  v168 = sub_14104C();
  v169 = *&v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_textComponents];

  sub_13FD44(v167, v168, &v203);
  v170 = v169[4];
  v171 = v169[5];
  v172 = v169[7];
  v202[4] = v169[6];
  v202[5] = v172;
  v202[2] = v170;
  v202[3] = v171;
  v173 = v169[3];
  v202[0] = v169[2];
  v202[1] = v173;
  v174 = v208;
  v169[6] = v207;
  v169[7] = v174;
  v175 = v204;
  v169[2] = v203;
  v169[3] = v175;
  v176 = v206;
  v169[4] = v205;
  v169[5] = v176;
  sub_9724(&v203, v201);
  sub_9780(v202);
  sub_54768();
  sub_9780(&v203);

  v177 = v112;
  [v110 setNeedsLayout];

  v178 = [v131 view];
  if (!v178)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v179 = v178;
  [v178 music_layoutInsets];
  v181 = v180;
  v183 = v182;
  v185 = v184;
  v187 = v186;

  v188 = *(v164 + 3);
  v189 = *(v164 + 4);
  __swift_project_boxed_opaque_existential_1(v164, v188);
  v190 = (*(v189 + 88))(v188, v189);
  [v110 music_setLayoutInsets:{v181 + v190, v183 + v191, v185 + v192, v187 + v193}];

  v194 = sub_141D2C();
  v195 = 1;
  if ((v194 & 1) == 0)
  {
    v195 = 2;
  }

  *&v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_playbackState] = v195;
  v196 = v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator];
  v197 = v200 & 1;
  v110[OBJC_IVAR____TtC12NowPlayingUI21DeprecatedChapterCell_wantsNowPlayingIndicator] = v197;
  if (v197 != v196)
  {
    [v110 setNeedsLayout];
  }
}

void sub_832D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v6 = [objc_allocWithZone(UILabel) init];
    v3 = [objc_opt_self() secondaryLabelColor];
    [v6 setTextColor:v3];

    v4 = [objc_opt_self() systemFontOfSize:12.0];
    [v6 setFont:v4];

    [v6 setNumberOfLines:0];
    [v6 setTextAlignment:1];
    v5 = sub_14489C();
    [v6 setText:v5];

    [v2 setBackgroundView:v6];
  }

  else
  {

    [v2 setBackgroundView:0];
  }
}

void *sub_8344C()
{
  v0 = sub_140ABC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_141C1C();
  v4 = 0;
  if (v41 != 2)
  {
    v5 = v37;
    v6 = v38;
    v7 = v39;
    LODWORD(v8) = v40;
    v9 = sub_141BDC();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 chapters];
      if (v11)
      {
        v12 = v11;
        sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
        v13 = sub_1449DC();

        v10 = v12;
      }

      else
      {
        v13 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v35 = v0;
    if (v13 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)); i; i = sub_14531C())
    {
      v15 = 0;
      v33 = v13 & 0xFFFFFFFFFFFFFF8;
      v34 = v13 & 0xC000000000000001;
      v36 = (v1 + 1);
      v16 = *&v8;
      v1 = &selRef_metadataObject;
      v17 = v35;
      while (1)
      {
        if (v34)
        {
          v18 = sub_1451FC();
        }

        else
        {
          if (v15 >= *(v33 + 16))
          {
            goto LABEL_25;
          }

          v18 = *(v13 + 8 * v15 + 32);
        }

        v4 = v18;
        v19 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        v20 = v13;
        [v18 startTime];
        v8 = v21;
        sub_140AAC();
        sub_140A4C();
        v23 = v22;
        v24 = *v36;
        (*v36)(v3, v17);
        v25 = v7 + (v23 - v5) * v16;
        if (v25 >= v6)
        {
          v25 = v6;
        }

        if (v8 <= round(fmax(v25, 0.0) * 1000.0) / 1000.0)
        {
          [v4 startTime];
          v27 = v26;
          [v4 duration];
          v29 = v27 + v28;
          sub_140AAC();
          sub_140A4C();
          v8 = v30;
          v24(v3, v17);
          v31 = v7 + (v8 - v5) * v16;
          if (v31 >= v6)
          {
            v31 = v6;
          }

          if (round(fmax(v31, 0.0) * 1000.0) / 1000.0 < v29)
          {

            return v4;
          }
        }

        ++v15;
        v13 = v20;
        if (v19 == i)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:

    return 0;
  }

  return v4;
}

unint64_t sub_839C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_140BFC();
  if (v8 != sub_140BFC())
  {
    goto LABEL_40;
  }

  v45 = a3;
  result = sub_140BFC();
  v10 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
  v11 = *(v4 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v12 = *(v11 + 16);
  v44 = a2;
  if (!v12)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v42 = result;
  v43 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections;
  v13 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (i = 0; i != v12; ++i)
  {
    v17 = *(v11 + 32 + i);
    v18 = *(v4 + v13);
    if (v18)
    {
      v19 = *(v18 + 16);
      v20 = (v18 + 32);
      while (v19)
      {
        v21 = *v20++;
        --v19;
        if (v21 == v17)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_92CEC((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v17;
    }
  }

  result = v42;
  v10 = v43;
  if ((v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_32;
  }

LABEL_15:
  if (result >= _swiftEmptyArrayStorage[2])
  {
    __break(1u);
    return result;
  }

  v22 = *(&_swiftEmptyArrayStorage[4] + result);

  if (v22 >= 4)
  {
    v34 = sub_87BEC(v45);
    v35 = sub_140C2C();
    v36 = *(*(v35 - 8) + 16);
    if (v34)
    {
      v37 = a4;
      v38 = v45;
LABEL_42:

      return v36(v37, v38, v35);
    }

LABEL_41:
    v37 = a4;
    v38 = a2;
    goto LABEL_42;
  }

  v23 = *(v4 + v10);
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

    for (j = 0; j != v24; ++j)
    {
      v29 = *(v23 + 32 + j);
      v30 = *(v4 + v25);
      if (v30)
      {
        v31 = *(v30 + 16);
        v32 = (v30 + 32);
        while (v31)
        {
          v33 = *v32++;
          --v31;
          if (v33 == v29)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
LABEL_27:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v28 = _swiftEmptyArrayStorage[2];
        v27 = _swiftEmptyArrayStorage[3];
        if (v28 >= v27 >> 1)
        {
          sub_92CEC((v27 > 1), v28 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v28 + 1;
        *(&_swiftEmptyArrayStorage[4] + v28) = v29;
      }
    }

LABEL_33:

    a2 = v44;
    v39 = _swiftEmptyArrayStorage[2];
    if (!v39)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  v39 = _swiftEmptyArrayStorage[2];
  if (!v39)
  {
LABEL_39:

LABEL_40:
    v41 = sub_140C2C();
    v36 = *(*(v41 - 8) + 16);
    v35 = v41;
    goto LABEL_41;
  }

LABEL_36:
  v40 = 0;
  while (*(&_swiftEmptyArrayStorage[4] + v40) != 4)
  {
    if (v39 == ++v40)
    {
      goto LABEL_39;
    }
  }

  return sub_140BDC();
}

uint64_t sub_84010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  sub_144ABC();
  v5[10] = sub_144AAC();
  v7 = sub_144A8C();
  v5[11] = v7;
  v5[12] = v6;

  return _swift_task_switch(sub_840AC, v7, v6);
}

uint64_t sub_840AC()
{
  v1 = v0[9];
  v2 = sub_141BBC();
  v0[5] = v2;
  v0[6] = &protocol witness table for PlaybackController.QueueCommand;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v1, v2);
  v6 = &async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommand(_:options:);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_841C0;

  return (v6)(v0 + 2, 0);
}

uint64_t sub_841C0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_84360;
  }

  else
  {
    v4[14] = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 2);
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_842F4;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_842F4()
{

  **(v0 + 56) = *(v0 + 112);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_84360()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 56) = 0;
  v1 = *(v0 + 8);

  return v1();
}

void sub_84518(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = sub_140C0C();
  if (v6 == 2)
  {
    v7 = sub_140BFC();
  }

  else if (v6 <= 0)
  {
    v7 = sub_14093C();
  }

  else
  {
    v7 = sub_140C3C();
  }

  v8 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v9 = *(v8 + 16);
  if (v9)
  {
    v60 = v7;
    v61 = a1;
    v10 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
    v11 = v8 + 32;

    for (i = 0; i != v9; ++i)
    {
      v15 = *(v11 + i);
      v16 = *(v3 + v10);
      if (v16)
      {
        v17 = *(v16 + 16);
        v18 = (v16 + 32);
        while (v17)
        {
          v19 = *v18++;
          --v17;
          if (v19 == v15)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
LABEL_16:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v14 = _swiftEmptyArrayStorage[2];
        v13 = _swiftEmptyArrayStorage[3];
        if (v14 >= v13 >> 1)
        {
          sub_92CEC((v13 > 1), v14 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v14 + 1;
        *(&_swiftEmptyArrayStorage[4] + v14) = v15;
      }
    }

    a1 = v61;
    v7 = v60;
    if ((v60 & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_19:
  if (v7 >= _swiftEmptyArrayStorage[2])
  {
    __break(1u);
    goto LABEL_46;
  }

  v20 = *(&_swiftEmptyArrayStorage[4] + v7);

  if (v20 > 2)
  {
    if ((v20 - 4) < 2)
    {
      v29 = sub_14489C();
      v30 = sub_14489C();
      isa = sub_140B9C().super.isa;
      v32 = [a1 dequeueReusableSupplementaryViewOfKind:v29 withReuseIdentifier:v30 forIndexPath:isa];

      type metadata accessor for TitleSectionHeaderView();
      v33 = swift_dynamicCastClass();
      if (!v33)
      {
        return;
      }

      v34 = v33;
      v27 = v32;
      sub_80288(v34, v20);
      goto LABEL_42;
    }

    v50 = sub_14489C();
    v51 = sub_14489C();
    v52 = sub_140B9C().super.isa;
    v53 = [a1 dequeueReusableSupplementaryViewOfKind:v50 withReuseIdentifier:v51 forIndexPath:v52];

    type metadata accessor for TitleSectionHeaderView();
    v54 = swift_dynamicCastClass();
    if (!v54)
    {
      return;
    }

    v26 = v54;
    v27 = v53;
    v28 = 3;
    goto LABEL_41;
  }

  if (v20)
  {
    if (v20 == 1)
    {
      v21 = sub_14489C();
      v22 = sub_14489C();
      v23 = sub_140B9C().super.isa;
      v24 = [a1 dequeueReusableSupplementaryViewOfKind:v21 withReuseIdentifier:v22 forIndexPath:v23];

      type metadata accessor for TitleSectionHeaderView();
      v25 = swift_dynamicCastClass();
      if (!v25)
      {
        return;
      }

      v26 = v25;
      v27 = v24;
      v28 = 1;
    }

    else
    {
      v55 = sub_14489C();
      v56 = sub_14489C();
      v57 = sub_140B9C().super.isa;
      v58 = [a1 dequeueReusableSupplementaryViewOfKind:v55 withReuseIdentifier:v56 forIndexPath:v57];

      type metadata accessor for TitleSectionHeaderView();
      v59 = swift_dynamicCastClass();
      if (!v59)
      {
        return;
      }

      v26 = v59;
      v27 = v58;
      v28 = 2;
    }

LABEL_41:
    sub_7FC8C(v28, v26);
    goto LABEL_42;
  }

LABEL_30:
  v35 = sub_14489C();
  v36 = sub_14489C();
  v37 = sub_140B9C().super.isa;
  v38 = [a1 dequeueReusableSupplementaryViewOfKind:v35 withReuseIdentifier:v36 forIndexPath:v37];

  type metadata accessor for NowPlayingControlsHeader();
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v40 = *(v4 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController);
    if (v40)
    {
      v41 = v39;
      v42 = v38;
      v43 = [v40 view];
      if (!v43)
      {
        v27 = v42;
        goto LABEL_42;
      }

      v44 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView;
      v45 = *&v41[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView];
      *&v41[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingControlsHeader_controlsView] = v43;
      v27 = v43;

      v46 = *&v41[v44];
      if (v46)
      {
        v47 = [v46 layer];
        [v47 setAllowsGroupOpacity:0];

        v48 = *&v41[v44];
        if (v48)
        {
          v49 = [v48 layer];
          [v49 setAllowsGroupBlending:0];

          if (*&v41[v44])
          {
            [v41 addSubview:?];
            [v41 setNeedsLayout];

LABEL_42:
            return;
          }

LABEL_48:
          __break(1u);
          return;
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }
}

void sub_84C3C(char *a1, unint64_t a2)
{
  v5 = v2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v8 - 8);
  v73 = &v67 - v9;
  v10 = sub_141C0C();
  v71 = *(v10 - 8);
  v72 = v10;
  __chkstk_darwin(v10);
  v70 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v67 - v13;
  isa = sub_140B9C().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];

  v15 = sub_140BFC();
  v16 = *&v5[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections];
  v17 = *(v16 + 16);
  if (!v17)
  {
    v19 = _swiftEmptyArrayStorage;
    if ((v15 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v68 = v15;
  v69 = a2;
  v3 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  do
  {
    v4 = *(v16 + 32 + v18);
    v21 = *&v5[v3];
    if (v21)
    {
      v22 = *(v21 + 16);
      v23 = (v21 + 32);
      while (v22)
      {
        v24 = *v23++;
        --v22;
        if (v24 == v4)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_92CEC(0, v19[2] + 1, 1);
        v19 = v74;
      }

      a1 = v19[2];
      v20 = v19[3];
      if (a1 >= v20 >> 1)
      {
        sub_92CEC((v20 > 1), (a1 + 1), 1);
        v19 = v74;
      }

      v19[2] = a1 + 1;
      a1[v19 + 32] = v4;
    }

    ++v18;
  }

  while (v18 != v17);

  v15 = v68;
  a2 = v69;
  if ((v68 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (v15 >= v19[2])
  {
    __break(1u);
    goto LABEL_51;
  }

  v26 = *(v19 + v15 + 32);

  if ((v26 - 4) >= 2)
  {
    if (v26 != 3)
    {
      return;
    }

    a1 = sub_140BCC();
    v32 = sub_141BDC();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 chapters];
      if (v34)
      {
        v35 = v34;
        sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
        v36 = sub_1449DC();

        v33 = v35;
      }

      else
      {
        v36 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v36 = _swiftEmptyArrayStorage;
    }

    if (!(v36 >> 62))
    {
      v47 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
      goto LABEL_34;
    }

LABEL_51:
    v47 = sub_14531C();
LABEL_34:

    if (a1 >= v47)
    {
      return;
    }

    v48 = sub_141BDC();
    if (v48)
    {
      v49 = v48;
      v50 = [v48 chapters];
      if (v50)
      {
        v51 = v50;
        sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
        v52 = sub_1449DC();

        v49 = v51;
      }

      else
      {
        v52 = _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v52 = _swiftEmptyArrayStorage;
    }

    v53 = a2;
    v54 = sub_140BCC();
    if ((v52 & 0xC000000000000001) == 0)
    {
      if ((v54 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v55 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
        if (v54 < v55)
        {
          v56 = *(v52 + 8 * v54 + 32);
          goto LABEL_45;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

    v56 = sub_1451FC();
LABEL_45:
    v4 = v56;

    [v4 startTime];
    v58 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A70, &qword_14F2D0);
    v59 = v71;
    v17 = *(v71 + 72);
    a2 = (*(v71 + 80) + 32) & ~*(v71 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_14A710;
    *(v52 + a2) = v58;
    v60 = *(v59 + 104);
    v61 = v72;
    v60(v52 + a2, enum case for PlaybackController.TransportCommand.seekTo(_:), v72);
    if (sub_141D2C())
    {
LABEL_48:
      v62 = sub_144ADC();
      v63 = v73;
      (*(*(v62 - 8) + 56))(v73, 1, 1, v62);
      sub_144ABC();
      v64 = v5;
      v65 = sub_144AAC();
      v66 = swift_allocObject();
      v66[2] = v65;
      v66[3] = &protocol witness table for MainActor;
      v66[4] = v64;
      v66[5] = v52;
      sub_C929C(0, 0, v63, &unk_14F2E0, v66);

      return;
    }

    v60(v67, enum case for PlaybackController.TransportCommand.play(_:), v61);
    v3 = *(v52 + 16);
    v55 = *(v52 + 24);
    v53 = v3 + 1;
    if (v3 < v55 >> 1)
    {
LABEL_47:
      *(v52 + 16) = v53;
      (*(v71 + 32))(v52 + a2 + v3 * v17, v67, v72);
      goto LABEL_48;
    }

LABEL_55:
    v52 = sub_134AA4((v55 > 1), v53, 1, v52);
    goto LABEL_47;
  }

  v27 = sub_140BEC();
  v28 = sub_81AB8(v27, v26);
  if (v28)
  {
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A68, &unk_14FD70);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_14A710;
    v30 = sub_141BBC();
    *(v3 + 56) = v30;
    *(v3 + 64) = &protocol witness table for PlaybackController.QueueCommand;
    *__swift_allocate_boxed_opaque_existential_1((v3 + 32)) = v29;
    (*(*(v30 - 8) + 104))();
    v4 = v29;
    if (sub_141D2C())
    {
      v31 = v73;
LABEL_28:
      v43 = sub_144ADC();
      (*(*(v43 - 8) + 56))(v31, 1, 1, v43);
      sub_144ABC();
      v44 = v5;
      v45 = sub_144AAC();
      v46 = swift_allocObject();
      v46[2] = v45;
      v46[3] = &protocol witness table for MainActor;
      v46[4] = v44;
      v46[5] = v3;
      sub_C8D08(0, 0, v31, &unk_14F2C8, v46);

      return;
    }

LABEL_25:
    v37 = v71;
    v38 = v72;
    (*(v71 + 104))(v70, enum case for PlaybackController.TransportCommand.play(_:), v72);
    v40 = *(v3 + 16);
    v39 = *(v3 + 24);
    v31 = v73;
    if (v40 >= v39 >> 1)
    {
      v3 = sub_134938((v39 > 1), v40 + 1, 1, v3);
    }

    v75 = v38;
    v76 = &protocol witness table for PlaybackController.TransportCommand;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
    v42 = v70;
    (*(v37 + 16))(boxed_opaque_existential_1, v70, v38);
    *(v3 + 16) = v40 + 1;
    sub_2B5CC(&v74, v3 + 40 * v40 + 32);
    (*(v37 + 8))(v42, v38);
    goto LABEL_28;
  }
}

uint64_t sub_85474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  sub_144ABC();
  v5[5] = sub_144AAC();
  v7 = sub_144A8C();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_85510, v7, v6);
}

uint64_t sub_85510()
{
  v1 = sub_90684(v0[4]);
  v0[8] = v1;
  v4 = &async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_855D8;

  return (v4)(v1, 0);
}

uint64_t sub_855D8(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_85798;
  }

  else
  {

    v4[10] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_8572C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_8572C()
{
  v1 = *(v0 + 80);

  **(v0 + 16) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_85798()
{

  **(v0 + 16) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_85800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = sub_144ABC();
  v5[5] = sub_144AAC();
  v7 = sub_144A8C();
  v5[6] = v7;
  v5[7] = v6;

  return _swift_task_switch(sub_8589C, v7, v6);
}

uint64_t sub_8589C()
{
  v4 = &async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:) + async function pointer to dispatch thunk of PlaybackController.performCommands(_:options:);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_85958;
  v2 = *(v0 + 24);

  return (v4)(v2, 0);
}

uint64_t sub_85958(uint64_t a1)
{

  if (v1)
  {
  }

  else
  {
  }

  return _swift_task_switch(sub_85A70, 0, 0);
}

uint64_t sub_85A70(uint64_t a1)
{
  *(v1 + 72) = sub_144AAC();
  v3 = sub_144A8C();

  return _swift_task_switch(sub_85AFC, v3, v2);
}

uint64_t sub_85AFC()
{
  v1 = v0[2];

  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView);
  if (v4)
  {
    [v4 setContentOffset:1 animated:{0.0, 0.0}];
    v2 = v0[6];
    v3 = v0[7];
    v4 = sub_85B90;
  }

  else
  {
    __break(1u);
  }

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_85B90()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_85CEC(char *a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for TitleSectionHeaderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_forSizing] = 1;
  v3 = v2;
  [v3 setHidden:1];
  [v3 setUserInteractionEnabled:0];

  *&v3[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache] = *&a1[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache];

  result = [a1 view];
  if (result)
  {
    v5 = result;
    [result addSubview:v3];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_86050(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

uint64_t _s9AlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9AlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_86390()
{
  result = qword_1C4A38;
  if (!qword_1C4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4A38);
  }

  return result;
}

void sub_863E4()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_controlsViewController) = 0;
  v2 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_backgroundView;
  *(v1 + v2) = [objc_allocWithZone(UIVisualEffectView) init];
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_collectionView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionTextViewController) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesTextViewController) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_bindings) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_subscriptions) = _swiftEmptyArrayStorage;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController____lazy_storage___prototypeShowNotesController) = 0;
  v3 = (v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoProvider);
  v3[3] = sub_140D9C();
  v3[4] = &protocol witness table for EpisodeTextInfoProvider;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_140D8C();
  v4 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
  v5 = sub_140D3C();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections) = &off_19E278;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_allowsSectionCollapse) = 1;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView) = 0;
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView) = 0;
  v6 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_textDrawingCache;
  _s5CacheCMa();
  swift_allocObject();
  *(v1 + v6) = sub_78E0();
  *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController__viewDidAppearOnce) = 0;
  sub_1452FC();
  __break(1u);
}

double sub_865D8(uint64_t a1)
{
  v1 = sub_81DF4(a1);
  if (v1 != 3 && v1 != 6)
  {
    v4 = v1;
    v5 = sub_140BEC();
    v6 = sub_81AB8(v5, v4);
    if (v6)
    {

      v7 = [objc_allocWithZone(NSItemProvider) init];
      v8 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v7];

      isa = sub_140B9C().super.isa;
      [v8 setLocalObject:isa];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
      v10 = swift_allocObject();
      *&result = 1;
      *(v10 + 16) = xmmword_14F0E0;
      *(v10 + 32) = v8;
    }
  }

  return result;
}

void sub_866D8(uint64_t a1, void *a2)
{
  v56 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v4 - 8);
  v6 = &v47 - v5;
  v7 = sub_141BBC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = sub_141BAC();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v54 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_81DF4(a1);
  if (v15 != 6)
  {
    v16 = v15;
    v17 = sub_140BEC();
    v18 = sub_81AB8(v17, v16);
    if (v18)
    {
      v51 = v12;
      v52 = v18;
      v50 = v2;
      v19 = v13;
      v20 = v6;
      v21 = v8;
      v22 = v7;
      v23 = sub_140BEC();
      v24 = sub_140BEC();
      if (v23)
      {
        v25 = v24;
        v26 = sub_140BEC();
        v27 = v25;
        v28 = v22;
        v29 = v21;
        v30 = v20;
        v31 = v19;
        v32 = v50;
        v33 = v51;
        if (v25 < v26)
        {
          v27 = v25 - 1;
          if (__OFSUB__(v25, 1))
          {
            __break(1u);
            return;
          }
        }

        v34 = sub_81AB8(v27, v16);
        if (v34)
        {
          v35 = &enum case for PlaybackController.QueueCommand.Location.after(_:);
LABEL_10:
          v48 = v30;
          v49 = v31;
          v56 = v34;
          v36 = v54;
          v37 = v55;
          *v54 = v34;
          (*(v37 + 104))(v36, *v35, v31);
          v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4A78, &qword_151730) + 48);
          *v33 = v52;
          (*(v37 + 16))(&v33[v38], v36, v31);
          (*(v37 + 56))(&v33[v38], 0, 1, v31);
          (*(v29 + 104))(v33, enum case for PlaybackController.QueueCommand.moveItem(_:), v28);
          v39 = sub_144ADC();
          (*(*(v39 - 8) + 56))(v30, 1, 1, v39);
          v40 = v53;
          (*(v29 + 16))(v53, v33, v28);
          sub_144ABC();
          v56 = v56;
          v52 = v52;
          v41 = v32;
          v42 = sub_144AAC();
          v43 = (*(v29 + 80) + 40) & ~*(v29 + 80);
          v44 = v28;
          v45 = swift_allocObject();
          *(v45 + 2) = v42;
          *(v45 + 3) = &protocol witness table for MainActor;
          *(v45 + 4) = v41;
          (*(v29 + 32))(&v45[v43], v40, v44);
          sub_C8FC8(0, 0, v48, &unk_14F2F8, v45);

          (*(v29 + 8))(v33, v44);
          (*(v37 + 8))(v36, v49);
          return;
        }
      }

      else
      {
        v32 = v50;
        v34 = sub_81AB8(v24, v16);
        v30 = v20;
        v31 = v19;
        v33 = v51;
        if (v34)
        {
          v28 = v22;
          v29 = v21;
          v35 = &enum case for PlaybackController.QueueCommand.Location.before(_:);
          goto LABEL_10;
        }
      }

      v46 = v52;
    }
  }
}

id sub_86BC0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4A80, qword_14F300);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  sub_1D19C(a2, v9, &unk_1C4A80, qword_14F300);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) != 1)
  {
    v32 = *(v11 + 32);
    v32(v16, v9, v10);
    v19 = [a1 localDragSession];
    if (v19)
    {
      v20 = [v19 items];
      swift_unknownObjectRelease();
      sub_2B860(0, &qword_1C4A90, UIDragItem_ptr);
      v21 = sub_1449DC();

      if (v21 >> 62)
      {
        result = sub_14531C();
        if (result)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
        if (result)
        {
LABEL_6:
          if ((v21 & 0xC000000000000001) != 0)
          {
            v23 = sub_1451FC();
          }

          else
          {
            if (!*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
            {
              __break(1u);
              return result;
            }

            v23 = *(v21 + 32);
          }

          v24 = v23;

          v25 = [v24 localObject];

          if (v25)
          {
            sub_14514C();
            swift_unknownObjectRelease();
          }

          else
          {
            v33 = 0u;
            v34 = 0u;
          }

          v35 = v33;
          v36 = v34;
          if (*(&v34 + 1))
          {
            v26 = swift_dynamicCast();
            (*(v11 + 56))(v6, v26 ^ 1u, 1, v10);
            if (v17(v6, 1, v10) != 1)
            {
              v32(v13, v6, v10);
              v27 = sub_140BFC();
              if (v27 == sub_140BFC())
              {
                v28 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:3 intent:1];
                v29 = *(v11 + 8);
                v29(v13, v10);
                v29(v16, v10);
                return v28;
              }

              v30 = *(v11 + 8);
              v30(v13, v10);
              v30(v16, v10);
              return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
            }

            (*(v11 + 8))(v16, v10);
            goto LABEL_23;
          }

          (*(v11 + 8))(v16, v10);
LABEL_22:
          sub_15340(&v35, &qword_1C2F30, &unk_14D1A0);
          (*(v11 + 56))(v6, 1, 1, v10);
LABEL_23:
          v18 = v6;
          goto LABEL_24;
        }
      }
    }

    (*(v11 + 8))(v16, v10);
    v35 = 0u;
    v36 = 0u;
    goto LABEL_22;
  }

  v18 = v9;
LABEL_24:
  sub_15340(v18, &unk_1C4A80, qword_14F300);
  return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:0];
}

uint64_t sub_870B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

    for (i = 0; i != v2; ++i)
    {
      v7 = *(v1 + 32 + i);
      v8 = *(v0 + v3);
      if (v8)
      {
        v9 = *(v8 + 16);
        v10 = (v8 + 32);
        while (v9)
        {
          v11 = *v10++;
          --v9;
          if (v11 == v7)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v6 = _swiftEmptyArrayStorage[2];
        v5 = _swiftEmptyArrayStorage[3];
        if (v6 >= v5 >> 1)
        {
          sub_92CEC((v5 > 1), v6 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v6 + 1;
        *(&_swiftEmptyArrayStorage[4] + v6) = v7;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage[2];

  return v12;
}

uint64_t sub_871F4(unint64_t a1)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v5 = *(v4 + 16);
  if (!v5)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v38 = a1;
  v6 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (i = 0; i != v5; ++i)
  {
    v9 = *(v4 + 32 + i);
    v10 = *(v2 + v6);
    if (v10)
    {
      v11 = *(v10 + 16);
      v12 = (v10 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == v9)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v1 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v1 >= v8 >> 1)
      {
        sub_92CEC((v8 > 1), (v1 + 1), 1);
      }

      _swiftEmptyArrayStorage[2] = v1 + 1;
      *(&_swiftEmptyArrayStorage[4] + v1) = v9;
    }
  }

  a1 = v38;
  if ((v38 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_14:
  if (_swiftEmptyArrayStorage[2] <= a1)
  {
    __break(1u);
    goto LABEL_50;
  }

  v14 = *(&_swiftEmptyArrayStorage[4] + a1);

  v15 = objc_opt_self();
  v1 = [v15 standardUserDefaults];
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      if (sub_C5928())
      {
        v20 = 1;
      }

      else
      {
        v28 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24);
        v29 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32);
        __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration), v28);
        v20 = (*(v29 + 48))(v28, v29);
      }

      v30 = sub_141BDC();
      if (v30)
      {
        if (v20)
        {
          v31 = v30;
          v32 = [v30 chapters];
          if (v32)
          {
            v33 = v32;
            sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
            v34 = sub_1449DC();

            if (v34 >> 62)
            {
              v37 = sub_14531C();

              return v37;
            }

            else
            {
              v35 = *(&dword_10 + (v34 & 0xFFFFFFFFFFFFFF8));

              return v35;
            }
          }
        }

        else
        {
        }
      }
    }

    else if (v14 == 4)
    {
      v16 = sub_141D3C();
      if (v16)
      {
        v17 = v16;
        v18 = sub_144E8C();
        goto LABEL_34;
      }
    }

    else
    {
      v25 = sub_141D3C();
      if (v25)
      {
        v17 = v25;
        v18 = sub_144E7C();
LABEL_34:
        v26 = v18;

        if (!(v26 >> 62))
        {
          v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
LABEL_36:

          return v27;
        }

LABEL_50:
        v27 = sub_14531C();
        goto LABEL_36;
      }
    }

    return 0;
  }

  if (!v14)
  {
LABEL_26:

    return 1;
  }

  if (v14 == 1)
  {
    if (sub_C5904())
    {
      goto LABEL_31;
    }
  }

  else
  {
    v21 = [v15 standardUserDefaults];
    v22 = sub_C5904();

    if (v22)
    {
LABEL_31:

      return 2;
    }
  }

  v23 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 24);
  v24 = *(v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration + 32);
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_configuration), v23);
  if ((*(v24 + 48))(v23, v24))
  {
    goto LABEL_31;
  }

  v36 = sub_801CC();

  if (v36)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_875F4(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  *v9 = v6;
  v9[1] = v8;
  sub_11F680(v10);

  sub_1201F8([a2 isExplicitSong]);
  [a2 duration];
  sub_11FCD8(v11);
  v12 = [a2 artist];
  if (v12 && (v13 = v12, v14 = [v12 name], v13, v14))
  {
    v15 = sub_1448DC();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0xE000000000000000;
  }

  v18 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  v19 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  *v18 = v15;
  v18[1] = v17;
  sub_11F860(v19);

  v20 = [a2 album];
  if (v20 && (v21 = v20, v22 = [v20 title], v21, v22))
  {
    v23 = sub_1448DC();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v26 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  v27 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  *v26 = v23;
  v26[1] = v25;
  sub_11FACC(v27);

  v28 = [a2 artworkCatalog];
  v29 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog) = v28;
  v30 = v28;

  v31 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v33 = *(v31 + 80);
  *(v31 + 80) = v28;
  v32 = v30;
  sub_CD5A8(v33);
}

void sub_87850(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  *v9 = v6;
  v9[1] = v8;
  sub_11F680(v10);

  IsRestricted = MPModelTVEpisodeIsRestricted();
  sub_1201F8(IsRestricted);
  [a2 duration];
  sub_11FCD8(v12);
  v13 = [a2 show];
  if (v13 && (v14 = v13, v15 = [v13 title], v14, v15))
  {
    v16 = sub_1448DC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  v20 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  *v19 = v16;
  v19[1] = v18;
  sub_11F860(v20);

  v21 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  v22 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  sub_11FACC(v22);

  v23 = [a2 artworkCatalog];
  v24 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog) = v23;
  v25 = v23;

  v26 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v28 = *(v26 + 80);
  *(v26 + 80) = v23;
  v27 = v25;
  sub_CD5A8(v28);
}

void sub_87A50(uint64_t a1, id a2)
{
  v4 = [a2 title];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1448DC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  v10 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_title);
  *v9 = v6;
  v9[1] = v8;
  sub_11F680(v10);

  IsRestricted = MPModelMovieIsRestricted();
  sub_1201F8(IsRestricted);
  [a2 duration];
  sub_11FCD8(v12);
  v13 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  v14 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_albumTitle);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  sub_11FACC(v14);

  v15 = (a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  v16 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI8SongCell_artistName);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  sub_11F860(v16);

  v17 = [a2 artworkCatalog];
  v18 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog);
  *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_lockupArtworkCatalog) = v17;
  v19 = v17;

  v20 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI34HorizontalLockupCollectionViewCell_artworkComponent);
  v22 = *(v20 + 80);
  *(v20 + 80) = v17;
  v21 = v19;
  sub_CD5A8(v22);
}

id sub_87BEC(uint64_t a1)
{
  v2 = sub_141D3C();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_81DF4(a1);
  v5 = 0;
  if (v4 != 3 && v4 != 6)
  {
    v6 = v4;
    v7 = sub_140BEC();
    v8 = sub_81AB8(v7, v6);
    if (v8)
    {
      v9 = v8;
      v10 = [v3 reorderCommand];
      if (v10)
      {
        v5 = [v10 canMoveItem:v9];
        swift_unknownObjectRelease();
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void sub_87CDC(void *a1, uint64_t a2)
{
  type metadata accessor for SongCell(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 tableViewCell];
    if (v7)
    {
      v8 = v7;
      [v7 _setAllowsReorderingWhenNotEditing:1];

      [v5 setShowsReorderControl:sub_87BEC(a2) & 1];
      v9 = objc_opt_self();
      v11 = v6;
      v10 = [v9 clearColor];
      [v5 setBackgroundColor:v10];

      [v5 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

CGFloat sub_87E28(void *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v5 = a1;
  v6 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections];
  v7 = *(v6 + 16);
  if (!v7)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v58 = a2;
  v8 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;

  for (i = 0; i != v7; ++i)
  {
    v12 = *(v6 + 32 + i);
    v13 = *&v3[v8];
    if (v13)
    {
      v14 = *(v13 + 16);
      v15 = (v13 + 32);
      while (v14)
      {
        v16 = *v15++;
        --v14;
        if (v16 == v12)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_92CEC((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      *(&_swiftEmptyArrayStorage[4] + v11) = v12;
    }
  }

  a2 = v58;
  v5 = a1;
  if ((v58 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if (_swiftEmptyArrayStorage[2] <= a2)
  {
    __break(1u);
    goto LABEL_56;
  }

  v17 = *(&_swiftEmptyArrayStorage[4] + a2);

  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v18 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView;
        v19 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView];
        if (v19)
        {
          v20 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_descriptionHeaderSizingView];
        }

        else
        {
          v38 = sub_85CEC(v3);
          v39 = *&v3[v18];
          *&v4[v18] = v38;
          v20 = v38;

          v19 = 0;
        }

        v40 = v19;
        sub_7FC8C(1u, v20);
        v37 = [v4 view];
        if (v37)
        {
          goto LABEL_53;
        }

        __break(1u);
      }

      else
      {
        v18 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView;
        v33 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView];
        if (v33)
        {
          v20 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_showNotesHeaderSizingView];
LABEL_41:
          v43 = v33;
          v29 = v4;
          sub_7FC8C(2u, v20);
          v37 = [v4 view];
          if (v37)
          {
            goto LABEL_53;
          }

          __break(1u);
          goto LABEL_43;
        }
      }

      v41 = sub_85CEC(v4);
      v42 = *&v4[v18];
      *&v4[v18] = v41;
      v20 = v41;

      v33 = 0;
      goto LABEL_41;
    }

LABEL_25:

    [v5 bounds];

    return CGRectGetHeight(*&v23);
  }

  if ((v17 - 4) < 2)
  {
    v21 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView;
    v22 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView];
    if (v22)
    {
      v20 = *&v3[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_queueHeaderSizingView];
    }

    else
    {
      v34 = sub_85CEC(v3);
      v35 = *&v3[v21];
      *&v4[v21] = v34;
      v20 = v34;

      v22 = 0;
    }

    v36 = v22;
    sub_80288(v20, v17);
    v37 = [v4 view];
    if (v37)
    {
      goto LABEL_53;
    }

    __break(1u);
    goto LABEL_36;
  }

  v28 = sub_141BDC();
  if (!v28)
  {
LABEL_36:
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_45;
  }

  v29 = v28;
  v30 = [v28 chapters];
  if (!v30)
  {
LABEL_43:
    v32 = _swiftEmptyArrayStorage;
    goto LABEL_44;
  }

  v31 = v30;
  sub_2B860(0, &unk_1C4A58, MPModelPodcastChapter_ptr);
  v32 = sub_1449DC();

  v29 = v31;
LABEL_44:

LABEL_45:
  if (v32 >> 62)
  {
LABEL_56:
    v44 = sub_14531C();
    goto LABEL_47;
  }

  v44 = *(&dword_10 + (v32 & 0xFFFFFFFFFFFFFF8));
LABEL_47:

  if (v44 < 1)
  {
    return 0.0;
  }

  v45 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView;
  v46 = *&v4[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView];
  if (v46)
  {
    v20 = *&v4[OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_chapterHeaderSizingView];
  }

  else
  {
    v48 = sub_85CEC(v4);
    v49 = *&v4[v45];
    *&v4[v45] = v48;
    v20 = v48;

    v46 = 0;
  }

  v50 = v46;
  sub_7FC8C(3u, v20);
  v37 = [v4 view];
  if (v37)
  {
LABEL_53:
    v51 = v37;
    [v37 music_inheritedLayoutInsets];
    v53 = v52;
    v55 = v54;

    [v5 bounds];
    v56 = CGRectGetWidth(v61) - v53 - v55;
    v57 = v20;
    [v5 bounds];
    [v57 setFrame:{0.0, 0.0, v56, CGRectGetHeight(v62)}];

    [v57 layoutIfNeeded];
    v47 = *&v57[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__currentPreferredHeight];

    return v47;
  }

  __break(1u);
  return result;
}

void sub_88344(void *a1)
{
  v3 = sub_140BFC();
  v4 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_availableSections);
  v5 = *(v4 + 16);
  if (!v5)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v61 = v3;
  v62 = a1;
  v6 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_supportedSections;
  v7 = v4 + 32;

  for (i = 0; i != v5; ++i)
  {
    v11 = *(v7 + i);
    v12 = *(v1 + v6);
    if (v12)
    {
      v13 = *(v12 + 16);
      v14 = (v12 + 32);
      while (v13)
      {
        v15 = *v14++;
        --v13;
        if (v15 == v11)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92CEC(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_92CEC((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v11;
    }
  }

  a1 = v62;
  v3 = v61;
  if ((v61 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (v3 >= _swiftEmptyArrayStorage[2])
  {
    __break(1u);
    goto LABEL_46;
  }

  LODWORD(v5) = *(&_swiftEmptyArrayStorage[4] + v3);

  isa = sub_140B9C().super.isa;
  v17 = [a1 cellForItemAtIndexPath:isa];

  if (v17)
  {
    v18 = [v17 reuseIdentifier];

    if (v18)
    {
      v19 = sub_1448DC();
      v21 = v20;

      if (v19 == 0x6543726563617053 && v21 == 0xEA00000000006C6CLL)
      {

        return;
      }

LABEL_22:
      v22 = sub_1453BC();

      if (v22)
      {
        return;
      }
    }
  }

  [a1 bounds];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [a1 music_inheritedLayoutInsets];
  v35 = UIEdgeInsetsInsetRect(v24, v26, v28, v30, v31, v32, v33, v34);
  if (v5 <= 2)
  {
    if (!v5)
    {
      return;
    }

    if (v5 == 1)
    {
      if (sub_140BEC() != 1)
      {
        return;
      }

      v36 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
      swift_beginAccess();
      v37 = sub_140D3C();
      if ((*(*(v37 - 8) + 48))(v1 + v36, 1, v37))
      {
        swift_endAccess();
      }

      else
      {
        v47 = sub_140D2C();
        swift_endAccess();
        if (v47)
        {
          v48 = sub_7EF5C();
          v49 = *(v48 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent);
          *(v48 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent) = v47;
          v50 = v47;

          sub_FF794();
        }
      }

      v51 = sub_7EF5C();
      v52 = [v51 view];

      if (v52)
      {
        goto LABEL_43;
      }

      __break(1u);
    }

    else
    {
      if (sub_140BEC() != 1)
      {
        return;
      }

      v45 = OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_episodeTextInfoDetail;
      swift_beginAccess();
      v46 = sub_140D3C();
      if ((*(*(v46 - 8) + 48))(v1 + v45, 1, v46))
      {
        swift_endAccess();
        goto LABEL_42;
      }
    }

    v53 = sub_140D1C();
    swift_endAccess();
    if (v53)
    {
      v54 = sub_7EF5C();
      v55 = *(v54 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent);
      *(v54 + OBJC_IVAR____TtC12NowPlayingUI24LyricsTextViewController_textContent) = v53;
      v56 = v53;

      sub_FF794();
    }

LABEL_42:
    v57 = sub_7EF5C();
    v52 = [v57 view];

    if (v52)
    {
LABEL_43:
      [a1 bounds];
      Width = CGRectGetWidth(v63);
      LODWORD(v59) = 1148846080;
      LODWORD(v60) = 1112014848;
      [v52 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:UILayoutFittingExpandedSize.height verticalFittingPriority:{v59, v60}];

      return;
    }

LABEL_46:
    __break(1u);
    return;
  }

  v38 = v35;
  if ((v5 - 4) >= 2)
  {
    v43 = [a1 traitCollection];
    v39 = v43;
    v44 = v38;
    v42 = 24576;
  }

  else
  {
    v39 = [a1 traitCollection];
    v40 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 24);
    v41 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12NowPlayingUI24NowPlayingViewController_metrics), v40);
    v42 = (*(v41 + 104))(v40, v41);
    v43 = v39;
    v44 = v38;
  }

  sub_127FEC(v43, v42, v44);
}

void *sub_888F4(uint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v25 = _swiftEmptyArrayStorage;
  v2 = sub_81DF4(a1);
  if (v2 == 3 || v2 == 6)
  {
    return v1;
  }

  v4 = v2;
  v5 = sub_140BEC();
  v6 = sub_81AB8(v5, v4);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = v6;
  v8 = [v6 remove];
  if (!v8)
  {

    return _swiftEmptyArrayStorage;
  }

  v9 = v8;
  v10 = [objc_opt_self() mainBundle];
  v19._countAndFlagsBits = 0xE000000000000000;
  v26._countAndFlagsBits = 0x535F45564F4D4552;
  v26._object = 0xEF52414C55474E49;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v11.super.isa = v10;
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  sub_1409DC(v26, v27, v11, v28, 0, v19);

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v13 = v9;
  v14 = sub_14489C();

  v23 = sub_88BAC;
  v24 = v12;
  v19._object = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_86050;
  v22 = &block_descriptor_7;
  v15 = _Block_copy(&v19._object);
  v16 = [objc_opt_self() swipeActionWithStyle:1 title:v14 handler:v15];

  _Block_release(v15);

  [v16 setResetsSwipedRow:0];
  v17 = v16;
  sub_1449BC();
  if (*(&dword_10 + (v25 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v25 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_1449FC();
  }

  sub_144A2C();

  return v25;
}

uint64_t sub_88B74()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_88BAC()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();

  return [v2 performRequest:v1 completion:0];
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_88C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD10;

  return sub_85800(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_88D30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DD10;

  return sub_85474(a1, v4, v5, v7, v6);
}

uint64_t sub_88DF0()
{
  v1 = sub_141BBC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_88EBC(uint64_t a1)
{
  v4 = *(sub_141BBC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0A8;

  return sub_84010(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_88FB4(uint64_t a1, uint64_t a2)
{
  v3 = sub_140C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;

  v9 = *(v4 + 8);
  v9(v2 + v6, v3);
  v9(v2 + v8, v3);

  return _swift_deallocObject(v2, v8 + v7, v5 | 7);
}

void sub_890A0(uint64_t a1, uint64_t a2)
{
  sub_140C2C();
  v3 = *(v2 + 16);

  sub_812CC(v3);
}

unint64_t sub_89140()
{
  result = qword_1C4AE0;
  if (!qword_1C4AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2530, &qword_14C8D0);
    sub_4236C(&qword_1C4AE8, &qword_1C4AF0, MPCPlayerResponse_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4AE0);
  }

  return result;
}

uint64_t sub_891F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_89230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4B18, &unk_14F350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16ReusableViewTypeOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s16ReusableViewTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_89398(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_893F4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_8946C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_14138C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_895BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_14138C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_896E4(uint64_t a1)
{
  result = sub_14138C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_89784(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_140D5C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_89844(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_140D5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_898E8(uint64_t a1)
{
  result = type metadata accessor for NowPlayingPlaybackControlsController();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_140D5C();
      if (v4 <= 0x3F)
      {
        result = sub_1421BC();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}