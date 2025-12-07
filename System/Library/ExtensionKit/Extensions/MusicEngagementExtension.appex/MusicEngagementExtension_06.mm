uint64_t (*Actions.ShowSongCredits.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.ShowSongCredits.Context()
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

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.ShowSongCredits.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E6F666E69;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E6F666E69;
  *(v1 + 24) = 0xEB00000000656C63;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

__n128 static Actions.GoToAlbum.action(context:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v16 = *a1;
  outlined init with copy of TaskPriority?(&v16, &v15, &_sSSSgMd, &_sSSSgMR);

  v12 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v12;
  result = a1[2];
  v14 = a1[3];
  *(a6 + 32) = result;
  *(a6 + 48) = v14;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
  return result;
}

uint64_t closure #2 in static Actions.GoToArtist.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 32) + **(a2 + 32));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v5();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.GoToAlbum@<X0>(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 56);
  *a6 = *a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = v7;
  *(a6 + 24) = *(a1 + 24);
  *(a6 + 40) = *(a1 + 40);
  *(a6 + 56) = v8;
  *(a6 + 64) = a2;
  *(a6 + 72) = a3;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0x4014000000000000;
  *(a6 + 96) = a4;
  *(a6 + 104) = 0;
  *(a6 + 112) = a5;
  *(a6 + 120) = 0;
}

uint64_t Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a10 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a10;
  *(v21 + 24) = a11;
  outlined init with take of URL?(a8, v21 + v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (*(v19 + 32))(v21 + v20, a1, a10);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a6;
  a9[5] = a7;
  a9[6] = a13;
  a9[7] = v21;
  return result;
}

uint64_t closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)()
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
    *(inited + 56) = xmmword_1004F2F20;
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

    return _swift_task_switch(closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:), v19, v18);
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
  *(v6 + 16) = 14853;
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

  return _swift_task_switch(closure #1 in Actions.Collaborate.Context.init(playlist:canCollaborateOnPlaylist:collaborate:metricsReportingContext:), 0, 0);
}

uint64_t Actions.GoToAlbum.Context.menuItemTitle.getter(uint64_t a1, uint64_t a2)
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

uint64_t protocol witness for ActionMenuItemConfiguring.menuItemTitle.getter in conformance Actions.GoToAlbum.Context(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  outlined init with take of URL?(a6, v21 + v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  a9[4] = a11;
  a9[5] = v21;
  return result;
}

uint64_t closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)()
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

    return _swift_task_switch(closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:), v19, v18);
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
  *(v6 + 16) = 13061;
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

  return _swift_task_switch(closure #5 in Actions.DeleteOrRemoveDownload.Context.init<A>(item:library:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t type metadata accessor for Actions.GoToPlaylistFolderItem.Context(uint64_t a1)
{
  result = type metadata singleton initialization cache for Actions.GoToPlaylistFolderItem.Context;
  if (!type metadata singleton initialization cache for Actions.GoToPlaylistFolderItem.Context)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of Actions.GoToPlaylistFolderItem.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Actions.GoToPlaylistFolderItem.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000883C4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Actions.GoToPlaylistFolderItem.Context.init(playlistEntry:playlistFolderItem:canGoToPlaylistFolderItem:goToPlaylistFolderItem:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t partial apply for closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)()
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

  return closure #1 in Actions.ShowSongCredits.Context.init<A>(item:canShowSongCredits:showSongCredits:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_100088874()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v2 - 8) + 80)) & ~*(*(v2 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.GoToArtist.Context.init<A>(item:subtitle:canGoToArtist:goToArtist:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t objectdestroyTm_4()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
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

uint64_t partial apply for closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)()
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

  return closure #1 in Actions.ViewFullLyrics.Context.init<A>(item:canViewFullLyrics:viewFullLyrics:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t specialized Actions.ViewFullLyrics.Context.menuItemTitle.getter()
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100089034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Playlist.Folder.Item();
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

uint64_t sub_100089104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Playlist.Folder.Item();
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

unint64_t type metadata completion function for Actions.GoToPlaylistFolderItem.Context(uint64_t a1)
{
  result = type metadata accessor for Playlist.Folder.Item();
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

uint64_t getEnumTagSinglePayload for Actions.GoToAlbum.Context(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Actions.GoToAlbum.Context(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with take of Actions.GoToPlaylistFolderItem.Context(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t static Actions.OpenInClassical.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 35;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.OpenInClassical.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.OpenInClassical.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.OpenInClassical@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 35;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.OpenInClassical.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.OpenInClassical.action(context:);
  *(a2 + 104) = 0;
}

uint64_t Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t (**a4)()@<X8>)
{
  v62 = a3;
  v63 = a4;
  v60 = a2;
  v64 = type metadata accessor for Album();
  v5 = *(v64 - 8);
  __chkstk_darwin();
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v6;
  __chkstk_darwin();
  v58 = &v50 - v7;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR) - 8);
  __chkstk_darwin();
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v50 - v13;
  __chkstk_darwin();
  v55 = &v50 - v14;
  v65 = v15;
  __chkstk_darwin();
  v17 = (&v50 - v16);
  v18 = a1;
  v19 = Album.catalogID.getter();
  if (v20)
  {
    static ClassicalBridge.generatePrestoURL(type:storeAdamID:)(1, v19, v20, v11);

    (*(v9 + 32))(v17, v11, v8);
  }

  else
  {
    lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error();
    v21 = swift_allocError();
    *v22 = 2;
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *(v22 + 24) = 0;
    *(v22 + 32) = 2;
    swift_willThrow();
    *v17 = v21;
  }

  swift_storeEnumTagMultiPayload();
  v23 = *(v5 + 16);
  v24 = v58;
  v53 = v18;
  v25 = v64;
  v23(v58, v18, v64);
  v26 = v55;
  outlined init with copy of TaskPriority?(v17, v55, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  v27 = *(v5 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = *(v56 + 80);
  v30 = v65;
  v31 = (v66 + v29 + v28) & ~v29;
  v50 = v29 | 7;
  v54 = v29 | 7 | v27;
  v32 = swift_allocObject();
  v51 = *(v5 + 32);
  v52 = v5 + 32;
  v33 = v32 + v28;
  v34 = v32;
  v56 = v32;
  v51(v33, v24, v25);
  outlined init with take of URL?(v26, v34 + v31, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  v35 = v57;
  outlined init with copy of TaskPriority?(v17, v57, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  v36 = (v29 + 16) & ~v29;
  v37 = swift_allocObject();
  outlined init with take of URL?(v35, v37 + v36, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  outlined init with take of PresentationSource(v60, v37 + ((v30 + v36 + 7) & 0xFFFFFFFFFFFFFFF8));
  v38 = v59;
  outlined init with take of URL?(v17, v59, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  v39 = v61;
  v40 = v64;
  v41 = v51;
  v51(v61, v53, v64);
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v43 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v44 = (*(v42 + 64) + v29 + v43) & ~v29;
  v45 = (v65 + v27 + v44) & ~v27;
  v46 = swift_allocObject();
  outlined init with take of URL?(v62, v46 + v43, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined init with take of URL?(v38, v46 + v44, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  result = v41(v46 + v45, v39, v40);
  v48 = v63;
  v49 = v56;
  *v63 = partial apply for closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  v48[1] = v49;
  v48[2] = &async function pointer to partial apply for closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  v48[3] = v37;
  v48[4] = &async function pointer to partial apply for closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  v48[5] = v46;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClassicalBridge.Error and conformance ClassicalBridge.Error()
{
  result = lazy protocol witness table cache variable for type ClassicalBridge.Error and conformance ClassicalBridge.Error;
  if (!lazy protocol witness table cache variable for type ClassicalBridge.Error and conformance ClassicalBridge.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassicalBridge.Error and conformance ClassicalBridge.Error);
  }

  return result;
}

unint64_t closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  __chkstk_darwin();
  v4 = (v9 - v3);
  if ((Album.isClassicalExperienceAvailable.getter() & 1) == 0)
  {
    return 0xD000000000000021;
  }

  outlined init with copy of TaskPriority?(a2, v4, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v4;
    v10 = 0;
    v11 = 0xE000000000000000;
    _StringGuts.grow(_:)(43);
    v6._countAndFlagsBits = 0xD000000000000028;
    v6._object = 0x80000001004C6790;
    String.append(_:)(v6);
    v9[1] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    v7._countAndFlagsBits = 41;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    return v10;
  }

  else
  {
    outlined destroy of TaskPriority?(v4, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
    return 0;
  }
}

uint64_t sub_100089CFC()
{
  v1 = type metadata accessor for Album();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v1 = *(type metadata accessor for Album() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v0 + v2, v5);
}

uint64_t closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return _swift_task_switch(closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), v5, v4);
}

uint64_t closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  outlined init with copy of TaskPriority?(v0[2], v0[5], &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = v0[5];

    outlined destroy of TaskPriority?(v1, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);

    v2 = v0[1];

    return v2();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[12] = Strong;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
    v6 = v0[8];

    return specialized static ClassicalBridge.openPrestoOrStoreSheet(withURL:viewController:)(v6, Strong);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  *(*v1 + 112) = v0;

  v4 = *(v2 + 88);
  v5 = *(v2 + 80);
  if (v0)
  {
    v6 = closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  }

  else
  {
    v6 = closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v6, v5, v4);
}

{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10008A4A4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v4 = type metadata accessor for URL();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  v5 = v0 + v3;
  swift_unknownObjectWeakDestroy();
  v6 = *(v0 + v3 + 48);
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

uint64_t partial apply for closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2)
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
  v2[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v2[32] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[33] = v3;
  v2[34] = *(v3 - 8);
  v2[35] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  outlined init with copy of TaskPriority?(*(v0 + 112), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 256), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 224);
    v7 = *(v0 + 120);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 256), *(v0 + 280), type metadata accessor for Actions.MetricsReportingContext);
    outlined init with copy of TaskPriority?(v7, v6, &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v9 = *(v0 + 248);
    v10 = *(v0 + 224);
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 224), &_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    }

    else
    {
      v12 = type metadata accessor for URL();
      v13 = *(v12 - 8);
      (*(v13 + 32))(v9, v10, v12);
      (*(v13 + 56))(v9, 0, 1, v12);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    *(v0 + 104) = type metadata accessor for Album();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVmMd, &_s8MusicKit5AlbumVmMR);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    specialized Collection.prefix(_:)(1, v15, v16);
    v18 = Substring.lowercased()();

    v19 = specialized Collection.dropFirst(_:)(1uLL, v15, v17);
    v21 = v20;
    v23 = v22;
    v25 = v24;

    *(v0 + 72) = v19;
    *(v0 + 80) = v21;
    *(v0 + 88) = v23;
    *(v0 + 96) = v25;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();

    *(inited + 32) = v18;
    *(inited + 48) = 0;
    *(v0 + 288) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 296) = v26;
    *(v0 + 304) = v27;
    *(v0 + 320) = v28;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 312) = static MainActor.shared.getter();
    v30 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), v30, v29);
  }
}

{
  v80 = *(v0 + 320);
  v78 = *(v0 + 304);
  v75 = *(v0 + 288);
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v7 = *(v0 + 184);
  v74 = *(v0 + 176);

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
  *v6 = 0xD000000000000014;
  *(v6 + 8) = 0x80000001004C6740;
  *(v6 + 16) = 7173;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v76 = v10;
  *(v6 + v5[8]) = v8;
  v13 = (v6 + v5[9]);
  v77 = v9;
  *v13 = v9;
  v13[1] = v10;
  v14 = v6 + v5[10];
  *v14 = v75;
  *(v14 + 16) = v78;
  *(v14 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v74, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v79 = *(*(v15 - 1) + 48);
  v16 = v79(v74, 1, v15);
  v17 = *(v0 + 320);
  v18 = *(v0 + 296);
  v19 = *(v0 + 304);
  v20 = *(v0 + 288);
  v21 = *(v0 + 176);
  if (v16 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v77, v76);

    outlined copy of MetricsEvent.Click.ActionDetails(v20, v18, v19, v17, SBYTE1(v17));
    outlined destroy of TaskPriority?(v21, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v22 = v11;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v25 = v11;
    v23 = *v21;
    v24 = v21[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v77, v76);

    outlined copy of MetricsEvent.Click.ActionDetails(v20, v18, v19, v17, SBYTE1(v17));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v21, type metadata accessor for MetricsEvent.Page);
    v22 = v25;
  }

  v26 = *(v0 + 184);
  v27 = *(v0 + 168);
  v28 = (*(v0 + 200) + *(*(v0 + 192) + 48));
  *v28 = v23;
  v28[1] = v24;
  outlined init with copy of TaskPriority?(v26, v27, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v29 = v79(v27, 1, v15);
  v30 = *(v0 + 168);
  if (v29 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v30, type metadata accessor for MetricsEvent.Page);
  }

  v33 = *(v0 + 184);
  v34 = *(v0 + 160);
  v35 = (*(v0 + 200) + *(*(v0 + 192) + 52));
  *v35 = v31;
  v35[1] = v32;
  outlined init with copy of TaskPriority?(v33, v34, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v36 = v79(v34, 1, v15);
  v37 = *(v0 + 232);
  v38 = *(v0 + 160);
  if (v36 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v39 = type metadata accessor for URL();
    (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  }

  else
  {
    outlined init with copy of TaskPriority?(v38 + v15[6], *(v0 + 232), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v38, type metadata accessor for MetricsEvent.Page);
  }

  v40 = *(v0 + 184);
  v41 = *(v0 + 152);
  outlined init with take of URL?(*(v0 + 232), *(v0 + 200) + *(*(v0 + 192) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v40, v41, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v42 = v79(v41, 1, v15);
  v43 = *(v0 + 152);
  if (v42 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 152), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v44 = 0;
  }

  else
  {
    v44 = *(v43 + v15[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v43, type metadata accessor for MetricsEvent.Page);
  }

  v45 = *(v0 + 184);
  v46 = *(v0 + 144);
  *(*(v0 + 200) + *(*(v0 + 192) + 60)) = v44;
  outlined init with copy of TaskPriority?(v45, v46, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v47 = v79(v46, 1, v15);
  v48 = *(v0 + 144);
  if (v47 == 1)
  {
    outlined destroy of TaskPriority?(v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v49 = 1;
  }

  else
  {
    v49 = *(v48 + v15[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v48, type metadata accessor for MetricsEvent.Page);
  }

  v50 = *(v0 + 184);
  v51 = *(v0 + 136);
  *(*(v0 + 200) + *(*(v0 + 192) + 64)) = v49;
  outlined init with copy of TaskPriority?(v50, v51, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v52 = v79(v51, 1, v15);
  v53 = *(v0 + 136);
  if (v52 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = (v53 + v15[8]);
    v54 = *v56;
    v55 = v56[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v53, type metadata accessor for MetricsEvent.Page);
  }

  v57 = *(v0 + 184);
  v58 = *(v0 + 128);
  v59 = (*(v0 + 200) + *(*(v0 + 192) + 72));
  *v59 = v54;
  v59[1] = v55;
  outlined init with take of URL?(v57, v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v60 = v79(v58, 1, v15);
  v61 = *(v0 + 128);
  if (v60 == 1)
  {
    outlined destroy of TaskPriority?(v61, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v62 = 2;
  }

  else
  {
    v62 = *(v61 + v15[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 200);
  v64 = *(v0 + 208);
  v65 = *(v0 + 192);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v22;
  outlined init with take of Actions.MetricsReportingContext(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 296);
  v66 = *(v0 + 304);
  v68 = *(v0 + 280);
  v69 = *(v0 + 288);
  v70 = *(v0 + 264);
  v71 = *(v0 + 208);
  v72 = *(v0 + 320);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v70 + 24)), *(v68 + *(v70 + 24) + 8), *(v68 + *(v70 + 36)), *(v68 + *(v70 + 36) + 8), *(v68 + *(v70 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v69, v67, v66, v72, SBYTE1(v72));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v71, type metadata accessor for MetricsEvent.Click);

  return _swift_task_switch(closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = v0[35];
  outlined destroy of TaskPriority?(v0[31], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v1, type metadata accessor for Actions.MetricsReportingContext);

  v2 = v0[1];

  return v2();
}

uint64_t sub_10008B6F0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR);
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = *(*(v4 - 8) + 64);
  v8 = type metadata accessor for Album();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v0 + v2;
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v23 = v7;
    v24 = v8;
    if (*(v11 + 8) >= 0xDuLL)
    {
    }

    v13 = v11 + *(v12 + 20);
    v14 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {

      v15 = *(v14 + 24);
      v16 = type metadata accessor for URL();
      v21 = *(v16 - 8);
      v22 = v15;
      v17 = v13 + v15;
      v18 = v16;
      if (!(*(v21 + 48))(v17, 1, v16))
      {
        (*(v21 + 8))(v13 + v22, v18);
      }
    }

    v7 = v23;
    v8 = v24;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 8))(v0 + v6, v19);
  }

  (*(v9 + 8))(v0 + ((v6 + v7 + v10) & ~v10), v8);

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy10Foundation3URLVs5Error_pGMd, &_ss6ResultOy10Foundation3URLVs5Error_pGMR) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  type metadata accessor for Album();
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.OpenInClassical.Context.init(album:presentationSource:metricsReportingContext:)(v0 + v3, v0 + v6);
}

uint64_t (*Actions.OpenInClassical.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.OpenInClassical.Context())()
{
  v0 = swift_allocObject();
  strcpy((v0 + 16), "arrow.up.right");
  *(v0 + 31) = -18;
  v1 = swift_allocObject();
  strcpy((v1 + 16), "arrow.up.right");
  *(v1 + 31) = -18;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t specialized Actions.OpenInClassical.Context.menuItemTitle.getter()
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

uint64_t sub_10008BF70()
{

  return swift_deallocObject();
}

uint64_t static Actions.ReportConcern.action(context:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 6);
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = closure #1 in static Actions.ReportConcern.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &async function pointer to closure #2 in static Actions.ReportConcern.action(context:);
  *(a2 + 96) = 0;
  *(a2 + 104) = &async function pointer to closure #3 in static Actions.ReportConcern.action(context:);
  *(a2 + 112) = 0;
}

uint64_t closure #2 in static Actions.ReportConcern.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return v5();
}

uint64_t closure #3 in static Actions.ReportConcern.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 40) + **(a1 + 40));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.ReportConcern@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 6);
  *a2 = *a1;
  *(a2 + 8) = v3;
  v5 = *(a1 + 2);
  *(a2 + 16) = *(a1 + 1);
  *(a2 + 32) = v5;
  *(a2 + 48) = v4;
  *(a2 + 56) = v2;
  *(a2 + 64) = closure #1 in static Actions.ReportConcern.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &async function pointer to closure #2 in static Actions.ReportConcern.action(context:);
  *(a2 + 96) = 0;
  *(a2 + 104) = &async function pointer to closure #3 in static Actions.ReportConcern.action(context:);
  *(a2 + 112) = 0;
}

uint64_t (*Actions.ReportConcern.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C67C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C67C0;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.ReportConcern.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000016;
  *(v0 + 24) = 0x80000001004C67C0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000016;
  *(v1 + 24) = 0x80000001004C67C0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v17 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v18 = (*(v16 + 64) + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  result = outlined init with take of URL?(a11, v19 + v17, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v21 = (v19 + v18);
  *v21 = a1;
  v21[1] = a2;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v22 = a3;
  v22[1] = a4;
  *a9 = a5;
  *(a9 + 8) = a6;
  *(a9 + 16) = a7;
  *(a9 + 24) = a8;
  *(a9 + 32) = a10;
  *(a9 + 40) = &async function pointer to partial apply for closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:);
  *(a9 + 48) = v19;
  return result;
}

uint64_t closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for MetricsEvent.Click(0);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v5[31] = swift_task_alloc();
  v6 = type metadata accessor for Actions.MetricsReportingContext(0);
  v5[32] = v6;
  v5[33] = *(v6 - 8);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  outlined init with copy of TaskPriority?(*(v0 + 96), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 248), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 240);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 248), *(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);
    v9 = type metadata accessor for URL();
    *(v0 + 280) = v9;
    v10 = *(v9 - 8);
    v11 = *(v10 + 56);
    *(v0 + 288) = v11;
    *(v0 + 296) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v6, 1, 1, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2EF0;
    *(inited + 32) = v8;
    *(inited + 40) = v7;
    *(inited + 48) = 0;
    *(inited + 56) = xmmword_1004F2F40;
    *(inited + 72) = 3;

    *(v0 + 304) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 312) = v13;
    *(v0 + 320) = v14;
    *(v0 + 336) = v15;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 328) = static MainActor.shared.getter();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:), v17, v16);
  }
}

