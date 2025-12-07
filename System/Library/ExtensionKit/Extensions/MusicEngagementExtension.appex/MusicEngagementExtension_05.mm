uint64_t closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  return _swift_task_switch(closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0[2], v0[3], v0[4], v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    v9 = *(v8 + 8);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7, v9);
    *(v0 + 256) = v10;
    v11 = type metadata accessor for URL();
    *(v0 + 264) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 272) = v13;
    *(v0 + 280) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7, v9);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v16;
    *(v0 + 304) = v17;
    *(v0 + 320) = v18;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:), v20, v19);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

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
  *(v6 + 16) = 3589;
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
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t sub_10006B3F4()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t Actions.Download.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.Download.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C60B0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C60B0;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t sub_10006BA80()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Download.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C60D0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C60D0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Download.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C60B0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C60B0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.Download.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C60D0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C60D0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t sub_10006BCB8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(a1, v7, v1 + v8, v4, v5, v6);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006BE90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
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

uint64_t partial apply for closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(a1, v7, v8, v1 + v5, v1 + v6);
}

uint64_t sub_10006C0DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in cellularDataDisallowedAlert #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySbs5NeverOGMd, &_sScCySbs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10006C214()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[7];
  v7 = (*(*(v4 - 8) + 80) + 64) & ~*(*(v4 - 8) + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in kickOffDownload #1 <A>() in closure #2 in Actions.Download.Context.init<A>(item:library:presentationSource:metricsReportingContext:)(a1, v8, v9, v6, v1 + v7, v4, v5);
}

unint64_t lazy protocol witness table accessor for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>()
{
  result = lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>;
  if (!lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMd, &_s8MusicKit0A14ItemCollectionVyAA8PlaylistV5EntryVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MusicItemCollection<Playlist.Entry> and conformance MusicItemCollection<A>);
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.playlist.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Actions.EditPlaylist.Context.playlist.setter(uint64_t a1)
{
  v3 = type metadata accessor for Playlist();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context(0) + 20));

  return v1;
}

uint64_t type metadata accessor for Actions.EditPlaylist.Context(uint64_t a1)
{
  result = type metadata singleton initialization cache for Actions.EditPlaylist.Context;
  if (!type metadata singleton initialization cache for Actions.EditPlaylist.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Actions.EditPlaylist.Context.presentEditPlaylistView.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.finish.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.EditPlaylist.Context(0) + 24));

  return v1;
}

uint64_t Actions.EditPlaylist.Context.finish.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.EditPlaylist.Context(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v9 = type metadata accessor for Playlist();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin();
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(a5, a1, v9, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = type metadata accessor for Actions.EditPlaylist.Context(0);
  v16 = (a5 + *(v15 + 20));
  *v16 = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> () with global actor constraint MainActor;
  v16[1] = v14;
  v17 = *(v10 + 32);
  v17(v13, a1, v9);
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v19 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v20 = (v19 + *(v18 + 64) + *(v10 + 80)) & ~*(v10 + 80);
  v21 = swift_allocObject();
  outlined init with take of URL?(v25, v21 + v19, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (v17)(v21 + v20, v13, v9);
  v23 = (a5 + *(v15 + 24));
  *v23 = &async function pointer to partial apply for closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:);
  v23[1] = v21;
  return result;
}

uint64_t sub_10006C95C()
{

  return swift_deallocObject();
}

uint64_t closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[14] = a1;
  v2[15] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = type metadata accessor for MetricsEvent.Click(0);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v2[30] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 112), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    v7 = Playlist.catalogID.getter();
    *(v0 + 272) = v8;
    *(v0 + 280) = v7;
    v9 = type metadata accessor for URL();
    *(v0 + 288) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 296) = v11;
    *(v0 + 304) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(v0 + 104) = type metadata accessor for Playlist();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistVmMd, &_s8MusicKit8PlaylistVmMR);
    v13 = String.init<A>(describing:)();
    v15 = v14;
    specialized Collection.prefix(_:)(1, v13, v14);
    v16 = Substring.lowercased()();

    v17 = specialized Collection.dropFirst(_:)(1uLL, v13, v15);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *(v0 + 72) = v17;
    *(v0 + 80) = v19;
    *(v0 + 88) = v21;
    *(v0 + 96) = v23;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v16;
    *(inited + 48) = 0;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v24;
    *(v0 + 328) = v25;
    *(v0 + 344) = v26;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v28 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:), v28, v27);
  }
}

{
  v85 = *(v0 + 344);
  v83 = *(v0 + 328);
  v78 = *(v0 + 312);
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v6 = *(v0 + 232);
  v79 = v5;
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 184);
  v77 = *(v0 + 176);

  v10 = 0xEB000000006D6574;
  if (v2)
  {
    v10 = v2;
  }

  v80 = v10;
  if (!v2)
  {
    v1 = 0x497972617262694CLL;
  }

  outlined init with copy of TaskPriority?(v6, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v11 = *(v3 + v4[7]);
  v13 = *v3;
  v12 = v3[1];
  outlined init with copy of TaskPriority?(v3 + v4[5], v9, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v82 = *(v3 + v4[8]);
  *(v8 + v7[19]) = 0;
  v14 = (v8 + v7[20]);
  *v14 = 0;
  v14[1] = 0;
  *v8 = v1;
  *(v8 + 8) = v80;
  *(v8 + 16) = 5125;
  outlined init with take of URL?(v79, v8 + v7[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v81 = v12;
  *(v8 + v7[8]) = v11;
  v15 = (v8 + v7[9]);
  *v15 = v13;
  v15[1] = v12;
  v16 = v8 + v7[10];
  *v16 = v78;
  *(v16 + 16) = v83;
  *(v16 + 24) = v85;
  outlined init with copy of TaskPriority?(v9, v77, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v17 = type metadata accessor for MetricsEvent.Page(0);
  v84 = *(*(v17 - 1) + 48);
  v18 = v84(v77, 1, v17);
  v19 = *(v0 + 344);
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  v22 = *(v0 + 312);
  v23 = *(v0 + 176);
  if (v18 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v13, v81);
    v24 = v82;

    outlined copy of MetricsEvent.Click.ActionDetails(v22, v20, v21, v19, SBYTE1(v19));
    outlined destroy of TaskPriority?(v23, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v25 = 0;
    v26 = 0;
  }

  else
  {
    v25 = *v23;
    v26 = v23[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v13, v81);
    v24 = v82;

    outlined copy of MetricsEvent.Click.ActionDetails(v22, v20, v21, v19, SBYTE1(v19));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v23, type metadata accessor for MetricsEvent.Page);
  }

  v27 = *(v0 + 184);
  v28 = *(v0 + 168);
  v29 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v29 = v25;
  v29[1] = v26;
  outlined init with copy of TaskPriority?(v27, v28, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v30 = v84(v28, 1, v17);
  v31 = *(v0 + 168);
  if (v30 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v31, type metadata accessor for MetricsEvent.Page);
  }

  v34 = *(v0 + 184);
  v35 = *(v0 + 160);
  v36 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v36 = v32;
  v36[1] = v33;
  outlined init with copy of TaskPriority?(v34, v35, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v84(v35, 1, v17) == 1)
  {
    v37 = v24;
    v38 = *(v0 + 296);
    v39 = *(v0 + 288);
    v40 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v38(v40, 1, 1, v39);
    v24 = v37;
  }

  else
  {
    v41 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v41 + v17[6], *(v0 + 216), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v41, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v84(v43, 1, v17);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 0;
  }

  else
  {
    v46 = *(v45 + v17[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v84(v48, 1, v17);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(v50, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 1;
  }

  else
  {
    v51 = *(v50 + v17[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v52 = *(v0 + 184);
  v53 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v51;
  outlined init with copy of TaskPriority?(v52, v53, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v54 = v84(v53, 1, v17);
  v55 = *(v0 + 136);
  if (v54 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v56 = 0;
    v57 = 0;
  }

  else
  {
    v58 = (v55 + v17[8]);
    v56 = *v58;
    v57 = v58[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v55, type metadata accessor for MetricsEvent.Page);
  }

  v59 = *(v0 + 184);
  v60 = *(v0 + 128);
  v61 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v61 = v56;
  v61[1] = v57;
  outlined init with take of URL?(v59, v60, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v62 = v84(v60, 1, v17);
  v63 = *(v0 + 128);
  if (v62 == 1)
  {
    outlined destroy of TaskPriority?(v63, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v64 = 2;
  }

  else
  {
    v64 = *(v63 + v17[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v63, type metadata accessor for MetricsEvent.Page);
  }

  v65 = *(v0 + 200);
  v66 = *(v0 + 208);
  v67 = *(v0 + 192);
  *(v65 + *(v67 + 68)) = v64;
  *(v65 + *(v67 + 44)) = v24;
  outlined init with take of Actions.MetricsReportingContext(v65, v66, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v69 = *(v0 + 320);
  v68 = *(v0 + 328);
  v70 = *(v0 + 312);
  v71 = *(v0 + 264);
  v72 = *(v0 + 248);
  v73 = *(v0 + 232);
  v74 = *(v0 + 208);
  v75 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v74, *(v71 + *(v72 + 24)), *(v71 + *(v72 + 24) + 8), *(v71 + *(v72 + 36)), *(v71 + *(v72 + 36) + 8), *(v71 + *(v72 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v70, v69, v68, v75, SBYTE1(v75));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v74, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

uint64_t sub_10006D72C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.EditPlaylist.Context.init(playlist:presentEditPlaylistView:metricsReportingContext:)(v0 + v3, v0 + v6);
}

int *static Actions.EditPlaylist.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.EditPlaylist.Context(a1, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12EditPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12EditPlaylistO7ContextVytGMR);
  *(a2 + result[9]) = 12;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.EditPlaylist.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.EditPlaylist.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.EditPlaylist.action(context:);
  v6[1] = 0;
  return result;
}

unint64_t closure #1 in static Actions.EditPlaylist.action(context:)()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMR);
  __chkstk_darwin();
  v5 = &v9 - v4;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v5, 1, v0) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents(&lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    dispatch thunk of SetAlgebra.init()();
    lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents(&lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents, &protocol conformance descriptor for Playlist.EditableComponents);
    v6 = dispatch thunk of static Equatable.== infix(_:_:)();
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v5, v0);
    if ((v6 & 1) == 0 && ![objc_opt_self() isRunningInStoreDemoMode])
    {
      return 0;
    }
  }

  return 0xD000000000000013;
}

uint64_t closure #2 in static Actions.EditPlaylist.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context(0) + 20));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.EditPlaylist.action(context:);

  return v5();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #3 in static Actions.EditPlaylist.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.EditPlaylist.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t outlined init with copy of Actions.EditPlaylist.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.EditPlaylist.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.EditPlaylist.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.EditPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t sub_10006E3F8()
{

  return swift_deallocObject();
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.EditPlaylist.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t sub_10006E4EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist();
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

uint64_t sub_10006E5BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Playlist();
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

unint64_t type metadata completion function for Actions.EditPlaylist.Context(uint64_t a1)
{
  result = type metadata accessor for Playlist();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Playlist.EditableComponents();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t (**a6)()@<X8>)
{
  v27 = a5;
  v28 = a3;
  v29 = a4;
  v25[0] = a1;
  v9 = type metadata accessor for Playlist.Folder.Item();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v26 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = v25 - v13;
  (*(v10 + 16))(v25 - v13, a1, v9, v12);
  v15 = *(v10 + 80);
  v25[1] = v15 | 7;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  v17 = *(v10 + 32);
  v17(v16 + ((v15 + 24) & ~v15), v14, v9);
  v17(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25[0], v9);
  v18 = *(v29 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v15 + v19) & ~v15;
  v21 = swift_allocObject();
  v22 = v28;
  v23 = v27;
  *(v21 + 16) = v29;
  *(v21 + 24) = v23;
  (*(v18 + 32))(v21 + v19, v22);
  result = (v17)(v21 + v20, v26, v9);
  *a6 = partial apply for closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:);
  a6[1] = v16;
  a6[2] = &async function pointer to partial apply for closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:);
  a6[3] = v21;
  a6[4] = &async function pointer to closure #3 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:);
  a6[5] = 0;
  return result;
}

uint64_t Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t (*a3)()@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v13 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  outlined init with take of Playlist.Folder?(a1, v16 + v13);
  *(v16 + v14) = a2;
  v17 = (v16 + v15);
  *v17 = a5;
  v17[1] = a6;
  result = outlined init with take of PresentationSource(a4, v16 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8));
  *a7 = _s9MusicCore7ActionsO12CreateFolderO7ContextV6folder8children7library18presentationSource10completionAG0A3Kit8PlaylistV0aM8InternalE0E0VSg_SayAR4ItemOGSgAM0A7LibraryCAA012PresentationK0VyAG10FlowResultOYacSgtcfcAA21ActionSupportedStatusOyYbcfU_TA_0;
  a7[1] = a3;
  a7[2] = &async function pointer to partial apply for closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  a7[3] = v16;
  a7[4] = &async function pointer to closure #3 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  a7[5] = 0;
  return result;
}

uint64_t Actions.RenameFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  (*(v9 + 32))(v12 + v10, a1, v8);
  result = outlined init with take of PresentationSource(a3, v12 + v11);
  *a4 = partial apply for closure #1 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  a4[1] = a2;
  a4[2] = &async function pointer to partial apply for closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  a4[3] = v12;
  a4[4] = &async function pointer to closure #3 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  a4[5] = 0;
  return result;
}

uint64_t Actions.DeleteFolder.Context.init(folder:library:presentationSource:)@<X0>(uint64_t a1@<X0>, unint64_t (*a2)()@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v8 = type metadata accessor for Playlist.Folder();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  (*(v9 + 32))(v12 + v10, a1, v8);
  outlined init with take of PresentationSource(a3, v12 + v11);
  *a4 = partial apply for closure #1 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  a4[1] = a2;
  a4[2] = &async function pointer to partial apply for closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  a4[3] = v12;
  a4[4] = &async function pointer to closure #3 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  a4[5] = 0;
}

uint64_t static Actions.MoveToFolder.action(context:)@<X0>(_OWORD *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v6;
  *(a6 + 32) = a1[2];
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.CreateFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C6220;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C6220;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.CreateFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000001004C6220;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000011;
  *(v1 + 24) = 0x80000001004C6220;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[39] = a4;
  v5[40] = a5;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v5[41] = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v5[42] = v6;
  v5[43] = *(v6 + 64);
  v5[44] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

uint64_t closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  v4 = v0[39];
  v5 = v0[40];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[36];
  specialized static TextFieldAlert.Configuration.newFolder.getter((v0 + 26));
  outlined init with copy of Playlist.Folder?(v8, v1);
  outlined init with copy of PresentationSource(v5, (v0 + 2));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = (v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v0[45] = v12;
  outlined init with take of Playlist.Folder?(v1, v12 + v9);
  *(v12 + v10) = v7;
  v13 = (v12 + v11);
  *v13 = v6;
  v13[1] = v4;
  outlined init with take of PresentationSource((v0 + 2), v12 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8));
  v0[46] = type metadata accessor for MainActor();

  outlined copy of (@escaping @callee_guaranteed @async (@in_guaranteed Actions.CreateFolder.Context.FlowResult) -> ())?(v6, v4);
  v0[47] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v15, v14);
}

{
  v1 = *(v0 + 360);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 384) = TextFieldAlert.init(configuration:callback:)((v0 + 208), partial apply for closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v1);

  return _swift_task_switch(closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

{
  v1 = v0[48];
  v3 = v0[40];
  v2 = v0[41];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  outlined init with copy of PresentationSource(v3, (v0 + 14));
  v5 = v1;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 14), (v7 + 4));
  v7[16] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v2, &async function pointer to partial apply for closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v7);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a1;
  v27 = a6;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v26 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  outlined init with copy of Playlist.Folder?(a3, v15);
  outlined init with copy of PresentationSource(a7, v28);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = (v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v26;
  v22[5] = a2;
  outlined init with take of Playlist.Folder?(v15, v22 + v19);
  *(v22 + v20) = a4;
  v23 = (v22 + v21);
  v24 = v27;
  *v23 = a5;
  v23[1] = v24;
  outlined init with take of PresentationSource(v28, v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));

  outlined copy of (@escaping @callee_guaranteed @async (@in_guaranteed Actions.CreateFolder.Context.FlowResult) -> ())?(a5, v24);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v17, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v22);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = v14;
  v8[22] = v15;
  v8[19] = a7;
  v8[20] = a8;
  v8[17] = a5;
  v8[18] = a6;
  v8[16] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v8[23] = swift_task_alloc();
  type metadata accessor for Actions.CreateFolder.Context.FlowResult(0);
  v8[24] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VAAE6FolderVGMd, &_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VAAE6FolderVGMR);
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = type metadata accessor for Playlist.Folder();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VAAE6FolderVGMd, &_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VAAE6FolderVGMR);
  v8[31] = v11;
  v8[32] = *(v11 - 8);
  v8[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v0[14] = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8MusicKit8PlaylistV0aB8InternalE6FolderV4ItemOGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE6FolderV4ItemOGMR);
  lazy protocol witness table accessor for type [Playlist.Folder.Item] and conformance [A]();
  static MusicLibraryPlaylistRequest.creatingFolder<A>(name:description:userImage:parent:children:)();
  v1 = swift_task_alloc();
  v0[34] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  v2 = v0[27];

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  }

  else
  {
    v2 = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[20];
  MusicLibraryPlaylistResponse.item.getter();
  (*(v2 + 8))(v1, v3);
  v5 = v0[29];
  v6 = v0[28];
  if (v4)
  {
    v7 = v0[24];
    v8 = v0[20];
    (*(v5 + 16))(v7, v0[30], v0[28]);
    (*(v5 + 56))(v7, 0, 1, v6);
    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[36] = v9;
    *v9 = v0;
    v9[1] = closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:);
    v10 = v0[24];

    return v13(v10);
  }

  else
  {
    (*(v5 + 8))(v0[30], v0[28]);
    (*(v0[32] + 8))(v0[33], v0[31]);

    v12 = v0[1];

    return v12();
  }
}

