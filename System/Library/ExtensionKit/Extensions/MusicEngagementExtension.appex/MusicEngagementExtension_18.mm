uint64_t closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v2 = *(v0 + 480);
  v1 = *(v0 + 488);
  v3 = *(v0 + 464);
  v5 = *(v0 + 440);
  v4 = *(v0 + 448);
  _StringGuts.grow(_:)(79);
  v6._countAndFlagsBits = 0xD000000000000035;
  v6._object = 0x80000001004CC290;
  String.append(_:)(v6);
  *(v0 + 416) = v5;
  lazy protocol witness table accessor for type Int and conformance Int();
  v7 = BinaryInteger.formatted()();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 0xD000000000000018;
  v8._object = 0x80000001004CC2D0;
  String.append(_:)(v8);
  (*(v2 + 16))(v1, v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd, &_s9MusicCore18CatalogIDProviding_pMR);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 400);
    v10 = *(v0 + 408);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 376), v9);
    v11 = (*(v10 + 8))(v9, v10);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
    }

    else
    {
      v14 = 0xEB000000006D6574;
      v13 = 0x497972617262694CLL;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 376));
  }

  else
  {
    v14 = 0xEB000000006D6574;
    v13 = 0x497972617262694CLL;
    *(v0 + 408) = 0;
    *(v0 + 376) = 0u;
    *(v0 + 392) = 0u;
    outlined destroy of TaskPriority?(v0 + 376, &_s9MusicCore18CatalogIDProviding_pSgMd, &_s9MusicCore18CatalogIDProviding_pSgMR);
  }

  v16 = *(v0 + 424);
  v15 = *(v0 + 432);
  strcpy((v0 + 16), "PinnedContent");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xD000000000000014;
  *(v0 + 48) = 0x80000001004CC2F0;
  *(v0 + 56) = v16;
  *(v0 + 64) = v15;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 88) = &outlined read-only object #0 of closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  *(v0 + 96) = v13;
  *(v0 + 104) = v14;
  *(v0 + 112) = 19279;
  *(v0 + 120) = 0xE200000000000000;
  *(v0 + 128) = 0;
  strcpy((v0 + 136), "PinnedContent");
  *(v0 + 150) = -4864;
  *(v0 + 152) = 0;
  *(v0 + 160) = 0xD000000000000014;
  *(v0 + 168) = 0x80000001004CC2F0;
  *(v0 + 176) = v16;
  *(v0 + 184) = v15;
  *(v0 + 192) = 0;
  *(v0 + 200) = 0xE000000000000000;
  *(v0 + 208) = &outlined read-only object #0 of closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  *(v0 + 216) = v13;
  *(v0 + 224) = v14;
  *(v0 + 232) = 19279;
  *(v0 + 240) = 0xE200000000000000;
  *(v0 + 248) = 0;

  outlined init with copy of MetricsEvent.Dialog(v0 + 16, v0 + 256);
  outlined destroy of MetricsEvent.Dialog(v0 + 136);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 472);
  outlined init with copy of TaskPriority?(*(v0 + 456), v17, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v18 = type metadata accessor for Actions.MetricsReportingContext(0);
  v19 = (*(*(v18 - 8) + 48))(v17, 1, v18);
  v20 = *(v0 + 472);
  if (v19 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 472), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  }

  else
  {

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for Actions.MetricsReportingContext);
  }

  specialized MetricsReportingController.recordDialogEvent(_:pageContext:)(v0 + 16);

  outlined destroy of MetricsEvent.Dialog(v0 + 16);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(7);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  outlined init with copy of TaskPriority?(*(v0 + 88), v4, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 232), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    outlined init with take of Actions.UpdatePinAction.Context(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    v10 = *(*(v9 + 8) + 8);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8, v10);
    *(v0 + 272) = v11;
    v12 = type metadata accessor for URL();
    *(v0 + 280) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    *(v0 + 288) = v14;
    *(v0 + 296) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v7, 1, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8, v10);
    *(inited + 40) = v16;
    *(inited + 48) = 0;
    *(v0 + 304) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 312) = v17;
    *(v0 + 320) = v18;
    *(v0 + 336) = v19;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v21, v20);
  }
}

{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7429;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 208), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  outlined init with take of URL?(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.UpdatePinAction.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.UndoFavorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t partial apply for closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

unint64_t closure #1 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for MusicLibrary.UnpinAction();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11UnpinActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11UnpinActionVGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v14 - v10;
  static MusicLibraryAction<>.unpin.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v7, v4);
  v12 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v9 + 8))(v11, v8);
  return v12;
}

uint64_t sub_1001CA478()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a3;
  v5[3] = type metadata accessor for Notice.Variant(0);
  v5[4] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[5] = v9;
  *v9 = v5;
  v9[1] = closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);

  return MusicLibrary.unpin<A>(_:)(a2, a4, a5);
}

uint64_t closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
  }
}

{
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MainActor();
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v2, v1);
}

{
  v1 = *(v0 + 32);

  specialized NoticePresenting.present(_:internalOnly:)(v1, 0);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v1, type metadata accessor for Notice.Variant);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001CADFC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);
  v5 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v4 + 48);
  if (v6 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), v6);
  }

  if (*(v5 + 64))
  {
  }

  if (*(v5 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = (*(*(v2 - 8) + 80) + 40) & ~*(*(v2 - 8) + 80);
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0[4];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v6, v0 + v4, v0 + v5, v2, v3);
}

uint64_t closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[9] = a1;
  v6[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = type metadata accessor for MetricsEvent.Click(0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for Actions.MetricsReportingContext(0);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v1(8);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  outlined init with copy of TaskPriority?(*(v0 + 88), v4, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 232), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 224);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    outlined init with take of Actions.UpdatePinAction.Context(*(v0 + 232), *(v0 + 256), type metadata accessor for Actions.MetricsReportingContext);
    v10 = *(*(v9 + 8) + 8);
    *(v0 + 264) = MusicItem.metricsTargetIdentifier.getter(v8, v10);
    *(v0 + 272) = v11;
    v12 = type metadata accessor for URL();
    *(v0 + 280) = v12;
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    *(v0 + 288) = v14;
    *(v0 + 296) = (v13 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v14(v7, 1, 1, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8, v10);
    *(inited + 40) = v16;
    *(inited + 48) = 0;
    *(v0 + 304) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 312) = v17;
    *(v0 + 320) = v18;
    *(v0 + 336) = v19;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v21, v20);
  }
}

{
  v80 = *(v0 + 336);
  v73 = *(v0 + 304);
  v76 = *(v0 + 272);
  v78 = *(v0 + 320);
  v74 = *(v0 + 264);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v6 = *(v0 + 192);
  v7 = *(v0 + 176);
  v72 = *(v0 + 168);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v81 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v74;
  *(v6 + 8) = v76;
  *(v6 + 16) = 7685;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  v75 = v9;
  v77 = v10;
  *v12 = v9;
  v12[1] = v10;
  v13 = v6 + v5[10];
  *v13 = v73;
  *(v13 + 16) = v78;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v14 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v14 - 1) + 48);
  v15 = v79(v72, 1, v14);
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);
  v18 = *(v0 + 320);
  v19 = *(v0 + 304);
  v20 = *(v0 + 168);
  if (v15 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));
    outlined destroy of TaskPriority?(v20, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v20;
    v22 = v20[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v75, v77);

    outlined copy of MetricsEvent.Click.ActionDetails(v19, v17, v18, v16, SBYTE1(v16));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 176);
  v24 = *(v0 + 160);
  v25 = (*(v0 + 192) + *(*(v0 + 184) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 160);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 176);
  v31 = *(v0 + 152);
  v32 = (*(v0 + 192) + *(*(v0 + 184) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 208);
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 152);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 208), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 176);
  v38 = *(v0 + 144);
  outlined init with take of URL?(*(v0 + 208), *(v0 + 192) + *(*(v0 + 184) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 144);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 176);
  v43 = *(v0 + 136);
  *(*(v0 + 192) + *(*(v0 + 184) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 136);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 176);
  v48 = *(v0 + 128);
  *(*(v0 + 192) + *(*(v0 + 184) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 128);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 176);
  v55 = *(v0 + 120);
  v56 = (*(v0 + 192) + *(*(v0 + 184) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 120);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 192);
  v61 = *(v0 + 200);
  v62 = *(v0 + 184);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.UpdatePinAction.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 256);
  v67 = *(v0 + 240);
  v68 = *(v0 + 224);
  v69 = *(v0 + 200);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.Favorite.Context.init<A>(item:library:alertPresenter:noticePresenting:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t partial apply for closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = v0[4];
  v8 = v0[5];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v7, v8, v0 + v5, v0 + v6, v3, v2);
}

uint64_t outlined init with copy of Actions.Pin.Context(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MusicItemCollection<MusicPin> and conformance MusicItemCollection<A>()
{
  result = lazy protocol witness table cache variable for type MusicItemCollection<MusicPin> and conformance MusicItemCollection<A>;
  if (!lazy protocol witness table cache variable for type MusicItemCollection<MusicPin> and conformance MusicItemCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal0A3PinVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal0A3PinVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemCollection<MusicPin> and conformance MusicItemCollection<A>);
  }

  return result;
}

uint64_t Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v80 = a5;
  v81 = a6;
  v82 = a4;
  v88 = a3;
  v85 = a2;
  v9 = type metadata accessor for MusicPin.Action();
  v10 = *(v9 - 8);
  v74 = *(v10 + 64);
  __chkstk_darwin();
  v90 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v67 - v12;
  __chkstk_darwin();
  v84 = &v67 - v13;
  v14 = type metadata accessor for MusicPin();
  v83 = v14;
  v92 = *(v14 - 8);
  v15 = v92;
  v89 = *(v92 + 64);
  __chkstk_darwin();
  v91 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v67 - v17;
  v18 = __chkstk_darwin();
  v20 = &v67 - v19;
  v21 = *(v15 + 16);
  v78 = a7;
  v86 = a1;
  v21(a7, a1, v14, v18);
  v72 = v21;
  updated = type metadata accessor for Actions.UpdatePinAction.Context(0);
  v22 = *(v10 + 16);
  v23 = (a7 + *(updated + 20));
  v24 = v85;
  v93 = v9;
  v25 = v22;
  v71 = v22;
  v22(v23, v85, v9);
  (v21)(v20, a1, v14);
  v25(v84, v24, v9);
  v26 = v92;
  v75 = *(v92 + 80);
  v27 = *(v10 + 80);
  v28 = v10;
  v29 = (v75 + 24) & ~v75;
  v70 = v29;
  v30 = (v89 + v27 + v29) & ~v27;
  v87 = v75 | v27 | 7;
  v31 = v74;
  v32 = swift_allocObject();
  v33 = v88;
  *(v32 + 16) = v88;
  v69 = *(v26 + 32);
  v92 = v26 + 32;
  v34 = v32 + v29;
  v35 = v32;
  v76 = v32;
  v36 = v20;
  v37 = v83;
  v69(v34, v36, v83);
  v38 = *(v28 + 32);
  v67 = v28 + 32;
  v68 = v38;
  v39 = v35 + v30;
  v40 = v93;
  v38(v39, v84, v93);
  v41 = v73;
  v72(v73, v86, v37);
  v42 = v77;
  v43 = v85;
  v71(v77, v85, v40);
  v44 = swift_allocObject();
  v84 = v44;
  *(v44 + 16) = v33;
  v45 = v41;
  v46 = v83;
  v47 = v69;
  v69(v44 + v70, v45, v83);
  v48 = v44 + v30;
  v49 = v42;
  v50 = v93;
  v51 = v68;
  v68(v48, v49, v93);
  v51(v90, v43, v50);
  v47(v91, v86, v46);
  v52 = v47;
  v53 = (v27 + 32) & ~v27;
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v55 = (v53 + v31 + *(v54 + 80)) & ~*(v54 + 80);
  v56 = (*(v54 + 64) + v75 + v55) & ~v75;
  v57 = swift_allocObject();
  v58 = v81;
  *(v57 + 16) = v80;
  *(v57 + 24) = v58;
  v51((v57 + v53), v90, v93);
  outlined init with take of URL?(v82, v57 + v55, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v52(v57 + v56, v91, v46);
  v59 = v78;
  v60 = updated;
  v61 = (v78 + *(updated + 24));
  v62 = v76;
  *v61 = partial apply for closure #1 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:);
  v61[1] = v62;
  v63 = (v59 + *(v60 + 28));
  v64 = v84;
  *v63 = &async function pointer to partial apply for closure #2 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:);
  v63[1] = v64;
  v65 = (v59 + *(v60 + 32));
  *v65 = &async function pointer to partial apply for closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:);
  v65[1] = v57;
}

uint64_t closure #1 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for MusicLibrary.UpdatePinAction();
  v4 = *(updated - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE15UpdatePinActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE15UpdatePinActionVGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - v9;
  static MusicLibraryAction<>.update(pinAction:)();
  type metadata accessor for MusicPin();
  lazy protocol witness table accessor for type MusicPin and conformance MusicPin();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v4 + 8))(v6, updated);
  v11 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t closure #2 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return MusicLibrary.updatePin(_:defaultAction:)(a2, a3);
}

uint64_t closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = type metadata accessor for MetricsEvent.Click(0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v5[28] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[29] = v6;
  v5[30] = *(v6 - 8);
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for MusicPin.Action();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 280);
    v3 = *(v0 + 256);
    v4 = *(v0 + 264);
    (*(v4 + 16))(v2, *(v0 + 88), v3);
    v5 = (*(v4 + 88))(v2, v3);
    if (v5 == enum case for MusicPin.Action.navigate(_:))
    {
      v6 = 46;
LABEL_9:
      v1(v6);
      goto LABEL_10;
    }

    if (v5 != enum case for MusicPin.Action.play(_:))
    {
      if (v5 == enum case for MusicPin.Action.shuffle(_:))
      {
        v6 = 45;
        goto LABEL_9;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    }

    v6 = 44;
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 232);
  v8 = *(v0 + 240);
  v9 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 96), v9, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v8 + 48))(v9, 1, v7) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v10 = *(v0 + 8);

    return v10();
  }

  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 256);
  v15 = *(v0 + 88);
  outlined init with take of Actions.UpdatePinAction.Context(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
  *(v0 + 288) = MusicPin.metricsTargetIdentifier.getter();
  *(v0 + 296) = v16;
  (*(v13 + 16))(v12, v15, v14);
  v17 = (*(v13 + 88))(v12, v14);
  if (v17 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v17 != enum case for MusicPin.Action.play(_:))
    {
      if (v17 == enum case for MusicPin.Action.shuffle(_:))
      {
        v18 = 46;
        goto LABEL_21;
      }

      (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    }

    v18 = 45;
    goto LABEL_21;
  }

  v18 = 47;
LABEL_21:
  *(v0 + 362) = v18;
  v19 = *(v0 + 216);
  v20 = type metadata accessor for URL();
  *(v0 + 304) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v0 + 312) = v22;
  *(v0 + 320) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v19, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = MusicPin.metricsContentType.getter();
  *(inited + 40) = v24;
  *(inited + 48) = 0;
  *(v0 + 328) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
  *(v0 + 336) = v25;
  *(v0 + 344) = v26;
  *(v0 + 360) = v27;
  swift_setDeallocating();
  outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
  type metadata accessor for MainActor();
  *(v0 + 352) = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:), v29, v28);
}