{
  v80 = *(v0 + 336);
  v79 = *(v0 + 320);
  v77 = *(v0 + 304);
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v4 = *(v0 + 232);
  v3 = *(v0 + 240);
  v5 = *(v0 + 200);
  v6 = *(v0 + 208);
  v7 = *(v0 + 192);
  v74 = *(v0 + 112);
  v72 = *(v0 + 184);
  v73 = *(v0 + 104);

  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v8 = *(v1 + v2[7]);
  v10 = *v1;
  v9 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v76 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v11 = (v6 + v5[20]);
  *v11 = 0;
  v11[1] = 0;
  *v6 = v73;
  *(v6 + 8) = v74;
  *(v6 + 16) = 10501;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v75 = v9;
  *(v6 + v5[8]) = v8;
  v12 = (v6 + v5[9]);
  *v12 = v10;
  v12[1] = v9;
  v13 = v6 + v5[10];
  *v13 = v77;
  *(v13 + 16) = v79;
  *(v13 + 24) = v80;
  outlined init with copy of TaskPriority?(v7, v72, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v78 = type metadata accessor for MetricsEvent.Page(0);
  v81 = *(*(v78 - 1) + 48);
  v14 = v81(v72, 1);
  v15 = *(v0 + 336);
  v17 = *(v0 + 312);
  v16 = *(v0 + 320);
  v18 = *(v0 + 304);
  v19 = *(v0 + 184);
  if (v14 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v10, v9);
    v20 = v76;

    outlined copy of MetricsEvent.Click.ActionDetails(v18, v17, v16, v15, SBYTE1(v15));
    outlined destroy of TaskPriority?(v19, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    v22 = v19[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v10, v75);
    v20 = v76;

    outlined copy of MetricsEvent.Click.ActionDetails(v18, v17, v16, v15, SBYTE1(v15));

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v19, type metadata accessor for MetricsEvent.Page);
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 176);
  v25 = (*(v0 + 208) + *(*(v0 + 200) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = (v81)(v24, 1, v78);
  v27 = *(v0 + 176);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 176), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 192);
  v31 = *(v0 + 168);
  v32 = (*(v0 + 208) + *(*(v0 + 200) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if ((v81)(v31, 1, v78) == 1)
  {
    v33 = *(v0 + 288);
    v34 = *(v0 + 280);
    v35 = *(v0 + 224);
    outlined destroy of TaskPriority?(*(v0 + 168), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 168);
    outlined init with copy of TaskPriority?(v36 + v78[6], *(v0 + 224), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 192);
  v38 = *(v0 + 160);
  outlined init with take of URL?(*(v0 + 224), *(v0 + 208) + *(*(v0 + 200) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = (v81)(v38, 1, v78);
  v40 = *(v0 + 160);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 160), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v78[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 192);
  v43 = *(v0 + 152);
  *(*(v0 + 208) + *(*(v0 + 200) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = (v81)(v43, 1, v78);
  v45 = *(v0 + 152);
  if (v44 == 1)
  {
    outlined destroy of TaskPriority?(v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v46 = 1;
  }

  else
  {
    v46 = *(v45 + v78[9]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v45, type metadata accessor for MetricsEvent.Page);
  }

  v47 = *(v0 + 192);
  v48 = *(v0 + 144);
  *(*(v0 + 208) + *(*(v0 + 200) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = (v81)(v48, 1, v78);
  v50 = *(v0 + 144);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v51 = 0;
    v52 = 0;
  }

  else
  {
    v53 = (v50 + v78[8]);
    v51 = *v53;
    v52 = v53[1];

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v50, type metadata accessor for MetricsEvent.Page);
  }

  v54 = *(v0 + 192);
  v55 = *(v0 + 136);
  v56 = (*(v0 + 208) + *(*(v0 + 200) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = (v81)(v55, 1, v78);
  v58 = *(v0 + 136);
  if (v57 == 1)
  {
    outlined destroy of TaskPriority?(v58, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v59 = 2;
  }

  else
  {
    v59 = *(v58 + v78[11]);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 208);
  v61 = *(v0 + 216);
  v62 = *(v0 + 200);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v20;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 312);
  v63 = *(v0 + 320);
  v65 = *(v0 + 304);
  v66 = *(v0 + 272);
  v67 = *(v0 + 256);
  v68 = *(v0 + 240);
  v69 = *(v0 + 216);
  v70 = *(v0 + 336);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 272), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized Actions.ReportConcern.Context.menuItemTitle.getter()
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

uint64_t sub_10008D5C8()
{

  return swift_deallocObject();
}

uint64_t sub_10008D600()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    if (*(v2 + 8) >= 0xDuLL)
    {
    }

    v4 = v2 + *(v3 + 20);
    v5 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
    {

      v6 = *(v5 + 24);
      v7 = type metadata accessor for URL();
      v8 = *(v7 - 8);
      v12 = v6;
      v9 = v4 + v6;
      v10 = v7;
      if (!(*(v8 + 48))(v9, 1, v7))
      {
        (*(v8 + 8))(v4 + v12, v10);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v0 + v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v5);
  v10 = *(v0 + v5 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.ReportConcern.Context.init(contentID:contentType:actionType:canReportConcern:reportConcern:metricsReportingContext:)(v0 + v3, v7, v8, v9, v10);
}

uint64_t Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v89 = a7;
  v85 = a5;
  v83 = a4;
  v87 = a8;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v84 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v71 - v14;
  v16 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  __chkstk_darwin();
  v82 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v17;
  __chkstk_darwin();
  v19 = &v71 - v18;
  v86 = a2;
  if (a2 != 3)
  {
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *a3;
  v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v21 + v22))
  {
    v79 = v16;
    v77 = v19;
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v23 = v90;
    v15 = v20;
    if (v90)
    {
      v24 = [v90 tracklist];

      v25 = [v24 insertCommand];
      v16 = v79;
      if (!v25 || (v26 = [v25 insertAfterLastSection], swift_unknownObjectRelease(), !v26))
      {
LABEL_12:
        v80 = 0;
        v81 = 0;
        v19 = v77;
        goto LABEL_20;
      }

      v27 = [v26 section];
      swift_unknownObjectRelease();
      v28 = [v27 metadataObject];

      if (v28)
      {
        v29 = [v28 flattenedGenericObject];

        v16 = v79;
        if (v29)
        {
          v30 = [v29 anyObject];

          if (v30)
          {
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            v19 = v77;
            if (v31)
            {
              v32 = [v31 title];
            }

            else
            {
              objc_opt_self();
              v33 = swift_dynamicCastObjCClass();
              if (!v33)
              {
LABEL_18:

LABEL_19:
                v80 = 0;
                v81 = 0;
                goto LABEL_20;
              }

              v32 = [v33 name];
            }

            v34 = v32;
            if (v34)
            {
              v35 = v34;
              v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v80 = v37;
              v81 = v36;

              v19 = v77;
              goto LABEL_20;
            }

            goto LABEL_18;
          }
        }

        goto LABEL_12;
      }
    }

    v80 = 0;
    v81 = 0;
    v19 = v77;
    v16 = v79;
    goto LABEL_20;
  }

  v80 = 0;
  v81 = 0;
  v15 = v20;
LABEL_20:
  v38 = v13;
  v75 = type metadata accessor for Actions.PlaybackContext;
  outlined init with copy of Actions.PlaybackContext(a3, v19, type metadata accessor for Actions.PlaybackContext);
  (*(v12 + 16))(v15, a1, a6);
  v39 = a6;
  v40 = *(v16 + 80);
  v76 = a1;
  v41 = (v40 + 32) & ~v40;
  v74 = v40 | 7;
  v42 = v12;
  v43 = *(v12 + 80);
  v44 = a3;
  v78 = a3;
  v45 = (v88 + v43 + v41) & ~v43;
  v77 = (v38 + 7);
  v46 = (v38 + 7 + v45) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v72 = v39;
  v48 = v89;
  *(v47 + 16) = v39;
  *(v47 + 24) = v48;
  v71 = type metadata accessor for Actions.PlaybackContext;
  v49 = v47 + v41;
  v50 = v47;
  outlined init with take of Actions.PlaybackContext(v19, v49, type metadata accessor for Actions.PlaybackContext);
  v73 = *(v42 + 32);
  v51 = v50 + v45;
  v52 = v50;
  v79 = v50;
  v73(v51, v15, v39);
  v53 = v86;
  *(v52 + v46) = v86;
  v54 = v82;
  outlined init with copy of Actions.PlaybackContext(v44, v82, v75);
  v55 = (v40 + 16) & ~v40;
  v56 = (v88 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  outlined init with take of Actions.PlaybackContext(v54, v57 + v55, v71);
  *(v57 + v56) = v53;
  outlined init with take of PresentationSource(v83, v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8));
  v58 = v84;
  v59 = v72;
  v60 = v73;
  v73(v84, v76, v72);
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v63 = (*(v61 + 64) + v43 + v62) & ~v43;
  v64 = &v77[v63] & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  v66 = v89;
  *(v65 + 16) = v59;
  *(v65 + 24) = v66;
  outlined init with take of URL?(v85, v65 + v62, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v60(v65 + v63, v58, v59);
  *(v65 + v64) = v53;
  outlined copy of Player.InsertCommand.Location(v53);
  outlined copy of Player.InsertCommand.Location(v53);
  outlined copy of Player.InsertCommand.Location(v53);
  result = outlined destroy of Actions.PlaybackContext(v78, type metadata accessor for Actions.PlaybackContext);
  v68 = v87;
  v69 = v80;
  v70 = v81;
  *v87 = v53;
  v68[1] = v70;
  v68[2] = v69;
  v68[3] = partial apply for closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  v68[4] = v79;
  v68[5] = &async function pointer to partial apply for closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  v68[6] = v57;
  v68[7] = &async function pointer to partial apply for closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  v68[8] = v65;
  return result;
}

__n128 static Actions.Queue.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  specialized static Actions.Queue.action(context:)(a1, v7);
  v3 = v7[7];
  *(a2 + 96) = v7[6];
  *(a2 + 112) = v3;
  *(a2 + 128) = v8;
  v4 = v7[3];
  *(a2 + 32) = v7[2];
  *(a2 + 48) = v4;
  v5 = v7[5];
  *(a2 + 64) = v7[4];
  *(a2 + 80) = v5;
  result = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = *(a7 - 8);
  v20 = (v18 + *(v17 + 64) + *(v19 + 80)) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a7;
  *(v21 + 24) = a8;
  outlined init with take of URL?(a6, v21 + v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (*(v19 + 32))(v21 + v20, a1, a7);
  *a9 = a2;
  a9[1] = a3;
  a9[2] = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  a9[3] = v16;
  a9[4] = &async function pointer to partial apply for closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:);
  a9[5] = v21;
  return result;
}

uint64_t closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)()
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
    outlined init with take of Actions.PlaybackContext(*(v0 + 216), *(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);
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

    return _swift_task_switch(closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:), v19, v18);
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
  *(v6 + 16) = 15621;
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

    outlined destroy of Actions.PlaybackContext(v20, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v27, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v36, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v40, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v45, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v50, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 176);
  v61 = *(v0 + 184);
  v62 = *(v0 + 168);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.PlaybackContext(v60, v61, type metadata accessor for MetricsEvent.Click);
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
  outlined destroy of Actions.PlaybackContext(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 240), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Preview.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Preview.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0x7269632E79616C70;
  *(v0 + 24) = 0xEB00000000656C63;
  v1 = swift_allocObject();
  *(v1 + 16) = 0x7269632E79616C70;
  *(v1 + 24) = 0xEB00000000656C63;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  type metadata accessor for Actions.PlaybackContext(0);
  __chkstk_darwin();
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal07GenericA4ItemOSgMd, &_s16MusicKitInternal07GenericA4ItemOSgMR);
  __chkstk_darwin();
  v11 = &v38 - v10;
  v12 = type metadata accessor for GenericMusicItem();
  *&v38 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v15 + v16))
  {
    outlined destroy of TaskPriority?(a3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    v27 = a2;
    goto LABEL_9;
  }

  *&v39 = a3;
  *&v40 = a2;
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v17 = v44;
  if (!v44 || (v18 = [v44 tracklist], v17, v19 = objc_msgSend(v18, "playingItem"), v18, !v19) || (v20 = objc_msgSend(v19, "metadataObject"), v19, !v20))
  {

    outlined destroy of TaskPriority?(v39, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    v27 = v40;
LABEL_9:
    outlined destroy of PresentationSource(v27);
    result = outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
    goto LABEL_10;
  }

  v21 = [v20 innermostModelObject];

  v22 = v21;
  GenericMusicItem.init(_:)();
  v23 = v38;
  if ((*(v38 + 48))(v11, 1, v12) == 1)
  {

    outlined destroy of TaskPriority?(v39, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    outlined destroy of PresentationSource(v40);
    outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
    v24 = &_s16MusicKitInternal07GenericA4ItemOSgMd;
    v25 = &_s16MusicKitInternal07GenericA4ItemOSgMR;
    v26 = v11;
  }

  else
  {
    (*(v23 + 32))(v14, v11, v12);
    creatableStationMusicItem #1 (genericMusicItem:) in Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)(v14, &v44);

    (*(v23 + 8))(v14, v12);
    if (*(&v45 + 1))
    {
      outlined init with take of ActionPerforming(&v44, v41);
      v32 = v42;
      v33 = v43;
      __swift_project_boxed_opaque_existential_0Tm(v41, v42);
      v34 = __chkstk_darwin();
      v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v36, v34);
      outlined init with copy of Actions.PlaybackContext(a1, v9, type metadata accessor for Actions.PlaybackContext);
      Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v36, v9, v40, v39, v32, v33, &v44);
      v39 = v45;
      v40 = v44;
      v38 = v46;
      outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
      result = __swift_destroy_boxed_opaque_existential_0Tm(v41);
      v31 = v38;
      v30 = v39;
      v29 = v40;
      goto LABEL_11;
    }

    outlined destroy of TaskPriority?(v39, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    outlined destroy of PresentationSource(v40);
    outlined destroy of Actions.PlaybackContext(a1, type metadata accessor for Actions.PlaybackContext);
    v24 = &_s8MusicKit0A4Item_pSgMd;
    v25 = &_s8MusicKit0A4Item_pSgMR;
    v26 = &v44;
  }

  result = outlined destroy of TaskPriority?(v26, v24, v25);
LABEL_10:
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
LABEL_11:
  *a4 = v29;
  a4[1] = v30;
  a4[2] = v31;
  return result;
}

uint64_t creatableStationMusicItem #1 (genericMusicItem:) in Actions.CreateStation.Context.init(playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song();
  v23 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GenericMusicItem();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin();
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v11, v13);
  v16 = (*(v12 + 88))(v15, v11);
  if (v16 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v12 + 96))(v15, v11);
    v17 = *(v5 + 32);
    v17(v7, v15, v4);
    *(a2 + 24) = v4;
    *(a2 + 32) = &protocol witness table for Artist;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v17)(boxed_opaque_existential_1, v7, v4);
  }

  else if (v16 == enum case for GenericMusicItem.song(_:))
  {
    (*(v12 + 96))(v15, v11);
    v20 = *(v23 + 32);
    v20(v10, v15, v8);
    *(a2 + 24) = v8;
    *(a2 + 32) = &protocol witness table for Song;
    v21 = __swift_allocate_boxed_opaque_existential_1(a2);
    return (v20)(v21, v10, v8);
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (**a7)()@<X8>)
{
  v68 = a4;
  v69 = a6;
  v62 = a3;
  v63 = a7;
  v55 = a2;
  v64 = a1;
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v67 = *(v59 + 64);
  __chkstk_darwin();
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v66 = &v50 - v11;
  v12 = *(a5 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v50 - v14;
  __chkstk_darwin();
  v16 = &v50 - v15;
  v50 = &v50 - v15;
  v17 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v65 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v50 - v19;
  outlined init with copy of Actions.PlaybackContext(a2, &v50 - v19, type metadata accessor for Actions.PlaybackContext);
  v70 = v12;
  v52 = *(v12 + 16);
  v52(v16, a1, a5);
  v21 = *(v17 + 80);
  v22 = (v21 + 32) & ~v21;
  v23 = *(v12 + 80);
  v24 = (v18 + v23 + v22) & ~v23;
  v54 = v23 | v21 | 7;
  v56 = v13;
  v25 = swift_allocObject();
  v26 = v69;
  *(v25 + 16) = a5;
  *(v25 + 24) = v26;
  v27 = v25 + v22;
  v28 = v25;
  v58 = v25;
  v51 = type metadata accessor for Actions.PlaybackContext;
  outlined init with take of Actions.PlaybackContext(v20, v27, type metadata accessor for Actions.PlaybackContext);
  v53 = *(v70 + 32);
  v70 += 32;
  v53(v28 + v24, v50, a5);
  v29 = v57;
  v52(v57, v64, a5);
  outlined init with take of Actions.PlaybackContext(v55, v65, type metadata accessor for Actions.PlaybackContext);
  outlined init with copy of TaskPriority?(v68, v66, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v30 = (v23 + 32) & ~v23;
  v31 = (v13 + v21 + v30) & ~v21;
  v32 = *(v59 + 80);
  v33 = (v31 + v18 + v32) & ~v32;
  v34 = (v67 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v69;
  *(v35 + 16) = a5;
  *(v35 + 24) = v36;
  v37 = v29;
  v38 = a5;
  v39 = a5;
  v40 = v53;
  v53(v35 + v30, v37, v38);
  outlined init with take of Actions.PlaybackContext(v65, v35 + v31, v51);
  outlined init with take of URL?(v66, v35 + v33, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined init with take of PresentationSource(v62, v35 + v34);
  v41 = v61;
  outlined init with take of URL?(v68, v61, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v42 = v60;
  v40(v60, v64, v39);
  v43 = (v32 + 32) & ~v32;
  v44 = (v67 + v23 + v43) & ~v23;
  v45 = swift_allocObject();
  v46 = v69;
  *(v45 + 16) = v39;
  *(v45 + 24) = v46;
  outlined init with take of URL?(v41, v45 + v43, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = (v40)(v45 + v44, v42, v39);
  v48 = v63;
  v49 = v58;
  *v63 = partial apply for closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  v48[1] = v49;
  v48[2] = &async function pointer to partial apply for closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  v48[3] = v35;
  v48[4] = &async function pointer to partial apply for closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  v48[5] = v45;
  return result;
}

uint64_t closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = type metadata accessor for Artist();
  v44 = *(v47 - 8);
  __chkstk_darwin();
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v49 = *(v7 - 8);
  __chkstk_darwin();
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Song();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin();
  v45 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v50 = &v42 - v11;
  __chkstk_darwin();
  v13 = &v42 - v12;
  v14 = *(a3 - 8);
  __chkstk_darwin();
  v53 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v42 - v16;
  v18 = *a1;
  v19 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v20 = *(v18 + v19);
  if (!v20)
  {
    *&v62 = 0;
    *(&v62 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    v26._countAndFlagsBits = 0xD000000000000020;
    v26._object = 0x80000001004C6930;
    String.append(_:)(v26);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return v62;
  }

  v43 = v7;
  v21 = *(v14 + 16);
  v21(v17, a2, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd, &_s9MusicCore18CatalogIDProviding_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v64 = 0;
    v62 = 0u;
    v63 = 0u;
    outlined destroy of TaskPriority?(&v62, &_s9MusicCore18CatalogIDProviding_pSgMd, &_s9MusicCore18CatalogIDProviding_pSgMR);
LABEL_11:

    v28 = 13;
    return v28 | 0xD000000000000010;
  }

  v42 = v14;
  outlined init with take of ActionPerforming(&v62, v70);
  v22 = v71;
  v23 = v72;
  __swift_project_boxed_opaque_existential_0Tm(v70, v71);
  (*(v23 + 8))(v22, v23);
  if (!v24)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    goto LABEL_11;
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v66 = v58;
  v67 = v59;
  v68 = v60;
  v69 = v61;
  v62 = v54;
  v63 = v55;
  v64 = v56;
  v65 = v57;
  if (v60 > 1u)
  {
    v25 = v42;
    if (v60 == 2)
    {

      goto LABEL_16;
    }
  }

  else
  {
    v25 = v42;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v29 & 1) == 0)
  {

    outlined destroy of ApplicationCapabilities(&v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    v28 = 5;
    return v28 | 0xD000000000000010;
  }

LABEL_16:
  if (specialized Set.contains(_:)(4u, v64))
  {
    if (BYTE1(v62) == 1)
    {
      v30 = v53;
      v21(v53, a2, a3);
      v31 = v52;
      if (swift_dynamicCast())
      {
        v32 = v50;
        v33 = v51;
        (*(v51 + 32))(v50, v13, v31);
        v34 = MPCPlaybackEngine.state<A>(for:)();
        v35 = *(v33 + 16);
        v36 = v45;
        v35(v45, v32, v31);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore0A9ItemStateCy0A3Kit4SongVGMd, &_s9MusicCore0A9ItemStateCy0A3Kit4SongVGMR);
        swift_allocObject();

        specialized MusicItemState.init(item:musicKitItemState:player:)(v36, v34, v20);

        __chkstk_darwin();
        *(&v42 - 2) = v31;
        *(&v42 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        __chkstk_darwin();
        *(&v42 - 2) = v31;
        *(&v42 - 1) = &protocol witness table for Song;
        swift_getKeyPath();
        v37 = v48;
        static Published.subscript.getter();

        v38 = MusicPlayer.PlayabilityStatus.actionSupportedStatus.getter();

        outlined destroy of ApplicationCapabilities(&v62);
        (*(v49 + 8))(v37, v43);
        (*(v51 + 8))(v50, v31);
        (*(v25 + 8))(v30, a3);
        __swift_destroy_boxed_opaque_existential_0Tm(v70);
        return v38;
      }

      else
      {
        v40 = v46;
        v39 = v47;
        v41 = swift_dynamicCast();

        outlined destroy of ApplicationCapabilities(&v62);
        if (v41)
        {
          (*(v44 + 8))(v40, v39);
          (*(v25 + 8))(v30, a3);
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          return 0;
        }

        else
        {
          (*(v25 + 8))(v30, a3);
          __swift_destroy_boxed_opaque_existential_0Tm(v70);
          return 0xD000000000000010;
        }
      }
    }

    else
    {

      outlined destroy of ApplicationCapabilities(&v62);
      __swift_destroy_boxed_opaque_existential_0Tm(v70);
      return 0xD000000000000017;
    }
  }

  else
  {

    outlined destroy of ApplicationCapabilities(&v62);
    __swift_destroy_boxed_opaque_existential_0Tm(v70);
    return 0xD000000000000016;
  }
}

uint64_t MusicPlayer.PlayabilityStatus.actionSupportedStatus.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v7 + 96))(v10, v6);
    (*(v3 + 32))(v5, v10, v2);
    v18 = 0;
    v19 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v12 = v18;
    (*(v3 + 8))(v5, v2);
  }

  else if (v11 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    return 0;
  }

  else
  {
    if (one-time initialization token for actions != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.actions);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unknown playability status", v16, 2u);
    }

    v18 = 0;
    v19 = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v12 = v18;
    (*(v7 + 8))(v10, v6);
  }

  return v12;
}

uint64_t closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[60] = a4;
  v5[61] = a5;
  v5[58] = a2;
  v5[59] = a3;
  v5[57] = a1;
  v5[62] = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = type metadata accessor for PlaybackIntentDescriptor(0);
  v5[68] = swift_task_alloc();
  v5[69] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s35_MusicKitInternal_MediaPlaybackCore0aE16IntentDescriptorVSgMd, &_s35_MusicKitInternal_MediaPlaybackCore0aE16IntentDescriptorVSgMR);
  v5[70] = swift_task_alloc();
  v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v5[71] = v7;
  v5[72] = *(v7 - 8);
  v5[73] = swift_task_alloc();
  v5[74] = swift_task_alloc();
  v5[75] = type metadata accessor for Notice.Variant(0);
  v5[76] = swift_task_alloc();
  type metadata accessor for Notice(0);
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v5[79] = swift_task_alloc();
  v5[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
  v5[81] = swift_task_alloc();
  v5[82] = *(a5 - 8);
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v8 = type metadata accessor for Song();
  v5[85] = v8;
  v5[86] = *(v8 - 8);
  v5[87] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 688);
  v2 = *(*(v0 + 656) + 16);
  v2(*(v0 + 672), *(v0 + 456), *(v0 + 488));
  v3 = swift_dynamicCast();
  v4 = *(v1 + 56);
  if ((v3 & 1) == 0)
  {
    v16 = *(v0 + 648);
    v4(v16, 1, 1, *(v0 + 680));
    outlined destroy of TaskPriority?(v16, &_s8MusicKit4SongVSgMd, &_s8MusicKit4SongVSgMR);
    goto LABEL_9;
  }

  v5 = *(v0 + 696);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 648);
  v9 = *(v0 + 464);
  v4(v8, 0, 1, v7);
  (*(v6 + 32))(v5, v8, v7);
  v10 = *v9;
  v11 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (!*(v10 + v11))
  {
    goto LABEL_8;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v12 = *(v0 + 440);
  v13 = *(v0 + 696);
  if (!v12)
  {
LABEL_6:
    (*(*(v0 + 688) + 8))(v13, *(v0 + 680));
    goto LABEL_9;
  }

  MPCPlayerResponse.playState(for:)();
  v15 = v14;

  if (v15)
  {
LABEL_5:
    v13 = *(v0 + 696);
    goto LABEL_6;
  }

  swift_beginAccess();
  if (!*(v10 + v11))
  {
LABEL_8:
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));
    swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  v30 = *(v0 + 448);
  if (!v30)
  {
    goto LABEL_5;
  }

  v31 = [*(v0 + 448) tracklist];

  v32 = [v31 playingItem];
  if (!v32)
  {
    goto LABEL_5;
  }

  v33 = [v32 metadataObject];

  if (!v33)
  {
    goto LABEL_5;
  }

  v34 = [v33 innermostModelObject];
  *(v0 + 704) = v34;

  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (!v35)
  {
    v87 = *(v0 + 696);
    v88 = *(v0 + 688);
    v89 = *(v0 + 680);

    (*(v88 + 8))(v87, v89);
    goto LABEL_9;
  }

  v36 = [objc_opt_self() radioPlaybackIntentFromSong:v35];
  *(v0 + 712) = v36;
  if (!v36)
  {
    (*(*(v0 + 688) + 8))(*(v0 + 696), *(v0 + 680));

LABEL_9:
    v2(*(v0 + 664), *(v0 + 456), *(v0 + 488));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal14StationSeeding_pMd, &_s16MusicKitInternal14StationSeeding_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of ActionPerforming((v0 + 56), v0 + 16);
      outlined init with copy of ActionPerforming(v0 + 16, v0 + 96);
      MusicPlaybackIntentDescriptor.init(stationSeed:)();
      v19 = *(v0 + 592);
      v20 = *(v0 + 576);
      v21 = *(v0 + 568);
      v22 = *(v0 + 560);
      v23 = *(v0 + 544);
      v24 = *(v0 + 536);
      v25 = *(v0 + 528);
      v26 = *(v0 + 464);
      (*(v20 + 56))(v22, 0, 1, v21);
      v95 = *(v20 + 32);
      v95(v19, v22, v21);
      (*(v20 + 16))(v25, v19, v21);
      swift_storeEnumTagMultiPayload();
      v27 = type metadata accessor for Actions.PlaybackContext(0);
      *(v0 + 136) = 0u;
      *(v0 + 152) = 0u;
      *(v0 + 168) = 0;
      outlined init with copy of TaskPriority?(v26 + *(v27 + 28), v0 + 176, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
      v28 = v23 + v24[7];
      *(v28 + 32) = 0;
      *v28 = 0u;
      *(v28 + 16) = 0u;
      v29 = v23 + v24[8];
      *(v29 + 32) = 0;
      *v29 = 0u;
      *(v29 + 16) = 0u;
      *(v23 + v24[9]) = 0;
      *(v23 + v24[10]) = 0;
      *(v23 + v24[11]) = 0;
      outlined init with copy of Actions.PlaybackContext(v25, v23, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      outlined assign with copy of MusicItem?(v0 + 136, v28);
      *(v23 + v24[5]) = 2;
      *(v23 + v24[6]) = 1;
      outlined init with copy of TaskPriority?(v0 + 176, v0 + 256, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
      if (*(v0 + 280))
      {
        outlined init with take of ActionPerforming((v0 + 256), v0 + 216);
      }

      else
      {
        *(v0 + 424) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
        v51 = String.init<A>(reflecting:)();
        *(v0 + 240) = &type metadata for Player.CommandIssuerIdentity;
        *(v0 + 248) = &protocol witness table for Player.CommandIssuerIdentity;
        *(v0 + 216) = v51;
        *(v0 + 224) = v52;
        if (*(v0 + 280))
        {
          outlined destroy of TaskPriority?(v0 + 256, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
        }
      }

      v53 = *(v0 + 552);
      v54 = *(v0 + 544);
      v55 = *(v0 + 528);
      v56 = *(v0 + 520);
      v57 = *(v0 + 464);
      outlined assign with take of Player.CommandIssuer?(v0 + 216, v29);
      outlined destroy of TaskPriority?(v0 + 176, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
      outlined destroy of TaskPriority?(v0 + 136, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
      outlined destroy of Actions.PlaybackContext(v55, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      outlined init with take of Actions.PlaybackContext(v54, v53, type metadata accessor for PlaybackIntentDescriptor);
      v58 = (v57 + *(v27 + 24));
      v59 = *v58;
      v60 = v58[1];
      v61 = v58[2];
      v62 = v58[3];
      outlined init with copy of Actions.PlaybackContext(v53, v56, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = *(v0 + 584);
        v64 = *(v0 + 576);
        v65 = *(v0 + 568);
        v95(v63, *(v0 + 520), v65);
        outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);
        v66 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        specialized MPCPlaybackIntent.playActivityInformation.setter(v59, v60, v61, v62);
        outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);

        (*(v64 + 8))(v63, v65);
      }

      else
      {
        v67 = **(v0 + 520);
        outlined copy of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);
        specialized MPCPlaybackIntent.playActivityInformation.setter(v59, v60, v61, v62);
        outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v59, v60, v61, v62);
      }

      outlined init with copy of Actions.PlaybackContext(*(v0 + 552), *(v0 + 512), type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = *(v0 + 584);
        v69 = *(v0 + 576);
        v70 = *(v0 + 568);
        v95(v68, *(v0 + 512), v70);
        v71 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v69 + 8))(v68, v70);
      }

      else
      {
        v71 = **(v0 + 512);
      }

      v72 = *(v0 + 632);
      outlined init with copy of TaskPriority?(*(v0 + 472), v72, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
      v73 = type metadata accessor for Actions.MetricsReportingContext(0);
      v74 = (*(*(v73 - 8) + 48))(v72, 1, v73);
      v75 = *(v0 + 632);
      if (v74 == 1)
      {
        outlined destroy of TaskPriority?(*(v0 + 632), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
        v76 = 0;
      }

      else
      {
        v77 = *v75;
        v78 = v75[1];
        outlined copy of MetricsEvent.Click.ActionContext?(*v75, v78);
        outlined destroy of Actions.PlaybackContext(v75, type metadata accessor for Actions.MetricsReportingContext);
        if (v78 == 12)
        {
          v76 = 0;
        }

        else
        {
          MetricsEvent.Click.ActionContext.rawValue.getter(v77, v78);
          outlined consume of MetricsEvent.Click.ActionContext?(v77, v78);
          v76 = String._bridgeToObjectiveC()();
        }
      }

      v79 = *(v0 + 552);
      v80 = *(v0 + 504);
      [v71 setPlayActivityFeatureName:v76];

      outlined init with copy of Actions.PlaybackContext(v79, v80, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v81 = *(v0 + 584);
        v82 = *(v0 + 576);
        v83 = *(v0 + 568);
        v95(v81, *(v0 + 504), v83);
        v84 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v82 + 8))(v81, v83);
      }

      else
      {
        v84 = **(v0 + 504);
      }

      [v84 setPlayActivityRecommendationData:0];

      v85 = swift_task_alloc();
      *(v0 + 744) = v85;
      *v85 = v0;
      v85[1] = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
      v86 = *(v0 + 552);

      return PlaybackController.add(_:route:)(v86, 0);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
      outlined destroy of TaskPriority?(v0 + 56, &_s16MusicKitInternal14StationSeeding_pSgMd, &_s16MusicKitInternal14StationSeeding_pSgMR);

      v17 = *(v0 + 8);

      return v17();
    }
  }

  v37 = v36;
  v38 = *(v0 + 640);
  v40 = *(v0 + 464);
  v39 = *(v0 + 472);
  v41 = type metadata accessor for Actions.PlaybackContext(0);
  v42 = (v40 + *(v41 + 24));
  v43 = *v42;
  v44 = v42[1];
  v45 = v42[2];
  v46 = v42[3];
  outlined copy of MPCPlaybackIntent.PlayActivityInformation?(*v42, v44, v45, v46);
  specialized MPCPlaybackIntent.playActivityInformation.setter(v43, v44, v45, v46);
  outlined consume of MPCPlaybackIntent.PlayActivityInformation?(v43, v44, v45, v46);
  outlined init with copy of TaskPriority?(v39, v38, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v47 = type metadata accessor for Actions.MetricsReportingContext(0);
  v48 = (*(*(v47 - 8) + 48))(v38, 1, v47);
  v49 = *(v0 + 640);
  if (v48 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 640), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
    v50 = 0;
  }

  else
  {
    v90 = *v49;
    v91 = v49[1];
    outlined copy of MetricsEvent.Click.ActionContext?(*v49, v91);
    outlined destroy of Actions.PlaybackContext(v49, type metadata accessor for Actions.MetricsReportingContext);
    if (v91 == 12)
    {
      v50 = 0;
    }

    else
    {
      MetricsEvent.Click.ActionContext.rawValue.getter(v90, v91);
      outlined consume of MetricsEvent.Click.ActionContext?(v90, v91);
      v50 = String._bridgeToObjectiveC()();
    }
  }

  v92 = *(v0 + 464);
  [v37 setPlayActivityFeatureName:v50];

  [v37 setPlayActivityRecommendationData:0];
  v93 = *(v41 + 28);
  v94 = swift_task_alloc();
  *(v0 + 720) = v94;
  *v94 = v0;
  v94[1] = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);

  return PlaybackController.insert(_:location:issuer:)(v37, 0, v92 + v93);
}