{
  v1 = *(*v0 + 192);

  _s9MusicCore6NoticeV7VariantOWOhTm_0(v1, type metadata accessor for Actions.CreateFolder.Context.FlowResult);

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), 0, 0);
}

{
  (*(v0[29] + 8))(v0[30], v0[28]);
  (*(v0[32] + 8))(v0[33], v0[31]);

  v1 = v0[1];

  return v1();
}

{
  v18 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[35];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[15] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create folder with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[22];
  v11 = v0[23];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  outlined init with copy of PresentationSource(v10, (v0 + 2));
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 2), v14 + 32);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v14);

  (*(v0[32] + 8))(v0[33], v0[31]);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v6, v5);
}

uint64_t closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x80000001004C6370;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  _s9MusicCore6NoticeV7VariantOWOhTm_0(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    UIViewController.noticePresenting.getter((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v6, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    }

    else
    {
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
      outlined destroy of NoticePresenting?((v0 + 2));
    }
  }

  else
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:), v7, v6);
}

uint64_t closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 88);
    v4 = one-time initialization token for logger;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static PresentationSource.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Deferring presentation…", v8, 2u);
    }

    v9 = v0[14];
    v10 = v0[15];

    v11 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    v0[5] = &block_descriptor_164;
    v12 = _Block_copy(v0 + 2);
    v13 = [v11 initWithTimeout:v12 interruptionHandler:10.0];
    _Block_release(v12);

    outlined init with copy of PresentationSource(v9, (v0 + 2));
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    outlined init with take of PresentationSource((v0 + 2), v14 + 24);
    *(v14 + 120) = v10;
    *(v14 + 128) = 257;
    *(v14 + 136) = 0;
    *(v14 + 144) = 0;
    v15 = v13;
    v2(v9, v10, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v14);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2, v3);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v0[15], 1, 1, 0, 0);
  }

  v16 = v0[1];

  return v16();
}

uint64_t closure #2 in static Actions.RenameFolder.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 16) + **(a2 + 16));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

uint64_t (*Actions.RenameFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.RenameFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6C69636E6570;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6C69636E6570;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

unint64_t closure #1 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v1 = static MusicLibrary.== infix(_:_:)();

  if (v1)
  {
    return 0;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2)
{
  v2[24] = a1;
  v2[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v2[26] = swift_task_alloc();
  v3 = type metadata accessor for Playlist.Folder();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v2[29] = *(v4 + 64);
  v2[30] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

uint64_t closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[24];
  v5 = Playlist.Folder.name.getter();
  specialized static TextFieldAlert.Configuration.renameFolder(currentName:)(v5, v6, v0 + 14);

  (*(v3 + 16))(v1, v4, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[31] = v8;
  (*(v3 + 32))(v8 + v7, v1, v2);
  v0[32] = type metadata accessor for MainActor();
  v0[33] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v10, v9);
}

{
  v1 = *(v0 + 248);

  v2 = objc_allocWithZone(type metadata accessor for TextFieldAlert());
  *(v0 + 272) = TextFieldAlert.init(configuration:callback:)((v0 + 112), partial apply for closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v1);

  return _swift_task_switch(closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

{
  v1 = v0[34];
  v3 = v0[25];
  v2 = v0[26];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  outlined init with copy of PresentationSource(v3, (v0 + 2));
  v5 = v1;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 2), (v7 + 4));
  v7[16] = v5;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v2, &async function pointer to partial apply for closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v7);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v7 + 32))(v13 + v12, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v14 = (v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v14 = a1;
  v14[1] = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v13);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = type metadata accessor for Playlist.Folder();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VAAE6FolderVGMd, &_s16MusicKitInternal0A23LibraryPlaylistResponseVy0aB00E0VAAE6FolderVGMR);
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VAAE6FolderVGMd, &_s16MusicKitInternal0A22LibraryPlaylistRequestVy0aB00E0VAAE6FolderVGMR);
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  static MusicLibraryPlaylistRequest.editing<>(_:name:description:userImage:)();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  v2 = *(v0 + 88);

  return MusicLibraryPlaylistRequest.response<>()(v2);
}

{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

{
  v29 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = v0[3];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.actions);
  (*(v2 + 16))(v1, v4, v3);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[6];
  if (v8)
  {
    v25 = v0[16];
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v15 = 136446466;
    lazy protocol witness table accessor for type Playlist.Folder and conformance Playlist.Folder();
    v26 = v11;
    v27 = v9;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v16, v18, &v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v0[2] = v25;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = String.init<A>(describing:)();
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v20, v21, &v28);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to rename folder=%{public}s with error=%{public}s", v15, 0x16u);
    swift_arrayDestroy();

    (*(v10 + 8))(v27, v26);
  }

  else
  {

    (*(v13 + 8))(v12, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = v0[1];

  return v23();
}

uint64_t closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:), v7, v6);
}

uint64_t closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = v0[14];

  v2 = *(v1 + 80);
  if (v2)
  {
    v3 = *(v1 + 88);
    v4 = one-time initialization token for logger;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static PresentationSource.logger);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Deferring presentation…", v8, 2u);
    }

    v9 = v0[14];
    v10 = v0[15];

    v11 = objc_allocWithZone(MSVBlockGuard);
    v0[6] = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    v0[7] = 0;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    v0[5] = &block_descriptor_141;
    v12 = _Block_copy(v0 + 2);
    v13 = [v11 initWithTimeout:v12 interruptionHandler:10.0];
    _Block_release(v12);

    outlined init with copy of PresentationSource(v9, (v0 + 2));
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    outlined init with take of PresentationSource((v0 + 2), v14 + 24);
    *(v14 + 120) = v10;
    *(v14 + 128) = 257;
    *(v14 + 136) = 0;
    *(v14 + 144) = 0;
    v15 = v13;
    v2(v9, v10, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v14);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v2, v3);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v0[15], 1, 1, 0, 0);
  }

  v16 = v0[1];

  return v16();
}

uint64_t Actions.RenameFolder.Context.menuItemTitle.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v3 + 16))(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v3 + 8))(v7, v2);
  return v9;
}

uint64_t (*Actions.MoveToFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.RenameFolder.Context(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v13[-v8];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v5 + 8))(v9, v4);
  return v11;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.MoveToFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7265646C6F66;
  *(v0 + 24) = 0xE600000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7265646C6F66;
  *(v1 + 24) = 0xE600000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

unint64_t closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MusicLibrary.AddAction();
  v23 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9AddActionVGMR);
  v26 = *(v28 - 8);
  __chkstk_darwin();
  v27 = &v23 - v6;
  v7 = type metadata accessor for Playlist();
  v24 = *(v7 - 8);
  v25 = v7;
  __chkstk_darwin();
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Playlist.Folder.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v14 = static MusicLibrary.== infix(_:_:)();

  if ((v14 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  (*(v11 + 16))(v13, a2, v10);
  v15 = (*(v11 + 88))(v13, v10);
  if (v15 == enum case for Playlist.Folder.Item.folder(_:) || v15 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v11 + 96))(v13, v10);
    v16 = v24;
    v17 = v13;
    v18 = v25;
    (*(v24 + 32))(v9, v17, v25);
    static MusicLibrary.shared.getter();
    static MusicLibraryAction<>.add.getter();
    v19 = v27;
    MusicLibrary.supportedStatus<A, B>(for:action:)();

    (*(v23 + 8))(v5, v3);
    v20 = v26;
    v21 = v28;
    if ((*(v26 + 88))(v19, v28) != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:) || ((*(v20 + 96))(v19, v21), v21 = type metadata accessor for MusicLibrary.AddAction.UnsupportedReason(), v20 = *(v21 - 8), (*(v20 + 88))(v19, v21) != enum case for MusicLibrary.AddAction.UnsupportedReason.alreadyAdded(_:)))
    {
      (*(v20 + 8))(v19, v21);
      (*(v16 + 8))(v9, v18);
      return 0xD00000000000001ALL;
    }

    (*(v16 + 8))(v9, v18);
    (*(v20 + 8))(v19, v21);
  }

  return 0;
}

uint64_t sub_100072594()
{
  v1 = type metadata accessor for Playlist.Folder.Item();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)()
{
  v1 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v2, v3);
}

uint64_t closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = (*(a4 + 16) + **(a4 + 16));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v10(a2, a3, a4);
}

uint64_t sub_1000727EC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist.Folder.Item();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = *(*(v2 - 8) + 64);
  v6 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.MoveToFolder.Context.init<A>(item:library:folderPickerPresenter:)(v0 + v4, v0 + v7, v2, v3);
}

uint64_t outlined init with take of Playlist.Folder?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore7ActionsO12CreateFolderO7ContextV6folder8children7library18presentationSource10completionAG0A3Kit8PlaylistV0aM8InternalE0E0VSg_SayAR4ItemOGSgAM0A7LibraryCAA012PresentationK0VyAG10FlowResultOYacSgtcfcyyYaYbcfU0_TA_0()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(v0 + v3, v6, v8, v9, v0 + v7);
}

uint64_t sub_100072C30()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
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

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.CreateFolder@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 40);
  *a6 = *a1;
  *(a6 + 8) = *(a1 + 8);
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = v6;
  *(a6 + 48) = a2;
  *(a6 + 56) = a3;
  *(a6 + 64) = 0;
  *(a6 + 72) = 0x4014000000000000;
  *(a6 + 80) = a4;
  *(a6 + 88) = 0;
  *(a6 + 96) = a5;
  *(a6 + 104) = 0;
}