{
  v83 = *(v0 + 360);
  v76 = *(v0 + 328);
  v81 = *(v0 + 362);
  v79 = *(v0 + 296);
  v77 = *(v0 + 344);
  v78 = *(v0 + 288);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(v1 + v2[7]);
  v9 = *v1;
  v10 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v11 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v12 = (v6 + v5[20]);
  *v12 = 0;
  v12[1] = 0;
  *v6 = v78;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v81;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v80 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v82 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v76;
  *(v14 + 16) = v77;
  *(v14 + 24) = v83;
  outlined init with copy of TaskPriority?(v7, v75, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = *(*(v15 - 1) + 48);
  v17 = v16(v75, 1, v15);
  v18 = *(v0 + 360);
  v19 = *(v0 + 336);
  v20 = *(v0 + 344);
  v21 = *(v0 + 328);
  v22 = *(v0 + 160);
  v84 = v11;
  if (v17 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v82, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));
    outlined destroy of TaskPriority?(v22, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v82, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  outlined init with copy of TaskPriority?(v25, v26, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v28 = v16(v26, 1, v15);
  v29 = *(v0 + 152);
  if (v28 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v30 = 0;
    v31 = 0;
  }

  else
  {
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  outlined init with copy of TaskPriority?(v32, v33, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v16(v33, 1, v15) == 1)
  {
    v35 = v16;
    v36 = *(v0 + 312);
    v37 = *(v0 + 304);
    v38 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v39 + v15[6], *(v0 + 200), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v39, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 168);
  v41 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v40, v41, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v42 = v16(v41, 1, v15);
  v43 = *(v0 + 136);
  if (v42 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v44;
  outlined init with copy of TaskPriority?(v45, v46, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v47 = v16(v46, 1, v15);
  v48 = *(v0 + 128);
  if (v47 == 1)
  {
    outlined destroy of TaskPriority?(v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v49;
  outlined init with copy of TaskPriority?(v50, v51, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v52 = v16(v51, 1, v15);
  v53 = *(v0 + 120);
  if (v52 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 168);
  v58 = *(v0 + 112);
  v59 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v59 = v54;
  v59[1] = v55;
  outlined init with take of URL?(v57, v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v60 = v16(v58, 1, v15);
  v61 = *(v0 + 112);
  if (v60 == 1)
  {
    outlined destroy of TaskPriority?(v61, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  outlined init with take of Actions.UpdatePinAction.Context(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 336);
  v66 = *(v0 + 344);
  v68 = *(v0 + 328);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 360);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v68, v67, v66, v73, SBYTE1(v73));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v72, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.Pin.Context.menuItemTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  outlined init with copy of TaskPriority?(v1, &v19[-v10], &_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  v12 = type metadata accessor for MusicPin.Item();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of TaskPriority?(v11, v9, &_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v14 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v7, v2);
    goto LABEL_13;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_13:
  outlined destroy of TaskPriority?(v11, &_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  return v15;
}

uint64_t (*Actions.Pin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Pin.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 7235952;
  *(v0 + 24) = 0xE300000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 7235952;
  *(v1 + 24) = 0xE300000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.Unpin.Context.menuItemTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v19[-v6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  __chkstk_darwin();
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v11 = &v19[-v10];
  outlined init with copy of TaskPriority?(v1, &v19[-v10], &_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  v12 = type metadata accessor for MusicPin.Item();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_2;
  }

  outlined init with copy of TaskPriority?(v11, v9, &_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  v16 = (*(v13 + 88))(v9, v12);
  if (v16 != enum case for MusicPin.Item.album(_:) && v16 != enum case for MusicPin.Item.artist(_:) && v16 != enum case for MusicPin.Item.musicVideo(_:) && v16 != enum case for MusicPin.Item.playlist(_:) && v16 != enum case for MusicPin.Item.song(_:))
  {
    (*(v13 + 8))(v9, v12);
LABEL_2:
    String.LocalizationValue.init(stringLiteral:)();
    (*(v3 + 16))(v5, v7, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v14 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    (*(v3 + 8))(v7, v2);
    goto LABEL_10;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  (*(v13 + 8))(v9, v12);
LABEL_10:
  outlined destroy of TaskPriority?(v11, &_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
  return v15;
}

uint64_t (*Actions.Unpin.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Unpin.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x73616C732E6E6970;
  *(v0 + 24) = 0xE900000000000068;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x73616C732E6E6970;
  *(v1 + 24) = 0xE900000000000068;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.UpdatePinAction.Context.menuItemTitle.getter()
{
  v0 = type metadata accessor for MusicPin.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  MusicPin.item.getter();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t Actions.UpdatePinAction.Context.menuItemState.getter()
{
  v0 = type metadata accessor for MusicPin.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.action.getter();
  type metadata accessor for Actions.UpdatePinAction.Context(0);
  v4 = static MusicPin.Action.== infix(_:_:)();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.UpdatePinAction.Context()
{
  v0 = type metadata accessor for MusicPin.Item();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v4 = MusicPin.Action.localizedTitle(for:)(v3);
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemState.getter in conformance Actions.UpdatePinAction.Context(uint64_t a1)
{
  v1 = type metadata accessor for MusicPin.Action();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.action.getter();
  v5 = static MusicPin.Action.== infix(_:_:)();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t MusicPin.genericMusicItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicPin.Item();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicPin.item.getter();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for MusicPin.Item.album(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = type metadata accessor for Album();
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    v8 = &enum case for GenericMusicItem.album(_:);
  }

  else if (v6 == enum case for MusicPin.Item.artist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v9 = type metadata accessor for Artist();
    (*(*(v9 - 8) + 32))(a1, v5, v9);
    v8 = &enum case for GenericMusicItem.artist(_:);
  }

  else if (v6 == enum case for MusicPin.Item.musicVideo(_:))
  {
    (*(v3 + 96))(v5, v2);
    v10 = type metadata accessor for MusicVideo();
    (*(*(v10 - 8) + 32))(a1, v5, v10);
    v8 = &enum case for GenericMusicItem.musicVideo(_:);
  }

  else if (v6 == enum case for MusicPin.Item.playlist(_:))
  {
    (*(v3 + 96))(v5, v2);
    v11 = type metadata accessor for Playlist();
    (*(*(v11 - 8) + 32))(a1, v5, v11);
    v8 = &enum case for GenericMusicItem.playlist(_:);
  }

  else
  {
    if (v6 != enum case for MusicPin.Item.song(_:))
    {
      v17 = type metadata accessor for GenericMusicItem();
      (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
      return (*(v3 + 8))(v5, v2);
    }

    (*(v3 + 96))(v5, v2);
    v12 = type metadata accessor for Song();
    (*(*(v12 - 8) + 32))(a1, v5, v12);
    v8 = &enum case for GenericMusicItem.song(_:);
  }

  v13 = *v8;
  v14 = type metadata accessor for GenericMusicItem();
  v15 = *(v14 - 8);
  (*(v15 + 104))(a1, v13, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

uint64_t closure #1 in PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v25 = a4;
  v23 = a2;
  v24 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  __chkstk_darwin();
  v6 = &v22 - v5;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v7 = type metadata accessor for String.LocalizationValue();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v22 - v11;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v8 + 16))(v10, v12, v7);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v13 = static NSBundle.module;
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v16 = v15;
  (*(v8 + 8))(v12, v7);
  strcpy(v41, "DownloadPins");
  HIBYTE(v41[6]) = 0;
  v41[7] = -5120;
  v42 = 1;
  v43 = 0xD000000000000016;
  v44 = 0x80000001004C92F0;
  v17 = 0x497972617262694CLL;
  if (a3)
  {
    v17 = v23;
  }

  v18 = 0xEB000000006D6574;
  if (a3)
  {
    v18 = a3;
  }

  v45 = v14;
  v46 = v16;
  v19 = 0x776F4E20746F4ELL;
  if (v24)
  {
    v19 = 0x6E4F206E727554;
  }

  v47 = 0xD00000000000003CLL;
  v48 = 0x80000001004C9310;
  v49 = &outlined read-only object #0 of closure #1 in PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:);
  v50 = v17;
  v51 = v18;
  v52 = v19;
  v53 = 0xE700000000000000;
  v54 = (v24 & 1) == 0;
  strcpy(v27, "DownloadPins");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v28 = 1;
  v29 = 0xD000000000000016;
  v30 = 0x80000001004C92F0;
  v31 = v14;
  v32 = v16;
  v33 = 0xD00000000000003CLL;
  v34 = 0x80000001004C9310;
  v35 = &outlined read-only object #0 of closure #1 in PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:);
  v36 = v17;
  v37 = v18;
  v38 = v19;
  v39 = 0xE700000000000000;
  v40 = v54;

  outlined init with copy of MetricsEvent.Dialog(v41, &v26);
  outlined destroy of MetricsEvent.Dialog(v27);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  outlined init with copy of TaskPriority?(v25, v6, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v20 = type metadata accessor for Actions.MetricsReportingContext(0);
  if ((*(*(v20 - 8) + 48))(v6, 1, v20) == 1)
  {
    outlined destroy of TaskPriority?(v6, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  }

  else
  {

    _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v6, type metadata accessor for Actions.MetricsReportingContext);
  }

  specialized MetricsReportingController.recordDialogEvent(_:pageContext:)(v41);

  return outlined destroy of MetricsEvent.Dialog(v41);
}

uint64_t sub_1001CF568()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 8) >= 0xDuLL)
    {
    }

    v5 = v3 + *(v4 + 20);
    v6 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 24);
      v8 = type metadata accessor for URL();
      v9 = *(v8 - 8);
      v13 = v7;
      v10 = v5 + v7;
      v11 = v8;
      if (!(*(v9 + 48))(v10, 1, v8))
      {
        (*(v9 + 8))(v5 + v13, v11);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(int a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(a1, v4, v5, v6);
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)()
{
  v1 = *(type metadata accessor for MusicPin() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MusicPin.Action() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(v5, v0 + v2, v6);
}

uint64_t objectdestroy_27Tm()
{
  v1 = type metadata accessor for MusicPin();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for MusicPin.Action();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)()
{
  v2 = *(type metadata accessor for MusicPin() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for MusicPin.Action() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1001CFBA8()
{
  v1 = type metadata accessor for MusicPin.Action();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v20 = *(v5 + 64);
  v7 = type metadata accessor for MusicPin();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  if (*(v0 + 16))
  {
  }

  (*(v2 + 8))(v0 + v3, v1);
  v10 = v0 + v6;
  v11 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v11 - 8) + 48))(v0 + v6, 1, v11))
  {
    v19 = v6;
    if (*(v10 + 8) >= 0xDuLL)
    {
    }

    v12 = v10 + *(v11 + 20);
    v13 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {

      v18 = *(v13 + 24);
      v14 = type metadata accessor for URL();
      v16 = *(v14 - 8);
      v17 = v14;
      if (!(*(v16 + 48))(v12 + v18, 1))
      {
        (*(v16 + 8))(v12 + v18, v17);
      }
    }

    v6 = v19;
  }

  (*(v8 + 8))(v0 + ((v6 + v20 + v9) & ~v9), v7);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)()
{
  v2 = *(type metadata accessor for MusicPin.Action() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPin() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v12 = swift_task_alloc();
  *(v1 + 16) = v12;
  *v12 = v1;
  v12[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.UpdatePinAction.Context.init(pin:action:library:metricsReportingContext:onFinish:)(v10, v11, v0 + v3, v0 + v6, v0 + v9);
}

uint64_t sub_1001D00B4()
{

  return swift_deallocObject();
}

void type metadata accessor for MusicPin.Item?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for MusicPin.Item?)
  {
    type metadata accessor for MusicPin.Item();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for MusicPin.Item?);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
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

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinV4ItemOSgMd, &_s16MusicKitInternal0A3PinV4ItemOSgMR);
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

void type metadata completion function for Actions.Pin.Context(uint64_t a1)
{
  type metadata accessor for MusicPin.Item?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001D03FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MusicPin();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for MusicPin.Action();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1001D051C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for MusicPin();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MusicPin.Action();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

unint64_t type metadata completion function for Actions.UpdatePinAction.Context(uint64_t a1)
{
  result = type metadata accessor for MusicPin();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MusicPin.Action();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ()();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t outlined init with take of Actions.UpdatePinAction.Context(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type MusicPin and conformance MusicPin()
{
  result = lazy protocol witness table cache variable for type MusicPin and conformance MusicPin;
  if (!lazy protocol witness table cache variable for type MusicPin and conformance MusicPin)
  {
    type metadata accessor for MusicPin();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicPin and conformance MusicPin);
  }

  return result;
}

uint64_t sub_1001D07E0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = v0 + v6;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v6, 1, v8))
  {
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = *(v10 + 24);
      v12 = type metadata accessor for URL();
      v16 = *(v12 - 8);
      v17 = v11;
      v13 = v9 + v11;
      v14 = v12;
      if (!(*(v16 + 48))(v13, 1, v12))
      {
        (*(v16 + 8))(v9 + v17, v14);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*(v5 - 8) + 64);
  v7 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v9 = (v7 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v2[4];
  v11 = v2[5];
  v12 = v2[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(a1, a2, v10, v11, v12, v2 + v7, v2 + v9, v5);
}

id MPCPlaybackEngine.init(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithPlayerID:v7];

  v9 = v8;
  specialized MPCPlaybackEngine.update(using:)(a3, a4);

  return v9;
}

uint64_t MPCPlaybackEngine.configuration.getter()
{
  v1 = [v0 playerID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  specialized static Set<>.from(_:)(v0);
  v3 = [v0 fallbackPlaybackIntent];
  return v2;
}

void MPCPlaybackEngine.configuration.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  specialized MPCPlaybackEngine.update(using:)(a3, a4);
}

void (*MPCPlaybackEngine.configuration.modify(uint64_t **a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = [v1 playerID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = specialized static Set<>.from(_:)(v1);
  v10 = [v1 fallbackPlaybackIntent];
  *v4 = v6;
  v4[1] = v8;
  v4[2] = v9;
  v4[3] = v10;
  return MPCPlaybackEngine.configuration.modify;
}

void MPCPlaybackEngine.configuration.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = v3;

    specialized MPCPlaybackEngine.update(using:)(v5, v3);

    v3 = v2[3];
  }

  else
  {
    specialized MPCPlaybackEngine.update(using:)(*(*a1 + 16), v3);
  }

  free(v2);
}

void one-time initialization function for systemMusic()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17MPCPlaybackEngineC9MusicCoreE6OptionO_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for systemMusic);
  v1 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v2 = String._bridgeToObjectiveC()();
  [v1 setLabel:v2];

  v3 = [objc_opt_self() kindWithVariants:3];
  [v1 setItemKind:v3];

  v4 = [v1 playbackIntentWithStartItemIdentifiers:0];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    [v6 setShuffleMode:1];
  }

  static MPCPlaybackEngine.Configuration.systemMusic = 0x636973754DLL;
  unk_10063D640 = 0xE500000000000000;
  qword_10063D648 = v0;
  unk_10063D650 = v5;
}

uint64_t *MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor()
{
  if (one-time initialization token for systemMusic != -1)
  {
    swift_once();
  }

  return &static MPCPlaybackEngine.Configuration.systemMusic;
}

uint64_t static MPCPlaybackEngine.Configuration.systemMusic.getter()
{
  if (one-time initialization token for systemMusic != -1)
  {
    swift_once();
  }

  v0 = static MPCPlaybackEngine.Configuration.systemMusic;
  v1 = unk_10063D650;

  v2 = v1;
  return v0;
}

Swift::Int MPCPlayerRequestTracklistRange.hashValue.getter(Swift::UInt a1, Swift::UInt a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MPCPlayerRequestTracklistRange()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MPCPlayerRequestTracklistRange()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MPCPlayerRequestTracklistRange(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

id MPCPlayerResponse.playingModelObject.getter()
{
  v1 = [v0 tracklist];
  v2 = [v1 playingItem];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 metadataObject];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 innermostModelObject];

  return v4;
}

void one-time initialization function for playStateSectionProperties()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMd, &_ss23_ContiguousArrayStorageCySS_So13MPPropertySetCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = objc_opt_self();
  *(inited + 48) = [v2 emptyPropertySet];
  *(inited + 56) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 64) = v3;
  *(inited + 72) = [v2 emptyPropertySet];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So13MPPropertySetCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So13MPPropertySetCtMd, _sSS_So13MPPropertySetCtMR);
  swift_arrayDestroy();
  v4 = objc_allocWithZone(MPPropertySet);
  isa = Array._bridgeToObjectiveC()().super.isa;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPPropertySet, MPPropertySet_ptr);
  v6 = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 initWithProperties:isa relationships:v6];

  static MPCPlayerResponse.playStateSectionProperties = v7;
}

uint64_t *MPCPlayerResponse.playStateSectionProperties.unsafeMutableAddressor()
{
  if (one-time initialization token for playStateSectionProperties != -1)
  {
    swift_once();
  }

  return &static MPCPlayerResponse.playStateSectionProperties;
}

id static MPCPlayerResponse.playStateSectionProperties.getter()
{
  if (one-time initialization token for playStateSectionProperties != -1)
  {
    swift_once();
  }

  v1 = static MPCPlayerResponse.playStateSectionProperties;

  return v1;
}

id MPCPlayerResponse.sectionedPlayState.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  __chkstk_darwin();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v20 - v5;
  v7 = [v1 tracklist];
  v8 = [v7 playingItem];

  if (v8)
  {
    v9 = [v8 metadataObject];

    if (!v9)
    {
      return 0;
    }

    v10 = [v1 tracklist];
    v11 = [v10 playingItemIndexPath];

    if (v11)
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = type metadata accessor for IndexPath();
      (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
    }

    else
    {
      v12 = type metadata accessor for IndexPath();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    }

    outlined init with take of IndexPath?(v3, v6);
    type metadata accessor for IndexPath();
    v14 = *(v12 - 8);
    if ((*(v14 + 48))(v6, 1, v12) != 1)
    {
      v15 = IndexPath.section.getter();
      (*(v14 + 8))(v6, v12);
      v16 = [v1 tracklist];
      v17 = [v16 items];

      v18 = [v17 sectionAtIndex:v15];
      v19 = [v18 metadataObject];

      [v1 state];
      return v19;
    }

    outlined destroy of IndexPath?(v6);
  }

  return 0;
}

uint64_t MPCPlayerResponse.playState(for:in:)(void *a1, void *a2)
{
  v4 = MPCPlayerResponse.sectionedPlayState.getter();
  if (!v5)
  {
    return 0;
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  v10 = [v5 identifiers];
  v11 = [a1 identifiers];
  v12 = [v10 intersectsSet:v11];

  if (!v12)
  {
    goto LABEL_9;
  }

  if (v7)
  {
    if (!a2)
    {

      return 0;
    }

    v13 = a2;
    v14 = v7;
    v15 = v13;
    v7 = v14;
    if ([v7 type] != 2 || (v16 = objc_msgSend(v7, "album")) == 0)
    {

      goto LABEL_14;
    }

    v17 = v16;
    v18 = [v16 identifiers];
    v19 = [v15 identifiers];
    v20 = [v18 intersectsSet:v19];

    if (v20)
    {

      return v9;
    }

LABEL_9:

LABEL_14:
    return 0;
  }

  if (a2)
  {
    return 0;
  }

  return v9;
}

{
  v4 = MPCPlayerResponse.sectionedPlayState.getter();
  if (v5)
  {
    v7 = v4;
    v8 = v5;
    v9 = v6;
    v10 = [v5 innermostModelObject];
    v11 = [v10 identifiers];

    v12 = [v8 identifiers];
    v13 = [v11 unionSet:v12];

    v14 = [a1 identifiers];
    LODWORD(v12) = [v13 intersectsSet:v14];

    if (v12)
    {
      if (!v7)
      {
        v9 = 0;
        v7 = v8;
        goto LABEL_12;
      }

      v7 = v7;
      if ([v7 type] != 4 || (v15 = objc_msgSend(v7, "playlist")) == 0)
      {

        goto LABEL_11;
      }

      v16 = v15;
      v17 = [v15 identifiers];
      v18 = [a2 identifiers];
      v19 = [v17 intersectsSet:v18];

      if (v19)
      {

        v7 = v8;
LABEL_12:

        return v9;
      }
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  return 0;
}

uint64_t MPCPlayerResponseTracklist.playingItemSupportsTimeSyncedLyrics.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v20[-v7];
  result = [v1 playingItem];
  if (result)
  {
    v10 = result;
    [result duration];
    if (v20[56] == 1)
    {
LABEL_3:

      return 0;
    }

    v11 = [v1 playingItemIndexPath];
    if (v11)
    {
      v12 = v11;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 32))(v8, v5, v2);
      v13 = [v1 items];
      v14 = [v13 sectionAtIndex:IndexPath.section.getter()];

      v15 = [v14 metadataObject];
      if (v15)
      {
        v16 = [v15 innermostModelObject];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          if ([v17 type] == 4)
          {
            (*(v3 + 8))(v8, v2);

            goto LABEL_3;
          }

          v19 = [v18 subtype];

          (*(v3 + 8))(v8, v2);
          if (v19 == 1)
          {
            return 0;
          }
        }

        else
        {

          (*(v3 + 8))(v8, v2);
        }

        return 1;
      }

      (*(v3 + 8))(v8, v2);
    }

    return 1;
  }

  return result;
}

id MPCPlayerResponseTracklist.currentPlayEvent.getter()
{
  v1 = v0;
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &aBlock[-1] - v7;
  result = [v1 playingItemIndexPath];
  if (result)
  {
    v10 = result;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v8, v5, v2);
    v11 = [v1 items];
    v12 = [v11 sectionAtIndex:IndexPath.section.getter()];

    v13 = [v12 metadataObject];
    if (v13)
    {
      v22 = 0;
      v14 = [v13 identifiers];
      __chkstk_darwin();
      *(&v20 - 2) = v13;
      *(&v20 - 1) = &v22;
      v15 = objc_allocWithZone(MPModelPlayEvent);
      v16 = swift_allocObject();
      *(v16 + 16) = partial apply for closure #1 in MPCPlayerResponseTracklist.currentPlayEvent.getter;
      *(v16 + 24) = &v20 - 4;
      aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
      aBlock[5] = v16;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed MPIdentifierSet & MPMutableIdentifierSet) -> ();
      aBlock[3] = &block_descriptor_29;
      v17 = _Block_copy(aBlock);

      v18 = [v15 initWithIdentifiers:v14 block:v17];

      _Block_release(v17);
      (*(v3 + 8))(v8, v2);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }

      else if (v22 == 1)
      {

        return 0;
      }

      else
      {
        return v18;
      }
    }

    else
    {
      (*(v3 + 8))(v8, v2);
      return 0;
    }
  }

  return result;
}

void closure #1 in MPCPlayerResponseTracklist.currentPlayEvent.getter(uint64_t a1, void *a2, _BYTE *a3)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClassUnconditional();
  v10 = [a2 anyObject];
  if (!v10)
  {
    goto LABEL_14;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v5 setPlaylist:v7];
      goto LABEL_10;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      [v5 setArtist:v8];
      goto LABEL_10;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      [v5 setRadioStation:v9];
      goto LABEL_10;
    }

LABEL_14:
    *a3 = 1;
    return;
  }

  [v5 setAlbum:v6];
LABEL_10:
}

id MPCVocalsControlCommand.isTrulyActive.getter()
{
  result = [v0 isActive];
  if (result)
  {
    return ([v0 isDisabled] ^ 1);
  }

  return result;
}

id MPCPlayerResponse.VideoContext.__allocating_init(playerResponse:)(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 videoOutput];
  if (v2)
  {
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = v3;
      swift_getObjectType();
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
      if (swift_dynamicCastMetatype())
      {
        type metadata accessor for MPCPlayerResponse.VideoContext(0);
        v2 = swift_allocObject();
        MPCPlayerResponse.VideoContext.init(output:)(v4);
        goto LABEL_6;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_6:

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.__allocating_init(output:)(void *a1)
{
  v2 = swift_allocObject();
  MPCPlayerResponse.VideoContext.init(output:)(a1);
  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.init(output:)(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_binding) = 0;
  *(v1 + OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output) = a1;
  v4 = a1;
  [v4 videoBounds];
  swift_beginAccess();
  type metadata accessor for CGRect(0);
  Published.init(initialValue:)();
  swift_endAccess();
  [v4 isReadyForDisplay];
  swift_beginAccess();
  Published.init(initialValue:)();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  KeyPath = swift_getKeyPath();
  *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities26KeyValueObservationTriggerVySo14MPCVideoOutput_So8NSObjectCXcSbGMd, _s14MusicUtilities26KeyValueObservationTriggerVySo14MPCVideoOutput_So8NSObjectCXcSbGMR);
  *(inited + 64) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 32) = v4;
  *(inited + 40) = KeyPath;
  v7 = swift_getKeyPath();
  *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14MusicUtilities26KeyValueObservationTriggerVySo14MPCVideoOutput_So8NSObjectCXcSo6CGRectVGMd, &_s14MusicUtilities26KeyValueObservationTriggerVySo14MPCVideoOutput_So8NSObjectCXcSo6CGRectVGMR);
  *(inited + 104) = &protocol witness table for KeyValueObservationTrigger<A, B>;
  *(inited + 72) = v4;
  *(inited + 80) = v7;
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();
  v9 = v4;

  v10 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 0, partial apply for closure #1 in MPCPlayerResponse.VideoContext.init(output:), v8);

  *(v2 + v3) = v10;

  return v2;
}

uint64_t MPCPlayerResponse.VideoContext.videoBounds.setter(double a1, double a2, double a3, double a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void closure #1 in MPCPlayerResponse.VideoContext.init(output:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
    swift_beginAccess();
    [*(v2 + v3) videoBounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = [*(v2 + v3) isReadyForDisplay];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    if (!CGRectEqualToRect(v16, v15))
    {
      v17.origin.x = v5;
      v17.origin.y = v7;
      v17.size.width = v9;
      v17.size.height = v11;
      Width = CGRectGetWidth(v17);
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (vabdd_f64(Width, CGRectGetWidth(v15)) > 1.0)
      {
        v18.origin.x = v5;
        v18.origin.y = v7;
        v18.size.width = v9;
        v18.size.height = v11;
        Height = CGRectGetHeight(v18);
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        if (vabdd_f64(Height, CGRectGetHeight(v15)) > 1.0)
        {
          swift_getKeyPath();
          swift_getKeyPath();
          LOBYTE(v15.origin.x) = LOBYTE(v5);

          static Published.subscript.setter();
        }
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v12 == LOBYTE(v15.origin.x))
    {
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.setter();
    }
  }
}

uint64_t MPCPlayerResponse.VideoContext.isReadyForDisplay.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

void key path getter for MPCPlayerResponse.VideoContext.isReadyForDisplay : MPCPlayerResponse.VideoContext(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
}

uint64_t key path setter for MPCPlayerResponse.VideoContext.isReadyForDisplay : MPCPlayerResponse.VideoContext(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MPCPlayerResponse.VideoContext.isReadyForDisplay.modify(uint64_t *a1))()
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
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.isReadyForDisplay.modify;
}

uint64_t MPCPlayerResponse.VideoContext.$isReadyForDisplay.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
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

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify;
}

double MPCPlayerResponse.VideoContext.videoBounds.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

double key path getter for MPCPlayerResponse.VideoContext.videoBounds : MPCPlayerResponse.VideoContext@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for MPCPlayerResponse.VideoContext.videoBounds : MPCPlayerResponse.VideoContext(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*MPCPlayerResponse.VideoContext.videoBounds.modify(uint64_t *a1))()
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
  *(v3 + 48) = static Published.subscript.modify();
  return MPCPlayerResponse.VideoContext.videoBounds.modify;
}