{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  else
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[78];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  outlined destroy of Actions.PlaybackContext(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[92] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), v4, v3);
}

{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIViewController.noticePresenting.getter((v0 + 42));

    v3 = v0[45];
    v4 = v0[78];
    if (v3)
    {
      v5 = v0[46];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 42, v0[45]);
      (*(v5 + 8))(v4, 0, v3, v5);
      outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 42);
    }

    else
    {
      outlined destroy of Actions.PlaybackContext(v0[78], type metadata accessor for Notice);
      outlined destroy of TaskPriority?((v0 + 42), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
    }
  }

  else
  {
    outlined destroy of Actions.PlaybackContext(v0[78], type metadata accessor for Notice);
  }

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5();
}

{
  *(*v1 + 752) = v0;

  if (v0)
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  else
  {
    v2 = closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[77];
  v2 = v0[76];
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v2, v1);
  outlined destroy of Actions.PlaybackContext(v2, type metadata accessor for Notice.Variant);
  type metadata accessor for MainActor();
  v0[95] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), v4, v3);
}

{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIViewController.noticePresenting.getter((v0 + 37));

    v3 = v0[40];
    v4 = v0[77];
    if (v3)
    {
      v5 = v0[41];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 37, v0[40]);
      (*(v5 + 8))(v4, 0, v3, v5);
      outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 37);
    }

    else
    {
      outlined destroy of Actions.PlaybackContext(v0[77], type metadata accessor for Notice);
      outlined destroy of TaskPriority?((v0 + 37), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
    }
  }

  else
  {
    outlined destroy of Actions.PlaybackContext(v0[77], type metadata accessor for Notice);
  }

  return _swift_task_switch(closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  outlined destroy of Actions.PlaybackContext(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  v4 = v0[1];

  return v4();
}

{
  v17 = v0;
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 728);
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.actions);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v0 + 432) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(describing:)();
    v13 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to Create Station with error=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