uint64_t (*Actions.DeleteFolder.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.DeleteFolder.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x6873617274;
  *(v0 + 24) = 0xE500000000000000;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x6873617274;
  *(v1 + 24) = 0xE500000000000000;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

unint64_t closure #1 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1)
{
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v1 = static MusicLibrary.== infix(_:_:)();

  if ((v1 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  if (MusicLibrary.isRemovalRestricted.getter())
  {
    return 0xD000000000000019;
  }

  return 0;
}

uint64_t closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[49] = a2;
  v3[50] = a3;
  v3[48] = a1;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v3[51] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[52] = v4;
  v3[53] = *(v4 - 8);
  v3[54] = swift_task_alloc();
  v5 = type metadata accessor for Playlist.Folder();
  v3[55] = v5;
  v6 = *(v5 - 8);
  v3[56] = v6;
  v3[57] = *(v6 + 64);
  v3[58] = swift_task_alloc();
  type metadata accessor for Locale();
  v3[59] = swift_task_alloc();
  v7 = type metadata accessor for String.LocalizationValue();
  v3[60] = v7;
  v3[61] = *(v7 - 8);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

uint64_t closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v4 = *(v0 + 488);
  String.LocalizationValue.init(stringLiteral:)();
  v49 = *(v4 + 16);
  v49(v1, v2, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v50 = *(v0 + 504);
  v5 = *(v0 + 480);
  v6 = *(v0 + 488);
  v34 = *(v0 + 496);
  v7 = *(v0 + 448);
  v45 = *(v0 + 456);
  v8 = *(v0 + 432);
  v32 = *(v0 + 440);
  v33 = *(v0 + 464);
  v35 = *(v0 + 424);
  v36 = *(v0 + 416);
  v39 = *(v0 + 400);
  v31 = *(v0 + 392);
  v41 = *(v0 + 384);
  v9 = static NSBundle.module;
  static Locale.current.getter();
  v43 = v9;
  v10 = String.init(localized:table:bundle:locale:comment:)();
  v47 = v11;
  v48 = v10;
  *(v0 + 512) = v11;
  v38 = *(v6 + 8);
  v38(v50, v5);
  (*(v7 + 16))(v33, v31, v32);
  outlined init with copy of PresentationSource(v39, v0 + 16);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = (v45 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 520) = v14;
  *(v14 + 16) = v41;
  v15 = v14 + v12;
  v16 = v14;
  v46 = v14;
  (*(v7 + 32))(v15, v33, v32);
  outlined init with take of PresentationSource(v0 + 16, v16 + v13);

  UUID.init()();
  v42 = UUID.uuidString.getter();
  v40 = v17;
  *(v0 + 528) = v17;
  (*(v35 + 8))(v8, v36);
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v18._object = 0x80000001004C6280;
  v18._countAndFlagsBits = 0x100000000000002ELL;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
  v19._countAndFlagsBits = Playlist.Folder.name.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v19);

  v20._countAndFlagsBits = 1067286754;
  v20._object = 0xA400000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
  String.LocalizationValue.init(stringInterpolation:)();
  v49(v34, v50, v5);
  static Locale.current.getter();
  v21 = v43;
  v44 = String.init(localized:table:bundle:locale:comment:)();
  v37 = v22;
  v38(v50, v5);
  String.LocalizationValue.init(stringLiteral:)();
  v49(v34, v50, v5);
  static Locale.current.getter();
  v23 = String.init(localized:table:bundle:locale:comment:)();
  v25 = v24;
  v38(v50, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1004F2EF0;
  *(v26 + 32) = v42;
  *(v26 + 40) = v40;
  *(v26 + 48) = v48;
  *(v26 + 56) = v47;
  *(v26 + 64) = 1;
  *(v26 + 72) = &async function pointer to partial apply for closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);
  *(v26 + 80) = v46;

  specialized static Alert.Action.cancel.getter(v0 + 280);
  v27 = *(v0 + 296);
  *(v26 + 88) = *(v0 + 280);
  *(v26 + 104) = v27;
  *(v26 + 120) = *(v0 + 312);
  *(v26 + 136) = *(v0 + 328);
  *(v0 + 208) = v44;
  *(v0 + 216) = v37;
  *(v0 + 224) = v23;
  *(v0 + 232) = v25;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 1;
  *(v0 + 264) = v26;
  *(v0 + 272) = 0;
  type metadata accessor for MainActor();
  *(v0 + 536) = static MainActor.shared.getter();
  v29 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), v29, v28);
}

{
  v1 = *(v0 + 400);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = one-time initialization token for logger;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static PresentationSource.logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 400);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 368) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 376) = 0;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 360) = &block_descriptor_5;
    v14 = _Block_copy((v0 + 336));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    outlined init with copy of PresentationSource(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    outlined init with take of PresentationSource(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v3 = v3;
    v5(v12, v3, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 240), 1, 0, 0);
  }

  return _swift_task_switch(closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), 0, 0);
}

{
  outlined destroy of Alert(v0 + 208);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  v5[16] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[17] = v7;
  *v7 = v5;
  v7[1] = closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:);

  return MusicLibrary.remove(_:)(a4);
}

uint64_t closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v18 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136446210;
    v0[14] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v8, &v17);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to delete folder with error=%{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = v0[15];
  v11 = v0[16];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  outlined init with copy of PresentationSource(v10, (v0 + 2));
  type metadata accessor for MainActor();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = &protocol witness table for MainActor;
  outlined init with take of PresentationSource((v0 + 2), v14 + 32);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v11, &async function pointer to partial apply for closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), v14);

  v15 = v0[1];

  return v15();
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v4[8] = type metadata accessor for Notice.Variant(0);
  v4[9] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v4[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:), v6, v5);
}

uint64_t closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)()
{
  v1 = v0[10];
  v2 = v0[9];

  *v2 = 0xD000000000000022;
  v2[1] = 0x80000001004C6300;
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  _s9MusicCore6NoticeV7VariantOWOhTm_0(v2, type metadata accessor for Notice.Variant);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    UIViewController.noticePresenting.getter((v0 + 2));

    v5 = v0[5];
    v6 = v0[10];
    if (v5)
    {
      v7 = v0[6];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
      (*(v7 + 8))(v6, 1, v5, v7);
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v6, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    }

    else
    {
      _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
      outlined destroy of NoticePresenting?((v0 + 2));
    }
  }

  else
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_0(v0[10], type metadata accessor for Notice);
  }

  v8 = v0[1];

  return v8();
}

uint64_t specialized Actions.CreateFolder.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t specialized Actions.DeleteFolder.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_100074578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Playlist.Folder();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000745F8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for Playlist.Folder();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t type metadata accessor for Actions.CreateFolder.Context.FlowResult(uint64_t a1)
{
  result = type metadata singleton initialization cache for Actions.CreateFolder.Context.FlowResult;
  if (!type metadata singleton initialization cache for Actions.CreateFolder.Context.FlowResult)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for Actions.CreateFolder.Context.FlowResult(uint64_t a1)
{
  v1 = type metadata accessor for Playlist.Folder();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_10007477C()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_14Tm()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
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

uint64_t partial apply for closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Playlist.Folder() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(a1, a2, v9, v2 + v7, v2 + v8);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #2 in Actions.DeleteFolder.Context.init(folder:library:presentationSource:)(a1, v4, v5, v1 + 32);
}

uint64_t outlined destroy of NoticePresenting?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double specialized static TextFieldAlert.Configuration.newFolder.getter@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v25 - v6;
  String.LocalizationValue.init(stringLiteral:)();
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v9 = static NSBundle.module;
  static Locale.current.getter();
  v10 = v9;
  v11 = String.init(localized:table:bundle:locale:comment:)();
  v30 = v12;
  v31 = v11;
  v13 = *(v3 + 8);
  v13(v7, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v14 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v15;
  v29 = v14;
  v13(v7, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v26 = v17;
  v27 = v16;
  v13(v7, v2);
  String.LocalizationValue.init(stringLiteral:)();
  v8(v5, v7, v2);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  v13(v7, v2);
  result = 0.0;
  *a1 = xmmword_1004F2EC0;
  v22 = v30;
  *(a1 + 16) = v31;
  *(a1 + 24) = v22;
  v23 = v28;
  *(a1 + 32) = v29;
  *(a1 + 40) = v23;
  v24 = v26;
  *(a1 + 48) = v27;
  *(a1 + 56) = v24;
  *(a1 + 64) = v18;
  *(a1 + 72) = v20;
  return result;
}

uint64_t specialized static TextFieldAlert.Configuration.renameFolder(currentName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v31 = a1;
  v32 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v26 - v8;
  String.LocalizationValue.init(stringLiteral:)();
  v10 = *(v5 + 16);
  v10(v7, v9, v4);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v11 = static NSBundle.module;
  static Locale.current.getter();
  v12 = v11;
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v29 = v14;
  v30 = v13;
  v15 = *(v5 + 8);
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v16 = String.init(localized:table:bundle:locale:comment:)();
  v27 = v17;
  v28 = v16;
  v15(v9, v4);
  String.LocalizationValue.init(stringLiteral:)();
  v10(v7, v9, v4);
  static Locale.current.getter();
  v18 = String.init(localized:table:bundle:locale:comment:)();
  v20 = v19;
  v15(v9, v4);

  v22 = v30;
  *a3 = v31;
  a3[1] = result;
  v24 = v28;
  v23 = v29;
  a3[2] = v22;
  a3[3] = v23;
  a3[4] = 0;
  a3[5] = 0;
  v25 = v27;
  a3[6] = v24;
  a3[7] = v25;
  a3[8] = v18;
  a3[9] = v20;
  return result;
}

uint64_t sub_1000751D4()
{
  v1 = type metadata accessor for Playlist.Folder();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Playlist.Folder() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_1000753A0()
{
  v1 = type metadata accessor for Playlist.Folder();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(uint64_t a1)
{
  v4 = *(type metadata accessor for Playlist.Folder() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #2 in Actions.RenameFolder.Context.init(folder:library:presentationSource:)(a1, v6, v7, v1 + v5, v9, v10);
}

unint64_t lazy protocol witness table accessor for type Playlist.Folder and conformance Playlist.Folder()
{
  result = lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder;
  if (!lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder)
  {
    type metadata accessor for Playlist.Folder();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playlist.Folder and conformance Playlist.Folder);
  }

  return result;
}

uint64_t outlined init with copy of Playlist.Folder?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + v8);
  v11 = *(v2 + v8 + 8);

  return closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, a2, v2 + v6, v9, v10, v11, v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_136Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[16];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100075A30()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v4 = type metadata accessor for Playlist.Folder();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  v6 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;

  if (*(v0 + v3))
  {
  }

  v7 = v0 + v6;
  swift_unknownObjectWeakDestroy();
  v8 = *(v0 + v6 + 48);
  if (v8 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), v8);
  }

  if (*(v7 + 64))
  {
  }

  if (*(v7 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE6FolderVSgMR) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1[3];
  v13 = v1[2];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + v5);
  v10 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, v13, v6, v7, v8, v1 + v4, v9, v10);
}

unint64_t lazy protocol witness table accessor for type [Playlist.Folder.Item] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Playlist.Folder.Item] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Playlist.Folder.Item] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8MusicKit8PlaylistV0aB8InternalE6FolderV4ItemOGMd, &_sSay8MusicKit8PlaylistV0aB8InternalE6FolderV4ItemOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Playlist.Folder.Item] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_124Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in closure #1 in closure #1 in closure #2 in Actions.CreateFolder.Context.init(folder:children:library:presentationSource:completion:)(a1, v4, v5, v1 + 32);
}

uint64_t _s9MusicCore6NoticeV7VariantOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v52 = a4;
  v53 = a5;
  v50 = a3;
  v55 = a2;
  v56 = a1;
  v54 = a9;
  v58 = *(a6 - 8);
  v12 = v58;
  __chkstk_darwin();
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v43 - v14;
  v16 = v15;
  v49 = v15;
  v17 = __chkstk_darwin();
  v19 = &v43 - v18;
  v45 = *(v12 + 16);
  v45(&v43 - v18, v17);
  v20 = *(v12 + 80);
  v21 = (v20 + 40) & ~v20;
  v57 = v20 | 7;
  v43 = v16 + 7;
  v22 = (v16 + 7 + v21) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v23[2] = a6;
  v23[3] = a7;
  v24 = a8;
  v47 = a8;
  v23[4] = a8;
  v44 = *(v58 + 32);
  v58 += 32;
  v25 = v23;
  v51 = v23;
  v44(v23 + v21, v19, a6);
  v27 = v55;
  v26 = v56;
  *(v25 + v22) = v55;
  v28 = v46;
  (v45)(v46, v26, a6);
  v29 = (v20 + 41) & ~v20;
  v30 = (v43 + v29) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = a6;
  *(v31 + 24) = a7;
  *(v31 + 32) = v24;
  *(v31 + 40) = v50;
  v32 = v31 + v29;
  v33 = v44;
  v44(v32, v28, a6);
  *(v31 + v30) = v27;
  outlined init with take of PresentationSource(v52, v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8));
  v34 = v48;
  v33(v48, v56, a6);
  v35 = v33;
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v37 = (*(v36 + 80) + 40) & ~*(v36 + 80);
  v38 = (*(v36 + 64) + v20 + v37) & ~v20;
  v39 = swift_allocObject();
  *(v39 + 2) = a6;
  *(v39 + 3) = a7;
  *(v39 + 4) = v47;
  outlined init with take of URL?(v53, v39 + v37, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v35(v39 + v38, v34, a6);

  v41 = v54;
  v42 = v51;
  *v54 = partial apply for closure #1 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v41[1] = v42;
  v41[2] = &async function pointer to partial apply for closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v41[3] = v31;
  v41[4] = &async function pointer to partial apply for closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v41[5] = v39;
  return result;
}

uint64_t static Actions.RemoveDownload.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 48;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveDownload.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveDownload.action(context:);
  *(a2 + 104) = 0;
}