uint64_t MPCPlayerResponse.VideoContext.$isReadyForDisplay.getter(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t MPCPlayerResponse.VideoContext.$videoBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CGRectV_GMd, &_s7Combine9PublishedV9PublisherVySo6CGRectV_GMR);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVGMd, &_s7Combine9PublishedVySo6CGRectVGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*MPCPlayerResponse.VideoContext.$videoBounds.modify(uint64_t *a1))()
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
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo6CGRectV_GMd, &_s7Combine9PublishedV9PublisherVySo6CGRectV_GMR);
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

  v9 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVGMd, &_s7Combine9PublishedVySo6CGRectVGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return MPCPlayerResponse.VideoContext.$videoBounds.modify;
}

void MPCPlayerResponse.VideoContext.$isReadyForDisplay.modify(uint64_t a1, char a2)
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
    Published.projectedValue.setter();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

id MPCPlayerResponse.VideoContext.output.getter()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MPCPlayerResponse.VideoContext.output.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t MPCPlayerResponse.VideoContext.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(40);

  v2 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v3 = *(v1 + v2);
  swift_getObjectType();
  v4 = v3;
  swift_getWitnessTable();
  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  return 0xD000000000000026;
}

uint64_t MPCPlayerResponse.VideoContext.deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVGMd, &_s7Combine9PublishedVySo6CGRectVGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t MPCPlayerResponse.VideoContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__isReadyForDisplay;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext__videoBounds;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo6CGRectVGMd, &_s7Combine9PublishedVySo6CGRectVGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

id MPCPlayerResponse.videoContext.getter()
{
  result = [v0 videoOutput];
  if (result)
  {
    v2 = swift_dynamicCastObjCProtocolConditional();
    if (v2 && (v3 = v2, swift_getObjectType(), type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr), swift_dynamicCastMetatype()))
    {
      type metadata accessor for MPCPlayerResponse.VideoContext(0);
      v4 = swift_allocObject();
      MPCPlayerResponse.VideoContext.init(output:)(v3);
      return v4;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t specialized static MPCPlaybackEngine.Configuration.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, Swift::Int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a1 == a5 && a2 == a6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (_sSh2eeoiySbShyxG_ABtFZSo17MPCPlaybackEngineC9MusicCoreE6OptionO_Tt1g5(a3, a7))
  {
    if (a4)
    {
      if (a8)
      {
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPCPlaybackIntent, MPCPlaybackIntent_ptr);
        v12 = a8;
        v13 = a4;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {
          return 1;
        }
      }
    }

    else if (!a8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t specialized static MPCPlayerResponse.VideoContext.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  v4 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = OBJC_IVAR____TtCE9MusicCoreCSo17MPCPlayerResponse12VideoContext_output;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v8 = v5;
  v9 = v7;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = CGRectEqualToRect(v12, v12);
  if (!result)
  {
    return result;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v12.origin.x) != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return LOBYTE(v12.origin.x);
}

void *specialized static Set<>.from(_:)(void *a1)
{
  v8 = &_swiftEmptySetSingleton;
  if ([a1 isSystemMusicApplication])
  {
    specialized Set._Variant.insert(_:)(&v3, 0);
  }

  if ([a1 isAudioAnalyzerEnabled])
  {
    specialized Set._Variant.insert(_:)(&v4, 1);
  }

  if ([a1 isPictureInPictureSupported])
  {
    specialized Set._Variant.insert(_:)(&v5, 2);
  }

  if ([a1 isVideoSupported])
  {
    specialized Set._Variant.insert(_:)(&v6, 3);
  }

  if ([a1 isStateRestorationSupported])
  {
    specialized Set._Variant.insert(_:)(&v7, 4);
  }

  return v8;
}

id specialized MPCPlaybackEngine.update(using:)(uint64_t a1, uint64_t a2)
{
  [v2 setSystemMusicApplication:{specialized Set.contains(_:)(0, a1)}];
  [v2 setAudioAnalyzerEnabled:{specialized Set.contains(_:)(1u, a1)}];
  [v2 setPictureInPictureSupported:{specialized Set.contains(_:)(2u, a1)}];
  [v2 setVideoSupported:{specialized Set.contains(_:)(3u, a1)}];
  [v2 setStateRestorationSupported:{specialized Set.contains(_:)(4u, a1)}];

  return [v2 setFallbackPlaybackIntent:a2];
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for MPCPlayerResponse.VideoContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for MPCPlayerResponse.VideoContext;
  if (!type metadata singleton initialization cache for MPCPlayerResponse.VideoContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1001D42FC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isReadyForDisplay];
  *a2 = result;
  return result;
}

id sub_1001D433C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 videoBounds];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1001D4374()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type MPCPlaybackEngine.Option and conformance MPCPlaybackEngine.Option()
{
  result = lazy protocol witness table cache variable for type MPCPlaybackEngine.Option and conformance MPCPlaybackEngine.Option;
  if (!lazy protocol witness table cache variable for type MPCPlaybackEngine.Option and conformance MPCPlaybackEngine.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPCPlaybackEngine.Option and conformance MPCPlaybackEngine.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [MPCPlaybackEngine.Option] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MPCPlaybackEngine.Option] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MPCPlaybackEngine.Option] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17MPCPlaybackEngineC9MusicCoreE6OptionOGMd, &_sSaySo17MPCPlaybackEngineC9MusicCoreE6OptionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MPCPlaybackEngine.Option] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MPCPlayerRequestTracklistRange and conformance MPCPlayerRequestTracklistRange()
{
  result = lazy protocol witness table cache variable for type MPCPlayerRequestTracklistRange and conformance MPCPlayerRequestTracklistRange;
  if (!lazy protocol witness table cache variable for type MPCPlayerRequestTracklistRange and conformance MPCPlayerRequestTracklistRange)
  {
    type metadata accessor for MPCPlayerRequestTracklistRange(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPCPlayerRequestTracklistRange and conformance MPCPlayerRequestTracklistRange);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MPCPlaybackEngine.Configuration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MPCPlaybackEngine.Configuration(uint64_t result, int a2, int a3)
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

void type metadata completion function for MPCPlayerResponse.VideoContext(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<CGRect>(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<CGRect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Published<CGRect>)
  {
    type metadata accessor for CGRect(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Published<CGRect>);
    }
  }
}

uint64_t outlined init with take of IndexPath?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IndexPath?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Player.SnapshotController.__allocating_init(windowScene:player:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Player.SnapshotController.init(windowScene:player:)(a1, a2);
  return v4;
}

uint64_t Player.SnapshotController.init(windowScene:player:)(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  *(v3 + 32) = _swiftEmptyArrayStorage;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 1;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  *(v3 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004F2F80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities14BindingTrigger_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EF0;
  v7 = CFRange.init(_:)(UISceneDidEnterBackgroundNotification);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v7;
  v8 = CFRange.init(_:)(UISceneWillEnterForegroundNotification);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v8;
  v9 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for Whitetail.Binding();
  swift_allocObject();

  v10 = UISceneDidEnterBackgroundNotification;
  v11 = UISceneWillEnterForegroundNotification;

  v12 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, partial apply for closure #1 in Player.SnapshotController.init(windowScene:player:), v9);

  *(v5 + 32) = v12;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_1004F2400;
  v14 = CFRange.init(_:)(UIScreenBrightnessDidChangeNotification);
  *(v13 + 56) = &type metadata for NotificationTrigger;
  *(v13 + 64) = &protocol witness table for NotificationTrigger;
  *(v13 + 32) = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v16 = UIScreenBrightnessDidChangeNotification;

  v17 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v13, 1, partial apply for closure #2 in Player.SnapshotController.init(windowScene:player:), v15);

  *(v5 + 40) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1004F2400;
  v19 = CFRange.init(_:)(UIApplicationProtectedDataDidBecomeAvailable);
  *(v18 + 56) = &type metadata for NotificationTrigger;
  *(v18 + 64) = &protocol witness table for NotificationTrigger;
  *(v18 + 32) = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = UIApplicationProtectedDataDidBecomeAvailable;

  swift_allocObject();

  v22 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(v18, 1, partial apply for closure #3 in Player.SnapshotController.init(windowScene:player:), v20);

  *(v5 + 48) = v22;

  *(v3 + 32) = v5;

  return v3;
}

uint64_t sub_1001D4BE0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double closure #1 in Player.SnapshotController.init(windowScene:player:)(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Player.SnapshotController.updateObservation()();
  }

  return result;
}

double Player.SnapshotController.updateObservation()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  __chkstk_darwin();
  v3 = &v36 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMR);
  v38 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGMd, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGMR);
  v39 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGMR);
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin();
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGSo17OS_dispatch_queueCGMR);
  v42 = *(v13 - 8);
  v43 = v13;
  __chkstk_darwin();
  v15 = &v36 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, v18 = [Strong activationState], v17, v18 == 2))
  {
    if (*(v1 + 40))
    {
      return result;
    }

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v37 = v3;
    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Player.logger);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "[📸👁️] App is backgrounded: Observing for now playing changes", v23, 2u);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v24 = *(v1 + 48);
    *(v1 + 48) = v44;

    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd, &_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMR);
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMR, &protocol conformance descriptor for Published<A>.Publisher);
    Publisher.dropFirst(_:)();
    (*(v38 + 8))(v6, v4);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Drop<Published<MPCPlayerResponse?>.Publisher> and conformance Publishers.Drop<A>, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGMd, &_s7Combine10PublishersO4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGMR, &protocol conformance descriptor for Publishers.Drop<A>);
    lazy protocol witness table accessor for type MPCPlayerResponse? and conformance <A> A?();
    Publisher<>.removeDuplicates()();
    (*(v39 + 8))(v9, v7);
    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v25 = static OS_dispatch_queue.main.getter();
    v44 = v25;
    v26 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v27 = v37;
    (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Drop<Published<MPCPlayerResponse?>.Publisher>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGMR, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
    lazy protocol witness table accessor for type MPCPlayerResponse and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
    v28 = v41;
    Publisher.receive<A>(on:options:)();
    outlined destroy of TaskPriority?(v27, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    (*(v40 + 8))(v12, v28);
    swift_allocObject();
    swift_weakInit();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.RemoveDuplicates<Publishers.Drop<Published<MPCPlayerResponse?>.Publisher>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC16RemoveDuplicatesVy_AC4DropVy_AA9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GGGSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v29 = v43;
    v30 = Publisher<>.sink(receiveValue:)();

    (*(v42 + 8))(v15, v29);
    *(v1 + 40) = v30;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Player.logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[📸👁️] App is foregrounded: Stopping now playing changes observation", v34, 2u);
    }

    v35 = *(v1 + 64);
    *(v1 + 64) = 0;
    if (v35 == 1)
    {
      *(v1 + 72) = 0;
      *(v1 + 80) = 1;
    }

    *(v1 + 40) = 0;
  }

  return result;
}

void Player.SnapshotController.snapshotIfNeeded(for:)(char a1)
{
  if (*(v1 + 64) == 1)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 isProtectedDataAvailable];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v7 = Strong, v8 = [Strong screen], v7, objc_msgSend(v8, "brightness"), v10 = v9, v8, v10 > 0.0))
      {
        v11 = *(v1 + 64);
        *(v1 + 64) = 0;
        if (v11 == 1)
        {
          *(v1 + 72) = 0;
          *(v1 + 80) = 1;
        }

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Player.logger);
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v46 = v16;
          *v15 = 134349314;
          *(v15 + 4) = v10;
          *(v15 + 12) = 2080;
          v17 = [v3 sharedApplication];
          v18 = [v17 isProtectedDataAvailable];

          if (v18)
          {
            v19 = 0x64656B636F6C6E75;
          }

          else
          {
            v19 = 0x64656B636F6CLL;
          }

          if (v18)
          {
            v20 = 0xE800000000000000;
          }

          else
          {
            v20 = 0xE600000000000000;
          }

          v21 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v20, &v46);

          *(v15 + 14) = v21;
          _os_log_impl(&_mh_execute_header, v13, v14, "[📸] Brightness is at %{public}f, device is %s", v15, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v16);
        }

        v22 = Logger.logObject.getter();
        v23 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v46 = v25;
          *v24 = 136446210;
          v26 = String.init<A>(describing:)();
          v28 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v27, &v46);

          *(v24 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v22, v23, "[📸✅:%{public}s] Taking Snapshot!", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
        }

        v29 = [v3 sharedApplication];
        [v29 _updateSnapshotForBackgroundApplication:0];
      }

      else
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Player.logger);
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          v46 = v41;
          *v40 = 136446210;
          v42 = String.init<A>(describing:)();
          v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v43, &v46);

          *(v40 + 4) = v44;
          _os_log_impl(&_mh_execute_header, v38, v39, "[📸❌:%{public}s] Skipping: Screen brightness is 0", v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v41);
        }
      }
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Player.logger);
      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v47[0] = v33;
        *v32 = 136446210;
        LOBYTE(v46) = a1;
        v34 = String.init<A>(describing:)();
        v36 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v34, v35, v47);

        *(v32 + 4) = v36;
        _os_log_impl(&_mh_execute_header, oslog, v31, "[📸❌:%{public}s] Skipping Snapshot Request: Device is locked", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
      }

      else
      {
      }
    }
  }
}

double closure #2 in Player.SnapshotController.init(windowScene:player:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Player.SnapshotController.snapshotIfNeeded(for:)(a2);
  }

  return result;
}

void Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v6 = &v30 - v5;
  v7 = *(v2 + 48);
  v31 = v7;
  if ((a2 & 1) == 0)
  {
    if (v7)
    {
      v10 = [v7 tracklist];
      v11 = [v10 playingItem];

      if (!a1)
      {
        v12 = 0;
        if (!v11)
        {
          v11 = 0;
          v13 = 0;
LABEL_24:
          if ((closure #1 in implicit closure #1 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)(v11, v13) & 1) == 0)
          {

LABEL_30:
            v28 = *(v2 + 48);
            *(v2 + 48) = a1;
            v29 = a1;

            return;
          }

          v12 = v13;
LABEL_26:
          static TaskPriority.userInitiated.getter();
          v24 = type metadata accessor for TaskPriority();
          (*(*(v24 - 8) + 56))(v6, 0, 1, v24);
          v25 = swift_allocObject();
          *(v25 + 16) = &async function pointer to partial apply for closure #2 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:);
          *(v25 + 24) = v2;

          v26 = static Task<>.delayed(by:priority:task:)(v6, &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (), v25, (&type metadata for () + 1), 1.0);

          outlined destroy of TaskPriority?(v6, &_sScPSgMd_0, &_sScPSgMR_0);
          v27 = *(v2 + 56);
          *(v2 + 56) = v26;
          if (v27)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
            Task.cancel()();
          }

          goto LABEL_30;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v11 = 0;
      v13 = 0;
      if (!a1)
      {
        goto LABEL_24;
      }
    }

    v14 = [a1 tracklist];
    v12 = [v14 playingItem];

    if (!v11)
    {
      v18 = 0;
      v16 = 0;
      v13 = 0;
      if (!v12)
      {
        goto LABEL_24;
      }

      goto LABEL_15;
    }

LABEL_11:
    v15 = [v11 contentItemIdentifier];
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    if (!v12)
    {
      v13 = 0;
      if (!v18)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

LABEL_15:
    v19 = [v12 contentItemIdentifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    if (v18)
    {
      if (v22)
      {
        if (v16 == v20 && v18 == v22)
        {

          v13 = v12;
        }

        else
        {
          v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v13 = v12;
          if ((v23 & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_24;
      }
    }

    else
    {
      v13 = v12;
      if (!v22)
      {
        goto LABEL_24;
      }
    }

LABEL_22:

    goto LABEL_26;
  }

  *(v2 + 48) = a1;
  v8 = a1;
  v9 = v31;
}

double closure #1 in Player.SnapshotController.updateObservation()(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)(v2, 0);
  }

  return result;
}

uint64_t closure #1 in implicit closure #1 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)(void *a1, id a2)
{
  if (a1)
  {
    v3 = [a1 metadataObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 innermostModelObject];

      if (!a2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v10 = [a2 metadataObject];
      if (v10)
      {
        v11 = v10;
        a2 = [v10 innermostModelObject];

        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        a2 = 0;
        if (v5)
        {
          goto LABEL_5;
        }
      }

      goto LABEL_10;
    }
  }

  v5 = 0;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5)
  {
LABEL_5:
    if (a2)
    {
      v6 = [v5 identifiers];
      v7 = [a2 identifiers];
      v8 = [v6 intersectsSet:v7];

      return v8 ^ 1;
    }

    return 1;
  }

LABEL_10:
  if (a2)
  {

    return 1;
  }

  return 0;
}

uint64_t closure #2 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:), v3, v2);
}

uint64_t closure #2 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v1.n128_f64[0] = Player.SnapshotController.setNeedsShapshot(for:)(2);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

double Player.SnapshotController.setNeedsShapshot(for:)(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  *&result = __chkstk_darwin().n128_u64[0];
  v6 = &v18[-v5];
  if ((*(v1 + 64) & 1) == 0)
  {
    *(v1 + 64) = 1;
    *(v1 + 72) = 0;
    *(v1 + 80) = 1;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Player.logger);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136446210;
      v18[7] = a1;
      v12 = String.init<A>(describing:)();
      v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v19);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "[📸] Set Needs Snapshot for Reason=%{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    type metadata accessor for MainActor();

    v16 = static MainActor.shared.getter();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = &protocol witness table for MainActor;
    *(v17 + 32) = v2;
    *(v17 + 40) = a1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v6, &async function pointer to partial apply for closure #1 in Player.SnapshotController.setNeedsShapshot(for:), v17);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v5();
}

uint64_t closure #1 in Player.SnapshotController.setNeedsShapshot(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 32) = a5;
  *(v5 + 16) = a4;
  type metadata accessor for MainActor();
  *(v5 + 24) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in Player.SnapshotController.setNeedsShapshot(for:), v7, v6);
}

uint64_t closure #1 in Player.SnapshotController.setNeedsShapshot(for:)()
{
  v1 = *(v0 + 32);

  Player.SnapshotController.snapshotIfNeeded(for:)(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t Player.SnapshotController.deinit()
{
  swift_unknownObjectWeakDestroy();

  return v0;
}

uint64_t Player.SnapshotController.__deallocating_deinit()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1001D6650@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MPCPlayerResponse? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MPCPlayerResponse? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MPCPlayerResponse? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo17MPCPlayerResponseCSgMd, &_sSo17MPCPlayerResponseCSgMR);
    lazy protocol witness table accessor for type MPCPlayerResponse and conformance NSObject(&lazy protocol witness table cache variable for type MPCPlayerResponse and conformance NSObject, &lazy cache variable for type metadata for MPCPlayerResponse, MPCPlayerResponse_ptr, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPCPlayerResponse? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MPCPlayerResponse and conformance NSObject(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UIAction(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #2 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Player.SnapshotController.setNowPlayingResponse(_:ignoringChanges:)(v0);
}

uint64_t sub_1001D68A0()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> ()(a1, v4);
}

uint64_t sub_1001D6990()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Player.SnapshotController.setNeedsShapshot(for:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Player.SnapshotController.setNeedsShapshot(for:)(a1, v4, v5, v6, v7);
}

unint64_t lazy protocol witness table accessor for type Player.SnapshotController.Reason and conformance Player.SnapshotController.Reason()
{
  result = lazy protocol witness table cache variable for type Player.SnapshotController.Reason and conformance Player.SnapshotController.Reason;
  if (!lazy protocol witness table cache variable for type Player.SnapshotController.Reason and conformance Player.SnapshotController.Reason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Player.SnapshotController.Reason and conformance Player.SnapshotController.Reason);
  }

  return result;
}

uint64_t PlaybackController.insert(_:location:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[18] = a3;
  v4[19] = v3;
  v4[16] = a1;
  v4[17] = a2;
  v5 = type metadata accessor for UUID();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = type metadata accessor for MainActor();
  v4[24] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[25] = v7;
  v4[26] = v6;

  return _swift_task_switch(PlaybackController.insert(_:location:issuer:), v7, v6);
}

uint64_t PlaybackController.insert(_:location:issuer:)(uint64_t a1)
{
  v36 = v1;
  v3 = v1[21];
  v2 = v1[22];
  v4 = v1[20];
  UUID.init()();
  v5 = UUID.uuidString.getter();
  v7 = v6;
  v1[27] = v5;
  v1[28] = v6;
  (*(v3 + 8))(v2, v4);
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v8 = v1[16];
  v9 = type metadata accessor for Logger();
  v1[29] = __swift_project_value_buffer(v9, static Logger.playbackController);

  v10 = v8;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v1[16];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v7, &v35);
    *(v14 + 12) = 2082;
    v15 = v13;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v35);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "⤵️ Inserting new intent with ID=%{public}s, intent=%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v21 = v1[19];
  v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v23 = *(v21 + v22);
  v25 = v1[16];
  v24 = v1[17];
  if (v23)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v25;

    outlined copy of Player.InsertCommand.Location(v24);
    static Published.subscript.getter();

    v27 = v1[14];
    if (v27)
    {
    }
  }

  else
  {
    v28 = v25;
    outlined copy of Player.InsertCommand.Location(v24);
  }

  v29 = v1[16];
  v30 = v1[17];
  MPCPlaybackIntent.isInGroupSession.setter();
  v1[5] = &type metadata for Player.InsertCommand;
  v1[6] = &protocol witness table for Player.InsertCommand;
  v1[2] = v29;
  v1[3] = v30;
  v31 = v29;
  outlined copy of Player.InsertCommand.Location(v30);
  v1[30] = static MainActor.shared.getter();
  v33 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[31] = v33;
  v1[32] = v32;

  return _swift_task_switch(PlaybackController.insert(_:location:issuer:), v33, v32);
}

{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = PlaybackController.insert(_:location:issuer:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = PlaybackController.insert(_:location:issuer:);
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t PlaybackController.insert(_:location:issuer:)()
{
  v1 = v0[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMR);
  v2 = swift_allocObject();
  v0[33] = v2;
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming((v0 + 2), v2 + 32);
  v0[34] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = PlaybackController.insert(_:location:issuer:);
  v4 = v0[18];

  return PlaybackController.perform(_:options:intent:issuer:)(v2, 0x10000, 1, 0, v1, v4);
}

{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(PlaybackController.insert(_:location:issuer:), v1, v2);
}

{
  v1 = v0[36];

  if (v1 >> 62)
  {
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    while ((v1 & 0xC000000000000001) == 0)
    {
      v1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v1)
      {
        goto LABEL_10;
      }

      __break(1u);
LABEL_6:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_9;
      }
    }

    specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
  }

LABEL_9:

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v2 = v0[25];
  v3 = v0[26];

  return _swift_task_switch(PlaybackController.insert(_:location:issuer:), v2, v3);
}

{

  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(PlaybackController.insert(_:location:issuer:), v1, v2);
}

{

  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return _swift_task_switch(PlaybackController.insert(_:location:issuer:), v1, v2);
}

{
  v33 = v0;
  v1 = *(v0 + 296);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  *(v0 + 120) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    *(v0 + 304) = v3;
    *(v0 + 312) = v2;
    v4 = _convertErrorToNSError(_:)();
    v5 = [v4 code];

    if (v5 == 3)
    {

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v9 = *(v0 + 216);
        v8 = *(v0 + 224);
        v10 = swift_slowAlloc();
        v32[0] = swift_slowAlloc();
        *v10 = 136446466;
        *(v10 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v8, v32);
        *(v10 + 12) = 2082;
        *(v10 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(0xD00000000000001FLL, 0x80000001004CC4C0, v32);
        _os_log_impl(&_mh_execute_header, v6, v7, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v10, 0x16u);
        swift_arrayDestroy();
      }

      v11 = swift_task_alloc();
      *(v0 + 320) = v11;
      *v11 = v0;
      v11[1] = PlaybackController.insert(_:location:issuer:);
      v12 = *(v0 + 216);
      v13 = *(v0 + 224);
      v14 = *(v0 + 144);
      v15 = *(v0 + 128);

      return PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(v15, v12, v13, v14);
    }

    swift_errorRetain();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 224);
    if (v20)
    {
      v22 = *(v0 + 216);
      v23 = swift_slowAlloc();
      v32[0] = swift_slowAlloc();
      *v23 = 136446466;
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v21, v32);

      *(v23 + 4) = v24;
      *(v23 + 12) = 2082;
      *(v0 + 96) = v3;
      *(v0 + 104) = v2;
      swift_errorRetain();

      v25 = String.init<A>(describing:)();
      v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v26, v32);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v18, v19, "❌ Insert failed for intent with ID=%{public}s, error=%{public}s", v23, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    lazy protocol witness table accessor for type Player.PlaybackError and conformance Player.PlaybackError();
    swift_allocError();
    *v30 = v3;
    v30[1] = v2;
    swift_willThrow();
    swift_errorRetain();

    outlined consume of Player.InsertCommand.Location(v28);
  }

  else
  {
    v17 = *(v0 + 136);

    outlined consume of Player.InsertCommand.Location(v17);
  }

  v31 = *(v0 + 8);

  return v31();
}

{
  v15 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 216);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v4, &v14);

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully inserted intent with ID=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);

    outlined consume of Player.InsertCommand.Location(v6);
  }

  else
  {
    v11 = *(v0 + 136);

    outlined consume of Player.InsertCommand.Location(v11);
  }

  v12 = *(v0 + 8);

  return v12();
}

{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = PlaybackController.insert(_:location:issuer:);
  }

  else
  {

    v3 = *(v2 + 200);
    v4 = *(v2 + 208);
    v5 = PlaybackController.insert(_:location:issuer:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v2 = v0[16];
  v1 = v0[17];

  lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
  swift_allocError();
  *v3 = 3;
  *(v3 + 8) = 2;
  swift_willThrow();

  outlined consume of Player.InsertCommand.Location(v1);

  v4 = v0[1];

  return v4();
}

uint64_t PlaybackController.add(_:route:)(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  v4 = type metadata accessor for CocoaError.Code();
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for PlaybackIntentDescriptor(0);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v3[31] = v6;
  v3[32] = *(v6 - 8);
  v3[33] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[34] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v8;
  v3[36] = v7;

  return _swift_task_switch(PlaybackController.add(_:route:), v8, v7);
}

uint64_t PlaybackController.add(_:route:)()
{
  v40 = v0;
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v4 = (v0[17] + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[4] = 0;
  outlined consume of PlaybackController.NowPlayingPresentationDescriptor?(v5, v6, v7, v8, v9);
  UUID.init()();
  v10 = UUID.uuidString.getter();
  v12 = v11;
  v0[37] = v10;
  v0[38] = v11;
  (*(v2 + 8))(v1, v3);
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v13 = v0[30];
  v14 = v0[15];
  v15 = type metadata accessor for Logger();
  v0[39] = v15;
  v0[40] = __swift_project_value_buffer(v15, static Logger.playbackController);
  outlined init with copy of PlaybackIntentDescriptor(v14, v13, type metadata accessor for PlaybackIntentDescriptor);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[30];
  if (v18)
  {
    v20 = v0[29];
    v21 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v21 = 136446466;
    *(v21 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v12, &v39);
    *(v21 + 12) = 2082;
    outlined init with copy of PlaybackIntentDescriptor(v19, v20, type metadata accessor for PlaybackIntentDescriptor);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    outlined destroy of PlaybackIntentDescriptor(v19, type metadata accessor for PlaybackIntentDescriptor);
    v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v24, &v39);

    *(v21 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v16, v17, "➕ Adding new playback intent with ID=%{public}s, descriptor=%{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    outlined destroy of PlaybackIntentDescriptor(v19, type metadata accessor for PlaybackIntentDescriptor);
  }

  outlined init with copy of PlaybackIntentDescriptor(v0[15], v0[27], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v0[24];
    v29 = v0[21];
    v30 = v0[22];
    (*(v30 + 32))(v28, v27, v29);
    v31 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v30 + 8))(v28, v29);
  }

  else
  {
    v31 = *v27;
  }

  v32 = v0[17];
  v33 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v32 + v33))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v34 = v0[9];
    if (v34)
    {
    }
  }

  MPCPlaybackIntent.isInGroupSession.setter();

  v35 = swift_task_alloc();
  v0[41] = v35;
  *v35 = v0;
  v35[1] = PlaybackController.add(_:route:);
  v36 = v0[16];
  v37 = v0[15];

  return PlaybackController._add(_:identifiedBy:route:)(v37, v10, v12, v36);
}

{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = PlaybackController.add(_:route:);
  }

  else
  {
    v5 = PlaybackController.add(_:route:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v19 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[37];
    v3 = v0[38];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136446210;
    *(v5 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v4, v3, &v18);
    _os_log_impl(&_mh_execute_header, v1, v2, "✅ Successfully added intent with ID=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v7 = v0[28];
  v8 = v0[15];
  specialized static AppReview.recordSongPlayed()();
  v9 = *(v8 + *(v7 + 36));
  v10 = v0[28];
  v11 = v0[15];
  if (v9 == 1)
  {
    v12 = *(v10 + 32);
    v13 = swift_task_alloc();
    v0[43] = v13;
    *v13 = v0;
    v13[1] = PlaybackController.add(_:route:);

    return PlaybackController.performSingBehavior(_:)(v11 + v12);
  }

  if (*(v11 + *(v10 + 40)))
  {

LABEL_14:

    v17 = v0[1];

    return v17();
  }

  outlined init with copy of PlaybackIntentDescriptor(v0[15], v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v16 = v0[26];

    outlined destroy of PlaybackIntentDescriptor(v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_14;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v15 = swift_task_alloc();
  v0[44] = v15;
  *v15 = v0;
  v15[1] = PlaybackController.add(_:route:);

  return MusicPlaybackIntentDescriptor.donate()();
}

{
  v1 = *v0;

  v2 = *(v1 + 288);
  v3 = *(v1 + 280);

  return _swift_task_switch(PlaybackController.add(_:route:), v3, v2);
}

{
  v1 = v0[15];
  if (*(v1 + *(v0[28] + 40)))
  {

LABEL_8:

    v4 = v0[1];

    return v4();
  }

  outlined init with copy of PlaybackIntentDescriptor(v1, v0[26], type metadata accessor for PlaybackIntentDescriptor.IntentType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v3 = v0[26];

    outlined destroy of PlaybackIntentDescriptor(v3, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    goto LABEL_8;
  }

  (*(v0[22] + 32))(v0[23], v0[26], v0[21]);
  v2 = swift_task_alloc();
  v0[44] = v2;
  *v2 = v0;
  v2[1] = PlaybackController.add(_:route:);

  return MusicPlaybackIntentDescriptor.donate()();
}

{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = PlaybackController.add(_:route:);
  }

  else
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = PlaybackController.add(_:route:);
  }

  return _swift_task_switch(v5, v3, v4);
}

{
  v18 = v0;

  if (one-time initialization token for siriIntents != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[39], static Logger.siriIntents);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[38];
  if (v3)
  {
    v5 = v0[37];
    v7 = v0[22];
    v6 = v0[23];
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136446210;
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v4, &v17);

    *(v9 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully donated intent with ID=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v13 = v0[22];
    v12 = v0[23];
    v14 = v0[21];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15();
}

{
  v65 = v0;
  v1 = *(v0 + 336);

  *(v0 + 80) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (!*(v0 + 48))
    {

      outlined copy of PlaybackController.CommandError(v2, 0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();

      outlined consume of PlaybackController.CommandError(v2, 0);
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v0 + 304);
      if (v28)
      {
        v30 = *(v0 + 296);
        v31 = swift_slowAlloc();
        v64[0] = swift_slowAlloc();
        *v31 = 136446466;
        v32 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v30, v29, v64);

        *(v31 + 4) = v32;
        *(v31 + 12) = 2082;
        *(v0 + 104) = v2;
        outlined copy of PlaybackController.CommandError.AlertKind(v2);
        v33 = String.init<A>(describing:)();
        v35 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v33, v34, v64);

        *(v31 + 14) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "❌ Intent id=%{public}s) — Could not present alertKind=%{public}s", v31, 0x16u);
        swift_arrayDestroy();

        outlined consume of PlaybackController.CommandError(v2, 0);
      }

      else
      {

        outlined consume of PlaybackController.CommandError(v2, 0);
      }

      goto LABEL_33;
    }

    if (v3 == 3)
    {
      if (!v2)
      {

        v18 = Logger.logObject.getter();
        v55 = static os_log_type_t.error.getter();

        v56 = os_log_type_enabled(v18, v55);
        v57 = *(v0 + 304);
        if (v56)
        {
          v58 = *(v0 + 296);
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v64[0] = v60;
          *v59 = 136446210;
          v61 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v58, v57, v64);

          *(v59 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v18, v55, "❌ Intent id=%{public}s) — Missing player", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v60);

          goto LABEL_33;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (v2 == 2)
      {

        goto LABEL_9;
      }
    }

    outlined consume of PlaybackController.CommandError(*(v0 + 40), v3);
  }

  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 144);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v7 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_9:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 304);
    if (v10)
    {
      v12 = *(v0 + 296);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v64[0] = v14;
      *v13 = 136446210;
      v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v11, v64);

      *(v13 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "❌ Intent id=%{public}s) — User cancelled", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
LABEL_23:

      goto LABEL_34;
    }