{
  v16 = v0;
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[71];
  outlined destroy of Actions.PlaybackContext(v0[69], type metadata accessor for PlaybackIntentDescriptor);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v4 = v0[94];
  if (one-time initialization token for actions != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.actions);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v0[54] = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v10 = String.init<A>(describing:)();
    v12 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to Create Station with error=%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  return _swift_task_switch(closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
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
    outlined init with take of Actions.PlaybackContext(*(v0 + 240), *(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);
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
    *(inited + 72) = 4;
    *(v0 + 312) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 320) = v15;
    *(v0 + 328) = v16;
    *(v0 + 344) = v17;
    swift_setDeallocating();
    swift_arrayDestroy();
    type metadata accessor for MainActor();
    *(v0 + 336) = static MainActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), v19, v18);
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
  *(v6 + 16) = 3077;
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

    outlined destroy of Actions.PlaybackContext(v20, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v27, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v36, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v40, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v45, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v50, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v58, type metadata accessor for MetricsEvent.Page);
  }

  v60 = *(v0 + 200);
  v61 = *(v0 + 208);
  v62 = *(v0 + 192);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.PlaybackContext(v60, v61, type metadata accessor for MetricsEvent.Click);
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
  outlined destroy of Actions.PlaybackContext(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 264), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Actions.CreateStation.Context.menuItemTitle.getter()
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

uint64_t (*Actions.CreateStation.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004C6800;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004C6800;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.CreateStation.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD00000000000001BLL;
  *(v0 + 24) = 0x80000001004C6800;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD00000000000001BLL;
  *(v1 + 24) = 0x80000001004C6800;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

double static Actions.Playback.action(context:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized static Actions.Playback.action(context:)(a2, v7);
  v3 = v11;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  *(a1 + 96) = v12;
  *(a1 + 112) = v13;
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  result = *&v8;
  v6 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v6;
  return result;
}

uint64_t closure #2 in static Actions.Playback.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 24) + **(a2 + 24));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

double protocol witness for static ActionDefinition.action(context:) in conformance Actions.Playback@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v16[0] = *a1;
  v4 = a1[2];
  v16[1] = v3;
  v16[2] = v4;
  v17 = *(a1 + 6);
  specialized static Actions.Playback.action(context:)(v16, v9);
  v5 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v5;
  *(a2 + 96) = v14;
  *(a2 + 112) = v15;
  v6 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v6;
  result = *&v10;
  v8 = v11;
  *(a2 + 32) = v10;
  *(a2 + 48) = v8;
  return result;
}

uint64_t closure #2 in static Actions.Queue.action(context:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(a2 + 40) + **(a2 + 40));
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v5();
}

uint64_t closure #3 in static Actions.Queue.action(context:)(uint64_t a1)
{
  v4 = (*(a1 + 56) + **(a1 + 56));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return v4();
}

__n128 protocol witness for static ActionDefinition.action(context:) in conformance Actions.Queue@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v12 = *(a1 + 64);
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  specialized static Actions.Queue.action(context:)(v11, v9);
  v5 = v9[7];
  *(a2 + 96) = v9[6];
  *(a2 + 112) = v5;
  *(a2 + 128) = v10;
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  v7 = v9[5];
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v7;
  result = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v75 = a4;
  v76 = a7;
  v83 = a3;
  v77 = a5;
  v84 = *(a5 - 8);
  v85 = a6;
  __chkstk_darwin();
  v74 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = &v58 - v10;
  v12 = v11;
  __chkstk_darwin();
  v80 = &v58 - v13;
  v81 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v14 = v81[8];
  __chkstk_darwin();
  v82 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v58 - v15;
  v78 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR) - 8);
  v17 = v78[8];
  __chkstk_darwin();
  v72 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  __chkstk_darwin();
  v21 = &v58 - v20;
  v22 = *a2;
  v23 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  if (*(v22 + v23))
  {

    Player.state<A>(for:)(a1, v77, v85);

    MusicItemState.playabilityStatus.getter();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v26 = *(*(v25 - 8) + 56);
  v66 = v21;
  v26(v21, v24, 1, v25);
  v69 = type metadata accessor for Actions.PlaybackContext;
  v61 = v16;
  outlined init with copy of Actions.PlaybackContext(a2, v16, type metadata accessor for Actions.PlaybackContext);
  v60 = v19;
  outlined init with copy of TaskPriority?(v21, v19, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  v27 = v84;
  v65 = *(v84 + 16);
  v28 = v77;
  v65(v80, a1, v77);
  v29 = *(v81 + 80);
  v79 = a1;
  v30 = (v29 + 32) & ~v29;
  v31 = *(v78 + 80);
  v81 = a2;
  v32 = (v14 + v31 + v30) & ~v31;
  v67 = v14;
  v33 = *(v27 + 80);
  v63 = v17 + v33;
  v64 = v33 | v29 | v31;
  v71 = v12 + 7;
  v62 = v12;
  v59 = (v12 + 7 + ((v17 + v33 + v32) & ~v33)) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v85;
  *(v34 + 16) = v28;
  *(v34 + 24) = v35;
  v68 = type metadata accessor for Actions.PlaybackContext;
  v36 = v34 + v30;
  v37 = v34;
  v70 = v34;
  outlined init with take of Actions.PlaybackContext(v61, v36, type metadata accessor for Actions.PlaybackContext);
  outlined init with take of URL?(v60, v37 + v32, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  v38 = *(v27 + 32);
  v84 = v27 + 32;
  v78 = v38;
  (v38)(v37 + ((v17 + v33 + v32) & ~v33), v80, v28);
  *(v37 + v59) = v83;
  v39 = v72;
  outlined init with take of URL?(v66, v72, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  v40 = v73;
  v65(v73, v79, v28);
  outlined init with copy of Actions.PlaybackContext(v81, v82, v69);
  v41 = (v31 + 32) & ~v31;
  v42 = (v63 + v41) & ~v33;
  v43 = (v62 + v29 + v42) & ~v29;
  v44 = (v67 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v85;
  *(v45 + 16) = v28;
  *(v45 + 24) = v46;
  outlined init with take of URL?(v39, v45 + v41, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  v47 = v78;
  (v78)(v45 + v42, v40, v28);
  outlined init with take of Actions.PlaybackContext(v82, v45 + v43, v68);
  v48 = v83;
  *(v45 + v44) = v83;
  v49 = v74;
  v47(v74, v79, v28);
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = (*(v50 + 64) + v33 + v51) & ~v33;
  v53 = (v71 + v52) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v85;
  *(v54 + 16) = v28;
  *(v54 + 24) = v55;
  outlined init with take of URL?(v75, v54 + v51, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  (v78)(v54 + v52, v49, v28);
  *(v54 + v53) = v48;
  result = outlined destroy of Actions.PlaybackContext(v81, type metadata accessor for Actions.PlaybackContext);
  v57 = v76;
  *v76 = v48;
  v57[1] = partial apply for closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v57[2] = v70;
  v57[3] = &async function pointer to partial apply for closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v57[4] = v45;
  v57[5] = &async function pointer to partial apply for closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v57[6] = v54;
  return result;
}

unint64_t closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v88 = a4;
  v89 = a6;
  v92 = a2;
  v93 = a3;
  v8 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin();
  v79 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v80 = &v78 - v10;
  __chkstk_darwin();
  v84 = &v78 - v11;
  v12 = type metadata accessor for MusicPin.Item();
  v86 = *(v12 - 8);
  v87 = v12;
  __chkstk_darwin();
  v85 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinVSgMd, &_s16MusicKitInternal0A3PinVSgMR);
  __chkstk_darwin();
  v90 = &v78 - v14;
  v94 = a5;
  v91 = *(a5 - 1);
  __chkstk_darwin();
  v16 = &v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v78 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  __chkstk_darwin();
  v20 = &v78 - v19;
  v21 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v78 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v78 - v24;
  __chkstk_darwin();
  v26 = &v78 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  __chkstk_darwin();
  v28 = &v78 - v27;
  v29 = type metadata accessor for Actions.PlaybackContext(0);
  outlined init with copy of TaskPriority?(a1 + *(v29 + 20), v28, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  v30 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  LODWORD(a1) = (*(*(v30 - 8) + 48))(v28, 1, v30);
  outlined destroy of TaskPriority?(v28, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  outlined init with copy of TaskPriority?(v92, v20, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    outlined destroy of TaskPriority?(v20, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
    v95 = 0;
    v96 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v95 = 0xD000000000000023;
    v96 = 0x80000001004C68A0;
    (*(v91 + 16))(v18, v93, v94);
    v32._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v32);

    return v95;
  }

  v33 = v22;
  v34 = *(v22 + 32);
  v35 = v26;
  v92 = v21;
  v34(v26, v20, v21);
  v37 = v93;
  v36 = v94;
  v38 = closure #1 in closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v93, v88, v94);
  (*(v91 + 16))(v16, v37, v36);
  v39 = type metadata accessor for MusicPin();
  v40 = v90;
  v41 = swift_dynamicCast();
  v42 = *(*(v39 - 8) + 56);
  if (v41)
  {
    v43 = *(v39 - 8);
    v42(v40, 0, 1, v39);
    v44 = v40;
    v94 = v35;
    v45 = v85;
    MusicPin.item.getter();
    v46 = v86;
    v47 = v38;
    v48 = v87;
    v49 = v33;
    v50 = (*(v86 + 88))(v45, v87);
    v51 = enum case for MusicPin.Item.artist(_:);
    v52 = v45;
    v35 = v94;
    v53 = v48;
    v38 = v47;
    (*(v46 + 8))(v52, v53);
    (*(v43 + 8))(v44, v39);
    v54 = v50 == v51;
    v33 = v49;
    if (v54)
    {
      (*(v49 + 8))(v35, v92);
      return 0;
    }
  }

  else
  {
    v42(v40, 1, 1, v39);
    outlined destroy of TaskPriority?(v40, &_s16MusicKitInternal0A3PinVSgMd, &_s16MusicKitInternal0A3PinVSgMR);
  }

  v55 = v92;
  if (!v38)
  {
    (*(v33 + 8))(v35, v92);
    return 0xD000000000000010;
  }

  v56 = *(v33 + 16);
  v57 = v83;
  v56(v83, v35, v92);
  v58 = (*(v33 + 88))(v57, v55);
  if (v58 != enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    if (v58 != enum case for MusicPlayer.PlayabilityStatus.playable(_:))
    {
      if (one-time initialization token for actions != -1)
      {
        swift_once();
      }

      v72 = v33;
      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, static Logger.actions);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "Unknown playability status", v76, 2u);
      }

      v95 = 0;
      v96 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v95 = 0xD000000000000010;
      v96 = 0x80000001004C68F0;
      v56(v78, v35, v55);
      v77._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v77);

      v68 = v95;
      v69 = *(v72 + 8);
      v69(v35, v55);
      v70 = v57;
      v71 = v55;
      goto LABEL_25;
    }

    (*(v33 + 8))(v35, v55);
    return 0;
  }

  v59 = v33;
  (*(v33 + 96))(v57, v55);
  v61 = v81;
  v60 = v82;
  v62 = v84;
  (*(v81 + 32))(v84, v57, v82);
  v63 = *(v61 + 16);
  v64 = v80;
  v63(v80, v62, v60);
  v65 = (*(v61 + 88))(v64, v60);
  if (v65 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.ageVerificationRequired(_:) || v65 == enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:))
  {
    (*(v61 + 8))(v84, v60);
    (*(v33 + 8))(v35, v55);
    return 0;
  }

  v95 = 0;
  v96 = 0xE000000000000000;
  _StringGuts.grow(_:)(26);

  v95 = 0xD000000000000018;
  v96 = 0x80000001004C6910;
  v66 = v84;
  v63(v79, v84, v60);
  v67._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v67);

  v68 = v95;
  v69 = *(v61 + 8);
  v69(v66, v60);
  (*(v59 + 8))(v35, v55);
  v70 = v64;
  v71 = v60;
LABEL_25:
  v69(v70, v71);
  return v68;
}

BOOL closure #1 in closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v54 = a1;
  v4 = type metadata accessor for MusicPin.Item();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin();
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for MusicPin();
  v40 = *(v45 - 8);
  __chkstk_darwin();
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v37 - v7;
  v48 = type metadata accessor for Station();
  v43 = *(v48 - 8);
  __chkstk_darwin();
  v47 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for Song();
  v46 = *(v51 - 8);
  __chkstk_darwin();
  v50 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v49 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Playlist();
  v53 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Album();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a3 - 8);
  v21 = __chkstk_darwin();
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v54, a3, v21);
  if (swift_dynamicCast())
  {
    (*(v17 + 8))(v19, v16);
LABEL_5:
    (*(v20 + 8))(v23, a3);
    return 1;
  }

  if (swift_dynamicCast())
  {
    (*(v53 + 8))(v15, v13);
    goto LABEL_5;
  }

  if (!swift_dynamicCast())
  {
    v26 = v50;
    v25 = v51;
    if (swift_dynamicCast())
    {
      v27 = v46;
LABEL_12:
      (*(v27 + 8))(v26, v25);
      goto LABEL_13;
    }

    v26 = v47;
    v25 = v48;
    if (swift_dynamicCast())
    {
      v27 = v43;
      goto LABEL_12;
    }

    v28 = v44;
    v29 = v45;
    if (swift_dynamicCast())
    {
      v31 = v39;
      v30 = v40;
      (*(v40 + 32))(v39, v28, v29);
      v32 = v38;
      MusicPin.item.getter();
      v34 = v41;
      v33 = v42;
      v35 = (*(v41 + 88))(v32, v42);
      if (v35 == enum case for MusicPin.Item.album(_:) || v35 == enum case for MusicPin.Item.artist(_:))
      {
        goto LABEL_21;
      }

      if (v35 == enum case for MusicPin.Item.musicVideo(_:))
      {
LABEL_19:
        (*(v34 + 8))(v32, v33);
        v36 = v52 == 0;
        (*(v30 + 8))(v31, v29);
        (*(v20 + 8))(v23, a3);
        return v36;
      }

      if (v35 == enum case for MusicPin.Item.playlist(_:))
      {
LABEL_21:
        (*(v34 + 8))(v32, v33);
        (*(v30 + 8))(v31, v29);
        goto LABEL_5;
      }

      if (v35 == enum case for MusicPin.Item.song(_:))
      {
        goto LABEL_19;
      }

      (*(v34 + 8))(v32, v33);
      (*(v30 + 8))(v31, v29);
    }

    (*(v20 + 8))(v23, a3);
    return 0;
  }

  (*(v49 + 8))(v12, v10);
LABEL_13:
  (*(v20 + 8))(v23, a3);
  return v52 == 0;
}