uint64_t static Actions.RemoveDownload.canRemoveDownload<A>(item:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = a3;
  v22[2] = a5;
  v22[3] = a2;
  v22[0] = type metadata accessor for MusicLibrary.RemoveDownloadAction.UnsupportedReason();
  v5 = *(v22[0] - 8);
  __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicLibrary.RemoveDownloadAction();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE20RemoveDownloadActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE20RemoveDownloadActionVGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = v22 - v16;
  static MusicLibraryAction<>.removeDownload.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v9 + 8))(v11, v8);
  (*(v13 + 16))(v15, v17, v12);
  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    (*(v13 + 96))(v15, v12);
    v19 = v22[0];
    (*(v5 + 32))(v7, v15, v22[0]);
    v20 = closure #1 in MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter(v7);
    (*(v5 + 8))(v7, v19);
LABEL_5:
    (*(v13 + 8))(v17, v12);
    return v20;
  }

  if (v18 == enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v20 = 0;
    goto LABEL_5;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t static Actions.RemoveDownload.removeDownload<A>(item:library:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return MusicLibrary.removeDownload<A>(_:)(a1, a3, a4);
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.RemoveDownload@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 48;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveDownload.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveDownload.action(context:);
  *(a2 + 104) = 0;
}

uint64_t Actions.RemoveDownload.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t (*Actions.RemoveDownload.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "xmark.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "xmark.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.RemoveDownload.Context())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "xmark.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "xmark.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 320) = a6;
  *(v7 + 328) = a7;
  *(v7 + 304) = a4;
  *(v7 + 312) = a5;
  *(v7 + 288) = a2;
  *(v7 + 296) = a3;
  *(v7 + 744) = a1;
  v9 = type metadata accessor for UUID();
  *(v7 + 336) = v9;
  *(v7 + 344) = *(v9 - 8);
  *(v7 + 352) = swift_task_alloc();
  v10 = type metadata accessor for Genre();
  *(v7 + 360) = v10;
  *(v7 + 368) = *(v10 - 8);
  *(v7 + 376) = swift_task_alloc();
  v11 = type metadata accessor for Composer();
  *(v7 + 384) = v11;
  *(v7 + 392) = *(v11 - 8);
  *(v7 + 400) = swift_task_alloc();
  v12 = type metadata accessor for Artist();
  *(v7 + 408) = v12;
  *(v7 + 416) = *(v12 - 8);
  *(v7 + 424) = swift_task_alloc();
  v13 = type metadata accessor for TVEpisode();
  *(v7 + 432) = v13;
  *(v7 + 440) = *(v13 - 8);
  *(v7 + 448) = swift_task_alloc();
  v14 = type metadata accessor for TVSeason();
  *(v7 + 456) = v14;
  *(v7 + 464) = *(v14 - 8);
  *(v7 + 472) = swift_task_alloc();
  v15 = type metadata accessor for TVShow();
  *(v7 + 480) = v15;
  *(v7 + 488) = *(v15 - 8);
  *(v7 + 496) = swift_task_alloc();
  v16 = type metadata accessor for MusicMovie();
  *(v7 + 504) = v16;
  *(v7 + 512) = *(v16 - 8);
  *(v7 + 520) = swift_task_alloc();
  v17 = type metadata accessor for Song();
  *(v7 + 528) = v17;
  *(v7 + 536) = *(v17 - 8);
  *(v7 + 544) = swift_task_alloc();
  v18 = type metadata accessor for Playlist();
  *(v7 + 552) = v18;
  *(v7 + 560) = *(v18 - 8);
  *(v7 + 568) = swift_task_alloc();
  v19 = type metadata accessor for MusicVideo();
  *(v7 + 576) = v19;
  *(v7 + 584) = *(v19 - 8);
  *(v7 + 592) = swift_task_alloc();
  type metadata accessor for Locale();
  *(v7 + 600) = swift_task_alloc();
  v20 = type metadata accessor for String.LocalizationValue();
  *(v7 + 608) = v20;
  *(v7 + 616) = *(v20 - 8);
  *(v7 + 624) = swift_task_alloc();
  *(v7 + 632) = swift_task_alloc();
  v21 = type metadata accessor for Album();
  *(v7 + 640) = v21;
  *(v7 + 648) = *(v21 - 8);
  *(v7 + 656) = swift_task_alloc();
  v22 = *(a5 - 8);
  *(v7 + 664) = v22;
  *(v7 + 672) = *(v22 + 64);
  *(v7 + 680) = swift_task_alloc();
  *(v7 + 688) = swift_task_alloc();
  *(v7 + 696) = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v145 = v0;
  if (*(v0 + 744) == 1)
  {
    v1 = *(*(v0 + 664) + 16);
    v1(*(v0 + 696), *(v0 + 288), *(v0 + 312));
    p_class_meths = &OBJC_PROTOCOL___CAAnimationDelegate.class_meths;
    v140 = v1;
    if (swift_dynamicCast())
    {
      v3 = *(v0 + 632);
      v4 = *(v0 + 624);
      v5 = *(v0 + 616);
      v6 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v5 + 16);
      log(v4, v3, v6);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 664);
      v127 = *(v0 + 656);
      v130 = *(v0 + 696);
      v8 = *(v0 + 648);
      v9 = *(v0 + 640);
      v10 = *(v0 + 632);
      v11 = *(v0 + 616);
      v12 = *(v0 + 608);
      v124 = *(v0 + 312);
      static NSBundle.module;
      static Locale.current.getter();
      v13 = String.init(localized:table:bundle:locale:comment:)();
      v136 = v14;
      v137 = v13;
      v135 = *(v11 + 8);
      v135(v10, v12);
      (*(v8 + 8))(v127, v9);
      (*(v7 + 8))(v130, v124);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v21 = *(v0 + 632);
      v22 = *(v0 + 624);
      v23 = *(v0 + 616);
      v24 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v23 + 16);
      log(v22, v21, v24);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 592);
      v29 = *(v0 + 584);
      v30 = *(v0 + 576);
    }

    else if (swift_dynamicCast())
    {
      v31 = *(v0 + 632);
      v32 = *(v0 + 624);
      v33 = *(v0 + 616);
      v34 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v33 + 16);
      log(v32, v31, v34);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 568);
      v29 = *(v0 + 560);
      v30 = *(v0 + 552);
    }

    else if (swift_dynamicCast())
    {
      v35 = *(v0 + 632);
      v36 = *(v0 + 624);
      v37 = *(v0 + 616);
      v38 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v37 + 16);
      log(v36, v35, v38);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 544);
      v29 = *(v0 + 536);
      v30 = *(v0 + 528);
    }

    else
    {
      if (!swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          v65 = (v0 + 496);
          v66 = (v0 + 480);
          v67 = 488;
        }

        else
        {
          if (!swift_dynamicCast())
          {
            if (swift_dynamicCast())
            {
              v77 = *(v0 + 632);
              v78 = *(v0 + 624);
              v79 = *(v0 + 616);
              v80 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v79 + 16);
              log(v78, v77, v80);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 440);
              v125 = *(v0 + 448);
              v30 = *(v0 + 432);
            }

            else if (swift_dynamicCast())
            {
              v81 = *(v0 + 632);
              v82 = *(v0 + 624);
              v83 = *(v0 + 616);
              v84 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v83 + 16);
              log(v82, v81, v84);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 416);
              v125 = *(v0 + 424);
              v30 = *(v0 + 408);
            }

            else if (swift_dynamicCast())
            {
              v85 = *(v0 + 632);
              v86 = *(v0 + 624);
              v87 = *(v0 + 616);
              v88 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v87 + 16);
              log(v86, v85, v88);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 392);
              v125 = *(v0 + 400);
              v30 = *(v0 + 384);
            }

            else
            {
              if (!swift_dynamicCast())
              {
                if (one-time initialization token for actions != -1)
                {
                  swift_once();
                }

                v93 = *(v0 + 688);
                v94 = *(v0 + 312);
                v95 = *(v0 + 288);
                v96 = type metadata accessor for Logger();
                __swift_project_value_buffer(v96, static Logger.actions);
                v1(v93, v95, v94);
                v97 = Logger.logObject.getter();
                v98 = static os_log_type_t.fault.getter();
                v99 = os_log_type_enabled(v97, v98);
                v100 = *(v0 + 688);
                if (v99)
                {
                  v101 = *(v0 + 680);
                  logb = v97;
                  v102 = *(v0 + 664);
                  v103 = *(v0 + 312);
                  v104 = swift_slowAlloc();
                  v139 = swift_slowAlloc();
                  v144[0] = v139;
                  *v104 = 136315138;
                  v1(v101, v100, v103);
                  v105 = String.init<A>(describing:)();
                  v107 = v106;
                  v108 = v103;
                  p_class_meths = (&OBJC_PROTOCOL___CAAnimationDelegate + 32);
                  v133 = *(v102 + 8);
                  v133(v100, v108);
                  v109 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v105, v107, v144);

                  *(v104 + 4) = v109;
                  _os_log_impl(&_mh_execute_header, logb, v98, "RemoveDownload: unhandled item type=%s", v104, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v139);
                }

                else
                {
                  v110 = *(v0 + 664);
                  v111 = *(v0 + 312);

                  v133 = *(v110 + 8);
                  v133(v100, v111);
                }

                v112 = *(v0 + 632);
                v113 = *(v0 + 624);
                v114 = *(v0 + 616);
                v115 = *(v0 + 608);
                String.LocalizationValue.init(stringLiteral:)();
                log = *(v114 + 16);
                log(v113, v112, v115);
                if (p_class_meths[8] != -1)
                {
                  swift_once();
                }

                v116 = *(v0 + 696);
                v117 = *(v0 + 632);
                v118 = *(v0 + 616);
                v119 = *(v0 + 608);
                v120 = *(v0 + 312);
                static NSBundle.module;
                static Locale.current.getter();
                v121 = String.init(localized:table:bundle:locale:comment:)();
                v136 = v122;
                v137 = v121;
                v135 = *(v118 + 8);
                v135(v117, v119);
                v133(v116, v120);
                goto LABEL_26;
              }

              v89 = *(v0 + 632);
              v90 = *(v0 + 624);
              v91 = *(v0 + 616);
              v92 = *(v0 + 608);
              String.LocalizationValue.init(stringLiteral:)();
              log = *(v91 + 16);
              log(v90, v89, v92);
              if (one-time initialization token for module != -1)
              {
                swift_once();
              }

              v131 = *(v0 + 696);
              v25 = *(v0 + 664);
              v26 = *(v0 + 632);
              v27 = *(v0 + 616);
              v28 = *(v0 + 608);
              v29 = *(v0 + 368);
              v125 = *(v0 + 376);
              v30 = *(v0 + 360);
            }

            goto LABEL_25;
          }

          v65 = (v0 + 472);
          v66 = (v0 + 456);
          v67 = 464;
        }

        (*(*(v0 + v67) + 8))(*v65, *v66);
        v68 = *(v0 + 632);
        v69 = *(v0 + 624);
        v70 = *(v0 + 616);
        v71 = *(v0 + 608);
        (*(*(v0 + 664) + 8))(*(v0 + 696), *(v0 + 312));
        String.LocalizationValue.init(stringLiteral:)();
        v45 = *(v70 + 16);
        v45(v69, v68, v71);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v72 = *(v0 + 632);
        v73 = *(v0 + 616);
        v74 = *(v0 + 608);
        static NSBundle.module;
        static Locale.current.getter();
        v75 = String.init(localized:table:bundle:locale:comment:)();
        v136 = v76;
        v137 = v75;
        v135 = *(v73 + 8);
        v135(v72, v74);
        goto LABEL_27;
      }

      v39 = *(v0 + 632);
      v40 = *(v0 + 624);
      v41 = *(v0 + 616);
      v42 = *(v0 + 608);
      String.LocalizationValue.init(stringLiteral:)();
      log = *(v41 + 16);
      log(v40, v39, v42);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v131 = *(v0 + 696);
      v25 = *(v0 + 664);
      v26 = *(v0 + 632);
      v27 = *(v0 + 616);
      v28 = *(v0 + 608);
      v125 = *(v0 + 520);
      v30 = *(v0 + 504);
      v29 = *(v0 + 512);
    }

LABEL_25:
    v128 = *(v0 + 312);
    static NSBundle.module;
    static Locale.current.getter();
    v43 = String.init(localized:table:bundle:locale:comment:)();
    v136 = v44;
    v137 = v43;
    v135 = *(v27 + 8);
    v135(v26, v28);
    (*(v29 + 8))(v125, v30);
    (*(v25 + 8))(v131, v128);
LABEL_26:
    v45 = log;