LABEL_24:

    goto LABEL_34;
  }

  *(v0 + 88) = *(v0 + 336);
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
LABEL_21:

    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v36))
    {
      v37 = *(v0 + 336);
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      v40 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v40 = 136446466;
      v41 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v39, v38, v64);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2082;
      *(v0 + 96) = v37;
      swift_errorRetain();
      v42 = String.init<A>(describing:)();
      v44 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v42, v43, v64);

      *(v40 + 14) = v44;
      _os_log_impl(&_mh_execute_header, v8, v36, "❌ Intent id=%{public}s) — Failed to add with error=%{public}s", v40, 0x16u);
      swift_arrayDestroy();
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  if (v17 == 1)
  {

    outlined copy of PlaybackController.CommandError(v16, 1);
    v18 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    outlined consume of PlaybackController.CommandError(v16, 1);
    v46 = os_log_type_enabled(v18, v45);
    v47 = *(v0 + 304);
    if (!v46)
    {

      outlined consume of PlaybackController.CommandError(v16, 1);
      goto LABEL_33;
    }

    v48 = *(v0 + 296);
    v49 = swift_slowAlloc();
    v64[0] = swift_slowAlloc();
    *v49 = 136446466;
    v50 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v48, v47, v64);

    *(v49 + 4) = v50;
    *(v49 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd, &_s9MusicCore6PlayerC7Command_pMR);
    v51 = Array.description.getter();
    v53 = v52;
    outlined consume of PlaybackController.CommandError(v16, 1);
    v54 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v51, v53, v64);

    *(v49 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v18, v45, "❌ Intent id=%{public}s) — Could not produce playback commands=%{public}s", v49, 0x16u);
    swift_arrayDestroy();

    goto LABEL_28;
  }

  if (v17 != 3 || v16 != 1)
  {
    outlined consume of PlaybackController.CommandError(*(v0 + 56), v17);
    goto LABEL_21;
  }

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 304);
  if (!v20)
  {
    goto LABEL_32;
  }

  v22 = *(v0 + 296);
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v64[0] = v24;
  *v23 = 136446210;
  v25 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v22, v21, v64);

  *(v23 + 4) = v25;
  _os_log_impl(&_mh_execute_header, v18, v19, "❌ Intent id=%{public}s) — Could not playback, subscription needed", v23, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v24);

LABEL_28:

LABEL_33:

LABEL_34:
  swift_willThrow();

  v62 = *(v0 + 8);

  return v62();
}

{
  v17 = v0;

  if (one-time initialization token for siriIntents != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[39], static Logger.siriIntents);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[45];
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  if (v3)
  {
    v15 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Donation error=%{public}s)", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);

    (*(v5 + 8))(v15, v7);
  }

  else
  {

    (*(v5 + 8))(v6, v7);
  }

  v13 = v0[1];

  return v13();
}

void *PlaybackController.init(coordinator:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_player] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = 0;
  *&v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_ageVerificationWrapper] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isErrorAlertPresented] = 0;
  v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_isLeaseEndAlertPresented] = 0;
  outlined init with copy of ActionPerforming(a1, &v1[OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator]);
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "init");
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v5;
}

double PlaybackController.player.didset(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMd, &_s7Combine9PublishedV9PublisherVySo17MPCPlayerResponseCSg_GMR);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - v6;
  if (a1)
  {
    swift_beginAccess();
    v8 = *(a1 + 24);
    if (v8)
    {
      if (v8 == v2)
      {
        swift_beginAccess();
        *(a1 + 24) = 0;
        swift_unknownObjectRelease();
        [*(a1 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:0];
      }
    }
  }

  v9 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10)
  {
    swift_beginAccess();
    *(v10 + 24) = v2;

    v11 = v2;
    swift_unknownObjectRelease();
    [*(v10 + OBJC_IVAR____TtC9MusicCore6Player_engine) setDelegate:v11];

    if (*&v2[v9])
    {
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMd, &_s7Combine9PublishedVySo17MPCPlayerResponseCSgGMR);
      Published.projectedValue.getter();
      swift_endAccess();

      swift_allocObject();
      swift_unknownObjectWeakInit();
      lazy protocol witness table accessor for type Published<MPCPlayerResponse?>.Publisher and conformance Published<A>.Publisher();
      v10 = Publisher<>.sink(receiveValue:)();

      (*(v5 + 8))(v7, v4);
    }

    else
    {
      v10 = 0;
    }
  }

  *&v2[OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingSubscription] = v10;

  return result;
}

void closure #1 in PlaybackController.player.didset(void **a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v4 = &v13 - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    type metadata accessor for MainActor();
    v9 = v5;
    v10 = v7;
    v11 = static MainActor.shared.getter();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = &protocol witness table for MainActor;
    v12[4] = v10;
    v12[5] = v5;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v4, &async function pointer to partial apply for closure #1 in closure #1 in PlaybackController.player.didset, v12);
  }
}

uint64_t closure #1 in closure #1 in PlaybackController.player.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in PlaybackController.player.didset, v7, v6);
}

uint64_t closure #1 in closure #1 in PlaybackController.player.didset()
{
  v1 = *(v0 + 24);

  PlaybackController.updateNowPlayingPresentation(for:)(v1);
  v2 = *(v0 + 8);

  return v2();
}

void PlaybackController.updateNowPlayingPresentation(for:)(void *a1)
{
  if (!a1 || (v3 = [a1 tracklist]) == 0)
  {
LABEL_8:
    v6 = v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor;
    v7 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
    v8 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 8);
    v9 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16);
    v10 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 24);
    v11 = *(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 32);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0;

    outlined consume of PlaybackController.NowPlayingPresentationDescriptor?(v7, v8, v9, v10, v11);
    return;
  }

  v107 = v3;
  v4 = [v3 playingItem];
  if (!v4)
  {
    v5 = v107;
    goto LABEL_7;
  }

  v5 = v4;
  if ([v4 isPlaceholder])
  {

LABEL_7:
    goto LABEL_8;
  }

  v12 = [v107 uniqueIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = (v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor);
  if (!*(v1 + OBJC_IVAR____TtC9MusicCore18PlaybackController_nowPlayingPresentationDescriptor + 16))
  {

LABEL_17:
    v18 = [v5 contentItemIdentifier];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = [v107 uniqueIdentifier];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = *v16;
    v27 = v16[1];
    v28 = v16[2];
    v29 = v16[3];
    v30 = v16[4];
    *v16 = 1;
    v16[1] = v19;
    v16[2] = v21;
    v16[3] = v23;
    v16[4] = v25;
    outlined consume of PlaybackController.NowPlayingPresentationDescriptor?(v26, v27, v28, v29, v30);
    goto LABEL_18;
  }

  if (v13 == v16[3] && v15 == v16[4])
  {

    goto LABEL_18;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_18:
  v31 = [v5 contentItemIdentifier];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = v16[2];
  if (v35)
  {
    if (v32 == v16[1] && v34 == v35)
    {
      v36 = 1;
    }

    else
    {
      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v36 = 0;
  }

  if (v16[2])
  {
    v37 = *v16;
  }

  else
  {
    v37 = 0;
  }

  if ([a1 videoOutput])
  {
    v110 = &OBJC_PROTOCOL___MPCVideoOutput;
    v38 = swift_dynamicCastObjCProtocolConditional();
    if (!v38 || (v39 = v38, swift_getObjectType(), type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr), !swift_dynamicCastMetatype()))
    {

      swift_unknownObjectRelease();
      return;
    }

    v106 = v1;
    type metadata accessor for MPCPlayerResponse.VideoContext(0);
    swift_allocObject();
    v40 = MPCPlayerResponse.VideoContext.init(output:)(v39);
    if ((v37 & 1) == 0 || (v36 & 1) == 0 || (v100 = v40, [a1 state] != 2))
    {

LABEL_40:

      return;
    }

    v99 = objc_opt_self();
    v41 = [v99 sharedApplication];
    v42 = [v41 openSessions];

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UISceneSession, UISceneSession_ptr);
    lazy protocol witness table accessor for type UISceneSession and conformance NSObject();
    v43 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v43 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v43 = v111;
      v44 = v112;
      v45 = v113;
      v46 = v114;
      v47 = v115;
    }

    else
    {
      v48 = -1 << *(v43 + 32);
      v44 = v43 + 56;
      v45 = ~v48;
      v49 = -v48;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v47 = v50 & *(v43 + 56);

      v46 = 0;
    }

    v51 = (v45 + 64) >> 6;
    v102 = v44;
    if (v43 < 0)
    {
      goto LABEL_51;
    }

LABEL_46:
    v52 = v46;
    v53 = v47;
    v54 = v46;
    if (!v47)
    {
      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v54 >= v51)
        {
LABEL_61:
          outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v43);

          return;
        }

        v53 = *(v44 + 8 * v54);
        ++v52;
        if (v53)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_93:
      v92 = v105;
      v91 = v106;
      v71 = v54;
LABEL_89:
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v71);

      v104 = 0;
      if (!v16[2])
      {
        goto LABEL_91;
      }

LABEL_90:
      *v16 = 0;
LABEL_91:
      v93 = *(v91 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
      v94 = *(v91 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
      __swift_project_boxed_opaque_existential_0Tm((v91 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v93);
      v108[0] = v100;
      v109 = 1;
      v95 = *(v94 + 8);

      v95(v108, v93, v94);

      outlined destroy of PresentationKind(v108);
      return;
    }

LABEL_50:
    v55 = (v53 - 1) & v53;
    v56 = *(*(v43 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v53)))));
    while (1)
    {
      if (!v56)
      {
        goto LABEL_61;
      }

      v58 = v43;
      v105 = v56;
      v59 = [v56 role];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
      if (v60 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v62 == v63)
      {
        break;
      }

      v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v65)
      {
        goto LABEL_63;
      }

      v46 = v54;
      v47 = v55;
      v43 = v58;
      v44 = v102;
      if ((v43 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_51:
      v57 = __CocoaSet.Iterator.next()();
      if (!v57)
      {
        goto LABEL_61;
      }

      v116 = v57;
      swift_dynamicCast();
      v56 = v108[0];
      v54 = v46;
      v55 = v47;
    }

LABEL_63:
    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v58);

    v66 = [v105 scene];
    if (!v66 || (v67 = v66, v68 = [v66 activationState], v67, v68))
    {

      goto LABEL_40;
    }

    v69 = [v99 sharedApplication];
    v70 = [v69 openSessions];

    v71 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v71 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v71 = v116;
      v72 = v117;
      v73 = v118;
      v74 = v119;
      v75 = v120;
    }

    else
    {
      v76 = -1 << *(v71 + 32);
      v72 = v71 + 56;
      v73 = ~v76;
      v77 = -v76;
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      else
      {
        v78 = -1;
      }

      v75 = v78 & *(v71 + 56);

      v74 = 0;
    }

    v79 = (v73 + 64) >> 6;
    v101 = v72;
    if (v71 < 0)
    {
      goto LABEL_78;
    }

LABEL_73:
    v80 = v74;
    v81 = v75;
    v82 = v74;
    if (v75)
    {
LABEL_77:
      v103 = (v81 - 1) & v81;
      v83 = *(*(v71 + 48) + ((v82 << 9) | (8 * __clz(__rbit64(v81)))));
      while (1)
      {
        v54 = v71;
        if (!v83)
        {
          goto LABEL_93;
        }

        v104 = v83;
        v84 = [v83 role];
        v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v87 = v86;
        if (v85 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v87 == v88)
        {
          break;
        }

        v90 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v90)
        {
          goto LABEL_95;
        }

        v74 = v82;
        v71 = v54;
        v72 = v101;
        v75 = v103;
        if ((v71 & 0x8000000000000000) == 0)
        {
          goto LABEL_73;
        }

LABEL_78:
        if (!__CocoaSet.Iterator.next()())
        {
          goto LABEL_88;
        }

        swift_dynamicCast();
        v83 = v108[0];
        v82 = v74;
        v103 = v75;
      }

LABEL_95:
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v54);

      v96 = [v104 scene];
      if (v96)
      {
        v97 = v96;
        v98 = [v96 activationState];

        if (v98 == -1)
        {
          v92 = v105;
          v91 = v106;
          if (!v16[2])
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }

      else
      {
      }

      goto LABEL_40;
    }

    while (1)
    {
      v82 = v80 + 1;
      if (__OFADD__(v80, 1))
      {
        break;
      }

      if (v82 >= v79)
      {
LABEL_88:
        v92 = v105;
        v91 = v106;
        goto LABEL_89;
      }

      v81 = *(v72 + 8 * v82);
      ++v80;
      if (v81)
      {
        goto LABEL_77;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

double PlaybackController.player.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;

  PlaybackController.player.didset(v4);

  return result;
}

void (*PlaybackController.player.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return PlaybackController.player.modify;
}

void PlaybackController.player.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);

  if (a2)
  {

    PlaybackController.player.didset(v6);
  }

  else
  {
    PlaybackController.player.didset(v6);
  }

  free(v3);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(PlaybackController.perform(_:route:intent:issuer:), v7, v6);
}

{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v9 = swift_task_alloc();
  v4[4] = v9;
  *v9 = v4;
  v9[1] = PlaybackController.perform(_:route:intent:issuer:);

  return PlaybackController.perform(_:options:intent:issuer:)(a1, 0x10000, 1, a2, a3, a4);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMd, &_ss23_ContiguousArrayStorageCy9MusicCore6PlayerC7Command_pGMR);
  v2 = swift_allocObject();
  v0[11] = v2;
  *(v2 + 16) = xmmword_1004F2400;
  outlined init with copy of ActionPerforming(v1, v2 + 32);
  v0[12] = static MainActor.shared.getter();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = PlaybackController.perform(_:route:intent:issuer:);
  v4 = v0[5];
  v5 = v0[3];
  v6 = v0[4];

  return PlaybackController.perform(_:options:intent:issuer:)(v2, 0x10000, 1, v5, v6, v4);
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(PlaybackController.perform(_:route:intent:issuer:), v1, v2);
}

{
  v1 = *(v0 + 112);

  if (v1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v3 = 0;
    goto LABEL_9;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(*(v0 + 112) + 32);
  }

LABEL_9:
  v4 = *(v0 + 8);

  return v4(v3);
}

{

  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return _swift_task_switch(PlaybackController.perform(_:route:intent:issuer:), v1, v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t PlaybackController.perform(_:route:intent:issuer:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;
  *(v3 + 120) = v1;

  if (v1)
  {

    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = PlaybackController.perform(_:route:intent:issuer:);
  }

  else
  {
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v8;
    v7 = PlaybackController.perform(_:route:intent:issuer:);
  }

  return _swift_task_switch(v7, v4, v6);
}

{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
    v8 = closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:);
  }

  else
  {
    *(v4 + 48) = a1;
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v9;
    v8 = PlaybackController.perform(_:route:intent:issuer:);
  }

  return _swift_task_switch(v8, v5, v7);
}

uint64_t PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = type metadata accessor for CocoaError.Code();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();

  return _swift_task_switch(PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:), 0, 0);
}

uint64_t PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)()
{
  v12 = v0;
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[31] = __swift_project_value_buffer(v1, static Logger.playbackController);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[24];
    v4 = v0[25];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136446210;
    *(v6 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v4, &v11);
    _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Offering play local option to user", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v0[32] = type metadata accessor for MainActor();
  v0[33] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[34] = v9;
  v0[35] = v8;

  return _swift_task_switch(PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:), v9, v8);
}

{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 153;
  v0[3] = PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:);
  v2 = swift_continuation_init();
  closure #1 in PlaybackController.userPickedPlayLocally()(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  *(*v0 + 154) = *(*v0 + 153);
  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:), v3, v2);
}

{

  return _swift_task_switch(PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:), 0, 0);
}

{

  return _swift_task_switch(PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:), 0, 0);
}

{
  v1 = v0[27];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[39] = v3;
  if (v3)
  {
    v4 = v0[23];
    v0[10] = v4;
    v0[13] = &type metadata for Player.ReplaceCommand;
    v0[14] = &protocol witness table for Player.ReplaceCommand;
    v0[11] = 3;
    v5 = v4;

    v6 = swift_task_alloc();
    v0[40] = v6;
    *v6 = v0;
    v6[1] = PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:);
    v7 = v0[26];

    return Player.perform(_:options:issuer:)((v0 + 10), 0x10000, 0, 0, v7);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v32 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 80));
  v1 = *(v0 + 328);
  *(v0 + 160) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    if (!*(v0 + 152))
    {

      outlined copy of PlaybackController.CommandError(v2, 0);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      outlined consume of PlaybackController.CommandError(v2, 0);
      if (os_log_type_enabled(v23, v24))
      {
        v26 = *(v0 + 192);
        v25 = *(v0 + 200);
        v27 = swift_slowAlloc();
        v31[0] = swift_slowAlloc();
        *v27 = 136446466;
        *(v27 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v26, v25, v31);
        *(v27 + 12) = 2082;
        *(v0 + 176) = v2;
        outlined copy of PlaybackController.CommandError.AlertKind(v2);
        v28 = String.init<A>(describing:)();
        v30 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v28, v29, v31);

        *(v27 + 14) = v30;
        _os_log_impl(&_mh_execute_header, v23, v24, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v27, 0x16u);
        swift_arrayDestroy();

        outlined consume of PlaybackController.CommandError(v2, 0);
      }

      else
      {

        outlined consume of PlaybackController.CommandError(v2, 0);
      }

      goto LABEL_14;
    }

    if (v3 == 3 && v2 == 2)
    {

      goto LABEL_8;
    }

    outlined consume of PlaybackController.CommandError(*(v0 + 144), v3);
  }

  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v7 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v5 + 8))(v4, v6);
  if (v7)
  {
LABEL_8:

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v10, v31);
      _os_log_impl(&_mh_execute_header, v8, v9, "Intent id=%{public}s) — User cancelled", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v14))
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = swift_slowAlloc();
    v31[0] = swift_slowAlloc();
    *v17 = 136446466;
    *(v17 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v15, v31);
    *(v17 + 12) = 2082;
    *(v0 + 168) = v1;
    swift_errorRetain();
    v18 = String.init<A>(describing:)();
    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v19, v31);

    *(v17 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v8, v14, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    goto LABEL_12;
  }

LABEL_13:

LABEL_14:
  swift_willThrow();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  *(v1 + 288) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:), v3, v5);
}