uint64_t closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = a5;
  v6[34] = a6;
  v6[31] = a3;
  v6[32] = a4;
  v6[29] = a1;
  v6[30] = a2;
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v6[35] = v8;
  v6[36] = *(v8 - 8);
  v6[37] = swift_task_alloc();
  v6[38] = type metadata accessor for PlaybackIntentDescriptor(0);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v10 = type metadata accessor for MusicPin.Item();
  v6[48] = v10;
  v6[49] = *(v10 - 8);
  v6[50] = swift_task_alloc();
  v6[51] = *(a5 - 8);
  v6[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A3PinVSgMd, &_s16MusicKitInternal0A3PinVSgMR);
  v6[53] = swift_task_alloc();
  v11 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v6[54] = v11;
  v6[55] = *(v11 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSg_AGtMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSg_AGtMR);
  v6[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v1 = *(v0 + 480);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);
  v4 = *(v0 + 432);
  v5 = *(v0 + 440);
  v6 = *(v0 + 232);
  (*(v5 + 104))(v1, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v7 = *(v3 + 48);
  outlined init with copy of TaskPriority?(v6, v2, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  outlined init with copy of TaskPriority?(v1, v2 + v7, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
  v8 = *(v5 + 48);
  if (v8(v2, 1, v4) == 1)
  {
    v9 = *(v0 + 432);
    outlined destroy of TaskPriority?(*(v0 + 480), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
    if (v8(v2 + v7, 1, v9) == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 464), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *(v0 + 432);
    outlined init with copy of TaskPriority?(*(v0 + 464), *(v0 + 472), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
    v11 = v8(v2 + v7, 1, v10);
    v12 = *(v0 + 472);
    v13 = *(v0 + 480);
    if (v11 != 1)
    {
      v32 = *(v0 + 464);
      v34 = *(v0 + 440);
      v33 = *(v0 + 448);
      v35 = *(v0 + 432);
      (*(v34 + 32))(v33, v2 + v7, v35);
      lazy protocol witness table accessor for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus(&lazy protocol witness table cache variable for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus, &type metadata accessor for MusicPlayer.PlayabilityStatus, &protocol conformance descriptor for MusicPlayer.PlayabilityStatus);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v34 + 8);
      v37(v33, v35);
      outlined destroy of TaskPriority?(v13, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
      v37(v12, v35);
      outlined destroy of TaskPriority?(v32, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
      if (v36)
      {
        goto LABEL_14;
      }

      goto LABEL_7;
    }

    v14 = *(v0 + 432);
    v15 = *(v0 + 440);
    outlined destroy of TaskPriority?(*(v0 + 480), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR);
    (*(v15 + 8))(v12, v14);
  }

  outlined destroy of TaskPriority?(*(v0 + 464), &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSg_AGtMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSg_AGtMR);
LABEL_7:
  v16 = *(*(v0 + 408) + 16);
  v16(*(v0 + 416), *(v0 + 240), *(v0 + 264));
  v17 = type metadata accessor for MusicPin();
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  v20 = *(v0 + 424);
  if (!v18)
  {
    v19(*(v0 + 424), 1, 1, v17);
    outlined destroy of TaskPriority?(v20, &_s16MusicKitInternal0A3PinVSgMd, &_s16MusicKitInternal0A3PinVSgMR);
LABEL_12:
    v29 = *(v0 + 264);
    v28 = *(v0 + 272);
    v30 = *(v0 + 240);
    *(v0 + 40) = v29;
    *(v0 + 48) = *(v28 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    v16(boxed_opaque_existential_1, v30, v29);
    *(v0 + 56) = 0;
    specialized static SubscriptionUpsellPresenter.present(for:)(v0 + 16);
    outlined destroy of SubscriptionUpsellPresenter.Placement(v0 + 16);
LABEL_16:

    v43 = *(v0 + 8);

    return v43();
  }

  v21 = *(v17 - 8);
  v23 = *(v0 + 392);
  v22 = *(v0 + 400);
  v24 = *(v0 + 384);
  v19(*(v0 + 424), 0, 1, v17);
  MusicPin.item.getter();
  v82 = v16;
  v25 = (*(v23 + 88))(v22, v24);
  v26 = enum case for MusicPin.Item.artist(_:);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v17);
  v27 = v25 == v26;
  v16 = v82;
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_14:
  v38 = *(v0 + 336);
  v39 = *(v0 + 344);
  v40 = *(v0 + 328);
  v41 = *(v0 + 248);
  v42 = type metadata accessor for Actions.PlaybackContext(0);
  outlined init with copy of TaskPriority?(v41 + *(v42 + 20), v40, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  if ((*(v39 + 48))(v40, 1, v38) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 328), &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
    goto LABEL_16;
  }

  v45 = *(v0 + 408);
  v47 = *(v0 + 368);
  v46 = *(v0 + 376);
  v81 = *(v0 + 360);
  v48 = *(v0 + 304);
  v49 = *(v0 + 312);
  v51 = *(v0 + 264);
  v50 = *(v0 + 272);
  v79 = *(v0 + 240);
  v80 = *(v0 + 248);
  outlined init with take of Actions.PlaybackContext(*(v0 + 328), v46, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  outlined init with copy of Actions.PlaybackContext(v46, v47, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  *(v0 + 88) = v51;
  *(v0 + 96) = *(v50 + 8);
  v52 = __swift_allocate_boxed_opaque_existential_1((v0 + 64));
  (*(v45 + 16))(v52, v79, v51);
  outlined init with copy of TaskPriority?(v80 + *(v42 + 28), v0 + 104, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  v53 = v49 + v48[7];
  *(v53 + 32) = 0;
  *v53 = 0u;
  *(v53 + 16) = 0u;
  v54 = v49 + v48[8];
  *(v54 + 32) = 0;
  *v54 = 0u;
  *(v54 + 16) = 0u;
  *(v49 + v48[9]) = 0;
  *(v49 + v48[10]) = 0;
  *(v49 + v48[11]) = 0;
  outlined init with copy of Actions.PlaybackContext(v47, v49, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  outlined init with copy of Actions.PlaybackContext(v49, v81, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v56 = *(v0 + 360);
  if (EnumCaseMultiPayload == 1)
  {
    v58 = *(v0 + 288);
    v57 = *(v0 + 296);
    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    (*(v58 + 32))(v57, v56, v59);
    v61 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v61 setShuffleMode:v60];

    (*(v58 + 8))(v57, v59);
  }

  else
  {
    v62 = *v56;
    [*v56 setShuffleMode:*(v0 + 256)];
  }

  outlined init with copy of Actions.PlaybackContext(*(v0 + 312), *(v0 + 352), type metadata accessor for PlaybackIntentDescriptor.IntentType);
  v63 = swift_getEnumCaseMultiPayload();
  v64 = *(v0 + 352);
  if (v63 == 1)
  {
    v66 = *(v0 + 288);
    v65 = *(v0 + 296);
    v67 = *(v0 + 280);
    (*(v66 + 32))(v65, v64, v67);
    v68 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
    [v68 setRepeatMode:0];

    (*(v66 + 8))(v65, v67);
  }

  else
  {
    v69 = *v64;
    [*v64 setRepeatMode:0];
  }

  v71 = *(v0 + 304);
  v70 = *(v0 + 312);
  outlined assign with copy of MusicItem?(v0 + 64, v53);
  *(v70 + *(v71 + 20)) = 2;
  *(v70 + *(v71 + 24)) = 0;
  outlined init with copy of TaskPriority?(v0 + 104, v0 + 184, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  if (*(v0 + 208))
  {
    outlined init with take of ActionPerforming((v0 + 184), v0 + 144);
  }

  else
  {
    *(v0 + 224) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlSgMd, &_syXlSgMR);
    v72 = String.init<A>(reflecting:)();
    *(v0 + 168) = &type metadata for Player.CommandIssuerIdentity;
    *(v0 + 176) = &protocol witness table for Player.CommandIssuerIdentity;
    *(v0 + 144) = v72;
    *(v0 + 152) = v73;
    if (*(v0 + 208))
    {
      outlined destroy of TaskPriority?(v0 + 184, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
    }
  }

  v74 = *(v0 + 368);
  v76 = *(v0 + 312);
  v75 = *(v0 + 320);
  outlined assign with take of Player.CommandIssuer?(v0 + 144, v54);
  outlined destroy of TaskPriority?(v0 + 104, &_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  outlined destroy of Actions.PlaybackContext(v74, type metadata accessor for PlaybackIntentDescriptor.IntentType);
  outlined destroy of TaskPriority?(v0 + 64, &_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  outlined init with take of Actions.PlaybackContext(v76, v75, type metadata accessor for PlaybackIntentDescriptor);
  v77 = swift_task_alloc();
  *(v0 + 488) = v77;
  *v77 = v0;
  v77[1] = closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  v78 = *(v0 + 320);

  return PlaybackController.add(_:route:)(v78, 0);
}

{

  if (v0)
  {

    v1 = closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  }

  else
  {
    v1 = closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:);
  }

  return _swift_task_switch(v1, 0, 0);
}

{
  v1 = v0[47];
  outlined destroy of Actions.PlaybackContext(v0[40], type metadata accessor for PlaybackIntentDescriptor);
  outlined destroy of Actions.PlaybackContext(v1, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v2 = v0[1];

  return v2();
}

uint64_t closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return _swift_task_switch(closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    outlined init with take of Actions.PlaybackContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v9 = *(v8 + 8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7, v9);
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
    *(inited + 16) = xmmword_1004F2400;
    *(inited + 32) = MusicItem.metricsContentType.getter(v7, v9);
    *(inited + 40) = v15;
    *(inited + 48) = 0;
    *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 304) = v16;
    *(v0 + 312) = v17;
    *(v0 + 328) = v18;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 320) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), v20, v19);
  }
}

{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v79 = *(v0 + 264);
  v81 = *(v0 + 312);
  v77 = *(v0 + 256);
  v1 = *(v0 + 248);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v75 = *(v0 + 160);
  v8 = *(v0 + 88);

  if (v8)
  {
    v9 = 53;
  }

  else
  {
    v9 = 31;
  }

  v74 = v9;
  outlined init with copy of TaskPriority?(v3, v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(v1 + v2[7]);
  v11 = *v1;
  v12 = v1[1];
  outlined init with copy of TaskPriority?(v1 + v2[5], v7, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v84 = *(v1 + v2[8]);
  *(v6 + v5[19]) = 0;
  v13 = (v6 + v5[20]);
  *v13 = 0;
  v13[1] = 0;
  *v6 = v77;
  *(v6 + 8) = v79;
  *(v6 + 16) = 5;
  *(v6 + 17) = v74;
  outlined init with take of URL?(v4, v6 + v5[7], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v6 + v5[8]) = v10;
  v14 = (v6 + v5[9]);
  v78 = v11;
  v80 = v12;
  *v14 = v11;
  v14[1] = v12;
  v15 = v6 + v5[10];
  *v15 = v76;
  *(v15 + 16) = v81;
  *(v15 + 24) = v83;
  outlined init with copy of TaskPriority?(v7, v75, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v16 = type metadata accessor for MetricsEvent.Page(0);
  v82 = *(*(v16 - 1) + 48);
  v17 = v82(v75, 1, v16);
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
  v22 = *(v0 + 160);
  if (v17 == 1)
  {

    outlined copy of MetricsEvent.Click.ActionContext?(v78, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));
    outlined destroy of TaskPriority?(v22, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *v22;
    v24 = v22[1];

    outlined copy of MetricsEvent.Click.ActionContext?(v78, v80);

    outlined copy of MetricsEvent.Click.ActionDetails(v21, v19, v20, v18, SBYTE1(v18));

    outlined destroy of Actions.PlaybackContext(v22, type metadata accessor for MetricsEvent.Page);
  }

  v25 = *(v0 + 168);
  v26 = *(v0 + 152);
  v27 = (*(v0 + 184) + *(*(v0 + 176) + 48));
  *v27 = v23;
  v27[1] = v24;
  outlined init with copy of TaskPriority?(v25, v26, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v28 = v82(v26, 1, v16);
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

    outlined destroy of Actions.PlaybackContext(v29, type metadata accessor for MetricsEvent.Page);
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 144);
  v34 = (*(v0 + 184) + *(*(v0 + 176) + 52));
  *v34 = v30;
  v34[1] = v31;
  outlined init with copy of TaskPriority?(v32, v33, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v82(v33, 1, v16) == 1)
  {
    v35 = *(v0 + 280);
    v36 = *(v0 + 272);
    v37 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v35(v37, 1, 1, v36);
  }

  else
  {
    v38 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v38 + v16[6], *(v0 + 200), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of Actions.PlaybackContext(v38, type metadata accessor for MetricsEvent.Page);
  }

  v39 = *(v0 + 168);
  v40 = *(v0 + 136);
  outlined init with take of URL?(*(v0 + 200), *(v0 + 184) + *(*(v0 + 176) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v39, v40, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v41 = v82(v40, 1, v16);
  v42 = *(v0 + 136);
  if (v41 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 136), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v43 = 0;
  }

  else
  {
    v43 = *(v42 + v16[7]);

    outlined destroy of Actions.PlaybackContext(v42, type metadata accessor for MetricsEvent.Page);
  }

  v44 = *(v0 + 168);
  v45 = *(v0 + 128);
  *(*(v0 + 184) + *(*(v0 + 176) + 60)) = v43;
  outlined init with copy of TaskPriority?(v44, v45, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v46 = v82(v45, 1, v16);
  v47 = *(v0 + 128);
  if (v46 == 1)
  {
    outlined destroy of TaskPriority?(v47, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v48 = 1;
  }

  else
  {
    v48 = *(v47 + v16[9]);
    outlined destroy of Actions.PlaybackContext(v47, type metadata accessor for MetricsEvent.Page);
  }

  v49 = *(v0 + 168);
  v50 = *(v0 + 120);
  *(*(v0 + 184) + *(*(v0 + 176) + 64)) = v48;
  outlined init with copy of TaskPriority?(v49, v50, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v51 = v82(v50, 1, v16);
  v52 = *(v0 + 120);
  if (v51 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v55 = (v52 + v16[8]);
    v53 = *v55;
    v54 = v55[1];

    outlined destroy of Actions.PlaybackContext(v52, type metadata accessor for MetricsEvent.Page);
  }

  v56 = *(v0 + 168);
  v57 = *(v0 + 112);
  v58 = (*(v0 + 184) + *(*(v0 + 176) + 72));
  *v58 = v53;
  v58[1] = v54;
  outlined init with take of URL?(v56, v57, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v59 = v82(v57, 1, v16);
  v60 = *(v0 + 112);
  if (v59 == 1)
  {
    outlined destroy of TaskPriority?(v60, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v61 = 2;
  }

  else
  {
    v61 = *(v60 + v16[11]);
    outlined destroy of Actions.PlaybackContext(v60, type metadata accessor for MetricsEvent.Page);
  }

  v62 = *(v0 + 184);
  v63 = *(v0 + 192);
  v64 = *(v0 + 176);
  *(v62 + *(v64 + 68)) = v61;
  *(v62 + *(v64 + 44)) = v84;
  outlined init with take of Actions.PlaybackContext(v62, v63, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v66 = *(v0 + 304);
  v65 = *(v0 + 312);
  v67 = *(v0 + 296);
  v68 = *(v0 + 248);
  v69 = *(v0 + 232);
  v70 = *(v0 + 216);
  v71 = *(v0 + 192);
  v72 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v71, *(v68 + *(v69 + 24)), *(v68 + *(v69 + 24) + 8), *(v68 + *(v69 + 36)), *(v68 + *(v69 + 36) + 8), *(v68 + *(v69 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v67, v66, v65, v72, SBYTE1(v72));
  outlined destroy of Actions.PlaybackContext(v71, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v70, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(uint64_t *a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v39 = a2;
  v40 = a4;
  v38 = a3;
  v6 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v36 = *(v6 - 8);
  v37 = v6;
  __chkstk_darwin();
  v35 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v33 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = &v33 - v17;
  v19 = type metadata accessor for Actions.PlaybackContext(0);
  outlined init with copy of TaskPriority?(a1 + *(v19 + 20), v12, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    outlined init with take of Actions.PlaybackContext(v12, v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    v21 = *a1;
    v22 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    v23 = *(v21 + v22);
    if (v23)
    {
      outlined init with copy of Actions.PlaybackContext(v18, v16, type metadata accessor for PlaybackIntentDescriptor.IntentType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v33;
        (*(v33 + 32))(v10, v16, v8);

        v25 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v24 + 8))(v10, v8);
      }

      else
      {
        v25 = *v16;
      }

      v27 = v38;
      outlined copy of Player.InsertCommand.Location(v38);
      v28 = v25;
      v29 = specialized Player.canPerform(_:)(v28, v27, v23);

      if (v29)
      {
        Player.state<A>(for:)(v39, v40, v34);
        v30 = v35;
        MusicItemState.playabilityStatus.getter();

        v20 = MusicPlayer.PlayabilityStatus.actionSupportedStatus.getter();

        outlined consume of Player.InsertCommand.Location(v27);
        (*(v36 + 8))(v30, v37);
LABEL_12:
        outlined destroy of Actions.PlaybackContext(v18, type metadata accessor for PlaybackIntentDescriptor.IntentType);
        return v20;
      }

      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);
      v31._countAndFlagsBits = 0xD000000000000020;
      v31._object = 0x80000001004C6A80;
      String.append(_:)(v31);
      v41 = v27;
      _print_unlocked<A, B>(_:_:)();

      outlined consume of Player.InsertCommand.Location(v27);
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);
      v26._countAndFlagsBits = 0xD000000000000025;
      v26._object = 0x80000001004C6A50;
      String.append(_:)(v26);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
    }

    v20 = v42;
    goto LABEL_12;
  }

  v20 = 0xD000000000000012;
  outlined destroy of TaskPriority?(v12, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  return v20;
}

uint64_t closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  type metadata accessor for Notice(0);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  v3[15] = swift_task_alloc();
  v5 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[8];
  v5 = type metadata accessor for Actions.PlaybackContext(0);
  outlined init with copy of TaskPriority?(v4 + *(v5 + 20), v3, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(v0[15], &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMd, &_s9MusicCore24PlaybackIntentDescriptorV0D4TypeOSgMR);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[18];
    v8 = v0[19];
    outlined init with take of Actions.PlaybackContext(v0[15], v8, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    outlined init with copy of Actions.PlaybackContext(v8, v9, type metadata accessor for PlaybackIntentDescriptor.IntentType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = v0[18];
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v0[13];
      v12 = v0[14];
      v14 = v0[12];
      (*(v13 + 32))(v12, v11, v14);
      v15 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
      (*(v13 + 8))(v12, v14);
    }

    else
    {
      v15 = *v11;
    }

    v0[20] = v15;
    v16 = v0[8];
    v17 = *(v5 + 28);
    v18 = swift_task_alloc();
    v0[21] = v18;
    *v18 = v0;
    v18[1] = closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
    v19 = v0[9];

    return PlaybackController.insert(_:location:issuer:)(v15, v19, v16 + v17);
  }
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  }

  else
  {

    v3 = closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  Player.InsertCommand.Location.notice.getter(*(v0 + 88));
  type metadata accessor for MainActor();
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), v2, v1);
}

{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    UIViewController.noticePresenting.getter((v0 + 2));

    v3 = v0[5];
    v4 = v0[11];
    if (v3)
    {
      v5 = v0[6];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
      (*(v5 + 8))(v4, 0, v3, v5);
      outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    }

    else
    {
      outlined destroy of Actions.PlaybackContext(v0[11], type metadata accessor for Notice);
      outlined destroy of TaskPriority?((v0 + 2), &_s9MusicCore16NoticePresenting_pSgMd, &_s9MusicCore16NoticePresenting_pSgMR);
    }
  }

  else
  {
    outlined destroy of Actions.PlaybackContext(v0[11], type metadata accessor for Notice);
  }

  return _swift_task_switch(closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 152), type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v1 = *(v0 + 8);

  return v1();
}

{
  v15 = v0;

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
  v5 = *(v0 + 176);
  v6 = *(v0 + 152);
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    *(v0 + 56) = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to perform add to queue with error=%{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
  }

  else
  {
  }

  outlined destroy of Actions.PlaybackContext(v6, type metadata accessor for PlaybackIntentDescriptor.IntentType);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t Player.InsertCommand.Location.notice.getter@<X0>(void *x8_0@<X8>)
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  static Notice.variant(_:)(v4, x8_0);
  return outlined destroy of Actions.PlaybackContext(v4, type metadata accessor for Notice.Variant);
}

uint64_t closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

  return _swift_task_switch(closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 224), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 88);
    outlined init with take of Actions.PlaybackContext(*(v0 + 224), *(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);
    v9 = *(v6 + 8);
    *(v0 + 256) = MusicItem.metricsTargetIdentifier.getter(v7, v9);
    *(v0 + 264) = v10;
    if (v8 >= 4)
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    else
    {
      *(v0 + 330) = 0x20062122u >> (8 * v8);
      v11 = *(v0 + 216);
      v12 = *(v0 + 96);
      v13 = type metadata accessor for URL();
      *(v0 + 272) = v13;
      v14 = *(v13 - 8);
      v15 = *(v14 + 56);
      *(v0 + 280) = v15;
      *(v0 + 288) = (v14 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v15(v11, 1, 1, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004F2400;
      *(inited + 32) = MusicItem.metricsContentType.getter(v12, v9);
      *(inited + 40) = v17;
      *(inited + 48) = 0;
      *(v0 + 296) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
      *(v0 + 304) = v18;
      *(v0 + 312) = v19;
      *(v0 + 328) = v20;
      swift_setDeallocating();
      outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
      type metadata accessor for MainActor();
      *(v0 + 320) = static MainActor.shared.getter();
      v22 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), v22, v21);
    }
  }
}

{
  v83 = *(v0 + 328);
  v76 = *(v0 + 296);
  v81 = *(v0 + 330);
  v79 = *(v0 + 264);
  v77 = *(v0 + 312);
  v78 = *(v0 + 256);
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
  v18 = *(v0 + 328);
  v19 = *(v0 + 304);
  v20 = *(v0 + 312);
  v21 = *(v0 + 296);
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

    outlined destroy of Actions.PlaybackContext(v22, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v29, type metadata accessor for MetricsEvent.Page);
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
    v36 = *(v0 + 280);
    v37 = *(v0 + 272);
    v38 = *(v0 + 200);
    outlined destroy of TaskPriority?(*(v0 + 144), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v36(v38, 1, 1, v37);
    v16 = v35;
  }

  else
  {
    v39 = *(v0 + 144);
    outlined init with copy of TaskPriority?(v39 + v15[6], *(v0 + 200), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of Actions.PlaybackContext(v39, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v43, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v48, type metadata accessor for MetricsEvent.Page);
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

    outlined destroy of Actions.PlaybackContext(v53, type metadata accessor for MetricsEvent.Page);
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
    outlined destroy of Actions.PlaybackContext(v61, type metadata accessor for MetricsEvent.Page);
  }

  v63 = *(v0 + 184);
  v64 = *(v0 + 192);
  v65 = *(v0 + 176);
  *(v63 + *(v65 + 68)) = v62;
  *(v63 + *(v65 + 44)) = v84;
  outlined init with take of Actions.PlaybackContext(v63, v64, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v67 = *(v0 + 304);
  v66 = *(v0 + 312);
  v68 = *(v0 + 296);
  v69 = *(v0 + 248);
  v70 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = *(v0 + 192);
  v73 = *(v0 + 328);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v72, *(v69 + *(v70 + 24)), *(v69 + *(v70 + 24) + 8), *(v69 + *(v70 + 36)), *(v69 + *(v70 + 36) + 8), *(v69 + *(v70 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v68, v67, v66, v73, SBYTE1(v73));
  outlined destroy of Actions.PlaybackContext(v72, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:), 0, 0);
}

{
  outlined destroy of Actions.PlaybackContext(*(v0 + 248), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*Actions.Playback.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Playback.Context())()
{
  if (*v0)
  {
    v1 = 0x656C6666756873;
  }

  else
  {
    v1 = 2036427888;
  }

  if (*v0)
  {
    v2 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.Queue.Context.menuItemSubtitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t (*Actions.Queue.Context.menuItemImage.getter())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Queue.Context())()
{
  if (*v0)
  {
    v1 = 0xD000000000000028;
  }

  else
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = "badge.plus.radiowaves.right";
  }

  else
  {
    v2 = "nd.arrowtriangle.forward";
  }

  v3 = v2 | 0x8000000000000000;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v3;

  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t key path getter for Player.nowPlaying : Player@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for Player.nowPlaying : Player(void **a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;

  return static Published.subscript.setter();
}

uint64_t sub_100099D08()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v16 = v1;
  v4 = *(v1 - 8);
  v5 = (v3 + *(*(v2 - 1) + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64) + v5 + 7;
  v7 = v0 + v3;

  v8 = v2[5];
  v9 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v9 - 8) + 48))(v7 + v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v10 - 8) + 8))(v7 + v8, v10);
    }

    else
    {
    }
  }

  v11 = (v7 + v2[6]);
  if (v11[1])
  {

    v12 = v11[3];
    if (v12 >> 60 != 15)
    {
      outlined consume of Data._Representation(v11[2], v12);
    }
  }

  v13 = (v7 + v2[7]);
  if (v13[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  (*(v4 + 8))(v0 + v5, v16);
  v14 = *(v0 + (v6 & 0xFFFFFFFFFFFFFFF8));
  if (v14 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (v4 + *(v3 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v6 = *(v0 + ((*(*(v1 - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)((v0 + v4), (v0 + v5), v6, v1, v2);
}

uint64_t sub_10009A040()
{
  v1 = type metadata accessor for Actions.PlaybackContext(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64) + v2 + 7;
  v4 = v0 + v2;

  v5 = v1[5];
  v6 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v6 - 8) + 48))(v4 + v5, 1, v6))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v7 - 8) + 8))(v4 + v5, v7);
    }

    else
    {
    }
  }

  v8 = v3 & 0xFFFFFFFFFFFFFFF8;
  v9 = (v4 + v1[6]);
  if (v9[1])
  {

    v10 = v9[3];
    if (v10 >> 60 != 15)
    {
      outlined consume of Data._Representation(v9[2], v10);
    }
  }

  v11 = (v4 + v1[7]);
  if (v11[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
  }

  v12 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v8);
  if (v13 >= 4)
  {
  }

  v14 = v0 + v12;
  swift_unknownObjectWeakDestroy();
  v15 = *(v0 + v12 + 48);
  if (v15 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v14 + 8), *(v14 + 16), *(v14 + 24), *(v14 + 32), *(v14 + 40), v15);
  }

  if (*(v14 + 64))
  {
  }

  if (*(v14 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v4);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v0 + v3, v6, v0 + v5);
}

uint64_t sub_10009A354()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v3;
  v8 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v17 = v1;
    if (*(v7 + 8) >= 0xDuLL)
    {
    }

    v9 = v7 + *(v8 + 20);
    v10 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v16 = *(v10 + 24);
      v11 = type metadata accessor for URL();
      v14 = *(v11 - 8);
      v15 = v11;
      if (!(*(v14 + 48))(v9 + v16, 1))
      {
        (*(v14 + 8))(v9 + v16, v15);
      }
    }

    v1 = v17;
  }

  (*(v4 + 8))(v0 + v5, v1);
  v12 = *(v0 + v6);
  if (v12 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Queue.Context.init<A>(item:location:playbackContext:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t specialized closure #1 in MusicItemState.init(item:musicKitItemState:player:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    specialized MusicItemState.updatePlayabilityStatus()();
  }

  return result;
}

uint64_t specialized closure #2 in MusicItemState.init(item:musicKitItemState:player:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v10 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
    __chkstk_darwin();
    v9 = type metadata accessor for Song();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v10 - 2) = v9;
    *(&v10 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    (*(v3 + 16))(v5, v7, v2);
    static Published.subscript.setter();
    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t specialized MusicItemState.updatePlayabilityStatus()()
{
  v62 = type metadata accessor for Song();
  v59 = *(v62 - 8);
  __chkstk_darwin();
  v58 = &v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v56 - v6;
  v8 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v63 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v56 - v11;
  __chkstk_darwin();
  v13 = &v56 - v12;
  __chkstk_darwin();
  v15 = &v56 - v14;
  v66 = v0;

  dispatch thunk of MusicPlayer.ItemState.playabilityStatus.getter();

  v16 = *(v9 + 16);
  v64 = v15;
  v60 = v9 + 16;
  v16(v13, v15, v8);
  v65 = v9;
  v17 = (*(v9 + 88))(v13, v8);
  v18 = enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.unplayable(_:))
  {
    (*(v65 + 96))(v13, v8);
    (*(v3 + 32))(v7, v13, v2);
    (*(v3 + 104))(v5, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.subscriptionRequired(_:), v2);
    v57 = v7;
    v19 = static MusicPlayer.PlayabilityStatus.UnplayableReason.== infix(_:_:)();
    v20 = *(v3 + 8);
    v58 = (v3 + 8);
    v59 = v2;
    v20(v5, v2);
    if ((v19 & 1) != 0 && (swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , v67[0]))
    {

      v21 = v65;
      v22 = v61;
      (*(v65 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v8);
      __chkstk_darwin();
      v23 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v23;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v22, v8);

      static Published.subscript.setter();
      v24 = *(v21 + 8);
      v24(v22, v8);
      v20(v57, v59);
    }

    else
    {
      v33 = v61;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v34 = v65;
      v56 = v20;
      v35 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v35;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v33, v8);

      static Published.subscript.setter();
      v24 = *(v34 + 8);
      v24(v33, v8);
      v56(v57, v59);
    }

    return (v24)(v64, v8);
  }

  v25 = v17;
  if (v17 == enum case for MusicPlayer.PlayabilityStatus.playable(_:))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (!v67[0] || (v67[0], swift_getKeyPath(), swift_getKeyPath(), , static Published.subscript.getter(), , , , (v67[0] & 1) != 0) || (, v26 = Player.supportsDelegation.getter(), , (v26 & 1) != 0))
    {
      v27 = v61;
      v28 = v64;
      v16(v61, v64, v8);
      __chkstk_darwin();
      v29 = v16;
      v30 = v62;
      *(&v56 - 2) = v62;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v30;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v29(v63, v27, v8);

      static Published.subscript.setter();
      v31 = *(v65 + 8);
      v31(v27, v8);
      return (v31)(v28, v8);
    }

    v41 = v66;
    v42 = *(*v66 + 120);
    swift_beginAccess();
    v44 = v58;
    v43 = v59;
    v45 = v41 + v42;
    v46 = v62;
    (*(v59 + 16))(v58, v45, v62);
    Song.catalogID.getter();
    v48 = v47;
    (*(v43 + 8))(v44, v46);
    if (!v48)
    {
      v53 = v61;
      (*(v3 + 104))(v61, enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.contentUnavailable(_:), v2);
      v54 = v65;
      (*(v65 + 104))(v53, v18, v8);
      __chkstk_darwin();
      *(&v56 - 2) = v46;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      __chkstk_darwin();
      *(&v56 - 2) = v55;
      *(&v56 - 1) = &protocol witness table for Song;
      swift_getKeyPath();
      v16(v63, v53, v8);

      static Published.subscript.setter();
      v24 = *(v54 + 8);
      v24(v53, v8);
      return (v24)(v64, v8);
    }

    v49 = v65;
    v50 = v61;
    (*(v65 + 104))(v61, v25, v8);
    __chkstk_darwin();
    *(&v56 - 2) = v46;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v51;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v16(v63, v50, v8);

    static Published.subscript.setter();
    v52 = *(v49 + 8);
    v52(v50, v8);
    return (v52)(v64, v8);
  }

  else
  {
    v36 = v16;
    v37 = v61;
    v38 = v64;
    v36(v61, v64, v8);
    __chkstk_darwin();
    v39 = v62;
    *(&v56 - 2) = v62;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    __chkstk_darwin();
    *(&v56 - 2) = v39;
    *(&v56 - 1) = &protocol witness table for Song;
    swift_getKeyPath();
    v36(v63, v37, v8);

    static Published.subscript.setter();
    v40 = *(v65 + 8);
    v40(v37, v8);
    v40(v38, v8);
    return (v40)(v13, v8);
  }
}

uint64_t specialized Actions.Queue.Context.menuItemTitle.getter(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t specialized Actions.Preview.Context.menuItemTitle.getter()
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

uint64_t specialized Actions.Playback.Context.menuItemTitle.getter(uint64_t a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v7 = static NSBundle.module;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t specialized static Actions.Queue.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v11 = v3;
  if (v3 >= 4)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v5 = 0x19171816u >> (8 * v3);
    v10 = *(a1 + 8);
    outlined init with copy of Player.InsertCommand.Location(&v11, v9);
    outlined init with copy of TaskPriority?(&v10, v9, &_sSSSgMd, &_sSSSgMR);
    v6 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v6;
    *(a2 + 64) = *(a1 + 64);
    v7 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v7;
    *(a2 + 72) = v5;
    *(a2 + 80) = closure #1 in static Actions.Queue.action(context:);
    *(a2 + 88) = 0;
    *(a2 + 96) = 0x4014000000000000;
    *(a2 + 104) = &async function pointer to closure #2 in static Actions.Queue.action(context:);
    *(a2 + 112) = 0;
    *(a2 + 120) = &async function pointer to closure #3 in static Actions.Queue.action(context:);
    *(a2 + 128) = 0;
  }

  return result;
}

uint64_t sub_10009BD88()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)()
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

  return closure #1 in Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

uint64_t sub_10009BF0C()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v14 = *(*(v2 - 1) + 64);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = *(v1 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;

  v7 = v2[5];
  v8 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v3 + v7, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v9 - 8) + 8))(v6 + v7, v9);
    }

    else
    {
    }
  }

  v10 = (v6 + v2[6]);
  if (v10[1])
  {

    v11 = v10[3];
    if (v11 >> 60 != 15)
    {
      outlined consume of Data._Representation(v10[2], v11);
    }
  }

  v12 = (v6 + v2[7]);
  if (v12[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  (*(v4 + 8))(v0 + ((v3 + v14 + v5) & ~v5), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v0 + ((v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80));

  return closure #1 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)((v0 + v3), v4, v1);
}

uint64_t sub_10009C208()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = type metadata accessor for Actions.PlaybackContext(0);
  v6 = (v3 + v4 + *(*(v5 - 1) + 80)) & ~*(*(v5 - 1) + 80);
  v7 = *(*(v5 - 1) + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  (*(v2 + 8))(v0 + v3, v1);
  v11 = v0 + v6;

  v12 = v5[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v6 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = v10 + v9;
  v16 = (v11 + v5[6]);
  if (v16[1])
  {

    v17 = v16[3];
    if (v17 >> 60 != 15)
    {
      outlined consume of Data._Representation(v16[2], v17);
    }
  }

  v18 = v15 + 7;
  v19 = (v11 + v5[7]);
  if (v19[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFF8;
  v21 = v0 + v9;
  v22 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v22 - 8) + 48))(v0 + v9, 1, v22))
  {
    if (*(v21 + 8) >= 0xDuLL)
    {
    }

    v23 = v21 + *(v22 + 20);
    v24 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {

      v25 = *(v24 + 24);
      v26 = type metadata accessor for URL();
      v27 = *(v26 - 8);
      v31 = v26;
      if (!(*(v27 + 48))(v23 + v25, 1))
      {
        (*(v27 + 8))(v23 + v25, v31);
      }
    }
  }

  v28 = v0 + v20;
  swift_unknownObjectWeakDestroy();
  v29 = *(v0 + v20 + 48);
  if (v29 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v28 + 8), *(v28 + 16), *(v28 + 24), *(v28 + 32), *(v28 + 40), v29);
  }

  if (*(v28 + 64))
  {
  }

  if (*(v28 + 80))
  {
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  v5 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #2 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v0 + v3, v0 + v6, v0 + v9, v0 + v10, v2);
}