LABEL_27:
    v46 = *(v0 + 632);
    v47 = *(v0 + 624);
    v48 = *(v0 + 608);
    String.LocalizationValue.init(stringLiteral:)();
    v45(v47, v46, v48);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v123 = *(v0 + 680);
    v126 = *(v0 + 672);
    v49 = *(v0 + 664);
    v50 = *(v0 + 632);
    v51 = *(v0 + 608);
    v53 = *(v0 + 344);
    v52 = *(v0 + 352);
    v129 = *(v0 + 328);
    v54 = *(v0 + 288);
    v132 = *(v0 + 296);
    v134 = *(v0 + 336);
    loga = *(v0 + 312);
    static Locale.current.getter();
    v138 = String.init(localized:table:bundle:locale:comment:)();
    v56 = v55;
    *(v0 + 704) = v55;
    v135(v50, v51);
    v140(v123, v54, loga);
    v57 = (*(v49 + 80) + 40) & ~*(v49 + 80);
    v58 = swift_allocObject();
    *(v0 + 712) = v58;
    *(v58 + 16) = loga;
    *(v58 + 32) = v129;
    (*(v49 + 32))(v58 + v57, v123, loga);
    *(v58 + ((v126 + v57 + 7) & 0xFFFFFFFFFFFFFFF8)) = v132;

    UUID.init()();
    v59 = UUID.uuidString.getter();
    v61 = v60;
    *(v0 + 720) = v60;
    (*(v53 + 8))(v52, v134);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1004F2EF0;
    *(v62 + 32) = v59;
    *(v62 + 40) = v61;
    *(v62 + 48) = v138;
    *(v62 + 56) = v56;
    *(v62 + 64) = 2;
    *(v62 + 72) = &async function pointer to partial apply for closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
    *(v62 + 80) = v58;

    specialized static Alert.Action.cancel.getter(v0 + 184);
    *(v62 + 88) = *(v0 + 184);
    *(v62 + 104) = *(v0 + 200);
    *(v62 + 120) = *(v0 + 216);
    *(v62 + 136) = *(v0 + 232);
    LOBYTE(v144[0]) = 1;
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    *(v0 + 128) = v137;
    *(v0 + 136) = v136;
    *(v0 + 144) = 1;
    *(v0 + 152) = 0;
    *(v0 + 160) = 1;
    *(v0 + 168) = v62;
    *(v0 + 176) = 0;
    type metadata accessor for MainActor();
    *(v0 + 728) = static MainActor.shared.getter();
    v64 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), v64, v63);
  }

  v15 = swift_task_alloc();
  *(v0 + 736) = v15;
  *v15 = v0;
  v15[1] = closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  v16 = *(v0 + 312);
  v17 = *(v0 + 320);
  v19 = *(v0 + 288);
  v18 = *(v0 + 296);

  return static Actions.RemoveDownload.removeDownload<A>(item:library:)(v19, v18, v16, v17);
}

{
  v1 = *(v0 + 304);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 112), 0, 1);
  v3 = v2;
  v4 = *(v0 + 144);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = one-time initialization token for logger;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static PresentationSource.logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 304);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 272) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 280) = 0;
    *(v0 + 240) = _NSConcreteStackBlock;
    *(v0 + 248) = 1107296256;
    *(v0 + 256) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 264) = &block_descriptor_6;
    v14 = _Block_copy((v0 + 240));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    outlined init with copy of PresentationSource(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    outlined init with take of PresentationSource(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, partial apply for closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:), v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);

    v19 = closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 144), 1, 0, 0);

    v19 = closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v19, 0, 0);
}

{
  outlined destroy of Alert(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100078AF4()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 41) & ~*(v1 + 80);
  v3 = (((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  v4 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v5 = *(v0 + v3 + 48);
  if (v5 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), v5);
  }

  if (*(v4 + 64))
  {
  }

  if (*(v4 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = (*(*(v2 - 8) + 80) + 41) & ~*(*(v2 - 8) + 80);
  v6 = (*(*(v2 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 40);
  v9 = *(v0 + v6);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v8, v0 + v5, v9, v0 + v7, v2, v3, v4);
}

uint64_t closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_task_alloc();
  *(v6 + 24) = v11;
  *v11 = v6;
  v11[1] = closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:);

  return static Actions.RemoveDownload.removeDownload<A>(item:library:)(a3, a4, a5, a6);
}

uint64_t closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v14 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.actions);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[4];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(describing:)();
    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to remove Download with error=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 88);
    v8 = *(v0 + 96);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    v9 = *(v8 + 8);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v7, v9);
    *(v0 + 256) = v10;
    v11 = type metadata accessor for URL();
    *(v0 + 264) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 272) = v13;
    *(v0 + 280) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7, v9);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v16;
    *(v0 + 304) = v17;
    *(v0 + 320) = v18;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:), v20, v19);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

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
  *(v6 + 16) = 9477;
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
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t sub_100079D78()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v4;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v4, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v4 + v3 + v6) & ~v6), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_10007A188()
{

  return swift_deallocObject();
}

uint64_t closure #1 in MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter(uint64_t a1)
{
  v2 = type metadata accessor for MusicLibrary.RemoveDownloadAction.UnsupportedReason();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v7 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.removalNotPermitted(_:))
  {
    return 0xD000000000000015;
  }

  if (v7 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.notDownloaded(_:))
  {
    return 0x6E776F6420746F4ELL;
  }

  if (v7 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x61685320656D6F48;
  }

  if (v7 == enum case for MusicLibrary.RemoveDownloadAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    return 0xD00000000000001CLL;
  }

  (*(v3 + 8))(v6, v2);
  return 0x206E776F6E6B6E55;
}

{
  v2 = type metadata accessor for MusicLibrary.DislikeAction.UnsupportedReason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v15 - v7;
  v9 = *(v3 + 16);
  v9(&v15 - v7, a1, v2, v6);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.unsupportedType(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.alreadyDisliked(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenFavorited(_:))
  {
    v12 = 13;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cannotDislikeWhenLiked(_:))
  {
LABEL_8:
    v12 = 9;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.subscriptionRequired(_:))
  {
    v12 = 5;
    return v12 | 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryRequired(_:))
  {
    return 0xD000000000000016;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.networkRequired(_:))
  {
    return 0xD000000000000010;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.sharedLibrary(_:))
  {
    return 0x6C20646572616853;
  }

  if (v10 == enum case for MusicLibrary.DislikeAction.UnsupportedReason.cloudLibraryInitialImport(_:))
  {
    goto LABEL_8;
  }

  v15 = 0;
  v16 = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  v15 = 0x206E776F6E6B6E55;
  v16 = 0xEF206E6F73616572;
  (v9)(v5, a1, v2);
  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14 = v15;
  (*(v3 + 8))(v8, v2);
  return v14;
}

uint64_t objectdestroyTm_3()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v9 = *(v2 + ((*(*(v6 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in closure #2 in Actions.RemoveDownload.Context.init<A>(item:library:showConfirmationDialog:presentationSource:metricsReportingContext:)(a1, a2, v2 + v8, v9, v6, v7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007A5D8()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  if (*(v0 + 136))
  {
  }

  return swift_deallocObject();
}

uint64_t static Actions.RemoveFromPlaylist.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 47;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.RemoveFromPlaylist@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 47;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.RemoveFromPlaylist.action(context:);
  *(a2 + 104) = 0;
}

uint64_t (*Actions.RemoveFromPlaylist.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "minus.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "minus.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.RemoveFromPlaylist.Context())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "minus.circle");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "minus.circle");
  *(v1 + 29) = 0;
  *(v1 + 30) = -5120;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t (**a5)()@<X8>)
{
  v43 = a3;
  v44 = a4;
  v47 = a1;
  v45 = a5;
  v6 = type metadata accessor for Playlist.Entry();
  v39 = *(v6 - 8);
  v40 = v6;
  v46 = *(v39 + 64);
  __chkstk_darwin();
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v36 - v8;
  v37 = &v36 - v8;
  v10 = type metadata accessor for Playlist();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v36 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin();
  v15 = &v36 - v14;
  (*(v11 + 16))(&v36 - v14, a2, v10, v13);
  v16 = *(v11 + 80);
  v38 = v16 | 7;
  v41 = swift_allocObject();
  v17 = *(v11 + 32);
  v17(v41 + ((v16 + 16) & ~v16), v15, v10);
  v18 = v39;
  v19 = v9;
  v20 = v40;
  (*(v39 + 16))(v19, v47, v40);
  v17(&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v21 = *(v18 + 80);
  v22 = v18;
  v23 = (v21 + 24) & ~v21;
  v24 = (v46 + v16 + v23) & ~v16;
  v25 = swift_allocObject();
  *(v25 + 16) = v43;
  v26 = *(v22 + 32);
  v26(v25 + v23, v37, v20);
  v17(v25 + v24, v36, v10);
  v27 = v42;
  v28 = v20;
  v26(v42, v47, v20);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v30 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v31 = (*(v29 + 64) + v21 + v30) & ~v21;
  v32 = swift_allocObject();
  outlined init with take of URL?(v44, v32 + v30, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (v26)(v32 + v31, v27, v28);
  v34 = v45;
  v35 = v41;
  *v45 = partial apply for closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);
  v34[1] = v35;
  v34[2] = &async function pointer to partial apply for closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);
  v34[3] = v25;
  v34[4] = &async function pointer to partial apply for closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);
  v34[5] = v32;
  return result;
}

unint64_t closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v0 = type metadata accessor for Playlist.EditableComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMR);
  __chkstk_darwin();
  v5 = &v9 - v4;
  Playlist.editableComponents.getter();
  if ((*(v1 + 48))(v5, 1, v0) == 1)
  {
    outlined destroy of TaskPriority?(v5, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMd, &_s8MusicKit8PlaylistV0aB8InternalE18EditableComponentsVSgMR);
  }

  else
  {
    static Playlist.EditableComponents.tracklist.getter();
    lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents();
    v6 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v7 = *(v1 + 8);
    v7(v3, v0);
    v7(v5, v0);
    if ((v6 & 1) != 0 && ![objc_opt_self() isRunningInStoreDemoMode])
    {
      return 0;
    }
  }

  return 0xD00000000000001ALL;
}

uint64_t closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v6 = type metadata accessor for Playlist();
  v3[5] = v6;
  v3[6] = *(v6 - 8);
  v3[7] = swift_task_alloc();
  v7 = type metadata accessor for Playlist.Entry();
  v3[8] = v7;
  v3[9] = *(v7 - 8);
  v3[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v3[11] = v8;
  *v8 = v3;
  v8[1] = closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:);

  return MusicLibrary.remove(_:from:)(a2, a3);
}

uint64_t closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return _swift_task_switch(closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v37 = v0;
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v35 = v0[7];
  v5 = v0[5];
  v4 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.actions);
  (*(v2 + 16))(v1, v7, v3);
  (*(v4 + 16))(v35, v6, v5);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v17 = v0[5];
  v16 = v0[6];
  if (v11)
  {
    v32 = v0[12];
    v18 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v18 = 136446722;
    v33 = v10;
    v19 = Playlist.Entry.description.getter();
    log = v9;
    v21 = v20;
    (*(v12 + 8))(v13, v15);
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v19, v21, &v36);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = Playlist.description.getter();
    v25 = v24;
    (*(v16 + 8))(v14, v17);
    v26 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v23, v25, &v36);

    *(v18 + 14) = v26;
    *(v18 + 22) = 2082;
    v0[2] = v32;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v27 = String.init<A>(describing:)();
    v29 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v27, v28, &v36);

    *(v18 + 24) = v29;
    _os_log_impl(&_mh_execute_header, log, v33, "Failed to remove entry=%{public}s from playlist=%{public}s with error=%{public}s", v18, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v16 + 8))(v14, v17);
    (*(v12 + 8))(v13, v15);
  }

  v30 = v0[1];

  return v30();
}

uint64_t closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 256) = Playlist.Entry.metricsTargetIdentifier.getter();
    *(v0 + 264) = v7;
    v8 = type metadata accessor for URL();
    *(v0 + 272) = v8;
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    *(v0 + 280) = v10;
    *(v0 + 288) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v10(v6, 1, 1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = Playlist.Entry.metricsContentType.getter();
    *(inited + 40) = v12;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004F2F20;
    *(inited + 72) = 2;
    *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 304) = v13;
    *(v0 + 312) = v14;
    *(v0 + 328) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:), v17, v16);
  }
}

{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

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
  *(v6 + 16) = 9989;
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
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 200), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t specialized Actions.RemoveFromPlaylist.Context.menuItemTitle.getter()
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v0 = type metadata accessor for String.LocalizationValue();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v9[-v4];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v1 + 16))(v3, v5, v0);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v6 = static NSBundle.module;
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  (*(v1 + 8))(v5, v0);
  return v7;
}

uint64_t sub_10007C36C()
{

  return swift_deallocObject();
}

uint64_t sub_10007C3A4()
{
  v1 = type metadata accessor for Playlist();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  type metadata accessor for Playlist();

  return closure #1 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)();
}

uint64_t sub_10007C48C()
{
  v1 = type metadata accessor for Playlist.Entry();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Playlist();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v2 = *(type metadata accessor for Playlist.Entry() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(v7, v0 + v3, v0 + v6);
}

uint64_t sub_10007C710()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for Playlist.Entry();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = v0 + v2;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {
    v16 = v3;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v15 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v13 = *(v11 - 8);
      v14 = v11;
      if (!(*(v13 + 48))(v9 + v15, 1))
      {
        (*(v13 + 8))(v9 + v15, v14);
      }
    }

    v3 = v16;
  }

  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for Playlist.Entry() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.RemoveFromPlaylist.Context.init(entry:playlist:library:metricsReportingContext:)(v0 + v3, v0 + v6);
}