uint64_t PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(__n128 a1)
{
  v38 = v1;
  if (*(v1 + 154) == 1)
  {
    v2 = (*(v1 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_0Tm(v2, v3);
    *(v1 + 296) = (*(v4 + 40))(v3, v4);
    v5 = swift_task_alloc();
    *(v1 + 304) = v5;
    *v5 = v1;
    v5[1] = PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:);

    return GroupActivitiesManager.leave(performLeaveCommand:)(0);
  }

  lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
  v7 = swift_allocError();
  *v8 = 2;
  *(v8 + 8) = 3;
  swift_willThrow();
  *(v1 + 160) = v7;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v9 = *(v1 + 144);
    v10 = *(v1 + 152);
    if (!*(v1 + 152))
    {

      outlined copy of PlaybackController.CommandError(v9, 0);
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.error.getter();

      outlined consume of PlaybackController.CommandError(v9, 0);
      if (os_log_type_enabled(v29, v30))
      {
        v32 = *(v1 + 192);
        v31 = *(v1 + 200);
        v33 = swift_slowAlloc();
        v37[0] = swift_slowAlloc();
        *v33 = 136446466;
        *(v33 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v32, v31, v37);
        *(v33 + 12) = 2082;
        *(v1 + 176) = v9;
        outlined copy of PlaybackController.CommandError.AlertKind(v9);
        v34 = String.init<A>(describing:)();
        v36 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v34, v35, v37);

        *(v33 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v29, v30, "Intent id=%{public}s) — Could not present alertKind=%{public}s", v33, 0x16u);
        swift_arrayDestroy();

        outlined consume of PlaybackController.CommandError(v9, 0);
      }

      else
      {

        outlined consume of PlaybackController.CommandError(v9, 0);
      }

      goto LABEL_18;
    }

    if (v10 == 3 && v9 == 2)
    {

      goto LABEL_12;
    }

    outlined consume of PlaybackController.CommandError(*(v1 + 144), v10);
  }

  v12 = *(v1 + 232);
  v11 = *(v1 + 240);
  v13 = *(v1 + 224);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v12 + 8))(v11, v13);
  if (v14)
  {
LABEL_12:

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v1 + 192);
      v17 = *(v1 + 200);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v18, v17, v37);
      _os_log_impl(&_mh_execute_header, v15, v16, "Intent id=%{public}s) — User cancelled", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);

LABEL_16:

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v21))
  {
    v23 = *(v1 + 192);
    v22 = *(v1 + 200);
    v24 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v24 = 136446466;
    *(v24 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v22, v37);
    *(v24 + 12) = 2082;
    *(v1 + 168) = v7;
    swift_errorRetain();
    v25 = String.init<A>(describing:)();
    v27 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v25, v26, v37);

    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v15, v21, "Intent id=%{public}s) — Failed to insert with error=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  swift_willThrow();

  v28 = *(v1 + 8);

  return v28();
}

uint64_t PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(void *a1)
{
  v4 = *v2;
  *(*v2 + 328) = v1;

  if (v1)
  {
    v5 = PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm((v4 + 80));
    v5 = PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t PlaybackController._add(_:identifiedBy:route:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[126] = v4;
  v5[125] = a4;
  v5[124] = a3;
  v5[123] = a2;
  v5[122] = a1;
  v6 = type metadata accessor for UUID();
  v5[127] = v6;
  v5[128] = *(v6 - 8);
  v5[129] = swift_task_alloc();
  type metadata accessor for Locale();
  v5[130] = swift_task_alloc();
  v7 = type metadata accessor for String.LocalizationValue();
  v5[131] = v7;
  v5[132] = *(v7 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[135] = v8;
  v5[136] = *(v8 - 8);
  v5[137] = swift_task_alloc();
  v5[138] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[139] = swift_task_alloc();
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v5[147] = swift_task_alloc();
  v5[148] = type metadata accessor for MainActor();
  v5[149] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[150] = v10;
  v5[151] = v9;

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v10, v9);
}

uint64_t PlaybackController._add(_:identifiedBy:route:)()
{
  v18 = v0;
  v1 = v0[126];
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  v0[152] = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[153] = v3;
  if (v3)
  {
    v4 = OBJC_IVAR____TtC9MusicCore6Player_engineState;
    swift_beginAccess();
    if (*(v3 + v4) == 2)
    {
    }

    else
    {
      v8 = one-time initialization token for playbackController;

      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      __swift_project_value_buffer(v9, static Logger.playbackController);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = v0[124];
        v13 = v0[123];
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v17 = v15;
        *v14 = 136446210;
        *(v14 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v13, v12, &v17);
        _os_log_impl(&_mh_execute_header, v10, v11, "Intent id=%{public}s) — Awaiting for engine to start", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v15);
      }
    }

    v16 = swift_task_alloc();
    v0[154] = v16;
    *v16 = v0;
    v16[1] = PlaybackController._add(_:identifiedBy:route:);

    return Player.startEngineIfNeeded()();
  }

  else
  {

    lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 3;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 1208);
  v3 = *(v1 + 1200);

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v3, v2);
}

{
  v1 = *(v0 + 1000);
  if (!v1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v2 = *(v0 + 960);
    v1 = [v2 route];
  }

  *(v0 + 1240) = v1;
  v3 = *(v0 + 976);
  v4 = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v0 + 1248) = v4;
  *(v0 + 1256) = *(v3 + v4[5]);
  if ((*(v3 + v4[10]) & 1) != 0 || *(v3 + v4[9]) == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = *(v3 + v4[6]);
  }

  *(v0 + 1264) = v5;
  v6 = *(v0 + 1000);
  v7 = swift_task_alloc();
  *(v0 + 1272) = v7;
  *v7 = v0;
  v7[1] = PlaybackController._add(_:identifiedBy:route:);
  v8 = *(v0 + 976);

  return PlaybackController.checkForPlayabilityOption(using:descriptor:)(v1, v8);
}

{
  v81 = v0;
  if (*(v0 + 218) == 2)
  {
    v1 = *(v0 + 1240);

    v2 = *(v0 + 8);

    return v2();
  }

  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  *(v0 + 1288) = __swift_project_value_buffer(v4, static Logger.playbackController);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 218);
    v8 = *(v0 + 992);
    v9 = *(v0 + 984);
    v10 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v10 = 136446466;
    *(v10 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v8, &v80);
    *(v10 + 12) = 2082;
    *(v0 + 217) = v7 & 1;
    v11 = String.init<A>(describing:)();
    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, &v80);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Intent id=%{public}s) — Resolved Playability Options=%{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1176), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *(v0 + 1176);
  if (EnumCaseMultiPayload == 1)
  {
    v16 = *(v0 + 1096);
    v17 = *(v0 + 1088);
    v18 = *(v0 + 1080);
    (*(v17 + 32))(v16, v15, v18);
    v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v17 + 8))(v16, v18);
  }

  else
  {
    v19 = *v15;
  }

  v20 = [v19 sharedListeningProperties];

  if (v20)
  {

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v21 = *(v0 + 952);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = [*(v0 + 952) isSharedListeningSession];

    if (!v22)
    {
      goto LABEL_25;
    }

    outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = *(v0 + 1160);
    if (v23 == 1)
    {
      v25 = *(v0 + 1096);
      v26 = *(v0 + 1088);
      v27 = *(v0 + 1080);
      (*(v26 + 32))(v25, v24, v27);
      v28 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v26 + 8))(v25, v27);
    }

    else
    {
      v28 = *v24;
    }

    v43 = [v28 tracklistSource];

    if (v43 == 100)
    {
LABEL_25:
      v44 = *(v0 + 1264);
      *(v0 + 1360) = *(v0 + 1256);
      *(v0 + 1352) = v44;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v45 = *(v0 + 944);
      v46 = [v45 route];
      *(v0 + 1368) = v46;

      if (!v46)
      {
        v52 = *(v0 + 1240);
        goto LABEL_34;
      }

      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      *(v0 + 1376) = v47;
      if (!v47)
      {
        goto LABEL_31;
      }

      v48 = v47;
      v49 = v46;
      if ([v48 isDeviceRoute])
      {
LABEL_30:

LABEL_31:
        v52 = *(v0 + 1240);
LABEL_32:

LABEL_34:
        *(v0 + 1408) = v52;
        outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v53 = swift_getEnumCaseMultiPayload();
        v54 = *(v0 + 1144);
        if (v53 == 1)
        {
          v55 = *(v0 + 1096);
          v56 = *(v0 + 1088);
          v57 = *(v0 + 1080);
          (*(v56 + 32))(v55, v54, v57);
          v58 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v56 + 8))(v55, v57);
        }

        else
        {
          v58 = *v54;
        }

        *(v0 + 1416) = v58;
        *(v0 + 220) = *(*(v0 + 1248) + 32);
        *(v0 + 1424) = static MainActor.shared.getter();
        v60 = dispatch thunk of Actor.unownedExecutor.getter();
        *(v0 + 1432) = v60;
        *(v0 + 1440) = v59;

        return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v60, v59);
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v50 = *(v0 + 760);
      v51 = *(v0 + 218);
      if (v50)
      {

        if ((v51 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((*(v0 + 218) & 1) == 0)
      {
        outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
        v71 = swift_getEnumCaseMultiPayload();
        v72 = *(v0 + 1152);
        if (v71 == 1)
        {
          v73 = *(v0 + 1096);
          v74 = *(v0 + 1088);
          v75 = *(v0 + 1080);
          (*(v74 + 32))(v73, v72, v75);
          v76 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
          (*(v74 + 8))(v73, v75);
        }

        else
        {
          v76 = *v72;
        }

        v77 = [v76 prefersEnqueuingUsingAirPlay];

        if ((v77 & 1) == 0)
        {
          v79 = [v48 supportsRemoteControl];

          if (v79 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
          {
            v52 = *(v0 + 1240);
            if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
            {
              [*(v0 + 1376) establishGroup];
            }

            goto LABEL_32;
          }

          goto LABEL_51;
        }
      }

LABEL_51:
      v78 = swift_task_alloc();
      *(v0 + 1384) = v78;
      *v78 = v0;
      v78[1] = PlaybackController._add(_:identifiedBy:route:);

      return Player.prepareForBufferedAirPlay()();
    }

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = *(v0 + 992);
      v64 = *(v0 + 984);
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v80 = v66;
      *v65 = 136446210;
      *(v65 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v64, v63, &v80);
      _os_log_impl(&_mh_execute_header, v61, v62, "Intent id=%{public}s) — Offering Shared Listening options", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
    }

    v67 = swift_task_alloc();
    *(v0 + 1320) = v67;
    *v67 = v0;
    v67[1] = PlaybackController._add(_:identifiedBy:route:);
    v68 = *(v0 + 992);
    v69 = *(v0 + 984);
    v70 = *(v0 + 976);

    return PlaybackController.userPickedOptionsForShareListening(for:id:)(v70, v69, v68);
  }

  else
  {
    outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1168), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v29 = swift_getEnumCaseMultiPayload();
    v30 = *(v0 + 1168);
    if (v29 == 1)
    {
      v31 = *(v0 + 1096);
      v32 = *(v0 + 1088);
      v33 = *(v0 + 1080);
      (*(v32 + 32))(v31, v30, v33);
      v34 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v32 + 8))(v31, v33);
    }

    else
    {
      v34 = *v30;
    }

    *(v0 + 1296) = v34;
    v35 = *(v0 + 1248);
    v36 = *(v0 + 976);
    v37 = (*(v0 + 1008) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
    v38 = v37[3];
    v39 = v37[4];
    __swift_project_boxed_opaque_existential_0Tm(v37, v38);
    *(v0 + 1304) = (*(v39 + 40))(v38, v39);
    v40 = *(v36 + *(v35 + 44));
    v41 = v34;
    v42 = swift_task_alloc();
    *(v0 + 1312) = v42;
    *v42 = v0;
    v42[1] = PlaybackController._add(_:identifiedBy:route:);

    return GroupActivitiesManager.initiateSession(with:alwaysPromptSharePlayPermissions:confirmReplacement:)(v34, v40, v40);
  }
}

{
  v51 = v0;
  v1 = *(v0 + 219);

  if (v1 == 1)
  {
    v2 = *(v0 + 1240);

    v3 = *(v0 + 8);

    return v3();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(v0 + 952);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [*(v0 + 952) isSharedListeningSession];

  if (!v6)
  {
    goto LABEL_11;
  }

  outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1160), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + 1160);
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *(v0 + 1096);
    v10 = *(v0 + 1088);
    v11 = *(v0 + 1080);
    (*(v10 + 32))(v9, v8, v11);
    v12 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v12 = *v8;
  }

  v13 = [v12 tracklistSource];

  if (v13 == 100)
  {
LABEL_11:
    v14 = *(v0 + 1264);
    *(v0 + 1360) = *(v0 + 1256);
    *(v0 + 1352) = v14;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v15 = *(v0 + 944);
    v16 = [v15 route];
    *(v0 + 1368) = v16;

    if (!v16)
    {
      v22 = *(v0 + 1240);
      goto LABEL_20;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    *(v0 + 1376) = v17;
    if (!v17)
    {
      goto LABEL_17;
    }

    v18 = v17;
    v19 = v16;
    if ([v18 isDeviceRoute])
    {
LABEL_16:

LABEL_17:
      v22 = *(v0 + 1240);
LABEL_18:

LABEL_20:
      *(v0 + 1408) = v22;
      outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v23 = swift_getEnumCaseMultiPayload();
      v24 = *(v0 + 1144);
      if (v23 == 1)
      {
        v25 = *(v0 + 1096);
        v26 = *(v0 + 1088);
        v27 = *(v0 + 1080);
        (*(v26 + 32))(v25, v24, v27);
        v28 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v26 + 8))(v25, v27);
      }

      else
      {
        v28 = *v24;
      }

      *(v0 + 1416) = v28;
      *(v0 + 220) = *(*(v0 + 1248) + 32);
      *(v0 + 1424) = static MainActor.shared.getter();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      *(v0 + 1432) = v30;
      *(v0 + 1440) = v29;

      return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v30, v29);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v20 = *(v0 + 760);
    v21 = *(v0 + 218);
    if (v20)
    {

      if ((v21 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if ((*(v0 + 218) & 1) == 0)
    {
      outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      v41 = swift_getEnumCaseMultiPayload();
      v42 = *(v0 + 1152);
      if (v41 == 1)
      {
        v43 = *(v0 + 1096);
        v44 = *(v0 + 1088);
        v45 = *(v0 + 1080);
        (*(v44 + 32))(v43, v42, v45);
        v46 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v44 + 8))(v43, v45);
      }

      else
      {
        v46 = *v42;
      }

      v47 = [v46 prefersEnqueuingUsingAirPlay];

      if ((v47 & 1) == 0)
      {
        v49 = [v18 supportsRemoteControl];

        if (v49 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
        {
          v22 = *(v0 + 1240);
          if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
          {
            [*(v0 + 1376) establishGroup];
          }

          goto LABEL_18;
        }

        goto LABEL_37;
      }
    }

LABEL_37:
    v48 = swift_task_alloc();
    *(v0 + 1384) = v48;
    *v48 = v0;
    v48[1] = PlaybackController._add(_:identifiedBy:route:);

    return Player.prepareForBufferedAirPlay()();
  }

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = *(v0 + 992);
    v34 = *(v0 + 984);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v50 = v36;
    *v35 = 136446210;
    *(v35 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v34, v33, &v50);
    _os_log_impl(&_mh_execute_header, v31, v32, "Intent id=%{public}s) — Offering Shared Listening options", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v36);
  }

  v37 = swift_task_alloc();
  *(v0 + 1320) = v37;
  *v37 = v0;
  v37[1] = PlaybackController._add(_:identifiedBy:route:);
  v38 = *(v0 + 992);
  v39 = *(v0 + 984);
  v40 = *(v0 + 976);

  return PlaybackController.userPickedOptionsForShareListening(for:id:)(v40, v39, v38);
}

{
  if (*(v0 + 297))
  {
    v1 = *(v0 + 1240);

    lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
    swift_allocError();
    *v2 = 2;
    *(v2 + 8) = 3;
    swift_willThrow();

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 1336);
  *(v0 + 1360) = *(v0 + 1344);
  *(v0 + 1352) = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = *(v0 + 944);
  v7 = [v6 route];
  *(v0 + 1368) = v7;

  if (!v7)
  {
    v13 = *(v0 + 1240);
    goto LABEL_14;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  *(v0 + 1376) = v8;
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v7;
  if ([v9 isDeviceRoute])
  {
LABEL_10:

LABEL_11:
    v13 = *(v0 + 1240);
LABEL_12:

LABEL_14:
    *(v0 + 1408) = v13;
    outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v15 = *(v0 + 1144);
    if (EnumCaseMultiPayload == 1)
    {
      v16 = *(v0 + 1096);
      v17 = *(v0 + 1088);
      v18 = *(v0 + 1080);
      (*(v17 + 32))(v16, v15, v18);
      v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v17 + 8))(v16, v18);
    }

    else
    {
      v19 = *v15;
    }

    *(v0 + 1416) = v19;
    *(v0 + 220) = *(*(v0 + 1248) + 32);
    *(v0 + 1424) = static MainActor.shared.getter();
    v21 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1432) = v21;
    *(v0 + 1440) = v20;

    return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v21, v20);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v11 = *(v0 + 760);
  v12 = *(v0 + 218);
  if (v11)
  {

    if ((v12 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_25;
  }

  if (*(v0 + 218))
  {
    goto LABEL_25;
  }

  outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1152), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v22 = swift_getEnumCaseMultiPayload();
  v23 = *(v0 + 1152);
  if (v22 == 1)
  {
    v24 = *(v0 + 1096);
    v25 = *(v0 + 1088);
    v26 = *(v0 + 1080);
    (*(v25 + 32))(v24, v23, v26);
    v27 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v25 + 8))(v24, v26);
  }

  else
  {
    v27 = *v23;
  }

  v28 = [v27 prefersEnqueuingUsingAirPlay];

  if (v28)
  {
LABEL_25:

    goto LABEL_26;
  }

  v30 = [v9 supportsRemoteControl];

  if (v30 && (*(*(v0 + 976) + *(*(v0 + 1248) + 36)) & 1) == 0)
  {
    v13 = *(v0 + 1240);
    if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
    {
      [*(v0 + 1376) establishGroup];
    }

    goto LABEL_12;
  }

LABEL_26:
  v29 = swift_task_alloc();
  *(v0 + 1384) = v29;
  *v29 = v0;
  v29[1] = PlaybackController._add(_:identifiedBy:route:);

  return Player.prepareForBufferedAirPlay()();
}

{

  v1 = *(v0 + 1400);
  if (([*(v0 + 1376) canModifyGroupMembership] & 1) == 0)
  {
    [*(v0 + 1376) establishGroup];
  }

  *(v0 + 1408) = v1;
  outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1144), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 1144);
  if (EnumCaseMultiPayload == 1)
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1088);
    v6 = *(v0 + 1080);
    (*(v5 + 32))(v4, v3, v6);
    v7 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v7 = *v3;
  }

  *(v0 + 1416) = v7;
  *(v0 + 220) = *(*(v0 + 1248) + 32);
  *(v0 + 1424) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1432) = v9;
  *(v0 + 1440) = v8;

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v9, v8);
}

{
  v21 = v0;
  v1 = PlaybackController.commands(for:options:replaceIntent:)(*(v0 + 1416), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1448) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v4, v20);
      *(v6 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd, &_s9MusicCore6PlayerC7Command_pMR);
      v7 = Array.description.getter();
      v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 220);
    v11 = *(v0 + 1416);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1464) = v13;
    *v13 = v0;
    v13[1] = PlaybackController._add(_:identifiedBy:route:);
    v14 = *(v0 + 1408);

    return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 1, v14, v11, v12 + v10);
  }

  else
  {

    lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1456) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v19, v18);
  }
}