uint64_t partial apply for closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)()
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

  return closure #3 in Actions.CreateStation.Context.init<A>(item:playbackContext:presentationSource:metricsReportingContext:)(v0 + v5, v0 + v6, v2, v3);
}

char *specialized MusicItemState.init(item:musicKitItemState:player:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v72 = a3;
  v80 = a2;
  v81 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMR);
  v74 = *(v5 - 8);
  v75 = v5;
  __chkstk_darwin();
  v73 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMR);
  v77 = *(v7 - 8);
  v78 = v7;
  __chkstk_darwin();
  v76 = &v58 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  __chkstk_darwin();
  v79 = &v58 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMR);
  v68 = *(v67 - 8);
  __chkstk_darwin();
  v65 = &v58 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMR);
  v71 = *(v69 - 8);
  __chkstk_darwin();
  v66 = &v58 - v11;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE23PreviewCapabilityStatusOGMd, &_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE23PreviewCapabilityStatusOGMR);
  v63 = *(v70 - 8);
  __chkstk_darwin();
  v62 = &v58 - v12;
  v61 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v60 = *(v61 - 8);
  __chkstk_darwin();
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v58 - v15;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE17PlayabilityStatusOGMd, &_s7Combine9PublishedVy8MusicKit0C6PlayerC0cD8InternalE17PlayabilityStatusOGMR);
  v17 = *(v59 - 1);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin();
  v26 = &v58 - v25;
  *(v4 + 4) = _swiftEmptyArrayStorage;
  v64 = v4 + 32;
  v27 = *(*v4 + 128);
  (*(v21 + 104))(&v58 - v25, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v20, v24);
  (*(v21 + 16))(v23, v26, v20);
  Published.init(initialValue:)();
  (*(v21 + 8))(v26, v20);
  (*(v17 + 32))(&v4[v27], v19, v59);
  v28 = *(*v4 + 136);
  v29 = enum case for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.notSupported(_:);
  v30 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason();
  (*(*(v30 - 8) + 104))(v16, v29, v30);
  v31 = v60;
  v32 = v61;
  (*(v60 + 104))(v16, enum case for MusicPlayer.PreviewCapabilityStatus.unpreviewable(_:), v61);
  v59 = *(v31 + 16);
  v59(v14, v16, v32);
  v33 = v62;
  Published.init(initialValue:)();
  v60 = *(v31 + 8);
  (v60)(v16, v32);
  (*(v63 + 32))(&v4[v28], v33, v70);
  v34 = *(*v4 + 120);
  v35 = type metadata accessor for Song();
  v70 = *(v35 - 8);
  (*(v70 + 16))(&v4[v34], v81, v35);
  v36 = v72;
  *(v4 + 2) = v80;
  *(v4 + 3) = v36;

  specialized MusicItemState.updatePlayabilityStatus()();
  dispatch thunk of MusicPlayer.ItemState.previewCapabilityStatus.getter();
  v84 = v35;
  v85 = &protocol witness table for Song;
  swift_getKeyPath();
  v72 = v35;
  v82 = v35;
  v83 = &protocol witness table for Song;
  swift_getKeyPath();
  v59(v14, v16, v32);

  static Published.subscript.setter();
  (v60)(v16, v32);
  v37 = v65;
  dispatch thunk of MusicPlayer.ItemState.$playabilityStatus.getter();
  type metadata accessor for OS_dispatch_queue();
  v38 = static OS_dispatch_queue.main.getter();
  v86 = v38;
  v39 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v40 = *(v39 - 8);
  v41 = v79;
  v63 = *(v40 + 56);
  v62 = (v40 + 56);
  (v63)(v79, 1, 1, v39);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicPlayer.PlayabilityStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE17PlayabilityStatusO_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v42 = lazy protocol witness table accessor for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, &protocol conformance descriptor for OS_dispatch_queue);
  v43 = v66;
  v44 = v41;
  v45 = v67;
  v61 = v42;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v44, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v68 + 8))(v37, v45);
  swift_allocObject();
  swift_weakInit();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicPlayer.PlayabilityStatus>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE17PlayabilityStatusO_GSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v46 = v69;
  Publisher<>.sink(receiveValue:)();

  v47 = v64;
  (*(v71 + 8))(v43, v46);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v48 = v73;
  v49 = v80;
  dispatch thunk of MusicPlayer.ItemState.$previewCapabilityStatus.getter();
  v50 = static OS_dispatch_queue.main.getter();
  v86 = v50;
  v51 = v79;
  (v63)(v79, 1, 1, v39);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Published<MusicPlayer.PreviewCapabilityStatus>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMd, &_s7Combine9PublishedV9PublisherVy8MusicKit0D6PlayerC0dE8InternalE23PreviewCapabilityStatusO_GMR, &protocol conformance descriptor for Published<A>.Publisher);
  v52 = v75;
  v53 = v76;
  Publisher.receive<A>(on:options:)();
  outlined destroy of TaskPriority?(v51, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

  (*(v74 + 8))(v48, v52);
  v54 = swift_allocObject();
  swift_weakInit();

  v55 = swift_allocObject();
  *(v55 + 16) = v54;
  *(v55 + 24) = v49;
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Published<MusicPlayer.PreviewCapabilityStatus>.Publisher, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AA9PublishedV9PublisherVy8MusicKit0G6PlayerC0gH8InternalE23PreviewCapabilityStatusO_GSo17OS_dispatch_queueCGMR, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v56 = v78;
  Publisher<>.sink(receiveValue:)();

  (*(v77 + 8))(v53, v56);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  (*(v70 + 8))(v81, v72);
  return v4;
}