unint64_t lazy protocol witness table accessor for type Playlist.EditableComponents and conformance Playlist.EditableComponents()
{
  result = lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents;
  if (!lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents)
  {
    type metadata accessor for Playlist.EditableComponents();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playlist.EditableComponents and conformance Playlist.EditableComponents);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "gMusicTabsDictionary";
      v3 = 0xD000000000000025;
    }

    else
    {
      v4 = "countUniqueIdentifier";
      v3 = 0xD000000000000014;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000024;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2)
    {
      v4 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v4 = "sharePlayTogether";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000025;
    }

    else
    {
      v5 = 0xD000000000000014;
    }

    if (a2 == 2)
    {
      v6 = "gMusicTabsDictionary";
    }

    else
    {
      v6 = "countUniqueIdentifier";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v6 = "UserRequestedSubscriptionHidden";
    }

    else
    {
      v6 = "sharePlayTogether";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

{
  v2 = 0xE900000000000064;
  v3 = 0x657469726F766166;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64656B696C736964;
    }

    else
    {
      v5 = 0x726F707075736E75;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000646574;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6C61727475656ELL;
    }

    else
    {
      v5 = 0x657469726F766166;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x64656B696C736964;
  if (a2 != 2)
  {
    v8 = 0x726F707075736E75;
    v7 = 0xEB00000000646574;
  }

  if (a2)
  {
    v3 = 0x6C61727475656ELL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0x7473696C79616C70;
  v5 = 0xE900000000000073;
  if (a1 != 5)
  {
    v4 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v6 = 0x59726F466564616DLL;
  v7 = 0xEA0000000000756FLL;
  if (a1 != 3)
  {
    v6 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x736D75626C61;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x73747369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEC000000736E6F69;
        if (v10 != 0x74616C69706D6F63)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736D75626C61)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x7473696C79616C70)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x73676E6F73)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA0000000000756FLL;
    if (v10 != 0x59726F466564616DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000736F65;
    if (v10 != 0x646956636973756DLL)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

{
  v2 = 0xED0000726564724FLL;
  v3 = 0x7473696C79616C70;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x656C746974;
    }

    else
    {
      v5 = 0x7473696C79616C70;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE600000000000000;
    v5 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D75626C61;
    }

    else
    {
      v5 = 0x44657361656C6572;
    }

    if (v4 == 3)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000657461;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x747369747261;
  v9 = 0xE500000000000000;
  v10 = 0x6D75626C61;
  if (a2 != 3)
  {
    v10 = 0x44657361656C6572;
    v9 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a2)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

{
  v2 = "updateServerLandingPages";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = "ribedPlaylistsDate";
      v4 = 0xD000000000000028;
    }

    else
    {
      v5 = "efreshServerLandingPages";
      v4 = 0xD000000000000027;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000032;
    }

    else
    {
      v4 = 0xD00000000000002FLL;
    }

    if (v3)
    {
      v5 = "efreshPinnedSubscribedPlaylists";
    }

    else
    {
      v5 = "updateServerLandingPages";
    }
  }

  if (a2 > 1u)
  {
    v2 = "ribedPlaylistsDate";
    v6 = "efreshServerLandingPages";
    v7 = a2 == 2;
    if (a2 == 2)
    {
      v8 = 0xD000000000000028;
    }

    else
    {
      v8 = 0xD000000000000027;
    }
  }

  else
  {
    v6 = "efreshPinnedSubscribedPlaylists";
    v7 = a2 == 0;
    if (a2)
    {
      v8 = 0xD000000000000032;
    }

    else
    {
      v8 = 0xD00000000000002FLL;
    }
  }

  if (v7)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && (v5 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  if (a1 != 5)
  {
    v5 = 0x6F65646976;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x6573776F7262;
  if (a1 != 3)
  {
    v7 = 0x6F69646172;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x756F795F726F66;
  if (a1 != 1)
  {
    v9 = 0x6E5F6E657473696CLL;
    v8 = 0xEA0000000000776FLL;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x636973756D5F796DLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x756F795F726F66)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA0000000000776FLL;
        if (v10 != 0x6E5F6E657473696CLL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x636973756D5F796DLL)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_37;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE500000000000000;
    v13 = 1701079414;
  }

  else
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x6573776F7262)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v12 = 0xE500000000000000;
    v13 = 1768186226;
  }

  if (v10 != (v13 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
  {
LABEL_39:
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_40;
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6269726373627573;
    }

    else
    {
      v5 = 0x6275536563696F76;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000007265;
    }

    else
    {
      v6 = 0xEF72656269726373;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x63697373616C63;
    }

    else
    {
      v5 = 0x6564696365646E75;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  v7 = 0x6269726373627573;
  v8 = 0xEA00000000007265;
  if (a2 != 2)
  {
    v7 = 0x6275536563696F76;
    v8 = 0xEF72656269726373;
  }

  if (a2)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x6574656C706D6F63;
  if (a1 == 2)
  {
    v5 = 0x6572676F72506E69;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  v6 = 0xD00000000000001ELL;
  if (a1)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = 0x80000001004C3F70;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    v11 = a2 == 2;
    v10 = 0xEA00000000007373;
    v9 = 0xE900000000000064;
    if (a2 == 2)
    {
      v12 = 0x6572676F72506E69;
    }

    else
    {
      v12 = 0x6574656C706D6F63;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v10 = 0x80000001004C3F70;
    v11 = a2 == 0;
    if (a2)
    {
      v12 = 0x6E776F6E6B6E75;
    }

    else
    {
      v12 = 0xD00000000000001ELL;
    }
  }

  if (v11)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v7 == v12 && v8 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v14 & 1;
}

{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x736F65646976;
  if (a1 != 5)
  {
    v5 = 0x7473696C79616C70;
    v4 = 0xE900000000000073;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6F69646172;
  if (a1 != 3)
  {
    v7 = 0x686372616573;
    v6 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F4E6E657473696CLL;
  v9 = 0xE900000000000077;
  if (a1 != 1)
  {
    v8 = 0x6573776F7262;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x7972617262696CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE900000000000077;
        if (v10 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        if (v10 != 0x6573776F7262)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x7972617262696CLL)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x736F65646976)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x7473696C79616C70)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6F69646172)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x686372616573)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

{
  v2 = 0x6D75626C41;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7473696C79616C50;
    }

    else
    {
      v4 = 0x434174726F706552;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEE006E7265636E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x747369747241;
    }

    else
    {
      v4 = 0x6D75626C41;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x7473696C79616C50;
  if (a2 != 2)
  {
    v8 = 0x434174726F706552;
    v7 = 0xEE006E7265636E6FLL;
  }

  if (a2)
  {
    v2 = 0x747369747241;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = 1819047270;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6F686563616C70;
    }

    else
    {
      v4 = 0x73756F6976657270;
    }

    if (v3 == 2)
    {
      v5 = 0xEB00000000726564;
    }

    else
    {
      v5 = 0xEF6E776F6853796CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616974726170;
    }

    else
    {
      v4 = 1819047270;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0x6C6F686563616C70;
  v8 = 0xEB00000000726564;
  if (a2 != 2)
  {
    v7 = 0x73756F6976657270;
    v8 = 0xEF6E776F6853796CLL;
  }

  if (a2)
  {
    v2 = 0x6C616974726170;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t Actions.SortPlaylist.Context.currentSort.getter()
{
  if (*(v0 + 2))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 1);
}

uint64_t Actions.SortPlaylist.Context.currentSort.setter(uint64_t result)
{
  *(v1 + 1) = result;
  *(v1 + 2) = BYTE1(result) & 1;
  return result;
}

uint64_t Actions.SortPlaylist.Context.playlistVariant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);

  return outlined init with copy of Playlist.Variant?(v3, a1);
}

uint64_t type metadata accessor for Actions.SortPlaylist.Context(uint64_t a1)
{
  result = type metadata singleton initialization cache for Actions.SortPlaylist.Context;
  if (!type metadata singleton initialization cache for Actions.SortPlaylist.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Playlist.Variant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Actions.SortPlaylist.Context.playlistVariant.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Actions.SortPlaylist.Context(0) + 24);

  return outlined assign with take of Playlist.Variant?(a1, v3);
}

uint64_t outlined assign with take of Playlist.Variant?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Actions.SortPlaylist.Context.didSelectSort.getter()
{
  v1 = *(v0 + *(type metadata accessor for Actions.SortPlaylist.Context(0) + 28));

  return v1;
}

uint64_t Actions.SortPlaylist.Context.didSelectSort.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Actions.SortPlaylist.Context(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Actions.SortPlaylist.Context.init(sortOption:currentSort:playlistVariant:didSelectSort:)@<X0>(char a1@<W0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v13 = *(v12 + 24);
  v14 = type metadata accessor for Playlist.Variant();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = HIBYTE(a2) & 1;
  result = outlined assign with take of Playlist.Variant?(a3, &a6[v13]);
  v16 = &a6[*(v12 + 28)];
  *v16 = a4;
  v16[1] = a5;
  return result;
}

int *static Actions.SortPlaylist.action(context:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for Actions.SortPlaylist.Context(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v16 - v7;
  outlined init with copy of Actions.SortPlaylist.Context(a1, &v16 - v7);
  v9 = *a1 + 14;
  outlined init with copy of Actions.SortPlaylist.Context(a1, v6);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  outlined init with take of Actions.SortPlaylist.Context(v6, v11 + v10);
  outlined init with take of Actions.SortPlaylist.Context(v8, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO12SortPlaylistO7ContextVytGMR);
  *(a2 + result[9]) = v9;
  *(a2 + result[11]) = 0x4014000000000000;
  v13 = (a2 + result[10]);
  *v13 = variable initialization expression of _NSRange.NSRangeIterator.current;
  v13[1] = 0;
  v14 = (a2 + result[12]);
  *v14 = &async function pointer to partial apply for closure #2 in static Actions.SortPlaylist.action(context:);
  v14[1] = v11;
  v15 = (a2 + result[13]);
  *v15 = &async function pointer to closure #3 in static Actions.SortPlaylist.action(context:);
  v15[1] = 0;
  return result;
}

uint64_t outlined init with copy of Actions.SortPlaylist.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t closure #2 in static Actions.SortPlaylist.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = *v1;
  *(v0 + 52) = v2;
  if (specialized == infix<A>(_:_:)(v2, v1[1]))
  {
    v3 = 0;
    v4 = *(v0 + 16);
    v5 = *(v4 + 2);
    v6 = 256;
  }

  else
  {
    v6 = 0;
    v5 = v2 < 4;
    v4 = *(v0 + 16);
    v3 = 256;
  }

  *(v0 + 53) = v5;
  *(v0 + 50) = v3;
  *(v0 + 48) = v6;
  v7 = (v4 + *(type metadata accessor for Actions.SortPlaylist.Context(0) + 28));
  *(v0 + 24) = *v7;
  *(v0 + 32) = v7[1];
  type metadata accessor for MainActor();
  *(v0 + 40) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in static Actions.SortPlaylist.action(context:), v9, v8);
}

{
  v1 = *(v0 + 24);
  v2 = *(v0 + 52);
  if (*(v0 + 53))
  {
    v3 = (v0 + 50);
  }

  else
  {
    v3 = (v0 + 48);
  }

  v4 = *v3;

  v1(v4 | v2);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10007E468()
{
  v1 = type metadata accessor for Actions.SortPlaylist.Context(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 24);
  v4 = type metadata accessor for Playlist.Variant();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t outlined init with take of Actions.SortPlaylist.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.SortPlaylist.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #2 in static Actions.SortPlaylist.action(context:)(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for Actions.SortPlaylist.Context(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in static Actions.SortPlaylist.action(context:)(a1, a2, v2 + v7);
}

uint64_t Actions.SortPlaylist.TrackListSort.init(option:isAscending:)(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFF00 | a1;
}

uint64_t Actions.SortPlaylist.Context.menuItemTitle.getter()
{
  v1 = *v0;
  v2 = &v0[*(type metadata accessor for Actions.SortPlaylist.Context(0) + 24)];

  return Actions.SortPlaylist.TrackListSort.Option.localizedName(playlistVariant:)(v2, v1);
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.localizedName(playlistVariant:)(uint64_t a1, unsigned __int8 a2)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v33 = *(v5 - 8);
  __chkstk_darwin();
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v31 = &v30 - v7;
  v8 = type metadata accessor for Playlist.Variant();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMR);
  __chkstk_darwin();
  v14 = &v30 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin();
  v19 = &v30 - v17;
  if (a2 > 1u)
  {
    if (a2 != 2)
    {
      v21 = v32;
      v20 = v33;
      v22 = v31;
      String.LocalizationValue.init(stringLiteral:)();
      (*(v20 + 16))(v21, v22, v5);
      goto LABEL_17;
    }

    v22 = v31;
    goto LABEL_10;
  }

  if (!a2)
  {
    v30 = v5;
    (*(v9 + 104))(&v30 - v17, enum case for Playlist.Variant.favoriteSongs(_:), v8, v18);
    (*(v9 + 56))(v19, 0, 1, v8);
    v23 = *(v12 + 48);
    outlined init with copy of Playlist.Variant?(a1, v14);
    outlined init with copy of Playlist.Variant?(v19, &v14[v23]);
    v24 = *(v9 + 48);
    if (v24(v14, 1, v8) == 1)
    {
      outlined destroy of TaskPriority?(v19, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
      v25 = v24(&v14[v23], 1, v8);
      v5 = v30;
      v22 = v31;
      if (v25 == 1)
      {
        outlined destroy of TaskPriority?(v14, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        v20 = v33;
LABEL_15:
        String.LocalizationValue.init(stringLiteral:)();
        goto LABEL_16;
      }
    }

    else
    {
      outlined init with copy of Playlist.Variant?(v14, v16);
      if (v24(&v14[v23], 1, v8) != 1)
      {
        (*(v9 + 32))(v11, &v14[v23], v8);
        lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant();
        dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *(v9 + 8);
        v26(v11, v8);
        outlined destroy of TaskPriority?(v19, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        v26(v16, v8);
        outlined destroy of TaskPriority?(v14, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
        v5 = v30;
        v22 = v31;
        v20 = v33;
        goto LABEL_15;
      }

      outlined destroy of TaskPriority?(v19, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
      (*(v9 + 8))(v16, v8);
      v5 = v30;
      v22 = v31;
    }

    outlined destroy of TaskPriority?(v14, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMR);
    v20 = v33;
    goto LABEL_15;
  }

  v22 = v31;
LABEL_10:
  String.LocalizationValue.init(stringLiteral:)();
  v20 = v33;
LABEL_16:
  (*(v20 + 16))(v32, v22, v5);
LABEL_17:
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v27 = static NSBundle.module;
  static Locale.current.getter();
  v28 = String.init(localized:table:bundle:locale:comment:)();
  (*(v20 + 8))(v22, v5);
  return v28;
}

uint64_t Actions.SortPlaylist.Context.menuItemSubtitle.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

LABEL_29:
    v20 = type metadata accessor for Actions.SortPlaylist.Context(0);
    return Actions.SortPlaylist.TrackListSort.Option.localizedSubtitle(playlistVariant:ascending:)(&v0[*(v20 + 24)], v0[2], v4);
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.localizedSubtitle(playlistVariant:ascending:)(uint64_t a1, int a2, unsigned __int8 a3)
{
  v38 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v40 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for String.LocalizationValue();
  v6 = *(v42 - 8);
  __chkstk_darwin();
  v39 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v41 = v36 - v8;
  v9 = type metadata accessor for Playlist.Variant();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMR);
  __chkstk_darwin();
  v15 = v36 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  __chkstk_darwin();
  v17 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v20 = v36 - v18;
  v21 = a3;
  if (a3 - 1 < 3)
  {
    v22 = (v6 + 16);
    v23 = v41;
LABEL_12:
    String.LocalizationValue.init(stringLiteral:)();
    v29 = v42;
    (*v22)(v39, v23, v42);
    goto LABEL_16;
  }

  v24 = v38;
  v36[1] = a2;
  v37 = v6;
  if (v21)
  {
    v6 = v37;
    v22 = (v37 + 16);
    v23 = v41;
    goto LABEL_12;
  }

  (*(v10 + 104))(v36 - v18, enum case for Playlist.Variant.favoriteSongs(_:), v9, v19);
  (*(v10 + 56))(v20, 0, 1, v9);
  v25 = *(v13 + 48);
  outlined init with copy of Playlist.Variant?(v24, v15);
  outlined init with copy of Playlist.Variant?(v20, &v15[v25]);
  v26 = *(v10 + 48);
  if (v26(v15, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v20, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
    v27 = v26(&v15[v25], 1, v9);
    v28 = v39;
    if (v27 == 1)
    {
      outlined destroy of TaskPriority?(v15, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
      v23 = v41;
      v29 = v42;
      v6 = v37;
LABEL_14:
      v30 = (v6 + 16);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  outlined init with copy of Playlist.Variant?(v15, v17);
  if (v26(&v15[v25], 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v20, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
    (*(v10 + 8))(v17, v9);
    v28 = v39;
LABEL_10:
    outlined destroy of TaskPriority?(v15, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSg_AGtMR);
    v23 = v41;
    v29 = v42;
    v6 = v37;
    goto LABEL_11;
  }

  (*(v10 + 32))(v12, &v15[v25], v9);
  lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant();
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v10 + 8);
  v32(v12, v9);
  outlined destroy of TaskPriority?(v20, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  v32(v17, v9);
  outlined destroy of TaskPriority?(v15, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  v23 = v41;
  v29 = v42;
  v6 = v37;
  v28 = v39;
  if (v31)
  {
    goto LABEL_14;
  }

LABEL_11:
  v30 = (v6 + 16);
LABEL_15:
  String.LocalizationValue.init(stringLiteral:)();
  (*v30)(v28, v23, v29);
LABEL_16:
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v33 = static NSBundle.module;
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  (*(v6 + 8))(v23, v29);
  return v34;
}

uint64_t Actions.SortPlaylist.Context.menuItemState.getter()
{
  v1 = 0xED0000726564724FLL;
  v2 = 0x7473696C79616C70;
  v3 = v0[1];
  v4 = *v0;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v3 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v3 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (!v0[1])
  {
    v10 = 0x7473696C79616C70;
    v9 = 0xED0000726564724FLL;
  }

  if (v0[1] <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v0[1] <= 1u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v5;
  }

  v13 = 0xE600000000000000;
  v14 = 0x747369747261;
  v15 = 0xE500000000000000;
  v16 = 0x6D75626C61;
  if (v4 != 3)
  {
    v16 = 0x44657361656C6572;
    v15 = 0xEB00000000657461;
  }

  if (v4 != 2)
  {
    v14 = v16;
    v13 = v15;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
    v1 = 0xE500000000000000;
  }

  if (*v0 <= 1u)
  {
    v17 = v2;
  }

  else
  {
    v17 = v14;
  }

  if (*v0 <= 1u)
  {
    v18 = v1;
  }

  else
  {
    v18 = v13;
  }

  if (v11 == v17 && v12 == v18)
  {

    return 1;
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v20 & 1;
  }
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemSubtitle.getter in conformance Actions.SortPlaylist.Context(uint64_t a1)
{
  v3 = *v1;
  if (specialized == infix<A>(_:_:)(v1[1], *v1))
  {
    return Actions.SortPlaylist.TrackListSort.Option.localizedSubtitle(playlistVariant:ascending:)(&v1[*(a1 + 24)], v1[2], v3);
  }

  else
  {
    return 0;
  }
}

uint64_t Actions.SortPlaylist.TrackListSort.Option.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x7473696C79616C70;
  v2 = 0x747369747261;
  v3 = 0x6D75626C61;
  if (a1 != 3)
  {
    v3 = 0x44657361656C6572;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C746974;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Actions.SortPlaylist.TrackListSort.Option()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Actions.SortPlaylist.TrackListSort.Option(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Actions.SortPlaylist.TrackListSort.Option(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Actions.SortPlaylist.TrackListSort.Option@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Actions.SortPlaylist.TrackListSort.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Actions.SortPlaylist.TrackListSort.Option(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = 0xE600000000000000;
  v6 = 0x747369747261;
  v7 = 0xE500000000000000;
  v8 = 0x6D75626C61;
  if (v2 != 3)
  {
    v8 = 0x44657361656C6572;
    v7 = 0xEB00000000657461;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Actions.SortPlaylist.TrackListSort.CodingKeys()
{
  if (*v0)
  {
    return 0x646E656373417369;
  }

  else
  {
    return 0x6E6F6974706FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Actions.SortPlaylist.TrackListSort.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E656373417369 && a2 == 0xEB00000000676E69)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Actions.SortPlaylist.TrackListSort.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Actions.SortPlaylist.TrackListSort.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static Actions.SortPlaylist.TrackListSort.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  v3 = 0xED0000726564724FLL;
  v4 = 0x7473696C79616C70;
  v5 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0x656C746974;
    }

    else
    {
      v6 = 0x7473696C79616C70;
    }

    if (v5)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xED0000726564724FLL;
    }
  }

  else if (a1 == 2)
  {
    v7 = 0xE600000000000000;
    v6 = 0x747369747261;
  }

  else
  {
    if (a1 == 3)
    {
      v6 = 0x6D75626C61;
    }

    else
    {
      v6 = 0x44657361656C6572;
    }

    if (v5 == 3)
    {
      v7 = 0xE500000000000000;
    }

    else
    {
      v7 = 0xEB00000000657461;
    }
  }

  v9 = 0xE600000000000000;
  v10 = 0x747369747261;
  v11 = 0xE500000000000000;
  v12 = 0x6D75626C61;
  if (a2 != 3)
  {
    v12 = 0x44657361656C6572;
    v11 = 0xEB00000000657461;
  }

  if (a2 != 2)
  {
    v10 = v12;
    v9 = v11;
  }

  if (a2)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v13 = v4;
  }

  else
  {
    v13 = v10;
  }

  if (a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v9;
  }

  if (v6 == v13 && v7 == v14)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v15 & 1) == 0)
    {
      return result;
    }
  }

  return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
}

uint64_t Actions.SortPlaylist.TrackListSort.encode(to:)(void *a1, unsigned __int16 a2)
{
  v3 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MusicCore7ActionsO12SortPlaylistO09TrackListG0V10CodingKeys33_5F493F74260370880275B9E8F2589127LLOGMd, &_ss22KeyedEncodingContainerVy9MusicCore7ActionsO12SortPlaylistO09TrackListG0V10CodingKeys33_5F493F74260370880275B9E8F2589127LLOGMR);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = v3;
  v10[14] = 0;
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void Actions.SortPlaylist.TrackListSort.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  String.hash(into:)();

  Hasher._combine(_:)(v2 & 1);
}

Swift::Int Actions.SortPlaylist.TrackListSort.hashValue.getter(__int16 a1)
{
  v1 = HIBYTE(a1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Actions.SortPlaylist.TrackListSort()
{
  if (v0[1])
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return Actions.SortPlaylist.TrackListSort.hashValue.getter(v1 | *v0);
}

void protocol witness for Hashable.hash(into:) in conformance Actions.SortPlaylist.TrackListSort(uint64_t a1)
{
  v2 = *(v1 + 1);
  String.hash(into:)();

  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Actions.SortPlaylist.TrackListSort(uint64_t a1)
{
  v2 = *(v1 + 1);
  Hasher.init(_seed:)();
  String.hash(into:)();

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance Actions.SortPlaylist.TrackListSort@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized Actions.SortPlaylist.TrackListSort.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Actions.SortPlaylist.TrackListSort(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return Actions.SortPlaylist.TrackListSort.encode(to:)(a1, v2 | *v1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Actions.SortPlaylist.TrackListSort(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return specialized == infix<A>(_:_:)(*a1, *a2) & ~(v2 ^ v3) & 1;
}

unint64_t specialized Actions.SortPlaylist.TrackListSort.Option.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Actions.SortPlaylist.TrackListSort.Option.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option()
{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option);
  }

  return result;
}

uint64_t specialized Actions.SortPlaylist.TrackListSort.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore7ActionsO12SortPlaylistO09TrackListG0V10CodingKeys33_5F493F74260370880275B9E8F2589127LLOGMd, &_ss22KeyedDecodingContainerVy9MusicCore7ActionsO12SortPlaylistO09TrackListG0V10CodingKeys33_5F493F74260370880275B9E8F2589127LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.CodingKeys and conformance Actions.SortPlaylist.TrackListSort.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11[14] = 0;
  lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort.Option and conformance Actions.SortPlaylist.TrackListSort.Option();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v11[15];
  v11[13] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 | v7;
}

unint64_t lazy protocol witness table accessor for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionOGMd, &_sSay9MusicCore7ActionsO12SortPlaylistO09TrackListD0V6OptionOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Actions.SortPlaylist.TrackListSort.Option] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort()
{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort;
  if (!lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort);
  }

  return result;
}

uint64_t sub_100080A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_100080B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMd, &_s8MusicKit8PlaylistV0aB8InternalE7VariantOSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for Actions.SortPlaylist.Context(uint64_t a1)
{
  type metadata accessor for Playlist.Variant?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Playlist.Variant?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Playlist.Variant?)
  {
    type metadata accessor for Playlist.Variant();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Playlist.Variant?);
    }
  }
}

uint64_t getEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort.Option(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Actions.SortPlaylist.TrackListSort.Option(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Playlist.Variant and conformance Playlist.Variant()
{
  result = lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant;
  if (!lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant)
  {
    type metadata accessor for Playlist.Variant();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Playlist.Variant and conformance Playlist.Variant);
  }

  return result;
}

uint64_t closure #2 in static Actions.GoToAlbum.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

uint64_t closure #3 in static Actions.GoToAlbum.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 48) + **(a1 + 48));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

uint64_t closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = type metadata accessor for MetricsEvent.Click(0);
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 240), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 232);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 272) = MusicItem.metricsTargetIdentifier.getter(v8, v7);
    *(v0 + 280) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 288) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 296) = v12;
    *(v0 + 304) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8, v7);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(inited + 56) = 0;
    *(inited + 64) = 0;
    *(inited + 72) = 3;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v15;
    *(v0 + 328) = v16;
    *(v0 + 344) = v17;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:), v19, v18);
  }
}

{
  v80 = *(v0 + 344);
  v73 = *(v0 + 312);
  v76 = *(v0 + 280);
  v78 = *(v0 + 328);
  v74 = *(v0 + 272);
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v72 = *(v0 + 176);

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
  *(v6 + 16) = 14597;
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
  v16 = *(v0 + 344);
  v17 = *(v0 + 320);
  v18 = *(v0 + 328);
  v19 = *(v0 + 312);
  v20 = *(v0 + 176);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 184);
  v24 = *(v0 + 168);
  v25 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 168);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 184);
  v31 = *(v0 + 160);
  v32 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 296);
    v34 = *(v0 + 288);
    v35 = *(v0 + 216);
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 160);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 216), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 184);
  v38 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 216), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 152);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 184);
  v43 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 144);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 184);
  v48 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 136);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 184);
  v55 = *(v0 + 128);
  v56 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 128);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 320);
  v63 = *(v0 + 328);
  v65 = *(v0 + 312);
  v66 = *(v0 + 264);
  v67 = *(v0 + 248);
  v68 = *(v0 + 232);
  v69 = *(v0 + 208);
  v70 = *(v0 + 344);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:), 0, 0);
}