{
  v147 = v0;
  v1 = *(v0 + 1456);

  *(v0 + 936) = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (!swift_dynamicCast())
  {
    v15 = *(v0 + 1408);

    swift_willThrow();

LABEL_9:

    v16 = *(v0 + 8);
LABEL_10:

    return v16();
  }

  v2 = *(v0 + 720);
  *(v0 + 1480) = v2;
  v3 = *(v0 + 728);
  *(v0 + 1488) = v3;
  v4 = _convertErrorToNSError(_:)();
  *(v0 + 1496) = v4;
  type metadata accessor for MPCPlayerEnqueueErrorCode(0);
  *(v0 + 928) = 1;
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type MPCPlayerEnqueueErrorCode and conformance MPCPlayerEnqueueErrorCode, type metadata accessor for MPCPlayerEnqueueErrorCode, &protocol conformance descriptor for MPCPlayerEnqueueErrorCode);
  v5 = v4;
  v6 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v6)
  {

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 992);
      v10 = *(v0 + 984);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v146[0] = v12;
      *v11 = 136446210;
      *(v11 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v9, v146);
      _os_log_impl(&_mh_execute_header, v7, v8, "Intent id=%{public}s) — Offering replace intent options to user", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }

    *(v0 + 1504) = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1512) = v14;
    *(v0 + 1520) = v13;

    return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v14, v13);
  }

  *(v0 + 888) = 5;
  v17 = v5;
  v18 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v18)
  {
    v143 = *(v0 + 1408);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1008);
    v21 = *(v0 + 976);

    v22 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
    v23 = *(v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
    __swift_project_boxed_opaque_existential_0Tm((v20 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v22);
    outlined init with copy of TaskPriority?(v21 + *(v19 + 28), v0 + 144, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
    *(v0 + 216) = 2;
    (*(v23 + 8))(v0 + 144, v22, v23);
    outlined destroy of PresentationKind(v0 + 144);
    lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
    swift_allocError();
    *v24 = 1;
    *(v24 + 8) = 3;
    swift_willThrow();

    goto LABEL_9;
  }

  *(v0 + 856) = 3;
  v25 = v17;
  v26 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v26)
  {
    outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1128), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v28 = *(v0 + 1128);
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *(v0 + 1096);
      v30 = *(v0 + 1088);
      v31 = *(v0 + 1080);
      (*(v30 + 32))(v29, v28, v31);
      v32 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v30 + 8))(v29, v31);
    }

    else
    {
      v32 = *v28;
    }

    *(v0 + 1608) = v32;
    v41 = *(v0 + 220);
    v42 = *(v0 + 976);
    v43 = swift_task_alloc();
    *(v0 + 1616) = v43;
    *v43 = v0;
    v43[1] = PlaybackController._add(_:identifiedBy:route:);
    v44 = *(v0 + 992);
    v45 = *(v0 + 984);

    return PlaybackController.contentNotSupportedForSharePlay(with:identifiedBy:issuer:)(v32, v45, v44, v42 + v41);
  }

  type metadata accessor for MPCPlayerRequestErrorCode(0);
  *(v0 + 848) = 1001;
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type MPCPlayerRequestErrorCode and conformance MPCPlayerRequestErrorCode, type metadata accessor for MPCPlayerRequestErrorCode, &protocol conformance descriptor for MPCPlayerRequestErrorCode);
  v33 = v25;
  v34 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if ((v34 & 1) == 0)
  {
    v46 = *(v0 + 1408);

LABEL_56:
    lazy protocol witness table accessor for type Player.PlaybackError and conformance Player.PlaybackError();
    swift_allocError();
    *v87 = v2;
    v87[1] = v3;
    swift_willThrow();
    swift_errorRetain();

    goto LABEL_9;
  }

  outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1120), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v35 = swift_getEnumCaseMultiPayload();
  v36 = *(v0 + 1120);
  if (v35 == 1)
  {
    v37 = *(v0 + 1096);
    v38 = *(v0 + 1088);
    v39 = *(v0 + 1080);
    (*(v38 + 32))(v37, v36, v39);
    v40 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v38 + 8))(v37, v39);
  }

  else
  {
    v40 = *v36;
  }

  v47 = [v40 sharedListeningProperties];

  if (!v47)
  {
    goto LABEL_41;
  }

  v48 = [v33 userInfo];
  v49 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v49 + 16))
  {

    goto LABEL_43;
  }

  v52 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v50, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  outlined init with copy of Any(*(v49 + 56) + 32 * v52, v0 + 576);

  type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:

LABEL_44:
    if (!*(*(v0 + 1008) + *(v0 + 1216)))
    {
      goto LABEL_55;
    }

    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v72 = *(v0 + 840);
    if (!v72)
    {
      goto LABEL_55;
    }

    v73 = [v33 userInfo];
    v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v74 + 16))
    {
      v77 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v75, v76);
      v79 = v78;

      if (v79)
      {
        v80 = (v0 + 832);
        outlined init with copy of Any(*(v74 + 56) + 32 * v77, v0 + 608);

        type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode(0);
        if (swift_dynamicCast())
        {
          v81 = *v80;
          *(v0 + 800) = *v80;
          lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type related decl 'e' for MPCMusicBehaviorErrorCode and conformance related decl 'e' for MPCMusicBehaviorErrorCode, type metadata accessor for related decl 'e' for MPCMusicBehaviorErrorCode, &protocol conformance descriptor for related decl 'e' for MPCMusicBehaviorErrorCode);
          _BridgedStoredNSError.code.getter();
          if (*(v0 + 792) == 6)
          {
            v145 = v0;
            *(v0 + 968) = v81;
            v82 = _BridgedStoredNSError.userInfo.getter();
            v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            if (*(v82 + 16) && (v85 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v83, v84), (v86 & 1) != 0))
            {
              outlined init with copy of Any(*(v82 + 56) + 32 * v85, v0 + 512);
            }

            else
            {
              *(v0 + 512) = 0u;
              *(v0 + 528) = 0u;
            }

            if (!*(v0 + 536))
            {

              outlined destroy of TaskPriority?(v0 + 512, &_sypSgMd_0, &_sypSgMR_0);
              goto LABEL_55;
            }

            v88 = v0 + 768;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySC25MPCMusicBehaviorErrorCodeLeVGMd, &_sSaySC25MPCMusicBehaviorErrorCodeLeVGMR);
            if (swift_dynamicCast())
            {
              v144 = v81;
              if (*(*v88 + 16))
              {
                v89 = *(*v88 + 32);

                *(v145 + 776) = v89;
                _BridgedStoredNSError.code.getter();
                if (*(v145 + 784) == 4)
                {
                  v142 = v89;
                  *(v145 + 752) = v89;
                  v90 = _BridgedStoredNSError.userInfo.getter();
                  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  if (*(v90 + 16) && (v93 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v91, v92), (v94 & 1) != 0))
                  {
                    v0 = v145;
                    outlined init with copy of Any(*(v90 + 56) + 32 * v93, v145 + 640);
                  }

                  else
                  {
                    v0 = v145;
                    *(v145 + 640) = 0u;
                    *(v145 + 656) = 0u;
                  }

                  if (*(v0 + 664))
                  {
                    v95 = v0 + 808;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySC12MPCErrorCodeLeVGMd, &_sSaySC12MPCErrorCodeLeVGMR);
                    if (swift_dynamicCast())
                    {
                      if (*(*v95 + 16))
                      {
                        v96 = *(*v95 + 32);

                        *(v145 + 816) = v96;
                        type metadata accessor for related decl 'e' for MPCErrorCode(0);
                        lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);
                        _BridgedStoredNSError.code.getter();

                        if (*(v145 + 824) == 61)
                        {

                          v97 = Logger.logObject.getter();
                          v98 = static os_log_type_t.default.getter();

                          if (os_log_type_enabled(v97, v98))
                          {
                            v99 = *(v145 + 992);
                            v100 = *(v145 + 984);
                            v101 = swift_slowAlloc();
                            v102 = swift_slowAlloc();
                            v146[0] = v102;
                            *v101 = 136446210;
                            *(v101 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v100, v99, v146);
                            _os_log_impl(&_mh_execute_header, v97, v98, "Intent id=%{public}s) — SharePlayTogether content not available in host's storefront", v101, 0xCu);
                            __swift_destroy_boxed_opaque_existential_0Tm(v102);
                          }

                          v141 = (v145 + 376);
                          v103 = *(v145 + 1072);
                          v104 = *(v145 + 1064);
                          v105 = *(v145 + 1056);
                          v106 = *(v145 + 1048);
                          String.LocalizationValue.init(stringLiteral:)();
                          v137 = *(v105 + 16);
                          v137(v104, v103, v106);
                          if (one-time initialization token for module != -1)
                          {
                            swift_once();
                          }

                          v107 = *(v145 + 1072);
                          v108 = *(v145 + 1064);
                          v109 = *(v145 + 1056);
                          v110 = *(v145 + 1048);
                          v136 = *(v145 + 1032);
                          v138 = *(v145 + 1024);
                          v139 = *(v145 + 1016);
                          v140 = *(v145 + 1008);
                          v111 = static NSBundle.module;
                          static Locale.current.getter();
                          v112 = v111;
                          v113 = String.init(localized:table:bundle:locale:comment:)();
                          v134 = v114;
                          v135 = v113;
                          v115 = *(v109 + 8);
                          v115(v107, v110);
                          String.LocalizationValue.init(stringLiteral:)();
                          v137(v108, v107, v110);
                          static Locale.current.getter();
                          v116 = String.init(localized:table:bundle:locale:comment:)();
                          v132 = v117;
                          v133 = v116;
                          v115(v107, v110);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
                          v118 = swift_allocObject();
                          *(v118 + 16) = xmmword_1004F2400;
                          String.LocalizationValue.init(stringLiteral:)();
                          v137(v108, v107, v110);
                          static Locale.current.getter();
                          v119 = String.init(localized:table:bundle:locale:comment:)();
                          v121 = v120;
                          v115(v107, v110);
                          UUID.init()();
                          v122 = UUID.uuidString.getter();
                          v124 = v123;
                          (*(v138 + 8))(v136, v139);
                          *(v118 + 32) = v122;
                          *(v118 + 40) = v124;
                          *(v118 + 48) = v119;
                          *(v118 + 56) = v121;
                          *(v118 + 64) = 2;
                          *(v118 + 72) = 0;
                          *(v118 + 80) = 0;
                          LOBYTE(v146[0]) = 1;
                          *(v145 + 376) = v135;
                          *(v145 + 384) = v134;
                          *(v145 + 392) = v133;
                          *(v145 + 400) = v132;
                          *(v145 + 408) = 0;
                          *(v145 + 416) = 0;
                          *(v145 + 424) = 1;
                          *(v145 + 432) = v118;
                          *(v145 + 440) = 0;
                          v125 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
                          v126 = *(v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
                          __swift_project_boxed_opaque_existential_0Tm((v140 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v125);
                          v127 = *(v145 + 424);
                          *(v145 + 256) = *(v145 + 408);
                          *(v145 + 272) = v127;
                          *(v145 + 288) = *(v145 + 440);
                          v128 = *(v145 + 392);
                          *(v145 + 224) = *v141;
                          *(v145 + 240) = v128;
                          *(v145 + 296) = 0;
                          v129 = *(v126 + 8);
                          outlined init with copy of Alert(v141, v145 + 304);
                          v129(v145 + 224, v125, v126);

                          outlined destroy of Alert(v141);

                          outlined destroy of PresentationKind(v145 + 224);
                          v130 = *(v145 + 1408);

                          v16 = *(v145 + 8);
                          goto LABEL_10;
                        }
                      }

                      else
                      {
                      }
                    }

                    v0 = v145;
                  }

                  else
                  {

                    outlined destroy of TaskPriority?(v0 + 640, &_sypSgMd_0, &_sypSgMR_0);
                  }
                }

                else
                {

                  v0 = v145;
                }
              }

              else
              {
              }

              goto LABEL_55;
            }
          }
        }

LABEL_55:
        v46 = *(v0 + 1408);
        goto LABEL_56;
      }
    }

    else
    {
    }

    goto LABEL_55;
  }

  v55 = *(v0 + 864);
  *(v0 + 1632) = v55;
  *(v0 + 872) = v55;
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type related decl 'e' for MPCPlayerRequestErrorCode and conformance related decl 'e' for MPCPlayerRequestErrorCode, type metadata accessor for related decl 'e' for MPCPlayerRequestErrorCode, &protocol conformance descriptor for related decl 'e' for MPCPlayerRequestErrorCode);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 880) != 1000)
  {

    goto LABEL_44;
  }

  *(v0 + 896) = v55;
  v56 = _BridgedStoredNSError.userInfo.getter();
  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v56 + 16))
  {

    goto LABEL_68;
  }

  v59 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_0(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_68:

    goto LABEL_69;
  }

  outlined init with copy of Any(*(v56 + 56) + 32 * v59, v0 + 544);

  type metadata accessor for related decl 'e' for MPCErrorCode(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_69:

LABEL_70:

    goto LABEL_44;
  }

  v62 = *(v0 + 904);
  *(v0 + 1640) = v62;
  *(v0 + 912) = v62;
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type related decl 'e' for MPCErrorCode and conformance related decl 'e' for MPCErrorCode, type metadata accessor for related decl 'e' for MPCErrorCode, &protocol conformance descriptor for related decl 'e' for MPCErrorCode);
  _BridgedStoredNSError.code.getter();
  if (*(v0 + 920) != 58)
  {

    goto LABEL_70;
  }

  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = *(v0 + 992);
    v66 = *(v0 + 984);
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v146[0] = v68;
    *v67 = 136446210;
    *(v67 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v66, v65, v146);
    _os_log_impl(&_mh_execute_header, v63, v64, "Intent id=%{public}s) — SharedListening requires system route", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v68);
  }

  v69 = objc_opt_self();
  *(v0 + 1648) = v69;
  v70 = [v69 systemRoute];
  *(v0 + 1656) = v70;
  *(v0 + 80) = v0;
  *(v0 + 88) = PlaybackController._add(_:identifiedBy:route:);
  v71 = swift_continuation_init();
  *(v0 + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  *(v0 + 448) = _NSConcreteStackBlock;
  *(v0 + 456) = 1107296256;
  *(v0 + 464) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  *(v0 + 472) = &block_descriptor_204;
  *(v0 + 480) = v71;
  [v69 setActiveRoute:v70 completion:v0 + 448];

  return _swift_continuation_await(v0 + 80);
}

{
  v1 = v0[177];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v3, v2);
}

{
  v1 = *(v0 + 1408);

  v2 = *(v0 + 8);

  return v2();
}

{

  v0[182] = v0[184];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v2, v1);
}

{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 1240);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[171];
  v2 = v0[155];

  v3 = v0[1];

  return v3();
}

{
  v1 = v0[126];
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = PlaybackController._add(_:identifiedBy:route:);
  v2 = swift_continuation_init();
  closure #1 in PlaybackController.userPickedReplaceIntent()(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 1536) = *(*v0 + 736);
  *(v2 + 298) = *(v2 + 744);
  v3 = *(v1 + 1520);
  v4 = *(v1 + 1512);

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v4, v3);
}

{

  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v2, v1);
}

{
  if (*(v0 + 298))
  {
    v1 = *(v0 + 1496);
    v2 = *(v0 + 1408);

    lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
    swift_allocError();
    *v3 = 2;
    *(v3 + 8) = 3;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    outlined init with copy of PlaybackIntentDescriptor(*(v0 + 976), *(v0 + 1136), type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = *(v0 + 1136);
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *(v0 + 1096);
      v9 = *(v0 + 1088);
      v10 = *(v0 + 1080);
      (*(v9 + 32))(v8, v7, v10);
      v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v11 = *v7;
    }

    *(v0 + 1544) = v11;
    *(v0 + 1552) = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    *(v0 + 1560) = v13;
    *(v0 + 1568) = v12;

    return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v13, v12);
  }
}

{
  v21 = v0;
  v1 = PlaybackController.commands(for:options:replaceIntent:)(*(v0 + 1544), *(v0 + 1360), *(v0 + 1536));
  *(v0 + 1576) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v20[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v4, v20);
      *(v6 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd, &_s9MusicCore6PlayerC7Command_pMR);
      v7 = Array.description.getter();
      v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, v20);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1544);
    v11 = *(v0 + 220);
    v12 = *(v0 + 976);
    v13 = swift_task_alloc();
    *(v0 + 1592) = v13;
    *v13 = v0;
    v13[1] = PlaybackController._add(_:identifiedBy:route:);
    v14 = *(v0 + 1408);

    return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 0, v14, v10, v12 + v11);
  }

  else
  {

    lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
    v16 = swift_allocError();
    *v17 = v1;
    *(v17 + 8) = 1;
    swift_willThrow();
    *(v0 + 1584) = v16;
    v18 = *(v0 + 1208);
    v19 = *(v0 + 1200);

    return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v19, v18);
  }
}

{
  v1 = v0[193];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[193];

  v2 = v0[151];
  v3 = v0[150];

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v3, v2);
}

{
  v1 = v0[187];

  v2 = v0[176];

  v3 = v0[1];

  return v3();
}

{

  v0[198] = v0[200];
  v1 = v0[151];
  v2 = v0[150];

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v2, v1);
}

{
  v2 = *v1;
  *(*v1 + 1624) = v0;

  if (v0)
  {
    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {

    v3 = *(v2 + 1208);
    v4 = *(v2 + 1200);
    v5 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1664) = v2;
  v3 = *(v1 + 1208);
  v4 = *(v1 + 1200);
  if (v2)
  {
    v5 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {
    v5 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v5, v4, v3);
}

{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 976);

  outlined init with copy of PlaybackIntentDescriptor(v2, v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 1112);
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *(v0 + 1096);
    v6 = *(v0 + 1088);
    v7 = *(v0 + 1080);
    (*(v6 + 32))(v5, v4, v7);
    v8 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v8 = *v4;
  }

  *(v0 + 1672) = v8;
  *(v0 + 1680) = [*(v0 + 1648) systemRoute];
  *(v0 + 1688) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 1696) = v10;
  *(v0 + 1704) = v9;

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v10, v9);
}

{
  v22 = v0;
  v1 = PlaybackController.commands(for:options:replaceIntent:)(*(v0 + 1672), *(v0 + 1360), *(v0 + 1352));
  *(v0 + 1712) = v1;
  if (v1[2])
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 992);
      v5 = *(v0 + 984);
      v6 = swift_slowAlloc();
      v21[0] = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v5, v4, v21);
      *(v6 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd, &_s9MusicCore6PlayerC7Command_pMR);
      v7 = Array.description.getter();
      v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, v21);

      *(v6 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v2, v3, "Intent id=%{public}s) — Performing the following commands: %{public}s", v6, 0x16u);
      swift_arrayDestroy();
    }

    v10 = *(v0 + 1680);
    v11 = *(v0 + 1672);
    v12 = *(v0 + 220);
    v13 = *(v0 + 976);
    v14 = swift_task_alloc();
    *(v0 + 1728) = v14;
    *v14 = v0;
    v14[1] = PlaybackController._add(_:identifiedBy:route:);

    return PlaybackController.perform(_:options:intent:issuer:)(v1, 0x10000, 1, v10, v11, v13 + v12);
  }

  else
  {
    v16 = *(v0 + 1680);

    lazy protocol witness table accessor for type PlaybackController.CommandError and conformance PlaybackController.CommandError();
    v17 = swift_allocError();
    *v18 = v1;
    *(v18 + 8) = 1;
    swift_willThrow();

    *(v0 + 1720) = v17;
    v19 = *(v0 + 1208);
    v20 = *(v0 + 1200);

    return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v20, v19);
  }
}