uint64_t specialized static Actions.Playback.action(context:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1)
  {
    v2 = 6;
  }

  else
  {
    v2 = 5;
  }

  v3 = a1[6];
  v4 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 2);
  *(a2 + 48) = v3;
  *(a2 + 56) = v2;
  *(a2 + 64) = closure #1 in static Actions.ReportConcern.action(context:);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0x4014000000000000;
  *(a2 + 88) = &async function pointer to closure #2 in static Actions.Playback.action(context:);
  *(a2 + 96) = 0;
  *(a2 + 104) = &async function pointer to closure #3 in static Actions.Playback.action(context:);
  *(a2 + 112) = 0;
}

uint64_t sub_10009D718()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for Actions.PlaybackContext(0);
  v3 = (*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80);
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR) - 8);
  v6 = *(v5 + 80);
  v20 = *(v5 + 64);
  v21 = v1;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = v0 + v3;

  v10 = v2[5];
  v11 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v11 - 8) + 48))(v9 + v10, 1, v11))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v12 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
    }
  }

  v13 = (v9 + v2[6]);
  if (v13[1])
  {

    v14 = v13[3];
    if (v14 >> 60 != 15)
    {
      outlined consume of Data._Representation(v13[2], v14);
    }
  }

  v15 = (v4 + v6) & ~v6;
  v16 = (v9 + v2[7]);
  if (v16[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  v17 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v15, 1, v17))
  {
    (*(v18 + 8))(v0 + v15, v17);
  }

  (*(v7 + 8))(v0 + ((v15 + v20 + v8) & ~v8), v21);

  return swift_deallocObject();
}

unint64_t partial apply for closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v7 + *(v6 + 64) + *(*(v1 - 1) + 80)) & ~*(*(v1 - 1) + 80);
  v9 = *(v0 + ((*(*(v1 - 1) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v0 + v4, v0 + v7, v0 + v8, v9, v1, v2);
}

uint64_t sub_10009DBA4()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = type metadata accessor for Actions.PlaybackContext(0);
  v8 = (v5 + v6 + *(*(v7 - 1) + 80)) & ~*(*(v7 - 1) + 80);
  v9 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  (*(v4 + 8))(v0 + v5, v1);
  v11 = v0 + v8;

  v12 = v7[5];
  v13 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v8 + v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = type metadata accessor for MusicPlaybackIntentDescriptor();
      (*(*(v14 - 8) + 8))(v11 + v12, v14);
    }

    else
    {
    }
  }

  v15 = (v11 + v7[6]);
  if (v15[1])
  {

    v16 = v15[3];
    if (v16 >> 60 != 15)
    {
      outlined consume of Data._Representation(v15[2], v16);
    }
  }

  v17 = (v11 + v7[7]);
  if (v17[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMd, &_s8MusicKit0A6PlayerC0aB8InternalE17PlayabilityStatusOSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(*(v3 - 8) + 64);
  v8 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v0 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v0 + v5, v0 + v6, v0 + v9, v10, v3, v2);
}

uint64_t sub_10009E094()
{
  v1 = *(v0 + 16);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = *(v2 + 64);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
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

uint64_t partial apply for closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (v5 + *(v4 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80);
  v7 = *(v0 + ((*(*(v3 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Playback.Context.init<A>(item:playbackContext:shuffleMode:metricsReportingContext:)(v0 + v5, v0 + v6, v7, v3, v2);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore6PlayerC13InsertCommandV8LocationO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Actions.Queue.Context(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Actions.Queue.Context(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10009E62C()
{

  return swift_deallocObject();
}

uint64_t outlined init with copy of Actions.PlaybackContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of MusicItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A4Item_pSgMd, &_s8MusicKit0A4Item_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Player.CommandIssuer?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6PlayerC13CommandIssuer_pSgMd, &_s9MusicCore6PlayerC13CommandIssuer_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Actions.PlaybackContext(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Actions.PlaybackContext(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_10009E890(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MusicPlayer.PlayabilityStatus and conformance MusicPlayer.PlayabilityStatus(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009E944()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10009E984()
{

  return swift_deallocObject();
}

void outlined consume of Player.InsertCommand.Location(id a1)
{
  if (a1 >= 4)
  {
  }
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  return specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Album> and conformance MusicItemCollection<A>, &type metadata accessor for Album, a1);
}

{
  return specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMd, &_s8MusicKit0A14ItemCollectionVyAA0A5VideoVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<MusicVideo> and conformance MusicItemCollection<A>, &type metadata accessor for MusicVideo, a1);
}

{
  return specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA4SongVGMd, &_s8MusicKit0A14ItemCollectionVyAA4SongVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Song> and conformance MusicItemCollection<A>, &type metadata accessor for Song, a1);
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  lazy protocol witness table accessor for type MusicItemCollection<UploadedVideo> and conformance MusicItemCollection<A>(a3, a1, a2);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v17[4] == v17[0])
  {
    v10 = a4(0);
    return (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  }

  else
  {
    v12 = dispatch thunk of Collection.subscript.read();
    v14 = v13;
    v15 = a4(0);
    v16 = *(v15 - 8);
    (*(v16 + 16))(a5, v14, v15);
    v12(v17, 0);
    return (*(v16 + 56))(a5, 0, 1, v15);
  }
}

uint64_t Actions.Share.Context.menuItemTitle.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Actions.Share.Context.menuItemTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

__n128 static Actions.Share.action(context:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 + 48);

  outlined init with copy of String(&v8, &v7);
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  *(a2 + 64) = 4;
  *(a2 + 72) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &async function pointer to closure #2 in static Actions.Share.action(context:);
  *(a2 + 104) = 0;
  *(a2 + 112) = &async function pointer to closure #3 in static Actions.Share.action(context:);
  *(a2 + 120) = 0;
  return result;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.Share@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v3;
  *(a2 + 48) = v2;
  *(a2 + 56) = v4;
  *(a2 + 64) = 4;
  *(a2 + 72) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 80) = 0;
  *(a2 + 88) = 0x4014000000000000;
  *(a2 + 96) = &async function pointer to closure #2 in static Actions.Share.action(context:);
  *(a2 + 104) = 0;
  *(a2 + 112) = &async function pointer to closure #3 in static Actions.Share.action(context:);
  *(a2 + 120) = 0;
}

uint64_t (*Actions.Share.Context.menuItemImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004C6AB0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004C6AB0;
  return _s9MusicCore19ActionMenuItemImageV10systemNameACSS_tcfc7SwiftUI0F0VSgyYbcfU_TA_0;
}

uint64_t sub_10009EF7C()
{

  return swift_deallocObject();
}

uint64_t (*Actions.Share.Context.menuItemCompactStyleImage.getter())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004C6AD0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004C6AD0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemImage.getter in conformance Actions.Share.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000013;
  *(v0 + 24) = 0x80000001004C6AB0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000001004C6AB0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t (*protocol witness for ActionMenuItemConfiguring.menuItemCompactStyleImage.getter in conformance Actions.Share.Context())()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0xD000000000000018;
  *(v0 + 24) = 0x80000001004C6AD0;
  v1 = swift_allocObject();
  *(v1 + 16) = 0xD000000000000018;
  *(v1 + 24) = 0x80000001004C6AD0;
  return closure #1 in ActionMenuItemImage.init(systemName:)partial apply;
}

uint64_t Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t (**a7)()@<X8>)
{
  v42 = a6;
  v34 = a5;
  v37 = a4;
  v38 = a2;
  v39 = a3;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v36 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  v40 = *(v12 - 8);
  v41 = v12;
  __chkstk_darwin();
  v33 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v31 - v14;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v16 = *(v32 + 64);
  __chkstk_darwin();
  v18 = &v31 - v17;
  outlined init with copy of ActionPerforming(a1, v44);
  v19 = swift_allocObject();
  outlined init with take of ActionPerforming(v44, v19 + 16);
  *(v19 + 56) = a2;
  *(v19 + 64) = a3;
  v20 = swift_allocObject();
  v21 = v34;
  v35 = v20;
  *(v20 + 16) = v37;
  *(v20 + 24) = v21;
  outlined init with copy of TaskPriority?(v42, v18, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v37 = a1;
  outlined init with copy of ActionPerforming(a1, v43);
  v22 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v23 = (v16 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  outlined init with take of URL?(v18, v24 + v22, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  outlined init with take of ActionPerforming(v43, v24 + v23);

  String.LocalizationValue.init(stringLiteral:)();
  (*(v40 + 16))();
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v25 = static NSBundle.module;
  static Locale.current.getter();
  v26 = String.init(localized:table:bundle:locale:comment:)();
  v28 = v27;

  outlined destroy of TaskPriority?(v42, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm(v37);
  result = (*(v40 + 8))(v15, v41);
  *a7 = partial apply for closure #1 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:);
  a7[1] = v19;
  v30 = v35;
  a7[2] = &async function pointer to partial apply for closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:);
  a7[3] = v30;
  a7[4] = &async function pointer to partial apply for closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:);
  a7[5] = v24;
  a7[6] = v26;
  a7[7] = v28;
  return result;
}

unint64_t closure #1 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v5 = &v23 - v4;
  v6 = type metadata accessor for MusicLibrary.ShareAction();
  v24 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11ShareActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE11ShareActionVGMR);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - v11;
  outlined init with copy of ActionPerforming(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore09ShareableA4Item_pMd, &_s9MusicCore09ShareableA4Item_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16MusicKitInternal0A17LibraryActionable_pMd, &_s16MusicKitInternal0A17LibraryActionable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of ActionPerforming(v36, v39);
    __swift_project_boxed_opaque_existential_0Tm(v39, v39[3]);
    static MusicLibraryAction<>.share.getter();
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v24 + 8))(v8, v6);
    v13 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
    (*(v10 + 8))(v12, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    return v13;
  }

  memset(v36, 0, sizeof(v36));
  v37 = 0;
  outlined destroy of TaskPriority?(v36, &_s16MusicKitInternal0A17LibraryActionable_pSgMd, &_s16MusicKitInternal0A17LibraryActionable_pSgMR);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35[4] = v31;
  v35[5] = v32;
  v35[6] = v33;
  v35[7] = v34;
  v35[0] = v27;
  v35[1] = v28;
  v35[2] = v29;
  v35[3] = v30;
  outlined destroy of ApplicationCapabilities(v35);
  if ((BYTE1(v35[0]) & 1) == 0)
  {
    return 0xD000000000000010;
  }

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0Tm(a1, v15);
  (*(v16 + 16))(v15, v16);
  v17 = type metadata accessor for URL();
  v18 = (*(*(v17 - 8) + 48))(v5, 1, v17);
  outlined destroy of TaskPriority?(v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (v18 != 1)
  {
    return 0;
  }

  outlined init with copy of ActionPerforming(a1, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd, &_s9MusicCore18CatalogIDProviding_pMR);
  if (swift_dynamicCast())
  {
    v19 = *(&v28 + 1);
    v20 = v29;
    __swift_project_boxed_opaque_existential_0Tm(&v27, *(&v28 + 1));
    (*(v20 + 8))(v19, v20);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(&v27);
    if (v22)
    {

      return 0;
    }
  }

  else
  {
    *&v29 = 0;
    v27 = 0u;
    v28 = 0u;
    outlined destroy of TaskPriority?(&v27, &_s9MusicCore18CatalogIDProviding_pSgMd, &_s9MusicCore18CatalogIDProviding_pSgMR);
  }

  return 0xD00000000000001DLL;
}

uint64_t sub_10009FA3C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(int *a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v5 = (a1 + *a1);
  v3 = swift_task_alloc();
  v1[4] = v3;
  *v3 = v1;
  v3[1] = closure #1 in closure #1 in ActionMenu.Element.menuElement(for:with:excluding:includeUnsupported:);

  return v5();
}

uint64_t sub_1000A0044()
{

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(v2);
}

uint64_t closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:), 0, 0);
}

uint64_t closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 200), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_0Tm(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8, *(v9 + 8));
    *(v0 + 240) = v10;
    v11 = type metadata accessor for URL();
    *(v0 + 248) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 256) = v13;
    *(v0 + 264) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    v15 = v7[3];
    v16 = v7[4];
    __swift_project_boxed_opaque_existential_0Tm(v7, v15);
    *(inited + 32) = MusicItem.metricsContentType.getter(v15, *(v16 + 8));
    *(inited + 40) = v17;
    *(inited + 48) = 0;
    *(v0 + 272) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 280) = v18;
    *(v0 + 288) = v19;
    *(v0 + 304) = v20;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 296) = static MainActor.shared.getter();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:), v22, v21);
  }
}

{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

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
  *(v6 + 16) = 12293;
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
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
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

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 176), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  outlined init with take of URL?(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
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

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 96), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
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

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
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

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:), 0, 0);
}

uint64_t partial apply for closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #3 in Actions.Share.Context.init(item:library:applicationCapabilities:shareAction:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t static Actions.ShareLyrics.action(context:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = a1[2];
  *(a2 + 48) = 34;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.ShareLyrics.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.ShareLyrics.action(context:);
  *(a2 + 104) = 0;
}

uint64_t protocol witness for static ActionDefinition.action(context:) in conformance Actions.ShareLyrics@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = v2;
  *(a2 + 48) = 34;
  *(a2 + 56) = closure #1 in static Actions.AddToLibrary.action(context:);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0x4014000000000000;
  *(a2 + 80) = &async function pointer to closure #2 in static Actions.ShareLyrics.action(context:);
  *(a2 + 88) = 0;
  *(a2 + 96) = &async function pointer to closure #3 in static Actions.ShareLyrics.action(context:);
  *(a2 + 104) = 0;
}

uint64_t Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v15 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  outlined init with take of URL?(a6, v17 + v15, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  result = outlined init with take of ActionPerforming(a1, v17 + v16);
  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = &async function pointer to partial apply for closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:);
  a7[5] = v17;
  return result;
}

uint64_t closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for MetricsEvent.Click(0);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for Actions.MetricsReportingContext(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();

  return _swift_task_switch(closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:), 0, 0);
}