uint64_t partial apply for closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

id implicit closure #1 in Actions.GoToAlbum.Context.menuItemImage.getter()
{
  return implicit closure #1 in Actions.GoToAlbum.Context.menuItemImage.getter();
}

{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() _systemImageNamed:v0];

  return v1;
}

uint64_t specialized MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v8 = enum case for MusicPropertySource.library(_:);
    v9 = type metadata accessor for MusicPropertySource();
    v17 = *(v9 - 8);
    (*(v17 + 104))(a4, v8, v9);
    v10 = *(v17 + 56);

    return v10(a4, 0, 1, v9);
  }

  else
  {
    v28 = a1(0);
    v29 = a2;
    __swift_allocate_boxed_opaque_existential_1(v27);
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    __swift_project_boxed_opaque_existential_0Tm(v27, v28);
    a3();
    if (!v12)
    {
      goto LABEL_10;
    }

    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v26[4] = v22;
    v26[5] = v23;
    v26[6] = v24;
    v26[7] = v25;
    v26[0] = v18;
    v26[1] = v19;
    v26[2] = v20;
    v26[3] = v21;
    outlined destroy of ApplicationCapabilities(v26);
    if (BYTE1(v26[0]) == 1)
    {
      v13 = enum case for MusicPropertySource.catalog(_:);
      v14 = type metadata accessor for MusicPropertySource();
      v15 = *(v14 - 8);
      (*(v15 + 104))(a4, v13, v14);
      (*(v15 + 56))(a4, 0, 1, v14);
      return __swift_destroy_boxed_opaque_existential_0Tm(v27);
    }

    else
    {
LABEL_10:
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      v16 = type metadata accessor for MusicPropertySource();
      return (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
    }
  }
}