{
  v1 = v0[209];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[210];
  v2 = v0[209];

  v3 = v0[151];
  v4 = v0[150];

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v4, v3);
}

{
  v1 = v0[205];
  v2 = v0[204];
  v3 = v0[187];

  v4 = v0[176];

  v5 = v0[1];

  return v5();
}

{

  *(v0 + 1720) = *(v0 + 1736);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1200);

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v2, v1);
}

{
  v1 = v0[201];
  v2 = v0[187];
  v3 = v0[176];

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[207];
  v2 = v0[205];
  v3 = v0[204];
  v4 = v0[187];
  v5 = v0[176];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t PlaybackController._add(_:identifiedBy:route:)(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 218) = a1;
  *(v4 + 1280) = v1;

  v5 = *(v3 + 1208);
  v6 = *(v3 + 1200);
  if (v1)
  {
    v7 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {
    v7 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1296);
  *(*v1 + 219) = a1;

  v4 = *(v2 + 1208);
  v5 = *(v2 + 1200);

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v5, v4);
}

uint64_t PlaybackController._add(_:identifiedBy:route:)(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 1328) = v3;

  if (v3)
  {
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {
    *(v8 + 297) = a3;
    *(v8 + 1336) = a2;
    *(v8 + 1344) = a1;
    v9 = *(v8 + 1208);
    v10 = *(v8 + 1200);
    v11 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v11, v10, v9);
}

uint64_t PlaybackController._add(_:identifiedBy:route:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1392) = v1;

  if (v1)
  {
    v5 = v4[151];
    v6 = v4[150];
    v7 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {
    v4[175] = a1;
    v5 = v4[151];
    v6 = v4[150];
    v7 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v3 = *v2;
  *(*v2 + 1472) = v1;

  if (v1)
  {
    v4 = *(v3 + 1440);
    v5 = *(v3 + 1432);
    v6 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {

    v4 = *(v3 + 1440);
    v5 = *(v3 + 1432);
    v6 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v2 = static MainActor.shared.getter();
  *(v1 + 1528) = v2;
  if (v2)
  {
    swift_getObjectType();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  return _swift_task_switch(PlaybackController._add(_:identifiedBy:route:), v3, v5);
}

{
  v3 = *v2;
  *(*v2 + 1600) = v1;

  if (v1)
  {
    v4 = *(v3 + 1568);
    v5 = *(v3 + 1560);
    v6 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {

    v4 = *(v3 + 1568);
    v5 = *(v3 + 1560);
    v6 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v3 = *v2;
  *(*v2 + 1736) = v1;

  if (v1)
  {
    v4 = *(v3 + 1704);
    v5 = *(v3 + 1696);
    v6 = PlaybackController._add(_:identifiedBy:route:);
  }

  else
  {

    v4 = *(v3 + 1704);
    v5 = *(v3 + 1696);
    v6 = PlaybackController._add(_:identifiedBy:route:);
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t PlaybackController.performSingBehavior(_:)(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  type metadata accessor for MainActor();
  v2[28] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[29] = v4;
  v2[30] = v3;

  return _swift_task_switch(PlaybackController.performSingBehavior(_:), v4, v3);
}

uint64_t PlaybackController.performSingBehavior(_:)()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 248) = v3;
  if (v3)
  {

    if (specialized Player.canPerform(_:)(&_mh_execute_header, v3))
    {
      if (one-time initialization token for playbackController != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      *(v0 + 272) = __swift_project_value_buffer(v4, static Logger.playbackController);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, v6, "[Auto-Sing] Awaiting for Vocals Command…", v7, 2u);
      }

      *(v0 + 160) = &type metadata for Player.VocalsCommand;
      *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
      *(v0 + 140) = 1;
      *(v0 + 136) = 0;
      v8 = swift_task_alloc();
      *(v0 + 280) = v8;
      *v8 = v0;
      v8[1] = PlaybackController.performSingBehavior(_:);
      v9 = *(v0 + 208);
      v10 = 5.0;
      v11 = v0 + 136;
    }

    else
    {
      if (one-time initialization token for playbackController != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.playbackController);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "[Auto-Sing] Preparing VA…", v17, 2u);
      }

      *(v0 + 120) = &type metadata for Player.VocalsCommand.Prepare;
      *(v0 + 128) = &protocol witness table for Player.VocalsCommand.Prepare;
      v18 = swift_task_alloc();
      *(v0 + 256) = v18;
      *v18 = v0;
      v18[1] = PlaybackController.performSingBehavior(_:);
      v9 = *(v0 + 208);
      v11 = v0 + 96;
      v10 = 5.0;
    }

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v11, 0, 0, 0, v9, v10);
  }

  else
  {

    v12 = *(v0 + 8);

    return v12();
  }
}

{
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 272) = __swift_project_value_buffer(v1, static Logger.playbackController);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Auto-Sing] Awaiting for Vocals Command…", v4, 2u);
  }

  *(v0 + 160) = &type metadata for Player.VocalsCommand;
  *(v0 + 168) = &protocol witness table for Player.VocalsCommand;
  *(v0 + 140) = 1;
  *(v0 + 136) = 0;
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = PlaybackController.performSingBehavior(_:);
  v6 = *(v0 + 208);

  return Player.performWhenAvailable(_:options:issuer:timeout:)(v0 + 136, 0, 0, 0, v6, 5.0);
}

{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "[Auto-Sing] Vocals command performed", v3, 2u);
  }

  v4 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_0Tm(v4, v5);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v6 + 8))(v0 + 16, v5, v6);

  outlined destroy of PresentationKind(v0 + 16);
  v7 = *(v0 + 8);

  return v7();
}

{
  v16 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v1 = *(v0 + 264);
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_0Tm(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  outlined destroy of PresentationKind(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

{
  v16 = v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  v1 = *(v0 + 288);
  if (one-time initialization token for playbackController != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.playbackController);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    *(v0 + 200) = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Auto-Sing] Failed with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  else
  {
  }

  v10 = (*(v0 + 216) + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v11 = v10[3];
  v12 = v10[4];
  __swift_project_boxed_opaque_existential_0Tm(v10, v11);
  *(v0 + 16) = 0;
  *(v0 + 88) = 1;
  (*(v12 + 8))(v0 + 16, v11, v12);

  outlined destroy of PresentationKind(v0 + 16);
  v13 = *(v0 + 8);

  return v13();
}

uint64_t PlaybackController.performSingBehavior(_:)(void *a1)
{
  v4 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = PlaybackController.performSingBehavior(_:);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 12);
    v5 = v4[29];
    v6 = v4[30];
    v7 = PlaybackController.performSingBehavior(_:);
  }

  return _swift_task_switch(v7, v5, v6);
}

{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = v4[29];
    v6 = v4[30];
    v7 = PlaybackController.performSingBehavior(_:);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 17);
    v5 = v4[29];
    v6 = v4[30];
    v7 = PlaybackController.performSingBehavior(_:);
  }

  return _swift_task_switch(v7, v5, v6);
}

BOOL PlaybackController.canPerform(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = a1[3];
    v6 = a1[4];
    v7 = __swift_project_boxed_opaque_existential_0Tm(a1, v5);

    v8 = specialized Player.canPerform(_:)(v7, v4, v5, v6);
  }

  else
  {
    return 0;
  }

  return v8;
}

uint64_t PlaybackController.canPerform(anyOf:)(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v2 + v4))
  {

    v5 = Player.canPerform(anyOf:)(a1);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t PlaybackController.performWhenAvailable(_:issuer:timeout:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 64) = v3;
  *(v4 + 56) = a3;
  *(v4 + 40) = a1;
  *(v4 + 48) = a2;
  type metadata accessor for MainActor();
  *(v4 + 72) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return _swift_task_switch(PlaybackController.performWhenAvailable(_:issuer:timeout:), v6, v5);
}

uint64_t PlaybackController.performWhenAvailable(_:issuer:timeout:)()
{
  v1 = *(v0 + 8);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 12) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 13) = v4;
    *v4 = v0;
    v4[1] = PlaybackController.performWhenAvailable(_:issuer:timeout:);
    v5 = v0[7];
    v7 = *(v0 + 5);
    v6 = *(v0 + 6);

    return Player.performWhenAvailable(_:options:issuer:timeout:)(v7, 0x10000, 1, 0, v6, v5);
  }

  else
  {

    v9 = *(v0 + 1);

    return v9(0);
  }
}

{

  v1 = *(v0 + 120);
  v2 = *(v0 + 8);

  return v2(v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaybackController.performWhenAvailable(_:issuer:timeout:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = PlaybackController.performWhenAvailable(_:issuer:timeout:);
  }

  else
  {

    v4[15] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = PlaybackController.performWhenAvailable(_:issuer:timeout:);
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t PlaybackController.perform(_:options:intent:issuer:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 176) = a6;
  *(v7 + 184) = v6;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5;
  *(v7 + 89) = a3;
  *(v7 + 144) = a1;
  *(v7 + 152) = a2;
  type metadata accessor for MainActor();
  *(v7 + 192) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v7 + 200) = v9;
  *(v7 + 208) = v8;

  return _swift_task_switch(PlaybackController.perform(_:options:intent:issuer:), v9, v8);
}

uint64_t PlaybackController.perform(_:options:intent:issuer:)()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 216) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 224) = v3;
  if (v3)
  {

    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = PlaybackController.perform(_:options:intent:issuer:);
    v5 = *(v0 + 176);
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    v8 = *(v0 + 89);
    v9 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v9, v6, v8, v7, v5);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11(_swiftEmptyArrayStorage);
  }
}

{
  v37 = v1;
  v2 = *(v1 + 248);

  v3 = (v2 & 0xFFFFFFFFFFFFFF8);
  if (v2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
LABEL_12:
      outlined consume of Player.PlaybackError?(v4, 0);
      goto LABEL_13;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_20;
    }

    v5 = *(v2 + 32);
  }

  v3 = v5;
  v6 = [v5 dialog];
  if (!v6)
  {

    v4 = 0;
    goto LABEL_12;
  }

  v0 = v6;
  if (one-time initialization token for playbackController != -1)
  {
LABEL_20:
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.playbackController);

  v8 = v3;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v34 = v8;
  v35 = v0;
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v11 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd, &_s9MusicCore6PlayerC7Command_pMR);
    v12 = Array.description.getter();
    v14 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v12, v13, &v36);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    v15 = v8;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v17, v19, &v36);

    *(v11 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v9, v10, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  v21 = *(v1 + 216);
  v22 = *(v1 + 184);
  v23 = *(v1 + 168);
  v24 = (v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v25 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v26 = *(v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_0Tm((v22 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v25);
  v27 = (*(v26 + 40))(v25, v26);
  v28 = *(v22 + v21);
  v29 = v24[3];
  v30 = v24[4];
  __swift_project_boxed_opaque_existential_0Tm(v24, v29);
  v31 = v23;

  MPCPlayerCommandDialog.alert(context:completion:)(v23, v27, v28, 0, 0, (v1 + 16));
  *(v1 + 88) = 0;
  (*(v30 + 8))(v1 + 16, v29, v30);
  outlined destroy of PresentationKind(v1 + 16);

LABEL_13:
  v32 = *(v1 + 8);

  return v32(v2);
}

{
  v46 = v0;
  v2 = *(v0 + 240);

  *(v0 + 136) = v2;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = (v3 >> 62);
  if (v3 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_33:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        goto LABEL_21;
      }

      goto LABEL_10;
    }

    v6 = *(v3 + 32);
  }

  v7 = v6;
  v1 = &stru_1005F2000;
  v8 = [v6 dialog];

  if (!v8)
  {
LABEL_27:
    lazy protocol witness table accessor for type Player.PlaybackError and conformance Player.PlaybackError();
    swift_allocError();
    *v38 = v4;
    v38[1] = v3;
    swift_willThrow();

    goto LABEL_28;
  }

  v2 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    goto LABEL_33;
  }

  v9 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_21:
    outlined consume of Player.PlaybackError?(v4, v3);
    goto LABEL_22;
  }

LABEL_10:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*(v2 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v10 = *(v3 + 32);
  }

  v5 = v10;
  v9 = [v10 v1[111].name];
  if (!v9)
  {

    goto LABEL_21;
  }

  v42 = (v0 + 16);
  if (one-time initialization token for playbackController != -1)
  {
LABEL_37:
    v40 = v9;
    swift_once();
    v9 = v40;
  }

  v44 = v9;
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.playbackController);

  v12 = v5;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  v43 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v15 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC7Command_pMd, &_s9MusicCore6PlayerC7Command_pMR);
    v16 = Array.description.getter();
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v17, v45);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = v12;
    v20 = [v19 description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v21, v23, v45);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v13, v14, "⤵️ 🛑 Commands %{public}s — Perform error -> Presenting dialog for status=%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v25 = *(v0 + 216);
  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator);
  v29 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 24);
  v30 = *(v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator + 32);
  __swift_project_boxed_opaque_existential_0Tm((v26 + OBJC_IVAR____TtC9MusicCore18PlaybackController_coordinator), v29);
  v31 = (*(v30 + 40))(v29, v30);
  v32 = *(v26 + v25);
  v33 = v28[3];
  v34 = v28[4];
  __swift_project_boxed_opaque_existential_0Tm(v28, v33);
  v41 = v27;

  MPCPlayerCommandDialog.alert(context:completion:)(v27, v31, v32, 0, 0, v42);
  *(v0 + 88) = 0;
  (*(v34 + 8))(v42, v33, v34);
  outlined destroy of PresentationKind(v42);
  if (v4)
  {

    lazy protocol witness table accessor for type Player.PlaybackError and conformance Player.PlaybackError();
    swift_allocError();
    *v35 = v4;
    v35[1] = v3;
    swift_willThrow();

LABEL_28:
    v39 = *(v0 + 8);

    return v39();
  }

LABEL_22:
  v36 = *(v0 + 8);

  return v36(v3);
}

uint64_t PlaybackController.perform(_:options:intent:issuer:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = v4[25];
    v6 = v4[26];
    v7 = PlaybackController.perform(_:options:intent:issuer:);
  }

  else
  {

    v4[31] = a1;
    v5 = v4[25];
    v6 = v4[26];
    v7 = PlaybackController.perform(_:options:intent:issuer:);
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[28] = v4;
  v3[29] = *(v4 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[32] = swift_task_alloc();
  v3[33] = type metadata accessor for MainActor();
  v3[34] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[35] = v6;
  v3[36] = v5;

  return _swift_task_switch(PlaybackController.checkForPlayabilityOption(using:descriptor:), v6, v5);
}

uint64_t PlaybackController.checkForPlayabilityOption(using:descriptor:)()
{
  v1 = *(v0 + 216);
  v2 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  *(v0 + 296) = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v1 + v2) && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v3 = *(v0 + 192), (*(v0 + 304) = v3) != 0))
  {
    v5 = *(v0 + 200);
    v4 = [objc_opt_self() sharedController];
    LODWORD(v5) = MPCloudServiceStatusController.accountPlayabilityStatus(for:)(v5);

    if (v5)
    {
      outlined init with copy of PlaybackIntentDescriptor(*(v0 + 208), *(v0 + 256), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *(v0 + 256);
      if (EnumCaseMultiPayload == 1)
      {
        v9 = *(v0 + 232);
        v8 = *(v0 + 240);
        v10 = *(v0 + 224);
        (*(v9 + 32))(v8, v7, v10);
        v11 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v9 + 8))(v8, v10);
      }

      else
      {
        v11 = *v7;
      }

      v17 = [v11 tracklistToken];

      if (v17)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19 && (v20 = [v19 request]) != 0 && (v21 = v20, objc_opt_self(), v22 = swift_dynamicCastObjCClass(), v21, v22) && *(v1 + v2))
        {

          v23 = Player.supportsDelegation.getter();
          swift_unknownObjectRelease();

          if (v23)
          {
            v24 = OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_isPersistent;
            swift_beginAccess();
            if (v3[v24])
            {
              LOBYTE(v5) = 1;
              goto LABEL_7;
            }
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v25 = *&v3[OBJC_IVAR____TtC9MusicCore24SharePlayTogetherSession_session];
      if (!v25)
      {
        __break(1u);
        return _swift_task_switch(v25, v18, v15);
      }

      if ([v25 isPlaceholder])
      {
        v26 = static MainActor.shared.getter();
        *(v0 + 312) = v26;
        if (v26)
        {
          swift_getObjectType();
          v13 = dispatch thunk of Actor.unownedExecutor.getter();
          v15 = v27;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
        goto LABEL_28;
      }

      LOBYTE(v5) = 0;
    }
  }

  else
  {
    v5 = *(v0 + 200);
    v3 = [objc_opt_self() sharedController];
    LOBYTE(v5) = MPCloudServiceStatusController.accountPlayabilityStatus(for:)(v5);
  }

LABEL_7:

  *(v0 + 345) = v5;
  v12 = static MainActor.shared.getter();
  *(v0 + 328) = v12;
  if (v12)
  {
    swift_getObjectType();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
LABEL_28:
  v25 = v16;
  v18 = v13;

  return _swift_task_switch(v25, v18, v15);
}

{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 10;
  v4 = v1[37];
  v5 = v1[27];
  v1[10] = v2;
  v1[11] = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  v6 = swift_continuation_init();
  if (*(v5 + v4))
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;

    Player.requestSharePlayTogether(completion:)(partial apply for closure #1 in closure #1 in PlaybackController.checkForPlayabilityOption(using:descriptor:), v8);
  }

  return _swift_continuation_await(v3);
}

{

  *(v0 + 345) = 0;
  v1 = static MainActor.shared.getter();
  *(v0 + 328) = v1;
  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  return _swift_task_switch(PlaybackController.checkForPlayabilityOption(using:descriptor:), v2, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0 + 16;
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 344;
  *(v0 + 24) = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  v4 = *(v0 + 345);
  v5 = swift_continuation_init();
  closure #2 in PlaybackController.checkForPlayabilityOption(using:descriptor:)(v5, v4, v3, v2);

  return _swift_continuation_await(v1);
}

{

  v1 = *(v0 + 8);
  v2 = *(v0 + 346);

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaybackController.checkForPlayabilityOption(using:descriptor:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 320) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  else
  {

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  return _swift_task_switch(v6, v4, v5);
}

{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 336) = v3;
  if (v3)
  {
    swift_willThrow();

    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  else
  {

    *(v2 + 346) = *(v2 + 344);
    v4 = *(v2 + 280);
    v5 = *(v2 + 288);
    v6 = PlaybackController.checkForPlayabilityOption(using:descriptor:);
  }

  return _swift_task_switch(v6, v4, v5);
}