uint64_t closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  outlined init with copy of TaskPriority?(*(v0 + 72), v3, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 200), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 192);
    v7 = *(v0 + 80);
    outlined init with take of Actions.MetricsReportingContext(*(v0 + 200), *(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);
    v8 = v7[3];
    v9 = v7[4];
    __swift_project_boxed_opaque_existential_0Tm(v7, v8);
    *(v0 + 232) = MusicItem.metricsTargetIdentifier.getter(v8, *(v9 + 8));
    *(v0 + 240) = v10;
    v11 = type metadata accessor for URL();
    *(v0 + 248) = v11;
    v12 = *(v11 - 8);
    v13 = *(v12 + 56);
    *(v0 + 256) = v13;
    *(v0 + 264) = (v12 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v13(v6, 1, 1, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMd, &_ss23_ContiguousArrayStorageCy9MusicCore12MetricsEventV5ClickV13ActionDetailsO3KeyOGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F2400;
    v15 = v7[3];
    v16 = v7[4];
    __swift_project_boxed_opaque_existential_0Tm(v7, v15);
    *(inited + 32) = MusicItem.metricsContentType.getter(v15, *(v16 + 8));
    *(inited + 40) = v17;
    *(inited + 48) = 0;
    *(v0 + 272) = specialized MetricsEvent.Click.ActionDetails.init(_:)(inited);
    *(v0 + 280) = v18;
    *(v0 + 288) = v19;
    *(v0 + 304) = v20;
    swift_setDeallocating();
    outlined destroy of MetricsEvent.Click.ActionDetails.Key(inited + 32);
    type metadata accessor for MainActor();
    *(v0 + 296) = static MainActor.shared.getter();
    v22 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:), v22, v21);
  }
}

{
  v80 = *(v0 + 304);
  v73 = *(v0 + 272);
  v76 = *(v0 + 240);
  v78 = *(v0 + 288);
  v74 = *(v0 + 232);
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v72 = *(v0 + 136);

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
  *(v6 + 16) = 12805;
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
  v16 = *(v0 + 304);
  v17 = *(v0 + 280);
  v18 = *(v0 + 288);
  v19 = *(v0 + 272);
  v20 = *(v0 + 136);
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

  v23 = *(v0 + 144);
  v24 = *(v0 + 128);
  v25 = (*(v0 + 160) + *(*(v0 + 152) + 48));
  *v25 = v21;
  v25[1] = v22;
  outlined init with copy of TaskPriority?(v23, v24, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v26 = v79(v24, 1, v14);
  v27 = *(v0 + 128);
  if (v26 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v27, type metadata accessor for MetricsEvent.Page);
  }

  v30 = *(v0 + 144);
  v31 = *(v0 + 120);
  v32 = (*(v0 + 160) + *(*(v0 + 152) + 52));
  *v32 = v28;
  v32[1] = v29;
  outlined init with copy of TaskPriority?(v30, v31, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  if (v79(v31, 1, v14) == 1)
  {
    v33 = *(v0 + 256);
    v34 = *(v0 + 248);
    v35 = *(v0 + 176);
    outlined destroy of TaskPriority?(*(v0 + 120), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v33(v35, 1, 1, v34);
  }

  else
  {
    v36 = *(v0 + 120);
    outlined init with copy of TaskPriority?(v36 + v14[6], *(v0 + 176), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v36, type metadata accessor for MetricsEvent.Page);
  }

  v37 = *(v0 + 144);
  v38 = *(v0 + 112);
  outlined init with take of URL?(*(v0 + 176), *(v0 + 160) + *(*(v0 + 152) + 56), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined init with copy of TaskPriority?(v37, v38, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v39 = v79(v38, 1, v14);
  v40 = *(v0 + 112);
  if (v39 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 112), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
    v41 = 0;
  }

  else
  {
    v41 = *(v40 + v14[7]);

    _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v40, type metadata accessor for MetricsEvent.Page);
  }

  v42 = *(v0 + 144);
  v43 = *(v0 + 104);
  *(*(v0 + 160) + *(*(v0 + 152) + 60)) = v41;
  outlined init with copy of TaskPriority?(v42, v43, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v44 = v79(v43, 1, v14);
  v45 = *(v0 + 104);
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

  v47 = *(v0 + 144);
  v48 = *(v0 + 96);
  *(*(v0 + 160) + *(*(v0 + 152) + 64)) = v46;
  outlined init with copy of TaskPriority?(v47, v48, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v49 = v79(v48, 1, v14);
  v50 = *(v0 + 96);
  if (v49 == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 96), &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
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

  v54 = *(v0 + 144);
  v55 = *(v0 + 88);
  v56 = (*(v0 + 160) + *(*(v0 + 152) + 72));
  *v56 = v51;
  v56[1] = v52;
  outlined init with take of URL?(v54, v55, &_s9MusicCore12MetricsEventV4PageVSgMd, &_s9MusicCore12MetricsEventV4PageVSgMR);
  v57 = v79(v55, 1, v14);
  v58 = *(v0 + 88);
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

  v60 = *(v0 + 160);
  v61 = *(v0 + 168);
  v62 = *(v0 + 152);
  *(v60 + *(v62 + 68)) = v59;
  *(v60 + *(v62 + 44)) = v81;
  outlined init with take of Actions.MetricsReportingContext(v60, v61, type metadata accessor for MetricsEvent.Click);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v64 = *(v0 + 280);
  v63 = *(v0 + 288);
  v65 = *(v0 + 272);
  v66 = *(v0 + 224);
  v67 = *(v0 + 208);
  v68 = *(v0 + 192);
  v69 = *(v0 + 168);
  v70 = *(v0 + 304);
  MetricsReportingController.recordClickEvent(_:pageContext:sharedListeningContext:)(v69, *(v66 + *(v67 + 24)), *(v66 + *(v67 + 24) + 8), *(v66 + *(v67 + 36)), *(v66 + *(v67 + 36) + 8), *(v66 + *(v67 + 36) + 16));
  outlined consume of MetricsEvent.Click.ActionDetails(v65, v64, v63, v70, SBYTE1(v70));
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(v69, type metadata accessor for MetricsEvent.Click);
  outlined destroy of TaskPriority?(v68, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

  return _swift_task_switch(closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:), 0, 0);
}

{
  _s9MusicCore12MetricsEventV5ClickVWOhTm_0(*(v0 + 224), type metadata accessor for Actions.MetricsReportingContext);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t objectdestroy_20Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 1, v5))
  {
    if (*(v4 + 8) >= 0xDuLL)
    {
    }

    v6 = v4 + *(v5 + 20);
    v7 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = *(v7 + 24);
      v9 = type metadata accessor for URL();
      v10 = *(v9 - 8);
      v14 = v8;
      v11 = v6 + v8;
      v12 = v9;
      if (!(*(v10 + 48))(v11, 1, v9))
      {
        (*(v10 + 8))(v6 + v14, v12);
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in Actions.ShareLyrics.Context.init(item:canShareLyrics:shareLyrics:metricsReportingContext:)(v0 + v3, v0 + v4);
}

uint64_t Actions.ShareLyrics.Context.menuItemTitle.getter()
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

id implicit closure #1 in Actions.ShareLyrics.Context.menuItemImage.getter()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = [objc_opt_self() imageNamed:v0];

  return v1;
}

uint64_t ShareableMusicItem.failureMessage.getter()
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

uint64_t ShareableMusicItem.shareURL.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(ShareableMusicItem.shareURL.getter, 0, 0);
}

uint64_t ShareableMusicItem.shareURL.getter()
{
  (*(v0[4] + 16))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t specialized ShareableMusicItem.augmentMetadata(_:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(specialized ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

uint64_t specialized ShareableMusicItem.augmentMetadata(_:)()
{
  v1 = *(v0 + 24);
  v2 = **(v0 + 16);
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 1, 1, v3);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v7 = 0;
  if (v5 != 1)
  {
    v8 = *(v0 + 24);
    URL._bridgeToObjectiveC()(v6);
    v7 = v9;
    (*(v4 + 8))(v8, v3);
  }

  [v2 setOriginalURL:v7];

  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  Curator.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  EditorialItem.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  Genre.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  RadioShow.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  RecordLabel.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  SocialProfile.url.getter();
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  v6 = 0;
  if ((*(v4 + 48))(v1, 1, v3) != 1)
  {
    v7 = *(v0 + 32);
    URL._bridgeToObjectiveC()(v5);
    v6 = v8;
    (*(v4 + 8))(v7, v3);
  }

  [v2 setOriginalURL:v6];

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ShareableMusicItem.augmentMetadata(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

uint64_t ShareableMusicItem.augmentMetadata(_:)()
{
  v1 = *(v0 + 32);
  *(v0 + 56) = **(v0 + 16);
  v7 = (*(v1 + 24) + **(v1 + 24));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = ShareableMusicItem.augmentMetadata(_:);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  return v7(v3, v4, v5);
}

{

  return _swift_task_switch(ShareableMusicItem.augmentMetadata(_:), 0, 0);
}

{
  v1 = *(v0 + 48);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v4);
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  [*(v0 + 56) setOriginalURL:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t Album.failureMessage.getter()
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

uint64_t Album.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA5AlbumVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA5AlbumVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA5AlbumVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA5AlbumVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Album.shareURL.getter, 0, 0);
}

uint64_t Album.shareURL.getter()
{
  v1 = v0[16];
  Album.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = Album.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Album();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album, &protocol conformance descriptor for Album);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = Album.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Album.shareURL.getter;
  }

  else
  {

    v2 = Album.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Album> and conformance MusicItemCollection<A>, &type metadata accessor for Album, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Album.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}

uint64_t Album.augmentMetadata(_:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for MusicOffer.Kind();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for MusicOffer();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA5AlbumVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA5AlbumVGMR);
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA5AlbumVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA5AlbumVGMR);
  v2[22] = v7;
  v2[23] = *(v7 - 8);
  v2[24] = swift_task_alloc();

  return _swift_task_switch(Album.augmentMetadata(_:), 0, 0);
}

{
  v2 = Album.catalogID.getter();
  *(v1 + 200) = v2;
  *(v1 + 208) = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = **(v1 + 32);
    *(v1 + 216) = v6;
    v7 = [v6 specialization];
    *(v1 + 224) = v7;
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      *(v1 + 232) = v9;
      if (v9)
      {
        swift_getKeyPath();
        *(v1 + 16) = v4;
        *(v1 + 24) = v5;
        *(v1 + 240) = type metadata accessor for Album();
        lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Album and conformance Album, &type metadata accessor for Album, &protocol conformance descriptor for Album);

        MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_1004F2F10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit07PartialA13AsyncPropertyCyAA5AlbumVGMd, &_s8MusicKit07PartialA13AsyncPropertyCyAA5AlbumVGMR);
        *(v10 + 32) = static PartialMusicProperty<A>.offers.getter();
        MusicCatalogResourceRequest.properties.setter();
        v11 = swift_task_alloc();
        *(v1 + 248) = v11;
        *v11 = v1;
        v11[1] = Album.augmentMetadata(_:);
        v12 = *(v1 + 168);
        v13 = *(v1 + 176);

        return MusicCatalogResourceRequest.response()(v12, v13);
      }
    }
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t Album.augmentMetadata(_:)()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = Album.augmentMetadata(_:);
  }

  else
  {

    v2 = Album.augmentMetadata(_:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 104);
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMd, &_s8MusicKit0A14ItemCollectionVyAA5AlbumVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Album> and conformance MusicItemCollection<A>, &type metadata accessor for Album, v2);
  (*(v5 + 8))(v4, v6);
  outlined init with copy of TaskPriority?(v2, v3, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  v7 = *(v1 - 8);
  v8 = *(v7 + 48);
  if (v8(v3, 1, v1) == 1)
  {
    v9 = *(v0 + 96);
    outlined destroy of TaskPriority?(*(v0 + 136), &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = 0;
  }

  else
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 136);
    v14 = *(v0 + 96);
    Album.url.getter();
    (*(v7 + 8))(v13, v12);
    v15 = type metadata accessor for URL();
    v16 = *(v15 - 8);
    v11 = 0;
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      v18 = *(v0 + 96);
      URL._bridgeToObjectiveC()(v17);
      v11 = v19;
      (*(v16 + 8))(v18, v15);
    }
  }

  v20 = *(v0 + 240);
  v21 = *(v0 + 144);
  v22 = *(v0 + 128);
  [*(v0 + 216) setOriginalURL:v11];

  outlined init with copy of TaskPriority?(v21, v22, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  if (v8(v22, 1, v20) == 1)
  {
    outlined destroy of TaskPriority?(*(v0 + 128), &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    isa = 0;
  }

  else
  {
    v24 = *(v0 + 240);
    v25 = *(v0 + 128);
    v26 = Album.offers.getter();
    (*(v7 + 8))(v25, v24);
    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = *(v0 + 80);
        v29 = *(v0 + 56);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v30 = *(v28 + 16);
        v28 += 16;
        v31 = v26 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
        v54 = *(v28 + 56);
        v55 = v30;
        v56 = v0;
        v52 = (v28 - 8);
        v53 = (v29 + 8);
        do
        {
          v32 = *(v0 + 88);
          v33 = *(v0 + 64);
          v34 = *(v0 + 72);
          v35 = *(v0 + 48);
          v55(v32, v31, v34);
          MusicOffer.kind.getter();
          v36 = MusicOffer.Kind.rawValue.getter();
          v38 = v37;
          (*v53)(v33, v35);
          (*v52)(v32, v34);
          v40 = _swiftEmptyArrayStorage[2];
          v39 = _swiftEmptyArrayStorage[3];
          if (v40 >= v39 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v40 + 1;
          v41 = &_swiftEmptyArrayStorage[2 * v40];
          v41[4] = v36;
          v41[5] = v38;
          v31 += v54;
          --v27;
          v0 = v56;
        }

        while (v27);
      }

      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      isa = 0;
    }
  }

  v42 = *(v0 + 224);
  v43 = *(v0 + 184);
  v44 = *(v0 + 192);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v47 = *(v0 + 152);
  v48 = *(v0 + 160);
  v49 = *(v0 + 144);
  [*(v0 + 232) setOffers:isa];

  outlined destroy of TaskPriority?(v49, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  (*(v48 + 8))(v46, v47);
  (*(v43 + 8))(v44, v45);

  v50 = *(v0 + 8);

  return v50();
}

{
  v22 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = *(v0 + 224);
    v18 = *(v0 + 184);
    v19 = *(v0 + 176);
    v20 = *(v0 + 192);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v21);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL and offers for album catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v18 + 8))(v20, v19);
  }

  else
  {
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t protocol witness for ShareableMusicItem.shareURL.getter in conformance Album(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Album.shareURL.getter(a1);
}

uint64_t protocol witness for ShareableMusicItem.augmentMetadata(_:) in conformance Album(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return Album.augmentMetadata(_:)(a1);
}

uint64_t Artist.failureMessage.getter()
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

uint64_t Artist.shareURL.getter(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVyAA6ArtistVGMd, &_s8MusicKit0A14ItemCollectionVyAA6ArtistVGMR);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
  v2[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A23CatalogResourceResponseVyAA6ArtistVGMd, &_s8MusicKit0A23CatalogResourceResponseVyAA6ArtistVGMR);
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A22CatalogResourceRequestVyAA6ArtistVGMd, &_s8MusicKit0A22CatalogResourceRequestVyAA6ArtistVGMR);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[16] = swift_task_alloc();

  return _swift_task_switch(Artist.shareURL.getter, 0, 0);
}

uint64_t Artist.shareURL.getter()
{
  v1 = v0[16];
  Artist.url.getter();
  v2 = type metadata accessor for URL();
  v0[17] = v2;
  v3 = *(v2 - 8);
  v0[18] = v3;
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of TaskPriority?(v0[16], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v4 = Artist.catalogID.getter();
    v0[19] = v4;
    v0[20] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      swift_getKeyPath();
      v0[2] = v6;
      v0[3] = v7;
      v0[21] = type metadata accessor for Artist();
      lazy protocol witness table accessor for type Album and conformance Album(&lazy protocol witness table cache variable for type Artist and conformance Artist, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      v8 = swift_task_alloc();
      v0[22] = v8;
      *v8 = v0;
      v8[1] = Artist.shareURL.getter;
      v9 = v0[12];
      v10 = v0[13];

      return MusicCatalogResourceRequest.response()(v9, v10);
    }

    (*(v3 + 56))(v0[4], 1, 1, v2);
  }

  else
  {
    v11 = v0[4];
    (*(v3 + 32))(v11, v0[16], v2);
    (*(v3 + 56))(v11, 0, 1, v2);
  }

  v12 = v0[1];

  return v12();
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = Artist.shareURL.getter;
  }

  else
  {

    v2 = Artist.shareURL.getter;
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[21];
  v2 = v0[9];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];
  MusicCatalogResourceResponse.items.getter();
  specialized Collection.first.getter(&_s8MusicKit0A14ItemCollectionVyAA6ArtistVGMd, &_s8MusicKit0A14ItemCollectionVyAA6ArtistVGMR, &lazy protocol witness table cache variable for type MusicItemCollection<Artist> and conformance MusicItemCollection<A>, &type metadata accessor for Artist, v2);
  (*(v4 + 8))(v3, v5);
  v6 = *(v1 - 8);
  if ((*(v6 + 48))(v2, 1, v1) == 1)
  {
    v7 = v0[17];
    v8 = v0[18];
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[13];
    v12 = v0[9];
    v13 = v0[4];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v10 + 8))(v9, v11);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit6ArtistVSgMd, &_s8MusicKit6ArtistVSgMR);
    (*(v8 + 56))(v13, 1, 1, v7);
  }

  else
  {
    v14 = v0[21];
    v16 = v0[14];
    v15 = v0[15];
    v18 = v0[12];
    v17 = v0[13];
    v19 = v0[10];
    v20 = v0[11];
    v21 = v0[9];
    Artist.url.getter();
    (*(v20 + 8))(v18, v19);
    (*(v16 + 8))(v15, v17);
    (*(v6 + 8))(v21, v14);
  }

  v22 = v0[1];

  return v22();
}

{
  v21 = v0;
  if (one-time initialization token for sharing != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sharing);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v17 = v0[14];
    v18 = v0[13];
    v19 = v0[15];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v4 = 136446466;
    v7 = MusicItemID.description.getter();
    v9 = v8;

    v10 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v7, v9, &v20);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to get share URL for artist catalogID: %{public}s: %{public}@", v4, 0x16u);
    outlined destroy of TaskPriority?(v5, &_sSo8NSObjectCSgMd_0, &_sSo8NSObjectCSgMR_0);

    __swift_destroy_boxed_opaque_existential_0Tm(v6);

    (*(v17 + 8))(v19, v18);
  }

  else
  {
    v13 = v0[14];
    v12 = v0[15];
    v14 = v0[13];

    (*(v13 + 8))(v12, v14);
  }

  (*(v0[18] + 56))(v0[4], 1, 1, v0[17]);

  v15 = v0[1];

  return v15();
}