uint64_t MusicLibrary.ItemState.containerLoadingSource.getter@<X0>(uint64_t a3@<X8>)
{
  __chkstk_darwin();
  if (dispatch thunk of MusicLibrary.ItemState.isAdded.getter())
  {
    v4 = enum case for MusicPropertySource.library(_:);
    v5 = type metadata accessor for MusicPropertySource();
    v15 = *(v5 - 8);
    (*(v15 + 104))(a3, v4, v5);
    v6 = *(v15 + 56);

    return v6(a3, 0, 1, v5);
  }

  else
  {
    dispatch thunk of MusicLibrary.ItemState.item.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd, &_s9MusicCore18CatalogIDProviding_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of ActionPerforming(&v24, v32);
      v8 = v33;
      v9 = v34;
      __swift_project_boxed_opaque_existential_0Tm(v32, v33);
      (*(v9 + 8))(v8, v9);
      if (v10)
      {

        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v28 = v20;
        v29 = v21;
        v30 = v22;
        v31 = v23;
        v24 = v16;
        v25 = v17;
        v26 = v18;
        v27 = v19;
        outlined destroy of ApplicationCapabilities(&v24);
        if (BYTE1(v24) == 1)
        {
          v11 = enum case for MusicPropertySource.catalog(_:);
          v12 = type metadata accessor for MusicPropertySource();
          v13 = *(v12 - 8);
          (*(v13 + 104))(a3, v11, v12);
          (*(v13 + 56))(a3, 0, 1, v12);
          return __swift_destroy_boxed_opaque_existential_0Tm(v32);
        }
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    else
    {
      *&v26 = 0;
      v24 = 0u;
      v25 = 0u;
      outlined destroy of TaskPriority?(&v24, &_s9MusicCore18CatalogIDProviding_pSgMd, &_s9MusicCore18CatalogIDProviding_pSgMR);
    }

    v14 = type metadata accessor for MusicPropertySource();
    return (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
  }
}

uint64_t MusicVideo.supportsContainerNavigation(itemState:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  __chkstk_darwin();
  v1 = &v6 - v0;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(&type metadata accessor for MusicVideo, &protocol witness table for MusicVideo, &MusicVideo.catalogID.getter, &v6 - v0);
  v2 = type metadata accessor for MusicPropertySource();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  outlined destroy of TaskPriority?(v1, &_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  if (v3 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = MusicVideo.hasFullAlbum.getter();
  }

  return v4 & 1;
}

uint64_t MusicVideo.hasFullAlbum.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMR);
  __chkstk_darwin();
  v1 = &v13 - v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  __chkstk_darwin();
  v3 = &v13 - v2;
  v4 = type metadata accessor for Album();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MusicVideo.albums.getter();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v1, 1, v8) == 1)
  {
    outlined destroy of TaskPriority?(v1, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGSgMR);
    (*(v5 + 56))(v3, 1, 1, v4);
LABEL_4:
    outlined destroy of TaskPriority?(v3, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    goto LABEL_5;
  }

  specialized Collection.first.getter(v3);
  (*(v9 + 8))(v1, v8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    goto LABEL_4;
  }

  (*(v5 + 32))(v7, v3, v4);
  v12 = Album.isSingleMusicVideo.getter();
  (*(v5 + 8))(v7, v4);
  if (v12 != 2)
  {
    v10 = v12 ^ 1;
    return v10 & 1;
  }

LABEL_5:
  v10 = 0;
  return v10 & 1;
}

uint64_t Track.supportsContainerNavigation(itemState:)()
{
  v0 = type metadata accessor for Track();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MusicVideo();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  __chkstk_darwin();
  v9 = v14 - v8;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(&type metadata accessor for Track, &protocol witness table for Track, &Track.catalogID.getter, v14 - v8);
  v10 = type metadata accessor for MusicPropertySource();
  v11 = (*(*(v10 - 8) + 48))(v9, 1, v10);
  outlined destroy of TaskPriority?(v9, &_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  if (v11 == 1)
  {
    v12 = 0;
  }

  else
  {
    (*(v1 + 16))(v3, v14[1], v0);
    if ((*(v1 + 88))(v3, v0) == enum case for Track.musicVideo(_:))
    {
      (*(v1 + 96))(v3, v0);
      (*(v5 + 32))(v7, v3, v4);
      v12 = MusicVideo.hasFullAlbum.getter();
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v12 = 1;
    }
  }

  return v12 & 1;
}

BOOL Song.supportsContainerNavigation(itemState:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  __chkstk_darwin();
  v8 = &v12 - v7;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(a2, a3, a4, &v12 - v7);
  v9 = type metadata accessor for MusicPropertySource();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9) != 1;
  outlined destroy of TaskPriority?(v8, &_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  return v10;
}

uint64_t Playlist.Entry.supportsContainerNavigation(itemState:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit8PlaylistV5EntryV4ItemOSgMd, &_s8MusicKit8PlaylistV5EntryV4ItemOSgMR);
  __chkstk_darwin();
  v1 = &v14 - v0;
  v2 = type metadata accessor for MusicVideo();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  __chkstk_darwin();
  v7 = &v14 - v6;
  specialized MusicLibrary.ItemState.containerLoadingSource.getter(&type metadata accessor for Playlist.Entry, &protocol witness table for Playlist.Entry, &Playlist.Entry.catalogID.getter, &v14 - v6);
  v8 = type metadata accessor for MusicPropertySource();
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8);
  outlined destroy of TaskPriority?(v7, &_s8MusicKit0A14PropertySourceOSgMd, &_s8MusicKit0A14PropertySourceOSgMR);
  if (v9 != 1)
  {
    Playlist.Entry.item.getter();
    v11 = type metadata accessor for Playlist.Entry.Item();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v1, 1, v11) == 1)
    {
      outlined destroy of TaskPriority?(v1, &_s8MusicKit8PlaylistV5EntryV4ItemOSgMd, &_s8MusicKit8PlaylistV5EntryV4ItemOSgMR);
    }

    else
    {
      if ((*(v12 + 88))(v1, v11) == enum case for Playlist.Entry.Item.musicVideo(_:))
      {
        (*(v12 + 96))(v1, v11);
        (*(v3 + 32))(v5, v1, v2);
        v10 = MusicVideo.hasFullAlbum.getter();
        (*(v3 + 8))(v5, v2);
        return v10 & 1;
      }

      (*(v12 + 8))(v1, v11);
    }

    v10 = 1;
    return v10 & 1;
  }

  v10 = 0;
  return v10 & 1;
}

int *static Actions.GoToPlaylistFolderItem.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Playlist.Folder.Item();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Actions.GoToPlaylistFolderItem.Context(a1, v9);
  (*(v5 + 16))(v7, a1, v4);
  if ((*(v5 + 88))(v7, v4) == enum case for Playlist.Folder.Item.folder(_:))
  {
    v10 = 29;
  }

  else
  {
    v10 = 28;
  }

  (*(v5 + 8))(v7, v4);
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v9, a2, type metadata accessor for Actions.GoToPlaylistFolderItem.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO22GoToPlaylistFolderItemO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO22GoToPlaylistFolderItemO7ContextVytGMR);
  *(a2 + result[9]) = v10;
  *(a2 + result[11]) = 0x4014000000000000;
  v12 = (a2 + result[10]);
  *v12 = closure #2 in static Actions.GoToPlaylistFolderItem.action(context:);
  v12[1] = 0;
  v13 = (a2 + result[12]);
  *v13 = &async function pointer to closure #3 in static Actions.GoToPlaylistFolderItem.action(context:);
  v13[1] = 0;
  v14 = (a2 + result[13]);
  *v14 = &async function pointer to closure #4 in static Actions.GoToPlaylistFolderItem.action(context:);
  v14[1] = 0;
  return result;
}

uint64_t closure #3 in static Actions.GoToPlaylistFolderItem.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #4 in static Actions.GoToPlaylistFolderItem.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

int *Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v14 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  outlined init with take of URL?(a7, v16 + v14, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined init with take of ActionPerforming(a1, v16 + v15);
  v17 = type metadata accessor for Playlist.Folder.Item();
  (*(*(v17 - 8) + 32))(a8, a2, v17);
  result = type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0);
  v19 = (a8 + result[5]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a8 + result[6]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a8 + result[7]);
  *v21 = &async function pointer to partial apply for closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:);
  v21[1] = v16;
  return result;
}

uint64_t closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = type metadata accessor for MetricsEvent.Click(0);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v2[28] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 104);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_0Tm(v7, v8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v8, v9);
    *(v0 + 264) = v10;
    v11 = type metadata accessor for URL();
    *(v0 + 272) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 280) = v13;
    *(v0 + 288) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    v15 = v7[3];
    v16 = v7[4];
    __swift_project_boxed_opaque_existential_0Tm(v7, v15);
    *(inited + 32) = MusicItem.metricsContentType.getter(v15, v16);
    *(inited + 40) = v17;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004F2F30;
    *(inited + 72) = 3;
    *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 304) = v18;
    *(v0 + 312) = v19;
    *(v0 + 328) = v20;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:), v22, v21);
  }
}

{
  v80 = *(v0 + 328);
  v73 = *(v0 + 296);
  v76 = *(v0 + 264);
  v78 = *(v0 + 312);
  v74 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v72 = *(v0 + 160);

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
  *(v6 + 16) = 15365;
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
  v16 = *(v0 + 328);
  v17 = *(v0 + 304);
  v18 = *(v0 + 312);
  v19 = *(v0 + 296);
  v20 = *(v0 + 160);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 168);
  v24 = *(v0 + 152);
  v25 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 152);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 144);
  v32 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 280);
    v34 = *(v0 + 272);
    v35 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 200), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 168);
  v38 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 136);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 168);
  v43 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 128);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 168);
  v48 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 120);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 168);
  v55 = *(v0 + 112);
  v56 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 112);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 184);
  v61 = *(v0 + 192);
  v62 = *(v0 + 176);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 304);
  v63 = *(v0 + 312);
  v65 = *(v0 + 296);
  v66 = *(v0 + 248);
  v67 = *(v0 + 232);
  v68 = *(v0 + 216);
  v69 = *(v0 + 192);
  v70 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.AddToPlaylist.Context.init<A>(items:library:presentationSource:playlistPickerPresenter:metricsReportingContext:), 0, 0);
}

uint64_t Actions.GoToPlaylistFolderItem.Context.menuItemTitle.getter()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v19 - v6;
  v8 = type metadata accessor for Playlist.Folder.Item();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v1, v8, v10);
  v13 = (v3 + 16);
  if ((*(v9 + 88))(v12, v8) == enum case for Playlist.Folder.Item.folder(_:))
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*v13)(v5, v7, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v14 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
  }

  else
  {
    v20 = v3;
    String.LocalizationValue.init(stringLiteral:)();
    v16 = *v13;
    v21 = v2;
    v16(v5, v7, v2);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v17 = static NSBundle.module;
    static Locale.current.getter();
    v15 = String.init(localized:table:bundle:locale:comment:)();
    v3 = v20;
    v2 = v21;
  }

  (*(v3 + 8))(v7, v2);
  (*(v9 + 8))(v12, v8);
  return v15;
}

uint64_t closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = type metadata accessor for MetricsEvent.Click(0);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v4[27] = swift_task_alloc();
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  v4[28] = v5;
  v4[29] = *(v5 - 8);
  v4[30] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 216), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 208);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    outlined init with take of Actions.GoToPlaylistFolderItem.Context(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
    *(v0 + 248) = MusicItem.metricsTargetIdentifier.getter(v8, v7);
    *(v0 + 256) = v9;
    v10 = type metadata accessor for URL();
    *(v0 + 264) = v10;
    v11 = *(v10 - 8);
    v12 = *(v11 + 56);
    *(v0 + 272) = v12;
    *(v0 + 280) = (v11 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v12(v6, 1, 1, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v8, v7);
    *(inited + 40) = v14;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v15;
    *(v0 + 304) = v16;
    *(v0 + 320) = v17;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:), v19, v18);
  }
}

{
  v80 = *(v0 + 320);
  v73 = *(v0 + 288);
  v76 = *(v0 + 256);
  v78 = *(v0 + 304);
  v74 = *(v0 + 248);
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v4 = *(v0 + 200);
  v3 = *(v0 + 208);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  v7 = *(v0 + 160);
  v72 = *(v0 + 152);

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
  *(v6 + 16) = 15109;
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
  v16 = *(v0 + 320);
  v17 = *(v0 + 296);
  v18 = *(v0 + 304);
  v19 = *(v0 + 288);
  v20 = *(v0 + 152);
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

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v20, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 160);
  v24 = *(v0 + 144);
  v25 = (*(v0 + 176) + *(*(v0 + 168) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 144);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = (*(v0 + 176) + *(*(v0 + 168) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 272);
    v34 = *(v0 + 264);
    v35 = *(v0 + 192);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 136);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 192), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 160);
  v38 = *(v0 + 128);
  outlined init with take of URL?(*(v0 + 192), *(v0 + 176) + *(*(v0 + 168) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 128);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 160);
  v43 = *(v0 + 120);
  *(*(v0 + 176) + *(*(v0 + 168) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 120);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v14[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 160);
  v48 = *(v0 + 112);
  *(*(v0 + 176) + *(*(v0 + 168) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 112);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v14[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 160);
  v55 = *(v0 + 104);
  v56 = (*(v0 + 176) + *(*(v0 + 168) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 104);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v14[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.GoToPlaylistFolderItem.Context(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 296);
  v63 = *(v0 + 304);
  v65 = *(v0 + 288);
  v66 = *(v0 + 240);
  v67 = *(v0 + 224);
  v68 = *(v0 + 208);
  v69 = *(v0 + 184);
  v70 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:), 0, 0);
}